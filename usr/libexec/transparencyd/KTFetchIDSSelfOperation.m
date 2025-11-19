@interface KTFetchIDSSelfOperation
+ (id)lastSelfIDSFetch:(id)a3;
- (KTFetchIDSSelfOperation)initWithApplication:(id)a3 dependencies:(id)a4 intendedState:(id)a5 errorState:(id)a6;
- (void)groupStart;
@end

@implementation KTFetchIDSSelfOperation

- (KTFetchIDSSelfOperation)initWithApplication:(id)a3 dependencies:(id)a4 intendedState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = KTFetchIDSSelfOperation;
  v15 = [(KTGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a4);
    objc_storeStrong(&v16->_application, a3);
    objc_storeStrong(&v16->_intendedState, a5);
    objc_storeStrong(&v16->_nextState, a6);
  }

  return v16;
}

+ (id)lastSelfIDSFetch:(id)a3
{
  v3 = [a3 smDataStore];
  v4 = [v3 getSettingsDate:@"KTIDSLastSelfFetch"];

  return v4;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTFetchIDSSelfOperation *)self setFinishedOp:v3];

  v4 = [(KTFetchIDSSelfOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [(KTFetchIDSSelfOperation *)self deps];
  v6 = [v5 idsOperations];
  v7 = [(KTFetchIDSSelfOperation *)self application];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6780;
  v8[3] = &unk_100329140;
  objc_copyWeak(&v9, &location);
  [v6 fetchSelfVerificationInfo:v7 completionBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end