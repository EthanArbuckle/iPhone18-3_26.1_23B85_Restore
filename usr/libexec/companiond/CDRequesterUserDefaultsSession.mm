@interface CDRequesterUserDefaultsSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)a3;
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

- (void)_configureRapportClient:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EE90;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterUserDefaultsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F194;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterUserDefaultsSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
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

- (void)_sessionActivated
{
  if (a1)
  {
    v2 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDRequesterUserDefaultsSession.requestTimeoutTimer"];
    v3 = a1[15];
    a1[15] = v2;

    v4 = a1[15];
    v5 = [a1 dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001F56C;
    v6[3] = &unk_10008A298;
    v6[4] = a1;
    [v4 scheduleWithFireInterval:v5 leewayInterval:v6 queue:3.0 handler:1.0];
  }
}

@end