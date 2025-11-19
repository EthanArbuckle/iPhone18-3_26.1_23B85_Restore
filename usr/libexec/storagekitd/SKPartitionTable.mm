@interface SKPartitionTable
+ (BOOL)updatePartitionTypeWithPartitions:(id)a3 partID:(id)a4 newType:(id)a5 error:(id *)a6;
+ (__MKMedia)createMediaRefWithDisk:(id)a3 error:(id *)a4;
+ (id)partitionIDFromDisk:(id)a3;
- (BOOL)allocateMediaRef:(id *)a3;
- (BOOL)fitToContainerSize:(unint64_t)a3 error:(id *)a4;
- (BOOL)overwriteExistingMediaLayout:(id)a3 opts:(__CFDictionary *)a4 partitionScheme:(int)a5 size:(unint64_t)a6;
- (BOOL)overwritePartitionAt:(id)a3 filesystem:(id)a4 error:(id *)a5;
- (BOOL)resizePartitionID:(id)a3 size:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeNewMediaLayout:(id)a3 partitionScheme:(unint64_t)a4;
- (BOOL)writePartitionScheme:(unint64_t)a3 error:(id *)a4;
- (SKPartitionTable)initWithDisk:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)flushMediaRef;
@end

@implementation SKPartitionTable

+ (__MKMedia)createMediaRefWithDisk:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 diskIdentifier];
  v7 = [NSString stringWithFormat:@"/dev/r%@", v6];
  [v7 fileSystemRepresentation];

  v19[0] = @"Writable";
  v19[1] = @"Shared Writer";
  v20[0] = &__kCFBooleanTrue;
  v20[1] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v9 = MKMediaCreateWithPath();
  if (!v9)
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[SKPartitionTable createMediaRefWithDisk:error:]";
      v15 = 2112;
      v16 = v5;
      v17 = 1024;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to create media ref with disk %@, MK err %d", buf, 0x1Cu);
    }

    v11 = [SKError nilWithPOSIXCode:0 error:a4];
    v9 = 0;
  }

  return v9;
}

