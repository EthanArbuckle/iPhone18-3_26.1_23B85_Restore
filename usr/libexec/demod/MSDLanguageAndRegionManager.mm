@interface MSDLanguageAndRegionManager
+ (id)sharedInstance;
- (BOOL)isSiriEnabled;
- (BOOL)saveCurrentDeviceLanguageIdentifier;
- (BOOL)saveCurrentDeviceRegionCode;
- (BOOL)saveDeviceLanguageIdentifier:(id)identifier;
- (BOOL)saveDeviceRegionCode:(id)code;
- (BOOL)saveSiriLanguageToPreferences:(id)preferences;
- (BOOL)setSiriLanguage:(id)language;
- (MSDLanguageAndRegionManager)init;
- (id)deviceLanguageIdentifier;
- (id)deviceRegionCode;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDeviceLocaleCode;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentSiriLanguage;
- (id)getDemoPreferencesSiriLanguage;
- (void)cancelNotifyToken:(int)token;
- (void)restoreDeviceLanguageAndRegionIfNeeded;
@end

@implementation MSDLanguageAndRegionManager

+ (id)sharedInstance
{
  if (qword_1001A58C0 != -1)
  {
    sub_1000DB5B4();
  }

  v3 = qword_1001A58B8;

  return v3;
}

- (MSDLanguageAndRegionManager)init
{
  v5.receiver = self;
  v5.super_class = MSDLanguageAndRegionManager;
  v2 = [(MSDLanguageAndRegionManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.msd_language_and_region", 0);
    [(MSDLanguageAndRegionManager *)v2 setQueue:v3];
  }

  return v2;
}

- (id)getCurrentDeviceLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDeviceLanguage = [v2 getCurrentDeviceLanguage];

  return getCurrentDeviceLanguage;
}

- (id)getCurrentDevicePreferredLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDevicePreferredLanguage = [v2 getCurrentDevicePreferredLanguage];

  return getCurrentDevicePreferredLanguage;
}

- (id)getCurrentDeviceRegion
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentDeviceRegion = [v2 getCurrentDeviceRegion];

  return getCurrentDeviceRegion;
}

- (id)getCurrentDeviceLocaleCode
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getCurrentLocaleCode = [v2 getCurrentLocaleCode];

  return getCurrentLocaleCode;
}

- (BOOL)saveCurrentDeviceLanguageIdentifier
{
  selfCopy = self;
  getCurrentDeviceLanguage = [(MSDLanguageAndRegionManager *)self getCurrentDeviceLanguage];
  LOBYTE(selfCopy) = [(MSDLanguageAndRegionManager *)selfCopy saveDeviceLanguageIdentifier:getCurrentDeviceLanguage];

  return selfCopy;
}

- (BOOL)saveCurrentDeviceRegionCode
{
  selfCopy = self;
  getCurrentDeviceRegion = [(MSDLanguageAndRegionManager *)self getCurrentDeviceRegion];
  LOBYTE(selfCopy) = [(MSDLanguageAndRegionManager *)selfCopy saveDeviceRegionCode:getCurrentDeviceRegion];

  return selfCopy;
}

- (BOOL)setSiriLanguage:(id)language
{
  languageCopy = language;
  v5 = +[MSDLanguageAndRegionHelper sharedInstance];
  v6 = [v5 setSiriLanguage:languageCopy];

  if (v6 != 1)
  {
    [(MSDLanguageAndRegionManager *)self saveSiriLanguageToPreferences:languageCopy];
  }

  return v6 != 1;
}

- (id)getCurrentSiriLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  getSiriLanguage = [v2 getSiriLanguage];

  return getSiriLanguage;
}

- (BOOL)saveSiriLanguageToPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:preferencesCopy forKey:@"SiriLanguage"];

  return v5;
}

- (id)getDemoPreferencesSiriLanguage
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"SiriLanguage"];

  return v3;
}

- (BOOL)isSiriEnabled
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  isSiriEnabled = [v2 isSiriEnabled];

  return isSiriEnabled;
}

- (BOOL)saveDeviceLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:identifierCopy forKey:@"DeviceLanguageIdentifier"];

  return v5;
}

- (id)deviceLanguageIdentifier
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceLanguageIdentifier"];

  return v3;
}

- (BOOL)saveDeviceRegionCode:(id)code
{
  codeCopy = code;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:codeCopy forKey:@"DeviceRegionCode"];

  return v5;
}

- (id)deviceRegionCode
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceRegionCode"];

  return v3;
}

- (void)cancelNotifyToken:(int)token
{
  if (token != -1)
  {
    notify_cancel(token);
  }
}

- (void)restoreDeviceLanguageAndRegionIfNeeded
{
  deviceLanguageIdentifier = [(MSDLanguageAndRegionManager *)self deviceLanguageIdentifier];
  deviceRegionCode = [(MSDLanguageAndRegionManager *)self deviceRegionCode];
  v5 = deviceRegionCode;
  if (deviceLanguageIdentifier)
  {
    if (deviceRegionCode)
    {
      v6 = +[MSDLanguageAndRegionHelper sharedInstance];
      v7 = [v6 setDeviceLanguage:deviceLanguageIdentifier andRegion:v5 matchToSystemLanguage:0];

      if (v7 == 1)
      {
        v8 = sub_100063A54();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set device language and region.", v9, 2u);
        }
      }
    }
  }
}

@end