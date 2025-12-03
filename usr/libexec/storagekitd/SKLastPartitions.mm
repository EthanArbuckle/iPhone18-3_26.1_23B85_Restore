@interface SKLastPartitions
+ (unint64_t)hfsMinimalSizeForDisk:(id)disk currentSize:(unint64_t *)size;
+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)type;
- (SKLastPartitions)initWithDisk:(id)disk;
@end

@implementation SKLastPartitions

- (SKLastPartitions)initWithDisk:(id)disk
{
  diskCopy = disk;
  v26.receiver = self;
  v26.super_class = SKLastPartitions;
  v5 = [(SKLastPartitions *)&v26 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  children = [diskCopy children];
  v7 = children;
  if (children && [children count])
  {
    lastObject = [v7 lastObject];
    objc_storeStrong(&v5->_resizablePart, lastObject);
    if ([v7 count] >= 2)
    {
      ioContent = [lastObject ioContent];
      v10 = [ioContent isEqualToString:@"Apple_APFS_Recovery"];

      if (v10)
      {
        v11 = lastObject;
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

        container = [lastObject container];
        recoveryPart = container;
        if (container)
        {
          volumes = [(SKDisk *)container volumes];
          if ([volumes count] == 1)
          {
            v21 = [volumes objectAtIndexedSubscript:0];
            getAPFSVolumeRole = [v21 getAPFSVolumeRole];
            v23 = [getAPFSVolumeRole isEqualToString:SKAPFSVolumeRoleRecovery];

            if (v23)
            {
              objc_storeStrong(&v5->_recoveryPart, lastObject);
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
    v13 = diskCopy;
    lastObject = v5->_resizablePart;
    v5->_resizablePart = v13;
  }

  startLocation = [(SKDisk *)v5->_resizablePart startLocation];
  v15 = objc_opt_class();
  type = [diskCopy type];
  v5->_nonResizableSize = startLocation + [v15 secondaryPartitionTableSizeWithDiskType:type];

  v17 = v5->_recoveryPart;
  if (v17)
  {
    v5->_nonResizableSize += [(SKDisk *)v17 unformattedSize];
  }

LABEL_11:
  return v5;
}

+ (unint64_t)secondaryPartitionTableSizeWithDiskType:(id)type
{
  if ([type isEqualToString:kSKDiskTypeGPTWholeDisk])
  {
    return 20480;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)hfsMinimalSizeForDisk:(id)disk currentSize:(unint64_t *)size
{
  diskCopy = disk;
  type = [diskCopy type];
  v7 = [type isEqualToString:kSKDiskTypeHFS];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0;
    v8 = [SKPartitionTable createMediaRefWithDisk:diskCopy error:&v18];
    v9 = v18;
    if (v8)
    {
      v10 = MKHFSGetResizeLimits();
      CFRelease(v8);
      if (!v10)
      {
        getSectorSize = [diskCopy getSectorSize];
        if (size)
        {
          *size = v19 * getSectorSize;
        }

        totalSpace = v20 * getSectorSize;
        goto LABEL_14;
      }

      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "+[SKLastPartitions hfsMinimalSizeForDisk:currentSize:]";
        v23 = 2112;
        v24 = diskCopy;
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
        v24 = diskCopy;
        v25 = 2112;
        v26 = v9;
        v12 = "%s: Failed to read media from %@, %@";
        v13 = v11;
        v14 = 32;
        goto LABEL_9;
      }
    }

    totalSpace = [diskCopy totalSpace];
LABEL_14:

    goto LABEL_15;
  }

  totalSpace = [diskCopy totalSpace];
LABEL_15:

  return totalSpace;
}

@end