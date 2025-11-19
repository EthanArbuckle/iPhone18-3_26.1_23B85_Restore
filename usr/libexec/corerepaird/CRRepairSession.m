@interface CRRepairSession
- (BOOL)isSSRBootIntentSet;
- (CRRepairSession)initWithCoder:(id)a3;
- (CRRepairSession)initWithDelegate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endWithCompletionHandler:(id)a3;
- (void)ping:(id)a3;
- (void)requestAsset:(id)a3 withCompletion:(id)a4;
- (void)requestSuiteResult:(id)a3 withCompletion:(id)a4;
- (void)requestSuiteStart:(id)a3 withCompletionHandler:(id)a4;
- (void)requestSuitesAvailableWithCompletionHandler:(id)a3;
- (void)requestTermsAndConditionsWithCompletion:(id)a3;
- (void)sendTestResult:(id)a3 withCompletion:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation CRRepairSession

- (CRRepairSession)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRRepairSession;
  v5 = [(CRRepairSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CRRepairSession *)v5 setDelegate:v4];
    v7 = [[CRTestSequencer alloc] initWithDelegate:v4];
    [(CRRepairSession *)v6 setTestSequencer:v7];

    v8 = dispatch_queue_create("com.apple.corerepair.testSequencerQueue", &_dispatch_queue_attr_concurrent);
    [(CRRepairSession *)v6 setTestSequencerQueue:v8];

    [(CRRepairSession *)v6 setSuiteId:&off_100011390];
  }

  return v6;
}

- (void)endWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CRRepairSession endWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", &v5, 0xCu);
  }

  v3[2](v3, 0);
}

- (void)requestAsset:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CRRepairSession requestAsset:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", buf, 0xCu);
  }

  v8 = [@"/System/Library/PrivateFrameworks/CoreRepairCore.framework" stringByAppendingPathComponent:v5];
  v12 = 0;
  v9 = [NSData dataWithContentsOfFile:v8 options:2 error:&v12];
  v10 = v12;
  if (v10)
  {
    v11 = handleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000093B0(v5, v10, v11);
    }
  }

  v6[2](v6, v9, v10);
}

- (void)requestSuiteResult:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CRRepairSession requestSuiteResult:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", &v9, 0xCu);
  }

  v7 = [(CRRepairSession *)self testSequencer];
  v8 = [v7 suiteResult];
  v5[2](v5, v8, 0);
}

- (void)requestSuiteStart:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CRRepairSession requestSuiteStart:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", buf, 0xCu);
  }

  v7 = [(CRRepairSession *)self suiteId];
  v5[2](v5, v7, @"START_SUITE", @"SSR suite", 0);

  v8 = [(CRRepairSession *)self testSequencerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005234;
  block[3] = &unk_100010300;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[CRRepairSession requestSuitesAvailableWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = [v6 deviceSupportsRepairBootIntent];

  if (!v7)
  {
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100009464(v12);
    }

    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_37;
  }

  if ([(CRRepairSession *)self isSSRBootIntentSet])
  {
LABEL_5:
    v8 = [ASTSuite alloc];
    v9 = [(CRRepairSession *)self suiteId];
    v10 = [v8 initWithId:v9 suiteNameLocalizedString:&stru_100010A30 suiteDescriptionLocalizedString:&stru_100010A30 estimatedCompletionTimeLocalizedString:0 primaryAssetLocator:0 secondaryAssetLocator:0];

    v11 = [NSArray arrayWithObject:v10];
    (*(v4 + 2))(v4, v11, 0);

LABEL_36:
    goto LABEL_37;
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Boot intent not set, check for unsealed data", buf, 2u);
  }

  v42 = 0;
  v14 = [CRFDRUtils findUnsealedDataWithError:&v42];
  v15 = v42;
  v10 = v15;
  if (!v14 || v15)
  {
    v29 = handleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000094EC(v10, v29);
    }

    goto LABEL_35;
  }

  if (![v14 count])
  {
    v29 = handleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No delta components found", buf, 2u);
    }

LABEL_35:

    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_36;
  }

  v16 = +[CRFDRDeviceController sharedSingleton];
  v17 = [v16 getHandlerForDevice];

  if (v17)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v14;
    v32 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v32)
    {
      v18 = *v39;
      v33 = v14;
      v31 = *v39;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = [v14 objectForKeyedSubscript:v20];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v35;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v35 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [v17 spcWithComponent:v20 withIdentifier:*(*(&v34 + 1) + 8 * j)];

                if (v27)
                {

                  goto LABEL_5;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          v14 = v33;
          v18 = v31;
        }

        v32 = [v33 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v32);
    }

    v28 = handleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No valid SPC found", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

  else
  {
    v30 = handleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000094A8(v30);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

LABEL_37:
}

- (void)requestTermsAndConditionsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CRRepairSession requestTermsAndConditionsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", &v6, 0xCu);
  }

  v5 = [CRLocalization localizedStringWithKey:@"CR_TERMS_CONDITIONS"];
  v3[2](v3, v5, 0);
}

- (void)sendTestResult:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CRRepairSession sendTestResult:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", buf, 0xCu);
  }

  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "testResult:%@", buf, 0xCu);
  }

  v7[2](v7, 0);
  v10 = [(CRRepairSession *)self testSequencerQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005A48;
  v12[3] = &unk_100010328;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  dispatch_async(v10, v12);
}

- (void)startWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CRRepairSession startWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", &v5, 0xCu);
  }

  v3[2](v3, 0);
}

- (void)ping:(id)a3
{
  v3 = a3;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CRRepairSession ping:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CRDiagnostics][%s]", &v5, 0xCu);
  }

  v3[2](v3, 0);
}

- (BOOL)isSSRBootIntentSet
{
  v2 = [NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist", @"com.apple.CheckerBoard"];
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
  v4 = [v3 objectForKey:@"persistedBootIntentReason"];
  v5 = v4;
  v6 = v4 && ([v4 isEqualToNumber:&off_1000113A8] & 1) != 0;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRRepairSession *)self delegate];
  [v4 encodeObject:v5 forKey:@"delegate"];
}

- (CRRepairSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"delegate"];

  v13 = [[CRRepairSession alloc] initWithDelegate:v12];
  return v13;
}

@end