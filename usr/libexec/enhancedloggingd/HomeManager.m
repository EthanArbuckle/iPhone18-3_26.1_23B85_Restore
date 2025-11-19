@interface HomeManager
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeManager

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v7 = a3;
  v4 = self;
  [(HomeManager *)v7 setDelegate:0];
  if (*(&v4->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus))
  {
    v5 = v7;
    v7 = v4;
  }

  else
  {
    *(&v4->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_homeListStatus) = 1;
    v6 = *(&v4->super.isa + OBJC_IVAR____TtC16enhancedloggingd11HomeManager_statusSemaphore);
    OS_dispatch_semaphore.signal()();
    v5 = v4;
  }
}

@end