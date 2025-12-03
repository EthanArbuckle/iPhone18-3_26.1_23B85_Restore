@interface CKKSFixupFetchAllTLKShares
- (CKKSFixupFetchAllTLKShares)initWithOperationDependencies:(id)dependencies ckoperationGroup:(id)group;
- (id)description;
- (void)groupStart;
@end

@implementation CKKSFixupFetchAllTLKShares

- (void)groupStart
{
  deps = [(CKKSFixupFetchAllTLKShares *)self deps];
  databaseProvider = [deps databaseProvider];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  deps2 = [(CKKSFixupFetchAllTLKShares *)self deps];
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
        v12[2] = sub_10019D284;
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

- (id)description
{
  deps = [(CKKSFixupFetchAllTLKShares *)self deps];
  views = [deps views];
  v4 = [NSString stringWithFormat:@"<CKKSFixup:FetchAllTLKShares (%@)>", views];

  return v4;
}

- (CKKSFixupFetchAllTLKShares)initWithOperationDependencies:(id)dependencies ckoperationGroup:(id)group
{
  dependenciesCopy = dependencies;
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = CKKSFixupFetchAllTLKShares;
  v9 = [(CKKSGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, dependencies);
    objc_storeStrong(&v10->_group, group);
    objc_storeStrong(&v10->_intendedState, @"fixup_local_reload");
    objc_storeStrong(&v10->_nextState, @"error");
  }

  return v10;
}

@end