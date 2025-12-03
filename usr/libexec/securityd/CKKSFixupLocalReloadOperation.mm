@interface CKKSFixupLocalReloadOperation
- (CKKSFixupLocalReloadOperation)initWithOperationDependencies:(id)dependencies fixupNumber:(unint64_t)number ckoperationGroup:(id)group entering:(id)entering;
- (id)description;
- (void)groupStart;
@end

@implementation CKKSFixupLocalReloadOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [CKKSReloadAllItemsOperation alloc];
  deps = [(CKKSFixupLocalReloadOperation *)self deps];
  v5 = [(CKKSReloadAllItemsOperation *)v3 initWithOperationDependencies:deps];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019DEC8;
  v8[3] = &unk_100344D38;
  objc_copyWeak(&v10, &location);
  v6 = v5;
  v9 = v6;
  v7 = [CKKSResultOperation named:@"local-reload-cleanup" withBlock:v8];
  [v7 addNullableDependency:v6];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)description
{
  fixupNumber = [(CKKSFixupLocalReloadOperation *)self fixupNumber];
  deps = [(CKKSFixupLocalReloadOperation *)self deps];
  views = [deps views];
  v6 = [NSString stringWithFormat:@"<CKKSFixup:LocalReload (%d)(%@)>", fixupNumber, views];

  return v6;
}

- (CKKSFixupLocalReloadOperation)initWithOperationDependencies:(id)dependencies fixupNumber:(unint64_t)number ckoperationGroup:(id)group entering:(id)entering
{
  dependenciesCopy = dependencies;
  groupCopy = group;
  enteringCopy = entering;
  v17.receiver = self;
  v17.super_class = CKKSFixupLocalReloadOperation;
  v14 = [(CKKSGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deps, dependencies);
    v15->_fixupNumber = number;
    objc_storeStrong(&v15->_group, group);
    objc_storeStrong(&v15->_intendedState, entering);
    objc_storeStrong(&v15->_nextState, @"error");
  }

  return v15;
}

@end