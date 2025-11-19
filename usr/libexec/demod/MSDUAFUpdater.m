@interface MSDUAFUpdater
+ (id)collectAllSubscribersRequiredForAppleIntelligence;
+ (id)sharedInstance;
- (BOOL)checkSiriAssetsAvailable;
- (MSDUAFUpdater)initWithAssetSetManager:(id)a3;
- (void)downloadAllAssetsFromUAFWithCompletion:(id)a3;
- (void)downloadAssetsFromUAFForSubscribers:(id)a3 withCompletion:(id)a4;
- (void)downloadSiriAssetsFromUAFWithCompletion:(id)a3;
@end

@implementation MSDUAFUpdater

+ (id)sharedInstance
{
  if (qword_1001A5980 != -1)
  {
    sub_1000E2DF0();
  }

  v3 = qword_1001A5978;

  return v3;
}

- (MSDUAFUpdater)initWithAssetSetManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MSDUAFUpdater;
  v5 = [(MSDUAFUpdater *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MSDUAFUpdater *)v5 setUAFAssetSetManager:v4];
    v7 = dispatch_queue_create("com.apple.MobileStoreDemo.UAFDownloadQueue", 0);
    [(MSDUAFUpdater *)v6 setUafDownloadQueue:v7];

    v8 = v6;
  }

  return v6;
}

+ (id)collectAllSubscribersRequiredForAppleIntelligence
{
  v2 = [a1 collectAllSubscribersRequiredForSiri];
  v3 = [&off_10017BF88 arrayByAddingObjectsFromArray:v2];

  return v3;
}

- (void)downloadAllAssetsFromUAFWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDUAFUpdater downloadAllAssetsFromUAFWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - called", &v7, 0xCu);
  }

  v6 = +[MSDUAFUpdater collectAllSubscribersRequiredForAppleIntelligence];
  [(MSDUAFUpdater *)self downloadAssetsFromUAFForSubscribers:v6 withCompletion:v4];
}

- (void)downloadSiriAssetsFromUAFWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDUAFUpdater downloadSiriAssetsFromUAFWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - called", &v7, 0xCu);
  }

  v6 = +[MSDUAFUpdater collectAllSubscribersRequiredForSiri];
  [(MSDUAFUpdater *)self downloadAssetsFromUAFForSubscribers:v6 withCompletion:v4];
}

- (void)downloadAssetsFromUAFForSubscribers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[MSDUAFUpdater downloadAssetsFromUAFForSubscribers:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - called", buf, 0xCu);
  }

  v9 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 setObject:&__NSArray0__struct forKey:*(*(&v21 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = [(MSDUAFUpdater *)self UAFAssetSetManager];
  v16 = [v9 copy];
  v17 = [(MSDUAFUpdater *)self uafDownloadQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100095154;
  v19[3] = &unk_10016BC10;
  v20 = v7;
  v18 = v7;
  [v15 updateAssetsForSubscribers:v16 policies:0 queue:v17 detailedProgress:&stru_10016BBE8 completion:v19];
}

- (BOOL)checkSiriAssetsAvailable
{
  v2 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = 10;
  while (1)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking whether Siri assets are available...", buf, 2u);
    }

    v5 = dispatch_semaphore_create(0);
    v6 = +[AFSettingsConnection sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100095524;
    v15[3] = &unk_10016BC38;
    v17 = &v18;
    v2 = v5;
    v16 = v2;
    [v6 areSiriUODAssetsAvailable:v15];

    v7 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v2, v7))
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v23[0] = v3;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Timed out of checking if assets are available this instance! %ld checks remaining.", buf, 0xCu);
      }
    }

    if (*(v19 + 24) == 1)
    {
      break;
    }

    if (v3-- <= 1)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2E04(v12);
      }

      goto LABEL_19;
    }

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v23[0]) = 2;
      WORD2(v23[0]) = 2048;
      *(v23 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Siri assets not available yet.  Sleeping for %d minutes before retry.  %ld retries left.", buf, 0x12u);
    }

    sleep(0x78u);
    v11 = *(v19 + 24);
    if (v11 == 1)
    {
      goto LABEL_20;
    }
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Siri assets have now become available!", buf, 2u);
  }

LABEL_19:

  LOBYTE(v11) = *(v19 + 24);
LABEL_20:

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

@end