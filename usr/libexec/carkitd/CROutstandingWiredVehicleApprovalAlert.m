@interface CROutstandingWiredVehicleApprovalAlert
- (id)alertTitle;
@end

@implementation CROutstandingWiredVehicleApprovalAlert

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

@end