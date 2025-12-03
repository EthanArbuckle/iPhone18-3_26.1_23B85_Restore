@interface SRCompressedOutputStream
+ (void)initialize;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)close;
- (void)dealloc;
- (void)open;
@end

@implementation SRCompressedOutputStream

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071A30 = os_log_create("com.apple.SensorKit", "CompressedOutputStream");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 72);
    objc_setProperty_nonatomic(self, v3, 0, 80);
  }

  v4.receiver = self;
  v4.super_class = SRCompressedOutputStream;
  [(SRCompressedOutputStream *)&v4 dealloc];
}

- (void)open
{
  p_compression_stream = &self->_compression_stream;
  if (compression_stream_init(&self->_compression_stream, COMPRESSION_STREAM_ENCODE, self->_algorithm) == COMPRESSION_STATUS_ERROR)
  {
    v5 = qword_100071A30;
    if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error initializing stream", v6, 2u);
    }
  }

  else
  {
    self->_streamStatus = 2;
    buffer = self->_buffer;
    if (!buffer)
    {
      buffer = [[NSMutableData alloc] initWithCapacity:self->_bufferSize];
      self->_buffer = buffer;
    }

    p_compression_stream->dst_ptr = [(NSMutableData *)buffer mutableBytes];
    p_compression_stream->dst_size = self->_bufferSize;
  }
}

- (void)close
{
  bufferSize = self->_bufferSize;
  p_compression_stream = &self->_compression_stream;
  dst_size = self->_compression_stream.dst_size;
  if (bufferSize != dst_size)
  {
    sub_100019CC4(self, bufferSize - dst_size);
    buffer = self->_buffer;
    if (!buffer)
    {
      buffer = [[NSMutableData alloc] initWithCapacity:self->_bufferSize];
      self->_buffer = buffer;
    }

    mutableBytes = [(NSMutableData *)buffer mutableBytes];
    v8 = self->_bufferSize;
    p_compression_stream->dst_ptr = mutableBytes;
    p_compression_stream->dst_size = v8;
  }

  v9 = compression_stream_process(p_compression_stream, 1);
  if (v9 == COMPRESSION_STATUS_END)
  {
    v13 = self->_bufferSize;
    v14 = p_compression_stream->dst_size;
    if (v13 > v14)
    {
      sub_100019CC4(self, v13 - v14);
    }
  }

  else if (v9)
  {
    if (v9 == COMPRESSION_STATUS_ERROR)
    {
      v10 = qword_100071A30;
      if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v11 = "Error finalizing stream";
        v12 = &v18;
LABEL_12:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
      }
    }
  }

  else
  {
    v10 = qword_100071A30;
    if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v11 = "Error finalizing stream, expecting COMPRESSION_STATUS_END but got COMPRESSION_STATUS_OK";
      v12 = &v17;
      goto LABEL_12;
    }
  }

  compression_stream_destroy(p_compression_stream);
  [(NSFileHandle *)self->_outputFileHandle closeFile];
  objc_setProperty_nonatomic(self, v15, 0, 72);
  self->_streamStatus = 6;
  objc_setProperty_nonatomic(self, v16, 0, 80);
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  lengthCopy = length;
  p_compression_stream = &self->_compression_stream;
  self->_compression_stream.src_ptr = write;
  self->_compression_stream.src_size = length;
  if (!length)
  {
    return lengthCopy;
  }

  while (1)
  {
    while (1)
    {
      v7 = compression_stream_process(p_compression_stream, 0);
      if (v7)
      {
        break;
      }

      if (!p_compression_stream->src_size)
      {
        return lengthCopy;
      }

      if (!p_compression_stream->dst_size)
      {
        if (!sub_100019CC4(self, self->_bufferSize))
        {
          return -1;
        }

        buffer = self->_buffer;
        if (!buffer)
        {
          buffer = [[NSMutableData alloc] initWithCapacity:self->_bufferSize];
          self->_buffer = buffer;
        }

        mutableBytes = [(NSMutableData *)buffer mutableBytes];
        bufferSize = self->_bufferSize;
        p_compression_stream->dst_ptr = mutableBytes;
        p_compression_stream->dst_size = bufferSize;
        goto LABEL_4;
      }
    }

    if (v7 == COMPRESSION_STATUS_END)
    {
      v8 = qword_100071A30;
      if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error compressing data. Got COMPRESSION_STATUS_END before finalizing the stream", buf, 2u);
      }

      goto LABEL_4;
    }

    if (v7 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

LABEL_4:
    if (!p_compression_stream->src_size)
    {
      return lengthCopy;
    }
  }

  v12 = qword_100071A30;
  if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error compressing data", v14, 2u);
  }

  compression_stream_destroy(p_compression_stream);
  return -1;
}

@end