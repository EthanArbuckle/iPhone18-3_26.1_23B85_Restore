@interface GKMultiplayerActivityEventFilter
- (void)filterEventWithMetricsFields:(NSDictionary *)a3 completionHandler:(id)a4;
@end

@implementation GKMultiplayerActivityEventFilter

- (void)filterEventWithMetricsFields:(NSDictionary *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10028022C(&unk_1002CA0A0, v7);
}

@end