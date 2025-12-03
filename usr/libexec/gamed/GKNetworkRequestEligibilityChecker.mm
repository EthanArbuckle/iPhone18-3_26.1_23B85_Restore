@interface GKNetworkRequestEligibilityChecker
- (GKNetworkRequestEligibilityChecker)initWithHasAcknowledgedLatestGDPR:(BOOL)r alwaysAllowedBagKeysObject:(id)object isAppDistributorThirdParty:(BOOL)party isInDebugMode:(BOOL)mode isPreconnecting:(BOOL)preconnecting;
- (id)verifyEligibilityWithBagKey:(id)key;
@end

@implementation GKNetworkRequestEligibilityChecker

- (GKNetworkRequestEligibilityChecker)initWithHasAcknowledgedLatestGDPR:(BOOL)r alwaysAllowedBagKeysObject:(id)object isAppDistributorThirdParty:(BOOL)party isInDebugMode:(BOOL)mode isPreconnecting:(BOOL)preconnecting
{
  if (object)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  return NetworkRequestEligibiltyChecker.init(hasAcknowledgedLatestGDPR:alwaysAllowedBagKeysObject:isAppDistributorThirdParty:isInDebugMode:isPreconnecting:)(r, v12, party, mode, preconnecting);
}

- (id)verifyEligibilityWithBagKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
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