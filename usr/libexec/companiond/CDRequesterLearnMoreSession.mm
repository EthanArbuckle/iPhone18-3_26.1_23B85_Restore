@interface CDRequesterLearnMoreSession
- (void)_configureRapportClient:(id)client;
- (void)_invalidated;
- (void)_notifyDeviceAcceptedNotification:(id)notification;
- (void)_notifyDeviceStartedAuthentication:(id)authentication;
- (void)_prepareForActivationWithCompletionHandler:(id)handler;
@end

@implementation CDRequesterLearnMoreSession

- (void)_prepareForActivationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(CDRequesterSession *)self request];
  v5 = [request URL];

  if (v5)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v6 = CPSErrorMake();
    (handlerCopy)[2](handlerCopy, v6);
  }
}

- (void)_configureRapportClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000196F4;
  v6[3] = &unk_10008A780;
  v6[4] = self;
  clientCopy = client;
  [clientCopy registerRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" options:0 handler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019928;
  v5[3] = &unk_10008A780;
  v5[4] = self;
  [clientCopy cad_registerRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" options:0 requireOwnerDevice:-[CDRequesterLearnMoreSession _requireOwnerDevice](self handler:{"_requireOwnerDevice"), v5}];
}

- (void)_notifyDeviceAcceptedNotification:(id)notification
{
  v3.receiver = self;
  v3.super_class = CDRequesterLearnMoreSession;
  [(CDRequesterSession *)&v3 _notifyDeviceAcceptedNotification:notification];
}

- (void)_notifyDeviceStartedAuthentication:(id)authentication
{
  v3.receiver = self;
  v3.super_class = CDRequesterLearnMoreSession;
  [(CDRequesterSession *)&v3 _notifyDeviceStartedAuthentication:authentication];
}

- (void)_invalidated
{
  v2.receiver = self;
  v2.super_class = CDRequesterLearnMoreSession;
  [(CDRequesterSession *)&v2 _invalidated];
}

@end