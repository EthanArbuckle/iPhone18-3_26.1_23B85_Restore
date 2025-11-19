@interface FMDPreferencesMgr
+ (BOOL)accessibilityFontSizeEnabled;
+ (id)trackingInfoForType:(id)a3;
+ (void)setFMIPWipeLostModeInfo:(id)a3;
+ (void)setLostModeInfo:(id)a3;
+ (void)setTrackingInfo:(id)a3 forType:(id)a4;
@end

@implementation FMDPreferencesMgr

+ (BOOL)accessibilityFontSizeEnabled
{
  v2 = [FMPreferencesUtil stringForKey:off_1003135F0 inDomain:off_1003135E8];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeOfString:@"Accessibility"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setLostModeInfo:(id)a3
{
  v3 = a3;
  _CFPreferencesSetDaemonCacheEnabled();
  [FMPreferencesUtil setDictionary:v3 forKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];

  _CFPreferencesSetDaemonCacheEnabled();
}

+ (id)trackingInfoForType:(id)a3
{
  v3 = [NSString stringWithFormat:@"%@%@", off_1003135D0, a3];
  v4 = [FMPreferencesUtil dictionaryForKey:v3 inDomain:kFMDNotBackedUpPrefDomain];

  return v4;
}

+ (void)setTrackingInfo:(id)a3 forType:(id)a4
{
  v5 = off_1003135D0;
  v6 = a3;
  v7 = [NSString stringWithFormat:@"%@%@", v5, a4];
  [FMPreferencesUtil setDictionary:v6 forKey:v7 inDomain:kFMDNotBackedUpPrefDomain];
}

+ (void)setFMIPWipeLostModeInfo:(id)a3
{
  v3 = kFMDPostWipePrefDomain;
  v4 = a3;
  [FMPreferencesUtil synchronizeDomain:v3];
  v7 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
  [FMPreferencesUtil setDictionary:v4 forKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];

  v5 = v7;
  if (!v4 && v7)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
    v5 = v7;
  }
}

@end