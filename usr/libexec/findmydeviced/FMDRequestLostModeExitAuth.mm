@interface FMDRequestLostModeExitAuth
- (BOOL)canReplace:(id)replace;
- (FMDRequestLostModeExitAuth)initWithProvider:(id)provider lostModeExitAuthToken:(id)token;
- (FMDServiceProvider)provider;
- (id)requestBody;
- (id)requestUrl;
@end

@implementation FMDRequestLostModeExitAuth

- (FMDRequestLostModeExitAuth)initWithProvider:(id)provider lostModeExitAuthToken:(id)token
{
  providerCopy = provider;
  tokenCopy = token;
  account = [providerCopy account];
  v11.receiver = self;
  v11.super_class = FMDRequestLostModeExitAuth;
  v9 = [(FMDRequest *)&v11 initWithAccount:account];

  if (v9)
  {
    objc_storeWeak(&v9->_provider, providerCopy);
    objc_storeStrong(&v9->_lostModeExitAuthToken, token);
  }

  return v9;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  provider = [(FMDRequestLostModeExitAuth *)self provider];
  account = [provider account];
  v8 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/authAfterLostMode" account:account udid:deviceUDID];

  return v8;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMDRequestLostModeExitAuth;
  requestBody = [(FMDRequest *)&v11 requestBody];
  provider = [(FMDRequestLostModeExitAuth *)self provider];
  if (provider)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    standardDeviceContext = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v8 deviceUDID];
  [v7 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  [requestBody setObject:v7 forKeyedSubscript:@"deviceInfo"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end