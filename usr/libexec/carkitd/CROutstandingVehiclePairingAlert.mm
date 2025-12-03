@interface CROutstandingVehiclePairingAlert
- (id)alertDeclineButtonTitle;
- (id)alertMessage;
- (id)alertTitle;
@end

@implementation CROutstandingVehiclePairingAlert

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

- (id)alertMessage
{
  [(CROutstandingVehiclePairingAlert *)self shouldEnableBluetooth];

  return CRLocalizedStringForKey();
}

- (id)alertDeclineButtonTitle
{
  declineType = [(CROutstandingVehiclePairingAlert *)self declineType];
  if (declineType > 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = off_1000DE990[declineType];
    v4 = CRLocalizedStringForKey();
  }

  return v4;
}

@end