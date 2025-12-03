@interface RemoteHandleObserverDelegateTrampoline
- (_TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteHandleObserverDelegateTrampoline

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_100EF7CE0(activateCopy, "FMRemoteUILauncher - Did activate handle %@", &unk_10165AB10, &unk_1013F17D8);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_100EF7CE0(deactivateCopy, "Did deactivate handle %@", &unk_10165AAE8, &unk_1013F17C8);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_100EF8124(handleCopy, error);
}

- (_TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end