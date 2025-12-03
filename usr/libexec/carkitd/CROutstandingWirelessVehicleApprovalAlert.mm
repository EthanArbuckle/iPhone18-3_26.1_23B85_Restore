@interface CROutstandingWirelessVehicleApprovalAlert
- (BOOL)presentAlertWithCompletion:(id)completion;
- (id)alertAcceptButtonTitle;
- (id)alertTitle;
@end

@implementation CROutstandingWirelessVehicleApprovalAlert

- (id)alertTitle
{
  messagingVehicle = [(CRMessagingVehicleAlert *)self messagingVehicle];
  vehicleName = [messagingVehicle vehicleName];

  CRLocalizedStringForKey();
  if (vehicleName)
    v4 = {;
    v5 = [NSString stringWithFormat:v4, vehicleName];
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

- (BOOL)presentAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CRWiFiCarManager);
  v6 = [(CRWiFiCarManager *)v5 isPowered]^ 1;
  [(CROutstandingWirelessVehicleApprovalAlert *)self setShouldEnableWiFi:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E3C0;
  v11[3] = &unk_1000DE948;
  v14 = v6;
  v12 = v5;
  v13 = completionCopy;
  v10.receiver = self;
  v10.super_class = CROutstandingWirelessVehicleApprovalAlert;
  v7 = completionCopy;
  v8 = v5;
  LOBYTE(self) = [(CRMessagingVehicleAlert *)&v10 presentAlertWithCompletion:v11];

  return self;
}

@end