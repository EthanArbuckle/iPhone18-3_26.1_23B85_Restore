@interface KTContextStore
- (BOOL)shouldGossip;
- (KTContextStore)initWithDataStore:(id)a3 staticKeyStore:(id)a4 keyStore:(id)a5 cloudRecords:(id)a6 accountKeyServer:(id)a7 settings:(id)a8 followup:(id)a9;
- (KTContextStore)initWithDataStore:(id)a3 staticKeyStore:(id)a4 keyStore:(id)a5 cloudRecords:(id)a6 accountKeyServer:(id)a7 stateMachine:(id)a8 kvs:(id)a9 settings:(id)a10 followup:(id)a11;
- (KTSMManager)stateMachine;
- (NSDictionary)contexts;
- (id)createContextForApplication:(id)a3 dataStore:(id)a4 staticKeyStore:(id)a5 logClient:(id)a6 stateMachine:(id)a7;
- (id)createContextForTLT:(id)a3 staticKeyStore:(id)a4 logClient:(id)a5 stateMachine:(id)a6;
- (id)getCachedValidatePeerResults:(id)a3 application:(id)a4;
- (id)serializeTranscripts;
- (void)changeOptInState:(unint64_t)a3 application:(id)a4 logClient:(id)a5 completionBlock:(id)a6;
- (void)clearApplicationState:(id)a3 logClient:(id)a4 completionBlock:(id)a5;
- (void)clearContextForApplication:(id)a3;
- (void)contextForApplication:(id)a3 logClient:(id)a4 fetchState:(BOOL)a5 completionHandler:(id)a6;
- (void)drainContextStore;
- (void)failHeadDownload:(id)a3 application:(id)a4 failure:(id)a5 retry:(BOOL)a6 logClient:(id)a7;
- (void)forcedConfigure:(BOOL)a3 logClient:(id)a4 applicationHandler:(id)a5 completionHandler:(id)a6;
- (void)getKTOptInState:(id)a3 sync:(BOOL)a4 logClient:(id)a5 completionblock:(id)a6;
- (void)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 application:(id)a7 logClient:(id)a8 transparentDataHandler:(id)a9 completionHandler:(id)a10;
- (void)handlePeerStateChange:(id)a3 application:(id)a4;
- (void)ignoreFailure:(id)a3 error:(id *)a4;
- (void)ignoreFailureForResults:(id)a3 application:(id)a4 completionBlock:(id)a5;
- (void)queryForUris:(id)a3 application:(id)a4 logClient:(id)a5 userInitiated:(BOOL)a6 cachedYoungerThan:(id)a7 completionHandler:(id)a8;
- (void)receivedSTHsFromPeers:(id)a3 logClient:(id)a4 verifier:(id)a5 block:(id)a6;
- (void)replaySelfValidate:(id)a3 application:(id)a4 pcsAccountKey:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 responseTime:(id)a8 logClient:(id)a9 completionHandler:(id)a10;
- (void)retrieveTLTSTH:(id)a3 block:(id)a4;
- (void)rollKeyForApplication:(id)a3 logClient:(id)a4 completionBlock:(id)a5;
- (void)setContext:(id)a3 forKey:(id)a4;
- (void)signData:(id)a3 application:(id)a4 logClient:(id)a5 completionBlock:(id)a6;
- (void)storeContext:(id)a3 application:(id)a4;
- (void)validateEnrollmentRequestId:(id)a3 application:(id)a4 logClient:(id)a5 cloudOptIn:(id)a6 completionHandler:(id)a7;
- (void)validateIDSPeerURI:(id)a3 application:(id)a4 idsData:(id)a5 ktData:(id)a6 logClient:(id)a7 complete:(id)a8;
- (void)validatePeerRequestId:(id)a3 uri:(id)a4 application:(id)a5 logClient:(id)a6 revalidate:(BOOL)a7 fetchNow:(BOOL)a8 completionHandler:(id)a9;
- (void)validatePeers:(id)a3 application:(id)a4 fetchNow:(BOOL)a5 logClient:(id)a6 completionBlock:(id)a7;
- (void)verifyHeadConsistencyDownload:(id)a3 application:(id)a4 logClient:(id)a5;
- (void)verifyHeadInclusionDownload:(id)a3 application:(id)a4 logClient:(id)a5;
@end

