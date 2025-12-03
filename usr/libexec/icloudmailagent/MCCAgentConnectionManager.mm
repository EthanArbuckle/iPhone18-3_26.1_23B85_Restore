@interface MCCAgentConnectionManager
+ (_TtC15icloudmailagent25MCCAgentConnectionManager)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15icloudmailagent25MCCAgentConnectionManager)init;
- (void)setSecretAgentServiceListener:(id)listener;
- (void)start;
@end

@implementation MCCAgentConnectionManager

- (void)start
{
  selfCopy = self;
  MCCAgentConnectionManager._setupServices()();
}

- (void)setSecretAgentServiceListener:(id)listener
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
  *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener) = listener;
  listenerCopy = listener;
}

+ (_TtC15icloudmailagent25MCCAgentConnectionManager)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static MCCAgentConnectionManager.sharedInstance;

  return v3;
}

- (_TtC15icloudmailagent25MCCAgentConnectionManager)init
{
  v3 = OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener;
  *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener) = 0;
  v4 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:MCCSecretAgentMachService];
  v5 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = v4;

  v7.receiver = self;
  v7.super_class = type metadata accessor for MCCAgentConnectionManager();
  return [(MCCAgentConnectionManager *)&v7 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return v9;
}

@end