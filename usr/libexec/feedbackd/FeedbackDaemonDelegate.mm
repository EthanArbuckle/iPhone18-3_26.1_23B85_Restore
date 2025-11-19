@interface FeedbackDaemonDelegate
- (void)collectFeedbackWithFormData:(id)a3 launchConfigurationData:(id)a4 completion:(id)a5;
- (void)didFinishSubmissionWithFormIdentifier:(id)a3 feedbackId:(id)a4 isSurvey:(BOOL)a5 error:(id)a6 completion:(id)a7;
- (void)fetchCountsForFormWithIdentifier:(id)a3 completion:(id)a4;
- (void)reportFailureToLaunchFormWithFormIdentifier:(id)a3 completion:(id)a4;
@end

@implementation FeedbackDaemonDelegate

- (void)collectFeedbackWithFormData:(id)a3 launchConfigurationData:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v9 = a4;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v7)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    v7 = sub_100047548;
  }

  else
  {
    v16 = 0;
  }

  sub_10003FD40(v10, v12, v13, v15, v7, v16);
  sub_100047508(v7);
  sub_100013C98(v13, v15);
  sub_100013C98(v10, v12);
}

- (void)fetchCountsForFormWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);

  sub_1000460B0(v6, v8, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reportFailureToLaunchFormWithFormIdentifier:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  _Block_copy(v4);

  sub_10004651C(v5, v7, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)didFinishSubmissionWithFormIdentifier:(id)a3 feedbackId:(id)a4 isSurvey:(BOOL)a5 error:(id)a6 completion:(id)a7
{
  v8 = a5;
  v10 = _Block_copy(a7);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  _Block_copy(v10);
  v14 = a4;
  v15 = a6;

  sub_1000467C0(v11, v13, a4, v8, a6, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end