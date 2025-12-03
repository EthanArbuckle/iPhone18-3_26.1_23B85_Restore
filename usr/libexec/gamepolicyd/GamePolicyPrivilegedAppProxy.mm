@interface GamePolicyPrivilegedAppProxy
- (void)ping;
- (void)requestInstalledGamesWithAdamIDs:(id)ds withReply:(id)reply;
- (void)requestInstalledGamesWithBundleIDs:(id)ds withReply:(id)reply;
- (void)requestInstalledGamesWithReply:(id)reply;
@end

@implementation GamePolicyPrivilegedAppProxy

- (void)ping
{

  sub_10000C4B8();
}

- (void)requestInstalledGamesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = *self->gameStore;

  sub_100006910();
  v6 = *self->gameStore;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  type metadata accessor for GameLibraryGame();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4[2](v4, isa);

  _Block_release(v4);
}

- (void)requestInstalledGamesWithBundleIDs:(id)ds withReply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *self->gameStore;

  sub_100004E70(v6);

  type metadata accessor for GameLibraryGame();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5[2](v5, isa);

  _Block_release(v5);
}

- (void)requestInstalledGamesWithAdamIDs:(id)ds withReply:(id)reply
{
  v5 = _Block_copy(reply);
  sub_10000CCA8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *self->gameStore;

  sub_100005530(v6);

  type metadata accessor for GameLibraryGame();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5[2](v5, isa);

  _Block_release(v5);
}

@end