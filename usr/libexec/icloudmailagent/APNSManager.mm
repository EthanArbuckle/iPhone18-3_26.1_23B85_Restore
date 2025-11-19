@interface APNSManager
+ (_TtC15icloudmailagent11APNSManager)sharedInstance;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
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
  v2 = self;
  APNSManager.start()();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  APNSManager.stop()();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(APNSManager *)&v5 dealloc];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  specialized APNSManager.connection(_:didReceivePublicToken:)(v4, v10);
  outlined consume of Data?(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized APNSManager.connection(_:didReceive:)(a4);
}

@end