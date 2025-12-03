@interface FMDSupportedAccessoryTypesRequest
- (FMDSupportedAccessoryTypesRequest)initWithAccount:(id)account registry:(id)registry;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDSupportedAccessoryTypesRequest

- (FMDSupportedAccessoryTypesRequest)initWithAccount:(id)account registry:(id)registry
{
  accountCopy = account;
  registryCopy = registry;
  v14.receiver = self;
  v14.super_class = FMDSupportedAccessoryTypesRequest;
  v8 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extAccessoryConfigURL = [accountCopy extAccessoryConfigURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = extAccessoryConfigURL;

    objc_storeStrong(&v8->_registry, registry);
LABEL_4:
    v11 = v8;
    goto LABEL_8;
  }

  v12 = sub_10000BE38();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1002265FC(accountCopy, v12);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)requestHeaders
{
  v6.receiver = self;
  v6.super_class = FMDSupportedAccessoryTypesRequest;
  requestHeaders = [(FMDRequest *)&v6 requestHeaders];
  v3 = +[FMDServerConfig sharedInstance];
  mmeClientInfo = [v3 mmeClientInfo];
  [requestHeaders fm_safelyMapKey:@"X-MMe-Client-Info" toObject:mmeClientInfo];

  return requestHeaders;
}

- (id)requestUrl
{
  baseURL = [(FMDSupportedAccessoryTypesRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/supportedAccessoryTypes", baseURL];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v7.receiver = self;
  v7.super_class = FMDSupportedAccessoryTypesRequest;
  requestBody = [(FMDRequest *)&v7 requestBody];
  registry = [(FMDSupportedAccessoryTypesRequest *)self registry];
  version = [registry version];
  [requestBody fm_safelyMapKey:@"cachedVersion" toObject:version];

  return requestBody;
}

@end