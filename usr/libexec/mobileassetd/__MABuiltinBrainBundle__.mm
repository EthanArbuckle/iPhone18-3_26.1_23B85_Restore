@interface __MABuiltinBrainBundle__
+ (BOOL)destageCurrent:(id *)current;
+ (BOOL)destageProposed:(id *)proposed;
+ (BOOL)stageProposed:(id)proposed error:(id *)error;
+ (void)garbageCollect;
- (BOOL)graft:(id *)graft;
- (BOOL)hasValidCurrentBootOnlyTicket;
- (BOOL)isGrafted;
- (BOOL)isGraftedPath:(id)path;
- (BOOL)isPersonalized;
- (BOOL)stageCurrent:(id *)current;
- (BOOL)ungraft:(id *)ungraft;
- (NSDictionary)brainInfo;
- (NSString)brainPath;
- (NSString)currentBootOnlyTicketPath;
- (NSString)ticketPath;
- (__MABuiltinBrainBundle__)initWithPath:(id)path;
- (unsigned)graftdmgType;
@end

@implementation __MABuiltinBrainBundle__

+ (BOOL)destageCurrent:(id *)current
{
  v4 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"]);
  v5 = objc_claimAutoreleasedReturnValue(+[__MABuiltinBrainBundle__ currentTargetPath]);

  if (v5)
  {
    v6 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
    v7 = [v6 removeItemAtPath:v4 error:current];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)destageProposed:(id *)proposed
{
  v4 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"]);
  v5 = objc_claimAutoreleasedReturnValue(+[__MABuiltinBrainBundle__ proposedTargetPath]);

  if (v5)
  {
    v6 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
    v7 = [v6 removeItemAtPath:v4 error:proposed];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)stageProposed:(id)proposed error:(id *)error
{
  proposedCopy = proposed;
  v5 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"]);
  v6 = objc_claimAutoreleasedReturnValue([proposedCopy lastPathComponent]);
  v7 = sub_1000010A4(v6, v5);

  if ((v7 & 1) == 0)
  {
    v8 = sub_100000D90(@"Brain");
    v9 = objc_claimAutoreleasedReturnValue(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_claimAutoreleasedReturnValue([proposedCopy lastPathComponent]);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MAB] Failed to write stagingName final path component(%@) to proposed path(%@)", &v12, 0x16u);
    }
  }

  return v7;
}

+ (void)garbageCollect
{
  v2 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  if ([v2 fileExistsAtPath:@"/private/var/MobileAsset/MobileAssetBrain"])
  {
    v24 = 0;
    v3 = [v2 removeItemAtPath:@"/private/var/MobileAsset/MobileAssetBrain" error:&v24];
    v4 = v24;
    v5 = sub_100000D90(@"Brain");
    v6 = objc_claimAutoreleasedReturnValue(v5);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "[MAB] Successfully removed old MobileAssetBrain installation directory";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v4;
      v8 = "[MAB] Error removing old MobileAssetBrain installation directory: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_7;
    }
  }

  v12 = objc_claimAutoreleasedReturnValue([NSSet setWithArray:&off_10000CE90]);
  v13 = [v12 mutableCopy];

  v14 = objc_claimAutoreleasedReturnValue(+[__MABuiltinBrainBundle__ currentTargetPath]);
  v15 = objc_claimAutoreleasedReturnValue([v14 lastPathComponent]);

  if (v15)
  {
    [v13 addObject:v15];
  }

  v16 = sub_100000D90(@"Brain");
  v17 = objc_claimAutoreleasedReturnValue(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"nil";
    if (v15)
    {
      v18 = v15;
    }

    *buf = 138412290;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MAB] Performing MABrain garbage collection (current=%@)...", buf, 0xCu);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100002684;
  v21[3] = &unk_10000C3F0;
  v22 = v13;
  v23 = v2;
  v19 = v2;
  v20 = v13;
  sub_1000016C8(@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain", 0, v21);
}

- (__MABuiltinBrainBundle__)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = __MABuiltinBrainBundle__;
  v6 = [(__MABuiltinBrainBundle__ *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, path);
  }

  return v7;
}

