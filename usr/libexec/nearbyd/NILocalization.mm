@interface NILocalization
+ (id)_niFrameworkBundle;
+ (id)_niLocalizedStringFromBundle:(id)a3 withKey:(id)a4;
+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)a3;
+ (id)fallbackBundle;
+ (id)fallbackBundleWithBundle:(id)a3;
+ (id)localizedBundle;
+ (id)localizedBundleWithBundle:(id)a3;
@end

@implementation NILocalization

+ (id)_niFrameworkBundle
{
  if (qword_1009F2750 != -1)
  {
    sub_1004B61F4();
  }

  v3 = qword_1009F2748;

  return v3;
}

+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() localizedBundle];
  v5 = [v4 localizedStringForKey:v3 value:0 table:0];

  if (!v5)
  {
    v6 = [objc_opt_class() fallbackBundle];
    v5 = [v6 localizedStringForKey:v3 value:0 table:0];

    if (!v5)
    {
      v7 = [objc_opt_class() _niFrameworkBundle];
      v5 = [v7 localizedStringForKey:v3 value:0 table:0];
    }
  }

  return v5;
}

+ (id)fallbackBundle
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 fallbackBundleWithBundle:v3];

  return v4;
}

+ (id)localizedBundle
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 localizedBundleWithBundle:v3];

  return v4;
}

+ (id)_niLocalizedStringFromBundle:(id)a3 withKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() localizedBundleWithBundle:v5];
  v8 = [v7 localizedStringForKey:v6 value:0 table:0];

  if (!v8)
  {
    v9 = [objc_opt_class() fallbackBundleWithBundle:v5];
    v8 = [v9 localizedStringForKey:v6 value:0 table:0];

    if (!v8)
    {
      v8 = [v5 localizedStringForKey:v6 value:0 table:0];
    }
  }

  return v8;
}

+ (id)fallbackBundleWithBundle:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale preferredLanguages];
  v5 = [v4 firstObject];
  v6 = [v5 componentsSeparatedByString:@"-"];
  v7 = [v6 firstObject];

  v8 = [v3 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v7];

  v9 = [v8 stringByDeletingLastPathComponent];
  v10 = [NSBundle bundleWithPath:v9];

  return v10;
}

+ (id)localizedBundleWithBundle:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale preferredLanguages];
  v5 = [objc_opt_class() _niFrameworkBundle];
  v6 = [v5 localizations];
  v7 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v4];

  v8 = [v3 resourcePath];

  v9 = [v7 firstObject];
  v10 = [NSString stringWithFormat:@"%@.lproj", v9];

  v11 = [v8 stringByAppendingPathComponent:v10];
  v12 = [NSBundle bundleWithPath:v11];

  return v12;
}

@end