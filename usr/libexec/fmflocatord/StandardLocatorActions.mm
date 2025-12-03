@interface StandardLocatorActions
+ (void)didStopLocatingInProvider:(id)provider;
@end

@implementation StandardLocatorActions

+ (void)didStopLocatingInProvider:(id)provider
{
  providerCopy = provider;
  standardLocator = [providerCopy standardLocator];

  if (standardLocator)
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100037DB4(providerCopy, v5);
    }

    [providerCopy setStandardLocator:0];
  }
}

@end