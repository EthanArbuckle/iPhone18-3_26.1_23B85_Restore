@interface UARPRTKitFTAB
- (BOOL)expandFileTable:(id *)table;
- (BOOL)writeToURL:(id)l;
- (UARPRTKitFTAB)init;
- (UARPRTKitFTAB)initWithData:(id)data;
- (UARPRTKitFTAB)initWithFilePath:(id)path;
- (UARPRTKitFTAB)initWithURL:(id)l;
- (id)description;
- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset;
- (id)getDataRangeFromURL:(_NSRange)l;
- (id)processSubfileInfo:(UARPFTABFileInfo *)info;
- (id)subfileWithTag:(id)tag;
- (void)setBootNonce:(id)nonce;
- (void)setManifest:(id)manifest;
@end

@implementation UARPRTKitFTAB

- (UARPRTKitFTAB)init
{
  v8.receiver = self;
  v8.super_class = UARPRTKitFTAB;
  v2 = [(UARPRTKitFTAB *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.uarp.layer3", "superbinaryAsset");
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_opt_new();
    subfiles = v2->_subfiles;
    v2->_subfiles = v5;
  }

  return v2;
}

- (UARPRTKitFTAB)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(UARPRTKitFTAB *)self init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;

    v5->_ftabLength = [(NSData *)v5->_data length];
  }

  return v5;
}

- (UARPRTKitFTAB)initWithFilePath:(id)path
{
  v4 = [NSURL fileURLWithPath:path];
  v5 = [(UARPRTKitFTAB *)self initWithURL:v4];

  return v5;
}

- (UARPRTKitFTAB)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(UARPRTKitFTAB *)self init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = +[NSFileManager defaultManager];
    path = [(NSURL *)v5->_url path];
    v10 = [v8 attributesOfItemAtPath:path error:0];
    v5->_ftabLength = [v10 fileSize];
  }

  return v5;
}

- (BOOL)expandFileTable:(id *)table
{
  v4 = [(UARPRTKitFTAB *)self getDataBlock:48 offset:0];
  if ([v4 length] != 48)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  [v4 getBytes:&self->_ftabHeader length:48];
  v5 = *self->_ftabHeader.magic;
  if (v5 != 0x42415446534F4B52 && v5 != 0x62617466736F6B72)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000821F8(self->_ftabHeader.magic, self, log);
    }

    goto LABEL_19;
  }

  getManifest = [(UARPRTKitFTAB *)self getManifest];
  manifestData = self->_manifestData;
  self->_manifestData = getManifest;

  if (self->_ftabHeader.fileCount)
  {
    v10 = 0;
    v11 = 48;
    *&v9 = 136315650;
    v23 = v9;
    while (1)
    {
      v12 = [(UARPRTKitFTAB *)self getDataBlock:16 offset:v11, v23];
      if ([v12 length] != 16)
      {
        break;
      }

      v24[0] = 0;
      v24[1] = 0;
      [v12 getBytes:v24 length:16];
      v13 = [(UARPRTKitFTAB *)self processSubfileInfo:v24];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = [v13 generateHash:2];
      v16 = self->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        subFileTag = [v14 subFileTag];
        *buf = v23;
        v26 = "[UARPRTKitFTAB expandFileTable:]";
        v27 = 2112;
        v28 = subFileTag;
        v29 = 2112;
        v30 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: hash of subfile %@ is %@", buf, 0x20u);
      }

      [(NSMutableArray *)self->_subfiles addObject:v14];
      v11 += 16;

      if (++v10 >= self->_ftabHeader.fileCount)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

LABEL_17:
  v21 = 1;
LABEL_20:

  return v21;
}

