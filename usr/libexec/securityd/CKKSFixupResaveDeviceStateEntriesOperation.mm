@interface CKKSFixupResaveDeviceStateEntriesOperation
- (CKKSFixupResaveDeviceStateEntriesOperation)initWithOperationDependencies:(id)dependencies;
- (id)description;
- (void)groupStart;
@end

@implementation CKKSFixupResaveDeviceStateEntriesOperation

- (void)groupStart
{
  deps = [(CKKSFixupResaveDeviceStateEntriesOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  deps2 = [(CKKSFixupResaveDeviceStateEntriesOperation *)self deps];
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
        v12[2] = sub_10019E7A0;
        v12[3] = &unk_100343B50;
        v12[4] = v11;
        v12[5] = self;
        [databaseProvider dispatchSyncWithSQLTransaction:v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [activeManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)description
{
  deps = [(CKKSFixupResaveDeviceStateEntriesOperation *)self deps];
  views = [deps views];
  v4 = [NSString stringWithFormat:@"<CKKSFixup:ResaveCDSE (%@)>", views];

  return v4;
}

- (CKKSFixupResaveDeviceStateEntriesOperation)initWithOperationDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v9.receiver = self;
  v9.super_class = CKKSFixupResaveDeviceStateEntriesOperation;
  v6 = [(CKKSGroupOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, dependencies);
    objc_storeStrong(&v7->_intendedState, @"fixup_delete_tombstones");
    objc_storeStrong(&v7->_nextState, @"error");
  }

  return v7;
}

@end