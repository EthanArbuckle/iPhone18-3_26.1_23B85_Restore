@interface CROutstandingWirelessVehicleApprovalAlert
- (BOOL)presentAlertWithCompletion:(id)a3;
- (id)alertAcceptButtonTitle;
- (id)alertTitle;
@end

@implementation CROutstandingWirelessVehicleApprovalAlert

- (id)alertTitle
{
  v2 = [(CRMessagingVehicleAlert *)self messagingVehicle];
  v3 = [v2 vehicleName];

  CRLocalizedStringForKey();
  if (v3)
    v4 = {;
    v5 = [NSString stringWithFormat:v4, v3];
  }

  else
    v5 = {;
  }

  return v5;
}

- (id)alertAcceptButtonTitle
{
  if ([(CROutstandingWirelessVehicleApprovalAlert *)self shouldEnableWiFi])
  {
    v2 = CRLocalizedWiFiVariantKeyForKey();
    v3 = CRLocalizedStringForKey();
  }

  else
  {
    v3 = CRLocalizedStringForKey();
  }

  return v3;
}

- (BOOL)presentAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CRWiFiCarManager);
  v6 = [(CRWiFiCarManager *)v5 isPowered]^ 1;
  [(CROutstandingWirelessVehicleApprovalAlert *)self setShouldEnableWiFi:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E3C0;
  v11[3] = &unk_1000DE948;
  v14 = v6;
  v12 = v5;
  v13 = v4;
  v10.receiver = self;
  v10.super_class = CROutstandingWirelessVehicleApprovalAlert;
  v7 = v4;
  v8 = v5;
  LOBYTE(self) = [(CRMessagingVehicleAlert *)&v10 presentAlertWithCompletion:v11];

  return self;
}

@end