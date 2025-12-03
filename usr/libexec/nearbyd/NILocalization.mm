@interface NILocalization
+ (id)_niFrameworkBundle;
+ (id)_niLocalizedStringFromBundle:(id)bundle withKey:(id)key;
+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)key;
+ (id)fallbackBundle;
+ (id)fallbackBundleWithBundle:(id)bundle;
+ (id)localizedBundle;
+ (id)localizedBundleWithBundle:(id)bundle;
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

+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)key
{
  keyCopy = key;
  localizedBundle = [objc_opt_class() localizedBundle];
  v5 = [localizedBundle localizedStringForKey:keyCopy value:0 table:0];

  if (!v5)
  {
    fallbackBundle = [objc_opt_class() fallbackBundle];
    v5 = [fallbackBundle localizedStringForKey:keyCopy value:0 table:0];

    if (!v5)
    {
      _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
      v5 = [_niFrameworkBundle localizedStringForKey:keyCopy value:0 table:0];
    }
  }

  return v5;
}

+ (id)fallbackBundle
{
  v2 = objc_opt_class();
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 fallbackBundleWithBundle:_niFrameworkBundle];

  return v4;
}

+ (id)localizedBundle
{
  v2 = objc_opt_class();
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 localizedBundleWithBundle:_niFrameworkBundle];

  return v4;
}

+ (id)_niLocalizedStringFromBundle:(id)bundle withKey:(id)key
{
  bundleCopy = bundle;
  keyCopy = key;
  v7 = [objc_opt_class() localizedBundleWithBundle:bundleCopy];
  v8 = [v7 localizedStringForKey:keyCopy value:0 table:0];

  if (!v8)
  {
    v9 = [objc_opt_class() fallbackBundleWithBundle:bundleCopy];
    v8 = [v9 localizedStringForKey:keyCopy value:0 table:0];

    if (!v8)
    {
      v8 = [bundleCopy localizedStringForKey:keyCopy value:0 table:0];
    }
  }

  return v8;
}

+ (id)fallbackBundleWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[NSLocale preferredLanguages];
  firstObject = [v4 firstObject];
  v6 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v6 firstObject];

  v8 = [bundleCopy pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:firstObject2];

  stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
  v10 = [NSBundle bundleWithPath:stringByDeletingLastPathComponent];

  return v10;
}

+ (id)localizedBundleWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[NSLocale preferredLanguages];
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  localizations = [_niFrameworkBundle localizations];
  v7 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v4];

  resourcePath = [bundleCopy resourcePath];

  firstObject = [v7 firstObject];
  v10 = [NSString stringWithFormat:@"%@.lproj", firstObject];

  v11 = [resourcePath stringByAppendingPathComponent:v10];
  v12 = [NSBundle bundleWithPath:v11];

  return v12;
}

@end