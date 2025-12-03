@interface CDRequesterIncomingCallsSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)client;
- (void)_invalidated;
- (void)_prepareForActivationWithCompletionHandler:(id)handler;
@end

@implementation CDRequesterIncomingCallsSession

- (void)_prepareForActivationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v4 = CPSErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Feature flag not enabled.";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:105 userInfo:v5];
    (handlerCopy)[2](handlerCopy, v6);
  }
}

- (void)_configureRapportClient:(id)client
{
  clientCopy = client;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018E30;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterIncomingCallsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019154;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterIncomingCallsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterIncomingCallsSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

- (BOOL)_requireOwnerDevice
{
  request = [(CDRequesterSession *)self request];
  appleAccountAltDSID = [request appleAccountAltDSID];
  v4 = appleAccountAltDSID == 0;

  return v4;
}

- (id)_idsMessageRecipientUsernames
{
  request = [(CDRequesterSession *)self request];
  appleAccountAltDSID = [request appleAccountAltDSID];

  if (appleAccountAltDSID)
  {
    v4 = appleAccountAltDSID;
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_appleAccountWithAltDSID:v4];

    username = [v6 username];
    v10 = username;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end