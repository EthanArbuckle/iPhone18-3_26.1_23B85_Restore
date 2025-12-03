@interface PCViewServiceHandle
- (_TtC17proximitycontrold19PCViewServiceHandle)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation PCViewServiceHandle

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v4 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  selfCopy = self;
  v3(2);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v4 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  selfCopy = self;
  v3(3);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler);
  v5 = *&self->viewControllerClassName[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  selfCopy = self;
  errorCopy = error;
  v6(error);
}

- (_TtC17proximitycontrold19PCViewServiceHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end