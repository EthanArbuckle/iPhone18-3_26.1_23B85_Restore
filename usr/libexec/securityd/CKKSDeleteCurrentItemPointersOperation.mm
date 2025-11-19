@interface CKKSDeleteCurrentItemPointersOperation
- (CKKSDeleteCurrentItemPointersOperation)initWithCKKSOperationDependencies:(id)a3 viewState:(id)a4 accessGroup:(id)a5 identifiers:(id)a6 ckoperationGroup:(id)a7;
- (void)groupStart;
@end

@implementation CKKSDeleteCurrentItemPointersOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [(CKKSDeleteCurrentItemPointersOperation *)self deps];
  v4 = [v3 databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100191450;
  v5[3] = &unk_1003438D0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [v4 dispatchSyncWithSQLTransaction:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CKKSDeleteCurrentItemPointersOperation)initWithCKKSOperationDependencies:(id)a3 viewState:(id)a4 accessGroup:(id)a5 identifiers:(id)a6 ckoperationGroup:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CKKSDeleteCurrentItemPointersOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_viewState, a4);
    objc_storeStrong(&v18->_accessGroup, a5);
    objc_storeStrong(&v18->_identifiers, a6);
    objc_storeStrong(&v18->_ckoperationGroup, a7);
  }

  return v18;
}

@end