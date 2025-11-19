@interface CLBackgroundInertialOdometryClientDelegate
- (CLBackgroundInertialOdometryClientDelegate)initWithPedestrianFenceClient:(void *)a3;
@end

@implementation CLBackgroundInertialOdometryClientDelegate

- (CLBackgroundInertialOdometryClientDelegate)initWithPedestrianFenceClient:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLBackgroundInertialOdometryClientDelegate;
  result = [(CLBackgroundInertialOdometryClientDelegate *)&v5 init];
  if (result)
  {
    result->_client = a3;
  }

  return result;
}

@end