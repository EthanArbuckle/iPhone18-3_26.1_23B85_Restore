@interface GamePolicyAppCoordinator
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC11gamepolicyd24GamePolicyAppCoordinator)init;
@end

@implementation GamePolicyAppCoordinator

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100025F74(v7);

  return v9 & 1;
}

- (_TtC11gamepolicyd24GamePolicyAppCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end