@interface CLPVehicleType
- (id)initWithCLMotionActivity:(CLMotionActivity *)activity;
@end

@implementation CLPVehicleType

- (id)initWithCLMotionActivity:(CLMotionActivity *)activity
{
  v16.receiver = self;
  v16.super_class = CLPVehicleType;
  v13 = [(CLPVehicleType *)&v16 init:activity];
  if (v13)
  {
    v14 = +[CLPMeta isInIndia]&& CLMotionActivity::isInVehicle(activity) && activity->vehicleType == 3;
    [(CLPVehicleType *)v13 setIsMotorcycle:v14];
  }

  return v13;
}

@end