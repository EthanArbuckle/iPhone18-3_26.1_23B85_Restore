@interface KTFailureReporting
- (_TtC13transparencyd18KTFailureReporting)init;
- (_TtC13transparencyd18KTFailureReporting)initWithIdsReporting:(id)a3 container:(id)a4 dewConfig:(id)a5 configBag:(id)a6;
- (void)reportPeerWithPushToken:(id)a3 application:(id)a4 ktError:(id)a5;
@end

@implementation KTFailureReporting

- (_TtC13transparencyd18KTFailureReporting)initWithIdsReporting:(id)a3 container:(id)a4 dewConfig:(id)a5 configBag:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  v12 = sub_10009FB88(a3, v10, a5, a6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

- (void)reportPeerWithPushToken:(id)a3 application:(id)a4 ktError:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a5;
  v14 = self;
  sub_10009E610(v7, v9, v10, v12, v13);
}

- (_TtC13transparencyd18KTFailureReporting)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end