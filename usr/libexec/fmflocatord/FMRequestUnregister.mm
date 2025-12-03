@interface FMRequestUnregister
- (BOOL)canReplace:(id)replace;
- (id)requestBody;
- (id)requestUrl;
@end

@implementation FMRequestUnregister

- (id)requestUrl
{
  provider = [(FMRequest *)self provider];
  v3 = [provider formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/unregister"];

  return v3;
}

- (id)requestBody
{
  v16.receiver = self;
  v16.super_class = FMRequestUnregister;
  requestBody = [(FMRequest *)&v16 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];
  [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[SystemConfig sharedInstance];
  deviceUDID = [v7 deviceUDID];
  [v6 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v9 = +[SystemConfig sharedInstance];
  productType = [v9 productType];
  [v6 fm_safelyMapKey:@"productType" toObject:productType];

  v11 = +[SystemConfig sharedInstance];
  buildVersion = [v11 buildVersion];
  [v6 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  v13 = +[SystemConfig sharedInstance];
  productVersion = [v13 productVersion];
  [v6 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [requestBody setObject:v6 forKeyedSubscript:@"deviceInfo"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(FMRequest *)self delegate];
    delegate2 = [replaceCopy delegate];
    v7 = delegate == delegate2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end