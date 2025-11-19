@interface FMDRequestLostModeExitAuth
- (BOOL)canReplace:(id)a3;
- (FMDRequestLostModeExitAuth)initWithProvider:(id)a3 lostModeExitAuthToken:(id)a4;
- (FMDServiceProvider)provider;
- (id)requestBody;
- (id)requestUrl;
@end

@implementation FMDRequestLostModeExitAuth

- (FMDRequestLostModeExitAuth)initWithProvider:(id)a3 lostModeExitAuthToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  v11.receiver = self;
  v11.super_class = FMDRequestLostModeExitAuth;
  v9 = [(FMDRequest *)&v11 initWithAccount:v8];

  if (v9)
  {
    objc_storeWeak(&v9->_provider, v6);
    objc_storeStrong(&v9->_lostModeExitAuthToken, a4);
  }

  return v9;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  v6 = [(FMDRequestLostModeExitAuth *)self provider];
  v7 = [v6 account];
  v8 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/authAfterLostMode" account:v7 udid:v4];

  return v8;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMDRequestLostModeExitAuth;
  v3 = [(FMDRequest *)&v11 requestBody];
  v4 = [(FMDRequestLostModeExitAuth *)self provider];
  if (v4)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    v6 = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [v3 fm_safelyMapKey:@"deviceContext" toObject:v6];
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = +[FMDSystemConfig sharedInstance];
  v9 = [v8 deviceUDID];
  [v7 fm_safelyMapKey:@"udid" toObject:v9];

  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
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