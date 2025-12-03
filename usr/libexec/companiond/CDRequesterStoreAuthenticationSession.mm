@interface CDRequesterStoreAuthenticationSession
- (id)_idsMessageRecipientUsernames;
- (id)_responseForGetNotifInfoRequest:(id)request;
- (void)_configureRapportClient:(id)client;
- (void)_prepareForActivationWithCompletionHandler:(id)handler;
@end

@implementation CDRequesterStoreAuthenticationSession

- (void)_prepareForActivationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(CDRequesterSession *)self request];
  authenticationRequest = [request authenticationRequest];
  authenticationRequest = self->_authenticationRequest;
  self->_authenticationRequest = authenticationRequest;

  if (!self->_authenticationRequest)
  {
    goto LABEL_4;
  }

  request2 = [(CDRequesterSession *)self request];
  account = [request2 account];
  storeAccount = self->_storeAccount;
  self->_storeAccount = account;

  if (self->_storeAccount)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
LABEL_4:
    v10 = CPSErrorMake();
    (handlerCopy)[2](handlerCopy, v10);
  }
}

- (void)_configureRapportClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C938;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  clientCopy = client;
  [clientCopy registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 handler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CC54;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 handler:v5];
}

- (id)_responseForGetNotifInfoRequest:(id)request
{
  requestCopy = request;
  storeAccountToken = [requestCopy storeAccountToken];
  nonce = [requestCopy nonce];

  LOBYTE(self) = sub_1000643F8(self, storeAccountToken, nonce);
  if (self)
  {
    v7 = objc_alloc_init(CDGetNotifInfoResponse);
  }

  else
  {
    v8 = cps_session_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10006454C(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_idsMessageRecipientUsernames
{
  ams_altDSID = [(ACAccount *)self->_storeAccount ams_altDSID];
  if (!ams_altDSID)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100064584(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return 0;
}

@end