@interface NarrativeCertDaemon
- (void)configureAquariaHostIdentityWithSANs:(id)ns reply:(id)reply;
@end

@implementation NarrativeCertDaemon

- (void)configureAquariaHostIdentityWithSANs:(id)ns reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);

  sub_10001CC14(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end