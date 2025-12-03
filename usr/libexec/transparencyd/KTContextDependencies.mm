@interface KTContextDependencies
- (KTContextDependencies)initWithOperationDependencies:(id)dependencies application:(id)application;
- (KTContextStore)contextStore;
- (KTSMManager)stateMachine;
@end

@implementation KTContextDependencies

- (KTContextDependencies)initWithOperationDependencies:(id)dependencies application:(id)application
{
  dependenciesCopy = dependencies;
  applicationCopy = application;
  v22.receiver = self;
  v22.super_class = KTContextDependencies;
  v8 = [(KTContextDependencies *)&v22 init];
  if (v8)
  {
    publicKeyStore = [dependenciesCopy publicKeyStore];
    v10 = [publicKeyStore applicationPublicKeyStore:applicationCopy];
    [(KTContextDependencies *)v8 setApplicationKeyStore:v10];

    dataStore = [dependenciesCopy dataStore];
    [(KTContextDependencies *)v8 setDataStore:dataStore];

    staticKeyStore = [dependenciesCopy staticKeyStore];
    [(KTContextDependencies *)v8 setStaticKeyStore:staticKeyStore];

    logClient = [dependenciesCopy logClient];
    [(KTContextDependencies *)v8 setLogClient:logClient];

    contextStore = [dependenciesCopy contextStore];
    [(KTContextDependencies *)v8 setContextStore:contextStore];

    accountKeyService = [dependenciesCopy accountKeyService];
    v16 = [accountKeyService accountKeyService:applicationCopy];
    [(KTContextDependencies *)v8 setAccountKeyServer:v16];

    v17 = [dependenciesCopy kvs];
    [(KTContextDependencies *)v8 setKvs:v17];

    followup = [dependenciesCopy followup];
    [(KTContextDependencies *)v8 setFollowup:followup];

    cloudRecords = [dependenciesCopy cloudRecords];
    [(KTContextDependencies *)v8 setCloudRecords:cloudRecords];

    settings = [dependenciesCopy settings];
    [(KTContextDependencies *)v8 setSettings:settings];
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