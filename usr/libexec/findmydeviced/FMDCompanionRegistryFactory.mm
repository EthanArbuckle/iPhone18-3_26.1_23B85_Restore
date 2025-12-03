@interface FMDCompanionRegistryFactory
+ (BOOL)isAutomationActive;
+ (BOOL)isBlackMagic;
+ (BOOL)isTinkerPaired;
+ (id)companionRegistryWithDelegate:(id)delegate;
@end

@implementation FMDCompanionRegistryFactory

+ (BOOL)isAutomationActive
{
  v2 = +[FMSystemInfo sharedInstance];
  if ([v2 isInternalBuild])
  {
    v3 = [FMPreferencesUtil BOOLForKey:@"FMDAutomationWatchMigrationAutomationActiveKey" inDomain:kFMDNotBackedUpPrefDomain];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAutomationWatchMigration: isAutomationActive: %d", v6, 8u);
  }

  return v3;
}

+ (id)companionRegistryWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (+[FMDCompanionRegistryFactory isAutomationActive])
  {
    v4 = +[FMDAutomationHelperFactory sharedFactory];
    v5 = [v4 automationHelperClassWithName:@"FMDCompanionAutomationRegistry"];
  }

  else
  {
    v5 = FMDNanoRegistry;
  }

  v6 = objc_alloc_init(v5);
  [v6 setDelegate:delegateCopy];

  return v6;
}

+ (BOOL)isBlackMagic
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [self isTinkerPaired];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tinker paired: %d", v5, 8u);
  }

  return [self isTinkerPaired];
}

+ (BOOL)isTinkerPaired
{
  v2 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:0];
  activePairedDevice = [v2 activePairedDevice];
  tinkerPaired = [activePairedDevice tinkerPaired];

  return tinkerPaired;
}

@end