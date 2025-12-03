@interface SKUnmountOperation
+ (BOOL)unmountWithDisk:(id)disk options:(id)options error:(id *)error;
- (BOOL)_unmountWithDADisk:(id)disk;
- (BOOL)_unmountWithDisk:(id)disk error:(id *)error;
- (BOOL)unmountSnapshotsWithDisk:(id)disk error:(id *)error;
- (SKUnmountOperation)initWithDisk:(id)disk options:(id)options withCompletionBlock:(id)block;
- (id)description;
- (id)newPerformOperation;
@end

@implementation SKUnmountOperation

- (SKUnmountOperation)initWithDisk:(id)disk options:(id)options withCompletionBlock:(id)block
{
  diskCopy = disk;
  v18.receiver = self;
  v18.super_class = SKUnmountOperation;
  v9 = [(SKBaseDiskArbOperation *)&v18 initWithTarget:diskCopy options:options callbackBlock:block];
  v10 = v9;
  if (v9)
  {
    options = [(SKBaseDiskArbOperation *)v9 options];
    v12 = [options objectForKeyedSubscript:kSKAPFSDiskUnmountIgnoreGroup];
    v13 = [(SKBaseDiskArbOperation *)v10 disksForOperationWithTarget:diskCopy ignoreGroup:sub_100010328(v12)];
    disksToUnmount = v10->_disksToUnmount;
    v10->_disksToUnmount = v13;

    if (![(SKBaseDiskArbOperation *)v10 recursive])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([diskCopy isLiveFSAPFSDisk])
        {
          disksToUnmount = [(SKUnmountOperation *)v10 disksToUnmount];
          v16 = [disksToUnmount setByAddingObject:diskCopy];
          [(SKUnmountOperation *)v10 setDisksToUnmount:v16];
        }
      }
    }
  }

  return v10;
}

+ (BOOL)unmountWithDisk:(id)disk options:(id)options error:(id *)error
{
  diskCopy = disk;
  optionsCopy = options;
  v9 = [[SKUnmountOperation alloc] initWithDisk:diskCopy options:optionsCopy withCompletionBlock:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  disksToUnmount = [(SKUnmountOperation *)v9 disksToUnmount];
  v11 = [disksToUnmount countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(disksToUnmount);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v17 = [(SKUnmountOperation *)v9 _unmountWithDisk:v16 error:&v20];
        v18 = v20;
        v14 &= v17;
        if ((v17 & 1) == 0 && error)
        {
          if (*error)
          {
            v14 = 0;
          }

          else
          {
            v18 = v18;
            v14 = 0;
            *error = v18;
          }
        }
      }

      v12 = [disksToUnmount countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_unmountWithDADisk:(id)disk
{
  diskCopy = disk;
  options = [(SKBaseDiskArbOperation *)self options];
  v6 = [options objectForKeyedSubscript:kSKDiskUnmountOptionForce];
  if (sub_100010328(v6))
  {
    v7 = 1;
  }

  else
  {
    options2 = [(SKBaseDiskArbOperation *)self options];
    v9 = [options2 objectForKeyedSubscript:kSKAPFSDiskUnmountForce];
    v7 = sub_100010328(v9);
  }

  v10 = sub_10000BFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = diskCopy;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling DADiskUnmount for %@, force=%d", &v14, 0x12u);
  }

  if (v7)
  {
    v11 = 0x80000;
  }

  else
  {
    v11 = 0;
  }

  DADiskUnmount(diskCopy, v11, sub_100017B5C, self);
  completeDiskArbOp = [(SKBaseDiskArbOperation *)self completeDiskArbOp];

  return completeDiskArbOp;
}

- (BOOL)unmountSnapshotsWithDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  v33 = 0;
  v6 = getmntinfo_r_np(&v33, 2);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    errorCopy = error;
    v29 = diskCopy;
    diskIdentifier = [diskCopy diskIdentifier];
    v9 = [NSString stringWithFormat:@"@/dev/%@", diskIdentifier];

    if (!v7)
    {
LABEL_15:
      free(v33);
      v10 = 1;
      diskCopy = v29;
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v7;
    v12 = -v7;
    v13 = 1112;
    v14 = 1;
    v30 = v9;
    v32 = v12;
    while (1)
    {
      v15 = [NSString stringWithUTF8String:v33 + v13];
      if ([v15 hasSuffix:v9])
      {
        v16 = [NSURL fileURLWithFileSystemRepresentation:v33 + v13 - 1024 isDirectory:1 relativeToURL:0];
        if (v16)
        {
          v17 = +[SKDaemonManager sharedManager];
          v18 = DADiskCreateFromVolumePath(kCFAllocatorDefault, [v17 diskArbSession], v16);

          if (v18)
          {
            path = [(__CFURL *)v16 path];
            v20 = [NSString stringWithFormat:@"Unmount of snapshot %@ from %@", v15, path];
            [(SKBaseDiskArbOperation *)self setCurrentOperationName:v20];

            v9 = v30;
            if (![(SKUnmountOperation *)self _unmountWithDADisk:v18])
            {
              v23 = v18;
              v24 = sub_10000BFD0();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                path2 = [(__CFURL *)v16 path];
                *buf = 136315650;
                v35 = "[SKUnmountOperation unmountSnapshotsWithDisk:error:]";
                v36 = 2112;
                v37 = v15;
                v38 = 2112;
                v39 = path2;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: Failed to unmount snapshot %@ from %@", buf, 0x20u);
              }

              diskCopy = v29;
              if (errorCopy)
              {
                *errorCopy = [(SKBaseDiskArbOperation *)self newDAError];
              }

              free(v33);

LABEL_24:
              goto LABEL_25;
            }
          }

          else
          {
            v21 = sub_10000BFD0();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              path3 = [(__CFURL *)v16 path];
              *buf = 136315394;
              v35 = "[SKUnmountOperation unmountSnapshotsWithDisk:error:]";
              v36 = 2112;
              v37 = path3;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to create DADisk from %@", buf, 0x16u);

              v9 = v30;
            }
          }

          v12 = v32;
        }
      }

      v10 = v14 >= v11;
      v13 += 2168;
      ++v14;
      if (v12 + v14 == 1)
      {
        goto LABEL_15;
      }
    }
  }

  if (error)
  {
    v40 = NSDebugDescriptionErrorKey;
    v41 = @"getmntinfo failed";
    v9 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [SKError errorWithCode:102 userInfo:v9];
    *error = v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (BOOL)_unmountWithDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  mountPoint = [diskCopy mountPoint];
  type = [diskCopy type];
  if ([type isEqualToString:kSKDiskTypeAPFSLV])
  {
    options = [(SKBaseDiskArbOperation *)self options];
    v10 = [options objectForKeyedSubscript:kSKDiskMountOptionRecursive];
    v11 = sub_100010328(v10);

    if (v11 && ![(SKUnmountOperation *)self unmountSnapshotsWithDisk:diskCopy error:error])
    {
      goto LABEL_17;
    }

    if (!mountPoint)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!mountPoint)
    {
LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }
  }

  [objc_opt_class() storeMountState:diskCopy];
  type2 = [diskCopy type];
  if (-[NSObject isEqualToString:](type2, "isEqualToString:", kSKDiskTypeAPFSLV) && [diskCopy isEncrypted] && !objc_msgSend(diskCopy, "defaultEffaceable"))
  {
    options2 = [(SKBaseDiskArbOperation *)self options];
    v22 = [options2 objectForKeyedSubscript:kSKAPFSDiskUnmountDoNotLock];
    v23 = sub_100010328(v22);

    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = 1;
    if (!fsctl([mountPoint fileSystemRepresentation], 0x80014A22uLL, &v24, 0))
    {
      goto LABEL_11;
    }

    type2 = sub_10000BFD0();
    if (os_log_type_enabled(type2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SKUnmountOperation _unmountWithDisk:error:]";
      _os_log_impl(&_mh_execute_header, type2, OS_LOG_TYPE_ERROR, "%s: Failed to stash crypto key for APFS LV, remount may fail.", buf, 0xCu);
    }
  }

