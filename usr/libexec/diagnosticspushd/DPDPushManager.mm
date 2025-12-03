@interface DPDPushManager
+ (id)sharedInstance;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
@end

@implementation DPDPushManager

+ (id)sharedInstance
{
  if (qword_10001C890 != -1)
  {
    swift_once();
  }

  v3 = qword_10001D010;

  return v3;
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  connectionCopy = connection;
  selfCopy = self;
  sub_10000242C(connection, status);
}

- (void)connectionDidReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  selfCopy = self;
  sub_1000025E4(reconnect);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_100002780(connection, tokenCopy, v10);
  sub_100003EA4(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_100002A0C(message);
}

@end