@interface NSBundle
+ (id)_rpFrameworkBundle;
+ (id)_rpLocalizedAppNameFromBundleID:(id)d;
+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:(id)key;
+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:(id)key;
+ (id)baseIdentifier:(id)identifier;
+ (id)executablePathWithPID:(int)d;
+ (id)fallbackLanguage;
+ (id)preferredLanguage;
- (id)_rpLocalizedAppName;
@end

@implementation NSBundle

+ (id)_rpFrameworkBundle
{
  if (qword_1000B6930 != -1)
  {
    sub_100063364();
  }

  v3 = qword_1000B6928;

  return v3;
}

- (id)_rpLocalizedAppName
{
  v3 = [(NSBundle *)self objectForInfoDictionaryKey:_kCFBundleDisplayNameKey];
  if (v3 || ([(NSBundle *)self objectForInfoDictionaryKey:kCFBundleNameKey], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v4 = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleExecutableKey];
    v5 = 0;
  }

  return v4;
}

+ (id)_rpLocalizedAppNameFromBundleID:(id)d
{
  dCopy = d;
  v4 = [NSBundle bundleWithIdentifier:dCopy];
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
  v6 = v5;
  if (v5)
  {
    localizedName = [v5 localizedName];
    v8 = localizedName;
    if (localizedName && ([localizedName isEqualToString:&stru_1000A2FB8] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  _rpLocalizedAppName = [v4 _rpLocalizedAppName];

  v8 = _rpLocalizedAppName;
  if (!_rpLocalizedAppName)
  {
LABEL_10:
    v10 = dCopy;

    v8 = v10;
    goto LABEL_11;
  }

LABEL_8:
  if (([v8 isEqualToString:&stru_1000A2FB8] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
  {
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:(id)key
{
  keyCopy = key;
  v5 = +[NSBundle _rpFrameworkBundle];
  preferredLanguage = [self preferredLanguage];
  v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable" localization:preferredLanguage];

  if (!v7)
  {
    fallbackLanguage = [self fallbackLanguage];
    v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable" localization:fallbackLanguage];

    if (!v7)
    {
      v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable"];
    }
  }

  return v7;
}

+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:(id)key
{
  keyCopy = key;
  v5 = +[NSBundle _rpFrameworkBundle];
  preferredLanguage = [self preferredLanguage];
  v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"LocalizablePlural" localization:preferredLanguage];

  if (!v7)
  {
    fallbackLanguage = [self fallbackLanguage];
    v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"LocalizablePlural" localization:fallbackLanguage];

    if (!v7)
    {
      v7 = [v5 localizedStringForKey:keyCopy value:0 table:@"LocalizablePlural"];
    }
  }

  return v7;
}

+ (id)fallbackLanguage
{
  v2 = +[NSLocale preferredLanguages];
  firstObject = [v2 firstObject];
  v4 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v4 firstObject];

  return firstObject2;
}

+ (id)preferredLanguage
{
  v2 = +[NSLocale preferredLanguages];
  _rpFrameworkBundle = [objc_opt_class() _rpFrameworkBundle];
  localizations = [_rpFrameworkBundle localizations];
  v5 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v2];

  firstObject = [v5 firstObject];

  return firstObject;
}

+ (id)baseIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  [v4 removeLastObject];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

+ (id)executablePathWithPID:(int)d
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(d encoding:{buffer, 0x1000u), 4}];

  return v3;
}

@end