- (SKPartitionTable)initWithDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = SKPartitionTable;
  v7 = [(SKPartitionTable *)&v23 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = +[NSMutableArray array];
  partitions = v7->_partitions;
  v7->_partitions = v8;

  v10 = +[SKBaseManager sharedManager];
  v11 = [v10 wholeDiskForDisk:v6];

  if (!v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v19 = [v6 container];
    if (!v19)
    {
      goto LABEL_12;
    }

    v11 = v19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = [v11 designatedPhysicalStore];
  if (!v12)
  {
    v27 = v11;
    v20 = [NSArray arrayWithObjects:&v27 count:1];
    v21 = [SKError errorWithCode:117 disks:v20 userInfo:0];
    v18 = [SKError nilWithError:v21 error:a4];

    goto LABEL_17;
  }

  v13 = v12;
  v14 = +[SKBaseManager sharedManager];
  v15 = [v14 wholeDiskForDisk:v13];

  v6 = v13;
  v11 = v15;
  if (!v15)
  {
LABEL_12:
    v26 = v6;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v20 = [SKError errorWithCode:117 disks:v11 userInfo:0];
    v18 = [SKError nilWithError:v20 error:a4];
LABEL_17:

    goto LABEL_18;
  }

LABEL_6:
  objc_storeStrong(&v7->_disk, v11);
  v7->_sectorSize = [v11 getSectorSize];
  v16 = objc_opt_class();
  v17 = [(SKPartitionTable *)v7 disk];
  v7->_mediaRef = [v16 createMediaRefWithDisk:v17 error:a4];

  if (!v7->_mediaRef)
  {
    v20 = sub_10000BFD0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[SKPartitionTable initWithDisk:error:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to create media ref", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_17;
  }

LABEL_8:
  v18 = v7;
LABEL_18:

  return v18;
}

- (void)dealloc
{
  mediaRef = self->_mediaRef;
  if (mediaRef)
  {
    CFRelease(mediaRef);
  }

  v4.receiver = self;
  v4.super_class = SKPartitionTable;
  [(SKPartitionTable *)&v4 dealloc];
}

- (BOOL)writeNewMediaLayout:(id)a3 partitionScheme:(unint64_t)a4
{
  v5 = a3;
  v12 = 0;
  if (MKCFCreateMedia())
  {
    [(SKPartitionTable *)self sectorSize];
    [(SKPartitionTable *)self sectorSize];
    v11 = [(SKPartitionTable *)self mediaRef];
    MKCFCreateMap();
    [(SKPartitionTable *)self mediaRef:v11];
    v12 = MKCFWriteMedia();
    if (v12)
    {
      v10 = sub_10000BFD0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[SKPartitionTable writeNewMediaLayout:partitionScheme:]";
        v15 = 1024;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to write scheme, MK err %d", buf, 0x12u);
      }
    }

    MKCFDisposeMedia();
    v8 = v12 == 0;
  }

  else
  {
    v6 = +[SKBaseManager sharedManager];
    [v6 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_1000495E8];

    v7 = sub_10000BFD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "[SKPartitionTable writeNewMediaLayout:partitionScheme:]";
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s: Failed to create media, MK err %d", buf, 0x12u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)overwriteExistingMediaLayout:(id)a3 opts:(__CFDictionary *)a4 partitionScheme:(int)a5 size:(unint64_t)a6
{
  v7 = a3;
  v17 = 0;
  [(SKPartitionTable *)self mediaRef];
  v8 = MKCFReadMedia();
  if (!v8)
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v8, @"Schemes");
  [(SKPartitionTable *)self sectorSize];
  v16 = [(SKPartitionTable *)self mediaRef];
  MKCFCreateMap();
  CFArrayGetValueAtIndex(Value, 1);
  [(SKPartitionTable *)self mediaRef:v16];
  v17 = MKCFUpdateScheme();
  if (v17)
  {
    v11 = +[SKBaseManager sharedManager];
    [v11 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_100049648];

    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v19 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s: Failed to update scheme, MK err %d", buf, 0x12u);
    }

    MKCFDisposeMedia();
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  [(SKPartitionTable *)self mediaRef];
  v17 = MKCFWriteScheme();
  if (v17)
  {
    v15 = sub_10000BFD0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to write scheme, MK err %d", buf, 0x12u);
    }
  }

  MKCFDisposeMedia();
  v13 = v17 == 0;
LABEL_11:

  return v13;
}

- (void)flushMediaRef
{
  if ([(SKPartitionTable *)self mediaRef])
  {
    CFRelease([(SKPartitionTable *)self mediaRef]);

    [(SKPartitionTable *)self setMediaRef:0];
  }
}

- (BOOL)allocateMediaRef:(id *)a3
{
  if (![(SKPartitionTable *)self mediaRef])
  {
    v5 = objc_opt_class();
    v6 = [(SKPartitionTable *)self disk];
    -[SKPartitionTable setMediaRef:](self, "setMediaRef:", [v5 createMediaRefWithDisk:v6 error:a3]);
  }

  return [(SKPartitionTable *)self mediaRef]!= 0;
}

- (BOOL)writePartitionScheme:(unint64_t)a3 error:(id *)a4
{
  if (![(SKPartitionTable *)self allocateMediaRef:a4])
  {
    return 0;
  }

  v7 = [(SKPartitionTable *)self disk];
  v8 = [v7 wipeDiskWithError:a4];

  if (!v8)
  {
    return 0;
  }

  v9 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [(SKPartitionTable *)self partitions];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    if (a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = 16;
    }

    if (a3 == 1)
    {
      v15 = 8;
    }

    else
    {
      v15 = v14;
    }

    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = [*(*(&v26 + 1) + 8 * i) buildWithScheme:v15 sectorSize:{-[SKPartitionTable sectorSize](self, "sectorSize")}];
        if (!v17)
        {
          v20 = [(SKPartitionTable *)self disk];
          v35 = v20;
          v21 = [NSArray arrayWithObjects:&v35 count:1];
          v22 = 300;
          goto LABEL_23;
        }

        v18 = v17;
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v33 = @"Partitions";
  v34 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  if ([(SKPartitionTable *)self writeNewMediaLayout:v10 partitionScheme:a3])
  {
    [(SKPartitionTable *)self flushMediaRef];
    v19 = 1;
  }

  else
  {
    v23 = sub_10000BFD0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[SKPartitionTable writePartitionScheme:error:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to write media on disk", buf, 0xCu);
    }

    v20 = [(SKPartitionTable *)self disk];
    v30 = v20;
    v21 = [NSArray arrayWithObjects:&v30 count:1];
    v22 = 114;
LABEL_23:
    v24 = [SKError errorWithCode:v22 disks:v21 userInfo:0];
    v19 = [SKError failWithError:v24 error:a4];
  }

  return v19;
}

+ (id)partitionIDFromDisk:(id)a3
{
  v3 = a3;
  v4 = [SKIOMedia alloc];
  v5 = [v3 diskIdentifier];

  v6 = [(SKIOMedia *)v4 initWithDevName:v5];
  v7 = [(SKIOObject *)v6 copyPropertyWithClass:objc_opt_class() key:@"Partition ID"];

  return v7;
}

+ (BOOL)updatePartitionTypeWithPartitions:(id)a3 partID:(id)a4 newType:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"Partition ID"];
        v18 = [v17 isEqual:v9];

        if (v18)
        {
          [v16 setObject:v10 forKeyedSubscript:@"Type"];
          v20 = 1;
          v19 = v11;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = [NSString stringWithFormat:@"Couldn't find partition with ID %@", v9];
  v20 = [SKError failWithSKErrorCode:117 debugDescription:v19 error:a6];
LABEL_11:

  return v20;
}

