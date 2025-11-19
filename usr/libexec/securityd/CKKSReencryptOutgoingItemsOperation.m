@interface CKKSReencryptOutgoingItemsOperation
- (CKKSKeychainView)ckks;
- (CKKSReencryptOutgoingItemsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 holdOperation:(id)a6;
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
  v3 = [(CKKSReencryptOutgoingItemsOperation *)self deps];
  v4 = [v3 databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DBF20;
  v5[3] = &unk_100344610;
  v5[4] = self;
  [v4 dispatchSyncWithSQLTransaction:v5];
}

- (CKKSReencryptOutgoingItemsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 holdOperation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSReencryptOutgoingItemsOperation;
  v15 = [(CKKSResultOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_nextState, a5);
    objc_storeStrong(&v16->_intendedState, a4);
    [(CKKSReencryptOutgoingItemsOperation *)v16 addNullableDependency:v14];
  }

  return v16;
}

@end