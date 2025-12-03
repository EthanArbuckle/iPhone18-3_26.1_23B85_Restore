@interface CDRequesterTVProviderSession
- (void)_configureRapportClient:(id)client;
- (void)_handleGetAuthInfoRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_prepareForActivationWithCompletionHandler:(id)handler;
@end

@implementation CDRequesterTVProviderSession

- (void)_prepareForActivationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(CDRequesterSession *)self request];
  providerURL = [request providerURL];
  absoluteString = [providerURL absoluteString];
  v7 = [absoluteString length];

  if (v7 && (-[CDRequesterSession request](self, "request"), v8 = objc_claimAutoreleasedReturnValue(), [v8 providerName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v10))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v11 = CPSErrorMake();
    (handlerCopy)[2](handlerCopy, v11);
  }
}

- (void)_configureRapportClient:(id)client
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001EA8C;
  v3[3] = &unk_10008A780;
  v3[4] = self;
  [client registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 handler:v3];
}

- (void)_handleGetAuthInfoRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = _os_activity_create(&_mh_execute_header, "tv provider session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v11, &v22);
  v12 = [[CDGetInfoRequest alloc] initWithRapportDictionary:requestCopy];
  v13 = cps_session_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
  }

  v14 = objc_alloc_init(CDTVProviderGetAuthInfoResponse);
  v15 = GestaltCopyAnswer();
  [(CDTVProviderGetAuthInfoResponse *)v14 setDeviceClass:v15];

  v16 = GestaltCopyAnswer();
  [(CDTVProviderGetAuthInfoResponse *)v14 setDeviceName:v16];

  request = [(CDRequesterSession *)self request];
  providerURL = [request providerURL];
  [(CDTVProviderGetAuthInfoResponse *)v14 setProviderURL:providerURL];

  request2 = [(CDRequesterSession *)self request];
  providerName = [request2 providerName];
  [(CDTVProviderGetAuthInfoResponse *)v14 setProviderName:providerName];

  makeRapportDictionary = [(CDTVProviderGetAuthInfoResponse *)v14 makeRapportDictionary];
  (*(handlerCopy + 2))(handlerCopy, makeRapportDictionary, 0, 0);

  os_activity_scope_leave(&v22);
}

@end