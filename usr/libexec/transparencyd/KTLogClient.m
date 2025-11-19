@interface KTLogClient
+ (id)requiredBagKeys;
- (BOOL)configured;
- (BOOL)shouldUseReversePush:(BOOL)a3;
- (KTLogClient)init;
- (KTLogClient)initWithBackgroundSession:(id)a3 transparencyAnalytics:(id)a4 dataStore:(id)a5 settings:(id)a6;
- (KTLogClient)initWithSettings:(id)a3;
- (NSURL)consistencyProofURI;
- (NSURL)publicKeysURI;
- (id)batchQueryURI;
- (id)copyConfigurationBag:(id *)a3;
- (id)queryURI;
- (id)reportToAppleURI;
- (id)revisionLogProofURI;
- (unint64_t)batchQueryMaxURIs;
- (unint64_t)consistencyMaxProofs;
- (unint64_t)revisionLogMaxProofs;
- (unint64_t)userReversePushPercentage;
- (unint64_t)xpcActivityReversePushPercentage;
- (void)clearState:(id *)a3;
- (void)configure:(id)a3;
- (void)configureFromNetwork:(id)a3;
- (void)fetchBatchQuery:(id)a3 uuid:(id)a4 userInitiated:(BOOL)a5 completionHandler:(id)a6;
- (void)fetchConfigBag:(id)a3 completionHandler:(id)a4;
- (void)fetchConsistencyProof:(id)a3 uuid:(id)a4 completionHandler:(id)a5;
- (void)fetchPublicKeys:(id)a3 completionHandler:(id)a4;
- (void)fetchQuery:(id)a3 uuid:(id)a4 userInitiated:(BOOL)a5 completionHandler:(id)a6;
- (void)fetchRevisionLogInclusionProof:(id)a3 uuid:(id)a4 completionHandler:(id)a5;
- (void)postReport:(id)a3 uuid:(id)a4 application:(id)a5 completionHandler:(id)a6;
- (void)triggerConfigBagFetch:(double)a3;
@end

@implementation KTLogClient

+ (id)requiredBagKeys
{
  v4[0] = @"build-version";
  v5[0] = objc_opt_class();
  v4[1] = @"rest-query";
  v5[1] = objc_opt_class();
  v4[2] = @"rest-batch-query";
  v5[2] = objc_opt_class();
  v4[3] = @"batch-query-max-uris";
  v5[3] = objc_opt_class();
  v4[4] = @"batch-log-inclusion-max-proofs";
  v5[4] = objc_opt_class();
  v4[5] = @"batch-consistency-max-proofs";
  v5[5] = objc_opt_class();
  v4[6] = @"rest-consistency-proof";
  v5[6] = objc_opt_class();
  v4[7] = @"rest-public-keys";
  v5[7] = objc_opt_class();
  v4[8] = @"rest-revision-log-inclusion-proof";
  v5[8] = objc_opt_class();
  v4[9] = @"rest-report-to-apple";
  v5[9] = objc_opt_class();
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];

  return v2;
}

- (KTLogClient)init
{
  v3 = objc_alloc_init(TransparencySettings);
  v4 = [(KTLogClient *)self initWithSettings:v3];

  return v4;
}

- (KTLogClient)initWithSettings:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = KTLogClient;
  v5 = [(KTLogClient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(KTLogClient *)v5 setOverrideIDMSFetchTime:604800.0];
    [(TransparencyLogClient *)v6 setSettings:v4];
    v7 = [(TransparencyLogClient *)v6 settings];
    -[KTLogClient setCurrentEnvironment:](v6, "setCurrentEnvironment:", [v7 getEnvironment]);

    v8 = [TransparencyConfigBag alloc];
    v9 = +[KTLogClient requiredBagKeys];
    v10 = [(TransparencyLogClient *)v6 settings];
    v11 = [TransparencyFileSupport transparencyFilesPath:0];
    v12 = [(TransparencyConfigBag *)v8 initWithRequiredKeys:v9 settings:v10 directory:v11 configApp:1];
    [(KTLogClient *)v6 setConfigBag:v12];
  }

  return v6;
}

- (KTLogClient)initWithBackgroundSession:(id)a3 transparencyAnalytics:(id)a4 dataStore:(id)a5 settings:(id)a6
{
  v10 = a6;
  v19.receiver = self;
  v19.super_class = KTLogClient;
  v11 = [(TransparencyLogClient *)&v19 initWithBackgroundSession:a3 transparencyAnalytics:a4 dataStore:a5 settings:v10];
  v12 = v11;
  if (v11)
  {
    [(KTLogClient *)v11 setOverrideIDMSFetchTime:604800.0];
    v13 = [(TransparencyLogClient *)v12 settings];
    -[KTLogClient setCurrentEnvironment:](v12, "setCurrentEnvironment:", [v13 getEnvironment]);

    v14 = [TransparencyConfigBag alloc];
    v15 = +[KTLogClient requiredBagKeys];
    v16 = [TransparencyFileSupport transparencyFilesPath:0];
    v17 = [(TransparencyConfigBag *)v14 initWithRequiredKeys:v15 settings:v10 directory:v16 configApp:1];
    [(KTLogClient *)v12 setConfigBag:v17];
  }

  return v12;
}

- (void)configure:(id)a3
{
  v4 = a3;
  v5 = [(KTLogClient *)self configBag];
  v6 = [(TransparencyLogClient *)self settings];
  [v6 uiBlockingNetworkTimeout];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FA830;
  v10[3] = &unk_10031AA28;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 configureWithFetcher:self networkTimeout:v10 completionHandler:v8];
}

