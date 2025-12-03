@interface OTFetchViewsOperation
- (OTFetchViewsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTFetchViewsOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fetching views", buf, 2u);
  }

  deps = [(OTFetchViewsOperation *)self deps];
  stateHolder = [deps stateHolder];
  v16 = 0;
  v6 = [stateHolder loadOrCreateAccountMetadata:&v16];
  v7 = v16;

  if (!v6 || v7)
  {
    v8 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to load account metadata: %@", buf, 0xCu);
    }
  }

  else
  {
    -[OTFetchViewsOperation setIsInheritedAccount:](self, "setIsInheritedAccount:", [v6 isInheritedAccount]);
  }

  objc_initWeak(buf, self);
  deps2 = [(OTFetchViewsOperation *)self deps];
  cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
  deps3 = [(OTFetchViewsOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  isInheritedAccount = [(OTFetchViewsOperation *)self isInheritedAccount];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015EF98;
  v14[3] = &unk_100338738;
  objc_copyWeak(&v15, buf);
  [cuttlefishXPCWrapper fetchCurrentPolicyWithSpecificUser:activeAccount modelIDOverride:0 isInheritedAccount:isInheritedAccount reply:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (OTFetchViewsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTFetchViewsOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 150), dependencies);
    objc_storeStrong((v13 + 134), state);
    objc_storeStrong((v13 + 142), errorState);
  }

  return v13;
}

@end