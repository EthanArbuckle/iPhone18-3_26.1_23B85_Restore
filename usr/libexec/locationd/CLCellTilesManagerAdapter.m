@interface CLCellTilesManagerAdapter
- (void)adaptee;
@end

@implementation CLCellTilesManagerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

@end