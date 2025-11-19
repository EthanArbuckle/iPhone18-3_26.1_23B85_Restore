@interface CLTilesManagerAdapter
- (void)adaptee;
@end

@implementation CLTilesManagerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end