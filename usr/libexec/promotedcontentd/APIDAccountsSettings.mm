@interface APIDAccountsSettings
+ (id)defaultValues;
+ (id)storageWithDefaultValues:(id)a3;
@end

@implementation APIDAccountsSettings

+ (id)defaultValues
{
  v2 = [@"BAAAAAAD" length];
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  v11 = [v10 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  v17 = [v16 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  v25[0] = @"iTunesDSID";
  v25[1] = @"isChild";
  v26[0] = @"0";
  v26[1] = &__kCFBooleanFalse;
  v25[2] = @"isAdolescent";
  v25[3] = @"isAdult";
  v26[2] = &__kCFBooleanFalse;
  v26[3] = &__kCFBooleanFalse;
  v25[4] = @"ageUnknown";
  v25[5] = @"sensitiveContentEligible";
  v26[4] = &__kCFBooleanTrue;
  v26[5] = &__kCFBooleanFalse;
  v25[6] = @"isManagedAccount";
  v25[7] = @"iCloudDSID";
  v26[6] = &__kCFBooleanFalse;
  v26[7] = @"0";
  v25[8] = @"DPID";
  v25[9] = @"segmentData";
  v26[8] = &stru_1004810B8;
  v26[9] = &stru_1004810B8;
  v25[10] = @"deviceNewsPlusSubscriberID";
  v25[11] = @"anonymousDemandID";
  v26[10] = v5;
  v26[11] = v8;
  v25[12] = @"toroID";
  v25[13] = @"iAdID";
  v26[12] = v11;
  v26[13] = v14;
  v25[14] = @"contentID";
  v25[15] = @"isNoServicesRegion";
  v26[14] = v17;
  v26[15] = &__kCFBooleanFalse;
  v25[16] = @"isProtoU13";
  v26[16] = &__kCFBooleanFalse;
  v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:17];
  v19 = NSStringFromSelector("IDAccountsRecord");
  v23[0] = v19;
  v24[0] = v18;
  v20 = NSStringFromSelector("storefront");
  v23[1] = v20;
  v24[1] = @"NONE";
  v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v21;
}

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:v3];

  return v4;
}

@end