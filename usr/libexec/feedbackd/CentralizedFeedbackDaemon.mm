@interface CentralizedFeedbackDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC9feedbackd25CentralizedFeedbackDaemon)init;
- (void)fetchDonationsWithCount:(unsigned int)a3 fromLatest:(BOOL)a4 completion:(id)a5;
- (void)invalidateDonationWithDonationJSON:(id)a3 completion:(id)a4;
- (void)presentedInteractionWithAnalyticsPayload:(id)a3 featureDomainEventName:(id)a4 completion:(id)a5;
- (void)remoteEvaluateWithRequest:(id)a3 sceneID:(id)a4 bundleID:(id)a5 completion:(id)a6;
@end

@implementation CentralizedFeedbackDaemon

- (_TtC9feedbackd25CentralizedFeedbackDaemon)init
{
  v3 = OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader;
  type metadata accessor for CFBBiomeReader();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(&self->super.isa + v3) = v4;
  v5 = OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator;
  type metadata accessor for CFBBiomeDonator();
  swift_allocObject();
  *(&self->super.isa + v5) = CFBBiomeDonator.init()();
  *(&self->super.isa + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CentralizedFeedbackDaemon();
  return [(CentralizedFeedbackDaemon *)&v7 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100056CD8(v7);

  return v9 & 1;
}

- (void)invalidateDonationWithDonationJSON:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_100048D4C(v8, v10, sub_100058C60, v11);

  sub_100013C98(v8, v10);
}

- (void)presentedInteractionWithAnalyticsPayload:(id)a3 featureDomainEventName:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_100008714(0, &qword_100083C08, NSObject_ptr);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = self;
  sub_1000576F8(v7, v8, v10, sub_100058A3C, v11);
}

- (void)fetchDonationsWithCount:(unsigned int)a3 fromLatest:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  sub_10004EF58(a3, a4, sub_100058C58, v9);
}

- (void)remoteEvaluateWithRequest:(id)a3 sceneID:(id)a4 bundleID:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v19 = self;
  v12 = a4;
  v13 = a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10)
  {
LABEL_4:
    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    v18 = sub_1000473E4;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
  v17 = 0;
LABEL_8:
  sub_10005805C(v14, v16, v18, v17);
  sub_100047508(v18);

  sub_100013C98(v14, v16);
}

@end