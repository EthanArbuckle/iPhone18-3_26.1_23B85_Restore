@interface HomeManager
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManager

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  [(HomeManager *)homesCopy setDelegate:0];
  if (*(&selfCopy->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus))
  {
    v5 = homesCopy;
    homesCopy = selfCopy;
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus) = 1;
    v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_statusSemaphore);
    OS_dispatch_semaphore.signal()();
    v5 = selfCopy;
  }
}

@end