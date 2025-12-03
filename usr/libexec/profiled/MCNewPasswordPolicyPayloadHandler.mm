@interface MCNewPasswordPolicyPayloadHandler
- (BOOL)isInstalled;
@end

@implementation MCNewPasswordPolicyPayloadHandler

- (BOOL)isInstalled
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = [MCRestrictionManagerWriter restrictionsAlreadyInstalledFromPayload:payload];

  return v3;
}

@end