- (id)processSubfileInfo:(UARPFTABFileInfo *)info
{
  v5 = [[NSString alloc] initWithBytes:info length:4 encoding:4];
  if (self->_data)
  {
    v6 = [(UARPRTKitFTAB *)self getDataBlock:info->var2 offset:info->var1];
    v7 = [[UARPRTKitFTABSubfile alloc] initWithData:v6 subFileTag:v5];
  }

  else if (self->_url)
  {
    v7 = [[UARPRTKitFTABSubfile alloc] initWithURL:self->_url offset:info->var1 length:info->var2 subFileTag:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subfileWithTag:(id)tag
{
  tagCopy = tag;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_subfiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        subFileTag = [v9 subFileTag];
        v11 = [subFileTag isEqualToString:tagCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setManifest:(id)manifest
{
  v4 = [manifest copy];
  manifestData = self->_manifestData;
  self->_manifestData = v4;

  _objc_release_x1();
}

- (void)setBootNonce:(id)nonce
{
  nonceCopy = nonce;
  if ([nonceCopy length] == 8)
  {
    [nonceCopy getBytes:self->_ftabHeader.bootNonce length:8];
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = v3;
  if (self->_url)
  {
    [v3 appendFormat:@"FTAB %@:\n", self->_url];
  }

  else
  {
    [v3 appendFormat:@"FTAB:\n", v14];
  }

  [v4 appendFormat:@"\tGeneration: 0x%08x\n", self->_ftabHeader.generation];
  [v4 appendFormat:@"\tValid: %u\n", self->_ftabHeader.valid];
  [v4 appendFormat:@"\tBoot Nonce: "];
  for (i = 0; i != 8; ++i)
  {
    [v4 appendFormat:@"%02x", self->_ftabHeader.bootNonce[i]];
  }

  [v4 appendFormat:@"\n"];
  manifestData = self->_manifestData;
  if (manifestData)
  {
    [v4 appendFormat:@"\tManifest: (Offset=0x%08x) %@\n", self->_ftabHeader.manifestOffset, manifestData];
  }

  if ([(NSMutableArray *)self->_subfiles count])
  {
    [v4 appendFormat:@"\tSubfiles:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_subfiles;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (j = 0; j != v9; j = j + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 appendFormat:@"\t\t%@", *(*(&v15 + 1) + 8 * j)];
          [v4 appendString:@"\n"];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v12 = [NSString stringWithString:v4];

  return v12;
}

- (BOOL)writeToURL:(id)l
{
  lCopy = l;
  v5 = *&self->_ftabHeader.manifestOffset;
  v51 = *&self->_ftabHeader.generation;
  v52 = v5;
  v53 = *self->_ftabHeader.magic;
  v6 = 16 * DWORD2(v53) + 48;
  *&v52 = __PAIR64__([(NSData *)self->_manifestData length], v6);
  v7 = [(NSData *)self->_manifestData length];
  v8 = [(UARPRTKitFTAB *)self cleanFileHandleForWriting:lCopy error:0];
  v9 = [NSData dataWithBytes:&v51 length:48];
  v10 = v9;
  if (v9)
  {
    v36 = v9;
    v37 = lCopy;
    [v8 writeData:v9];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = self->_subfiles;
    v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = v6 + v7;
      v14 = *v46;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          v43 = 0;
          v44 = 0;
          subFileTag = [v16 subFileTag];
          v18 = [subFileTag length];

          if (v18 != 4)
          {
            goto LABEL_30;
          }

          subFileTag2 = [v16 subFileTag];
          uTF8String = [subFileTag2 UTF8String];

          LODWORD(v43) = *uTF8String;
          HIDWORD(v43) = v13;
          LODWORD(v44) = [v16 subFileLength];
          subFileLength = [v16 subFileLength];
          v22 = [NSData dataWithBytes:&v43 length:16];
          if (!v22)
          {
LABEL_30:
            v34 = 0;
            goto LABEL_31;
          }

          v23 = v22;
          v13 += subFileLength;
          [v8 writeData:v22];
        }

        v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (self->_manifestData)
    {
      [v8 writeData:?];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = self->_subfiles;
    v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      while (2)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v39 + 1) + 8 * j);
          if ([v28 subFileLength])
          {
            v29 = 0;
            while (1)
            {
              v30 = v29 + 1024 <= [v28 subFileLength] ? 1024 : objc_msgSend(v28, "subFileLength") - v29;
              v31 = objc_autoreleasePoolPush();
              v32 = [v28 getDataBlock:v30 offset:v29];
              if (!v32)
              {
                break;
              }

              v33 = v32;
              [v8 writeData:v32];

              objc_autoreleasePoolPop(v31);
              v29 += v30;
              if (v29 >= [v28 subFileLength])
              {
                goto LABEL_25;
              }
            }

            objc_autoreleasePoolPop(v31);
            goto LABEL_30;
          }

LABEL_25:
          ;
        }

        v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        v34 = 1;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v34 = 1;
    }

LABEL_31:

    v10 = v36;
    lCopy = v37;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset
{
  ftabLength = self->_ftabLength;
  if (!ftabLength)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100082378(log);
    }

    goto LABEL_12;
  }

  if (ftabLength <= offset)
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000822E0(offset, ftabLength, v11);
    }

LABEL_12:
    blockCopy = 0;
    goto LABEL_13;
  }

  blockCopy = block;
  if (offset + block > ftabLength)
  {
    blockCopy = ftabLength - offset;
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315906;
      v14 = "[UARPRTKitFTAB getDataBlock:offset:]";
      v15 = 1024;
      v16 = blockCopy;
      v17 = 1024;
      offsetCopy = offset;
      v19 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of ftab %@", &v13, 0x22u);
    }
  }

  if (self->_data)
  {
    blockCopy = [(UARPRTKitFTAB *)self getDataRangeFromData:offset, blockCopy];
    goto LABEL_13;
  }

  if (!self->_url)
  {
    goto LABEL_12;
  }

  blockCopy = [(UARPRTKitFTAB *)self getDataRangeFromURL:offset, blockCopy];
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
            sub_1000823FC(&self->_url, log, v9);
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
          v35 = "[UARPRTKitFTAB getDataRangeFromURL:]";
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
        ftabLength = self->_ftabLength;
        v22 = self->_url;
        v23 = v18;
        absoluteString2 = [(NSURL *)v22 absoluteString];
        v25 = [v11 description];
        *buf = 136316162;
        v35 = "[UARPRTKitFTAB getDataRangeFromURL:]";
        v36 = 2048;
        v37 = location;
        v38 = 2048;
        v39 = ftabLength;
        v40 = 2112;
        v41 = absoluteString2;
        v42 = 2112;
        v43 = v25;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: cannot seek to offset %lu (file length %lu) from %@, error %@", buf, 0x34u);
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
      sub_1000824BC(&self->_url, v17, v9);
    }

    v12 = 0;
  }

  return v12;
}

@end