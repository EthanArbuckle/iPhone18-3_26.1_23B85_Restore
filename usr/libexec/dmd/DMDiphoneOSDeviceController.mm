@interface DMDiphoneOSDeviceController
- (id)deviceType;
- (id)iTunesStoreAccountHash;
- (id)iTunesStoreAccountIsActive;
- (id)isAppleInternal;
- (id)isAwaitingConfiguration;
- (id)isInSingleAppMode;
- (id)isSupervised;
@end

@implementation DMDiphoneOSDeviceController

- (id)deviceType
{
  v2 = +[DMDMobileGestalt deviceType];

  return [NSNumber numberWithUnsignedInteger:v2];
}

- (id)isAppleInternal
{
  v2 = +[DMDMobileGestalt hasAppleInternalInstallCapability];

  return [NSNumber numberWithBool:v2];
}

- (id)isAwaitingConfiguration
{
  v2 = +[MCCloudConfiguration sharedConfiguration];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isAwaitingConfiguration]);

  return v3;
}

- (id)isInSingleAppMode
{
  v2 = MCIsEffectivelyInAppWhitelistMode();

  return [NSNumber numberWithBool:v2];
}

- (id)iTunesStoreAccountHash
{
  v2 = +[SSAccountStore defaultStore];
  activeAccount = [v2 activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];
  v5 = [DMDMDMUtilities iTunesAccountHashForUniqueIdentifier:uniqueIdentifier];

  return v5;
}

- (id)iTunesStoreAccountIsActive
{
  v2 = +[SSAccountStore defaultStore];
  activeAccount = [v2 activeAccount];
  if (activeAccount)
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  v5 = v4;

  return v4;
}

- (id)isSupervised
{
  v2 = +[MCCloudConfiguration sharedConfiguration];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isSupervised]);

  return v3;
}

@end