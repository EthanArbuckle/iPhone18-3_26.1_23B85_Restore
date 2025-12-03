@interface GKGameModeListener
- (_TtC14GameDaemonCore18GKGameModeListener)initWithHandler:(id)handler;
@end

@implementation GKGameModeListener

- (_TtC14GameDaemonCore18GKGameModeListener)initWithHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return GKGameModeListener.init(handler:)(sub_100284040, v4);
}

@end