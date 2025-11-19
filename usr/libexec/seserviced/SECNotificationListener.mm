@interface SECNotificationListener
+ (void)kickOff;
- (void)onDarwinNotification:(id)a3;
- (void)onEvent:(id)a3 eventPayload:(id)a4;
@end

@implementation SECNotificationListener

+ (void)kickOff
{
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
}

- (void)onDarwinNotification:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100190660(v4, v6);
}

- (void)onEvent:(id)a3 eventPayload:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  sub_100190B1C(v6, v8, a4);
  swift_unknownObjectRelease();
}

@end