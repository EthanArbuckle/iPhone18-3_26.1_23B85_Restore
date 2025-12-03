@interface KTFetchKTSelfOperation
- (KTFetchKTSelfOperation)initWithApplication:(id)application dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTFetchKTSelfOperation

- (KTFetchKTSelfOperation)initWithApplication:(id)application dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  applicationCopy = application;
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v20.receiver = self;
  v20.super_class = KTFetchKTSelfOperation;
  v15 = [(KTGroupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_application, application);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("FetchKTSelf_URIWaiter", v17);
    [(KTFetchKTSelfOperation *)v16 setUriQueue:v18];
  }

  return v16;
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B3FB8;
  v10[3] = &unk_1003175E0;
  objc_copyWeak(&v11, &location);
  v3 = [KTResultOperation blockOperationWithBlock:v10];
  [(KTFetchKTSelfOperation *)self setFinishedOp:v3];

  finishedOp = [(KTFetchKTSelfOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps = [(KTFetchKTSelfOperation *)self deps];
  smDataStore = [deps smDataStore];
  application = [(KTFetchKTSelfOperation *)self application];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B411C;
  v8[3] = &unk_1003196A8;
  objc_copyWeak(&v9, &location);
  [smDataStore fetchSelfVerificationInfoForApplication:application complete:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end