@interface CRThemeAssetOverrider
+ (BOOL)_shouldForceUpdateAsset;
+ (id)_carplayLibraryDirectoryForAssetIdentifier:(id)a3;
+ (id)_carplayLibraryURL;
+ (void)_readMetadataFromAsset:(id)a3 assetIdentifier:(id)a4 completion:(id)a5;
- (BOOL)hasOverrideAssetForAssetIdentifier:(id)a3;
- (CRThemeAssetOverrider)init;
- (id)_internalQueue_generatedAssetForSourceAssetURL:(id)a3 version:(id)a4;
- (void)setupOverrideAssetForRequest:(id)a3 newerThanVersion:(id)a4 completion:(id)a5;
@end

@implementation CRThemeAssetOverrider

- (CRThemeAssetOverrider)init
{
  v9.receiver = self;
  v9.super_class = CRThemeAssetOverrider;
  v2 = [(CRThemeAssetOverrider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.carkit.themeAssetOverrider", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_alloc_init(NSMutableSet);
    mainQueue_pendingOverrideAssetIDs = v2->_mainQueue_pendingOverrideAssetIDs;
    v2->_mainQueue_pendingOverrideAssetIDs = v6;
  }

  return v2;
}

- (BOOL)hasOverrideAssetForAssetIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _carplayLibraryDirectoryForAssetIdentifier:v3];

  return v4 != 0;
}

- (void)setupOverrideAssetForRequest:(id)a3 newerThanVersion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 assetIdentifier];
    v12 = [v9 iOSContentVersion];
    v13 = [v9 accessoryContentVersion];
    v14 = [(CRThemeAssetOverrider *)self mainQueue_pendingOverrideAssetIDs];
    v15 = [v14 containsObject:v11];

    if (v15)
    {
      v16 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "already creating an override asset for %{public}@, ignoring additional request", buf, 0xCu);
      }

      v17 = [(CRThemeAssetOverrider *)self internalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100057798;
      block[3] = &unk_1000DD960;
      v18 = &v29;
      v29 = v10;
      dispatch_async(v17, block);
    }

    else
    {
      v19 = [(CRThemeAssetOverrider *)self mainQueue_pendingOverrideAssetIDs];
      [v19 addObject:v11];

      v20 = [(CRThemeAssetOverrider *)self internalQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000577B0;
      v21[3] = &unk_1000DF598;
      v18 = &v27;
      v27 = v10;
      v21[4] = self;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v25 = v9;
      v26 = v8;
      dispatch_async(v20, v21);
    }
  }
}

- (id)_internalQueue_generatedAssetForSourceAssetURL:(id)a3 version:(id)a4
{
  v43 = a3;
  v6 = a4;
  v7 = [(CRThemeAssetOverrider *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [objc_opt_class() _carplayLibraryURL];
  v9 = [v8 URLByAppendingPathComponent:@"CarPlayApp" isDirectory:1];
  v10 = [v6 identifier];
  v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [v6 iOSContentVersion];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  v14 = [v6 accessoryContentVersion];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Asset-%@-%lu", v13, [v14 unsignedIntegerValue]);

  v16 = [v11 URLByAppendingPathComponent:v15 isDirectory:1];
  v17 = +[NSFileManager defaultManager];
  [v17 removeItemAtURL:v16 error:0];

  v18 = +[NSFileManager defaultManager];
  v19 = [v16 path];
  v49 = 0;
  v20 = [v18 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v49];
  v21 = v49;

  if (v20)
  {
    v37 = v21;
    v38 = v15;
    v39 = v13;
    v40 = v11;
    v41 = v8;
    v42 = v6;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v56[0] = CARThemeAssetPhoneFilename;
    v56[1] = CARThemeAssetAccessoryFilename;
    v56[2] = CARThemeAssetCertificateFilename;
    v56[3] = CARThemeAssetSignatureFilename;
    v56[4] = CARThemeAssetAccessoryAdditionsFilename;
    v22 = [NSArray arrayWithObjects:v56 count:5];
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v45 + 1) + 8 * i);
          v28 = [v43 URLByAppendingPathComponent:v27];
          v29 = [v16 URLByAppendingPathComponent:v27];
          v30 = +[NSFileManager defaultManager];
          v44 = 0;
          v31 = [v30 copyItemAtURL:v28 toURL:v29 error:&v44];
          v32 = v44;

          if ((v31 & 1) == 0)
          {
            v33 = CarThemeAssetsLogging();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v51 = v28;
              v52 = 2112;
              v53 = v29;
              v54 = 2112;
              v55 = v32;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "failed to copy %@ to %@, error: %@", buf, 0x20u);
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v24);
    }

    v34 = v16;
    v8 = v41;
    v6 = v42;
    v13 = v39;
    v11 = v40;
    v21 = v37;
    v15 = v38;
  }

  else
  {
    v35 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000883AC(v16, v21, v35);
    }

    v34 = 0;
  }

  return v34;
}

+ (BOOL)_shouldForceUpdateAsset
{
  v2 = CFPreferencesCopyValue(@"AlwaysUpdateAsset", CRPreferencesNotMigratedDomain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

+ (id)_carplayLibraryURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  v4 = [v3 firstObject];

  v5 = [v4 URLByAppendingPathComponent:@"CarPlay" isDirectory:1];

  return v5;
}

+ (id)_carplayLibraryDirectoryForAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v9 = 0;
    goto LABEL_17;
  }

  v6 = [a1 _carplayLibraryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:1];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 URLByStandardizingPath];

    v10 = [v9 path];
    v11 = [v6 path];
    v12 = [v10 hasPrefix:v11];

    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      v14 = [v9 path];
      v15 = [v13 fileExistsAtPath:v14];

      v16 = CarThemeAssetsLogging();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "using override asset %@", &v19, 0xCu);
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000884CC();
      }
    }

    else
    {
      v17 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100088458();
      }
    }

    v17 = v9;
    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

LABEL_17:

  return v9;
}

+ (void)_readMetadataFromAsset:(id)a3 assetIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v8 = CARThemeAssetInfoFilename;
    v9 = a4;
    v10 = [a3 URLByAppendingPathComponent:v8];
    v26 = 0;
    v11 = [NSDictionary dictionaryWithContentsOfURL:v10 error:&v26];
    v12 = v26;
    if (!v11)
    {
      v13 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100088540();
      }

      (*(v7 + 2))(v7, 0, 0, 0);
    }

    objc_opt_class();
    v14 = [v11 objectForKey:@"iOSContentVersion"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    v16 = [v11 objectForKey:@"AccessoryContentVersion"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (!v15)
    {
      v15 = @"0";
    }

    if (!v17)
    {
      v18 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000885B4();
      }

      v19 = [v11 objectForKey:kCFBundleVersionKey];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        (*(v7 + 2))(v7, 0, 0, 0);
      }

      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 integerValue]);

      if (v20)
      {
        v17 = v20;
      }

      else
      {
        v17 = &off_1000E7B10;
      }
    }

    v21 = [[CARThemeAssetVersion alloc] initWithIdentifier:v9 iOSContentVersion:v15 accessoryContentVersion:v17];

    objc_opt_class();
    v22 = [v11 objectForKey:@"MinimumCompatibilityVersion"];
    if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    objc_opt_class();
    v24 = [v11 objectForKey:@"MinimumSDKVersion"];
    if (v24 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    (*(v7 + 2))(v7, v21, v23, v25);
  }
}

@end