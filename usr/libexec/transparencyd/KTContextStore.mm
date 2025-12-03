@interface KTContextStore
- (BOOL)shouldGossip;
- (KTContextStore)initWithDataStore:(id)store staticKeyStore:(id)keyStore keyStore:(id)a5 cloudRecords:(id)records accountKeyServer:(id)server settings:(id)settings followup:(id)followup;
- (KTContextStore)initWithDataStore:(id)store staticKeyStore:(id)keyStore keyStore:(id)a5 cloudRecords:(id)records accountKeyServer:(id)server stateMachine:(id)machine kvs:(id)kvs settings:(id)self0 followup:(id)self1;
- (KTSMManager)stateMachine;
- (NSDictionary)contexts;
- (id)createContextForApplication:(id)application dataStore:(id)store staticKeyStore:(id)keyStore logClient:(id)client stateMachine:(id)machine;
- (id)createContextForTLT:(id)t staticKeyStore:(id)store logClient:(id)client stateMachine:(id)machine;
- (id)getCachedValidatePeerResults:(id)results application:(id)application;
- (id)serializeTranscripts;
- (void)changeOptInState:(unint64_t)state application:(id)application logClient:(id)client completionBlock:(id)block;
- (void)clearApplicationState:(id)state logClient:(id)client completionBlock:(id)block;
- (void)clearContextForApplication:(id)application;
- (void)contextForApplication:(id)application logClient:(id)client fetchState:(BOOL)state completionHandler:(id)handler;
- (void)drainContextStore;
- (void)failHeadDownload:(id)download application:(id)application failure:(id)failure retry:(BOOL)retry logClient:(id)client;
- (void)forcedConfigure:(BOOL)configure logClient:(id)client applicationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getKTOptInState:(id)state sync:(BOOL)sync logClient:(id)client completionblock:(id)completionblock;
- (void)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id application:(id)application logClient:(id)client transparentDataHandler:(id)handler completionHandler:(id)self0;
- (void)handlePeerStateChange:(id)change application:(id)application;
- (void)ignoreFailure:(id)failure error:(id *)error;
- (void)ignoreFailureForResults:(id)results application:(id)application completionBlock:(id)block;
- (void)queryForUris:(id)uris application:(id)application logClient:(id)client userInitiated:(BOOL)initiated cachedYoungerThan:(id)than completionHandler:(id)handler;
- (void)receivedSTHsFromPeers:(id)peers logClient:(id)client verifier:(id)verifier block:(id)block;
- (void)replaySelfValidate:(id)validate application:(id)application pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time logClient:(id)client completionHandler:(id)self0;
- (void)retrieveTLTSTH:(id)h block:(id)block;
- (void)rollKeyForApplication:(id)application logClient:(id)client completionBlock:(id)block;
- (void)setContext:(id)context forKey:(id)key;
- (void)signData:(id)data application:(id)application logClient:(id)client completionBlock:(id)block;
- (void)storeContext:(id)context application:(id)application;
- (void)validateEnrollmentRequestId:(id)id application:(id)application logClient:(id)client cloudOptIn:(id)in completionHandler:(id)handler;
- (void)validateIDSPeerURI:(id)i application:(id)application idsData:(id)data ktData:(id)ktData logClient:(id)client complete:(id)complete;
- (void)validatePeerRequestId:(id)id uri:(id)uri application:(id)application logClient:(id)client revalidate:(BOOL)revalidate fetchNow:(BOOL)now completionHandler:(id)handler;
- (void)validatePeers:(id)peers application:(id)application fetchNow:(BOOL)now logClient:(id)client completionBlock:(id)block;
- (void)verifyHeadConsistencyDownload:(id)download application:(id)application logClient:(id)client;
- (void)verifyHeadInclusionDownload:(id)download application:(id)application logClient:(id)client;
@end

@implementation KTContextStore

