@interface CLPipelineLocationProviderAdapter
- (void)adaptee;
@end

@implementation CLPipelineLocationProviderAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end