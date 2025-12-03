@interface KTLogClient
+ (id)requiredBagKeys;
- (BOOL)configured;
- (BOOL)shouldUseReversePush:(BOOL)push;
- (KTLogClient)init;
- (KTLogClient)initWithBackgroundSession:(id)session transparencyAnalytics:(id)analytics dataStore:(id)store settings:(id)settings;
- (KTLogClient)initWithSettings:(id)settings;
- (NSURL)consistencyProofURI;
- (NSURL)publicKeysURI;
- (id)batchQueryURI;
- (id)copyConfigurationBag:(id *)bag;
- (id)queryURI;
- (id)reportToAppleURI;
- (id)revisionLogProofURI;
- (unint64_t)batchQueryMaxURIs;
- (unint64_t)consistencyMaxProofs;
- (unint64_t)revisionLogMaxProofs;
- (unint64_t)userReversePushPercentage;
- (unint64_t)xpcActivityReversePushPercentage;
- (void)clearState:(id *)state;
- (void)configure:(id)configure;
- (void)configureFromNetwork:(id)network;
- (void)fetchBatchQuery:(id)query uuid:(id)uuid userInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)fetchConfigBag:(id)bag completionHandler:(id)handler;
- (void)fetchConsistencyProof:(id)proof uuid:(id)uuid completionHandler:(id)handler;
- (void)fetchPublicKeys:(id)keys completionHandler:(id)handler;
- (void)fetchQuery:(id)query uuid:(id)uuid userInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)fetchRevisionLogInclusionProof:(id)proof uuid:(id)uuid completionHandler:(id)handler;
- (void)postReport:(id)report uuid:(id)uuid application:(id)application completionHandler:(id)handler;
- (void)triggerConfigBagFetch:(double)fetch;
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

- (KTLogClient)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = KTLogClient;
  v5 = [(KTLogClient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(KTLogClient *)v5 setOverrideIDMSFetchTime:604800.0];
    [(TransparencyLogClient *)v6 setSettings:settingsCopy];
    settings = [(TransparencyLogClient *)v6 settings];
    -[KTLogClient setCurrentEnvironment:](v6, "setCurrentEnvironment:", [settings getEnvironment]);

    v8 = [TransparencyConfigBag alloc];
    v9 = +[KTLogClient requiredBagKeys];
    settings2 = [(TransparencyLogClient *)v6 settings];
    v11 = [TransparencyFileSupport transparencyFilesPath:0];
    v12 = [(TransparencyConfigBag *)v8 initWithRequiredKeys:v9 settings:settings2 directory:v11 configApp:1];
    [(KTLogClient *)v6 setConfigBag:v12];
  }

  return v6;
}

- (KTLogClient)initWithBackgroundSession:(id)session transparencyAnalytics:(id)analytics dataStore:(id)store settings:(id)settings
{
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = KTLogClient;
  v11 = [(TransparencyLogClient *)&v19 initWithBackgroundSession:session transparencyAnalytics:analytics dataStore:store settings:settingsCopy];
  v12 = v11;
  if (v11)
  {
    [(KTLogClient *)v11 setOverrideIDMSFetchTime:604800.0];
    settings = [(TransparencyLogClient *)v12 settings];
    -[KTLogClient setCurrentEnvironment:](v12, "setCurrentEnvironment:", [settings getEnvironment]);

    v14 = [TransparencyConfigBag alloc];
    v15 = +[KTLogClient requiredBagKeys];
    v16 = [TransparencyFileSupport transparencyFilesPath:0];
    v17 = [(TransparencyConfigBag *)v14 initWithRequiredKeys:v15 settings:settingsCopy directory:v16 configApp:1];
    [(KTLogClient *)v12 setConfigBag:v17];
  }

  return v12;
}

- (void)configure:(id)configure
{
  configureCopy = configure;
  configBag = [(KTLogClient *)self configBag];
  settings = [(TransparencyLogClient *)self settings];
  [settings uiBlockingNetworkTimeout];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FA830;
  v10[3] = &unk_10031AA28;
  v10[4] = self;
  v11 = configureCopy;
  v9 = configureCopy;
  [configBag configureWithFetcher:self networkTimeout:v10 completionHandler:v8];
}

- (void)configureFromNetwork:(id)network
{
  networkCopy = network;
  configBag = [(KTLogClient *)self configBag];
  settings = [(TransparencyLogClient *)self settings];
  [settings uiBlockingNetworkTimeout];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FA9B8;
  v10[3] = &unk_10031AA28;
  v10[4] = self;
  v11 = networkCopy;
  v9 = networkCopy;
  [configBag configureFromNetworkWithFetcher:self networkTimeout:v10 completionHandler:v8];
}

- (BOOL)configured
{
  configBag = [(KTLogClient *)self configBag];
  configured = [configBag configured];

  return configured;
}

- (void)clearState:(id *)state
{
  configBag = [(KTLogClient *)self configBag];
  [configBag clearState:state];
}

- (void)fetchConfigBag:(id)bag completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FAB70;
  v7[3] = &unk_1003294E0;
  handlerCopy = handler;
  v6 = handlerCopy;
  [(TransparencyLogClient *)self fetch:bag allowEmptyData:0 useReversePush:0 completionHandler:v7];
}

- (void)triggerConfigBagFetch:(double)fetch
{
  triggerInterface = [(KTLogClient *)self triggerInterface];
  [triggerInterface triggerConfigBagFetch:fetch];
}

