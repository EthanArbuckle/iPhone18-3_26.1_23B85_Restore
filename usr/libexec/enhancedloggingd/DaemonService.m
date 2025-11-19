@interface DaemonService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)attachConsentFormWithSessionID:(id)a3 data:(id)a4 completionHandler:(id)a5;
- (void)bugSessionCollectionDidCompleteWithSessionIdentifier:(id)a3;
- (void)cancelWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)configureSessionWithParameters:(id)a3 ticket:(id)a4 completionHandler:(id)a5;
- (void)getCollectionDeferralDurationWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)getCurrentSessionIDWithCompletionHandler:(id)a3;
- (void)getRequiresDeviceSelectionWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)getRequiresFollowUpQuestionWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)getStatusWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)getTargetedDeviceTypesWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)startCollectingWithSessionID:(id)a3 devices:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)startDeviceDiscoveryWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)stopDeviceDiscoveryWithSessionID:(id)a3;
@end

@implementation DaemonService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000D2CC(v7);

  return v9 & 1;
}

- (void)getCurrentSessionIDWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR____TtC16enhancedloggingd13DaemonService__currentSessionID;
  swift_beginAccess();
  v6 = *(v5 + 1);
  v14 = *v5;
  v15 = v6;
  v16 = *(v5 + 4);
  v7 = v16;
  v17 = v14;
  v18 = v6;
  v8 = self;
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

- (void)configureSessionWithParameters:(id)a3 ticket:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v7);
  v11 = self;
  sub_10000E110(v8, v9, a4, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)getStatusWithSessionID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = self;

    v6 = sub_1000158B0();
  }

  else
  {
    v7 = self;
    v6 = 0;
  }

  v4[2](v4, v6);
  _Block_release(v4);
}

- (void)getCollectionDeferralDurationWithSessionID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = objc_opt_self();
    v6 = self;
    v7 = [v5 sharedManager];
    v8 = [v7 snapshot];

    [v8 totalDuration];
    v10 = v9;
  }

  else
  {
    v11 = self;
    v10 = 0.0;
  }

  v4[2](v4, v10);
  _Block_release(v4);
}

- (void)getRequiresDeviceSelectionWithSessionID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = self;

    v6 = sub_100015A60();
  }

  else
  {
    v7 = self;
    v6 = 0;
  }

  v4[2](v4, v6 & 1);
  _Block_release(v4);
}

- (void)getRequiresFollowUpQuestionWithSessionID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  if (*(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller))
  {
    v5 = objc_opt_self();
    v6 = self;
    v7 = [v5 sharedManager];
    v8 = [v7 snapshot];

    v9 = [v8 needsFollowup];
  }

  else
  {
    v10 = self;
    v9 = 0;
  }

  v4[2](v4, v9);
  _Block_release(v4);
}

- (void)getTargetedDeviceTypesWithSessionID:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC16enhancedloggingd13DaemonService_controller);
  v9 = self;
  if (v6)
  {
    v7 = sub_10002B848();
    sub_10000706C(v7);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v5[2](v5, isa);

  _Block_release(v5);
}

- (void)attachConsentFormWithSessionID:(id)a3 data:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a4;
  v12 = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  _Block_copy(v7);
  sub_10000F03C(v8, v10, v13, v15, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100010B10(v13, v15);
}

- (void)startCollectingWithSessionID:(id)a3 devices:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  sub_1000061F4(&qword_100049E90, &qword_100038860);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = self;
  sub_1000083A0(v9, v11, v12, a5, sub_100010F70, v13);
}

- (void)cancelWithSessionID:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10000AE04(v6, v8, sub_100010F5C, v9);
}

- (void)startDeviceDiscoveryWithSessionID:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_10000FC14(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)stopDeviceDiscoveryWithSessionID:(id)a3
{
  v3 = self;
  sub_10001003C();
}

- (void)bugSessionCollectionDidCompleteWithSessionIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10000BCB8(v4, v6);
}

@end