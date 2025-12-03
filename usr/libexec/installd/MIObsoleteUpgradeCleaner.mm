@interface MIObsoleteUpgradeCleaner
+ (BOOL)cleanUpgradesWithError:(id *)error;
@end

@implementation MIObsoleteUpgradeCleaner

+ (BOOL)cleanUpgradesWithError:(id *)error
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  systemAppBundleIDToInfoMap = [v3 systemAppBundleIDToInfoMap];

  v5 = +[MIDaemonConfiguration sharedInstance];
  internalAppBundleIDToInfoMap = [v5 internalAppBundleIDToInfoMap];

  [systemAppBundleIDToInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100091610];
  [internalAppBundleIDToInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100091610];

  return 1;
}

@end