@interface MSDLanguageAndRegionManager
+ (id)sharedInstance;
- (BOOL)isSiriEnabled;
- (BOOL)saveCurrentDeviceLanguageIdentifier;
- (BOOL)saveCurrentDeviceRegionCode;
- (BOOL)saveDeviceLanguageIdentifier:(id)a3;
- (BOOL)saveDeviceRegionCode:(id)a3;
- (BOOL)saveSiriLanguageToPreferences:(id)a3;
- (BOOL)setSiriLanguage:(id)a3;
- (MSDLanguageAndRegionManager)init;
- (id)deviceLanguageIdentifier;
- (id)deviceRegionCode;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDeviceLocaleCode;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentSiriLanguage;
- (id)getDemoPreferencesSiriLanguage;
- (void)cancelNotifyToken:(int)a3;
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
  v3 = [v2 getCurrentDeviceLanguage];

  return v3;
}

- (id)getCurrentDevicePreferredLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  v3 = [v2 getCurrentDevicePreferredLanguage];

  return v3;
}

- (id)getCurrentDeviceRegion
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  v3 = [v2 getCurrentDeviceRegion];

  return v3;
}

- (id)getCurrentDeviceLocaleCode
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  v3 = [v2 getCurrentLocaleCode];

  return v3;
}

- (BOOL)saveCurrentDeviceLanguageIdentifier
{
  v2 = self;
  v3 = [(MSDLanguageAndRegionManager *)self getCurrentDeviceLanguage];
  LOBYTE(v2) = [(MSDLanguageAndRegionManager *)v2 saveDeviceLanguageIdentifier:v3];

  return v2;
}

- (BOOL)saveCurrentDeviceRegionCode
{
  v2 = self;
  v3 = [(MSDLanguageAndRegionManager *)self getCurrentDeviceRegion];
  LOBYTE(v2) = [(MSDLanguageAndRegionManager *)v2 saveDeviceRegionCode:v3];

  return v2;
}

- (BOOL)setSiriLanguage:(id)a3
{
  v4 = a3;
  v5 = +[MSDLanguageAndRegionHelper sharedInstance];
  v6 = [v5 setSiriLanguage:v4];

  if (v6 != 1)
  {
    [(MSDLanguageAndRegionManager *)self saveSiriLanguageToPreferences:v4];
  }

  return v6 != 1;
}

- (id)getCurrentSiriLanguage
{
  v2 = +[MSDLanguageAndRegionHelper sharedInstance];
  v3 = [v2 getSiriLanguage];

  return v3;
}

- (BOOL)saveSiriLanguageToPreferences:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:v3 forKey:@"SiriLanguage"];

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
  v3 = [v2 isSiriEnabled];

  return v3;
}

- (BOOL)saveDeviceLanguageIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:v3 forKey:@"DeviceLanguageIdentifier"];

  return v5;
}

- (id)deviceLanguageIdentifier
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceLanguageIdentifier"];

  return v3;
}

- (BOOL)saveDeviceRegionCode:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:v3 forKey:@"DeviceRegionCode"];

  return v5;
}

- (id)deviceRegionCode
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DeviceRegionCode"];

  return v3;
}

- (void)cancelNotifyToken:(int)a3
{
  if (a3 != -1)
  {
    notify_cancel(a3);
  }
}

- (void)restoreDeviceLanguageAndRegionIfNeeded
{
  v3 = [(MSDLanguageAndRegionManager *)self deviceLanguageIdentifier];
  v4 = [(MSDLanguageAndRegionManager *)self deviceRegionCode];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = +[MSDLanguageAndRegionHelper sharedInstance];
      v7 = [v6 setDeviceLanguage:v3 andRegion:v5 matchToSystemLanguage:0];

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