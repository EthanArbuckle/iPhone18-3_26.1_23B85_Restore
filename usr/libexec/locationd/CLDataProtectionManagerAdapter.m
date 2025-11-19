@interface CLDataProtectionManagerAdapter
- (void)adaptee;
@end

@implementation CLDataProtectionManagerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end