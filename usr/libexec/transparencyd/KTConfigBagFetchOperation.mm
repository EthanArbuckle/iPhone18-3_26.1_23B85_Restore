@interface KTConfigBagFetchOperation
- (KTConfigBagFetchOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 triggerInterface:(id)a6;
- (void)groupStart;
@end

@implementation KTConfigBagFetchOperation

- (KTConfigBagFetchOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 triggerInterface:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = KTConfigBagFetchOperation;
  v15 = [(KTGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a5);
    objc_storeStrong(&v16->_triggerInterface, a6);
  }

  return v16;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTConfigBagFetchOperation *)self setFinishedOp:v3];

  v4 = [(KTConfigBagFetchOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [(KTConfigBagFetchOperation *)self deps];
  v6 = [v5 logClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CA8BC;
  v7[3] = &unk_100325C40;
  objc_copyWeak(&v8, &location);
  [v6 configureFromNetwork:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end