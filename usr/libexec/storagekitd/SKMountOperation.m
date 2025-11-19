@interface SKMountOperation
+ (BOOL)mountWithDisk:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)resolveWithPath:(id)a3 error:(id *)a4;
- (BOOL)force;
- (BOOL)toOperateWithDisk:(id)a3;
- (BOOL)validateMountOptionsWithDisk:(id)a3 error:(id *)a4;
- (BOOL)validateMountPointWithConnection:(id)a3 error:(id *)a4;
- (SKMountOperation)initWithDisk:(id)a3 options:(id)a4 connection:(id)a5 completionBlock:(id)a6;
- (id)copyMountURLWithDisk:(id)a3;
- (id)description;
- (id)filterEFIWithDisks:(id)a3;
- (id)newPerformOperation;
@end

@implementation SKMountOperation

+ (id)resolveWithPath:(id)a3 error:(id *)a4
{
  v5 = [a3 UTF8String];
  if (v5)
  {
    if (realpath_DARWIN_EXTSN(v5, v10))
    {
      v6 = [NSString stringWithUTF8String:v10];
      goto LABEL_7;
    }

    v8 = *__error();
    v7 = @"Cannot resolve mount point";
  }

  else
  {
    v7 = @"Invalid mount point string";
    v8 = 22;
  }

  v6 = [SKError nilWithPOSIXCode:v8 debugDescription:v7 error:a4];
LABEL_7:

  return v6;
}

- (SKMountOperation)initWithDisk:(id)a3 options:(id)a4 connection:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v48.receiver = self;
  v48.super_class = SKMountOperation;
  v13 = [(SKBaseDiskArbOperation *)&v48 initWithTarget:v10 options:a4 callbackBlock:v12];
  if (v13)
  {
    v14 = +[NSMutableArray array];
    mountArgs = v13->_mountArgs;
    v13->_mountArgs = v14;

    if (v11)
    {
      v16 = [v11 uid];
    }

    else
    {
      v16 = -1;
    }

    v13->_clientUID = v16;
    v18 = [(SKBaseDiskArbOperation *)v13 options];
    v19 = [v18 objectForKeyedSubscript:kSKAPFSDiskMountIgnoreGroup];
    v20 = [(SKBaseDiskArbOperation *)v13 disksForOperationWithTarget:v10 ignoreGroup:sub_100010328(v19)];

    v21 = [(SKMountOperation *)v13 filterEFIWithDisks:v20];
    disksToMount = v13->_disksToMount;
    v13->_disksToMount = v21;

    if ([(NSSet *)v13->_disksToMount count])
    {
      if ([(NSSet *)v13->_disksToMount count]== 1)
      {
        v23 = [(NSSet *)v13->_disksToMount anyObject];
        v24 = [v23 mountPoint];

        if (v24)
        {
          v25 = sub_10000BFD0();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v50 = "[SKMountOperation initWithDisk:options:connection:completionBlock:]";
            v51 = 2112;
            v52 = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: %@ is already mounted, returning success", buf, 0x16u);
          }

          v17 = [objc_opt_class() nilWithBlock:v12 error:0];

          goto LABEL_37;
        }
      }

      v47 = 0;
      v29 = [(SKMountOperation *)v13 validateMountOptionsWithDisk:v10 error:&v47];
      v27 = v47;
      if (v29)
      {
        v30 = [(SKBaseDiskArbOperation *)v13 options];
        v31 = [v30 objectForKeyedSubscript:kSKDiskMountOptionMountPoint];

        if (!v31)
        {
          goto LABEL_32;
        }

        if (!sub_1000101BC(v31))
        {
          v34 = objc_opt_class();
          v35 = @"Mount point must be a string";
          goto LABEL_27;
        }

        v32 = [(NSSet *)v13->_disksToMount count];
        v33 = objc_opt_class();
        v34 = v33;
        if (v32 >= 2)
        {
          v35 = @"Multiple disks to mount, cannot specify mount point";
LABEL_27:
          v37 = [SKError errorWithPOSIXCode:22 debugDescription:v35 error:0];
LABEL_28:
          v38 = v37;
          v17 = [v34 nilWithBlock:v12 error:v37];

LABEL_35:
          goto LABEL_36;
        }

        v46 = v27;
        v39 = [v33 resolveWithPath:v31 error:&v46];
        v40 = v46;

        mountPoint = v13->_mountPoint;
        v13->_mountPoint = v39;

        if (!v13->_mountPoint)
        {
          v17 = [objc_opt_class() nilWithBlock:v12 error:v40];
          v27 = v40;
          goto LABEL_35;
        }

        v45 = v40;
        v42 = [(SKMountOperation *)v13 validateMountPointWithConnection:v11 error:&v45];
        v27 = v45;

        if ((v42 & 1) == 0)
        {
          v43 = [objc_opt_class() nilWithBlock:v12 error:v27];
        }

        else
        {
LABEL_32:
          if (-[SKMountOperation authenticateOnInit](v13, "authenticateOnInit") && ([v11 authorizeRequestForRoot] & 1) == 0)
          {
            v34 = objc_opt_class();
            v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
            goto LABEL_28;
          }

          v43 = v13;
        }

        v17 = v43;
        goto LABEL_35;
      }

      v28 = objc_opt_class();
    }

    else
    {
      if ([(SKBaseDiskArbOperation *)v13 recursive]&& ![(SKMountOperation *)v13 force])
      {
        v36 = sub_10000BFD0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v50 = "[SKMountOperation initWithDisk:options:connection:completionBlock:]";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s: Nothing to mount on recursive mount, returning success", buf, 0xCu);
        }

        v17 = [objc_opt_class() nilWithBlock:v12 error:0];
        goto LABEL_37;
      }

      v26 = objc_opt_class();
      v27 = [SKError errorWithCode:124 userInfo:0];
      v28 = v26;
    }

    v17 = [v28 nilWithBlock:v12 error:v27];
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  v17 = 0;
LABEL_38:

  return v17;
}

