@interface CLStatusBarIconManagerAdapter
- (void)adaptee;
@end

@implementation CLStatusBarIconManagerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end