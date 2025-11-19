@interface MobileAssetManager
+ (id)sharedInstance;
- (MobileAssetManager)init;
- (NSArray)domains;
- (NSNumber)assetVersion;
- (id)constructDomainsWithPlist:(id)a3;
- (id)debugDescription;
- (void)_initDomainsWithConfigPlist:(id)a3;
- (void)_onMobileAssetQueue_fetchMobileAssetContentWithCompletion:(id)a3;
- (void)_onMobileAssetQueue_markInterestInMobileAssetWithCompletion:(id)a3;
- (void)asyncRefetchMobileAsset;
- (void)registerForMobileAssetUpdateNotification;
@end

@implementation MobileAssetManager

- (id)debugDescription
{
  v3 = [(MobileAssetManager *)self fallbackVersion];
  v4 = [(MobileAssetManager *)self assetVersion];
  v5 = [NSString stringWithFormat:@"<MobileAssetManager fallbackVersion: %@ assetVersion: %@>", v3, v4];

  return v5;
}

- (void)_onMobileAssetQueue_fetchMobileAssetContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileAssetManager *)self mobileAssetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[MAAutoAssetSelector alloc] initForAssetType:@"com.apple.MobileAsset.OSEligibility" withAssetSpecifier:@"Parameters"];
  v7 = [MAAutoAsset alloc];
  v8 = [(MobileAssetManager *)self mobileAssetQueue];
  v15 = 0;
  v9 = [v7 initForClientName:@"eligibilityd:lockContent" selectingAsset:v6 completingFromQueue:v8 error:&v15];
  v10 = v15;

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100023CD8;
    v12[3] = &unk_100046898;
    v14 = v4;
    v12[4] = self;
    v13 = v9;
    [v13 lockContent:@"lockEligibilityConfigOptions" withTimeout:-1 completion:v12];
  }

  else
  {
    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]";
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Unable to create auto-asset instance: %@", buf, 0x16u);
    }

    (*(v4 + 2))(v4, v10);
  }
}

- (void)asyncRefetchMobileAsset
{
  v3 = [(MobileAssetManager *)self mobileAssetQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000243B8;
  v4[3] = &unk_1000469A0;
  v4[4] = self;
  sub_100025F54(v3, v4);
}

- (void)_onMobileAssetQueue_markInterestInMobileAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileAssetManager *)self mobileAssetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[MAAutoAssetSelector alloc] initForAssetType:@"com.apple.MobileAsset.OSEligibility" withAssetSpecifier:@"Parameters"];
  v7 = [MAAutoAsset alloc];
  v8 = [(MobileAssetManager *)self mobileAssetQueue];
  v14 = 0;
  v9 = [v7 initForClientName:@"eligibilityd:interestInContent" selectingAsset:v6 completingFromQueue:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000247E4;
    v12[3] = &unk_100046850;
    v13 = v4;
    [v9 interestInContent:@"EligibilityConfig" completion:v12];
  }

  else
  {
    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[MobileAssetManager _onMobileAssetQueue_markInterestInMobileAssetWithCompletion:]";
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Unable to create auto-asset instance: %@", buf, 0x16u);
    }

    (*(v4 + 2))(v4, v10);
  }
}

