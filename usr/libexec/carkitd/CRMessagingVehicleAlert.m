@interface CRMessagingVehicleAlert
- (BOOL)presentAlertWithCompletion:(id)a3;
- (CRMessagingVehicleAlert)initWithMessagingVehicle:(id)a3;
@end

@implementation CRMessagingVehicleAlert

- (CRMessagingVehicleAlert)initWithMessagingVehicle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRMessagingVehicleAlert;
  v6 = [(CRMessagingVehicleAlert *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messagingVehicle, a3);
  }

  return v7;
}

- (BOOL)presentAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRMessagingVehicleAlert *)self messagingVehicle];

  if (v5)
  {
    v8.receiver = self;
    v8.super_class = CRMessagingVehicleAlert;
    v6 = [(CRAlert *)&v8 presentAlertWithCompletion:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end