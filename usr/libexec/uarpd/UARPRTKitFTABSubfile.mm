@interface UARPRTKitFTABSubfile
- (UARPRTKitFTABSubfile)initWithData:(id)a3 subFileTag:(id)a4;
- (UARPRTKitFTABSubfile)initWithSubfileTag:(id)a3;
- (UARPRTKitFTABSubfile)initWithURL:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 subFileTag:(id)a6;
- (id)description;
- (id)generateHash:(int64_t)a3;
- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4;
- (id)getDataRangeFromURL:(_NSRange)a3;
@end

@implementation UARPRTKitFTABSubfile

- (UARPRTKitFTABSubfile)initWithSubfileTag:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UARPRTKitFTABSubfile;
  v5 = [(UARPRTKitFTABSubfile *)&v11 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.uarp.layer3", "superbinaryAsset");
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 copy];
    subFileTag = v5->_subFileTag;
    v5->_subFileTag = v8;
  }

  return v5;
}

- (UARPRTKitFTABSubfile)initWithData:(id)a3 subFileTag:(id)a4
{
  v6 = a3;
  v7 = [(UARPRTKitFTABSubfile *)self initWithSubfileTag:a4];
  if (v7)
  {
    v8 = [v6 copy];
    data = v7->_data;
    v7->_data = v8;

    v7->_subFileLength = [(NSData *)v7->_data length];
    v7->_offset = 0;
  }

  return v7;
}

- (UARPRTKitFTABSubfile)initWithURL:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 subFileTag:(id)a6
{
  v10 = a3;
  v11 = [(UARPRTKitFTABSubfile *)self initWithSubfileTag:a6];
  if (v11)
  {
    v12 = [v10 copy];
    url = v11->_url;
    v11->_url = v12;

    v11->_subFileLength = a5;
    v11->_offset = a4;
  }

  return v11;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"Subfile: type=%@, length=%lu", self->_subFileTag, self->_subFileLength];
  v4 = v3;
  if (self->_offset)
  {
    [v3 appendFormat:@", offset=%lu", self->_offset];
  }

  v5 = [NSString stringWithString:v4];

  return v5;
}

- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4
{
  subFileLength = self->_subFileLength;
  if (!subFileLength)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100081FF4(log);
    }

    goto LABEL_12;
  }

  if (subFileLength <= a4)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100081F5C(a4, subFileLength, v12);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v7 = a3;
  if (a4 + a3 > subFileLength)
  {
    v7 = subFileLength - a4;
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "[UARPRTKitFTABSubfile getDataBlock:offset:]";
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = a4;
      v20 = 2112;
      v21 = self;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of subfile %@", &v14, 0x22u);
    }
  }

  offset = self->_offset;
  if (self->_data)
  {
    v10 = [(UARPRTKitFTABSubfile *)self getDataRangeFromData:offset + a4, v7];
    goto LABEL_13;
  }

  if (!self->_url)
  {
    goto LABEL_12;
  }

  v10 = [(UARPRTKitFTABSubfile *)self getDataRangeFromURL:offset + a4, v7];
LABEL_13:

  return v10;
}

- (id)getDataRangeFromURL:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  p_url = &self->_url;
  url = self->_url;
  v33 = 0;
  v8 = [NSFileHandle fileHandleForReadingFromURL:url error:&v33];
  v9 = v33;
  if (v8)
  {
    v32 = 0;
    v10 = [v8 seekToOffset:location error:&v32];
    v11 = v32;

    if (v10)
    {
      v31 = 0;
      v12 = [v8 readDataUpToLength:length error:&v31];
      v13 = v31;

      if (v12)
      {
        v30 = 0;
        v14 = [v8 closeAndReturnError:&v30];
        v9 = v30;

        if ((v14 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_100082078(&self->_url, log, v9);
          }
        }

        v16 = v12;
      }

      else
      {
        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v26 = *p_url;
          v27 = v19;
          v28 = [(NSURL *)v26 absoluteString];
          v29 = [v13 description];
          *buf = 136316162;
          v35 = "[UARPRTKitFTABSubfile getDataRangeFromURL:]";
          v36 = 2048;
          v37 = location;
          v38 = 2048;
          v39 = length;
          v40 = 2112;
          v41 = v28;
          v42 = 2112;
          v43 = v29;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: cannot read range (offset %lu, length %lu) from %@, error %@", buf, 0x34u);
        }

        v9 = v13;
      }
    }

    else
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        subFileLength = self->_subFileLength;
        v22 = self->_url;
        v23 = v18;
        v24 = [(NSURL *)v22 absoluteString];
        v25 = [v11 description];
        *buf = 136316162;
        v35 = "[UARPRTKitFTABSubfile getDataRangeFromURL:]";
        v36 = 2048;
        v37 = location;
        v38 = 2048;
        v39 = subFileLength;
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = v25;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: cannot seek to offset %lu (subfile length %lu) from %@, error %@", buf, 0x34u);
      }

      v12 = 0;
      v9 = v11;
    }
  }

  else
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100082138(&self->_url, v17, v9);
    }

    v12 = 0;
  }

  return v12;
}

- (id)generateHash:(int64_t)a3
{
  v4 = [[UARPHashMachine alloc] initWithAlgorithm:a3];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    subFileLength = self->_subFileLength;
    if (subFileLength <= v5)
    {
      break;
    }

    if (v5 + 1024 <= subFileLength)
    {
      v7 = 1024;
    }

    else
    {
      v7 = subFileLength - v5;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = [(UARPRTKitFTABSubfile *)self getDataBlock:v7 offset:v5];
    v10 = [(UARPHashMachine *)v4 updateHash:v9];

    objc_autoreleasePoolPop(v8);
    v5 += v7;
    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ([(UARPHashMachine *)v4 finalizeHash])
  {
    v11 = [(UARPHashMachine *)v4 hashValue];
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  return v11;
}

@end