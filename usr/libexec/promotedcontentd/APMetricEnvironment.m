@interface APMetricEnvironment
- (id)findInternalContentDataById:(id)a3;
@end

@implementation APMetricEnvironment

- (id)findInternalContentDataById:(id)a3
{
  v3 = [APManagedContentData findById:a3];
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