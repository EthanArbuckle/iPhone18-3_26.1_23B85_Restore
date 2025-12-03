@interface DIPPushNotificationManager
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation DIPPushNotificationManager

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B90C(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;

  sub_100027E30(message);
}

@end