- (id)copyConfigurationBag:(id *)bag
{
  configBag = [(KTLogClient *)self configBag];
  v5 = [configBag copyConfigurationBag:bag];

  return v5;
}

- (unint64_t)userReversePushPercentage
{
  configBag = [(KTLogClient *)self configBag];
  overrideReversePushConfig = [configBag overrideReversePushConfig];

  configBag2 = [(KTLogClient *)self configBag];
  v6 = configBag2;
  if (overrideReversePushConfig)
  {
    overrideReversePushPercentage = [configBag2 overrideReversePushPercentage];
  }

  else
  {
    overrideReversePushPercentage = [configBag2 percentageForKey:@"reverse-push-user-action-percent"];
  }

  v8 = overrideReversePushPercentage;

  return v8;
}

- (unint64_t)xpcActivityReversePushPercentage
{
  configBag = [(KTLogClient *)self configBag];
  overrideReversePushConfig = [configBag overrideReversePushConfig];

  configBag2 = [(KTLogClient *)self configBag];
  v6 = configBag2;
  if (overrideReversePushConfig)
  {
    overrideReversePushPercentage = [configBag2 overrideReversePushPercentage];
  }

  else
  {
    overrideReversePushPercentage = [configBag2 percentageForKey:@"reverse-push-nightly-task-percent"];
  }

  v8 = overrideReversePushPercentage;

  return v8;
}

- (unint64_t)batchQueryMaxURIs
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag uintegerForKey:@"batch-query-max-uris"];

  return v3;
}

- (unint64_t)consistencyMaxProofs
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag uintegerForKey:@"batch-consistency-max-proofs"];

  return v3;
}

- (unint64_t)revisionLogMaxProofs
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag uintegerForKey:@"batch-log-inclusion-max-proofs"];

  return v3;
}

- (id)queryURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-query"];

  return v3;
}

- (id)batchQueryURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-batch-query"];

  return v3;
}

- (NSURL)consistencyProofURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-consistency-proof"];

  return v3;
}

- (NSURL)publicKeysURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-public-keys"];

  return v3;
}

- (id)revisionLogProofURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-revision-log-inclusion-proof"];

  return v3;
}

- (id)reportToAppleURI
{
  configBag = [(KTLogClient *)self configBag];
  v3 = [configBag urlForKey:@"rest-report-to-apple"];

  return v3;
}

- (BOOL)shouldUseReversePush:(BOOL)push
{
  if (push)
  {
    userReversePushPercentage = [(KTLogClient *)self userReversePushPercentage];
  }

  else
  {
    userReversePushPercentage = [(KTLogClient *)self xpcActivityReversePushPercentage];
  }

  v4 = userReversePushPercentage;
  if (userReversePushPercentage == 100)
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

  else if (userReversePushPercentage)
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

- (void)fetchPublicKeys:(id)keys completionHandler:(id)handler
{
  keysCopy = keys;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FB3B8;
  v9[3] = &unk_1003295D0;
  selfCopy = self;
  handlerCopy = handler;
  v10 = keysCopy;
  v7 = keysCopy;
  v8 = handlerCopy;
  [(KTLogClient *)self configure:v9];
}

- (void)postReport:(id)report uuid:(id)uuid application:(id)application completionHandler:(id)handler
{
  reportCopy = report;
  uuidCopy = uuid;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FBB50;
  v16[3] = &unk_100329620;
  applicationCopy = application;
  handlerCopy = handler;
  v16[4] = self;
  v17 = reportCopy;
  v18 = uuidCopy;
  v12 = applicationCopy;
  v13 = uuidCopy;
  v14 = reportCopy;
  v15 = handlerCopy;
  [(KTLogClient *)self configure:v16];
}

- (void)fetchBatchQuery:(id)query uuid:(id)uuid userInitiated:(BOOL)initiated completionHandler:(id)handler
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FC74C;
  v13[3] = &unk_100318B18;
  queryCopy = query;
  selfCopy = self;
  uuidCopy = uuid;
  handlerCopy = handler;
  initiatedCopy = initiated;
  v10 = uuidCopy;
  v11 = queryCopy;
  v12 = handlerCopy;
  [(KTLogClient *)self configure:v13];
}

- (void)fetchQuery:(id)query uuid:(id)uuid userInitiated:(BOOL)initiated completionHandler:(id)handler
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FCF8C;
  v13[3] = &unk_100318B18;
  queryCopy = query;
  selfCopy = self;
  uuidCopy = uuid;
  handlerCopy = handler;
  initiatedCopy = initiated;
  v10 = uuidCopy;
  v11 = queryCopy;
  v12 = handlerCopy;
  [(KTLogClient *)self configure:v13];
}

- (void)fetchConsistencyProof:(id)proof uuid:(id)uuid completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD380;
  v10[3] = &unk_100329748;
  selfCopy = self;
  proofCopy = proof;
  uuidCopy = uuid;
  handlerCopy = handler;
  v7 = uuidCopy;
  v8 = proofCopy;
  v9 = handlerCopy;
  [(KTLogClient *)selfCopy configure:v10];
}

- (void)fetchRevisionLogInclusionProof:(id)proof uuid:(id)uuid completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD710;
  v10[3] = &unk_100329748;
  selfCopy = self;
  proofCopy = proof;
  uuidCopy = uuid;
  handlerCopy = handler;
  v7 = uuidCopy;
  v8 = proofCopy;
  v9 = handlerCopy;
  [(KTLogClient *)selfCopy configure:v10];
}

@end