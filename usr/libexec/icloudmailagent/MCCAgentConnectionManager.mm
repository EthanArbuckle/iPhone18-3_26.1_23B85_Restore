@interface MCCAgentConnectionManager
+ (_TtC15icloudmailagent25MCCAgentConnectionManager)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15icloudmailagent25MCCAgentConnectionManager)init;
- (void)setSecretAgentServiceListener:(id)a3;
- (void)start;
@end

@implementation MCCAgentConnectionManager

- (void)start
{
  v1 = a1;
  MCCAgentConnectionManager._setupServices()();
}

- (void)setSecretAgentServiceListener:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
  *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener) = a3;
  v3 = a3;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

@end