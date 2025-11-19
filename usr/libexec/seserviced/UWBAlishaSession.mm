@interface UWBAlishaSession
- (void)session:(id)a3 didUpdateHealthStatus:(int64_t)a4;
- (void)session:(id)a3 relayDCKMessage:(id)a4;
@end

@implementation UWBAlishaSession

- (void)session:(id)a3 relayDCKMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10024E51C(v8, v10);
  sub_10006A178(v8, v10);
}

- (void)session:(id)a3 didUpdateHealthStatus:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10024E700(a4);
}

@end