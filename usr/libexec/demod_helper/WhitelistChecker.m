@interface WhitelistChecker
- (BOOL)annotated:(id)a3;
- (BOOL)checkFile_WatchAndTV:(id)a3 withMetaData:(id)a4;
- (BOOL)checkFile_iOS:(id)a3 withMetaData:(id)a4;
- (BOOL)checkFile_macOS:(id)a3 withMetaData:(id)a4;
- (BOOL)file:(id)a3 blacklisted:(id)a4;
- (BOOL)file:(id)a3 whitelisted:(id)a4;
- (BOOL)handleSystemContainerFiles:(id)a3 withMetadata:(id)a4;
- (BOOL)load;
- (BOOL)loadFromFile:(id)a3;
- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)a3 shared:(BOOL)a4;
- (BOOL)shouldRestoreSystemContainer_iOS:(id)a3 shared:(BOOL)a4;
- (WhitelistChecker)init;
- (id)checkManifest:(id)a3;
- (id)createFullPathList:(id)a3 rootPath:(id)a4 isAllowList:(BOOL)a5;
- (id)getRealPathForFile:(id)a3 withMetaData:(id)a4;
@end

@implementation WhitelistChecker

- (WhitelistChecker)init
{
  v5.receiver = self;
  v5.super_class = WhitelistChecker;
  v2 = [(WhitelistChecker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WhitelistChecker *)v2 setDomainsPlistFilePath:@"/System/Library/PrivateFrameworks/MobileBackup.framework/Domains.plist"];
  }

  return v3;
}

- (BOOL)load
{
  v3 = +[MSDPlatform sharedInstance];
  v4 = [v3 macOS];

  if (v4)
  {
    v5 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByStandardizingPath];
    v20[0] = v5;
    v20[1] = @"/Library/Apple";
    v6 = [NSArray arrayWithObjects:v20 count:2];
    v7 = [NSSet setWithArray:v6];
    [(WhitelistChecker *)self setBlackListedPaths:v7];

    return 1;
  }

  v8 = +[MSDPlatform sharedInstance];
  if ([v8 iOS])
  {
  }

  else
  {
    v9 = +[MSDPlatform sharedInstance];
    v10 = [v9 rOS];

    if (!v10)
    {
      v16 = sub_1000177C8();
      [(WhitelistChecker *)self setDomains:v16];

      v17 = [(WhitelistChecker *)self domains];

      if (v17)
      {
        return 1;
      }

      sub_100032424();
      return 0;
    }
  }

  v11 = [(WhitelistChecker *)self domainsPlistFilePath];
  v12 = [MSDDomainsPlistPatcher patchDomainsPlist:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 objectForKey:@"SystemDomains"];
    v14 = [NSDictionary dictionaryWithDictionary:v13];
    [(WhitelistChecker *)self setDomains:v14];

    v15 = [(WhitelistChecker *)self domains];

    if (v15)
    {

      return 1;
    }

    v19 = sub_100021268();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100032490(v19);
    }
  }

  else
  {
    v19 = sub_100021268();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000324D4(v11, v19);
    }
  }

  return 0;
}

- (BOOL)loadFromFile:(id)a3
{
  [(WhitelistChecker *)self setDomainsPlistFilePath:a3];

  return [(WhitelistChecker *)self load];
}