- (KTContextStore)initWithDataStore:(id)store staticKeyStore:(id)keyStore keyStore:(id)a5 cloudRecords:(id)records accountKeyServer:(id)server stateMachine:(id)machine kvs:(id)kvs settings:(id)self0 followup:(id)self1
{
  storeCopy = store;
  keyStoreCopy = keyStore;
  v18 = a5;
  recordsCopy = records;
  serverCopy = server;
  machineCopy = machine;
  kvsCopy = kvs;
  settingsCopy = settings;
  followupCopy = followup;
  v30.receiver = self;
  v30.super_class = KTContextStore;
  v25 = [(KTContextStore *)&v30 init];
  v26 = v25;
  if (v25)
  {
    [(KTContextStore *)v25 setKeyStore:v18];
    [(KTContextStore *)v26 setDataStore:storeCopy];
    [(KTContextStore *)v26 setStaticKeyStore:keyStoreCopy];
    [(KTContextStore *)v26 setAccountKeyServer:serverCopy];
    [(KTContextStore *)v26 setStateMachine:machineCopy];
    [(KTContextStore *)v26 setKvs:kvsCopy];
    [(KTContextStore *)v26 setCloudRecords:recordsCopy];
    [(KTContextStore *)v26 setFollowup:followupCopy];
    [(KTContextStore *)v26 setSettings:settingsCopy];
    v27 = +[NSMutableDictionary dictionary];
    [(KTContextStore *)v26 set_contexts:v27];
  }

  return v26;
}

- (KTContextStore)initWithDataStore:(id)store staticKeyStore:(id)keyStore keyStore:(id)a5 cloudRecords:(id)records accountKeyServer:(id)server settings:(id)settings followup:(id)followup
{
  followupCopy = followup;
  settingsCopy = settings;
  serverCopy = server;
  recordsCopy = records;
  v20 = a5;
  keyStoreCopy = keyStore;
  storeCopy = store;
  v23 = +[KTKVSSoftStore sharedStore];
  v24 = [(KTContextStore *)self initWithDataStore:storeCopy staticKeyStore:keyStoreCopy keyStore:v20 cloudRecords:recordsCopy accountKeyServer:serverCopy stateMachine:0 kvs:v23 settings:settingsCopy followup:followupCopy];

  return v24;
}

- (NSDictionary)contexts
{
  _contexts = [(KTContextStore *)self _contexts];
  objc_sync_enter(_contexts);
  _contexts2 = [(KTContextStore *)self _contexts];
  v5 = [NSDictionary dictionaryWithDictionary:_contexts2];

  objc_sync_exit(_contexts);

  return v5;
}

- (void)setContext:(id)context forKey:(id)key
{
  contextCopy = context;
  keyCopy = key;
  _contexts = [(KTContextStore *)self _contexts];
  objc_sync_enter(_contexts);
  _contexts2 = [(KTContextStore *)self _contexts];
  [_contexts2 setObject:contextCopy forKeyedSubscript:keyCopy];

  objc_sync_exit(_contexts);
}

- (void)forcedConfigure:(BOOL)configure logClient:(id)client applicationHandler:(id)handler completionHandler:(id)completionHandler
{
  configureCopy = configure;
  clientCopy = client;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  keyStore = [(KTContextStore *)self keyStore];
  ready = [keyStore ready];

  if (!ready || configureCopy)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC68();
    }

    v23 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v32 = clientCopy;
      v33 = 1024;
      v34 = ready;
      v35 = 1024;
      v36 = configureCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Configuring key store with log client %@, ready = %d, forced = %d", buf, 0x18u);
    }

    keyStore2 = [(KTContextStore *)self keyStore];
    dataStore = [(KTContextStore *)self dataStore];
    [keyStore2 configureWithClient:clientCopy ignoreCachedKeys:1 dataStore:dataStore contextStore:self applicationHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC54();
    }

    v15 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Key store configuration skipped. Using existing key stores.", buf, 2u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    keyStore3 = [(KTContextStore *)self keyStore];
    applicationKeyStores = [keyStore3 applicationKeyStores];
    allKeys = [applicationKeyStores allKeys];

    v19 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          if (handlerCopy)
          {
            (*(handlerCopy + 2))(handlerCopy, *(*(&v26 + 1) + 8 * i), 0);
          }
        }

        v20 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    if (completionHandlerCopy)
    {
      completionHandlerCopy[2](completionHandlerCopy, 0);
    }
  }
}

