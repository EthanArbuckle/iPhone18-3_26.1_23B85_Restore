@interface DriverKitDaemonXPCRequestDelegate
- (void)dumpStateWithReplyBlock:(id)block;
- (void)enqueueApprovalStateUpdateWithEntry:(id)entry replyBlock:(id)block;
- (void)getApprovalStateForSettingsWithReplyBlock:(id)block;
- (void)launchDriverWithBundleID:(id)d userServerName:(id)name tag:(id)tag replyBlock:(id)block;
@end

@implementation DriverKitDaemonXPCRequestDelegate

- (void)dumpStateWithReplyBlock:(id)block
{
  v3 = _Block_copy(block);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1000755E4(sub_10007A56C, v4);
}

- (void)getApprovalStateForSettingsWithReplyBlock:(id)block
{
  v3 = _Block_copy(block);
  _Block_copy(v3);

  sub_1000784D4(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)enqueueApprovalStateUpdateWithEntry:(id)entry replyBlock:(id)block
{
  v6 = _Block_copy(block);
  entryCopy = entry;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100078A14(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1000128D8(v8, v10);
}

- (void)launchDriverWithBundleID:(id)d userServerName:(id)name tag:(id)tag replyBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (tag)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    tag = v16;
  }

  else
  {
    v15 = 0;
  }

  _Block_copy(v8);

  sub_100078DBC(v9, v11, v12, v14, v15, tag, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end