- (BOOL)overwritePartitionAt:(id)a3 filesystem:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SKPartitionTable *)self allocateMediaRef:a5])
  {
    [(SKPartitionTable *)self mediaRef];
    v10 = MKCFReadMedia();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"Schemes"];
      v27 = [v12 objectAtIndexedSubscript:0];
      v26 = [v27 objectForKeyedSubscript:@"Sections"];
      v25 = [v26 objectAtIndexedSubscript:0];
      v13 = [v25 objectForKeyedSubscript:@"Partitions"];
      v14 = [(SKPartitionTable *)self disk];
      v15 = [v14 type];
      v16 = sub_10002196C(v15);

      if (v16 == 512)
      {
        MKCFDisposeMedia();
        v17 = [(SKPartitionTable *)self disk];
        v29 = v17;
        v18 = [NSArray arrayWithObjects:&v29 count:1];
        v19 = [SKError errorWithCode:117 disks:v18 userInfo:0];
        v20 = [SKError failWithError:v19 error:a5];
      }

      else
      {
        v22 = objc_opt_class();
        v23 = [v9 contentMask];
        LODWORD(v22) = [v22 updatePartitionTypeWithPartitions:v13 partID:v8 newType:v23 error:a5];

        if (v22)
        {
          [(SKPartitionTable *)self mediaRef];
          v28 = MKCFWriteMedia();
          MKCFDisposeMedia();
          if (v28)
          {
            v20 = [SKError failWithSKErrorCode:114 debugDescription:@"Failed to overwrite existing partition" error:a5];
          }

          else
          {
            [(SKPartitionTable *)self flushMediaRef];
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v21 = sub_10000BFD0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[SKPartitionTable overwritePartitionAt:filesystem:error:]";
        v32 = 1024;
        v33 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
      }

      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:0 userInfo:0];
      v20 = [SKError failWithError:v12 error:a5];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)fitToContainerSize:(unint64_t)a3 error:(id *)a4
{
  if (![(SKPartitionTable *)self allocateMediaRef:a4])
  {
    return 0;
  }

  [(SKPartitionTable *)self mediaRef];
  v7 = MKCFReadMedia();
  if (v7)
  {
    v8 = [(SKPartitionTable *)self disk];
    v9 = [v8 type];
    v10 = sub_10002196C(v9);

    if (v10 == 512)
    {
      MKCFDisposeMedia();
      v11 = [(SKPartitionTable *)self disk];
      v26 = v11;
      v12 = [NSArray arrayWithObjects:&v26 count:1];
      v13 = [SKError errorWithCode:117 disks:v12 userInfo:0];
      v14 = [SKError failWithError:v13 error:a4];
    }

    else
    {
      v11 = [v7 objectForKeyedSubscript:@"Schemes"];
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v16 objectForKeyedSubscript:@"Sections"];
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [(SKPartitionTable *)self overwriteExistingMediaLayout:v18 opts:&off_10004BFB0 partitionScheme:v10 size:a3 / [(SKPartitionTable *)self sectorSize]];
      MKCFDisposeMedia();
      if (v19)
      {
        [(SKPartitionTable *)self flushMediaRef];
        v14 = 1;
      }

      else
      {
        v20 = sub_10000BFD0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v28 = "[SKPartitionTable fitToContainerSize:error:]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to fit existing partition", buf, 0xCu);
        }

        v21 = [(SKPartitionTable *)self disk];
        v25 = v21;
        v22 = [NSArray arrayWithObjects:&v25 count:1];
        v23 = [SKError errorWithCode:114 disks:v22 userInfo:0];
        v14 = [SKError failWithError:v23 error:a4];
      }
    }
  }

  else
  {
    v15 = sub_10000BFD0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[SKPartitionTable fitToContainerSize:error:]";
      v29 = 1024;
      v30 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
    }

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:0 userInfo:0];
    v14 = [SKError failWithError:v11 error:a4];
  }

  return v14;
}