@implementation KTContextStore

- (KTContextStore)initWithDataStore:(id)a3 staticKeyStore:(id)a4 keyStore:(id)a5 cloudRecords:(id)a6 accountKeyServer:(id)a7 stateMachine:(id)a8 kvs:(id)a9 settings:(id)a10 followup:(id)a11
{
  v29 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v30.receiver = self;
  v30.super_class = KTContextStore;
  v25 = [(KTContextStore *)&v30 init];
  v26 = v25;
  if (v25)
  {
    [(KTContextStore *)v25 setKeyStore:v18];
    [(KTContextStore *)v26 setDataStore:v29];
    [(KTContextStore *)v26 setStaticKeyStore:v17];
    [(KTContextStore *)v26 setAccountKeyServer:v20];
    [(KTContextStore *)v26 setStateMachine:v21];
    [(KTContextStore *)v26 setKvs:v22];
    [(KTContextStore *)v26 setCloudRecords:v19];
    [(KTContextStore *)v26 setFollowup:v24];
    [(KTContextStore *)v26 setSettings:v23];
    v27 = +[NSMutableDictionary dictionary];
    [(KTContextStore *)v26 set_contexts:v27];
  }

  return v26;
}

- (KTContextStore)initWithDataStore:(id)a3 staticKeyStore:(id)a4 keyStore:(id)a5 cloudRecords:(id)a6 accountKeyServer:(id)a7 settings:(id)a8 followup:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = +[KTKVSSoftStore sharedStore];
  v24 = [(KTContextStore *)self initWithDataStore:v22 staticKeyStore:v21 keyStore:v20 cloudRecords:v19 accountKeyServer:v18 stateMachine:0 kvs:v23 settings:v17 followup:v16];

  return v24;
}

- (NSDictionary)contexts
{
  v3 = [(KTContextStore *)self _contexts];
  objc_sync_enter(v3);
  v4 = [(KTContextStore *)self _contexts];
  v5 = [NSDictionary dictionaryWithDictionary:v4];

  objc_sync_exit(v3);

  return v5;
}

- (void)setContext:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(KTContextStore *)self _contexts];
  objc_sync_enter(v7);
  v8 = [(KTContextStore *)self _contexts];
  [v8 setObject:v9 forKeyedSubscript:v6];

  objc_sync_exit(v7);
}

- (void)forcedConfigure:(BOOL)a3 logClient:(id)a4 applicationHandler:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(KTContextStore *)self keyStore];
  v14 = [v13 ready];

  if (!v14 || v8)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC68();
    }

    v23 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v32 = v10;
      v33 = 1024;
      v34 = v14;
      v35 = 1024;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Configuring key store with log client %@, ready = %d, forced = %d", buf, 0x18u);
    }

    v24 = [(KTContextStore *)self keyStore];
    v25 = [(KTContextStore *)self dataStore];
    [v24 configureWithClient:v10 ignoreCachedKeys:1 dataStore:v25 contextStore:self applicationHandler:v11 completionHandler:v12];
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
    v16 = [(KTContextStore *)self keyStore];
    v17 = [v16 applicationKeyStores];
    v18 = [v17 allKeys];

    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v18);
          }

          if (v11)
          {
            (*(v11 + 2))(v11, *(*(&v26 + 1) + 8 * i), 0);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)storeContext:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AC7C();
    }

    v8 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KTContext initialization for application %{public}@ success", &v11, 0xCu);
    }

    v9 = [(KTContextStore *)self _contexts];
    objc_sync_enter(v9);
    v10 = [(KTContextStore *)self _contexts];
    [v10 setValue:v6 forKey:v7];

    objc_sync_exit(v9);
  }
}

