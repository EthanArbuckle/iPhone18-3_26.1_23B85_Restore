@interface FeedbackDaemonDelegate
- (void)collectFeedbackWithFormData:(id)data launchConfigurationData:(id)configurationData completion:(id)completion;
- (void)didFinishSubmissionWithFormIdentifier:(id)identifier feedbackId:(id)id isSurvey:(BOOL)survey error:(id)error completion:(id)completion;
- (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion;
- (void)reportFailureToLaunchFormWithFormIdentifier:(id)identifier completion:(id)completion;
@end

@implementation FeedbackDaemonDelegate

- (void)collectFeedbackWithFormData:(id)data launchConfigurationData:(id)configurationData completion:(id)completion
{
  v7 = _Block_copy(completion);
  dataCopy = data;
  configurationDataCopy = configurationData;

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

- (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);

  sub_1000460B0(v6, v8, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reportFailureToLaunchFormWithFormIdentifier:(id)identifier completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  _Block_copy(v4);

  sub_10004651C(v5, v7, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)didFinishSubmissionWithFormIdentifier:(id)identifier feedbackId:(id)id isSurvey:(BOOL)survey error:(id)error completion:(id)completion
{
  surveyCopy = survey;
  v10 = _Block_copy(completion);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  _Block_copy(v10);
  idCopy = id;
  errorCopy = error;

  sub_1000467C0(v11, v13, id, surveyCopy, error, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end