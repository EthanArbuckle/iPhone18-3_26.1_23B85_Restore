@interface RemoteAlertManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)remoteViewControllerDidLaunchWhileLockedWithCompletion:(id)completion;
@end

@implementation RemoteAlertManager

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_10003D9B0(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_10003DD94(handleCopy, error);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10003F660(connectionCopy);

  return v9 & 1;
}

- (void)remoteViewControllerDidLaunchWhileLockedWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10003F800(selfCopy, v4);
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