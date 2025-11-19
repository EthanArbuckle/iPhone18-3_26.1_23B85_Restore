@interface SECBackgroundAssertion.AppStateObserverDelegate
- (void)didAppEnterBackground:(id)a3;
- (void)didAppEnterForeground:(id)a3;
- (void)didAppGetSuspended:(id)a3;
@end

@implementation SECBackgroundAssertion.AppStateObserverDelegate

- (void)didAppGetSuspended:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CA608(v4);
}

- (void)didAppEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CA680(v4);
}

- (void)didAppEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CA6F8(v4);
}

@end