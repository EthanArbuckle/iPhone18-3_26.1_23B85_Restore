@interface RemoteHandleObserverDelegateTrampoline
- (_TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation RemoteHandleObserverDelegateTrampoline

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100EF7CE0(v4, "FMRemoteUILauncher - Did activate handle %@", &unk_10165AB10, &unk_1013F17D8);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100EF7CE0(v4, "Did deactivate handle %@", &unk_10165AAE8, &unk_1013F17C8);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100EF8124(v6, a4);
}

- (_TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end