@interface MCNewPasswordPolicyPayloadHandler
- (BOOL)isInstalled;
@end

@implementation MCNewPasswordPolicyPayloadHandler

- (BOOL)isInstalled
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [MCRestrictionManagerWriter restrictionsAlreadyInstalledFromPayload:v2];

  return v3;
}

@end