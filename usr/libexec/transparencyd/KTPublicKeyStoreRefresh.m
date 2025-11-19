@interface KTPublicKeyStoreRefresh
- (KTPublicKeyStoreRefresh)initWithDependencies:(id)a3 initialFetch:(BOOL)a4 intendedState:(id)a5 errorState:(id)a6;
- (void)groupStart;
@end

@implementation KTPublicKeyStoreRefresh

- (KTPublicKeyStoreRefresh)initWithDependencies:(id)a3 initialFetch:(BOOL)a4 intendedState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = KTPublicKeyStoreRefresh;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 142), a3);
    v15[120] = a4;
    objc_storeStrong((v15 + 126), a6);
    objc_storeStrong((v15 + 134), a5);
    v16 = v15;
  }

  return v15;
}

- (void)groupStart
{
  if (-[KTPublicKeyStoreRefresh isInitialFetch](self, "isInitialFetch") && (-[KTPublicKeyStoreRefresh deps](self, "deps"), v3 = objc_claimAutoreleasedReturnValue(), [v3 publicKeyStore], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "initiallyFetched"), v4, v3, v5))
  {
    v21 = [(KTPublicKeyStoreRefresh *)self intendedState];
    [(KTPublicKeyStoreRefresh *)self setNextState:v21];
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
      v8 = [(KTPublicKeyStoreRefresh *)self deps];
      v9 = [v8 publicKeyStore];
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Fetching public key store because disk key store (%@) not ready", buf, 0xCu);
    }

    v10 = objc_alloc_init(NSOperation);
    [(KTPublicKeyStoreRefresh *)self setFinishedOp:v10];

    v11 = [(KTPublicKeyStoreRefresh *)self finishedOp];
    [v11 setName:@"KTPublicKeyStoreFetch"];

    v12 = [(KTPublicKeyStoreRefresh *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v12];

    objc_initWeak(buf, self);
    v13 = [(KTPublicKeyStoreRefresh *)self deps];
    v14 = [v13 publicKeyStore];
    v15 = [(KTPublicKeyStoreRefresh *)self deps];
    v16 = [v15 logClient];
    v17 = [(KTPublicKeyStoreRefresh *)self deps];
    v18 = [v17 dataStore];
    v19 = [(KTPublicKeyStoreRefresh *)self deps];
    v20 = [v19 contextStore];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001B2A24;
    v22[3] = &unk_100325C40;
    objc_copyWeak(&v23, buf);
    [v14 updatePublicKeyStores:v16 diskStore:v18 contextStore:v20 complete:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

@end