- (id)filterEFIWithDisks:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 136315906;
    v23 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [v12 type];
        v14 = [v13 isEqualToString:kSKDiskTypeEFI];

        if (v14 && -[SKMountOperation clientUID](self, "clientUID") && (v15 = -[SKMountOperation clientUID](self, "clientUID"), v15 != [v12 ownerUID]))
        {
          v16 = sub_10000BFD0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(SKMountOperation *)self clientUID];
            [v12 diskIdentifier];
            v19 = v18 = v6;
            v20 = [v12 ownerUID];
            *buf = v23;
            v29 = "[SKMountOperation filterEFIWithDisks:]";
            v30 = 1024;
            v31 = v17;
            v32 = 2114;
            v33 = v19;
            v34 = 1024;
            v35 = v20;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client uid %d, skipping EFI partition %{public}@ owned by uid %d", buf, 0x22u);

            v6 = v18;
          }
        }

        else
        {
          [v5 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v21 = [v6 countByEnumeratingWithState:&v24 objects:v36 count:16];
      v9 = v21;
    }

    while (v21);
  }

  return v5;
}

- (BOOL)toOperateWithDisk:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 role];
    if ([v4 isEqualToString:kSKDiskRoleVirtualMemory])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [v3 role];
      if ([v6 isEqualToString:kSKDiskRoleBooter])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v7 = [v3 role];
        if ([v7 isEqualToString:kSKDiskRoleRecovery])
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          v5 = [v3 isLocked] ^ 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (BOOL)mountWithDisk:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[SKMountOperation alloc] initWithDisk:v8 options:v7 connection:0 completionBlock:0];

  v10 = [(SKMountOperation *)v9 newPerformOperation];
  if (a5)
  {
    v10 = v10;
    *a5 = v10;
  }

  v11 = v10 == 0;

  return v11;
}