- (id)createContextForApplication:(id)a3 dataStore:(id)a4 staticKeyStore:(id)a5 logClient:(id)a6 stateMachine:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(KTContextStore *)self keyStore];
  v18 = [v17 applicationKeyStores];
  v19 = [v18 objectForKey:v12];

  if (v19)
  {
    v20 = [(KTContextStore *)self keyStore];
    v21 = [v20 applicationKeyStores];
    v35 = [v21 objectForKeyedSubscript:v12];

    v22 = objc_alloc_init(KTContextDependencies);
    [(KTContextDependencies *)v22 setApplicationKeyStore:v35];
    [(KTContextDependencies *)v22 setDataStore:v13];
    v23 = [(KTContextStore *)self stateMachine];
    v24 = [v23 deps];
    v25 = [v24 smDataStore];
    [(KTContextDependencies *)v22 setSmDataStore:v25];

    [(KTContextDependencies *)v22 setLogClient:v15];
    [(KTContextDependencies *)v22 setStateMachine:v16];
    [(KTContextDependencies *)v22 setContextStore:self];
    v26 = [(KTContextStore *)self accountKeyServer];
    [(KTContextDependencies *)v22 setAccountKeyServer:v26];

    [(KTContextDependencies *)v22 setStaticKeyStore:v14];
    v27 = [(KTContextStore *)self kvs];
    [(KTContextDependencies *)v22 setKvs:v27];

    v28 = [(KTContextStore *)self cloudRecords];
    [(KTContextDependencies *)v22 setCloudRecords:v28];

    v29 = [(KTContextStore *)self followup];
    [(KTContextDependencies *)v22 setFollowup:v29];

    v30 = [v16 statusReporting];
    [(KTContextDependencies *)v22 setEligibilityStatusReporter:v30];

    v31 = [v16 deps];
    v32 = [v31 tapToRadar];
    [(KTContextDependencies *)v22 setTapToRadar:v32];

    v33 = [(KTContextStore *)self settings];
    [(KTContextDependencies *)v22 setSettings:v33];

    v19 = [[KTContext alloc] initWithApplicationID:v12 dependencies:v22];
    [(KTContextStore *)self storeContext:v19 application:v12];
  }

  return v19;
}

- (id)createContextForTLT:(id)a3 staticKeyStore:(id)a4 logClient:(id)a5 stateMachine:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(KTContextStore *)self keyStore];
  v15 = [v14 tltKeyStore];

  v16 = objc_alloc_init(KTContextDependencies);
  [(KTContextDependencies *)v16 setApplicationKeyStore:v15];
  [(KTContextDependencies *)v16 setDataStore:v13];

  [(KTContextDependencies *)v16 setLogClient:v11];
  [(KTContextDependencies *)v16 setStateMachine:v10];

  [(KTContextDependencies *)v16 setContextStore:self];
  v17 = [(KTContextStore *)self accountKeyServer];
  [(KTContextDependencies *)v16 setAccountKeyServer:v17];

  [(KTContextDependencies *)v16 setStaticKeyStore:v12];
  v18 = [(KTContextStore *)self settings];
  [(KTContextDependencies *)v16 setSettings:v18];

  v19 = [KTContext alloc];
  v20 = kKTApplicationIdentifierTLT;
  v21 = [(KTContext *)v19 initWithApplicationID:kKTApplicationIdentifierTLT dependencies:v16];
  [(KTContextStore *)self storeContext:v21 application:v20];

  return v21;
}

