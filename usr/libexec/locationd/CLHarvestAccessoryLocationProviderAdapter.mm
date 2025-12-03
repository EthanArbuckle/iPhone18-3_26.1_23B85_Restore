@interface CLHarvestAccessoryLocationProviderAdapter
- (CLHarvestAccessoryLocationProviderAdapter)initWithMonitorGpsExternal:(void *)external;
@end

@implementation CLHarvestAccessoryLocationProviderAdapter

- (CLHarvestAccessoryLocationProviderAdapter)initWithMonitorGpsExternal:(void *)external
{
  v5.receiver = self;
  v5.super_class = CLHarvestAccessoryLocationProviderAdapter;
  result = [(CLHarvestAccessoryLocationProviderAdapter *)&v5 init];
  if (result)
  {
    result->_monitorGpsExternal = external;
    result->_valid = 1;
  }

  return result;
}

@end