- (void)storeContext:(id)context application:(id)application
{
  contextCopy = context;
  applicationCopy = application;
  if (contextCopy)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC7C();
    }

    v8 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KTContext initialization for application %{public}@ success", &v11, 0xCu);
    }

    _contexts = [(KTContextStore *)self _contexts];
    objc_sync_enter(_contexts);
    _contexts2 = [(KTContextStore *)self _contexts];
    [_contexts2 setValue:contextCopy forKey:applicationCopy];

    objc_sync_exit(_contexts);
  }
}

- (id)createContextForApplication:(id)application dataStore:(id)store staticKeyStore:(id)keyStore logClient:(id)client stateMachine:(id)machine
{
  applicationCopy = application;
  storeCopy = store;
  keyStoreCopy = keyStore;
  clientCopy = client;
  machineCopy = machine;
  keyStore = [(KTContextStore *)self keyStore];
  applicationKeyStores = [keyStore applicationKeyStores];
  v19 = [applicationKeyStores objectForKey:applicationCopy];

  if (v19)
  {
    keyStore2 = [(KTContextStore *)self keyStore];
    applicationKeyStores2 = [keyStore2 applicationKeyStores];
    v35 = [applicationKeyStores2 objectForKeyedSubscript:applicationCopy];

    v22 = objc_alloc_init(KTContextDependencies);
    [(KTContextDependencies *)v22 setApplicationKeyStore:v35];
    [(KTContextDependencies *)v22 setDataStore:storeCopy];
    stateMachine = [(KTContextStore *)self stateMachine];
    deps = [stateMachine deps];
    smDataStore = [deps smDataStore];
    [(KTContextDependencies *)v22 setSmDataStore:smDataStore];

    [(KTContextDependencies *)v22 setLogClient:clientCopy];
    [(KTContextDependencies *)v22 setStateMachine:machineCopy];
    [(KTContextDependencies *)v22 setContextStore:self];
    accountKeyServer = [(KTContextStore *)self accountKeyServer];
    [(KTContextDependencies *)v22 setAccountKeyServer:accountKeyServer];

    [(KTContextDependencies *)v22 setStaticKeyStore:keyStoreCopy];
    v27 = [(KTContextStore *)self kvs];
    [(KTContextDependencies *)v22 setKvs:v27];

    cloudRecords = [(KTContextStore *)self cloudRecords];
    [(KTContextDependencies *)v22 setCloudRecords:cloudRecords];

    followup = [(KTContextStore *)self followup];
    [(KTContextDependencies *)v22 setFollowup:followup];

    statusReporting = [machineCopy statusReporting];
    [(KTContextDependencies *)v22 setEligibilityStatusReporter:statusReporting];

    deps2 = [machineCopy deps];
    tapToRadar = [deps2 tapToRadar];
    [(KTContextDependencies *)v22 setTapToRadar:tapToRadar];

    settings = [(KTContextStore *)self settings];
    [(KTContextDependencies *)v22 setSettings:settings];

    v19 = [[KTContext alloc] initWithApplicationID:applicationCopy dependencies:v22];
    [(KTContextStore *)self storeContext:v19 application:applicationCopy];
  }

  return v19;
}

- (id)createContextForTLT:(id)t staticKeyStore:(id)store logClient:(id)client stateMachine:(id)machine
{
  machineCopy = machine;
  clientCopy = client;
  storeCopy = store;
  tCopy = t;
  keyStore = [(KTContextStore *)self keyStore];
  tltKeyStore = [keyStore tltKeyStore];

  v16 = objc_alloc_init(KTContextDependencies);
  [(KTContextDependencies *)v16 setApplicationKeyStore:tltKeyStore];
  [(KTContextDependencies *)v16 setDataStore:tCopy];

  [(KTContextDependencies *)v16 setLogClient:clientCopy];
  [(KTContextDependencies *)v16 setStateMachine:machineCopy];

  [(KTContextDependencies *)v16 setContextStore:self];
  accountKeyServer = [(KTContextStore *)self accountKeyServer];
  [(KTContextDependencies *)v16 setAccountKeyServer:accountKeyServer];

  [(KTContextDependencies *)v16 setStaticKeyStore:storeCopy];
  settings = [(KTContextStore *)self settings];
  [(KTContextDependencies *)v16 setSettings:settings];

  v19 = [KTContext alloc];
  v20 = kKTApplicationIdentifierTLT;
  v21 = [(KTContext *)v19 initWithApplicationID:kKTApplicationIdentifierTLT dependencies:v16];
  [(KTContextStore *)self storeContext:v21 application:v20];

  return v21;
}

