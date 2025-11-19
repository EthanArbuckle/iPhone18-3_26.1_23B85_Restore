@interface CLHarvestAccessoryLocationProviderAdapter
- (CLHarvestAccessoryLocationProviderAdapter)initWithMonitorGpsExternal:(void *)a3;
@end

@implementation CLHarvestAccessoryLocationProviderAdapter

- (CLHarvestAccessoryLocationProviderAdapter)initWithMonitorGpsExternal:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLHarvestAccessoryLocationProviderAdapter;
  result = [(CLHarvestAccessoryLocationProviderAdapter *)&v5 init];
  if (result)
  {
    result->_monitorGpsExternal = a3;
    result->_valid = 1;
  }

  return result;
}

@end