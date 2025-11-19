@interface KTFetchIDMSOperation
- (KTFetchIDMSOperation)initWithDependencies:(id)a3 specificUser:(id)a4 intendedState:(id)a5 errorState:(id)a6;
- (void)groupStart;
@end

@implementation KTFetchIDMSOperation

- (KTFetchIDMSOperation)initWithDependencies:(id)a3 specificUser:(id)a4 intendedState:(id)a5 errorState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = KTFetchIDMSOperation;
  v15 = [(KTGroupOperation *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_specificUser, a4);
    objc_storeStrong(&v16->_intendedState, a5);
    objc_storeStrong(&v16->_nextState, a6);
    v17 = v16;
  }

  return v16;
}

- (void)groupStart
{
  v3 = [(KTFetchIDMSOperation *)self specificUser];

  if (v3)
  {
    v4 = objc_alloc_init(NSOperation);
    [(KTFetchIDMSOperation *)self setFinishedOp:v4];

    v5 = objc_alloc_init(KTResultOperation);
    v6 = [(KTResultOperation *)v5 timeout:30000000000];
    v7 = [(KTFetchIDMSOperation *)self finishedOp];
    [(KTResultOperation *)v5 addDependency:v7];

    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];
    v8 = [(KTGroupOperation *)self operationQueue];
    [v8 addOperation:v5];

    objc_initWeak(&location, self);
    v9 = [(KTFetchIDMSOperation *)self deps];
    v10 = [v9 idmsOperations];
    v11 = [(KTFetchIDMSOperation *)self specificUser];
    v12 = [v11 altDSID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001CA42C;
    v14[3] = &unk_100327458;
    objc_copyWeak(&v15, &location);
    [v10 refreshDeviceList:v12 complete:v14];

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