- (BOOL)isGrafted
{
  selfCopy = self;
  v3 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self graftPath]);
  LOBYTE(selfCopy) = [(__MABuiltinBrainBundle__ *)selfCopy isGraftedPath:v3];

  return selfCopy;
}

- (BOOL)isGraftedPath:(id)path
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = fsctl([path fileSystemRepresentation], 0xC0104A66uLL, v6, 1u);
  return BYTE4(v6[0]) && v3 == 0;
}

- (BOOL)stageCurrent:(id *)current
{
  v4 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"]);
  v5 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self bundleId]);
  v6 = sub_1000010A4(v5, v4);

  if ((v6 & 1) == 0)
  {
    v7 = sub_100000D90(@"Brain");
    v8 = objc_claimAutoreleasedReturnValue(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self bundleId]);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[MAB] Failed to mark bundle(%@) as current brain.", &v11, 0xCu);
    }
  }

  return v6;
}

- (BOOL)graft:(id *)graft
{
  v5 = objc_claimAutoreleasedReturnValue(+[NSMutableDictionary dictionary]);
  v6 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self graftPath]);
  v7 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self cryptexPath]);
  v64 = 0;
  memset(&v63, 0, sizeof(v63));
  v62[0] = 0;
  v62[1] = 0;
  v109 = 0u;
  memset(v110, 0, sizeof(v110));
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v79 = xmmword_100007970;
  v80 = -1;
  v77[0] = NSFileOwnerAccountID;
  v77[1] = NSFileGroupOwnerAccountID;
  v78[0] = &off_10000CE38;
  v78[1] = &off_10000CE38;
  v77[2] = NSFilePosixPermissions;
  v78[2] = &off_10000CE50;
  v8 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3]);
  v9 = v8;
  if (!v6)
  {
    v58 = v8;
    v75 = NSDebugDescriptionErrorKey;
    v12 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"graftPath is nil"]);
    v76 = v12;
    v13 = &v76;
    v14 = &v75;
LABEL_7:
    v15 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1]);
    v16 = 100;
    v17 = v15;
LABEL_8:
    v10 = objc_claimAutoreleasedReturnValue([NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v16 userInfo:v17]);

    v11 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    v58 = v8;
    v73 = NSDebugDescriptionErrorKey;
    v12 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"cryptexPath is nil"]);
    v74 = v12;
    v13 = &v74;
    v14 = &v73;
    goto LABEL_7;
  }

  if ([(__MABuiltinBrainBundle__ *)self isGraftedPath:v6])
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_26;
  }

  graftCopy = graft;
  v19 = v5;
  v20 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v21 = [v20 fileExistsAtPath:v6 isDirectory:&v64];

  v58 = v9;
  if ((v21 & 1) == 0)
  {
    v22 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
    v61 = 0;
    v23 = [v22 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v9 error:&v61];
    v10 = v61;

    if (v23)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v64)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v31 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v60 = 0;
  v32 = [v31 removeItemAtPath:v6 error:&v60];
  v10 = v60;

  if (!v32)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v33 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v59 = v10;
  v34 = [v33 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v58 error:&v59];
  v35 = v59;

  if (v34)
  {
    v10 = v35;
LABEL_16:
    v5 = v19;
    graft = graftCopy;
    if (lstat([v6 fileSystemRepresentation], &v63))
    {
      v24 = sub_100000D90(@"Brain");
      v25 = objc_claimAutoreleasedReturnValue(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        fileSystemRepresentation = [v6 fileSystemRepresentation];
        *buf = 136315138;
        v68 = fileSystemRepresentation;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[MAB] Could not lstat %s", buf, 0xCu);
      }

      v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v15 = objc_claimAutoreleasedReturnValue(v27);

      v71[0] = NSDebugDescriptionErrorKey;
      v71[1] = NSUnderlyingErrorKey;
      v72[0] = @"lstat failed";
      v72[1] = v15;
      v71[2] = @"graftPath";
      v72[2] = v6;
      v28 = v72;
      v29 = v71;
      v30 = 3;
LABEL_51:
      v12 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:v28 forKeys:v29 count:v30]);
      v16 = 104;
      v17 = v12;
      goto LABEL_8;
    }

    if ([(__MABuiltinBrainBundle__ *)self isPersonalized]|| [(__MABuiltinBrainBundle__ *)self isGloballySigned])
    {
      v37 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self cryptexPath]);
      v38 = open([v37 fileSystemRepresentation], 0);

      if (v38 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        v45 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self cryptexPath]);
        [v5 setObject:v45 forKeyedSubscript:@"path"];

