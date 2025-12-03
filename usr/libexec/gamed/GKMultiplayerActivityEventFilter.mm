@interface GKMultiplayerActivityEventFilter
- (void)filterEventWithMetricsFields:(NSDictionary *)fields completionHandler:(id)handler;
@end

@implementation GKMultiplayerActivityEventFilter

- (void)filterEventWithMetricsFields:(NSDictionary *)fields completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = fields;
  v7[3] = v6;
  v7[4] = self;
  fieldsCopy = fields;
  selfCopy = self;

  sub_10028022C(&unk_1002CA0A0, v7);
}

@end