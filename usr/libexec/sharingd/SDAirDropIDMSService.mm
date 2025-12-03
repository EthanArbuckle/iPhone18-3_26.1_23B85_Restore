@interface SDAirDropIDMSService
- (_TtC16DaemoniOSLibrary20SDAirDropIDMSService)init;
- (void)appleIDChangedWithNotification:(id)notification;
@end

@implementation SDAirDropIDMSService

- (void)appleIDChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003837D0();

  (*(v5 + 8))(v8, v4);
}

- (_TtC16DaemoniOSLibrary20SDAirDropIDMSService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end