- (void)contextForApplication:(id)application logClient:(id)client fetchState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  applicationCopy = application;
  clientCopy = client;
  handlerCopy = handler;
  contexts = [(KTContextStore *)self contexts];
  v14 = [contexts objectForKeyedSubscript:applicationCopy];

  if (v14 && [v14 ready:0])
  {
    handlerCopy[2](handlerCopy, v14, 0);
  }

  else if (stateCopy)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ACA4();
    }

    v15 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = applicationCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Fetching state needed for application %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_10006CD70;
    v30 = sub_10006CD80;
    v31 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006CD88;
    v22[3] = &unk_10031C8C8;
    p_buf = &buf;
    v23 = applicationCopy;
    selfCopy = self;
    v25 = clientCopy;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006CF54;
    v17[3] = &unk_10031C8F0;
    v17[4] = self;
    v18 = v25;
    v21 = &buf;
    v20 = handlerCopy;
    v19 = v23;
    [(KTContextStore *)self configureWithClient:v18 applicationHandler:v22 completionHandler:v17];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC90();
    }

    v16 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = applicationCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Not fetching state needed for application %@", &buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)validatePeerRequestId:(id)id uri:(id)uri application:(id)application logClient:(id)client revalidate:(BOOL)revalidate fetchNow:(BOOL)now completionHandler:(id)handler
{
  idCopy = id;
  uriCopy = uri;
  applicationCopy = application;
  clientCopy = client;
  handlerCopy = handler;
  if ([clientCopy ready])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006D2E8;
    v22[3] = &unk_10031C938;
    v26 = handlerCopy;
    v23 = uriCopy;
    v24 = applicationCopy;
    v25 = idCopy;
    revalidateCopy = revalidate;
    nowCopy = now;
    [(KTContextStore *)self contextForApplication:v24 logClient:clientCopy fetchState:1 completionHandler:v22];
  }

  else
  {
    v20 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-229 description:@"log client not ready"];
    v21 = [[KTVerifierResult alloc] initWithUri:uriCopy application:applicationCopy ktResult:2];
    (*(handlerCopy + 2))(handlerCopy, v21, v20);
  }
}

- (void)validateEnrollmentRequestId:(id)id application:(id)application logClient:(id)client cloudOptIn:(id)in completionHandler:(id)handler
{
  idCopy = id;
  applicationCopy = application;
  clientCopy = client;
  inCopy = in;
  handlerCopy = handler;
  if ([clientCopy ready])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006D598;
    v18[3] = &unk_10031C960;
    v22 = handlerCopy;
    v19 = applicationCopy;
    v20 = idCopy;
    v21 = inCopy;
    [(KTContextStore *)self contextForApplication:v19 logClient:clientCopy fetchState:1 completionHandler:v18];
  }

  else
  {
    v17 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-229 description:@"log client not ready"];
    (*(handlerCopy + 2))(handlerCopy, 2, 0, 0, v17);
  }
}

- (void)ignoreFailure:(id)failure error:(id *)error
{
  failureCopy = failure;
  if (qword_10038BDA0 != -1)
  {
    sub_10024ACCC();
  }

  v7 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    requestId = [failureCopy requestId];
    v15 = 138543362;
    v16 = requestId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving ignored failure for requestId %{public}@", &v15, 0xCu);
  }

  [failureCopy setVerificationResult:3];
  dataStore = [(KTContextStore *)self dataStore];
  v11 = [dataStore persistWithError:error];

  if ((v11 & 1) == 0)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ACE0();
    }

    v12 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to save updated request: %@", &v15, 0xCu);
    }

    if (error && *error)
    {
      dataStore2 = [(KTContextStore *)self dataStore];
      [dataStore2 reportCoreDataPersistEventForLocation:@"updateRequest" underlyingError:*error];
    }
  }
}

