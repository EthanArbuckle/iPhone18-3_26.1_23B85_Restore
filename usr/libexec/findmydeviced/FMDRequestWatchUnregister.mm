@interface FMDRequestWatchUnregister
- (BOOL)canReplace:(id)replace;
- (FMDRequestWatchUnregister)initWithDeviceUDID:(id)d unregisterToken:(id)token;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDRequestWatchUnregister

- (FMDRequestWatchUnregister)initWithDeviceUDID:(id)d unregisterToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = FMDRequestWatchUnregister;
  v8 = [(FMDRequest *)&v11 initWithAccount:0];
  v9 = v8;
  if (v8)
  {
    [(FMDRequestWatchUnregister *)v8 setUdid:dCopy];
    [(FMDRequestWatchUnregister *)v9 setToken:tokenCopy];
  }

  return v9;
}

- (id)requestHeaders
{
  v6.receiver = self;
  v6.super_class = FMDRequestWatchUnregister;
  requestHeaders = [(FMDRequest *)&v6 requestHeaders];
  token = [(FMDRequestWatchUnregister *)self token];
  [requestHeaders fm_safelyMapKey:@"X-Apple-Migration-Unregister-Token" toObject:token];

  return requestHeaders;
}

- (id)requestUrl
{
  v2 = objc_alloc_init(RequestTemplateURL);
  v3 = [(RequestTemplateURL *)v2 unauthenticatedURLFromTemplate:@"${scheme}://${hostname}/${service}/token/migrationUnregister"];

  return v3;
}

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestWatchUnregister;
  requestBody = [(FMDRequest *)&v6 requestBody];
  udid = [(FMDRequestWatchUnregister *)self udid];
  [requestBody fm_safelyMapKey:@"udid" toObject:udid];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    udid = [replaceCopy udid];
    udid2 = [(FMDRequestWatchUnregister *)self udid];
    v7 = [udid isEqualToString:udid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end