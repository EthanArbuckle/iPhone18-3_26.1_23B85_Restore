@interface CLDeviceImpactClientAdapter
- (CLDeviceImpactClientAdapter)initWithClient:(CLDeviceImpactClient *)client;
@end

@implementation CLDeviceImpactClientAdapter

- (CLDeviceImpactClientAdapter)initWithClient:(CLDeviceImpactClient *)client
{
  v5.receiver = self;
  v5.super_class = CLDeviceImpactClientAdapter;
  result = [(CLDeviceImpactClientAdapter *)&v5 init];
  if (result)
  {
    result->_client = client;
  }

  return result;
}

@end