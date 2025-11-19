@interface MIObsoleteUpgradeCleaner
+ (BOOL)cleanUpgradesWithError:(id *)a3;
@end

@implementation MIObsoleteUpgradeCleaner

+ (BOOL)cleanUpgradesWithError:(id *)a3
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v4 = [v3 systemAppBundleIDToInfoMap];

  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 internalAppBundleIDToInfoMap];

  [v4 enumerateKeysAndObjectsUsingBlock:&stru_100091610];
  [v6 enumerateKeysAndObjectsUsingBlock:&stru_100091610];

  return 1;
}

@end