- (void)clearApplicationState:(id)state logClient:(id)client completionBlock:(id)block
{
  stateCopy = state;
  clientCopy = client;
  blockCopy = block;
  if (qword_10038BDA0 != -1)
  {
    sub_10024AD08();
  }

  v11 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = stateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Clearing KT context for application '%@'", buf, 0xCu);
  }

  dataStore = [(KTContextStore *)self dataStore];
  v17 = 0;
  [dataStore clearStateForApplication:stateCopy error:&v17];
  v13 = v17;

  if (v13)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AD1C();
    }

    v14 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed clearing managed data store: %@", buf, 0xCu);
    }
  }

  keyStore = [(KTContextStore *)self keyStore];
  v16 = 0;
  [keyStore clearApplicationState:stateCopy error:&v16];

  [(KTContextStore *)self configureWithClient:clientCopy force:1 applicationHandler:&stru_10031CA20 completionHandler:blockCopy];
}

- (void)clearContextForApplication:(id)application
{
  applicationCopy = application;
  _contexts = [(KTContextStore *)self _contexts];
  objc_sync_enter(_contexts);
  _contexts2 = [(KTContextStore *)self _contexts];
  [_contexts2 setObject:0 forKeyedSubscript:applicationCopy];

  objc_sync_exit(_contexts);
}

- (void)verifyHeadInclusionDownload:(id)download application:(id)application logClient:(id)client
{
  downloadCopy = download;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006DE0C;
  v11[3] = &unk_10031CA88;
  applicationCopy = application;
  v13 = downloadCopy;
  v9 = downloadCopy;
  v10 = applicationCopy;
  [(KTContextStore *)self contextForApplication:v10 logClient:client fetchState:1 completionHandler:v11];
}

- (void)verifyHeadConsistencyDownload:(id)download application:(id)application logClient:(id)client
{
  downloadCopy = download;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006E078;
  v11[3] = &unk_10031CA88;
  applicationCopy = application;
  v13 = downloadCopy;
  v9 = downloadCopy;
  v10 = applicationCopy;
  [(KTContextStore *)self contextForApplication:v10 logClient:client fetchState:1 completionHandler:v11];
}

- (void)failHeadDownload:(id)download application:(id)application failure:(id)failure retry:(BOOL)retry logClient:(id)client
{
  downloadCopy = download;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006E32C;
  v16[3] = &unk_10031CAD0;
  applicationCopy = application;
  selfCopy = self;
  v19 = downloadCopy;
  failureCopy = failure;
  clientCopy = client;
  v12 = clientCopy;
  v13 = failureCopy;
  v14 = downloadCopy;
  v15 = applicationCopy;
  [(KTContextStore *)self contextForApplication:v15 logClient:v12 fetchState:1 completionHandler:v16];
}

- (id)serializeTranscripts
{
  v3 = objc_alloc_init(NSMutableArray);
  contexts = [(KTContextStore *)self contexts];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E4B4;
  v7[3] = &unk_10031CAF8;
  v5 = v3;
  v8 = v5;
  [contexts enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)retrieveTLTSTH:(id)h block:(id)block
{
  hCopy = h;
  blockCopy = block;
  if (![(KTContextStore *)self shouldGossip])
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ADA8();
    }

    v13 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "All applications have exceeded 30 days since shutting down.", buf, 2u);
    }

    cachedGossip3 = [TransparencyAnalytics formatEventName:@"GossipAllApplicationsShutDownAfter30Days" application:kKTApplicationIdentifierTLT];
    v14 = kTransparencyErrorGossip;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"All applications have exceeded 30 days since shutting down.";
    v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [NSError errorWithDomain:v14 code:-280 userInfo:v15];

    v17 = +[TransparencyAnalytics logger];
    [v17 logResultForEvent:cachedGossip3 hardFailure:0 result:v16];

    blockCopy[2](blockCopy, 0, v16);
    goto LABEL_14;
  }

  cachedGossip = [(KTContextStore *)self cachedGossip];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cachedGossip2 = [(KTContextStore *)self cachedGossip];
    v10 = +[NSData data];

    if (cachedGossip2 != v10)
    {
      if (qword_10038BDA0 != -1)
      {
        sub_10024ADBC();
      }

      v11 = qword_10038BDA8;
      if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending cached gossip", buf, 2u);
      }

      cachedGossip3 = [(KTContextStore *)self cachedGossip];
      (blockCopy)[2](blockCopy, cachedGossip3, 0);
