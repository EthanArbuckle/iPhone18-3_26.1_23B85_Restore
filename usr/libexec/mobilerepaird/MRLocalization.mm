@interface MRLocalization
- (id)locKeyWithFormat:(id)format component:(int64_t)component;
- (id)localizedStringWithFormat:(id)format component:(int64_t)component;
- (id)localizedStringWithKey:(id)key defaultString:(id)string;
@end

@implementation MRLocalization

- (id)localizedStringWithKey:(id)key defaultString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  v7 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/CoreRepairKit.framework"];
  v8 = v7;
  if (v7)
  {
    localizations = [v7 localizations];
    v10 = +[NSLocale preferredLanguages];
    v11 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v10];

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v8 localizedStringForKey:keyCopy value:@"NOTFOUND" table:@"Localizable" localization:v12];

    if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
    {
      v14 = [v11 objectAtIndexedSubscript:0];
      v15 = [v8 localizedStringForKey:keyCopy value:@"NOTFOUND" table:@"Localizable-SSR" localization:v14];

      v13 = v15;
    }

    if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
    {
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v8 localizedStringForKey:keyCopy value:@"NOTFOUND" table:@"Localizable-V53" localization:v16];

      v13 = v17;
    }
  }

  else
  {
    v13 = @"NOTFOUND";
  }

  if ([(__CFString *)v13 isEqualToString:@"NOTFOUND"])
  {
    v18 = stringCopy;

    v13 = v18;
  }

  return v13;
}

- (id)locKeyWithFormat:(id)format component:(int64_t)component
{
  formatCopy = format;
  v6 = [formatCopy componentsSeparatedByString:@"%@"];
  v7 = [v6 count];

  if (v7 == 2)
  {
    v8 = [CRDeviceMap getLocalizationKey:component];
    v9 = [v8 stringByStrippingPrefix:@"PART_"];

    if (!v9 || (v10 = [(__CFString *)v9 length], v11 = v9, !v10))
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000ECBC(v9, component, v12);
      }

      v11 = @"UNDEFINED";
    }

    v13 = [NSString stringWithFormat:formatCopy, v11];
  }

  else
  {
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000EC78(v14);
    }

    v13 = formatCopy;
  }

  return v13;
}

- (id)localizedStringWithFormat:(id)format component:(int64_t)component
{
  v5 = [(MRLocalization *)self locKeyWithFormat:format component:component];
  v6 = [(MRLocalization *)self localizedStringWithKey:v5 defaultString:v5];

  return v6;
}

@end