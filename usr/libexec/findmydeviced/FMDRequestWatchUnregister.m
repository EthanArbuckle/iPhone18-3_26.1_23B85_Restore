@interface FMDRequestWatchUnregister
- (BOOL)canReplace:(id)a3;
- (FMDRequestWatchUnregister)initWithDeviceUDID:(id)a3 unregisterToken:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDRequestWatchUnregister

- (FMDRequestWatchUnregister)initWithDeviceUDID:(id)a3 unregisterToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDRequestWatchUnregister;
  v8 = [(FMDRequest *)&v11 initWithAccount:0];
  v9 = v8;
  if (v8)
  {
    [(FMDRequestWatchUnregister *)v8 setUdid:v6];
    [(FMDRequestWatchUnregister *)v9 setToken:v7];
  }

  return v9;
}

- (id)requestHeaders
{
  v6.receiver = self;
  v6.super_class = FMDRequestWatchUnregister;
  v3 = [(FMDRequest *)&v6 requestHeaders];
  v4 = [(FMDRequestWatchUnregister *)self token];
  [v3 fm_safelyMapKey:@"X-Apple-Migration-Unregister-Token" toObject:v4];

  return v3;
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
  v3 = [(FMDRequest *)&v6 requestBody];
  v4 = [(FMDRequestWatchUnregister *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:v4];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 udid];
    v6 = [(FMDRequestWatchUnregister *)self udid];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end