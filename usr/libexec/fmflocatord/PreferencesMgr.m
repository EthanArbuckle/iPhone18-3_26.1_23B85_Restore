@interface PreferencesMgr
+ (id)sharedInstance;
- (int64_t)cellularPlanStatusCachedValue;
@end

@implementation PreferencesMgr

+ (id)sharedInstance
{
  if (qword_100070178 != -1)
  {
    sub_100037D28();
  }

  v3 = qword_100070170;

  return v3;
}

- (int64_t)cellularPlanStatusCachedValue
{
  v2 = [FMPreferencesUtil integerForKey:@"CellularPlanStatusKey" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  result = [FMPreferencesUtil integerForKey:@"CellularPlanStatusOverrideKey" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (result <= 0)
  {
    return v2;
  }

  return result;
}

@end