- (id)copyMountURLWithDisk:(id)a3
{
  v4 = a3;
  v5 = [(SKMountOperation *)self mountPoint];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 isLiveFSAPFSDisk])
  {
    goto LABEL_46;
  }

  v6 = [v4 filesystem];
  if (v6)
  {
    v7 = [v4 filesystem];
    if ([v7 isExtension])
    {
      v8 = [v4 filesystem];
      v9 = [v8 majorType];
      if ([v9 isEqualToString:@"apfs"])
      {
        if ([v4 isExternal])
        {
          v10 = [v4 filesystem];
          v11 = [v10 majorType];
          v12 = [v11 isEqualToString:@"apfs"];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v5 || (v12 & 1) != 0)
  {
LABEL_38:
    if (v5)
    {
      v33 = [NSURL fileURLWithPath:v5];
      goto LABEL_47;
    }

LABEL_46:
    v33 = 0;
    goto LABEL_47;
  }

  v13 = [v4 volumeName];
  v39 = v4;
  if (v13)
  {
    v14 = [v4 volumeName];
  }

  else
  {
    v14 = @"untitled";
  }

  v15 = v14;
  v5 = [NSString stringWithFormat:@"%@/%@", @"/private/var/mnt", v14];
  v16 = +[NSFileManager defaultManager];
  if ([v16 fileExistsAtPath:v5])
  {
    v17 = 2;
    while (v17 != 100)
    {
      v18 = sub_10000BFD0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Mountpoint %@ already exists, trying a different mountpoint", buf, 0xCu);
      }

      v19 = [NSString stringWithFormat:@"%@/%@_%d", @"/private/var/mnt", v15, v17];

      v17 = (v17 + 1);
      v5 = v19;
      if (([v16 fileExistsAtPath:v19] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v35 = +[SKBaseManager sharedManager];
    [v35 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_100048B88];

    v36 = sub_10000BFD0();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Failed to find a free mountpoint for %@", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v19 = v5;
LABEL_27:
  v20 = sub_10000BFD0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v4 diskIdentifier];
    *buf = 138412546;
    v45 = v21;
    v46 = 2112;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Mounting %@ to %@", buf, 0x16u);
  }

  v22 = [v4 diskIdentifier];
  v23 = [NSString stringWithFormat:@"/dev/%@", v22];

  v41 = 0;
  v24 = [v16 attributesOfItemAtPath:v23 error:&v41];
  v25 = v41;
  v26 = v15;
  if (v24)
  {
    v27 = [v24 objectForKeyedSubscript:NSFileOwnerAccountID];
    if (sub_100010164(v27) && [v27 unsignedLongValue])
    {
      v28 = sub_10000BFD0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v45 = v27;
        v46 = 2112;
        v47 = v19;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting owner %@ to mount point %@", buf, 0x16u);
      }

      v29 = v23;

      v42 = NSFileOwnerAccountID;
      v43 = v27;
      v30 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    }

    else
    {
      v29 = v23;
      v30 = 0;
    }

    v40 = v25;
    v31 = [v16 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:v30 error:&v40];
    v32 = v40;

    if (v31)
    {

      v5 = v19;
      v4 = v39;
      goto LABEL_38;
    }

    v38 = sub_10000BFD0();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v19;
      v46 = 2112;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed creating mount point %@: %@", buf, 0x16u);
    }

    v33 = 0;
    v5 = v19;
    v4 = v39;
  }

  else
  {
    v34 = sub_10000BFD0();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v23;
      v46 = 2112;
      v47 = v25;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed getting attributes for device path %@: %@", buf, 0x16u);
    }

    v33 = 0;
    v5 = v19;
  }

LABEL_47:

  return v33;
}

- (BOOL)validateMountOptionsWithDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SKBaseDiskArbOperation *)self options];
  v8 = [v7 objectForKeyedSubscript:kSKDiskMountOptionToolOptions];

  if (!v8)
  {
    goto LABEL_25;
  }

  if ((sub_100010278(v8) & 1) == 0)
  {
    v9 = @"Mount tool options must be an array";
    goto LABEL_6;
  }

  if ([v8 count] >= 0x40)
  {
    v9 = @"Too many mount options";
LABEL_6:
    v10 = [SKError failWithPOSIXCode:22 debugDescription:v9 error:a4];
    goto LABEL_26;
  }

  v11 = [NSMutableArray arrayWithArray:v8];
  [(SKMountOperation *)self setMountArgs:v11];

  v12 = [(SKMountOperation *)self mountArgs];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [(SKMountOperation *)self mountArgs];
      v16 = [v15 objectAtIndexedSubscript:v14];
      v17 = [v16 lowercaseString];
      v18 = [v17 hasPrefix:@"-o"];

      if (v18)
      {
        v19 = [(SKMountOperation *)self mountArgs];
        v20 = [v19 objectAtIndexedSubscript:v14];
        v21 = [v20 substringFromIndex:2];
        v22 = [(SKMountOperation *)self mountArgs];
        [v22 setObject:v21 atIndexedSubscript:v14];
      }

      ++v14;
      v23 = [(SKMountOperation *)self mountArgs];
      v24 = [v23 count];
    }

    while (v14 < v24);
  }

  if (!-[SKMountOperation clientUID](self, "clientUID") || (-[SKMountOperation mountArgs](self, "mountArgs"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 count], v25, !v26))
  {
LABEL_25:
    v10 = 1;
    goto LABEL_26;
  }

  v27 = 0;
  while (1)
  {
    v28 = [(SKMountOperation *)self mountArgs];
    v29 = [v28 objectAtIndexedSubscript:v27];
    v30 = [v29 lowercaseString];

    if ([v6 isTrusted])
    {
      if (sub_10000384C(v30, @"noowners"))
      {
        break;
      }
    }

    if ([v6 isTrusted] && (sub_10000384C(v30, @"noperm") & 1) != 0 || (objc_msgSend(v6, "isTrusted") & 1) == 0 && (sub_10000384C(v30, @"suid") & 1) != 0 || (objc_msgSend(v6, "isTrusted") & 1) == 0 && sub_10000384C(v30, @"dev"))
    {
      break;
    }

    ++v27;
    v31 = [(SKMountOperation *)self mountArgs];
    v32 = [v31 count];

    v10 = 1;
    if (v27 >= v32)
    {
      goto LABEL_26;
    }
  }

  v34 = sub_10000BFD0();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [(SKMountOperation *)self clientUID];
    v36 = [v6 diskIdentifier];
    v37 = 136315906;
    v38 = "[SKMountOperation validateMountOptionsWithDisk:error:]";
    v39 = 1024;
    v40 = v35;
    v41 = 2112;
    v42 = v36;
    v43 = 2112;
    v44 = v30;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s: Client %d asks to mount %@ with %@ option", &v37, 0x26u);
  }

  v10 = 1;
  [(SKMountOperation *)self setAuthenticateOnInit:1];

