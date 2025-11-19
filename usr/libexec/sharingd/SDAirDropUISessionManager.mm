@interface SDAirDropUISessionManager
- (void)activate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:;
- (void)removedTransfer:(id)a3;
- (void)updatedTransfer:(id)a3;
@end

@implementation SDAirDropUISessionManager

- (void)activate
{
  v2 = self;
  sub_1004445A0();
}

- (void)updatedTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10044A260(v4);
}

- (void)removedTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10044A844(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10044DD58(a4);
}

- (void)remoteAlertHandleDidDeactivate:
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097E7C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Wallet UI service deactivated", v2, 2u);
  }
}

@end