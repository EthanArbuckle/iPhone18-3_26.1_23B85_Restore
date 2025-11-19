@interface EmbeddedGameProcessMonitor
- (_TtC11gamepolicyd26EmbeddedGameProcessMonitor)init;
- (void)observer:(id)a3 deliveryChainDidUpdate:(id)a4;
- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(id)a4;
@end

@implementation EmbeddedGameProcessMonitor

- (void)observer:(id)a3 deliveryChainDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003A028(a4);
}

- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_100034550(v6, v8, v9);
}

- (_TtC11gamepolicyd26EmbeddedGameProcessMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end