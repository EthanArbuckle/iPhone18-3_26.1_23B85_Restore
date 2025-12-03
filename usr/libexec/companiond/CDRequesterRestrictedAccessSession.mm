@interface CDRequesterRestrictedAccessSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)client;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)notification;
- (void)_notifyDeviceStartedAuthentication:(id)authentication;
@end

@implementation CDRequesterRestrictedAccessSession

- (void)_configureRapportClient:(id)client
{
  clientCopy = client;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A3F0;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterRestrictedAccessSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A6F8;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterRestrictedAccessSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_notifyDeviceAcceptedNotification:(id)notification
{
  v3.receiver = self;
  v3.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v3 _notifyDeviceAcceptedNotification:notification];
}

- (void)_notifyDeviceStartedAuthentication:(id)authentication
{
  v3.receiver = self;
  v3.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v3 _notifyDeviceStartedAuthentication:authentication];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

- (BOOL)_requireOwnerDevice
{
  request = [(CDRequesterSession *)self request];
  approversAppleAccountAltDSIDs = [request approversAppleAccountAltDSIDs];
  v4 = approversAppleAccountAltDSIDs == 0;

  return v4;
}

- (id)_idsMessageRecipientUsernames
{
  request = [(CDRequesterSession *)self request];
  approversAppleAccountAltDSIDs = [request approversAppleAccountAltDSIDs];

  if (approversAppleAccountAltDSIDs)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    request2 = [(CDRequesterSession *)self request];
    approversAppleAccountAltDSIDs2 = [request2 approversAppleAccountAltDSIDs];

    v8 = [approversAppleAccountAltDSIDs2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(approversAppleAccountAltDSIDs2);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = +[ACAccountStore defaultStore];
          v14 = [v13 aa_appleAccountWithAltDSID:v12];

          username = [v14 username];

          if (username)
          {
            [v5 addObject:username];
          }
        }

        v9 = [approversAppleAccountAltDSIDs2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end