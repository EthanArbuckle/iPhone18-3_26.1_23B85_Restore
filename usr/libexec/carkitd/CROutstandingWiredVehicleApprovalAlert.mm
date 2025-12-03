@interface CROutstandingWiredVehicleApprovalAlert
- (id)alertTitle;
@end

@implementation CROutstandingWiredVehicleApprovalAlert

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

@end