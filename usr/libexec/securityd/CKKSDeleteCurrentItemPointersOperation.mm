@interface CKKSDeleteCurrentItemPointersOperation
- (CKKSDeleteCurrentItemPointersOperation)initWithCKKSOperationDependencies:(id)dependencies viewState:(id)state accessGroup:(id)group identifiers:(id)identifiers ckoperationGroup:(id)ckoperationGroup;
- (void)groupStart;
@end

@implementation CKKSDeleteCurrentItemPointersOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  deps = [(CKKSDeleteCurrentItemPointersOperation *)self deps];
  databaseProvider = [deps databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100191450;
  v5[3] = &unk_1003438D0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [databaseProvider dispatchSyncWithSQLTransaction:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CKKSDeleteCurrentItemPointersOperation)initWithCKKSOperationDependencies:(id)dependencies viewState:(id)state accessGroup:(id)group identifiers:(id)identifiers ckoperationGroup:(id)ckoperationGroup
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  groupCopy = group;
  identifiersCopy = identifiers;
  ckoperationGroupCopy = ckoperationGroup;
  v21.receiver = self;
  v21.super_class = CKKSDeleteCurrentItemPointersOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_viewState, state);
    objc_storeStrong(&v18->_accessGroup, group);
    objc_storeStrong(&v18->_identifiers, identifiers);
    objc_storeStrong(&v18->_ckoperationGroup, ckoperationGroup);
  }

  return v18;
}

@end