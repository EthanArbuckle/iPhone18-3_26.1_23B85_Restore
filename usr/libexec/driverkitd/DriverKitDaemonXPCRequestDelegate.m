@interface DriverKitDaemonXPCRequestDelegate
- (void)dumpStateWithReplyBlock:(id)a3;
- (void)enqueueApprovalStateUpdateWithEntry:(id)a3 replyBlock:(id)a4;
- (void)getApprovalStateForSettingsWithReplyBlock:(id)a3;
- (void)launchDriverWithBundleID:(id)a3 userServerName:(id)a4 tag:(id)a5 replyBlock:(id)a6;
@end

@implementation DriverKitDaemonXPCRequestDelegate

- (void)dumpStateWithReplyBlock:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1000755E4(sub_10007A56C, v4);
}

- (void)getApprovalStateForSettingsWithReplyBlock:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_1000784D4(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)enqueueApprovalStateUpdateWithEntry:(id)a3 replyBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100078A14(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1000128D8(v8, v10);
}

- (void)launchDriverWithBundleID:(id)a3 userServerName:(id)a4 tag:(id)a5 replyBlock:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a5)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  _Block_copy(v8);

  sub_100078DBC(v9, v11, v12, v14, v15, a5, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end