LABEL_26:
  return v10;
}

- (BOOL)validateMountPointWithConnection:(id)a3 error:(id *)a4
{
  v7 = [(SKMountOperation *)self mountPoint];
  if (!sub_1000101BC(v7))
  {

    goto LABEL_10;
  }

  v8 = [(SKMountOperation *)self mountPoint];
  v9 = [v8 fileSystemRepresentation];

  if (!v9)
  {
LABEL_10:
    v16 = sub_10000BFD0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SKMountOperation *)self mountPoint];
      v35.st_dev = 138412290;
      *&v35.st_mode = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid mount point %@", &v35, 0xCu);
    }

    v15 = 22;
    return [SKError failWithPOSIXCode:v15 error:a4];
  }

  if (!a3)
  {
    v21 = sub_10000BFD0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unknown audit token, denying use of mount point", &v35, 2u);
    }

    return [SKError failWithSKErrorCode:102 error:a4];
  }

  if (![(SKMountOperation *)self clientUID])
  {
    goto LABEL_20;
  }

  memset(&v35, 0, sizeof(v35));
  v10 = [(SKMountOperation *)self mountPoint];
  v11 = stat([v10 fileSystemRepresentation], &v35);

  if (v11)
  {
    v12 = *__error();
    v13 = sub_10000BFD0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SKMountOperation *)self mountPoint];
      v27 = 136315650;
      v28 = "[SKMountOperation validateMountPointWithConnection:error:]";
      v29 = 2112;
      v30 = v14;
      v31 = 1024;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Stat failed on %@, errno %d", &v27, 0x1Cu);
    }

    v15 = v12;
    return [SKError failWithPOSIXCode:v15 error:a4];
  }

  v22 = [(SKMountOperation *)self clientUID];
  if (v22 != v35.st_uid)
  {
    v25 = sub_10000BFD0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(SKMountOperation *)self mountPoint];
      v27 = 136315906;
      v28 = "[SKMountOperation validateMountPointWithConnection:error:]";
      v29 = 2112;
      v30 = v26;
      v31 = 1024;
      v32 = [(SKMountOperation *)self clientUID];
      v33 = 1024;
      st_uid = v35.st_uid;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: Client is not the owner of %@. clientUID = %d, path_info.st_uid = %d, asking for permission", &v27, 0x22u);
    }

    v19 = 1;
    [(SKMountOperation *)self setAuthenticateOnInit:1];
  }

  else
  {
LABEL_20:
    v23 = sub_10000BFD0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(SKMountOperation *)self mountPoint];
      v35.st_dev = 136315394;
      *&v35.st_mode = "[SKMountOperation validateMountPointWithConnection:error:]";
      WORD2(v35.st_ino) = 2112;
      *(&v35.st_ino + 6) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Client is allowed to mount to %@", &v35, 0x16u);
    }

    return 1;
  }

  return v19;
}

