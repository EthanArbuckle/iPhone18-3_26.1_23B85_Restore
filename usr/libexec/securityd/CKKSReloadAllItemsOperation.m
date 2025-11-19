@interface CKKSReloadAllItemsOperation
- (CKKSReloadAllItemsOperation)initWithOperationDependencies:(id)a3;
- (void)main;
@end

@implementation CKKSReloadAllItemsOperation

- (void)main
{
  v3 = [(CKKSReloadAllItemsOperation *)self deps];
  v4 = [v3 databaseProvider];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CKKSReloadAllItemsOperation *)self deps];
  v6 = [v5 activeManagedViews];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000FBD4C;
        v12[3] = &unk_100343B50;
        v12[4] = self;
        v12[5] = v11;
        [v4 dispatchSyncWithSQLTransaction:v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (CKKSReloadAllItemsOperation)initWithOperationDependencies:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKKSReloadAllItemsOperation;
  v6 = [(CKKSResultOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, a3);
  }

  return v7;
}

@end