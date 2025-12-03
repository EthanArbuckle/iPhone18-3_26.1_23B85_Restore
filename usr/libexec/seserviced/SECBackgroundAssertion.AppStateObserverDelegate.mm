@interface SECBackgroundAssertion.AppStateObserverDelegate
- (void)didAppEnterBackground:(id)background;
- (void)didAppEnterForeground:(id)foreground;
- (void)didAppGetSuspended:(id)suspended;
@end

@implementation SECBackgroundAssertion.AppStateObserverDelegate

- (void)didAppGetSuspended:(id)suspended
{
  suspendedCopy = suspended;
  selfCopy = self;
  sub_1001CA608(suspendedCopy);
}

- (void)didAppEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1001CA680(backgroundCopy);
}

- (void)didAppEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1001CA6F8(foregroundCopy);
}

@end