- (id)newPerformOperation
{
  memset(v99, 0, 512);
  v3 = [(SKMountOperation *)self mountArgs];
  v4 = [v3 count];

  group = dispatch_group_create();
  if (v4)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      v6 = [(SKMountOperation *)self mountArgs];
      v7 = [v6 objectAtIndexedSubscript:i];
      v99[i] = v7;
    }
  }

  v8 = [NSMutableArray alloc];
  v9 = [(SKMountOperation *)self disksToMount];
  v53 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(SKMountOperation *)self disksToMount];
  v10 = [obj countByEnumeratingWithState:&v62 objects:v98 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v63;
  v14 = v99;
  if (!v4)
  {
    v14 = 0;
  }

  arguments = v14;
  v52 = *v63;
  do
  {
    v15 = 0;
    v54 = v11;
    do
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v62 + 1) + 8 * v15);
      v17 = [v16 mountPoint];

      if (!v17)
      {
        v19 = [NSString stringWithFormat:@"Mount of %@", v16];
        [(SKBaseDiskArbOperation *)self setCurrentOperationName:v19];

        v20 = [(SKMountOperation *)self copyMountURLWithDisk:v16];
        v21 = [objc_opt_class() getMountState:v16];
        if (!v21)
        {
          goto LABEL_18;
        }

        v22 = [(SKBaseDiskArbOperation *)self options];
        v23 = [v22 objectForKeyedSubscript:kSKDiskMountOptionRestore];
        v24 = sub_100010328(v23);

        v13 = v52;
        if (v24)
        {
          v25 = [v21 mountPoint];
          v26 = [NSURL fileURLWithPath:v25];

          v27 = [v26 path];
          v28 = [v27 hasPrefix:@"/Volumes"];

          v49 = v12;
          if (v28)
          {
            v18 = 0;
          }

          else
          {
            v18 = v26;
          }

          v29 = [v21 mountFlags];
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = [v29 count];
          if (v30 >= 0x3F)
          {
            v31 = 63;
          }

          else
          {
            v31 = v30;
          }

          if (v30)
          {
            v32 = 0;
            do
            {
              v33 = [v29 objectAtIndexedSubscript:v32];
              v34 = buf;
              buf[v32] = v33;

              ++v32;
            }

            while (v31 != v32);
          }

          else
          {
            v34 = 0;
          }

          v35 = [v16 daDisk];
          DADiskMountWithArguments(v35, v18, 2u, sub_100017B5C, self, v34);

          v12 = v49;
          v13 = v52;
        }

        else
        {
LABEL_18:
          v26 = [v16 daDisk];
          DADiskMountWithArguments(v26, v20, 2u, sub_100017B5C, self, arguments);
          v18 = v20;
        }

        v11 = v54;
        if (![(SKBaseDiskArbOperation *)self completeDiskArbOp])
        {
          if (v12)
          {
            if (v18)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v12 = [(SKBaseDiskArbOperation *)self newDAError];
            if (v18)
            {
LABEL_32:
              v36 = [(__CFURL *)v18 path];
              [(SKBaseDiskArbOperation *)self removeWithMountPoint:v36];
            }
          }
        }

        [objc_opt_class() clearMountState:v16];
        [v53 addObject:v16];

        goto LABEL_34;
      }

      v18 = sub_10000BFD0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "[SKMountOperation newPerformOperation]";
        WORD2(buf[1]) = 2112;
        *(&buf[1] + 6) = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@ is already mounted, skipping", buf, 0x16u);
      }

LABEL_34:

      v15 = v15 + 1;
    }

    while (v15 != v11);
    v37 = [obj countByEnumeratingWithState:&v62 objects:v98 count:16];
    v11 = v37;
  }

  while (v37);
LABEL_41:
  v50 = v12;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v38 = v53;
  v39 = [v38 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v59;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v58 + 1) + 8 * j);
        v44 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000439C;
        block[3] = &unk_100048BB0;
        block[4] = v43;
        dispatch_group_async(group, v44, block);
      }

      v40 = [v38 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v40);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v45 = [(SKBaseDiskArbOperation *)self recursive];
  v46 = v50;
  if (v45)
  {
    if ([v38 count])
    {
      v46 = 0;
    }

    else
    {
      v46 = v50;
    }
  }

  v47 = v46;

  return v47;
}

- (BOOL)force
{
  v2 = [(SKBaseDiskArbOperation *)self options];
  v3 = [v2 objectForKeyedSubscript:kSKDiskMountOptionForce];
  v4 = sub_100010328(v3);

  return v4;
}

- (id)description
{
  v3 = [(SKMountOperation *)self disksToMount];
  v4 = [(SKBaseDiskArbOperation *)self options];
  v5 = [NSString stringWithFormat:@"Mount Operation for %@ with %@", v3, v4];

  return v5;
}

@end