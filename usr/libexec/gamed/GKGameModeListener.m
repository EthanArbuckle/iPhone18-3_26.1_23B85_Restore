@interface GKGameModeListener
- (_TtC14GameDaemonCore18GKGameModeListener)initWithHandler:(id)a3;
@end

@implementation GKGameModeListener

- (_TtC14GameDaemonCore18GKGameModeListener)initWithHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return GKGameModeListener.init(handler:)(sub_100284040, v4);
}

@end