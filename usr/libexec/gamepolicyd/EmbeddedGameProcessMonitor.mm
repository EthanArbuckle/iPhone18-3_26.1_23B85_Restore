@interface EmbeddedGameProcessMonitor
- (_TtC11gamepolicyd26EmbeddedGameProcessMonitor)init;
- (void)observer:(id)observer deliveryChainDidUpdate:(id)update;
- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(id)enabled;
@end

@implementation EmbeddedGameProcessMonitor

- (void)observer:(id)observer deliveryChainDidUpdate:(id)update
{
  observerCopy = observer;
  updateCopy = update;
  selfCopy = self;
  sub_10003A028(update);
}

- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(id)enabled
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  enabledCopy = enabled;
  selfCopy = self;
  sub_100034550(v6, v8, enabledCopy);
}

- (_TtC11gamepolicyd26EmbeddedGameProcessMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end