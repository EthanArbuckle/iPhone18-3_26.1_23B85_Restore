@interface NarrativeCertDaemon
- (void)configureAquariaHostIdentityWithSANs:(id)a3 reply:(id)a4;
@end

@implementation NarrativeCertDaemon

- (void)configureAquariaHostIdentityWithSANs:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);

  sub_10001CC14(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end