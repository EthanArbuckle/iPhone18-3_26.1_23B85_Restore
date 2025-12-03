@interface MAUtilityHelper
+ (BOOL)getPathsForName:(id)name group:(id)group groupPattern:(id)pattern clientConn:(id)conn entitlementGroup:(id *)entitlementGroup entitlementPath:(id *)path groupPath:(id *)groupPath error:(id *)self0;
+ (BOOL)readBoolValueFromUserDefaultsWithKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)validatePathMatchingRealpath:(id)realpath error:(id *)error;
+ (double)readDoubleValueFromUserDefaultsWithKey:(id)key defaultValue:(double)value;
+ (id)determinePClassWith:(unint64_t)with profileType:(unint64_t)type deviceState:(unint64_t)state;
+ (id)getClientBundleIdentifier:(id *)identifier;
+ (unint64_t)readIntValueFromUserDefaultsWithKey:(id)key defaultValue:(unint64_t)value;
+ (void)deleteSqliteTempFiles:(id)files logger:(id)logger;
+ (void)getDeviceIDs:(unint64_t *)ds chipID:(int64_t *)d boardID:(int64_t *)iD;
+ (void)logUserFaultReportWithReason:(id)reason log:(id)log clientBundle:(id)bundle;
+ (void)recreatePath:(id)path logger:(id)logger;
+ (void)registerAssetsWithSpaceAttributesWithPath:(id)path logger:(id)logger completion:(id)completion;
+ (void)wipeEachKVStoreSubFodlerUnder:(id)under logger:(id)logger;
+ (void)writeTrueValueToUserDefaultsWithKey:(id)key;
@end

@implementation MAUtilityHelper

+ (id)getClientBundleIdentifier:(id *)identifier
{
  error = 0;
  v3 = *&identifier->var0[4];
  *v10.val = *identifier->var0;
  *&v10.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v10);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopySigningIdentifier(v4, &error);
    CFRelease(v5);
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = @"Unknown";
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

+ (unint64_t)readIntValueFromUserDefaultsWithKey:(id)key defaultValue:(unint64_t)value
{
  keyCopy = key;
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.managedAssets.private"];
  v7 = [v6 objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v7 integerValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [v7 intValue];
    }
  }

  return value;
}

+ (BOOL)readBoolValueFromUserDefaultsWithKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.managedAssets.private"];
  v7 = [v6 objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v7 BOOLValue];
  }

  return value;
}

+ (void)writeTrueValueToUserDefaultsWithKey:(id)key
{
  keyCopy = key;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.managedAssets.private"];
  [v4 setObject:&__kCFBooleanTrue forKey:keyCopy];
}

+ (double)readDoubleValueFromUserDefaultsWithKey:(id)key defaultValue:(double)value
{
  keyCopy = key;
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.managedAssets.private"];
  v7 = [v6 objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 floatValue];
    value = v8;
  }

  return value;
}

+ (BOOL)getPathsForName:(id)name group:(id)group groupPattern:(id)pattern clientConn:(id)conn entitlementGroup:(id *)entitlementGroup entitlementPath:(id *)path groupPath:(id *)groupPath error:(id *)self0
{
  nameCopy = name;
  groupCopy = group;
  patternCopy = pattern;
  connCopy = conn;
  v19 = connCopy;
  if (connCopy)
  {
    [connCopy auditToken];
  }

  else
  {
    memset(v43, 0, sizeof(v43));
  }

  v20 = [MAUtilityHelper getClientBundleIdentifier:v43];
  if (!nameCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![nameCopy length] || objc_msgSend(nameCopy, "containsString:", @".."))
  {
    goto LABEL_8;
  }

  if (!groupCopy)
  {
    v28 = nameCopy;
    v29 = v20;
    v30 = @"private";
LABEL_26:
    v33 = v30;
    *entitlementGroup = v30;
    v34 = v28;
    *path = v28;
    v35 = v29;
    *groupPath = v29;

    v21 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [groupCopy length])
  {
    v23 = [patternCopy firstMatchInString:groupCopy options:0 range:{0, objc_msgSend(groupCopy, "length")}];
    if (![v23 numberOfRanges])
    {
      *error = createManagedAssetError();

      v21 = 0;
      goto LABEL_9;
    }

    v41 = nameCopy;
    v42 = v20;
    pathComponents = [groupCopy pathComponents];
    v40 = [pathComponents objectAtIndexedSubscript:0];
    v25 = [pathComponents objectAtIndexedSubscript:0];
    v37 = [v25 isEqualToString:@"private"];

    if (v37)
    {
      v26 = pathComponents;
      if ([pathComponents count] == 1)
      {
LABEL_22:
        if ([v26 count] < 2)
        {
          v31 = v26;
          v28 = v41;
        }

        else
        {
          v39 = [v26 subarrayWithRange:{1, objc_msgSend(v26, "count") - 1}];
          [NSString pathWithComponents:v39];
          v32 = v31 = v26;
          v36 = [v32 stringByAppendingFormat:@"/%@", v41];

          v28 = v36;
        }

        v30 = v40;
        v29 = v42;
        goto LABEL_26;
      }

      v27 = [pathComponents mutableCopy];
      [v27 setObject:v42 atIndexedSubscript:0];
      v38 = [NSString pathWithComponents:v27];
    }

    else
    {
      v38 = groupCopy;
      v27 = v42;
    }

    v42 = v38;
    v26 = pathComponents;
    goto LABEL_22;
  }

LABEL_8:
  createManagedAssetError();
  *error = v21 = 0;
LABEL_9:

  return v21;
}

