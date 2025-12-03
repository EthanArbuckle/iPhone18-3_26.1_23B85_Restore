@interface CDRequesterUserDefaultsSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)client;
- (void)_invalidated;
- (void)_sessionActivated;
@end

@implementation CDRequesterUserDefaultsSession

- (void)_invalidated
{
  [(BSContinuousMachTimer *)self->_requestTimeoutTimer invalidate];
  requestTimeoutTimer = self->_requestTimeoutTimer;
  self->_requestTimeoutTimer = 0;

  v4.receiver = self;
  v4.super_class = CDRequesterUserDefaultsSession;
  [(CDRequesterSession *)&v4 _invalidated];
}

- (void)_configureRapportClient:(id)client
{
  clientCopy = client;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EE90;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterUserDefaultsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F194;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterUserDefaultsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
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

- (void)_sessionActivated
{
  if (self)
  {
    v2 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDRequesterUserDefaultsSession.requestTimeoutTimer"];
    v3 = self[15];
    self[15] = v2;

    v4 = self[15];
    dispatchQueue = [self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001F56C;
    v6[3] = &unk_10008A298;
    v6[4] = self;
    [v4 scheduleWithFireInterval:dispatchQueue leewayInterval:v6 queue:3.0 handler:1.0];
  }
}

@end