@interface CKKSFixupLocalReloadOperation
- (CKKSFixupLocalReloadOperation)initWithOperationDependencies:(id)a3 fixupNumber:(unint64_t)a4 ckoperationGroup:(id)a5 entering:(id)a6;
- (id)description;
- (void)groupStart;
@end

@implementation CKKSFixupLocalReloadOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [CKKSReloadAllItemsOperation alloc];
  v4 = [(CKKSFixupLocalReloadOperation *)self deps];
  v5 = [(CKKSReloadAllItemsOperation *)v3 initWithOperationDependencies:v4];

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
  v3 = [(CKKSFixupLocalReloadOperation *)self fixupNumber];
  v4 = [(CKKSFixupLocalReloadOperation *)self deps];
  v5 = [v4 views];
  v6 = [NSString stringWithFormat:@"<CKKSFixup:LocalReload (%d)(%@)>", v3, v5];

  return v6;
}

- (CKKSFixupLocalReloadOperation)initWithOperationDependencies:(id)a3 fixupNumber:(unint64_t)a4 ckoperationGroup:(id)a5 entering:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CKKSFixupLocalReloadOperation;
  v14 = [(CKKSGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deps, a3);
    v15->_fixupNumber = a4;
    objc_storeStrong(&v15->_group, a5);
    objc_storeStrong(&v15->_intendedState, a6);
    objc_storeStrong(&v15->_nextState, @"error");
  }

  return v15;
}

@end