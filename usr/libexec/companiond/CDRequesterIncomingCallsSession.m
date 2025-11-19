@interface CDRequesterIncomingCallsSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)a3;
- (void)_invalidated;
- (void)_prepareForActivationWithCompletionHandler:(id)a3;
@end

@implementation CDRequesterIncomingCallsSession

- (void)_prepareForActivationWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v3[2](v3, 0);
  }

  else
  {
    v4 = CPSErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Feature flag not enabled.";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:105 userInfo:v5];
    (v3)[2](v3, v6);
  }
}

- (void)_configureRapportClient:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018E30;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterIncomingCallsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019154;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterIncomingCallsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterIncomingCallsSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

- (BOOL)_requireOwnerDevice
{
  v2 = [(CDRequesterSession *)self request];
  v3 = [v2 appleAccountAltDSID];
  v4 = v3 == 0;

  return v4;
}

- (id)_idsMessageRecipientUsernames
{
  v2 = [(CDRequesterSession *)self request];
  v3 = [v2 appleAccountAltDSID];

  if (v3)
  {
    v4 = v3;
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_appleAccountWithAltDSID:v4];

    v7 = [v6 username];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end