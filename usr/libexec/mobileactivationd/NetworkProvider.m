@interface NetworkProvider
+ (id)sharedInstance;
- (BOOL)networkReachable;
- (NetworkProvider)init;
@end

@implementation NetworkProvider

- (NetworkProvider)init
{
  v6.receiver = self;
  v6.super_class = NetworkProvider;
  v2 = [(NetworkProvider *)&v6 init];
  if (v2)
  {
    if (!objc_opt_class() || (v3 = objc_alloc_init(NWPathEvaluator), networkPathEvaluator = v2->_networkPathEvaluator, v2->_networkPathEvaluator = v3, networkPathEvaluator, !v2->_networkPathEvaluator))
    {

      return 0;
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedInstance_networkProvider)
  {
    v3 = objc_alloc_init(NetworkProvider);
    v4 = sharedInstance_networkProvider;
    sharedInstance_networkProvider = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedInstance_networkProvider;

  return v5;
}

- (BOOL)networkReachable
{
  v2 = [(NetworkProvider *)self networkPathEvaluator];
  v3 = [(NWPathEvaluator *)v2 path];
  v4 = [v3 status];

  return ((v4 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

@end