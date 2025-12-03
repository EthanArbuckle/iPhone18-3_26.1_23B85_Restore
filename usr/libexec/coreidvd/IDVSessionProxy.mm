@interface IDVSessionProxy
- (_TtC8coreidvd15IDVSessionProxy)init;
- (void)concludeVerification:(id)verification;
- (void)configure:(id)configure completion:(id)completion;
- (void)confirmVerificationCompletedWithFeedback:(id)feedback;
- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion;
@end

@implementation IDVSessionProxy

- (void)configure:(id)configure completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  configureCopy = configure;
  selfCopy = self;
  sub_10065CCAC(configureCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)performVerificationWithAttributes:(id)attributes completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  attributesCopy = attributes;
  selfCopy = self;
  sub_100667674(attributes, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)concludeVerification:(id)verification
{
  if (verification)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10063A470(v4, v6);
}

- (void)confirmVerificationCompletedWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  selfCopy = self;
  sub_10063ABCC(feedbackCopy);
}

- (_TtC8coreidvd15IDVSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end