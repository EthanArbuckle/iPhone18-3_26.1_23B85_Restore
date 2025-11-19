@interface CRVehicleEnhancedIntegrationAlert
- (id)alertTitle;
- (id)lockscreenMessage;
@end

@implementation CRVehicleEnhancedIntegrationAlert

- (id)lockscreenMessage
{
  v3 = CRLocalizedStringForKey();
  v4 = [(CRMessagingVehicleAlert *)self messagingVehicle];
  v5 = [v4 vehicleName];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

- (id)alertTitle
{
  v3 = CRLocalizedStringForKey();
  v4 = [(CRMessagingVehicleAlert *)self messagingVehicle];
  v5 = [v4 vehicleName];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

@end