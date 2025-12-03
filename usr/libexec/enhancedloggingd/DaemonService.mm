@interface DaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)attachConsentFormWithSessionID:(id)d data:(id)data completionHandler:(id)handler;
- (void)bugSessionCollectionDidCompleteWithSessionIdentifier:(id)identifier;
- (void)cancelWithSessionID:(id)d completionHandler:(id)handler;
- (void)configureSessionWithParameters:(id)parameters ticket:(id)ticket completionHandler:(id)handler;
- (void)getCollectionDeferralDurationWithSessionID:(id)d completionHandler:(id)handler;
- (void)getCurrentSessionIDWithCompletionHandler:(id)handler;
- (void)getRequiresDeviceSelectionWithSessionID:(id)d completionHandler:(id)handler;
- (void)getRequiresFollowUpQuestionWithSessionID:(id)d completionHandler:(id)handler;
- (void)getStatusWithSessionID:(id)d completionHandler:(id)handler;
- (void)getTargetedDeviceTypesWithSessionID:(id)d completionHandler:(id)handler;
- (void)startCollectingWithSessionID:(id)d devices:(id)devices options:(int64_t)options completionHandler:(id)handler;
- (void)startDeviceDiscoveryWithSessionID:(id)d completionHandler:(id)handler;
- (void)stopDeviceDiscoveryWithSessionID:(id)d;
@end

@implementation DaemonService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000D2CC(connectionCopy);

  return v9 & 1;
}

- (void)getCurrentSessionIDWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = self + OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID;
  swift_beginAccess();
  v6 = *(v5 + 1);
  v14 = *v5;
  v15 = v6;
  v16 = *(v5 + 4);
  v7 = v16;
  v17 = v14;
  v18 = v6;
  selfCopy = self;
  sub_100010B78(&v17, v13);
  v9 = v7;
  sub_100010BD4(&v18, v13, &qword_100049ED0, &unk_100038DA0);
  sub_100022D9C();
  v11 = v10;
  sub_100010C3C(&v17);
  sub_100010EB8(&v18, &qword_100049ED0, &unk_100038DA0);

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v4[2](v4, v12);

  _Block_release(v4);
}

- (void)configureSessionWithParameters:(id)parameters ticket:(id)ticket completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (ticket)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    ticket = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v7);
  selfCopy = self;
  sub_10000E110(v8, v9, ticket, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)getStatusWithSessionID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    selfCopy = self;

    v6 = sub_1000158B0();
  }

  else
  {
    selfCopy2 = self;
    v6 = 0;
  }

  v4[2](v4, v6);
  _Block_release(v4);
}

- (void)getCollectionDeferralDurationWithSessionID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = objc_opt_self();
    selfCopy = self;
    sharedManager = [v5 sharedManager];
    snapshot = [sharedManager snapshot];

    [snapshot totalDuration];
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v10 = 0.0;
  }

  v4[2](v4, v10);
  _Block_release(v4);
}

- (void)getRequiresDeviceSelectionWithSessionID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    selfCopy = self;

    v6 = sub_100015A60();
  }

  else
  {
    selfCopy2 = self;
    v6 = 0;
  }

  v4[2](v4, v6 & 1);
  _Block_release(v4);
}

- (void)getRequiresFollowUpQuestionWithSessionID:(id)d completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = objc_opt_self();
    selfCopy = self;
    sharedManager = [v5 sharedManager];
    snapshot = [sharedManager snapshot];

    needsFollowup = [snapshot needsFollowup];
  }

  else
  {
    selfCopy2 = self;
    needsFollowup = 0;
  }

  v4[2](v4, needsFollowup);
  _Block_release(v4);
}

- (void)getTargetedDeviceTypesWithSessionID:(id)d completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  selfCopy = self;
  if (v6)
  {
    v7 = sub_10002B848();
    sub_10000706C(v7);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v5[2](v5, isa);

  _Block_release(v5);
}

- (void)attachConsentFormWithSessionID:(id)d data:(id)data completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  dataCopy = data;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  _Block_copy(v7);
  sub_10000F03C(v8, v10, v13, v15, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100010B10(v13, v15);
}

- (void)startCollectingWithSessionID:(id)d devices:(id)devices options:(int64_t)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  sub_1000061F4(&qword_100049E90, &qword_100038860);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  selfCopy = self;
  sub_1000083A0(v9, v11, v12, options, sub_100010F70, v13);
}

- (void)cancelWithSessionID:(id)d completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10000AE04(v6, v8, sub_100010F5C, v9);
}

- (void)startDeviceDiscoveryWithSessionID:(id)d completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10000FC14(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)stopDeviceDiscoveryWithSessionID:(id)d
{
  selfCopy = self;
  sub_10001003C();
}

- (void)bugSessionCollectionDidCompleteWithSessionIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10000BCB8(v4, v6);
}

@end