@interface APMetricEnvironment
- (id)findInternalContentDataById:(id)id;
@end

@implementation APMetricEnvironment

- (id)findInternalContentDataById:(id)id
{
  v3 = [APManagedContentData findById:id];
  if (v3)
  {
    v4 = [[APContentDataInternal alloc] initWithContentDataProvider:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end