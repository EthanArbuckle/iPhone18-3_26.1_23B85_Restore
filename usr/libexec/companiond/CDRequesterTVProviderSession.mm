@interface CDRequesterTVProviderSession
- (void)_configureRapportClient:(id)a3;
- (void)_handleGetAuthInfoRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_prepareForActivationWithCompletionHandler:(id)a3;
@end

@implementation CDRequesterTVProviderSession

- (void)_prepareForActivationWithCompletionHandler:(id)a3
{
  v12 = a3;
  v4 = [(CDRequesterSession *)self request];
  v5 = [v4 providerURL];
  v6 = [v5 absoluteString];
  v7 = [v6 length];

  if (v7 && (-[CDRequesterSession request](self, "request"), v8 = objc_claimAutoreleasedReturnValue(), [v8 providerName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v10))
  {
    v12[2](v12, 0);
  }

  else
  {
    v11 = CPSErrorMake();
    (v12)[2](v12, v11);
  }
}

- (void)_configureRapportClient:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001EA8C;
  v3[3] = &unk_10008A780;
  v3[4] = self;
  [a3 registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 handler:v3];
}

- (void)_handleGetAuthInfoRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "tv provider session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v11, &v22);
  v12 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v8];
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

  v17 = [(CDRequesterSession *)self request];
  v18 = [v17 providerURL];
  [(CDTVProviderGetAuthInfoResponse *)v14 setProviderURL:v18];

  v19 = [(CDRequesterSession *)self request];
  v20 = [v19 providerName];
  [(CDTVProviderGetAuthInfoResponse *)v14 setProviderName:v20];

  v21 = [(CDTVProviderGetAuthInfoResponse *)v14 makeRapportDictionary];
  (*(v10 + 2))(v10, v21, 0, 0);

  os_activity_scope_leave(&v22);
}

@end