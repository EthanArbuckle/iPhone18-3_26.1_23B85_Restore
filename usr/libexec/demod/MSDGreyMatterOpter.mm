@interface MSDGreyMatterOpter
+ (BOOL)isOptedIn;
+ (void)migrateOptInValue;
@end

@implementation MSDGreyMatterOpter

+ (BOOL)isOptedIn
{
  v2 = objc_alloc_init(CSFGMOptIn);
  isOptedIn = [v2 isOptedIn];

  return isOptedIn;
}

+ (void)migrateOptInValue
{
  v2 = CFPreferencesCopyValue(@"com.apple.csf.gm.toggle", @".GlobalPreferences", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      LODWORD(v9) = bOOLValue;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Read a valid opt-in value from the global preferences domain: %d", &v8, 8u);
    }

    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (bOOLValue)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Applying the opt-in value %@ to the device", &v8, 0xCu);
    }

    [MSDGreyMatterOpter setIsOptedIn:bOOLValue];
    _CFPreferencesFlushCachesForIdentifier();
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AI opt-in value doesn't exist in the global preferences domain, setting the opt-in value to NO.", &v8, 2u);
    }

    [MSDGreyMatterOpter setIsOptedIn:0];
  }
}

@end