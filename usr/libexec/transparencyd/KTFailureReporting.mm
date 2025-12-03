@interface KTFailureReporting
- (_TtC13transparencyd18KTFailureReporting)init;
- (_TtC13transparencyd18KTFailureReporting)initWithIdsReporting:(id)reporting container:(id)container dewConfig:(id)config configBag:(id)bag;
- (void)reportPeerWithPushToken:(id)token application:(id)application ktError:(id)error;
@end

@implementation KTFailureReporting

- (_TtC13transparencyd18KTFailureReporting)initWithIdsReporting:(id)reporting container:(id)container dewConfig:(id)config configBag:(id)bag
{
  swift_unknownObjectRetain();
  containerCopy = container;
  configCopy = config;
  swift_unknownObjectRetain();
  v12 = sub_10009FB88(reporting, containerCopy, config, bag);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

- (void)reportPeerWithPushToken:(id)token application:(id)application ktError:(id)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  errorCopy = error;
  selfCopy = self;
  sub_10009E610(v7, v9, v10, v12, errorCopy);
}

- (_TtC13transparencyd18KTFailureReporting)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end