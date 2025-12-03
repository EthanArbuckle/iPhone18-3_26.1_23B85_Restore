@interface CLBackgroundInertialOdometryClientDelegate
- (CLBackgroundInertialOdometryClientDelegate)initWithPedestrianFenceClient:(void *)client;
@end

@implementation CLBackgroundInertialOdometryClientDelegate

- (CLBackgroundInertialOdometryClientDelegate)initWithPedestrianFenceClient:(void *)client
{
  v5.receiver = self;
  v5.super_class = CLBackgroundInertialOdometryClientDelegate;
  result = [(CLBackgroundInertialOdometryClientDelegate *)&v5 init];
  if (result)
  {
    result->_client = client;
  }

  return result;
}

@end