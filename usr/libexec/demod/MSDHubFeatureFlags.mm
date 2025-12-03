@interface MSDHubFeatureFlags
+ (BOOL)isSupportedFeatureFlag:(id)flag;
+ (BOOL)readBoolValueForFeatureFlag:(id)flag;
@end

@implementation MSDHubFeatureFlags

+ (BOOL)isSupportedFeatureFlag:(id)flag
{
  flagCopy = flag;
  v4 = +[MSDHubFeatureFlags supportedFeatureFlags];
  v5 = [v4 containsObject:flagCopy];

  return v5;
}

+ (BOOL)readBoolValueForFeatureFlag:(id)flag
{
  flagCopy = flag;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"HubSuppliedSettings"];

  v6 = [v5 objectForKey:@"FeatureFlags"];
  v7 = [v6 objectForKey:flagCopy];

  LOBYTE(flagCopy) = [v7 BOOLValue];
  return flagCopy;
}

@end