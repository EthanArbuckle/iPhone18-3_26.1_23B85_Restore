@interface MSDLanguageAndRegionHelper
+ (id)sharedInstance;
- (BOOL)_isCurrentDeviceLanguage:(id)language andRegion:(id)region;
- (BOOL)_isCurrentDevicePreferredLanguage:(id)language andRegion:(id)region;
- (BOOL)isSiriEnabled;
- (id)_preferredLocalizedLanguageCodeFromArray:(id)array;
- (id)_systemLocalizedLanguageCodeFromArray:(id)array;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentLocaleCode;
- (id)getSiriLanguage;
- (int)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage;
- (int)setSiriLanguage:(id)language;
@end

@implementation MSDLanguageAndRegionHelper

+ (id)sharedInstance
{
  if (qword_1001A5AA0 != -1)
  {
    sub_1000EAFD4();
  }

  v3 = qword_1001A5A98;

  return v3;
}

- (int)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage
{
  systemLanguageCopy = systemLanguage;
  languageCopy = language;
  regionCopy = region;
  v10 = languageCopy;
  v11 = sub_100063A54();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (systemLanguageCopy)
  {
    if (v12)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Comparing to the nearest system language", &v20, 2u);
    }

    v26 = v10;
    v13 = [NSArray arrayWithObjects:&v26 count:1];
    v14 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v13];

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDeviceLanguage:v14 andRegion:regionCopy];
  }

  else
  {
    if (v12)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Comparing to any localized language variant", &v20, 2u);
    }

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDevicePreferredLanguage:v10 andRegion:regionCopy];
    v14 = v10;
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    v21 = v10;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = regionCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting device language to %{public}@ (%{public}@) and region code to %{public}@.", &v20, 0x20u);
  }

  if (v15)
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = regionCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device already has language %{public}@ (%{public}@) and region %{public}@", &v20, 0x20u);
    }

    v18 = 2;
  }

  else
  {
    [IPSettingsUtilities setRegion:regionCopy];
    [IPSettingsUtilities setLanguage:v14];
    v18 = 0;
  }

  return v18;
}

- (id)getCurrentDeviceLanguage
{
  v3 = +[NSLocale preferredLanguages];
  v4 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v3];

  return v4;
}

- (id)getCurrentDevicePreferredLanguage
{
  v2 = +[NSLocale preferredLanguages];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (id)getCurrentDeviceRegion
{
  v2 = +[NSLocale currentLocale];
  countryCode = [v2 countryCode];

  return countryCode;
}

- (id)getCurrentLocaleCode
{
  getCurrentDevicePreferredLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
  v5 = [NSString stringWithFormat:@"%@_%@", getCurrentDevicePreferredLanguage, getCurrentDeviceRegion];

  return v5;
}

- (int)setSiriLanguage:(id)language
{
  languageCopy = language;
  if (![(MSDLanguageAndRegionHelper *)self isSiriEnabled])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling Siri", buf, 2u);
    }

    [(MSDLanguageAndRegionHelper *)self setSiriIsEnabled:1];
  }

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = languageCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting Siri language to %{public}@", buf, 0xCu);
  }

  getSiriLanguage = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

  if (getSiriLanguage == languageCopy)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = languageCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device already has a Siri language of %{public}@", buf, 0xCu);
    }

    v15 = 2;
  }

  else
  {
    v8 = dispatch_semaphore_create(0);
    v9 = +[AFSettingsConnection sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BCD88;
    v17[3] = &unk_100169B70;
    v10 = v8;
    v18 = v10;
    [v9 setLanguage:languageCopy withCompletion:v17];

    v11 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000EAFE8(v12);
      }
    }

    getSiriLanguage2 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

    if (getSiriLanguage2 == languageCopy)
    {
      v15 = 0;
    }

    else
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000EB02C(languageCopy, self, v14);
      }

      v15 = 1;
    }
  }

  return v15;
}

- (id)getSiriLanguage
{
  v2 = +[AFPreferences sharedPreferences];
  languageCode = [v2 languageCode];

  return languageCode;
}

- (BOOL)isSiriEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled;
}

- (BOOL)_isCurrentDeviceLanguage:(id)language andRegion:(id)region
{
  regionCopy = region;
  languageCopy = language;
  getCurrentDeviceLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceLanguage];
  v9 = [getCurrentDeviceLanguage isEqualToString:languageCopy];

  if (v9)
  {
    getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [getCurrentDeviceRegion isEqualToString:regionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isCurrentDevicePreferredLanguage:(id)language andRegion:(id)region
{
  regionCopy = region;
  languageCopy = language;
  getCurrentDevicePreferredLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v9 = [getCurrentDevicePreferredLanguage isEqualToString:languageCopy];

  if (v9)
  {
    getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [getCurrentDeviceRegion isEqualToString:regionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_systemLocalizedLanguageCodeFromArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSLocale systemLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:v4 forPreferences:arrayCopy];

  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)_preferredLocalizedLanguageCodeFromArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[NSLocale availableLocaleIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSLocale localeWithLocaleIdentifier:*(*(&v16 + 1) + 8 * i)];
        languageIdentifier = [v10 languageIdentifier];
        [v4 addObject:languageIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = [NSBundle preferredLocalizationsFromArray:v12 forPreferences:arrayCopy];
  firstObject = [v13 firstObject];

  return firstObject;
}

@end