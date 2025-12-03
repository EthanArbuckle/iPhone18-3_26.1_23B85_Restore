@interface GTFileWriterSessionCompressed
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)_finalizeCompressedFileData:(id *)data;
- (BOOL)_writeCompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error;
- (BOOL)finish:(id *)finish;
- (GTFileWriterSessionCompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (void)writeFileData:(id)data completionHandler:(id)handler;
@end

@implementation GTFileWriterSessionCompressed

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  v13 = [[self alloc] initWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v13;
}

- (GTFileWriterSessionCompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  entriesCopy = entries;
  lCopy = l;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = GTFileWriterSessionCompressed;
  v13 = [(GTFileWriterSessionCompressed *)&v24 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [GTFileWriterSessionUncompressed sessionWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];
  v15 = *(v13 + 8);
  *(v13 + 8) = v14;

  if (!*(v13 + 8))
  {
LABEL_15:
    error = 0;
    goto LABEL_16;
  }

  v16 = [optionsCopy compressionAlgorithm] - 1;
  if (v16 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1000320B0[v16];
  }

  if (compression_stream_init((v13 + 8), COMPRESSION_STREAM_DECODE, v17) == COMPRESSION_STATUS_OK)
  {
    *(v13 + 6) = malloc_type_malloc([optionsCopy chunkSize], 0x28ACB392uLL);
    chunkSize = [optionsCopy chunkSize];
    *(v13 + 7) = chunkSize;
    *(v13 + 1) = *(v13 + 6);
    *(v13 + 2) = chunkSize;
LABEL_11:
    error = v13;
    goto LABEL_16;
  }

  if (GTCoreLogUseOsLog())
  {
    v18 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000133A4();
    }
  }

  else
  {
    v20 = __stderrp;
    v18 = [NSString stringWithFormat:@"Failed to initialize decode compression stream"];
    fprintf(v20, "%s\n", [v18 UTF8String]);
  }

  if (error)
  {
    v25 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithFormat:@"Compression failed: %@", @"Failed to initialize decode compression stream"];
    v26 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [NSError errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v22];

    goto LABEL_15;
  }

LABEL_16:

  return error;
}

- (void)writeFileData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v13 = 0;
  [(GTFileWriterSessionCompressed *)self _writeCompressedFileData:bytes length:v11 error:&v13];
  v12 = v13;
  handlerCopy[2](handlerCopy, v12);
}

- (BOOL)_writeCompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D18C;
  v10[3] = &unk_100040C28;
  v10[4] = self;
  return sub_10000CF90(&self->_compressionStream, data, length, decompressorOutput, decompressorOutputSize, error, v10);
}

- (BOOL)finish:(id *)finish
{
  v5 = [(GTFileWriterSessionCompressed *)self _finalizeCompressedFileData:?];
  compression_stream_destroy(&self->_compressionStream);
  free(self->_decompressorOutput);
  self->_decompressorOutput = 0;
  self->_decompressorOutputSize = 0;
  uncompressedSession = self->_uncompressedSession;
  v10 = 0;
  v7 = [(GTFileWriterSessionUncompressed *)uncompressedSession finish:&v10];
  v8 = v10;
  if (v5 && (v7 & 1) == 0)
  {
    if (finish)
    {
      v8 = v8;
      LOBYTE(v5) = 0;
      *finish = v8;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_finalizeCompressedFileData:(id *)data
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D4BC;
  v7[3] = &unk_100040C28;
  v7[4] = self;
  return sub_10000D2B0(&self->_compressionStream, decompressorOutput, decompressorOutputSize, data, v7);
}

@end