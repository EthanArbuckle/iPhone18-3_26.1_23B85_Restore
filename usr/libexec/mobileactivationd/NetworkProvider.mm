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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedInstance_networkProvider)
  {
    v3 = objc_alloc_init(NetworkProvider);
    v4 = sharedInstance_networkProvider;
    sharedInstance_networkProvider = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedInstance_networkProvider;

  return v5;
}

- (BOOL)networkReachable
{
  networkPathEvaluator = [(NetworkProvider *)self networkPathEvaluator];
  path = [(NWPathEvaluator *)networkPathEvaluator path];
  status = [path status];

  return ((status - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

@end