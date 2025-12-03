@interface KTFetchIDSSelfOperation
+ (id)lastSelfIDSFetch:(id)fetch;
- (KTFetchIDSSelfOperation)initWithApplication:(id)application dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTFetchIDSSelfOperation

- (KTFetchIDSSelfOperation)initWithApplication:(id)application dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  applicationCopy = application;
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v18.receiver = self;
  v18.super_class = KTFetchIDSSelfOperation;
  v15 = [(KTGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_application, application);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
  }

  return v16;
}

+ (id)lastSelfIDSFetch:(id)fetch
{
  smDataStore = [fetch smDataStore];
  v4 = [smDataStore getSettingsDate:@"KTIDSLastSelfFetch"];

  return v4;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTFetchIDSSelfOperation *)self setFinishedOp:v3];

  finishedOp = [(KTFetchIDSSelfOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(&location, self);
  deps = [(KTFetchIDSSelfOperation *)self deps];
  idsOperations = [deps idsOperations];
  application = [(KTFetchIDSSelfOperation *)self application];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6780;
  v8[3] = &unk_100329140;
  objc_copyWeak(&v9, &location);
  [idsOperations fetchSelfVerificationInfo:application completionBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end