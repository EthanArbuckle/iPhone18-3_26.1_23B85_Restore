@interface DSKExpress
- (void)onEvent:(id)a3 eventPayload:(id)a4;
@end

@implementation DSKExpress

- (void)onEvent:(id)a3 eventPayload:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_unknownObjectRetain();

  sub_1001C3784(v5, v7, a4);
  swift_unknownObjectRelease();
}

@end