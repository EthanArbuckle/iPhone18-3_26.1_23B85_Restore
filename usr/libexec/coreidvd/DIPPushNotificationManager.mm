@interface DIPPushNotificationManager
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation DIPPushNotificationManager

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B90C(v4, v5);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_100027E30(a4);
}

@end