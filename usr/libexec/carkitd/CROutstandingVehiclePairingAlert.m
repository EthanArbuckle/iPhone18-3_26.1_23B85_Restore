@interface CROutstandingVehiclePairingAlert
- (id)alertDeclineButtonTitle;
- (id)alertMessage;
- (id)alertTitle;
@end

@implementation CROutstandingVehiclePairingAlert

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

- (id)alertMessage
{
  [(CROutstandingVehiclePairingAlert *)self shouldEnableBluetooth];

  return CRLocalizedStringForKey();
}

- (id)alertDeclineButtonTitle
{
  v2 = [(CROutstandingVehiclePairingAlert *)self declineType];
  if (v2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = off_1000DE990[v2];
    v4 = CRLocalizedStringForKey();
  }

  return v4;
}

@end