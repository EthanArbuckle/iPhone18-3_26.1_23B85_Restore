@interface GamePolicyToolCoordinator
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC11gamepolicyd25GamePolicyToolCoordinator)init;
@end

@implementation GamePolicyToolCoordinator

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000AE28(v7);

  return v9 & 1;
}

- (_TtC11gamepolicyd25GamePolicyToolCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end