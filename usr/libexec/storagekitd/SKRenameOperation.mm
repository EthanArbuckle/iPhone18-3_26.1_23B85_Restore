@interface SKRenameOperation
- (SKRenameOperation)initWithDisk:(id)a3 name:(id)a4 withCompletionBlock:(id)a5;
- (id)newPerformOperation;
@end

@implementation SKRenameOperation

- (SKRenameOperation)initWithDisk:(id)a3 name:(id)a4 withCompletionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = SKRenameOperation;
  v12 = [(SKBaseDiskArbOperation *)&v24 initWithTarget:v9 options:&__NSDictionary0__struct callbackBlock:v11];
  if (v12)
  {
    v13 = [v9 filesystemType];
    if (v13)
    {
      v14 = v13;
      v15 = [v9 filesystemType];
      v16 = [v15 isEqualToString:kSKDiskFileSystemFAT];

      if (v16)
      {
        v17 = [v10 uppercaseString];

        v10 = v17;
      }
    }

    v18 = [v9 filesystem];
    v23 = 0;
    v19 = [v18 isValidName:v10 error:&v23];
    v20 = v23;

    if (v19)
    {
      objc_storeStrong(&v12->_diskToRename, a3);
      objc_storeStrong(&v12->_name, v10);
      v21 = v12;
    }

    else
    {
      v11[2](v11, v20);
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
  v3 = [(SKDisk *)self->_diskToRename daDisk];
  DADiskRename(v3, self->_name, 0, sub_100017B5C, self);

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