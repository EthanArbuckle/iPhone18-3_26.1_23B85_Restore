@interface MSDHubFeatureFlags
+ (BOOL)isSupportedFeatureFlag:(id)a3;
+ (BOOL)readBoolValueForFeatureFlag:(id)a3;
@end

@implementation MSDHubFeatureFlags

+ (BOOL)isSupportedFeatureFlag:(id)a3
{
  v3 = a3;
  v4 = +[MSDHubFeatureFlags supportedFeatureFlags];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (BOOL)readBoolValueForFeatureFlag:(id)a3
{
  v3 = a3;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"HubSuppliedSettings"];

  v6 = [v5 objectForKey:@"FeatureFlags"];
  v7 = [v6 objectForKey:v3];

  LOBYTE(v3) = [v7 BOOLValue];
  return v3;
}

@end