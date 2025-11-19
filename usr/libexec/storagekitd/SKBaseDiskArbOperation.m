@interface SKBaseDiskArbOperation
+ (id)nilWithBlock:(id)a3 error:(id)a4;
+ (void)storeMountState:(id)a3;
- (BOOL)completeDiskArbOp;
- (BOOL)raidTraverse;
- (BOOL)recursive;
- (BOOL)run;
- (SKBaseDiskArbOperation)initWithTarget:(id)a3 options:(id)a4 callbackBlock:(id)a5;
- (id)diskWithFSRefresh:(id)a3;
- (id)disksForOperationWithTarget:(id)a3 ignoreGroup:(BOOL)a4;
- (id)newDAError;
- (id)newPerformOperation;
- (void)diskArbCallbackWithDissenter:(__DADissenter *)a3;
- (void)removeWithMountPoint:(id)a3;
@end

@implementation SKBaseDiskArbOperation

+ (id)nilWithBlock:(id)a3 error:(id)a4
{
  if (a3)
  {
    (*(a3 + 2))(a3, a4);
  }

  return 0;
}

+ (void)storeMountState:(id)a3
{
  v7 = a3;
  v3 = [v7 mountPoint];

  if (v3)
  {
    v4 = [SKMountState alloc];
    v5 = [v7 mountPoint];
    v6 = [(SKMountState *)v4 initWithMountPoint:v5];

    [v7 setPreviousMount:v6];
  }
}

- (SKBaseDiskArbOperation)initWithTarget:(id)a3 options:(id)a4 callbackBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = SKBaseDiskArbOperation;
  v11 = [(SKManagerOperation *)&v25 init];
  if (!v8 || ([v8 daDisk], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, v14 = objc_msgSend(v8, "isValid"), v13, !v14) || !v11)
  {
    v19 = +[SKBaseManager sharedManager];
    [v19 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_1000492C0];

    v20 = sub_10000BFD0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v27 = "[SKBaseDiskArbOperation initWithTarget:options:callbackBlock:]";
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s: Reached with invalid disk (%@) or init failed (%@)", buf, 0x20u);
    }

    v21 = objc_opt_class();
    v22 = [SKError errorWithCode:102 userInfo:0];
    goto LABEL_13;
  }

  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  objc_storeStrong(&v11->_options, v15);
  if ((sub_100010220(v11->_options) & 1) == 0)
  {
    v21 = objc_opt_class();
    v22 = [SKError nilWithPOSIXCode:22 debugDescription:@"Mount options must be a dictionary" error:0];
LABEL_13:
    v23 = v22;
    v18 = [v21 nilWithBlock:v10 error:v22];

    goto LABEL_14;
  }

  v16 = [v10 copy];
  callbackBlock = v11->_callbackBlock;
  v11->_callbackBlock = v16;

  v18 = v11;
LABEL_14:

  return v18;
}

- (BOOL)recursive
{
  v2 = [(SKBaseDiskArbOperation *)self options];
  v3 = [v2 objectForKeyedSubscript:kSKDiskMountOptionRecursive];

  if (sub_100010164(v3))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)raidTraverse
{
  v2 = [(SKBaseDiskArbOperation *)self options];
  v3 = [v2 objectForKeyedSubscript:kSKDiskMountOptionRecursiveRAID];

  LOBYTE(v2) = sub_100010328(v3);
  return v2;
}