- (void)configureFromNetwork:(id)a3
{
  v4 = a3;
  v5 = [(KTLogClient *)self configBag];
  v6 = [(TransparencyLogClient *)self settings];
  [v6 uiBlockingNetworkTimeout];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FA9B8;
  v10[3] = &unk_10031AA28;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 configureFromNetworkWithFetcher:self networkTimeout:v10 completionHandler:v8];
}

- (BOOL)configured
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 configured];

  return v3;
}

- (void)clearState:(id *)a3
{
  v4 = [(KTLogClient *)self configBag];
  [v4 clearState:a3];
}

- (void)fetchConfigBag:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FAB70;
  v7[3] = &unk_1003294E0;
  v8 = a4;
  v6 = v8;
  [(TransparencyLogClient *)self fetch:a3 allowEmptyData:0 useReversePush:0 completionHandler:v7];
}

- (void)triggerConfigBagFetch:(double)a3
{
  v4 = [(KTLogClient *)self triggerInterface];
  [v4 triggerConfigBagFetch:a3];
}

- (id)copyConfigurationBag:(id *)a3
{
  v4 = [(KTLogClient *)self configBag];
  v5 = [v4 copyConfigurationBag:a3];

  return v5;
}

- (unint64_t)userReversePushPercentage
{
  v3 = [(KTLogClient *)self configBag];
  v4 = [v3 overrideReversePushConfig];

  v5 = [(KTLogClient *)self configBag];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 overrideReversePushPercentage];
  }

  else
  {
    v7 = [v5 percentageForKey:@"reverse-push-user-action-percent"];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)xpcActivityReversePushPercentage
{
  v3 = [(KTLogClient *)self configBag];
  v4 = [v3 overrideReversePushConfig];

  v5 = [(KTLogClient *)self configBag];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 overrideReversePushPercentage];
  }

  else
  {
    v7 = [v5 percentageForKey:@"reverse-push-nightly-task-percent"];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)batchQueryMaxURIs
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 uintegerForKey:@"batch-query-max-uris"];

  return v3;
}

- (unint64_t)consistencyMaxProofs
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 uintegerForKey:@"batch-consistency-max-proofs"];

  return v3;
}

- (unint64_t)revisionLogMaxProofs
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 uintegerForKey:@"batch-log-inclusion-max-proofs"];

  return v3;
}

- (id)queryURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-query"];

  return v3;
}

- (id)batchQueryURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-batch-query"];

  return v3;
}

- (NSURL)consistencyProofURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-consistency-proof"];

  return v3;
}

- (NSURL)publicKeysURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-public-keys"];

  return v3;
}

- (id)revisionLogProofURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-revision-log-inclusion-proof"];

  return v3;
}

- (id)reportToAppleURI
{
  v2 = [(KTLogClient *)self configBag];
  v3 = [v2 urlForKey:@"rest-report-to-apple"];

  return v3;
}

- (BOOL)shouldUseReversePush:(BOOL)a3
{
  if (a3)
  {
    v3 = [(KTLogClient *)self userReversePushPercentage];
  }

  else
  {
    v3 = [(KTLogClient *)self xpcActivityReversePushPercentage];
  }

  v4 = v3;
  if (v3 == 100)
  {
    if (qword_10039CBC8 != -1)
    {
      sub_10025D9DC();
    }

    v7 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Reverse push enabled by config bag", &v12, 2u);
    }

    return 1;
  }

  else if (v3)
  {
    v8 = arc4random();
    v9 = v4 * 4294967300.0 / 100.0;
    v6 = v9 > v8;
    if (qword_10039CBC8 != -1)
    {
      sub_10025DA04();
    }

    v10 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134218496;
      v13 = v4;
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = v9 > v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Reverse push percentage: %lu; die roll: %u; decision: %d", &v12, 0x18u);
    }
  }

  else
  {
    if (qword_10039CBC8 != -1)
    {
      sub_10025D9F0();
    }

    v5 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Reverse push disabled by config bag", &v12, 2u);
    }

    return 0;
  }

  return v6;
}

- (void)fetchPublicKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FB3B8;
  v9[3] = &unk_1003295D0;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [(KTLogClient *)self configure:v9];
}

- (void)postReport:(id)a3 uuid:(id)a4 application:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FBB50;
  v16[3] = &unk_100329620;
  v19 = a5;
  v20 = a6;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v12 = v19;
  v13 = v11;
  v14 = v10;
  v15 = v20;
  [(KTLogClient *)self configure:v16];
}

- (void)fetchBatchQuery:(id)a3 uuid:(id)a4 userInitiated:(BOOL)a5 completionHandler:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FC74C;
  v13[3] = &unk_100318B18;
  v14 = a3;
  v15 = self;
  v16 = a4;
  v17 = a6;
  v18 = a5;
  v10 = v16;
  v11 = v14;
  v12 = v17;
  [(KTLogClient *)self configure:v13];
}

- (void)fetchQuery:(id)a3 uuid:(id)a4 userInitiated:(BOOL)a5 completionHandler:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FCF8C;
  v13[3] = &unk_100318B18;
  v14 = a3;
  v15 = self;
  v16 = a4;
  v17 = a6;
  v18 = a5;
  v10 = v16;
  v11 = v14;
  v12 = v17;
  [(KTLogClient *)self configure:v13];
}

- (void)fetchConsistencyProof:(id)a3 uuid:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD380;
  v10[3] = &unk_100329748;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v14;
  [(KTLogClient *)v11 configure:v10];
}

- (void)fetchRevisionLogInclusionProof:(id)a3 uuid:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD710;
  v10[3] = &unk_100329748;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v14;
  [(KTLogClient *)v11 configure:v10];
}

@end