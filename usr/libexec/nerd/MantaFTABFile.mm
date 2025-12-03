@interface MantaFTABFile
+ (id)longTagName:(id)name;
- (BOOL)addSubfileWithTagName:(id)name contentsOfURL:(id)l;
- (BOOL)addSubfileWithTagName:(id)name subfileData:(id)data;
- (BOOL)configureFileHandleWriteDestinationForURL:(id)l;
- (BOOL)initFile;
- (BOOL)parseFileData;
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length;
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length handle:(id)handle;
- (BOOL)writeSubfileToURL:(id)l tag:(id)tag;
- (BOOL)writeToDestination;
- (BOOL)writeToURL:(id)l;
- (MantaFTABFile)init;
- (MantaFTABFile)initWithContentsOfURL:(id)l;
- (MantaFTABFile)initWithData:(id)data;
- (NSString)bverString;
- (NSString)dumpString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createFileHandleForWritingToURL:(id)l;
- (id)description;
- (id)subfileWithTag:(id)tag;
- (id)writeToData;
- (void)addSubfiles:(id)subfiles;
- (void)configureDataWriteDestination;
- (void)parseFileData;
- (void)removeSubfileWithTag:(id)tag;
- (void)setManifest:(id)manifest;
- (void)writeToDestination;
@end

@implementation MantaFTABFile

- (NSString)dumpString
{
  v3 = +[NSMutableString string];
  v4 = [(MantaFTABFile *)self url];
  [v3 appendFormat:@"Location: %@\n", v4];

  [v3 appendFormat:@"Generation: 0x%08x\n", -[MantaFTABFile generation](self, "generation")];
  [v3 appendFormat:@"Valid: %u\n", -[MantaFTABFile valid](self, "valid")];
  bootNonce = [(MantaFTABFile *)self bootNonce];
  byteString = [bootNonce byteString];
  [v3 appendFormat:@"Boot nonce: %@\n", byteString];

  v7 = [NSString alloc];
  magic = [(MantaFTABFile *)self magic];
  v9 = [v7 initWithData:magic encoding:4];

  [v3 appendFormat:@"Magic: %@\n", v9];
  manifest = [(MantaFTABFile *)self manifest];

  if (manifest)
  {
    manifest2 = [(MantaFTABFile *)self manifest];
    dumpString = [manifest2 dumpString];
    [v3 appendFormat:@"\n%@\n", dumpString];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  subfiles = [(MantaFTABFile *)self subfiles];
  v14 = [subfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(subfiles);
        }

        dumpString2 = [*(*(&v21 + 1) + 8 * i) dumpString];
        [v3 appendFormat:@"\n%@\n", dumpString2];
      }

      v15 = [subfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [NSString stringWithString:v3];

  return v19;
}

- (MantaFTABFile)initWithContentsOfURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = MantaFTABFile;
  v6 = [(MantaFTABFile *)&v14 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v13 = 0;
  v7 = [NSData dataWithContentsOfURL:lCopy options:1 error:&v13];
  v8 = v13;
  fileData = v6->_fileData;
  v6->_fileData = v7;

  if (!v6->_fileData)
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile initWithContentsOfURL:];
    }

    goto LABEL_9;
  }

  if (![(MantaFTABFile *)v6 initFile])
  {
LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_url, l);

LABEL_5:
  v10 = v6;
LABEL_10:

  return v10;
}

- (MantaFTABFile)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MantaFTABFile;
  v5 = [(MantaFTABFile *)&v10 init];
  if (v5 && (v6 = [dataCopy copy], fileData = v5->_fileData, v5->_fileData = v6, fileData, !-[MantaFTABFile initFile](v5, "initFile")))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)initFile
{
  self->_filePointer = [(NSData *)self->_fileData bytes];
  self->_fileLength = [(NSData *)self->_fileData length];
  v3 = +[NSMutableArray array];
  subFileArray = self->_subFileArray;
  self->_subFileArray = v3;

  return [(MantaFTABFile *)self parseFileData];
}

