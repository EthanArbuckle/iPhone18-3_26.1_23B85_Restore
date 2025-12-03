@interface CKKSReloadAllItemsOperation
- (CKKSReloadAllItemsOperation)initWithOperationDependencies:(id)dependencies;
- (void)main;
@end

@implementation CKKSReloadAllItemsOperation

- (void)main
{
  deps = [(CKKSReloadAllItemsOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  deps2 = [(CKKSReloadAllItemsOperation *)self deps];
  activeManagedViews = [deps2 activeManagedViews];

  v7 = [activeManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(activeManagedViews);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000FBD4C;
        v12[3] = &unk_100343B50;
        v12[4] = self;
        v12[5] = v11;
        [databaseProvider dispatchSyncWithSQLTransaction:v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [activeManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (CKKSReloadAllItemsOperation)initWithOperationDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v9.receiver = self;
  v9.super_class = CKKSReloadAllItemsOperation;
  v6 = [(CKKSResultOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, dependencies);
  }

  return v7;
}

@end