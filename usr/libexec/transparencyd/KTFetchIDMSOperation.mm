@interface KTFetchIDMSOperation
- (KTFetchIDMSOperation)initWithDependencies:(id)dependencies specificUser:(id)user intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTFetchIDMSOperation

- (KTFetchIDMSOperation)initWithDependencies:(id)dependencies specificUser:(id)user intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  userCopy = user;
  stateCopy = state;
  errorStateCopy = errorState;
  v19.receiver = self;
  v19.super_class = KTFetchIDMSOperation;
  v15 = [(KTGroupOperation *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_specificUser, user);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    v17 = v16;
  }

  return v16;
}

- (void)groupStart
{
  specificUser = [(KTFetchIDMSOperation *)self specificUser];

  if (specificUser)
  {
    v4 = objc_alloc_init(NSOperation);
    [(KTFetchIDMSOperation *)self setFinishedOp:v4];

    v5 = objc_alloc_init(KTResultOperation);
    v6 = [(KTResultOperation *)v5 timeout:30000000000];
    finishedOp = [(KTFetchIDMSOperation *)self finishedOp];
    [(KTResultOperation *)v5 addDependency:finishedOp];

    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];
    operationQueue = [(KTGroupOperation *)self operationQueue];
    [operationQueue addOperation:v5];

    objc_initWeak(&location, self);
    deps = [(KTFetchIDMSOperation *)self deps];
    idmsOperations = [deps idmsOperations];
    specificUser2 = [(KTFetchIDMSOperation *)self specificUser];
    altDSID = [specificUser2 altDSID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001CA42C;
    v14[3] = &unk_100327458;
    objc_copyWeak(&v15, &location);
    [idmsOperations refreshDeviceList:altDSID complete:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [NSError errorWithDomain:kTransparencyErrorInternal code:-392 userInfo:0];
    [(KTResultOperation *)self setError:v13];
  }
}

@end