- (BOOL)resizePartitionID:(id)a3 size:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6
{
  v50 = a3;
  if ([(SKPartitionTable *)self allocateMediaRef:a6])
  {
    v55 = 0;
    [(SKPartitionTable *)self mediaRef];
    v8 = MKCFReadMedia();
    v9 = v8;
    if (!v8)
    {
      v21 = sub_10000BFD0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v62 = "[SKPartitionTable resizePartitionID:size:offset:error:]";
        v63 = 1024;
        v64 = v55;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
      }

      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v55 userInfo:0];
      v20 = [SKError failWithError:v10 error:a6];
      goto LABEL_26;
    }

    v10 = [v8 objectForKeyedSubscript:@"Schemes"];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"Sections"];
    v47 = [v12 objectAtIndexedSubscript:0];
    v13 = [v47 objectForKeyedSubscript:@"Partitions"];
    v14 = [(SKPartitionTable *)self disk];
    v15 = [v14 type];
    v16 = sub_10002196C(v15);

    v46 = v13;
    if (v16 == 512)
    {
      MKCFDisposeMedia();
      v17 = [(SKPartitionTable *)self disk];
      v60 = v17;
      v18 = [NSArray arrayWithObjects:&v60 count:1];
      v19 = [SKError errorWithCode:117 disks:v18 userInfo:0];
      v20 = [SKError failWithError:v19 error:a6];
    }

    else
    {
      v41 = v16;
      v42 = v12;
      v43 = v11;
      v44 = v10;
      v45 = v9;
      v40 = a6;
      v17 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v52;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v52 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v51 + 1) + 8 * i);
            v28 = [v27 mutableCopy];
            v29 = [v27 objectForKeyedSubscript:@"Partition ID"];
            v30 = [v29 isEqualToNumber:v50];

            if (v30)
            {
              v31 = [NSNumber numberWithUnsignedLongLong:a4 / [(SKPartitionTable *)self sectorSize]];
              [v28 setObject:v31 forKeyedSubscript:@"Size"];

              if (a5)
              {
                v32 = [NSNumber numberWithUnsignedLongLong:a5 / [(SKPartitionTable *)self sectorSize]];
                [v28 setObject:v32 forKeyedSubscript:@"Offset"];
              }
            }

            [v17 addObject:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v24);
      }

      v57 = @"Partitions";
      v58 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v33 = [(SKPartitionTable *)self overwriteExistingMediaLayout:v18 opts:&off_10004C000 partitionScheme:v41];
      v9 = v45;
      MKCFDisposeMedia();
      if ((v33 & 1) == 0)
      {
        v35 = sub_10000BFD0();
        v12 = v42;
        v34 = v47;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v62 = "[SKPartitionTable resizePartitionID:size:offset:error:]";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: Failed to overwrite existing partition", buf, 0xCu);
        }

        v36 = [(SKPartitionTable *)self disk];
        v56 = v36;
        v37 = [NSArray arrayWithObjects:&v56 count:1];
        v38 = [SKError errorWithCode:114 disks:v37 userInfo:0];
        v20 = [SKError failWithError:v38 error:v40];

        v11 = v43;
        v10 = v44;
        goto LABEL_25;
      }

      [(SKPartitionTable *)self flushMediaRef];
      v20 = 1;
      v10 = v44;
      v12 = v42;
    }

    v34 = v47;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v20 = 0;
LABEL_27:

  return v20;
}

@end