+ (BOOL)validatePathMatchingRealpath:(id)realpath error:(id *)error
{
  realpathCopy = realpath;
  bzero(v9, 0x400uLL);
  if (realpath_DARWIN_EXTSN([realpathCopy fileSystemRepresentation], v9))
  {
    v6 = [NSString stringWithUTF8String:v9];
    v7 = [v6 isEqualToString:realpathCopy];
    if ((v7 & 1) == 0)
    {
      *error = createManagedAssetError();
    }
  }

  else
  {
    createManagedAssetError();
    *error = v7 = 0;
  }

  return v7;
}

+ (void)getDeviceIDs:(unint64_t *)ds chipID:(int64_t *)d boardID:(int64_t *)iD
{
  if (qword_100129398 == -1)
  {
    if (!ds)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10000A194();
  if (ds)
  {
LABEL_3:
    *ds = 0;
  }

LABEL_4:
  if (d)
  {
    *d = qword_100129388;
  }

  if (iD)
  {
    *iD = qword_100129390;
  }
}

+ (id)determinePClassWith:(unint64_t)with profileType:(unint64_t)type deviceState:(unint64_t)state
{
  v8 = NSFileProtectionComplete;
  if (with != 125 && with != 102 && type == 1 && state != 2)
  {
    v9 = state == 1 && with == 100;
    v10 = &NSFileProtectionCompleteUnlessOpen;
    if (v9)
    {
      v10 = &NSFileProtectionCompleteUntilFirstUserAuthentication;
    }

    goto LABEL_16;
  }

  v11 = with - 100;
  if (with - 100 > 0x1A)
  {
    goto LABEL_17;
  }

  if (((1 << v11) & 0x1044C0) != 0)
  {
    goto LABEL_13;
  }

  if (((1 << v11) & 0x6000004) != 0)
  {
    v10 = &NSFileProtectionNone;
    goto LABEL_16;
  }

  if (with == 100)
  {
LABEL_13:
    v10 = &NSFileProtectionCompleteUntilFirstUserAuthentication;
LABEL_16:
    v12 = *v10;

    v8 = v12;
  }

LABEL_17:

  return v8;
}

+ (void)logUserFaultReportWithReason:(id)reason log:(id)log clientBundle:(id)bundle
{
  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
  {
    sub_10000A1A8();
  }
}

+ (void)deleteSqliteTempFiles:(id)files logger:(id)logger
{
  filesCopy = files;
  loggerCopy = logger;
  v7 = [filesCopy stringByAppendingString:@"-wal"];
  v8 = [filesCopy stringByAppendingString:@"-journal"];
  v9 = [filesCopy stringByAppendingString:@"-shm"];
  v10 = +[NSFileManager defaultManager];
  if ([v10 fileExistsAtPath:v7])
  {
    v19 = 0;
    v11 = [v10 removeItemAtPath:v7 error:&v19];
    v12 = v19;
    if ((v11 & 1) == 0 && os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
    {
      sub_10000A220();
    }
  }

  else
  {
    v12 = 0;
  }

  if ([v10 fileExistsAtPath:v8])
  {
    v18 = 0;
    v13 = [v10 removeItemAtPath:v8 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0 && os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
    {
      sub_10000A288();
    }
  }

  else
  {
    v14 = 0;
  }

  if ([v10 fileExistsAtPath:v9])
  {
    v17 = 0;
    v15 = [v10 removeItemAtPath:v9 error:&v17];
    v16 = v17;
    if ((v15 & 1) == 0 && os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
    {
      sub_10000A2F0();
    }
  }

  else
  {
    v16 = 0;
  }
}

+ (void)registerAssetsWithSpaceAttributesWithPath:(id)path logger:(id)logger completion:(id)completion
{
  pathCopy = path;
  loggerCopy = logger;
  completionCopy = completion;
  v10 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"RegisterAssetsWithSpaceAttributes" defaultValue:0];
  if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A358(v10, loggerCopy);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (v10)
  {
LABEL_3:
    completionCopy[2](completionCopy, 0);
    goto LABEL_9;
  }

  v11 = +[NSFileManager defaultManager];
  v27 = 0;
  v12 = [v11 contentsOfDirectoryAtPath:pathCopy error:&v27];
  v13 = v27;
  if (v13)
  {
    (completionCopy)[2](completionCopy, v13);
  }

  else
  {
    v14 = +[NSMutableArray array];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000099BC;
    v22[3] = &unk_100115F70;
    v23 = pathCopy;
    v24 = v11;
    v25 = v14;
    v15 = loggerCopy;
    v26 = v15;
    v16 = v14;
    [v12 enumerateObjectsUsingBlock:v22];
    defaultManager = [(objc_class *)off_100127CB0() defaultManager];
    v18 = [NSString stringWithUTF8String:kManagedAssetLogSubsystem];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100009B10;
    v19[3] = &unk_100115F98;
    v21 = completionCopy;
    v20 = v15;
    [defaultManager registerPaths:v16 forBundleID:v18 completionHandler:v19];
  }

LABEL_9:
}

+ (void)recreatePath:(id)path logger:(id)logger
{
  pathCopy = path;
  loggerCopy = logger;
  v7 = +[NSFileManager defaultManager];
  if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = pathCopy;
    _os_log_impl(&_mh_execute_header, loggerCopy, OS_LOG_TYPE_INFO, "wipe all files under directory:%@ and recreate directory", buf, 0xCu);
  }

  if ([v7 fileExistsAtPath:pathCopy])
  {
    v13 = 0;
    v8 = [v7 removeItemAtPath:pathCopy error:&v13];
    v9 = v13;
    v10 = v9;
    if (v8)
    {

      v12 = 0;
      v11 = [v7 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v12];
      v10 = v12;
      if ((v11 & 1) == 0 && os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
      {
        sub_10000A548();
      }
    }

    else if (v9 && os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
    {
      sub_10000A4E0();
    }
  }

  else
  {
    v10 = 0;
  }
}

+ (void)wipeEachKVStoreSubFodlerUnder:(id)under logger:(id)logger
{
  underCopy = under;
  loggerCopy = logger;
  v7 = +[NSFileManager defaultManager];
  if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = underCopy;
    _os_log_impl(&_mh_execute_header, loggerCopy, OS_LOG_TYPE_INFO, "wipe all profile kvstore directory under root directory:%@", buf, 0xCu);
  }

  v26 = 0;
  v8 = [v7 contentsOfDirectoryAtPath:underCopy error:&v26];
  v9 = v26;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
    {
      sub_10000A5B0();
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v10 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v31[0] = underCopy;
          v31[1] = v15;
          v31[2] = @"kvStore";
          v16 = [NSArray arrayWithObjects:v31 count:3];
          v17 = [NSString pathWithComponents:v16];

          if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v17;
            _os_log_debug_impl(&_mh_execute_header, loggerCopy, OS_LOG_TYPE_DEBUG, "delete kvStorePath: %@", buf, 0xCu);
          }

          if ([v7 fileExistsAtPath:v17])
          {

            v21 = 0;
            v18 = [v7 removeItemAtPath:v17 error:&v21];
            v10 = v21;
            if (v18)
            {
              if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v28 = v17;
                _os_log_impl(&_mh_execute_header, loggerCopy, OS_LOG_TYPE_INFO, "wipe out kvstore path %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v17;
              v29 = 2112;
              v30 = v10;
              _os_log_error_impl(&_mh_execute_header, loggerCopy, OS_LOG_TYPE_ERROR, "fail to remove kvstore path %@, error: %@", buf, 0x16u);
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }

    v8 = v19;
  }
}

@end