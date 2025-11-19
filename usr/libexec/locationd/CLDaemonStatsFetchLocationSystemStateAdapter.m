@interface CLDaemonStatsFetchLocationSystemStateAdapter
- (CLDaemonStatsFetchLocationSystemStateAdapter)init;
@end

@implementation CLDaemonStatsFetchLocationSystemStateAdapter

- (CLDaemonStatsFetchLocationSystemStateAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLDaemonStatsFetchLocationSystemStateAdapter;
  result = [(CLDaemonStatsFetchLocationSystemStateAdapter *)&v3 init];
  if (result)
  {
    result->_valid = 1;
  }

  return result;
}

@end