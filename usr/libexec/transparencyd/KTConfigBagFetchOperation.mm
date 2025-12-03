@interface KTConfigBagFetchOperation
- (KTConfigBagFetchOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState triggerInterface:(id)interface;
- (void)groupStart;
@end

@implementation KTConfigBagFetchOperation

- (KTConfigBagFetchOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState triggerInterface:(id)interface
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  interfaceCopy = interface;
  v18.receiver = self;
  v18.super_class = KTConfigBagFetchOperation;
  v15 = [(KTGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_triggerInterface, interface);
  }

  return v16;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTConfigBagFetchOperation *)self setFinishedOp:v3];

  finishedOp = [(KTConfigBagFetchOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(&location, self);
  deps = [(KTConfigBagFetchOperation *)self deps];
  logClient = [deps logClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CA8BC;
  v7[3] = &unk_100325C40;
  objc_copyWeak(&v8, &location);
  [logClient configureFromNetwork:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end