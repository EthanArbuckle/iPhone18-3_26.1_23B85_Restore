@interface CentralizedFeedbackDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC9feedbackd25CentralizedFeedbackDaemon)init;
- (void)fetchDonationsWithCount:(unsigned int)count fromLatest:(BOOL)latest completion:(id)completion;
- (void)invalidateDonationWithDonationJSON:(id)n completion:(id)completion;
- (void)presentedInteractionWithAnalyticsPayload:(id)payload featureDomainEventName:(id)name completion:(id)completion;
- (void)remoteEvaluateWithRequest:(id)request sceneID:(id)d bundleID:(id)iD completion:(id)completion;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100056CD8(connectionCopy);

  return v9 & 1;
}

- (void)invalidateDonationWithDonationJSON:(id)n completion:(id)completion
{
  v6 = _Block_copy(completion);
  nCopy = n;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_100048D4C(v8, v10, sub_100058C60, v11);

  sub_100013C98(v8, v10);
}

- (void)presentedInteractionWithAnalyticsPayload:(id)payload featureDomainEventName:(id)name completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_100008714(0, &qword_100083C08, NSObject_ptr);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  selfCopy = self;
  sub_1000576F8(v7, v8, v10, sub_100058A3C, v11);
}

- (void)fetchDonationsWithCount:(unsigned int)count fromLatest:(BOOL)latest completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  sub_10004EF58(count, latest, sub_100058C58, v9);
}

- (void)remoteEvaluateWithRequest:(id)request sceneID:(id)d bundleID:(id)iD completion:(id)completion
{
  v10 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  dCopy = d;
  iDCopy = iD;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (dCopy)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (iDCopy)
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

  if (!iDCopy)
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