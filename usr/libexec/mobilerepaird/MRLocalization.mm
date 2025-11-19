@interface MRLocalization
- (id)locKeyWithFormat:(id)a3 component:(int64_t)a4;
- (id)localizedStringWithFormat:(id)a3 component:(int64_t)a4;
- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4;
@end

@implementation MRLocalization

- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/CoreRepairKit.framework"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localizations];
    v10 = +[NSLocale preferredLanguages];
    v11 = [NSBundle preferredLocalizationsFromArray:v9 forPreferences:v10];

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable" localization:v12];

    if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
    {
      v14 = [v11 objectAtIndexedSubscript:0];
      v15 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable-SSR" localization:v14];

      v13 = v15;
    }

    if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
    {
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable-V53" localization:v16];

      v13 = v17;
    }
  }

  else
  {
    v13 = @"NOTFOUND";
  }

  if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
  {
    v18 = v6;

    v13 = v18;
  }

  return v13;
}

- (id)locKeyWithFormat:(id)a3 component:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@"%@"];
  v7 = [v6 count];

  if (v7 == 2)
  {
    v8 = [CRDeviceMap getLocalizationKey:a4];
    v9 = [v8 stringByStrippingPrefix:@"PART_"];

    if (!v9 || (v10 = [(__CFString *)v9 length], v11 = v9, !v10))
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000ECBC(v9, a4, v12);
      }

      v11 = @"UNDEFINED";
    }

    v13 = [NSString stringWithFormat:v5, v11];
  }

  else
  {
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000EC78(v14);
    }

    v13 = v5;
  }

  return v13;
}

- (id)localizedStringWithFormat:(id)a3 component:(int64_t)a4
{
  v5 = [(MRLocalization *)self locKeyWithFormat:a3 component:a4];
  v6 = [(MRLocalization *)self localizedStringWithKey:v5 defaultString:v5];

  return v6;
}

@end