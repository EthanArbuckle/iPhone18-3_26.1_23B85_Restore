@interface SECNotificationListener
+ (void)kickOff;
- (void)onDarwinNotification:(id)notification;
- (void)onEvent:(id)event eventPayload:(id)payload;
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

- (void)onDarwinNotification:(id)notification
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100190660(v4, v6);
}

- (void)onEvent:(id)event eventPayload:(id)payload
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100190B1C(v6, v8, payload);
  swift_unknownObjectRelease();
}

@end