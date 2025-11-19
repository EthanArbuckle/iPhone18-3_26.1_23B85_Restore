@interface CKKSLocalSynchronizeOperation
- (CKKSKeychainView)ckks;
- (CKKSLocalSynchronizeOperation)initWithCKKSKeychainView:(id)a3 operationDependencies:(id)a4;
- (void)groupStart;
@end

@implementation CKKSLocalSynchronizeOperation

- (CKKSKeychainView)ckks
{
  WeakRetained = objc_loadWeakRetained((&self->_restartCount + 1));

  return WeakRetained;
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  [(CKKSLocalSynchronizeOperation *)self ckks];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FB1BC;
  v4[3] = &unk_100336F20;
  v3 = v4[4] = self;
  v5 = v3;
  objc_copyWeak(&v6, &location);
  [v3 dispatchSyncWithSQLTransaction:v4];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

- (CKKSLocalSynchronizeOperation)initWithCKKSKeychainView:(id)a3 operationDependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CKKSLocalSynchronizeOperation;
  v8 = [(CKKSGroupOperation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak((v8 + 132), v6);
    *(v9 + 32) = 0;
    objc_storeStrong((v9 + 140), a4);
    v10 = [v6 holdLocalSynchronizeOperation];
    [v9 addNullableDependency:v10];
  }

  return v9;
}

@end