LABEL_45:
        v47 = sub_100000D90(@"Brain");
        v48 = objc_claimAutoreleasedReturnValue(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation2 = [v7 fileSystemRepresentation];
          fileSystemRepresentation3 = [v6 fileSystemRepresentation];
          *buf = 136315394;
          v68 = fileSystemRepresentation2;
          v69 = 2080;
          v70 = fileSystemRepresentation3;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[MAB] Could not graft %s to %s", buf, 0x16u);
        }

        v51 = *__error();
        if ([v5 count])
        {
          v52 = v5;
        }

        else
        {
          v52 = 0;
        }

        v15 = objc_claimAutoreleasedReturnValue([NSError errorWithDomain:NSPOSIXErrorDomain code:v51 userInfo:v52]);

        v65[0] = NSDebugDescriptionErrorKey;
        v65[1] = NSUnderlyingErrorKey;
        v66[0] = @"graft failed";
        v66[1] = v15;
        v65[2] = @"cryptexPath";
        v65[3] = @"graftPath";
        v66[2] = v7;
        v66[3] = v6;
        v28 = v66;
        v29 = v65;
        v30 = 4;
        goto LABEL_51;
      }

      v39 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self ticketPath]);
      v56 = open([v39 fileSystemRepresentation], 0);
      if (v56 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        [v5 setObject:v39 forKeyedSubscript:@"path"];
        v44 = -1;
      }

      else
      {
        v55 = v38;
        v40 = sub_100000D90(@"Brain");
        v41 = objc_claimAutoreleasedReturnValue(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v39;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[MAB] Found MA brain ticket: %@", buf, 0xCu);
        }

        v54 = v39;

        v42 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self rootHashPath]);
        v43 = open([v42 fileSystemRepresentation], 0);

        if (v43 < 0)
        {
          [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
          v46 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self rootHashPath]);
          [v5 setObject:v46 forKeyedSubscript:@"path"];

          v44 = -1;
        }

        else
        {
          DWORD2(v79) = v56;
          v80 = v43;
          *&v81 = 16;
          v44 = graftdmg(v55, [v6 fileSystemRepresentation], -[__MABuiltinBrainBundle__ graftdmgType](self, "graftdmgType"), &v79);
          if (v44)
          {
            [v5 setObject:@"graftdmg()" forKeyedSubscript:@"syscall"];
            [v5 setObject:v54 forKeyedSubscript:@"path"];
          }

          close(v43);
        }

        close(v56);
        v38 = v55;
        v39 = v54;
      }

      close(v38);
    }

    else
    {
      v62[0] = v63.st_ino;
      v44 = fsctl([v7 fileSystemRepresentation], 0x80104A63uLL, v62, 0);
    }

    if (!v44)
    {
      v53 = sub_100000D90(@"Brain");
      v12 = objc_claimAutoreleasedReturnValue(v53);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = v7;
        v69 = 2112;
        v70 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully grafted %@ onto %@", buf, 0x16u);
      }

      v11 = 1;
LABEL_9:

      if (graft)
      {
        goto LABEL_10;
      }

LABEL_25:
      v9 = v58;
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v11 = 0;
  v10 = v35;
LABEL_24:
  v5 = v19;
  graft = graftCopy;
  if (!graftCopy)
  {
    goto LABEL_25;
  }

LABEL_10:
  v9 = v58;
  if (v10)
  {
    v18 = v10;
    *graft = v10;
  }

LABEL_26:

  return v11;
}

