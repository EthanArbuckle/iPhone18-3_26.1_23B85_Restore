@interface APNSManager
+ (_TtC15icloudmailagent11APNSManager)sharedInstance;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)start;
@end

@implementation APNSManager

+ (_TtC15icloudmailagent11APNSManager)sharedInstance
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static APNSManager.shared;

  return v3;
}

- (void)start
{
  selfCopy = self;
  APNSManager.start()();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  APNSManager.stop()();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(APNSManager *)&v5 dealloc];
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

  specialized APNSManager.connection(_:didReceivePublicToken:)(tokenCopy, v10);
  outlined consume of Data?(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  specialized APNSManager.connection(_:didReceive:)(message);
}

@end