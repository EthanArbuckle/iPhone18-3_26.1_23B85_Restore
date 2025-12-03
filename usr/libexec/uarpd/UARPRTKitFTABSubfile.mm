@interface UARPRTKitFTABSubfile
- (UARPRTKitFTABSubfile)initWithData:(id)data subFileTag:(id)tag;
- (UARPRTKitFTABSubfile)initWithSubfileTag:(id)tag;
- (UARPRTKitFTABSubfile)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length subFileTag:(id)tag;
- (id)description;
- (id)generateHash:(int64_t)hash;
- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset;
- (id)getDataRangeFromURL:(_NSRange)l;
@end

@implementation UARPRTKitFTABSubfile

- (UARPRTKitFTABSubfile)initWithSubfileTag:(id)tag
{
  tagCopy = tag;
  v11.receiver = self;
  v11.super_class = UARPRTKitFTABSubfile;
  v5 = [(UARPRTKitFTABSubfile *)&v11 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.uarp.layer3", "superbinaryAsset");
    log = v5->_log;
    v5->_log = v6;

    v8 = [tagCopy copy];
    subFileTag = v5->_subFileTag;
    v5->_subFileTag = v8;
  }

  return v5;
}

- (UARPRTKitFTABSubfile)initWithData:(id)data subFileTag:(id)tag
{
  dataCopy = data;
  v7 = [(UARPRTKitFTABSubfile *)self initWithSubfileTag:tag];
  if (v7)
  {
    v8 = [dataCopy copy];
    data = v7->_data;
    v7->_data = v8;

    v7->_subFileLength = [(NSData *)v7->_data length];
    v7->_offset = 0;
  }

  return v7;
}

- (UARPRTKitFTABSubfile)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length subFileTag:(id)tag
{
  lCopy = l;
  v11 = [(UARPRTKitFTABSubfile *)self initWithSubfileTag:tag];
  if (v11)
  {
    v12 = [lCopy copy];
    url = v11->_url;
    v11->_url = v12;

    v11->_subFileLength = length;
    v11->_offset = offset;
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

- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset
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

  if (subFileLength <= offset)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100081F5C(offset, subFileLength, v12);
    }

LABEL_12:
    blockCopy = 0;
    goto LABEL_13;
  }

  blockCopy = block;
  if (offset + block > subFileLength)
  {
    blockCopy = subFileLength - offset;
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "[UARPRTKitFTABSubfile getDataBlock:offset:]";
      v16 = 1024;
      v17 = blockCopy;
      v18 = 1024;
      offsetCopy = offset;
      v20 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of subfile %@", &v14, 0x22u);
    }
  }

  offset = self->_offset;
  if (self->_data)
  {
    blockCopy = [(UARPRTKitFTABSubfile *)self getDataRangeFromData:offset + offset, blockCopy];
    goto LABEL_13;
  }

  if (!self->_url)
  {
    goto LABEL_12;
  }

  blockCopy = [(UARPRTKitFTABSubfile *)self getDataRangeFromURL:offset + offset, blockCopy];
LABEL_13:

  return blockCopy;
}

- (id)getDataRangeFromURL:(_NSRange)l
{
  length = l.length;
  location = l.location;
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
          absoluteString = [(NSURL *)v26 absoluteString];
          v29 = [v13 description];
          *buf = 136316162;
          v35 = "[UARPRTKitFTABSubfile getDataRangeFromURL:]";
          v36 = 2048;
          v37 = location;
          v38 = 2048;
          v39 = length;
          v40 = 2112;
          v41 = absoluteString;
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
        absoluteString2 = [(NSURL *)v22 absoluteString];
        v25 = [v11 description];
        *buf = 136316162;
        v35 = "[UARPRTKitFTABSubfile getDataRangeFromURL:]";
        v36 = 2048;
        v37 = location;
        v38 = 2048;
        v39 = subFileLength;
        v40 = 2112;
        v41 = absoluteString2;
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

- (id)generateHash:(int64_t)hash
{
  v4 = [[UARPHashMachine alloc] initWithAlgorithm:hash];
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
    hashValue = [(UARPHashMachine *)v4 hashValue];
  }

  else
  {
LABEL_11:
    hashValue = 0;
  }

  return hashValue;
}

@end