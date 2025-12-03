@interface CCDEndMDMMigrationRequestPayload
- (id)dictionary;
@end

@implementation CCDEndMDMMigrationRequestPayload

- (id)dictionary
{
  v14.receiver = self;
  v14.super_class = CCDEndMDMMigrationRequestPayload;
  dictionary = [(CCDRequestPayload *)&v14 dictionary];
  v4 = [NSMutableDictionary dictionaryWithDictionary:dictionary];

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

  serverUID = [(CCDEndMDMMigrationRequestPayload *)self serverUID];
  [v9 setObject:serverUID forKeyedSubscript:@"server_uid"];

  status = [(CCDEndMDMMigrationRequestPayload *)self status];
  [v9 setObject:status forKeyedSubscript:@"status"];

  [v4 setObject:v9 forKeyedSubscript:@"device"];
  v12 = [v4 copy];

  return v12;
}

@end