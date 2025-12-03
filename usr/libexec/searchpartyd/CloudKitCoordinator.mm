@interface CloudKitCoordinator
- (void)accountDidChange:(id)change;
@end

@implementation CloudKitCoordinator

- (void)accountDidChange:(id)change
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();

  (*(v4 + 8))(v7, v3);
}

@end