- (BOOL)ungraft:(id *)ungraft
{
  v5 = objc_claimAutoreleasedReturnValue(+[NSMutableDictionary dictionary]);
  v6 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self graftPath]);
  v24 = 0;
  if (v6)
  {
    if ([(__MABuiltinBrainBundle__ *)self isGraftedPath:v6])
    {
      if (&_ungraftdmg)
      {
        if (sub_100001B34())
        {
          v7 = 2;
          v24 = 2;
          [v5 setObject:@"UNGRAFTDMG_NOFORCE" forKeyedSubscript:@"ungraft_param"];
        }

        else
        {
          v7 = 0;
        }

        v12 = ungraftdmg([v6 fileSystemRepresentation], v7);
        v13 = @"ungraftdmg()";
      }

      else
      {
        v12 = fsctl([v6 fileSystemRepresentation], 0x80084A64uLL, &v24, 0);
        v13 = @"fsctl()";
      }

      v14 = sub_100000D90(@"Brain");
      v15 = objc_claimAutoreleasedReturnValue(v14);
      v16 = v15;
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation = [v6 fileSystemRepresentation];
          *buf = 136315138;
          v26 = fileSystemRepresentation;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[MAB] Could not ungraft %s", buf, 0xCu);
        }

        [v5 setObject:v13 forKeyedSubscript:@"syscall"];
        v18 = *__error();
        if ([v5 count])
        {
          v19 = v5;
        }

        else
        {
          v19 = 0;
        }

        v9 = objc_claimAutoreleasedReturnValue([NSError errorWithDomain:NSPOSIXErrorDomain code:v18 userInfo:v19]);
        v29[0] = NSDebugDescriptionErrorKey;
        v29[1] = NSUnderlyingErrorKey;
        v30[0] = @"ungraft failed";
        v30[1] = v9;
        v29[2] = @"graftPath";
        v30[2] = v6;
        v8 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3]);
        v10 = 105;
        v11 = v8;
        goto LABEL_17;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v6;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully ungrafted %@ from the file system using %@", buf, 0x16u);
      }
    }

    v20 = 0;
    v21 = 1;
    goto LABEL_24;
  }

  v31 = NSDebugDescriptionErrorKey;
  v8 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"graftPath is nil"]);
  v32 = v8;
  v9 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1]);
  v10 = 100;
  v11 = v9;
LABEL_17:
  v20 = objc_claimAutoreleasedReturnValue([NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v10 userInfo:v11]);

  v21 = 0;
  if (ungraft && v20)
  {
    v22 = v20;
    v21 = 0;
    *ungraft = v20;
  }

LABEL_24:

  return v21;
}

- (BOOL)isPersonalized
{
  v3 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v4 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self ticketPath]);
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)hasValidCurrentBootOnlyTicket
{
  v2 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self currentBootOnlyTicketPath]);
  if (v2)
  {
    v3 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
    v4 = [v3 fileExistsAtPath:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)ticketPath
{
  if ([(__MABuiltinBrainBundle__ *)self hasValidCurrentBootOnlyTicket])
  {
    v3 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self currentBootOnlyTicketPath]);
  }

  else
  {
    v3 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self primaryTicketPath]);
  }

  return v3;
}

- (NSString)currentBootOnlyTicketPath
{
  bundlePath = self->_bundlePath;
  v3 = sub_100001414();
  v4 = objc_claimAutoreleasedReturnValue(v3);
  v5 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"cryptex1ticket.%@.der", v4]);
  v6 = objc_claimAutoreleasedReturnValue([(NSString *)bundlePath stringByAppendingPathComponent:v5]);

  return v6;
}

- (unsigned)graftdmgType
{
  hasValidCurrentBootOnlyTicket = [(__MABuiltinBrainBundle__ *)self hasValidCurrentBootOnlyTicket];
  v3 = sub_100000D90(@"Brain");
  v4 = objc_claimAutoreleasedReturnValue(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (hasValidCurrentBootOnlyTicket)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_PDI_NONCE", buf, 2u);
    }

    v6 = 6;
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_BOOT", v8, 2u);
    }

    v6 = 1;
  }

  return v6;
}

- (NSString)brainPath
{
  v2 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)self graftPath]);
  v3 = objc_claimAutoreleasedReturnValue([v2 stringByAppendingPathComponent:@"/usr/lib/libmobileassetd.dylib"]);

  return v3;
}

- (NSDictionary)brainInfo
{
  v2 = objc_claimAutoreleasedReturnValue([(NSString *)self->_bundlePath stringByAppendingPathComponent:@"MobileAssetBrain.plist"]);
  v3 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithContentsOfFile:v2]);

  return v3;
}

@end