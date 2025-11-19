@interface CLDeviceImpactClientAdapter
- (CLDeviceImpactClientAdapter)initWithClient:(CLDeviceImpactClient *)a3;
@end

@implementation CLDeviceImpactClientAdapter

- (CLDeviceImpactClientAdapter)initWithClient:(CLDeviceImpactClient *)a3
{
  v5.receiver = self;
  v5.super_class = CLDeviceImpactClientAdapter;
  result = [(CLDeviceImpactClientAdapter *)&v5 init];
  if (result)
  {
    result->_client = a3;
  }

  return result;
}

@end