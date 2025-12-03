@interface CLPedestrianFenceClientDelegate
- (CLPedestrianFenceClientDelegate)initWithPedestrianFenceClient:(void *)client;
@end

@implementation CLPedestrianFenceClientDelegate

- (CLPedestrianFenceClientDelegate)initWithPedestrianFenceClient:(void *)client
{
  v5.receiver = self;
  v5.super_class = CLPedestrianFenceClientDelegate;
  result = [(CLPedestrianFenceClientDelegate *)&v5 init];
  if (result)
  {
    result->_client = client;
  }

  return result;
}

@end