- (MantaFTABFile)init
{
  v11.receiver = self;
  v11.super_class = MantaFTABFile;
  v2 = [(MantaFTABFile *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileData = v2->_fileData;
    v2->_fileData = v3;

    manifest = v2->_manifest;
    v2->_manifest = 0;

    v2->_filePointer = [(NSData *)v2->_fileData bytes];
    v2->_fileLength = [(NSData *)v2->_fileData length];
    v6 = +[NSMutableArray array];
    subFileArray = v2->_subFileArray;
    v2->_subFileArray = v6;

    v8 = [NSData dataWithBytes:&kFTABMagicLowercase_0 length:8];
    magic = v2->_magic;
    v2->_magic = v8;
  }

  return v2;
}

- (BOOL)parseFileData
{
  if (self->_fileLength > 0x2F)
  {
    filePointer = self->_filePointer;
    v5 = (filePointer + 32);
    if (*(filePointer + 4) == 0x42415446534F4B52 || *v5 == 0x62617466736F6B72)
    {
      v6 = [NSData dataWithBytes:v5 length:8];
      magic = self->_magic;
      self->_magic = v6;

      self->_generation = *filePointer;
      self->_valid = *(filePointer + 1);
      v8 = [NSData dataWithBytes:filePointer + 8 length:8];
      bootNonce = self->_bootNonce;
      self->_bootNonce = v8;

      v10 = *(filePointer + 5);
      if (v10)
      {
        v11 = *(filePointer + 4);
        if (![(MantaFTABFile *)self fileValidForOffset:v11 length:*(filePointer + 5)])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [MantaFTABFile parseFileData];
          }

          goto LABEL_26;
        }

        v12 = [[MantaFTABSubfile alloc] initWithTag:@"Manifest" dataPointer:&self->_filePointer[v11] dataLength:v10];
        manifest = self->_manifest;
        self->_manifest = v12;
      }

      v14 = *(filePointer + 10);
      if (!v14)
      {
        return 1;
      }

      v15 = filePointer + 48;
      v16 = 48;
      while ([(MantaFTABFile *)self fileValidForOffset:v16 length:16])
      {
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        if (![(MantaFTABFile *)self fileValidForOffset:v18 length:v17])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [MantaFTABFile parseFileData];
          }

          goto LABEL_26;
        }

        v19 = [[NSString alloc] initWithBytes:v15 length:4 encoding:4];
        if (!v19)
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v15 parseFileData];
          }

          goto LABEL_26;
        }

        v20 = v19;
        v21 = [[MantaFTABSubfile alloc] initWithTag:v19 dataPointer:&self->_filePointer[v18] dataLength:v17];
        [(NSMutableArray *)self->_subFileArray addObject:v21];
        --v14;
        v15 += 16;
        v16 = (v16 + 16);

        if (!v14)
        {
          return 1;
        }
      }

      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        [MantaFTABFile parseFileData];
      }
    }

    else
    {
      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        [(MantaFTABFile *)v5 parseFileData];
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile parseFileData];
    }
  }

LABEL_26:

  return 0;
}

- (id)subfileWithTag:(id)tag
{
  tagCopy = tag;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_subFileArray;
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
        v10 = [v9 tag];
        v11 = [v10 isEqual:tagCopy];

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

- (void)removeSubfileWithTag:(id)tag
{
  v4 = [(MantaFTABFile *)self subfileWithTag:tag];
  if (v4)
  {
    [(NSMutableArray *)self->_subFileArray removeObject:v4];
  }

  _objc_release_x1();
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
    [v3 appendFormat:@"FTAB:\n", v15];
  }

  [v4 appendFormat:@"\tGeneration: 0x%08x\n", self->_generation];
  [v4 appendFormat:@"\tValid: %u\n", self->_valid];
  byteString = [(NSData *)self->_bootNonce byteString];
  [v4 appendFormat:@"\tBoot Nonce: %@\n", byteString];

  if (self->_manifest)
  {
    [v4 appendFormat:@"\tManifest: %@\n", self->_manifest];
  }

  if ([(NSMutableArray *)self->_subFileArray count])
  {
    [v4 appendFormat:@"\tSubfiles:\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_subFileArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (-v9 != i)
          {
            [v4 appendString:@"\n"];
          }

          [v4 appendFormat:@"\t\t%@", v12];
        }

        v9 += v8;
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v13 = [NSString stringWithString:v4];

  return v13;
}

- (BOOL)addSubfileWithTagName:(id)name contentsOfURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v13 = 0;
  v8 = [NSData dataWithContentsOfURL:lCopy options:1 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [(MantaFTABFile *)self addSubfileWithTagName:nameCopy subfileData:v8];
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile addSubfileWithTagName:contentsOfURL:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)addSubfileWithTagName:(id)name subfileData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  [(MantaFTABFile *)self removeSubfileWithTag:nameCopy];
  v8 = [MantaFTABSubfile alloc];
  bytes = [dataCopy bytes];
  v10 = [dataCopy length];

  v11 = [(MantaFTABSubfile *)v8 initWithTag:nameCopy dataPointer:bytes dataLength:v10];
  [(NSMutableArray *)self->_subFileArray addObject:v11];

  return 1;
}

