@interface CKKSReencryptOutgoingItemsOperation
- (CKKSKeychainView)ckks;
- (CKKSReencryptOutgoingItemsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState holdOperation:(id)operation;
- (void)main;
@end

@implementation CKKSReencryptOutgoingItemsOperation

- (CKKSKeychainView)ckks
{
  WeakRetained = objc_loadWeakRetained(&self->_ckks);

  return WeakRetained;
}

- (void)main
{
  deps = [(CKKSReencryptOutgoingItemsOperation *)self deps];
  databaseProvider = [deps databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DBF20;
  v5[3] = &unk_100344610;
  v5[4] = self;
  [databaseProvider dispatchSyncWithSQLTransaction:v5];
}

- (CKKSReencryptOutgoingItemsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState holdOperation:(id)operation
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  operationCopy = operation;
  v18.receiver = self;
  v18.super_class = CKKSReencryptOutgoingItemsOperation;
  v15 = [(CKKSResultOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_nextState, errorState);
    objc_storeStrong(&v16->_intendedState, state);
    [(CKKSReencryptOutgoingItemsOperation *)v16 addNullableDependency:operationCopy];
  }

  return v16;
}

@end