LABEL_14:

      goto LABEL_23;
    }
  }

  else
  {
  }

  cachedGossip4 = [(KTContextStore *)self cachedGossip];
  v19 = +[NSData data];

  if (cachedGossip4 == v19)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ADD0();
    }

    v21 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Sending empty cached gossip", buf, 2u);
    }

    blockCopy[2](blockCopy, 0, 0);
  }

  else
  {
    v20 = kKTApplicationIdentifierTLT;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006E9C0;
    v22[3] = &unk_10031CBC0;
    v22[4] = self;
    v23 = blockCopy;
    [(KTContextStore *)self contextForApplication:v20 logClient:hCopy fetchState:1 completionHandler:v22];
  }

LABEL_23:
}

- (void)receivedSTHsFromPeers:(id)peers logClient:(id)client verifier:(id)verifier block:(id)block
{
  peersCopy = peers;
  verifierCopy = verifier;
  blockCopy = block;
  v13 = kKTApplicationIdentifierTLT;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006ED78;
  v17[3] = &unk_10031CBE8;
  v19 = verifierCopy;
  v20 = blockCopy;
  v18 = peersCopy;
  v14 = verifierCopy;
  v15 = peersCopy;
  v16 = blockCopy;
  [(KTContextStore *)self contextForApplication:v13 logClient:client fetchState:1 completionHandler:v17];
}

- (BOOL)shouldGossip
{
  contexts = [(KTContextStore *)self contexts];
  if (contexts && (v4 = contexts, -[KTContextStore contexts](self, "contexts"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    contexts2 = [(KTContextStore *)self contexts];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006EF64;
    v10[3] = &unk_10031CC10;
    v10[4] = &v11;
    [contexts2 enumerateKeysAndObjectsUsingBlock:v10];

    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)signData:(id)data application:(id)application logClient:(id)client completionBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  v11 = kKTApplicationIdentifierTLT;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006F084;
  v14[3] = &unk_10031CBC0;
  v15 = dataCopy;
  v16 = blockCopy;
  v12 = dataCopy;
  v13 = blockCopy;
  [(KTContextStore *)self contextForApplication:v11 logClient:client fetchState:1 completionHandler:v14];
}

- (void)rollKeyForApplication:(id)application logClient:(id)client completionBlock:(id)block
{
  blockCopy = block;
  v8 = kKTApplicationIdentifierTLT;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006F1F8;
  v10[3] = &unk_10031CC38;
  v11 = blockCopy;
  v9 = blockCopy;
  [(KTContextStore *)self contextForApplication:v8 logClient:client fetchState:1 completionHandler:v10];
}

- (void)getKTOptInState:(id)state sync:(BOOL)sync logClient:(id)client completionblock:(id)completionblock
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F388;
  v12[3] = &unk_10031CC60;
  stateCopy = state;
  completionblockCopy = completionblock;
  syncCopy = sync;
  v10 = completionblockCopy;
  v11 = stateCopy;
  [(KTContextStore *)self contextForApplication:v11 logClient:client fetchState:1 completionHandler:v12];
}

- (void)changeOptInState:(unint64_t)state application:(id)application logClient:(id)client completionBlock:(id)block
{
  applicationCopy = application;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F544;
  v13[3] = &unk_10031CC88;
  blockCopy = block;
  stateCopy = state;
  v14 = applicationCopy;
  selfCopy = self;
  v11 = blockCopy;
  v12 = applicationCopy;
  [(KTContextStore *)self contextForApplication:v12 logClient:client fetchState:1 completionHandler:v13];
}

- (void)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id application:(id)application logClient:(id)client transparentDataHandler:(id)handler completionHandler:(id)self0
{
  responseCopy = response;
  requestCopy = request;
  dateCopy = date;
  idCopy = id;
  handlerCopy = handler;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006F7B4;
  v27[3] = &unk_10031CCB0;
  v28 = responseCopy;
  v29 = requestCopy;
  v30 = dateCopy;
  v31 = idCopy;
  completionHandlerCopy = completionHandler;
  v33 = handlerCopy;
  v21 = handlerCopy;
  v22 = idCopy;
  v23 = dateCopy;
  v24 = requestCopy;
  v25 = responseCopy;
  v26 = completionHandlerCopy;
  [(KTContextStore *)self contextForApplication:application logClient:client fetchState:1 completionHandler:v27];
}

- (void)queryForUris:(id)uris application:(id)application logClient:(id)client userInitiated:(BOOL)initiated cachedYoungerThan:(id)than completionHandler:(id)handler
{
  urisCopy = uris;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006F994;
  v19[3] = &unk_10031CCF8;
  applicationCopy = application;
  v21 = urisCopy;
  initiatedCopy = initiated;
  thanCopy = than;
  handlerCopy = handler;
  v15 = thanCopy;
  v16 = urisCopy;
  v17 = handlerCopy;
  v18 = applicationCopy;
  [(KTContextStore *)self contextForApplication:v18 logClient:client fetchState:1 completionHandler:v19];
}

- (void)replaySelfValidate:(id)validate application:(id)application pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time logClient:(id)client completionHandler:(id)self0
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006FC98;
  v22[3] = &unk_10031CD20;
  validateCopy = validate;
  keyCopy = key;
  requestCopy = request;
  responseCopy = response;
  timeCopy = time;
  handlerCopy = handler;
  v16 = timeCopy;
  v17 = responseCopy;
  v18 = requestCopy;
  v19 = keyCopy;
  v20 = validateCopy;
  v21 = handlerCopy;
  [(KTContextStore *)self contextForApplication:application logClient:client fetchState:1 completionHandler:v22];
}

