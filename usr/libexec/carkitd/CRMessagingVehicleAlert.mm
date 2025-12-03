@interface CRMessagingVehicleAlert
- (BOOL)presentAlertWithCompletion:(id)completion;
- (CRMessagingVehicleAlert)initWithMessagingVehicle:(id)vehicle;
@end

@implementation CRMessagingVehicleAlert

- (CRMessagingVehicleAlert)initWithMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v9.receiver = self;
  v9.super_class = CRMessagingVehicleAlert;
  v6 = [(CRMessagingVehicleAlert *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messagingVehicle, vehicle);
  }

  return v7;
}

- (BOOL)presentAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  messagingVehicle = [(CRMessagingVehicleAlert *)self messagingVehicle];

  if (messagingVehicle)
  {
    v8.receiver = self;
    v8.super_class = CRMessagingVehicleAlert;
    v6 = [(CRAlert *)&v8 presentAlertWithCompletion:completionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end