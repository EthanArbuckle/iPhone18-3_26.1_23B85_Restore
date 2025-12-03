@interface CRVehicleEnhancedIntegrationAlert
- (id)alertTitle;
- (id)lockscreenMessage;
@end

@implementation CRVehicleEnhancedIntegrationAlert

- (id)lockscreenMessage
{
  v3 = CRLocalizedStringForKey();
  messagingVehicle = [(CRMessagingVehicleAlert *)self messagingVehicle];
  vehicleName = [messagingVehicle vehicleName];
  v6 = [NSString stringWithFormat:v3, vehicleName];

  return v6;
}

- (id)alertTitle
{
  v3 = CRLocalizedStringForKey();
  messagingVehicle = [(CRMessagingVehicleAlert *)self messagingVehicle];
  vehicleName = [messagingVehicle vehicleName];
  v6 = [NSString stringWithFormat:v3, vehicleName];

  return v6;
}

@end