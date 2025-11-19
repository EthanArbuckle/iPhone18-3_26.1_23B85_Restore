@interface KTContextDependencies
- (KTContextDependencies)initWithOperationDependencies:(id)a3 application:(id)a4;
- (KTContextStore)contextStore;
- (KTSMManager)stateMachine;
@end

@implementation KTContextDependencies

- (KTContextDependencies)initWithOperationDependencies:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = KTContextDependencies;
  v8 = [(KTContextDependencies *)&v22 init];
  if (v8)
  {
    v9 = [v6 publicKeyStore];
    v10 = [v9 applicationPublicKeyStore:v7];
    [(KTContextDependencies *)v8 setApplicationKeyStore:v10];

    v11 = [v6 dataStore];
    [(KTContextDependencies *)v8 setDataStore:v11];

    v12 = [v6 staticKeyStore];
    [(KTContextDependencies *)v8 setStaticKeyStore:v12];

    v13 = [v6 logClient];
    [(KTContextDependencies *)v8 setLogClient:v13];

    v14 = [v6 contextStore];
    [(KTContextDependencies *)v8 setContextStore:v14];

    v15 = [v6 accountKeyService];
    v16 = [v15 accountKeyService:v7];
    [(KTContextDependencies *)v8 setAccountKeyServer:v16];

    v17 = [v6 kvs];
    [(KTContextDependencies *)v8 setKvs:v17];

    v18 = [v6 followup];
    [(KTContextDependencies *)v8 setFollowup:v18];

    v19 = [v6 cloudRecords];
    [(KTContextDependencies *)v8 setCloudRecords:v19];

    v20 = [v6 settings];
    [(KTContextDependencies *)v8 setSettings:v20];
  }

  return v8;
}

- (KTContextStore)contextStore
{
  WeakRetained = objc_loadWeakRetained(&self->_contextStore);

  return WeakRetained;
}

- (KTSMManager)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end