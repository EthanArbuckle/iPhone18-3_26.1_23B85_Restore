@interface SDAirDropUISessionManager
- (void)activate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:;
- (void)removedTransfer:(id)transfer;
- (void)updatedTransfer:(id)transfer;
@end

@implementation SDAirDropUISessionManager

- (void)activate
{
  selfCopy = self;
  sub_1004445A0();
}

- (void)updatedTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_10044A260(transferCopy);
}

- (void)removedTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_10044A844(transferCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_10044DD58(error);
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