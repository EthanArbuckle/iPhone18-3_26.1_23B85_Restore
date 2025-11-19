@interface SDAirDropCompressor
- (BOOL)readData:(char *)a3 length:(int64_t)a4 fromStream:(__CFReadStream *)a5;
- (BOOL)readIncomingChunk;
- (BOOL)writeData:(char *)a3 length:(int64_t)a4 toStream:(__CFWriteStream *)a5;
- (SDAirDropCompressor)initWithReadStream:(__CFReadStream *)a3 writeStream:(__CFWriteStream *)a4;
- (__CFReadStream)copyReadStream;
- (void)dealloc;
- (void)executeReadWithAdaptiveCompression;
- (void)executeWriteWithAdaptiveCompression;
- (void)fileComplete;
- (void)openStreams;
- (void)processCompressibilityStatistics;
- (void)processNetworkStatistics:(double)a3;
- (void)sendOutgoingChunk:(char *)a3 length:(int64_t)a4 compressed:(BOOL)a5;
@end

@implementation SDAirDropCompressor

- (SDAirDropCompressor)initWithReadStream:(__CFReadStream *)a3 writeStream:(__CFWriteStream *)a4
{
  v11.receiver = self;
  v11.super_class = SDAirDropCompressor;
  v6 = [(SDAirDropCompressor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_compressible = 1;
    v6->_totalBytesSent = 0;
    v6->_totalNetworkDelay = 0.0;
    v6->_numBlocksProcessed = 0;
    v6->_totalBytesProcessed = 0;
    v6->_lastCompressionRatio = 0.0;
    v6->_totalCompressionTime = 0.0;
    v6->_numBlocksCompressed = 0;
    v6->_totalCompressedOutput = 0;
    v6->_keepingUpWithNetwork = 1;
    v6->_readStream = CFRetain(a3);
    v7->_writeStream = CFRetain(a4);
    v8 = dispatch_queue_create("com.apple.sharingd.adjustment-queue", 0);
    adjustmentQueue = v7->_adjustmentQueue;
    v7->_adjustmentQueue = v8;
  }

  return v7;
}

- (void)dealloc
{
  readStream = self->_readStream;
  if (readStream)
  {
    CFRelease(readStream);
  }

  writeStream = self->_writeStream;
  if (writeStream)
  {
    CFRelease(writeStream);
  }

  v5.receiver = self;
  v5.super_class = SDAirDropCompressor;
  [(SDAirDropCompressor *)&v5 dealloc];
}

- (__CFReadStream)copyReadStream
{
  result = self->_readStream;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (BOOL)writeData:(char *)a3 length:(int64_t)a4 toStream:(__CFWriteStream *)a5
{
  if (a4 < 1)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    v10 = CFWriteStreamWrite(a5, &a3[v9], a4 - v9);
    if (v10 < 0)
    {
      break;
    }

    v9 += v10;
    if (v9 >= a4)
    {
      return 1;
    }
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10014F284();
  }

  CFReadStreamClose(self->_readStream);
  return 0;
}

- (BOOL)readData:(char *)a3 length:(int64_t)a4 fromStream:(__CFReadStream *)a5
{
  if (a4 < 1)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    if (CFReadStreamGetStatus(a5) > kCFStreamStatusWriting)
    {
      return 1;
    }

    v10 = CFReadStreamRead(a5, &a3[v9], a4 - v9);
    if (v10 < 0)
    {
      break;
    }

    v9 += v10;
    if (v9 >= a4)
    {
      return 1;
    }
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10014F2EC();
  }

  CFWriteStreamClose(self->_writeStream);
  return 0;
}

- (BOOL)readIncomingChunk
{
  v9 = 0;
  LODWORD(v3) = [(SDAirDropCompressor *)self readData:&v9 length:4 fromStream:self->_readStream];
  if (CFReadStreamGetStatus(self->_readStream) <= kCFStreamStatusWriting && v3 != 0)
  {
    v9 = bswap32(v9);
    v3 = v9 & 0x7FFFFFFF;
    v5 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if ([(SDAirDropCompressor *)self readData:v5 length:v3 fromStream:self->_readStream])
    {
      if ((v9 & 0x80000000) != 0)
      {
        LOBYTE(v3) = [(SDAirDropCompressor *)self writeData:v5 length:v3 toStream:self->_writeStream];
      }

      else
      {
        v8 = 0x20000;
        v6 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
        uncompress(v6, &v8, v5, v3);
        LOBYTE(v3) = [(SDAirDropCompressor *)self writeData:v6 length:v8 toStream:self->_writeStream];
        if (v6 != v5)
        {
          free(v5);
        }

        v5 = v6;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    free(v5);
  }

  return v3;
}

- (void)sendOutgoingChunk:(char *)a3 length:(int64_t)a4 compressed:(BOOL)a5
{
  v8 = a4 | 0x80000000;
  if (a5)
  {
    v8 = a4;
  }

  v9 = bswap32(v8);
  [(SDAirDropCompressor *)self writeData:&v9 length:4 toStream:self->_writeStream];
  [(SDAirDropCompressor *)self writeData:a3 length:a4 toStream:self->_writeStream];
}

- (void)openStreams
{
  if (CFReadStreamOpen(self->_readStream))
  {
    if (CFWriteStreamOpen(self->_writeStream))
    {
      return;
    }

    v3 = CFWriteStreamCopyError(self->_writeStream);
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10014F354();
    }

    CFReadStreamClose(self->_readStream);
  }

  else
  {
    v3 = CFReadStreamCopyError(self->_readStream);
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10014F3BC();
    }
  }
}