- (void)validatePeers:(id)peers application:(id)application fetchNow:(BOOL)now logClient:(id)client completionBlock:(id)block
{
  peersCopy = peers;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006FDD4;
  v16[3] = &unk_10031CD48;
  applicationCopy = application;
  blockCopy = block;
  v17 = peersCopy;
  nowCopy = now;
  v13 = applicationCopy;
  v14 = peersCopy;
  v15 = blockCopy;
  [(KTContextStore *)self contextForApplication:v13 logClient:client fetchState:1 completionHandler:v16];
}

- (void)validateIDSPeerURI:(id)i application:(id)application idsData:(id)data ktData:(id)ktData logClient:(id)client complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  dataCopy = data;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006FFE0;
  v22[3] = &unk_10031CD70;
  ktDataCopy = ktData;
  completeCopy = complete;
  v23 = iCopy;
  v24 = applicationCopy;
  v25 = dataCopy;
  v17 = ktDataCopy;
  v18 = dataCopy;
  v19 = applicationCopy;
  v20 = iCopy;
  v21 = completeCopy;
  [(KTContextStore *)self contextForApplication:v19 logClient:client fetchState:1 completionHandler:v22];
}

- (void)ignoreFailureForResults:(id)results application:(id)application completionBlock:(id)block
{
  blockCopy = block;
  resultsCopy = results;
  dataStore = [(KTContextStore *)self dataStore];
  v11 = 0;
  [dataStore ignoreFailureForResults:resultsCopy error:&v11];

  v10 = v11;
  blockCopy[2](blockCopy, v10);
}

- (void)handlePeerStateChange:(id)change application:(id)application
{
  changeCopy = change;
  v7 = [(KTContextStore *)self getCachedValidatePeerResults:changeCopy application:application];
  if (qword_10038BDA0 != -1)
  {
    sub_10024AE20();
  }

  v8 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [changeCopy componentsJoinedByString:{@", "}];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HandlePeerStateChange will update IDS cache for %@", &v12, 0xCu);
  }

  dataStore = [(KTContextStore *)self dataStore];
  [dataStore updateIDSCacheWithResults:v7];
}

- (id)getCachedValidatePeerResults:(id)results application:(id)application
{
  resultsCopy = results;
  applicationCopy = application;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [resultsCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = resultsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        dataStore = [(KTContextStore *)self dataStore];
        v16 = [dataStore verifierResultForPeer:v14 application:applicationCopy];

        if (v16)
        {
          [v8 addObject:v16];
        }

        else
        {
          v17 = [[KTVerifierResult alloc] initUnavailableForUri:v14 application:applicationCopy];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)drainContextStore
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  contexts = [(KTContextStore *)self contexts];
  allValues = [contexts allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) drainContext];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (KTSMManager)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->stateMachine);

  return WeakRetained;
}

@end