@interface FMDDisableLocationDisplayRequest
- (FMDDisableLocationDisplayRequest)initWithAccount:(id)a3;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDDisableLocationDisplayRequest

- (FMDDisableLocationDisplayRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FMDDisableLocationDisplayRequest;
  v6 = [(FMDRequest *)&v9 initWithAccount:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDDisableLocationDisplayRequest;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  v6 = [(FMDDisableLocationDisplayRequest *)self account];
  v7 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/disableLocations" account:v6 udid:v4];

  return v7;
}

- (id)requestBody
{
  v4.receiver = self;
  v4.super_class = FMDDisableLocationDisplayRequest;
  v2 = [(FMDRequest *)&v4 requestBody];

  return v2;
}

@end