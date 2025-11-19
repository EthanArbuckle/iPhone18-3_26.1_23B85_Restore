@interface IDVSessionProxy
- (_TtC8coreidvd15IDVSessionProxy)init;
- (void)concludeVerification:(id)a3;
- (void)configure:(id)a3 completion:(id)a4;
- (void)confirmVerificationCompletedWithFeedback:(id)a3;
- (void)performVerificationWithAttributes:(id)a3 completion:(id)a4;
@end

@implementation IDVSessionProxy

- (void)configure:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10065CCAC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)performVerificationWithAttributes:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100667674(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)concludeVerification:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_10063A470(v4, v6);
}

- (void)confirmVerificationCompletedWithFeedback:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10063ABCC(v4);
}

- (_TtC8coreidvd15IDVSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end