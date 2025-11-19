@interface CCDUploadPushTokenRequestPayload
- (id)dictionary;
@end

@implementation CCDUploadPushTokenRequestPayload

- (id)dictionary
{
  v17.receiver = self;
  v17.super_class = CCDUploadPushTokenRequestPayload;
  v3 = [(CCDRequestPayload *)&v17 dictionary];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [(CCDUploadPushTokenRequestPayload *)self pushToken];
  v11 = [v10 base64EncodedStringWithOptions:0];
  [v9 setObject:v11 forKeyedSubscript:@"app_push_token"];

  v12 = [(CCDUploadPushTokenRequestPayload *)self pushTopic];
  [v9 setObject:v12 forKeyedSubscript:@"push_topic"];

  v13 = [NSNumber numberWithBool:[(CCDUploadPushTokenRequestPayload *)self eligibleForMigration]];
  [v9 setObject:v13 forKeyedSubscript:@"is_mdm_migration_capable"];

  v14 = [(CCDUploadPushTokenRequestPayload *)self eligibilityDescription];
  [v9 setObject:v14 forKeyedSubscript:@"mdm_migration_capability_description"];

  [v4 setObject:v9 forKeyedSubscript:@"device"];
  v15 = [v4 copy];

  return v15;
}

@end