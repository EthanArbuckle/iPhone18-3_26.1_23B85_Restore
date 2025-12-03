@interface CDRequesterSystemAuthenticationSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (unint64_t)_authFlags;
- (void)_configureRapportClient:(id)client;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)notification;
- (void)_notifyDeviceStartedAuthentication:(id)authentication;
@end

@implementation CDRequesterSystemAuthenticationSession

- (void)_configureRapportClient:(id)client
{
  clientCopy = client;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001E098;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterSystemAuthenticationSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E374;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterSystemAuthenticationSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_notifyDeviceAcceptedNotification:(id)notification
{
  v3.receiver = self;
  v3.super_class = CDRequesterSystemAuthenticationSession;
  [(CDRequesterSession *)&v3 _notifyDeviceAcceptedNotification:notification];
}

- (void)_notifyDeviceStartedAuthentication:(id)authentication
{
  v3.receiver = self;
  v3.super_class = CDRequesterSystemAuthenticationSession;
  [(CDRequesterSession *)&v3 _notifyDeviceStartedAuthentication:authentication];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterSystemAuthenticationSession;
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

- (unint64_t)_authFlags
{
  request = [(CDRequesterSession *)self request];
  options = [request options];

  return options;
}

@end