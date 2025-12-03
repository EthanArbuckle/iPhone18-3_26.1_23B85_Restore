@interface GamePolicyPrivilegedToolProxy
- (id)requestLaunchGamesApp;
- (void)ping;
- (void)requestCCUIGameModeStatusInfoWithReply:(id)reply;
- (void)requestCCUIGameModeStatusWithReply:(id)reply;
- (void)requestGameModeWithCompletionHandler:(id)handler;
- (void)requestGetIgnoreDeviceRestrictionsWithReply:(id)reply;
- (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply;
- (void)requestSEMAllowlistWithReply:(id)reply;
- (void)requestSEMClearAllowlistWithReply:(id)reply;
- (void)requestSetGameModeWithGameModeEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)requestSetIgnoreDeviceRestrictions:(BOOL)restrictions withReply:(id)reply;
@end

@implementation GamePolicyPrivilegedToolProxy

- (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply
{
  v7 = _Block_copy(reply);
  _Block_copy(v7);

  sub_100020FC4(conditional, app, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)ping
{

  sub_10001ED1C();
}

- (void)requestSetIgnoreDeviceRestrictions:(BOOL)restrictions withReply:(id)reply
{
  v4 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.setter();

  v4[2](v4, 1);

  _Block_release(v4);
}

- (void)requestGetIgnoreDeviceRestrictionsWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v4 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();

  v3[2](v3, v4 & 1);

  _Block_release(v3);
}

- (void)requestSEMAllowlistWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.semAllowList.getter();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3[2](v3, isa);

  _Block_release(v3);
}

- (void)requestSEMClearAllowlistWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  static GlobalPreferences.defaultSEMAllowList.getter();
  dispatch thunk of static GlobalPreferences.shared.getter();

  dispatch thunk of GlobalPreferences.semAllowList.setter();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3[2](v3, isa);

  _Block_release(v3);
}

- (void)requestCCUIGameModeStatusInfoWithReply:(id)reply
{
  v3 = _Block_copy(reply);

  v4 = sub_10001F414(0, 1);
  v3[2](v3, v4);

  _Block_release(v3);
}

- (void)requestCCUIGameModeStatusWithReply:(id)reply
{
  v3 = _Block_copy(reply);

  v4 = sub_10001F414(0, 1);
  v5 = dispatch thunk of GameModeCCUIStatusInfo.revlock.getter();

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)requestGameModeWithCompletionHandler:(id)handler
{
  v5 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10003EC58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10003EC60;
  v13[5] = v12;

  sub_100020540(0, 0, v8, &unk_10003EC68, v13);
}

- (void)requestSetGameModeWithGameModeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = enabled;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10003EC08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10003EC18;
  v15[5] = v14;

  sub_100020540(0, 0, v10, &unk_10003EC28, v15);
}

- (id)requestLaunchGamesApp
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.tool.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "requestLaunchGamesApp", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  return [objc_opt_self() launchApp];
}

@end