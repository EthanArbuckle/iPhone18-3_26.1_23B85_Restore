@interface SDAuthenticationTransportNearbyAgent
- (void)handleBLEMessage:(id)a3;
@end

@implementation SDAuthenticationTransportNearbyAgent

- (void)handleBLEMessage:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1005CE104();

  (*(v4 + 8))(v7, v3);
}

@end