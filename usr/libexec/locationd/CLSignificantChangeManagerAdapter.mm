@interface CLSignificantChangeManagerAdapter
- (void)adaptee;
@end

@implementation CLSignificantChangeManagerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end