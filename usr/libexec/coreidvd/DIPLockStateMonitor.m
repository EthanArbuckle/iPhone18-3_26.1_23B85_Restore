@interface DIPLockStateMonitor
- (BOOL)registerForDeviceLockNotificationsWithWatchPairingID:(id)a3 error:(id *)a4;
- (void)unregisterFromDeviceLockNotificationsWithWatchPairingID:(id)a3;
@end

@implementation DIPLockStateMonitor

- (BOOL)registerForDeviceLockNotificationsWithWatchPairingID:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  sub_100484DB8(v5, v7);

  return 1;
}

- (void)unregisterFromDeviceLockNotificationsWithWatchPairingID:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1004857EC(v4, v6);
}

@end