@interface DIPLockStateMonitor
- (BOOL)registerForDeviceLockNotificationsWithWatchPairingID:(id)d error:(id *)error;
- (void)unregisterFromDeviceLockNotificationsWithWatchPairingID:(id)d;
@end

@implementation DIPLockStateMonitor

- (BOOL)registerForDeviceLockNotificationsWithWatchPairingID:(id)d error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  sub_100484DB8(v5, v7);

  return 1;
}

- (void)unregisterFromDeviceLockNotificationsWithWatchPairingID:(id)d
{
  if (d)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1004857EC(v4, v6);
}

@end