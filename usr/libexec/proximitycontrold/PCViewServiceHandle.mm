@interface PCViewServiceHandle
- (_TtC17proximitycontrold19PCViewServiceHandle)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation PCViewServiceHandle

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v4 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  v5 = self;
  v3(2);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v4 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  v5 = self;
  v3(3);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v5 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  v7 = self;
  v8 = a4;
  v6(a4);
}

- (_TtC17proximitycontrold19PCViewServiceHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end