- (id)diskWithFSRefresh:(id)a3
{
  v3 = a3;
  v4 = [v3 filesystem];
  if (v4)
  {

LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  if (([v3 isIOMediaDisk] & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v3 diskIdentifier];
  v6 = [NSString stringWithFormat:@"/dev/%@", v5];
  v7 = [SKMediaKit getMediaKitFilesystemType:v6];

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)disksForOperationWithTarget:(id)a3 ignoreGroup:(BOOL)a4
{
  v5 = a3;
  v65 = +[NSMutableSet set];
  if ([(SKBaseDiskArbOperation *)self recursive])
  {
    v6 = [NSMutableArray arrayWithObject:v5];
    if ([v5 isWholeDisk])
    {
      v7 = [v5 children];
      if (v7)
      {
        [v6 addObjectsFromArray:v7];
      }
    }

    v59 = v5;
    [(SKBaseDiskArbOperation *)self raidTraverse];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v75;
      v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
      v60 = *v75;
      do
      {
        v12 = 0;
        v62 = v9;
        do
        {
          if (*v75 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v74 + 1) + 8 * v12);
          v14 = v11[205];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 container];
            if (!v15)
            {
              goto LABEL_58;
            }

            v16 = v15;

            v13 = v16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v12;
            v18 = v13;
            v19 = v13;
            v20 = [v19 volumes];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v21 = [v20 countByEnumeratingWithState:&v70 objects:v79 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v71;
              do
              {
                for (i = 0; i != v22; i = i + 1)
                {
                  if (*v71 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v70 + 1) + 8 * i);
                  if ([(SKBaseDiskArbOperation *)self toOperateWithDisk:v25])
                  {
                    [v65 addObject:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v70 objects:v79 count:16];
              }

              while (v22);
            }

            v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
            v9 = v62;
            v12 = v17;
            v13 = v18;
            goto LABEL_57;
          }

          v26 = [v13 type];
          if ([v26 isEqualToString:kSKDiskTypeEFI])
          {
            v27 = v12;
            v28 = v13;
            v29 = [v13 diskIdentifier];
            v30 = [v59 diskIdentifier];
            if (![v29 isEqualToString:v30])
            {
              v50 = [(SKBaseDiskArbOperation *)self options];
              v51 = [v50 objectForKeyedSubscript:kSKDiskMountOptionWithoutEFI];
              v52 = sub_100010328(v51);

              v12 = v27;
              v13 = v28;
              v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
              v9 = v62;
              if (v52)
              {
                v10 = v60;
                goto LABEL_58;
              }

              goto LABEL_29;
            }

            v12 = v27;
            v13 = v28;
            v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
            v9 = v62;
          }

LABEL_29:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v13 apfsVolumeGroupUUID], v31 = objc_claimAutoreleasedReturnValue(), v31, !v31) || a4)
          {
            v19 = [(SKBaseDiskArbOperation *)self diskWithFSRefresh:v13];
            if (v19)
            {
              [v65 addObject:v19];
            }

            v10 = v60;
            goto LABEL_57;
          }

          v58 = v12;
          v19 = [v13 apfsVolumeGroupUUID];
          v57 = v13;
          v32 = [v13 container];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v33 = [v32 volumes];
          v34 = [v33 countByEnumeratingWithState:&v66 objects:v78 count:16];
          if (!v34)
          {

            v36 = 0;
            v49 = 0;
            v10 = v60;
            goto LABEL_55;
          }

          v35 = v34;
          v63 = 0;
          v64 = v33;
          v55 = v32;
          v36 = 0;
          v37 = *v67;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v67 != v37)
              {
                objc_enumerationMutation(v64);
              }

              v39 = *(*(&v66 + 1) + 8 * j);
              v40 = [v39 apfsVolumeGroupUUID];
              v41 = [v40 isEqualToString:v19];

              if (v41)
              {
                v42 = [v39 getAPFSVolumeRole];
                v43 = [v42 isEqualToString:SKAPFSVolumeRoleData];

                if (v43)
                {
                  v44 = v63;
                  v63 = v39;
                  v45 = v36;
                }

                else
                {
                  v46 = [v39 getAPFSVolumeRole];
                  v47 = [v46 isEqualToString:SKAPFSVolumeRoleSystem];

                  v44 = v36;
                  v45 = v39;
                  if (!v47)
                  {
                    continue;
                  }
                }

                v48 = v39;

                v36 = v45;
              }
            }

            v35 = [v64 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v35);

          v49 = v63;
          if (v63)
          {
            v10 = v60;
            v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
            v9 = v62;
            v13 = v57;
            v12 = v58;
            if (v36)
            {
              [v65 addObject:v63];
              [v65 addObject:v36];
              v32 = v55;
              goto LABEL_56;
            }
          }

          else
          {
            v10 = v60;
            v11 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
            v9 = v62;
            v13 = v57;
            v12 = v58;
          }

          v32 = v55;
LABEL_55:
          [v65 addObject:v13];
LABEL_56:

LABEL_57:
LABEL_58:

          v12 = v12 + 1;
        }

        while (v12 != v9);
        v9 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v9);
    }

    v5 = v59;
  }

  else
  {
    v53 = [(SKBaseDiskArbOperation *)self diskWithFSRefresh:v5];
    if (v53)
    {
      [v65 addObject:v53];
    }
  }

  return v65;
}

- (void)diskArbCallbackWithDissenter:(__DADissenter *)a3
{
  if (a3)
  {
    [(SKBaseDiskArbOperation *)self setDAstatus:DADissenterGetStatus(a3)];
    [(SKBaseDiskArbOperation *)self setDissenterPID:DADissenterGetProcessID()];
    [(SKBaseDiskArbOperation *)self setDAstatusString:DADissenterGetStatusString(a3)];
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(SKBaseDiskArbOperation *)self currentOperationName];
      v7 = [(SKBaseDiskArbOperation *)self DAstatus];
      v8 = [(SKBaseDiskArbOperation *)self dissenterPID];
      v9 = [(SKBaseDiskArbOperation *)self DAstatusString];
      if (v9)
      {
        v10 = [(SKBaseDiskArbOperation *)self DAstatusString];
      }

      else
      {
        v10 = @"(no status details)";
      }

      v12 = 136316162;
      v13 = "[SKBaseDiskArbOperation diskArbCallbackWithDissenter:]";
      v14 = 2112;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: %@: dissented with status 0x%x by pid %d: %@", &v12, 0x2Cu);
      if (v9)
      {
      }

      goto LABEL_11;
    }
  }

  else
  {
    [(SKBaseDiskArbOperation *)self setDAstatus:?];
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SKBaseDiskArbOperation *)self currentOperationName];
      v12 = 136315394;
      v13 = "[SKBaseDiskArbOperation diskArbCallbackWithDissenter:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: success", &v12, 0x16u);