- (void)addSubfiles:(id)subfiles
{
  subfilesCopy = subfiles;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [subfilesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subfilesCopy);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) tag];
        [(MantaFTABFile *)self removeSubfileWithTag:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subfilesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_subFileArray addObjectsFromArray:subfilesCopy];
}

- (void)setManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = [[MantaFTABSubfile alloc] initWithTag:@"Manifest" data:manifestCopy];

  manifest = self->_manifest;
  self->_manifest = v5;
}

- (id)createFileHandleForWritingToURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v6 = [v4 fileExistsAtPath:path];

  if (v6)
  {
    path2 = [lCopy path];
    v18 = 0;
    v8 = [v4 removeItemAtPath:path2 error:&v18];
    v9 = v18;

    if ((v8 & 1) == 0)
    {
      v15 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MantaFTABFile createFileHandleForWritingToURL:lCopy];
      }

      goto LABEL_14;
    }
  }

  v10 = +[NSFileManager defaultManager];
  path3 = [lCopy path];
  v12 = [v10 createFileAtPath:path3 contents:0 attributes:0];

  if ((v12 & 1) == 0)
  {
    v9 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile createFileHandleForWritingToURL:lCopy];
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v13 = [NSFileHandle fileHandleForWritingToURL:lCopy error:&v17];
  v9 = v17;
  if (!v13)
  {
    v14 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FTABFileBackDeploy createFileHandleForWritingToURL:];
    }
  }

LABEL_15:

  return v13;
}

- (BOOL)configureFileHandleWriteDestinationForURL:(id)l
{
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;
  lCopy = l;

  v6 = [(MantaFTABFile *)self createFileHandleForWritingToURL:lCopy];

  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = v6;

  return self->_fileHandleWriteDestination != 0;
}

- (void)configureDataWriteDestination
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = 0;

  v4 = +[NSMutableData data];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = v4;

  _objc_release_x1();
}

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  if (fileHandleWriteDestination)
  {

    LOBYTE(dataWriteDestination) = [(NSFileHandle *)fileHandleWriteDestination writeBytes:bytes length:length];
  }

  else
  {
    dataWriteDestination = self->_dataWriteDestination;
    if (dataWriteDestination)
    {
      [(NSMutableData *)dataWriteDestination appendBytes:bytes length:length, v4, v5];
      LOBYTE(dataWriteDestination) = 1;
    }
  }

  return dataWriteDestination;
}

- (BOOL)writeToDestination
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36[0] = *&self->_generation;
  v36[1] = *[(NSData *)self->_bootNonce bytes];
  v3 = 16 * [(NSMutableArray *)self->_subFileArray count];
  manifest = self->_manifest;
  if (manifest)
  {
    v5 = v3 + 48;
    dataLength = [(MantaFTABSubfile *)manifest dataLength];
  }

  else
  {
    dataLength = 0;
    v5 = 0;
  }

  v37 = v5;
  v38 = dataLength;
  v40 = *[(NSData *)self->_magic bytes];
  LODWORD(v41) = [(NSMutableArray *)self->_subFileArray count];
  if (![(MantaFTABFile *)self writeBytes:v36 length:48])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [FTABFileBackDeploy writeToDestination];
    }

    goto LABEL_31;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_subFileArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v3 + dataLength + 48;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v28 = 0;
        v29 = 0;
        v14 = [v13 tag];
        LODWORD(v28) = *[v14 UTF8String];

        HIDWORD(v28) = v10;
        LODWORD(v29) = [v13 dataLength];
        if (![(MantaFTABFile *)self writeBytes:&v28 length:16])
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v13 writeToDestination];
          }

LABEL_30:

          goto LABEL_31;
        }

        v10 += [v13 dataLength];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = self->_manifest;
  if (v15 && ![(MantaFTABFile *)self writeBytes:[(MantaFTABSubfile *)v15 dataPointer] length:[(MantaFTABSubfile *)self->_manifest dataLength]])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [FTABFileBackDeploy writeToDestination];
    }

LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_subFileArray;
  v16 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    while (2)
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if (!-[MantaFTABFile writeBytes:length:](self, "writeBytes:length:", [v20 dataPointer], objc_msgSend(v20, "dataLength")))
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v20 writeToDestination];
          }

          goto LABEL_30;
        }
      }

      v17 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
      v21 = 1;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_32:

  return v21;
}

- (BOOL)writeToURL:(id)l
{
  lCopy = l;
  if ([(MantaFTABFile *)self configureFileHandleWriteDestinationForURL:lCopy])
  {
    writeToDestination = [(MantaFTABFile *)self writeToDestination];
    fileHandleWriteDestination = self->_fileHandleWriteDestination;
    self->_fileHandleWriteDestination = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile writeToURL:lCopy];
    }

    writeToDestination = 0;
  }

  return writeToDestination;
}

- (id)writeToData
{
  [(MantaFTABFile *)self configureDataWriteDestination];
  [(MantaFTABFile *)self writeToDestination];
  v3 = [NSData dataWithData:self->_dataWriteDestination];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;

  return v3;
}

- (BOOL)writeSubfileToURL:(id)l tag:(id)tag
{
  lCopy = l;
  tagCopy = tag;
  v8 = [(MantaFTABFile *)self subfileWithTag:tagCopy];
  if (v8)
  {
    v9 = [(MantaFTABFile *)self createFileHandleForWritingToURL:lCopy];
    if (v9)
    {
      v10 = [v9 writeBytes:objc_msgSend(v8 length:{"dataPointer"), objc_msgSend(v8, "dataLength")}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FTABFileBackDeploy writeSubfileToURL:tag:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length handle:(id)handle
{
  handleCopy = handle;
  v8 = [NSData dataWithBytes:bytes length:length];
  LOBYTE(bytes) = [handleCopy uarpWriteData:v8 error:0];

  return bytes;
}

- (id)copyWithZone:(_NSZone *)zone
{
  writeToData = [(MantaFTABFile *)self writeToData];
  v4 = [[MantaFTABFile alloc] initWithData:writeToData];

  return v4;
}

- (NSString)bverString
{
  v2 = [(MantaFTABFile *)self subfileWithTag:@"bver"];
  v3 = v2;
  if (v2 && (v4 = [v2 dataLength]) != 0)
  {
    LODWORD(v5) = v4;
    if (*([v3 dataPointer] + v4 - 1) == 10)
    {
      v5 = (v5 - 1);
    }

    else
    {
      v5 = v5;
    }

    v6 = [[NSString alloc] initWithBytes:objc_msgSend(v3 length:"dataPointer") encoding:{v5, 4}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)longTagName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"acib"])
  {
    v4 = @"ACIBT";
  }

  else if ([nameCopy isEqualToString:@"aopf"])
  {
    v4 = @"AOP";
  }

  else if ([nameCopy isEqualToString:@"lpda"])
  {
    v4 = @"LeapBinsDigestsArray";
  }

  else if ([nameCopy isEqualToString:@"phyb"])
  {
    v4 = @"PhyBlueTooth";
  }

  else if ([nameCopy isEqualToString:@"rrko"])
  {
    v4 = @"RestoreRTKitOS";
  }

  else if ([nameCopy isEqualToString:@"rkos"])
  {
    v4 = @"RTKitOS";
  }

  else if ([nameCopy isEqualToString:@"rtpf"])
  {
    v4 = @"RTP";
  }

  else if ([nameCopy isEqualToString:@"sbd1"])
  {
    v4 = @"SoftwareBinaryDsp1";
  }

  else if ([nameCopy isEqualToString:@"sbd2"])
  {
    v4 = @"SoftwareBinaryDsp2";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithContentsOfURL:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)parseFileData
{
  v6 = *self;
  v7 = self[1];
  v8 = self[2];
  v9 = self[3];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x24u);
}

- (void)addSubfileWithTagName:contentsOfURL:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)createFileHandleForWritingToURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_5(&_mh_execute_header, v2, v3, "Unable to delete file at %@", v4, v5, v6, v7, v8);
}

- (void)createFileHandleForWritingToURL:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_5(&_mh_execute_header, v2, v3, "Unable to create file at %@", v4, v5, v6, v7, v8);
}

- (void)writeToDestination
{
  v1 = [self tag];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_5(&_mh_execute_header, v2, v3, "Failed to write '%@'", v4, v5, v6, v7, v8);
}

- (void)writeToURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_5(&_mh_execute_header, v2, v3, "Failed to open file handle for writing to '%@'", v4, v5, v6, v7, v8);
}

@end