@interface MSDLanguageAndRegionHelper
+ (id)sharedInstance;
- (BOOL)_isCurrentDeviceLanguage:(id)a3 andRegion:(id)a4;
- (BOOL)_isCurrentDevicePreferredLanguage:(id)a3 andRegion:(id)a4;
- (BOOL)isSiriEnabled;
- (id)_preferredLocalizedLanguageCodeFromArray:(id)a3;
- (id)_systemLocalizedLanguageCodeFromArray:(id)a3;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentLocaleCode;
- (id)getSiriLanguage;
- (int)setDeviceLanguage:(id)a3 andRegion:(id)a4 matchToSystemLanguage:(BOOL)a5;
- (int)setSiriLanguage:(id)a3;
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

- (int)setDeviceLanguage:(id)a3 andRegion:(id)a4 matchToSystemLanguage:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = sub_100063A54();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v12)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Comparing to the nearest system language", &v20, 2u);
    }

    v26 = v10;
    v13 = [NSArray arrayWithObjects:&v26 count:1];
    v14 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v13];

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDeviceLanguage:v14 andRegion:v9];
  }

  else
  {
    if (v12)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Comparing to any localized language variant", &v20, 2u);
    }

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDevicePreferredLanguage:v10 andRegion:v9];
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
    v25 = v9;
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
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device already has language %{public}@ (%{public}@) and region %{public}@", &v20, 0x20u);
    }

    v18 = 2;
  }

  else
  {
    [IPSettingsUtilities setRegion:v9];
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
  v3 = [v2 firstObject];

  return v3;
}

- (id)getCurrentDeviceRegion
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 countryCode];

  return v3;
}

- (id)getCurrentLocaleCode
{
  v3 = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v4 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
  v5 = [NSString stringWithFormat:@"%@_%@", v3, v4];

  return v5;
}

- (int)setSiriLanguage:(id)a3
{
  v4 = a3;
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
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting Siri language to %{public}@", buf, 0xCu);
  }

  v7 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

  if (v7 == v4)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v4;
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
    [v9 setLanguage:v4 withCompletion:v17];

    v11 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000EAFE8(v12);
      }
    }

    v13 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

    if (v13 == v4)
    {
      v15 = 0;
    }

    else
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000EB02C(v4, self, v14);
      }

      v15 = 1;
    }
  }

  return v15;
}

- (id)getSiriLanguage
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

- (BOOL)isSiriEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

- (BOOL)_isCurrentDeviceLanguage:(id)a3 andRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceLanguage];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isCurrentDevicePreferredLanguage:(id)a3 andRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_systemLocalizedLanguageCodeFromArray:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale systemLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:v4 forPreferences:v3];

  v6 = [v5 firstObject];

  return v6;
}

- (id)_preferredLocalizedLanguageCodeFromArray:(id)a3
{
  v3 = a3;
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
        v11 = [v10 languageIdentifier];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = [NSBundle preferredLocalizationsFromArray:v12 forPreferences:v3];
  v14 = [v13 firstObject];

  return v14;
}

@end