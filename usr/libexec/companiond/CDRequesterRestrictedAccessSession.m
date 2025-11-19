@interface CDRequesterRestrictedAccessSession
- (BOOL)_requireOwnerDevice;
- (id)_idsMessageRecipientUsernames;
- (void)_configureRapportClient:(id)a3;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)a3;
- (void)_notifyDeviceStartedAuthentication:(id)a3;
@end

@implementation CDRequesterRestrictedAccessSession

- (void)_configureRapportClient:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A3F0;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterRestrictedAccessSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A6F8;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterRestrictedAccessSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_notifyDeviceAcceptedNotification:(id)a3
{
  v3.receiver = self;
  v3.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v3 _notifyDeviceAcceptedNotification:a3];
}

- (void)_notifyDeviceStartedAuthentication:(id)a3
{
  v3.receiver = self;
  v3.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v3 _notifyDeviceStartedAuthentication:a3];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterRestrictedAccessSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

- (BOOL)_requireOwnerDevice
{
  v2 = [(CDRequesterSession *)self request];
  v3 = [v2 approversAppleAccountAltDSIDs];
  v4 = v3 == 0;

  return v4;
}

- (id)_idsMessageRecipientUsernames
{
  v3 = [(CDRequesterSession *)self request];
  v4 = [v3 approversAppleAccountAltDSIDs];

  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(CDRequesterSession *)self request];
    v7 = [v6 approversAppleAccountAltDSIDs];

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = +[ACAccountStore defaultStore];
          v14 = [v13 aa_appleAccountWithAltDSID:v12];

          v15 = [v14 username];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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