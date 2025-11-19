@interface CLBluetoothServiceAdapter
- (void)adaptee;
@end

@implementation CLBluetoothServiceAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end