@interface CLStreamingAwareLocationProviderAdapter
- (void)adaptee;
@end

@implementation CLStreamingAwareLocationProviderAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end