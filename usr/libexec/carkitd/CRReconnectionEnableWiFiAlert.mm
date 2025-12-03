@interface CRReconnectionEnableWiFiAlert
- (BOOL)presentAlertWithCompletion:(id)completion;
- (CRReconnectionEnableWiFiAlert)initWithVehicle:(id)vehicle;
- (id)alertAcceptButtonTitle;
- (id)alertTitle;
- (id)lockscreenMessage;
@end

@implementation CRReconnectionEnableWiFiAlert

- (CRReconnectionEnableWiFiAlert)initWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v8.receiver = self;
  v8.super_class = CRReconnectionEnableWiFiAlert;
  v5 = [(CRReconnectionEnableWiFiAlert *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CRReconnectionEnableWiFiAlert *)v5 setVehicle:vehicleCopy];
  }

  return v6;
}

- (id)lockscreenMessage
{
  v2 = CRLocalizedWiFiVariantKeyForKey();
  v3 = CRLocalizedStringForKey();

  return v3;
}

- (id)alertTitle
{
  v2 = CRLocalizedWiFiVariantKeyForKey();
  v3 = CRLocalizedStringForKey();

  return v3;
}

- (id)alertAcceptButtonTitle
{
  v2 = CRLocalizedWiFiVariantKeyForKey();
  v3 = CRLocalizedStringForKey();

  return v3;
}

- (BOOL)presentAlertWithCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E808;
  v7[3] = &unk_1000DE970;
  completionCopy = completion;
  v6.receiver = self;
  v6.super_class = CRReconnectionEnableWiFiAlert;
  v4 = completionCopy;
  LOBYTE(self) = [(CRAlert *)&v6 presentAlertWithCompletion:v7];

  return self;
}

@end