- (void)contextForApplication:(id)a3 logClient:(id)a4 fetchState:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(KTContextStore *)self contexts];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (v14 && [v14 ready:0])
  {
    v12[2](v12, v14, 0);
  }

  else if (v7)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ACA4();
    }

    v15 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
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
    v23 = v10;
    v24 = self;
    v25 = v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006CF54;
    v17[3] = &unk_10031C8F0;
    v17[4] = self;
    v18 = v25;
    v21 = &buf;
    v20 = v12;
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
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Not fetching state needed for application %@", &buf, 0xCu);
    }

    v12[2](v12, 0, 0);
  }
}

- (void)validatePeerRequestId:(id)a3 uri:(id)a4 application:(id)a5 logClient:(id)a6 revalidate:(BOOL)a7 fetchNow:(BOOL)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  if ([v18 ready])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006D2E8;
    v22[3] = &unk_10031C938;
    v26 = v19;
    v23 = v16;
    v24 = v17;
    v25 = v15;
    v27 = a7;
    v28 = a8;
    [(KTContextStore *)self contextForApplication:v24 logClient:v18 fetchState:1 completionHandler:v22];
  }

  else
  {
    v20 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-229 description:@"log client not ready"];
    v21 = [[KTVerifierResult alloc] initWithUri:v16 application:v17 ktResult:2];
    (*(v19 + 2))(v19, v21, v20);
  }
}

- (void)validateEnrollmentRequestId:(id)a3 application:(id)a4 logClient:(id)a5 cloudOptIn:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 ready])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006D598;
    v18[3] = &unk_10031C960;
    v22 = v16;
    v19 = v13;
    v20 = v12;
    v21 = v15;
    [(KTContextStore *)self contextForApplication:v19 logClient:v14 fetchState:1 completionHandler:v18];
  }

  else
  {
    v17 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-229 description:@"log client not ready"];
    (*(v16 + 2))(v16, 2, 0, 0, v17);
  }
}

- (void)ignoreFailure:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_10038BDA0 != -1)
  {
    sub_10024ACCC();
  }

  v7 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 requestId];
    v15 = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving ignored failure for requestId %{public}@", &v15, 0xCu);
  }

  [v6 setVerificationResult:3];
  v10 = [(KTContextStore *)self dataStore];
  v11 = [v10 persistWithError:a4];

  if ((v11 & 1) == 0)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ACE0();
    }

    v12 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v13 = *a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to save updated request: %@", &v15, 0xCu);
    }

    if (a4 && *a4)
    {
      v14 = [(KTContextStore *)self dataStore];
      [v14 reportCoreDataPersistEventForLocation:@"updateRequest" underlyingError:*a4];
    }
  }
}

- (void)clearApplicationState:(id)a3 logClient:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10038BDA0 != -1)
  {
    sub_10024AD08();
  }

  v11 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Clearing KT context for application '%@'", buf, 0xCu);
  }

  v12 = [(KTContextStore *)self dataStore];
  v17 = 0;
  [v12 clearStateForApplication:v8 error:&v17];
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

  v15 = [(KTContextStore *)self keyStore];
  v16 = 0;
  [v15 clearApplicationState:v8 error:&v16];

  [(KTContextStore *)self configureWithClient:v9 force:1 applicationHandler:&stru_10031CA20 completionHandler:v10];
}

- (void)clearContextForApplication:(id)a3
{
  v6 = a3;
  v4 = [(KTContextStore *)self _contexts];
  objc_sync_enter(v4);
  v5 = [(KTContextStore *)self _contexts];
  [v5 setObject:0 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

- (void)verifyHeadInclusionDownload:(id)a3 application:(id)a4 logClient:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006DE0C;
  v11[3] = &unk_10031CA88;
  v12 = a4;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  [(KTContextStore *)self contextForApplication:v10 logClient:a5 fetchState:1 completionHandler:v11];
}

- (void)verifyHeadConsistencyDownload:(id)a3 application:(id)a4 logClient:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006E078;
  v11[3] = &unk_10031CA88;
  v12 = a4;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  [(KTContextStore *)self contextForApplication:v10 logClient:a5 fetchState:1 completionHandler:v11];
}