LABEL_11:
    }
  }

  [(SKBaseDiskArbOperation *)self setDiskArbOpDone:1];
  v11 = +[SKDaemonManager sharedManager];
  [v11 dispatchToWorkThread:&stru_1000492E0];
}

- (BOOL)completeDiskArbOp
{
  v3 = [(SKBaseDiskArbOperation *)self currentOperationName];

  if (!v3)
  {
    v4 = [(SKBaseDiskArbOperation *)self description];
    [(SKBaseDiskArbOperation *)self setCurrentOperationName:v4];
  }

  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SKBaseDiskArbOperation *)self currentOperationName];
    v11 = 136315394;
    v12 = "[SKBaseDiskArbOperation completeDiskArbOp]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: running", &v11, 0x16u);
  }

  v7 = +[NSRunLoop currentRunLoop];
  if (![(SKBaseDiskArbOperation *)self diskArbOpDone])
  {
    do
    {
      v8 = [NSDate dateWithTimeIntervalSinceNow:1.0];
      [v7 runMode:NSDefaultRunLoopMode beforeDate:v8];
    }

    while (![(SKBaseDiskArbOperation *)self diskArbOpDone]);
  }

  [(SKBaseDiskArbOperation *)self setDiskArbOpDone:0];
  v9 = [(SKBaseDiskArbOperation *)self DAstatus]== 0;

  return v9;
}

- (id)newDAError
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SKBaseDiskArbOperation *)self DAstatusString];

  if (v4)
  {
    v5 = [(SKBaseDiskArbOperation *)self DAstatusString];
    [v3 setObject:v5 forKeyedSubscript:kSKErrorDiskArbErrorStringKey];

    v6 = [(SKBaseDiskArbOperation *)self DAstatus];
    v7 = [(SKBaseDiskArbOperation *)self DAstatusString];
    v8 = [NSString stringWithFormat:@"DA error code 0x%x: %@", v6, v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"DA error code 0x%x", [(SKBaseDiskArbOperation *)self DAstatus]];
  }

  v9 = [(SKBaseDiskArbOperation *)self dissenterPID];
  v10 = [(SKBaseDiskArbOperation *)self description];
  v11 = v10;
  if (v9)
  {
    v12 = [NSString stringWithFormat:@"%@ dissented by process with PID %d, %@", v10, [(SKBaseDiskArbOperation *)self dissenterPID], v8];
    [v3 setObject:v12 forKeyedSubscript:NSDebugDescriptionErrorKey];

    v11 = [NSNumber numberWithInt:[(SKBaseDiskArbOperation *)self dissenterPID]];
    [v3 setObject:v11 forKeyedSubscript:kSKErrorDissenterPIDKey];
  }

  else
  {
    v13 = [NSString stringWithFormat:@"%@ failed, %@", v10, v8];
    [v3 setObject:v13 forKeyedSubscript:NSDebugDescriptionErrorKey];
  }

  if ([(SKBaseDiskArbOperation *)self DAstatus]< 49152 || [(SKBaseDiskArbOperation *)self DAstatus]> 49259)
  {
    v14 = [SKError errorWithCode:[(SKBaseDiskArbOperation *)self defaultErrorCode] userInfo:v3];
  }

  else
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:([(SKBaseDiskArbOperation *)self DAstatus]& 0xFFFF3FFF) userInfo:v3];
  }

  v15 = v14;

  return v15;
}

- (id)newPerformOperation
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"No implementation provided for generic base class." userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)run
{
  v3 = [(SKBaseDiskArbOperation *)self newPerformOperation];
  v4 = [(SKBaseDiskArbOperation *)self callbackBlock];

  if (v4)
  {
    v5 = [(SKBaseDiskArbOperation *)self callbackBlock];
    (v5)[2](v5, v3);
  }

  [(SKManagerOperation *)self finished];

  return v3 == 0;
}

- (void)removeWithMountPoint:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"/private/var/mnt"])
  {
    v4 = +[NSFileManager defaultManager];
    v13 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v13];
    v6 = v13;

    v7 = sub_10000BFD0();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v3;
        v9 = "Removed %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v6;
      v9 = "Failed to remove %@: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_7;
    }
  }
}

@end