@interface GamePolicyAppCoordinator
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC11gamepolicyd24GamePolicyAppCoordinator)init;
@end

@implementation GamePolicyAppCoordinator

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100025F74(connectionCopy);

  return v9 & 1;
}

- (_TtC11gamepolicyd24GamePolicyAppCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end