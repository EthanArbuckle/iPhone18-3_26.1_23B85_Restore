@interface CLAppMonitorAdapter
- (void)adaptee;
@end

@implementation CLAppMonitorAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end