- (void)failHeadDownload:(id)a3 application:(id)a4 failure:(id)a5 retry:(BOOL)a6 logClient:(id)a7
{
  v11 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006E32C;
  v16[3] = &unk_10031CAD0;
  v17 = a4;
  v18 = self;
  v19 = v11;
  v20 = a5;
  v21 = a7;
  v12 = v21;
  v13 = v20;
  v14 = v11;
  v15 = v17;
  [(KTContextStore *)self contextForApplication:v15 logClient:v12 fetchState:1 completionHandler:v16];
}

- (id)serializeTranscripts
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(KTContextStore *)self contexts];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E4B4;
  v7[3] = &unk_10031CAF8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)retrieveTLTSTH:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v12 = [TransparencyAnalytics formatEventName:@"GossipAllApplicationsShutDownAfter30Days" application:kKTApplicationIdentifierTLT];
    v14 = kTransparencyErrorGossip;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"All applications have exceeded 30 days since shutting down.";
    v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [NSError errorWithDomain:v14 code:-280 userInfo:v15];

    v17 = +[TransparencyAnalytics logger];
    [v17 logResultForEvent:v12 hardFailure:0 result:v16];

    v7[2](v7, 0, v16);
    goto LABEL_14;
  }

  v8 = [(KTContextStore *)self cachedGossip];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(KTContextStore *)self cachedGossip];
    v10 = +[NSData data];

    if (v9 != v10)
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

      v12 = [(KTContextStore *)self cachedGossip];
      (v7)[2](v7, v12, 0);
LABEL_14:

      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = [(KTContextStore *)self cachedGossip];
  v19 = +[NSData data];

  if (v18 == v19)
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

    v7[2](v7, 0, 0);
  }

  else
  {
    v20 = kKTApplicationIdentifierTLT;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006E9C0;
    v22[3] = &unk_10031CBC0;
    v22[4] = self;
    v23 = v7;
    [(KTContextStore *)self contextForApplication:v20 logClient:v6 fetchState:1 completionHandler:v22];
  }

LABEL_23:
}

- (void)receivedSTHsFromPeers:(id)a3 logClient:(id)a4 verifier:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = kKTApplicationIdentifierTLT;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006ED78;
  v17[3] = &unk_10031CBE8;
  v19 = v11;
  v20 = v12;
  v18 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [(KTContextStore *)self contextForApplication:v13 logClient:a4 fetchState:1 completionHandler:v17];
}

- (BOOL)shouldGossip
{
  v3 = [(KTContextStore *)self contexts];
  if (v3 && (v4 = v3, -[KTContextStore contexts](self, "contexts"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [(KTContextStore *)self contexts];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006EF64;
    v10[3] = &unk_10031CC10;
    v10[4] = &v11;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];

    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)signData:(id)a3 application:(id)a4 logClient:(id)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = kKTApplicationIdentifierTLT;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006F084;
  v14[3] = &unk_10031CBC0;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [(KTContextStore *)self contextForApplication:v11 logClient:a5 fetchState:1 completionHandler:v14];
}

- (void)rollKeyForApplication:(id)a3 logClient:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = kKTApplicationIdentifierTLT;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006F1F8;
  v10[3] = &unk_10031CC38;
  v11 = v7;
  v9 = v7;
  [(KTContextStore *)self contextForApplication:v8 logClient:a4 fetchState:1 completionHandler:v10];
}

- (void)getKTOptInState:(id)a3 sync:(BOOL)a4 logClient:(id)a5 completionblock:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F388;
  v12[3] = &unk_10031CC60;
  v13 = a3;
  v14 = a6;
  v15 = a4;
  v10 = v14;
  v11 = v13;
  [(KTContextStore *)self contextForApplication:v11 logClient:a5 fetchState:1 completionHandler:v12];
}