LABEL_11:
  diskCopy = [NSString stringWithFormat:@"Unmount of %@", diskCopy];
  [(SKBaseDiskArbOperation *)self setCurrentOperationName:diskCopy];

  daDisk = [diskCopy daDisk];
  v15 = [(SKUnmountOperation *)self _unmountWithDADisk:daDisk];

  if (v15)
  {
    [(SKBaseDiskArbOperation *)self removeWithMountPoint:mountPoint];
    goto LABEL_19;
  }

  daDisk2 = [diskCopy daDisk];
  v17 = DADiskCopyDescription(daDisk2);

  v18 = [(__CFDictionary *)v17 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];

  if (!v18)
  {

    goto LABEL_19;
  }

  if (error)
  {
    *error = [(SKBaseDiskArbOperation *)self newDAError];
  }

LABEL_17:
  v19 = 0;
LABEL_20:

  return v19;
}

- (id)newPerformOperation
{
  v3 = dispatch_group_create();
  if (-[SKBaseDiskArbOperation recursive](self, "recursive") || (-[SKUnmountOperation disksToUnmount](self, "disksToUnmount"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v33 = 0u;
    disksToUnmount = [(SKUnmountOperation *)self disksToUnmount];
    v7 = [disksToUnmount countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v34;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(disksToUnmount);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v32 = 0;
          v13 = [(SKUnmountOperation *)self _unmountWithDisk:v12 error:&v32];
          v14 = v32;
          v15 = v14;
          if ((v13 & 1) == 0 && !v9)
          {
            v9 = v14;
          }
        }

        v8 = [disksToUnmount countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(SKUnmountOperation *)self disksToUnmount];
    v16 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          v20 = v3;
          if (*v29 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          v22 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000193CC;
          block[3] = &unk_100048BB0;
          block[4] = v21;
          v3 = v20;
          dispatch_group_async(v20, v22, block);
        }

        v17 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v17);
    }

    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v23 = v9;
    v24 = v23;
  }

  else
  {
    v24 = [SKError errorWithCode:119 userInfo:0];
    v23 = 0;
  }

  return v24;
}

- (id)description
{
  disksToUnmount = [(SKUnmountOperation *)self disksToUnmount];
  options = [(SKBaseDiskArbOperation *)self options];
  v5 = [NSString stringWithFormat:@"Unmount Operation for %@ with %@", disksToUnmount, options];

  return v5;
}

@end