- (void)registerForMobileAssetUpdateNotification
{
  v3 = [MAAutoAssetNotifications notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:@"com.apple.MobileAsset.OSEligibility"];
  out_token = -1;
  v4 = [v3 UTF8String];
  v5 = [(MobileAssetManager *)self mobileAssetQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100024A54;
  handler[3] = &unk_100046828;
  v8 = v3;
  v9 = self;
  v6 = v3;
  notify_register_dispatch(v4, &out_token, v5, handler);
}

- (MobileAssetManager)init
{
  v14.receiver = self;
  v14.super_class = MobileAssetManager;
  v2 = [(MobileAssetManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.eligibility.MobileAssetManager.mobileAsset", v3);

    mobileAssetQueue = v2->_mobileAssetQueue;
    v2->_mobileAssetQueue = v4;
    v6 = v4;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.eligibility.MobileAssetManager.internal", v7);

    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v8;
    v10 = v8;

    [(MobileAssetManager *)v2 _initDomainsWithConfigPlist:0];
    [(MobileAssetManager *)v2 registerForMobileAssetUpdateNotification];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024D9C;
    v12[3] = &unk_1000469A0;
    v13 = v2;
    sub_100025F54(v6, v12);
  }

  return v2;
}

- (void)_initDomainsWithConfigPlist:(id)a3
{
  v4 = a3;
  v5 = &off_100057AB8;
  v6 = &off_100057AB8;
  v7 = [&off_100057AB8 objectForKeyedSubscript:@"Version"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "[MobileAssetManager _initDomainsWithConfigPlist:]";
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s: Fallback Mobile Asset is malformed: Missing version key", buf, 0xCu);
    }

    v9 = &off_10004ADA0;
  }

  [(MobileAssetManager *)self setFallbackVersion:v9];
  if (!v4)
  {
    v13 = 0;
LABEL_15:
    v14 = &off_100057AB8;
    goto LABEL_16;
  }

  v11 = [v4 objectForKeyedSubscript:@"Version"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 || [v9 compare:v13] != -1)
  {
    goto LABEL_15;
  }

  v14 = v4;

LABEL_16:
  v15 = +[GlobalConfiguration sharedInstance];
  v16 = [v15 hasInternalContent];

  if (v16)
  {
    v32 = 0;
    if (asprintf(&v32, "%s%s", "/", "/private/var/db/eligibilityd/mobileAssetParametersOverride.plist") == -1)
    {
      v17 = sub_10001F638();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "copy_eligibility_domain_mobile_asset_override_path";
        v35 = 2080;
        v36 = "/private/var/db/eligibilityd/mobileAssetParametersOverride.plist";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
      }
    }

    v18 = v32;
    if (v32)
    {
      v19 = [NSString stringWithUTF8String:v32];
      free(v18);
      v20 = [NSURL fileURLWithPath:v19 isDirectory:0];
      v21 = [NSDictionary dictionaryWithContentsOfURL:v20 error:0];
      if (v21)
      {
        v22 = sub_10001F638();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v20 path];
          *buf = 136315394;
          v34 = "[MobileAssetManager _initDomainsWithConfigPlist:]";
          v35 = 2112;
          v36 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: Found Mobile Asset override plist at path %@; Using that instead instead of real values", buf, 0x16u);
        }

        v24 = v21;
        v14 = v24;
      }
    }

    else
    {
      v19 = sub_10001F638();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v34 = "[MobileAssetManager _initDomainsWithConfigPlist:]";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Failed to copy mobile asset override path; Ignoring it", buf, 0xCu);
      }
    }
  }

  v25 = [(MobileAssetManager *)self constructDomainsWithPlist:v14];
  v26 = [(MobileAssetManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025664;
  block[3] = &unk_100046778;
  block[4] = self;
  v30 = v13;
  v31 = v25;
  v27 = v25;
  v28 = v13;
  dispatch_sync(v26, block);
}

- (id)constructDomainsWithPlist:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [[PlistParser alloc] initWithPlistDictionary:v3 dataStore:0 error:&v9];

  v5 = v9;
  if (v4)
  {
    v6 = [(PlistParser *)v4 domains];
  }

  else
  {
    v7 = sub_10001F638();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[MobileAssetManager constructDomainsWithPlist:]";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Malformed plist, skipping update: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSArray)domains
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100025908;
  v11 = sub_100025918;
  v12 = 0;
  v3 = [(MobileAssetManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025920;
  v6[3] = &unk_100046A18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSNumber)assetVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100025908;
  v11 = sub_100025918;
  v12 = 0;
  v3 = [(MobileAssetManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025A50;
  v6[3] = &unk_100046A18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025B04;
  block[3] = &unk_100046900;
  block[4] = a1;
  if (qword_10005D520 != -1)
  {
    dispatch_once(&qword_10005D520, block);
  }

  v2 = qword_10005D518;

  return v2;
}

@end