- (void)changeOptInState:(unint64_t)a3 application:(id)a4 logClient:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F544;
  v13[3] = &unk_10031CC88;
  v16 = a6;
  v17 = a3;
  v14 = v10;
  v15 = self;
  v11 = v16;
  v12 = v10;
  [(KTContextStore *)self contextForApplication:v12 logClient:a5 fetchState:1 completionHandler:v13];
}

- (void)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 application:(id)a7 logClient:(id)a8 transparentDataHandler:(id)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006F7B4;
  v27[3] = &unk_10031CCB0;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = a10;
  v33 = v20;
  v21 = v20;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v32;
  [(KTContextStore *)self contextForApplication:a7 logClient:a8 fetchState:1 completionHandler:v27];
}

- (void)queryForUris:(id)a3 application:(id)a4 logClient:(id)a5 userInitiated:(BOOL)a6 cachedYoungerThan:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006F994;
  v19[3] = &unk_10031CCF8;
  v20 = a4;
  v21 = v14;
  v24 = a6;
  v22 = a7;
  v23 = a8;
  v15 = v22;
  v16 = v14;
  v17 = v23;
  v18 = v20;
  [(KTContextStore *)self contextForApplication:v18 logClient:a5 fetchState:1 completionHandler:v19];
}

- (void)replaySelfValidate:(id)a3 application:(id)a4 pcsAccountKey:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 responseTime:(id)a8 logClient:(id)a9 completionHandler:(id)a10
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006FC98;
  v22[3] = &unk_10031CD20;
  v23 = a3;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v16 = v27;
  v17 = v26;
  v18 = v25;
  v19 = v24;
  v20 = v23;
  v21 = v28;
  [(KTContextStore *)self contextForApplication:a4 logClient:a9 fetchState:1 completionHandler:v22];
}

- (void)validatePeers:(id)a3 application:(id)a4 fetchNow:(BOOL)a5 logClient:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006FDD4;
  v16[3] = &unk_10031CD48;
  v18 = a4;
  v19 = a7;
  v17 = v12;
  v20 = a5;
  v13 = v18;
  v14 = v12;
  v15 = v19;
  [(KTContextStore *)self contextForApplication:v13 logClient:a6 fetchState:1 completionHandler:v16];
}

- (void)validateIDSPeerURI:(id)a3 application:(id)a4 idsData:(id)a5 ktData:(id)a6 logClient:(id)a7 complete:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006FFE0;
  v22[3] = &unk_10031CD70;
  v26 = a6;
  v27 = a8;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v17 = v26;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v27;
  [(KTContextStore *)self contextForApplication:v19 logClient:a7 fetchState:1 completionHandler:v22];
}

- (void)ignoreFailureForResults:(id)a3 application:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(KTContextStore *)self dataStore];
  v11 = 0;
  [v9 ignoreFailureForResults:v8 error:&v11];

  v10 = v11;
  v7[2](v7, v10);
}

- (void)handlePeerStateChange:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = [(KTContextStore *)self getCachedValidatePeerResults:v6 application:a4];
  if (qword_10038BDA0 != -1)
  {
    sub_10024AE20();
  }

  v8 = qword_10038BDA8;
  if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 componentsJoinedByString:{@", "}];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HandlePeerStateChange will update IDS cache for %@", &v12, 0xCu);
  }

  v11 = [(KTContextStore *)self dataStore];
  [v11 updateIDSCacheWithResults:v7];
}

- (id)getCachedValidatePeerResults:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
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
        v15 = [(KTContextStore *)self dataStore];
        v16 = [v15 verifierResultForPeer:v14 application:v7];

        if (v16)
        {
          [v8 addObject:v16];
        }

        else
        {
          v17 = [[KTVerifierResult alloc] initUnavailableForUri:v14 application:v7];
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
  v2 = [(KTContextStore *)self contexts];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) drainContext];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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