- (id)checkManifest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v25 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v25)
  {
    goto LABEL_20;
  }

  v24 = *v27;
  p_vtable = MSDKPeerDemoTestScript.vtable;
  *&v7 = 136315394;
  v22 = v7;
  v23 = v6;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v27 != v24)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      v11 = [v6 objectForKey:{v10, v22}];
      v12 = [(WhitelistChecker *)self getRealPathForFile:v10 withMetaData:v11];
      v13 = [p_vtable + 37 sharedInstance];
      v14 = [v13 macOS];

      if (v14)
      {
        if ([(WhitelistChecker *)self checkFile_macOS:v12 withMetaData:v11])
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v15 = [p_vtable + 37 sharedInstance];
      if ([v15 iOS])
      {

LABEL_12:
        v18 = [(WhitelistChecker *)self checkFile_iOS:v12 withMetaData:v11];
        goto LABEL_14;
      }

      v16 = [p_vtable + 37 sharedInstance];
      v17 = [v16 rOS];

      if (v17)
      {
        goto LABEL_12;
      }

      v18 = [(WhitelistChecker *)self checkFile_WatchAndTV:v12 withMetaData:v11];
LABEL_14:
      v6 = v23;
      p_vtable = (MSDKPeerDemoTestScript + 24);
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_15:
      v19 = sub_100021268();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v22;
        v31 = "[WhitelistChecker checkManifest:]";
        v32 = 2114;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s:%{public}@ failed the check.", buf, 0x16u);
      }

      [v5 addObject:v10];
LABEL_18:
    }

    v25 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v25);
LABEL_20:

  if ([v5 count])
  {
    v20 = [v5 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)checkFile_macOS:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = [(WhitelistChecker *)self blackListedPaths];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (BOOL)checkFile_iOS:(id)a3 withMetaData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSArray arrayWithObjects:@"/var/mobile/Media", @"/var/mobile/Library/Backup/SystemContainers/", @"/var/mobile/Library/IdentityServices/Persistence/DoNotBackup", @"/var/root/Library/Backup/SystemContainers/", @"/var/wireless/Library/Preferences/com.apple.awdd.persistent.plist", @"/var/wireless/Library/Preferences/com.apple.awdd.plist", @"/var/MobileSoftwareUpdate/.MAAMigrated.plist", @"/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs", @"/var/mobile/Library/Mobile Documents", 0];
  if (![(WhitelistChecker *)self file:v6 whitelisted:v8]&& ![(WhitelistChecker *)self annotated:v7])
  {
    v31 = v8;
    v32 = v7;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(WhitelistChecker *)self domains];
    v37 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (!v37)
    {
      v38 = 0;
      v10 = 0;
      v39 = 0;
      goto LABEL_33;
    }

    v39 = 0;
    v38 = 0;
    v10 = 0;
    v35 = *v42;
    v36 = v6;
    v33 = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(WhitelistChecker *)self domains];
        v15 = [v14 objectForKey:v12];

        v16 = [v15 objectForKey:@"RootPath"];
        if (!v16)
        {
          v27 = sub_100021268();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v46 = v12;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No root path find in domain %{public}@", buf, 0xCu);
          }

          v18 = 0;
          v26 = 0;
          goto LABEL_16;
        }

        v40 = v13;
        v17 = [v15 objectForKey:@"RelativePathsToBackupAndRestore"];
        v18 = [v17 mutableCopy];

        v19 = [v15 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];
        [v18 addObjectsFromArray:v19];

        v20 = [v15 objectForKey:@"RelativePathsToRestoreOnly"];
        [v18 addObjectsFromArray:v20];

        v21 = [v15 objectForKey:@"RelativePathsToBackupToDriveAndStandardAccount"];
        [v18 addObjectsFromArray:v21];

        v22 = [(WhitelistChecker *)self createFullPathList:v18 rootPath:v16 isAllowList:1];

        if (!v22)
        {
          v27 = sub_100021268();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v46 = v12;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Cannot create allow list for domain %{public}@", buf, 0xCu);
          }

          v26 = 0;
          v10 = 0;
          v13 = v40;
          goto LABEL_16;
        }

        if ([(WhitelistChecker *)self file:v6 whitelisted:v22])
        {
          v23 = [v15 objectForKey:@"RelativePathsNotToRestore"];

          v24 = [(WhitelistChecker *)self createFullPathList:v23 rootPath:v16 isAllowList:0];

          if ([(WhitelistChecker *)self file:v6 blacklisted:v24])
          {
            v25 = sub_100021268();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = v6;
              v47 = 2114;
              v48 = v12;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ is black listed in %{public}@", buf, 0x16u);
            }

            v39 = 1;
            v18 = v23;
            v26 = 1;
            v38 = v24;
            v10 = v22;
            v13 = v40;
            v27 = v25;
            self = v33;
LABEL_16:

            v28 = 0;
            goto LABEL_20;
          }

          v28 = 0;
          v39 = 1;
          v18 = v23;
          v26 = 1;
          v38 = v24;
        }

        else
        {
          v28 = 1;
          v26 = v39;
        }

        v10 = v22;
        v13 = v40;
