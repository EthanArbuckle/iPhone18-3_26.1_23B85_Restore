@interface ApsListener
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation ApsListener

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10000F94C(v11, v8, v10);
  sub_100008BAC(v8, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_10000FB88();
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  if (failures)
  {
    sub_10001BDC0(0, &qword_1000DC598, APSChannelSubscriptionFailure_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_100015DEC();
}

@end