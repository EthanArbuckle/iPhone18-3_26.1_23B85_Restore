@interface StandardLocatorActions
+ (void)didStopLocatingInProvider:(id)a3;
@end

@implementation StandardLocatorActions

+ (void)didStopLocatingInProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 standardLocator];

  if (v4)
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100037DB4(v3, v5);
    }

    [v3 setStandardLocator:0];
  }
}

@end