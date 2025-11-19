@interface FMRequestUnregister
- (BOOL)canReplace:(id)a3;
- (id)requestBody;
- (id)requestUrl;
@end

@implementation FMRequestUnregister

- (id)requestUrl
{
  v2 = [(FMRequest *)self provider];
  v3 = [v2 formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/unregister"];

  return v3;
}

- (id)requestBody
{
  v16.receiver = self;
  v16.super_class = FMRequestUnregister;
  v3 = [(FMRequest *)&v16 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];
  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[SystemConfig sharedInstance];
  v8 = [v7 deviceUDID];
  [v6 fm_safelyMapKey:@"udid" toObject:v8];

  v9 = +[SystemConfig sharedInstance];
  v10 = [v9 productType];
  [v6 fm_safelyMapKey:@"productType" toObject:v10];

  v11 = +[SystemConfig sharedInstance];
  v12 = [v11 buildVersion];
  [v6 fm_safelyMapKey:@"buildVersion" toObject:v12];

  v13 = +[SystemConfig sharedInstance];
  v14 = [v13 productVersion];
  [v6 fm_safelyMapKey:@"productVersion" toObject:v14];

  [v3 setObject:v6 forKeyedSubscript:@"deviceInfo"];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(FMRequest *)self delegate];
    v6 = [v4 delegate];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end