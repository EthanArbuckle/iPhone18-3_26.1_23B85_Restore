@interface PETServiceMessageCompressor
+ (id)decompress:(id)decompress;
- (PETServiceMessageCompressor)init;
- (void)_errorClose;
- (void)_flushBuffer;
- (void)addMessage:(id)message;
- (void)close;
@end

@implementation PETServiceMessageCompressor

- (void)close
{
  if (!self->_closed)
  {
    [(PETServiceMessageCompressor *)self _flushBuffer];
    while (1)
    {
      v3 = compression_stream_process(&self->_stream, 1);
      if (v3 == COMPRESSION_STATUS_ERROR)
      {
        break;
      }

      v4 = v3;
      v5 = 0x10000 - self->_stream.dst_size;
      compressedMessages = [(PETServiceMessageCompressor *)self compressedMessages];
      [compressedMessages appendBytes:-[NSMutableData bytes](self->_dstBuf length:{"bytes"), v5}];

      if (v4 == COMPRESSION_STATUS_END)
      {
        self->_closed = 1;

        compression_stream_destroy(&self->_stream);
        return;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error while finializing the compression stream", v7, 2u);
    }

    [(PETServiceMessageCompressor *)self _errorClose];
  }
}

- (void)_errorClose
{
  self->_closed = 1;
  [(PETServiceMessageCompressor *)self setCompressedMessages:0];

  compression_stream_destroy(&self->_stream);
}

- (void)_flushBuffer
{
  v3 = self->_srcBuf;
  v4 = objc_opt_new();
  srcBuf = self->_srcBuf;
  self->_srcBuf = v4;

  self->_stream.src_ptr = [(NSMutableData *)v3 bytes];
  v6 = [(NSMutableData *)v3 length];
  self->_stream.src_size = v6;
  if (v6)
  {
    while (compression_stream_process(&self->_stream, 0) != COMPRESSION_STATUS_ERROR)
    {
      v7 = 0x10000 - self->_stream.dst_size;
      compressedMessages = [(PETServiceMessageCompressor *)self compressedMessages];
      [compressedMessages appendBytes:-[NSMutableData bytes](self->_dstBuf length:{"bytes"), v7}];

      self->_stream.dst_ptr = [(NSMutableData *)self->_dstBuf mutableBytes];
      self->_stream.dst_size = 0x10000;
      if (!self->_stream.src_size)
      {
        goto LABEL_8;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error while compressing the source buffer", v9, 2u);
    }

    [(PETServiceMessageCompressor *)self _errorClose];
  }

LABEL_8:
}

- (void)addMessage:(id)message
{
  if (!self->_closed)
  {
    data = [message data];
    v5 = malloc_type_malloc(0xAuLL, 0x87224388uLL);
    [data length];
    [(NSMutableData *)self->_srcBuf appendBytes:v5 length:PBDataWriterWriteBareVarint()];
    [(NSMutableData *)self->_srcBuf appendData:data];
    if ([(NSMutableData *)self->_srcBuf length]>= 0x10000)
    {
      [(PETServiceMessageCompressor *)self _flushBuffer];
    }

    free(v5);
  }
}

- (PETServiceMessageCompressor)init
{
  v11.receiver = self;
  v11.super_class = PETServiceMessageCompressor;
  v2 = [(PETServiceMessageCompressor *)&v11 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = objc_opt_new();
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  v5 = [[NSMutableData alloc] initWithLength:0x10000];
  v6 = *(v2 + 2);
  *(v2 + 2) = v5;

  if (compression_stream_init((v2 + 24), COMPRESSION_STREAM_ENCODE, COMPRESSION_ZLIB) != COMPRESSION_STATUS_ERROR)
  {
    *(v2 + 3) = [*(v2 + 2) mutableBytes];
    *(v2 + 4) = 0x10000;
    v7 = objc_opt_new();
    [v2 setCompressedMessages:v7];

    v2[64] = 0;
LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to initialize the compressor", v10, 2u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)decompress:(id)decompress
{
  decompressCopy = decompress;
  memset(&stream, 0, sizeof(stream));
  compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB);
  v4 = malloc_type_malloc(0x10000uLL, 0x2DEF6AABuLL);
  v5 = objc_opt_new();
  stream.src_ptr = [decompressCopy bytes];
  stream.src_size = [decompressCopy length];
  stream.dst_ptr = v4;
  stream.dst_size = 0x10000;
  while (1)
  {
    v6 = compression_stream_process(&stream, 1);
    if (v6 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

    v7 = v6;
    [v5 appendBytes:v4 length:0x10000 - stream.dst_size];
    stream.dst_ptr = v4;
    stream.dst_size = 0x10000;
    if (v7 == COMPRESSION_STATUS_END)
    {
      free(v4);
      compression_stream_destroy(&stream);
      v8 = objc_opt_new();
      while ([v5 length])
      {
        *buf = 0;
        [v5 bytes];
        [v5 length];
        PBReaderReadVarIntBuf();
        v9 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v5 bytes], 0);
        [v8 addObject:v9];
      }

      goto LABEL_10;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error decompressing", buf, 2u);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end