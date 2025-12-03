@interface SKEjectOperation
- (BOOL)run;
- (SKEjectOperation)initWithDisk:(id)disk withCompletionBlock:(id)block;
- (id)_wholeDisksToEject;
- (id)description;
- (void)_deepUnmountWithWholeDisk:(id)disk;
@end

@implementation SKEjectOperation

- (SKEjectOperation)initWithDisk:(id)disk withCompletionBlock:(id)block
{
  diskCopy = disk;
  v14.receiver = self;
  v14.super_class = SKEjectOperation;
  v7 = [(SKBaseDiskArbOperation *)&v14 initWithTarget:diskCopy options:&__NSDictionary0__struct callbackBlock:block];
  if (v7)
  {
    v8 = +[SKDaemonManager sharedManager];
    v9 = [v8 wholeDiskForDisk:diskCopy];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = diskCopy;
    }

    v11 = v10;
    diskToEject = v7->_diskToEject;
    v7->_diskToEject = v11;
  }

  return v7;
}

- (id)_wholeDisksToEject
{
  v3 = +[SKDaemonManager sharedManager];
  v4 = +[NSMutableSet set];
  diskToEject = [(SKEjectOperation *)self diskToEject];
  diskToEject2 = [(SKEjectOperation *)self diskToEject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  diskToEject3 = [(SKEjectOperation *)self diskToEject];
  v9 = diskToEject3;
  if (isKindOfClass)
  {
    physicalStores = [diskToEject3 physicalStores];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [physicalStores countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        v14 = 0;
        v15 = diskToEject;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(physicalStores);
          }

          diskToEject = [v3 wholeDiskForDisk:*(*(&v31 + 1) + 8 * v14)];

          if (diskToEject)
          {
            [v4 addObject:diskToEject];
          }

          v14 = v14 + 1;
          v15 = diskToEject;
        }

        while (v12 != v14);
        v12 = [physicalStores countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [v4 addObject:diskToEject3];
  }

  v16 = +[NSMutableArray array];
  children = [diskToEject children];
  v18 = children;
  if (children)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [children countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            container = [v23 container];
            if (container)
            {
              [v16 addObject:container];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }

  allObjects = [v4 allObjects];
  [v16 addObjectsFromArray:allObjects];

  return v16;
}

- (void)_deepUnmountWithWholeDisk:(id)disk
{
  diskCopy = disk;
  v4 = +[NSMutableArray array];
  children = [diskCopy children];
  if (children)
  {
    [v4 addObjectsFromArray:children];
  }

  [v4 addObject:diskCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = kSKDiskMountOptionRecursive;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v18 = v9;
        v19 = &__kCFBooleanTrue;
        v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        [SKUnmountOperation unmountWithDisk:v11 options:v12 error:0];
      }

      v7 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (BOOL)run
{
  _wholeDisksToEject = [(SKEjectOperation *)self _wholeDisksToEject];
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[SKEjectOperation run]";
    v31 = 1024;
    LODWORD(v32) = [_wholeDisksToEject count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Ejecting %d disks", buf, 0x12u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = _wholeDisksToEject;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v6)
  {
LABEL_22:

LABEL_26:
    v21 = +[SKDaemonManager sharedManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002C220;
    v24[3] = &unk_100048BB0;
    v24[4] = self;
    [v21 syncAllDisksWithCompletionBlock:v24];

    v20 = 1;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *v26;
  v23 = v5;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v26 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v25 + 1) + 8 * v9);
    [(SKEjectOperation *)self _deepUnmountWithWholeDisk:v10];
    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[SKEjectOperation run]";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Ejecting %@", buf, 0x16u);
    }

    daDisk = [v10 daDisk];
    if (!daDisk)
    {
      goto LABEL_20;
    }

    v13 = [NSString stringWithFormat:@"Eject of %@", v10];
    [(SKBaseDiskArbOperation *)self setCurrentOperationName:v13];

    DADiskEject(daDisk, 0, sub_100017B5C, self);
    if (![(SKBaseDiskArbOperation *)self completeDiskArbOp])
    {
      break;
    }

LABEL_17:
    v17 = sub_10000BFD0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[SKEjectOperation run]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Ejected", buf, 0xCu);
    }

LABEL_20:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  diskToEject = [(SKEjectOperation *)self diskToEject];
  if (([v10 isEqual:diskToEject] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_24;
    }

    v16 = sub_10000BFD0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[SKEjectOperation run]";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ failed to eject, continue anyway", buf, 0x16u);
    }

    v5 = v23;
    goto LABEL_17;
  }

LABEL_24:
  newDAError = [(SKBaseDiskArbOperation *)self newDAError];

  v5 = v23;
  if (!newDAError)
  {
    goto LABEL_26;
  }

  callbackBlock = [(SKBaseDiskArbOperation *)self callbackBlock];
  (callbackBlock)[2](callbackBlock, newDAError);

  [(SKManagerOperation *)self finished];
  v20 = 0;
LABEL_27:

  return v20;
}

- (id)description
{
  diskToEject = [(SKEjectOperation *)self diskToEject];
  v3 = [NSString stringWithFormat:@"Eject Operation for %@", diskToEject];

  return v3;
}

@end