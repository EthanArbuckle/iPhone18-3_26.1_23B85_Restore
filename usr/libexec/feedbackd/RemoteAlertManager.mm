@interface RemoteAlertManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)remoteViewControllerDidLaunchWhileLockedWithCompletion:(id)a3;
@end

@implementation RemoteAlertManager

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003D9B0(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10003DD94(v6, a4);
}

- (_TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager)init
{
  v3 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  v4 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteAlertManager();
  return [(RemoteAlertManager *)&v6 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10003F660(v7);

  return v9 & 1;
}

- (void)remoteViewControllerDidLaunchWhileLockedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10003F800(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)remoteAlertHandleDidActivate:
{
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002D00(v0, qword_100083700);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1000049B8(0xD000000000000020, 0x800000010006C2F0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100005ED8(v3);
  }
}

@end