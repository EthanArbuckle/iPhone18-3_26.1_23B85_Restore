@interface DKProxManager
- (_TtC14dockaccessoryd13DKProxManager)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation DKProxManager

- (_TtC14dockaccessoryd13DKProxManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010CEC4(v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010C888(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10010D010(v6, a4);
}

@end