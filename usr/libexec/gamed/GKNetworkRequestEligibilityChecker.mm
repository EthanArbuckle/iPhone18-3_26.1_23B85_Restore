@interface GKNetworkRequestEligibilityChecker
- (GKNetworkRequestEligibilityChecker)initWithHasAcknowledgedLatestGDPR:(BOOL)a3 alwaysAllowedBagKeysObject:(id)a4 isAppDistributorThirdParty:(BOOL)a5 isInDebugMode:(BOOL)a6 isPreconnecting:(BOOL)a7;
- (id)verifyEligibilityWithBagKey:(id)a3;
@end

@implementation GKNetworkRequestEligibilityChecker

- (GKNetworkRequestEligibilityChecker)initWithHasAcknowledgedLatestGDPR:(BOOL)a3 alwaysAllowedBagKeysObject:(id)a4 isAppDistributorThirdParty:(BOOL)a5 isInDebugMode:(BOOL)a6 isPreconnecting:(BOOL)a7
{
  if (a4)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  return NetworkRequestEligibiltyChecker.init(hasAcknowledgedLatestGDPR:alwaysAllowedBagKeysObject:isAppDistributorThirdParty:isInDebugMode:isPreconnecting:)(a3, v12, a5, a6, a7);
}

- (id)verifyEligibilityWithBagKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = NetworkRequestEligibiltyChecker.verifyEligibility(bagKey:)(v4, v6);

  if (v8)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end