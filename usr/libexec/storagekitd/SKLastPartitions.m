@interface SKLastPartitions
+ (unint64_t)hfsMinimalSizeForDisk:(id)a3 currentSize:(unint64_t *)a4;
+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)a3;
- (SKLastPartitions)initWithDisk:(id)a3;
@end

@implementation SKLastPartitions

- (SKLastPartitions)initWithDisk:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SKLastPartitions;
  v5 = [(SKLastPartitions *)&v26 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 children];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [v7 lastObject];
    objc_storeStrong(&v5->_resizablePart, v8);
    if ([v7 count] >= 2)
    {
      v9 = [v8 ioContent];
      v10 = [v9 isEqualToString:@"Apple_APFS_Recovery"];

      if (v10)
      {
        v11 = v8;
        recoveryPart = v5->_recoveryPart;
        v5->_recoveryPart = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        v19 = [v8 container];
        recoveryPart = v19;
        if (v19)
        {
          v20 = [(SKDisk *)v19 volumes];
          if ([v20 count] == 1)
          {
            v21 = [v20 objectAtIndexedSubscript:0];
            v22 = [v21 getAPFSVolumeRole];
            v23 = [v22 isEqualToString:SKAPFSVolumeRoleRecovery];

            if (v23)
            {
              objc_storeStrong(&v5->_recoveryPart, v8);
            }
          }
        }
      }

LABEL_19:
      if (v5->_recoveryPart)
      {
        v24 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
        resizablePart = v5->_resizablePart;
        v5->_resizablePart = v24;
      }
    }
  }

  else
  {
    v13 = v4;
    v8 = v5->_resizablePart;
    v5->_resizablePart = v13;
  }

  v14 = [(SKDisk *)v5->_resizablePart startLocation];
  v15 = objc_opt_class();
  v16 = [v4 type];
  v5->_nonResizableSize = v14 + [v15 secondaryPartitionTableSizeWithDiskType:v16];

  v17 = v5->_recoveryPart;
  if (v17)
  {
    v5->_nonResizableSize += [(SKDisk *)v17 unformattedSize];
  }

LABEL_11:
  return v5;
}

+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)a3
{
  if ([a3 isEqualToString:kSKDiskTypeGPTWholeDisk])
  {
    return 20480;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)hfsMinimalSizeForDisk:(id)a3 currentSize:(unint64_t *)a4
{
  v5 = a3;
  v6 = [v5 type];
  v7 = [v6 isEqualToString:kSKDiskTypeHFS];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0;
    v8 = [SKPartitionTable createMediaRefWithDisk:v5 error:&v18];
    v9 = v18;
    if (v8)
    {
      v10 = MKHFSGetResizeLimits();
      CFRelease(v8);
      if (!v10)
      {
        v16 = [v5 getSectorSize];
        if (a4)
        {
          *a4 = v19 * v16;
        }

        v15 = v20 * v16;
        goto LABEL_14;
      }

      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "+[SKLastPartitions hfsMinimalSizeForDisk:currentSize:]";
        v23 = 2112;
        v24 = v5;
        v25 = 1024;
        LODWORD(v26) = v10;
        v12 = "%s: Failed to get size from %@, %d";
        v13 = v11;
        v14 = 28;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      }
    }

    else
    {
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "+[SKLastPartitions hfsMinimalSizeForDisk:currentSize:]";
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v9;
        v12 = "%s: Failed to read media from %@, %@";
        v13 = v11;
        v14 = 32;
        goto LABEL_9;
      }
    }

    v15 = [v5 totalSpace];
LABEL_14:

    goto LABEL_15;
  }

  v15 = [v5 totalSpace];
LABEL_15:

  return v15;
}

@end