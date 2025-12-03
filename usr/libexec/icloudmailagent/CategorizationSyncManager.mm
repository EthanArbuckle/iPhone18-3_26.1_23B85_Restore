@interface CategorizationSyncManager
+ (_TtC15icloudmailagent25CategorizationSyncManager)sharedInstance;
- (void)start;
@end

@implementation CategorizationSyncManager

+ (_TtC15icloudmailagent25CategorizationSyncManager)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static CategorizationSyncManager.sharedInstance;

  return v3;
}

- (void)start
{
  selfCopy = self;
  CategorizationSyncManager.start()();
}

@end