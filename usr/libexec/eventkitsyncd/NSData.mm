@interface NSData
- (id)NEKFluff;
- (id)NEKSqueeze;
@end

@implementation NSData

- (id)NEKSqueeze
{
  v3 = objc_alloc_init(NSMutableData);
  memset(&v10, 0, sizeof(v10));
  if (compression_stream_init(&v10, COMPRESSION_STREAM_ENCODE, COMPRESSION_LZFSE))
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000724F8();
    }

LABEL_19:
    v8 = 0;
  }

  else
  {
    v10.src_ptr = [(NSData *)self bytes];
    v10.src_size = [(NSData *)self length];
    while (1)
    {
      v10.dst_ptr = v17;
      v10.dst_size = 4096;
      v4 = compression_stream_process(&v10, 1);
      if (v4)
      {
        break;
      }

      if (v10.dst_size)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      [v3 appendBytes:v17 length:4096];
    }

    if (v4 != COMPRESSION_STATUS_END)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        sub_10007252C();
      }

LABEL_18:
      compression_stream_destroy(&v10);
      goto LABEL_19;
    }

    if (v10.dst_ptr > v17)
    {
      [v3 appendBytes:v17 length:v10.dst_ptr - v17];
    }

    v5 = [(NSData *)self length];
    v6 = [v3 length];
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      v15 = 2048;
      v16 = (v5 - v6) / v5 * 100.0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Compressed ICS %d->%d %.01f%%", buf, 0x18u);
    }

    compression_stream_destroy(&v10);
    v8 = v3;
  }

  return v8;
}

- (id)NEKFluff
{
  v3 = [[NSMutableData alloc] initWithCapacity:4096];
  memset(&v7, 0, sizeof(v7));
  if (compression_stream_init(&v7, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100072560();
    }

LABEL_17:
    v5 = 0;
  }

  else
  {
    v7.src_ptr = [(NSData *)self bytes];
    v7.src_size = [(NSData *)self length];
    while (1)
    {
      v7.dst_ptr = v8;
      v7.dst_size = 4096;
      v4 = compression_stream_process(&v7, 0);
      if (v4)
      {
        break;
      }

      if (v7.dst_size)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      [v3 appendBytes:v8 length:4096];
    }

    if (v4 != COMPRESSION_STATUS_END)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        sub_100072594();
      }

LABEL_16:
      compression_stream_destroy(&v7);
      goto LABEL_17;
    }

    if (v7.dst_ptr > v8)
    {
      [v3 appendBytes:v8 length:v7.dst_ptr - v8];
    }

    compression_stream_destroy(&v7);
    v5 = v3;
  }

  return v5;
}

@end