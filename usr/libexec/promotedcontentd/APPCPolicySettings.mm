@interface APPCPolicySettings
+ (id)defaultValues;
+ (id)loadDeviceHeaderInfo;
+ (id)policySettingsURL;
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APPCPolicySettings

+ (id)loadDeviceHeaderInfo
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
  v4 = +[APDeviceInfo current];
  v5 = +[APIDAccountProvider privateUserAccount];
  storefront = [v5 storefront];
  v7 = [v4 userAgentStringForBundleID:@"com.apple.ap.promotedcontentd" storefront:storefront];

  v17 = v5;
  storefront2 = [v5 storefront];
  systemVersion = [v4 systemVersion];
  systemName = [v4 systemName];
  deviceModel = [v4 deviceModel];
  buildVersion = [v4 buildVersion];
  v12 = +[NSDate date];
  v13 = [v3 stringFromDate:v12];

  if ([v7 length])
  {
    [v2 setObject:v7 forKey:@"User-Agent"];
  }

  if ([storefront2 length])
  {
    [v2 setObject:storefront2 forKey:@"storefront"];
  }

  if ([systemVersion length])
  {
    [v2 setObject:systemVersion forKey:@"osVersion"];
  }

  if ([systemName length])
  {
    [v2 setObject:systemName forKey:@"osPlatform"];
  }

  if ([deviceModel length])
  {
    [v2 setObject:deviceModel forKey:@"device"];
  }

  if ([@"com.apple.ap.promotedcontentd" length])
  {
    [v2 setObject:@"com.apple.ap.promotedcontentd" forKey:@"bundleId"];
  }

  if ([buildVersion length])
  {
    [v2 setObject:buildVersion forKey:@"osBuild"];
  }

  if ([v13 length])
  {
    [v2 setObject:v13 forKey:@"timestamp"];
  }

  v14 = [v2 copy];

  return v14;
}

+ (id)policySettingsURL
{
  v2 = kAPServerEnvironmentProductionBaseURL;
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:APDefaultsBundleID];
    v5 = [v4 stringForKey:kAPServerEnvironmentKey];
    v6 = v5;
    if (!v5 || ([v5 isEqualToString:kAPServerEnvironmentProduction] & 1) != 0)
    {
      goto LABEL_13;
    }

    if ([v6 isEqualToString:kAPServerEnvironmentQE1])
    {
      v7 = &kAPDisplayServerQE1Base;
    }

    else if ([v6 isEqualToString:kAPServerEnvironmentQE2])
    {
      v7 = &kAPDisplayServerQE2Base;
    }

    else if ([v6 isEqualToString:kAPServerEnvironmentQE3])
    {
      v7 = &kAPDisplayServerQE3Base;
    }

    else
    {
      if (![v6 isEqualToString:kAPServerEnvironmentQE4])
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = &kAPDisplayServerQE4Base;
    }

    v8 = *v7;

    v2 = v8;
    goto LABEL_13;
  }

LABEL_14:
  v9 = [v2 stringByAppendingString:@"2/policy/display"];
  v10 = [NSURL URLWithString:v9];

  return v10;
}

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  policySettingsURL = [self policySettingsURL];
  loadDeviceHeaderInfo = [self loadDeviceHeaderInfo];
  v7 = [[APSettingsStorageServer alloc] initWithURL:policySettingsURL headers:loadDeviceHeaderInfo defaultValues:valuesCopy];

  byte_1004DF670 = [v7 didFetchFromServer];

  return v7;
}

+ (id)defaultValues
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableArray array];
  v16[0] = @"value";
  v16[1] = @"adFormatType";
  v17[0] = &off_100492040;
  v17[1] = @"carousel";
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v4 addObject:v13];
  [v3 setObject:v4 forKey:@"timer"];
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableArray array];
  v14[0] = @"value";
  v14[1] = @"adFormatType";
  v15[0] = &off_100492058;
  v15[1] = @"carousel";
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v6 addObject:v7];
  [v5 setObject:v6 forKey:@"timer"];
  v8 = +[NSMutableArray array];
  [v5 setObject:v8 forKey:@"spacing"];

  [v3 setObject:v5 forKey:@"adSessionBefore"];
  v9 = +[NSMutableArray array];
  [v3 setObject:v9 forKey:@"spacing"];

  v10 = +[NSMutableArray array];
  [v3 setObject:v10 forKey:@"adsAllowed"];

  v11 = +[NSMutableArray array];
  [v3 setObject:v11 forKey:@"adSessionAfter"];

  [v2 setObject:v3 forKey:@"policy"];

  return v2;
}

@end