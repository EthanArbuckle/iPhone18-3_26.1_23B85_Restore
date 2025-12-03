@interface SKRenameOperation
- (SKRenameOperation)initWithDisk:(id)disk name:(id)name withCompletionBlock:(id)block;
- (id)newPerformOperation;
@end

@implementation SKRenameOperation

- (SKRenameOperation)initWithDisk:(id)disk name:(id)name withCompletionBlock:(id)block
{
  diskCopy = disk;
  nameCopy = name;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = SKRenameOperation;
  v12 = [(SKBaseDiskArbOperation *)&v24 initWithTarget:diskCopy options:&__NSDictionary0__struct callbackBlock:blockCopy];
  if (v12)
  {
    filesystemType = [diskCopy filesystemType];
    if (filesystemType)
    {
      v14 = filesystemType;
      filesystemType2 = [diskCopy filesystemType];
      v16 = [filesystemType2 isEqualToString:kSKDiskFileSystemFAT];

      if (v16)
      {
        uppercaseString = [nameCopy uppercaseString];

        nameCopy = uppercaseString;
      }
    }

    filesystem = [diskCopy filesystem];
    v23 = 0;
    v19 = [filesystem isValidName:nameCopy error:&v23];
    v20 = v23;

    if (v19)
    {
      objc_storeStrong(&v12->_diskToRename, disk);
      objc_storeStrong(&v12->_name, nameCopy);
      v21 = v12;
    }

    else
    {
      blockCopy[2](blockCopy, v20);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)newPerformOperation
{
  daDisk = [(SKDisk *)self->_diskToRename daDisk];
  DADiskRename(daDisk, self->_name, 0, sub_100017B5C, self);

  if ([(SKBaseDiskArbOperation *)self completeDiskArbOp])
  {
    v4 = +[SKDaemonManager sharedManager];
    v5 = [v4 _recacheSyncDisk:self->_diskToRename];

    return 0;
  }

  else
  {

    return [(SKBaseDiskArbOperation *)self newDAError];
  }
}

@end