@interface CLPedestrianFenceClientDelegate
- (CLPedestrianFenceClientDelegate)initWithPedestrianFenceClient:(void *)a3;
@end

@implementation CLPedestrianFenceClientDelegate

- (CLPedestrianFenceClientDelegate)initWithPedestrianFenceClient:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLPedestrianFenceClientDelegate;
  result = [(CLPedestrianFenceClientDelegate *)&v5 init];
  if (result)
  {
    result->_client = a3;
  }

  return result;
}

@end