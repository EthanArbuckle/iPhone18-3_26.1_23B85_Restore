@interface CDRequesterSharingSession
- (void)_configureRapportClient:(id)a3;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)a3;
- (void)_notifyDeviceStartedAuthentication:(id)a3;
@end

@implementation CDRequesterSharingSession

- (void)_configureRapportClient:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C244;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 requireOwnerDevice:-[CDRequesterSharingSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v6}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C478;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [v4 cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterSharingSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_notifyDeviceAcceptedNotification:(id)a3
{
  v3.receiver = self;
  v3.super_class = CDRequesterSharingSession;
  [(CDRequesterSession *)&v3 _notifyDeviceAcceptedNotification:a3];
}

- (void)_notifyDeviceStartedAuthentication:(id)a3
{
  v3.receiver = self;
  v3.super_class = CDRequesterSharingSession;
  [(CDRequesterSession *)&v3 _notifyDeviceStartedAuthentication:a3];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterSharingSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

@end