LABEL_20:

        objc_autoreleasePoolPop(v13);
        if (!v28)
        {
          v39 = v26;
          v6 = v36;
          goto LABEL_33;
        }

        v11 = v11 + 1;
        v6 = v36;
      }

      while (v37 != v11);
      v29 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      v37 = v29;
      if (!v29)
      {
LABEL_33:

        v8 = v31;
        v7 = v32;
        v9 = v38;
        goto LABEL_34;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v39 = 1;
LABEL_34:

  return v39 & 1;
}

- (BOOL)checkFile_WatchAndTV:(id)a3 withMetaData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WhitelistChecker *)self domains];
  v9 = [v8 objectForKey:@"ContentRootDomain"];
  v10 = [NSMutableArray arrayWithArray:v9];

  v11 = [NSArray arrayWithObjects:@"/var/mobile/Media", @"/var/containers/", 0];
  [v10 addObject:@"/var/mobile/Library/"];
  if ([(WhitelistChecker *)self file:v6 whitelisted:v11]|| [(WhitelistChecker *)self annotated:v7])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(WhitelistChecker *)self file:v6 whitelisted:v10];
  }

  return v12;
}

- (BOOL)annotated:(id)a3
{
  v3 = a3;
  v4 = +[MSDPlatform sharedInstance];
  if ([v4 iOS])
  {

    v5 = @"MBRestoreAnnotation";
    v6 = &off_100056658;
  }

  else
  {
    v7 = +[MSDPlatform sharedInstance];
    v8 = [v7 rOS];

    if (v8)
    {
      v6 = &off_100056658;
    }

    else
    {
      v6 = &off_100056670;
    }

    if (v8)
    {
      v5 = @"MBRestoreAnnotation";
    }

    else
    {
      v5 = @"MSDAnnotation";
    }
  }

  v9 = [v3 objectForKey:@"MSDManifestFileExtendedAttributes"];

  v13 = 0;
  if (v9)
  {
    if ([v9 count])
    {
      v10 = [v9 objectForKey:v5];
      v11 = [[NSString alloc] initWithData:v10 encoding:4];
      v12 = [v6 containsObject:v11];

      if (v12)
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (id)createFullPathList:(id)a3 rootPath:(id)a4 isAllowList:(BOOL)a5
{
  v19 = a5;
  v6 = a3;
  v21 = a4;
  v22 = [NSMutableArray arrayWithCapacity:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 componentsSeparatedByString:@"#"];
        v14 = [v13 objectAtIndexedSubscript:0];
        v15 = +[NSCharacterSet whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        if ([v16 length])
        {
          v17 = [v21 stringByAppendingPathComponent:v16];
          [v22 addObject:v17];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if (v19 && ![v22 count])
  {
    [v22 addObject:v21];
  }

  return v22;
}

- (BOOL)file:(id)a3 whitelisted:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v5 rangeOfString:{v11, v14}] || !objc_msgSend(v11, "rangeOfString:", v5))
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (BOOL)file:(id)a3 blacklisted:(id)a4
{
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (![v5 rangeOfString:{v11, v20}])
        {
          v13 = v12;
          v14 = [v5 length];
          if (v14 == [v11 length])
          {
            v16 = 1;
            goto LABEL_14;
          }

          v15 = [v5 length];
          if (v15 > [v11 length])
          {
            v16 = 1;
            v17 = [v5 substringWithRange:{v13, 1}];
            v18 = [v17 isEqualToString:@"/"];

            if (v18)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)getRealPathForFile:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = [a4 valueForKey:@"MSDManifestFileAttributes"];
  v7 = [v6 valueForKey:@"NSFileType"];
  if (([v7 isEqualToString:@"NSFileTypeRegular"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"NSFileTypeDirectory"))
  {
    v8 = [v5 stringByStandardizingPath];
    if (([v5 isEqualToString:v8] & 1) == 0)
    {
      v9 = sub_100021268();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10003254C(v5, v8, v9);
      }
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)shouldRestoreSystemContainer_iOS:(id)a3 shared:(BOOL)a4
{
  v4 = a3;
  v16 = 0;
  v15 = 0;
  [v4 cStringUsingEncoding:4];
  v5 = container_create_or_lookup_path_for_current_user();
  if (v5 && v15 == 1)
  {
    v6 = [NSString stringWithFormat:@"file://%s", v5];
    v7 = [NSURL fileURLWithString:v6];
    v14 = 0;
    v13 = 0;
    v8 = [v7 getResourceValue:&v14 forKey:NSURLIsExcludedFromBackupKey error:&v13];
    v9 = v14;
    v10 = v13;
    if (v8 && [v9 BOOLValue])
    {
      v11 = sub_100021268();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[WhitelistChecker shouldRestoreSystemContainer_iOS:shared:]";
        v19 = 2114;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:Container check failed for %{public}@. But still restoring.", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v10 = 0;
    v9 = 0;
  }

  return 1;
}

- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)a3 shared:(BOOL)a4
{
  v5 = a3;
  v6 = [(WhitelistChecker *)self domains];
  v7 = [v6 objectForKey:@"SystemContainerDomain"];

  LOBYTE(v6) = [v7 containsObject:v5];
  return v6;
}

- (BOOL)handleSystemContainerFiles:(id)a3 withMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 iOS];

  v9 = v8 == 0;
  if (v8)
  {
    v10 = &off_1000566A0;
  }

  else
  {
    v10 = &off_1000566D0;
  }

  if (v9)
  {
    v11 = &off_1000566B8;
  }

  else
  {
    v11 = &off_100056688;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (v9)
  {
    v12 = 6;
  }

  else
  {
    v12 = 8;
  }

  v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:{16, self}];
  v35 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        if ([v5 rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v6;
          v19 = [v5 stringByReplacingOccurrencesOfString:v17 withString:&stru_1000519D0];
          v20 = 1;
          goto LABEL_20;
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = v6;
  v19 = 0;
  v20 = 0;
LABEL_20:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v10);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        if ([v5 rangeOfString:v25] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = [v5 stringByReplacingOccurrencesOfString:v25 withString:&stru_1000519D0];

          v26 = 0;
          v19 = v28;
          goto LABEL_31;
        }
      }

      v22 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
  if (!v20)
  {
    v27 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v27 = [v5 componentsSeparatedByString:@"/"];
  if ([v27 count] != v35 || (objc_msgSend(v34, "annotated:", v18) & 1) != 0)
  {
LABEL_33:
    LOBYTE(v26) = 1;
    goto LABEL_34;
  }

  v30 = +[MSDPlatform sharedInstance];
  v31 = [v30 iOS];

  if (v31)
  {
    if ([v34 shouldRestoreSystemContainer_iOS:v19 shared:v26])
    {
      goto LABEL_33;
    }
  }

  else if ([v34 shouldRestoreSystemContainer_WatchAndTV:v19 shared:v26])
  {
    goto LABEL_33;
  }

  v32 = sub_100021268();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_1000325D4(v5, v32);
  }

  LOBYTE(v26) = 0;
LABEL_34:

  return v26;
}

@end