@interface ApsListener
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation ApsListener

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10000F94C(v11, v8, v10);
  sub_100008BAC(v8, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000FB88();
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  if (a4)
  {
    sub_10001BDC0(0, &qword_1000DC598, APSChannelSubscriptionFailure_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100015DEC();
}

@end