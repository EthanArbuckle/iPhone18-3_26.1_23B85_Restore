@interface FMDPreferencesMgr
+ (BOOL)accessibilityFontSizeEnabled;
+ (id)trackingInfoForType:(id)type;
+ (void)setFMIPWipeLostModeInfo:(id)info;
+ (void)setLostModeInfo:(id)info;
+ (void)setTrackingInfo:(id)info forType:(id)type;
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

+ (void)setLostModeInfo:(id)info
{
  infoCopy = info;
  _CFPreferencesSetDaemonCacheEnabled();
  [FMPreferencesUtil setDictionary:infoCopy forKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];

  _CFPreferencesSetDaemonCacheEnabled();
}

+ (id)trackingInfoForType:(id)type
{
  type = [NSString stringWithFormat:@"%@%@", off_1003135D0, type];
  v4 = [FMPreferencesUtil dictionaryForKey:type inDomain:kFMDNotBackedUpPrefDomain];

  return v4;
}

+ (void)setTrackingInfo:(id)info forType:(id)type
{
  v5 = off_1003135D0;
  infoCopy = info;
  type = [NSString stringWithFormat:@"%@%@", v5, type];
  [FMPreferencesUtil setDictionary:infoCopy forKey:type inDomain:kFMDNotBackedUpPrefDomain];
}

+ (void)setFMIPWipeLostModeInfo:(id)info
{
  v3 = kFMDPostWipePrefDomain;
  infoCopy = info;
  [FMPreferencesUtil synchronizeDomain:v3];
  v7 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
  [FMPreferencesUtil setDictionary:infoCopy forKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];

  v5 = v7;
  if (!infoCopy && v7)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
    v5 = v7;
  }
}

@end