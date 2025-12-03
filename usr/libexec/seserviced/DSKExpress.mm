@interface DSKExpress
- (void)onEvent:(id)event eventPayload:(id)payload;
@end

@implementation DSKExpress

- (void)onEvent:(id)event eventPayload:(id)payload
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_unknownObjectRetain();

  sub_1001C3784(v5, v7, payload);
  swift_unknownObjectRelease();
}

@end