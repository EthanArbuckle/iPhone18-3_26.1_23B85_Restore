@interface MSDSystemAppsDataPrepareOperation
- (BOOL)_prepareForSystemAppDataInstall;
- (id)methodSelectors;
@end

@implementation MSDSystemAppsDataPrepareOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_prepareForSystemAppDataInstall"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_prepareForSystemAppDataInstall
{
  v2 = +[MSDTargetDevice sharedInstance];
  [v2 saveRequiredDeletableSystemApps];
  [v2 installAndWaitForSystemApps];

  return 1;
}

@end