- (void)processNetworkStatistics:(double)a3
{
  keepingUpWithNetwork = self->_keepingUpWithNetwork;
  if (a3 > 1.0 && !self->_keepingUpWithNetwork)
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10014F424();
    }

    self->_keepingUpWithNetwork = 1;
    self->_numBlocksProcessed = 0;
    self->_totalBytesSent = 0;
    lastCompressionRatio = 0.0;
    v8 = 16;
    goto LABEL_22;
  }

  numBlocksProcessed = self->_numBlocksProcessed;
  if (numBlocksProcessed < 21)
  {
    return;
  }

  totalBytesProcessed = self->_totalBytesProcessed;
  v11 = totalBytesProcessed;
  if (totalBytesProcessed)
  {
    LODWORD(v3) = self->_totalCompressedOutput;
    lastCompressionRatio = v3 / v11;
  }

  else
  {
    lastCompressionRatio = self->_lastCompressionRatio;
  }

  LODWORD(v11) = self->_totalBytesSent;
  v12 = *&v11 / self->_totalNetworkDelay;
  v13 = self->_totalCompressionTime * 128.0 * 1024.0 / totalBytesProcessed + lastCompressionRatio * 131072.0 / v12;
  v14 = 131072.0 / v12;
  if (self->_keepingUpWithNetwork && v13 > v14 + v14)
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10014F510();
    }

    v16 = 0;
LABEL_20:

    self->_keepingUpWithNetwork = v16;
    goto LABEL_21;
  }

  if (!self->_keepingUpWithNetwork && v14 > v13)
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10014F49C();
    }

    v16 = 1;
    goto LABEL_20;
  }

  if (numBlocksProcessed <= 0x1F4)
  {
    v8 = 56;
    goto LABEL_22;
  }

LABEL_21:
  self->_numBlocksProcessed = 0;
  self->_totalBytesSent = 0;
  v8 = 56;
  self->_totalNetworkDelay = 0.0;
LABEL_22:
  *(&self->super.isa + v8) = lastCompressionRatio;
}

- (void)processCompressibilityStatistics
{
  if (self->_compressible && self->_numBlocksCompressed >= 11)
  {
    LODWORD(v2) = self->_totalCompressedOutput;
    LODWORD(v3) = self->_totalBytesProcessed;
    if (v2 / v3 > 0.8)
    {
      self->_compressible = 0;
      v4 = airdrop_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10014F584();
      }
    }
  }
}

- (void)fileComplete
{
  adjustmentQueue = self->_adjustmentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014EC90;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_sync(adjustmentQueue, block);
}

- (void)executeReadWithAdaptiveCompression
{
  [(SDAirDropCompressor *)self openStreams];
  Status = CFReadStreamGetStatus(self->_readStream);
  if (Status < kCFStreamStatusAtEnd)
  {
    do
    {
      v4 = [(SDAirDropCompressor *)self readIncomingChunk];
      Status = CFReadStreamGetStatus(self->_readStream);
    }

    while (Status < kCFStreamStatusAtEnd && (v4 & 1) != 0);
  }

  if (Status <= kCFStreamStatusAtEnd)
  {
    CFReadStreamClose(self->_readStream);
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (Status != kCFStreamStatusError)
  {
    goto LABEL_10;
  }

  v5 = CFReadStreamCopyError(self->_readStream);
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10014F5FC();
  }

LABEL_11:
  CFWriteStreamClose(self->_writeStream);
}

- (void)executeWriteWithAdaptiveCompression
{
  [(SDAirDropCompressor *)self openStreams];
  v3 = dispatch_semaphore_create(2);
  v4 = dispatch_queue_create("com.apple.sharingd.compression-queue", &_dispatch_queue_attr_concurrent);
  Status = CFReadStreamGetStatus(self->_readStream);
  if (Status >= kCFStreamStatusAtEnd)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v7 = dispatch_semaphore_create(0);

    v9 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
    v10 = CFReadStreamRead(self->_readStream, v9, 0x20000);
    if (!v10)
    {
      free(v9);
      goto LABEL_7;
    }

    v11 = v10;
    if (v10 < 0)
    {
      break;
    }

    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10014F008;
    v17[3] = &unk_1008D18A8;
    v21 = v11;
    v22 = v9;
    v17[4] = self;
    v18 = v6;
    v12 = v7;
    v19 = v12;
    v20 = v3;
    v13 = v6;
    dispatch_async(v4, v17);
    v6 = v12;

LABEL_7:
    Status = CFReadStreamGetStatus(self->_readStream);
    if (Status >= kCFStreamStatusAtEnd)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v14 = airdrop_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10014F2EC();
  }

  free(v9);
  if (v6)
  {
LABEL_14:
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_15:
  if (Status <= kCFStreamStatusAtEnd)
  {
    CFReadStreamClose(self->_readStream);
    goto LABEL_21;
  }

  if (Status == kCFStreamStatusError)
  {
    v15 = CFReadStreamCopyError(self->_readStream);
    v16 = airdrop_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10014F664();
    }
  }

  else
  {
LABEL_21:
    v15 = 0;
  }

  CFWriteStreamClose(self->_writeStream);
}

@end