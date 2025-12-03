@interface KTPublicKeyStoreRefresh
- (KTPublicKeyStoreRefresh)initWithDependencies:(id)dependencies initialFetch:(BOOL)fetch intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTPublicKeyStoreRefresh

- (KTPublicKeyStoreRefresh)initWithDependencies:(id)dependencies initialFetch:(BOOL)fetch intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v18.receiver = self;
  v18.super_class = KTPublicKeyStoreRefresh;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 142), dependencies);
    v15[120] = fetch;
    objc_storeStrong((v15 + 126), errorState);
    objc_storeStrong((v15 + 134), state);
    v16 = v15;
  }

  return v15;
}

- (void)groupStart
{
  if (-[KTPublicKeyStoreRefresh isInitialFetch](self, "isInitialFetch") && (-[KTPublicKeyStoreRefresh deps](self, "deps"), v3 = objc_claimAutoreleasedReturnValue(), [v3 publicKeyStore], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "initiallyFetched"), v4, v3, v5))
  {
    intendedState = [(KTPublicKeyStoreRefresh *)self intendedState];
    [(KTPublicKeyStoreRefresh *)self setNextState:intendedState];
  }

  else
  {
    if (qword_10039C8E8 != -1)
    {
      sub_10025B35C();
    }

    v6 = qword_10039C8F0;
    if (os_log_type_enabled(qword_10039C8F0, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      deps = [(KTPublicKeyStoreRefresh *)self deps];
      publicKeyStore = [deps publicKeyStore];
      *buf = 138412290;
      v25 = publicKeyStore;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Fetching public key store because disk key store (%@) not ready", buf, 0xCu);
    }

    v10 = objc_alloc_init(NSOperation);
    [(KTPublicKeyStoreRefresh *)self setFinishedOp:v10];

    finishedOp = [(KTPublicKeyStoreRefresh *)self finishedOp];
    [finishedOp setName:@"KTPublicKeyStoreFetch"];

    finishedOp2 = [(KTPublicKeyStoreRefresh *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp2];

    objc_initWeak(buf, self);
    deps2 = [(KTPublicKeyStoreRefresh *)self deps];
    publicKeyStore2 = [deps2 publicKeyStore];
    deps3 = [(KTPublicKeyStoreRefresh *)self deps];
    logClient = [deps3 logClient];
    deps4 = [(KTPublicKeyStoreRefresh *)self deps];
    dataStore = [deps4 dataStore];
    deps5 = [(KTPublicKeyStoreRefresh *)self deps];
    contextStore = [deps5 contextStore];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001B2A24;
    v22[3] = &unk_100325C40;
    objc_copyWeak(&v23, buf);
    [publicKeyStore2 updatePublicKeyStores:logClient diskStore:dataStore contextStore:contextStore complete:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

@end