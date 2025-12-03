@interface FMDDisableLocationDisplayRequest
- (FMDDisableLocationDisplayRequest)initWithAccount:(id)account;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDDisableLocationDisplayRequest

- (FMDDisableLocationDisplayRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = FMDDisableLocationDisplayRequest;
  v6 = [(FMDRequest *)&v9 initWithAccount:accountCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDDisableLocationDisplayRequest;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  account = [(FMDDisableLocationDisplayRequest *)self account];
  v7 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/disableLocations" account:account udid:deviceUDID];

  return v7;
}

- (id)requestBody
{
  v4.receiver = self;
  v4.super_class = FMDDisableLocationDisplayRequest;
  requestBody = [(FMDRequest *)&v4 requestBody];

  return requestBody;
}

@end