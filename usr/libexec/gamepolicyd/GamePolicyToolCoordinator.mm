@interface GamePolicyToolCoordinator
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC11gamepolicyd25GamePolicyToolCoordinator)init;
@end

@implementation GamePolicyToolCoordinator

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000AE28(connectionCopy);

  return v9 & 1;
}

- (_TtC11gamepolicyd25GamePolicyToolCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end