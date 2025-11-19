@interface CLLocationSubscriptionAdapter
- (CLLocationSubscriptionAdapter)init;
- (void)dealloc;
@end

@implementation CLLocationSubscriptionAdapter

- (CLLocationSubscriptionAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLLocationSubscriptionAdapter;
  result = [(CLLocationSubscriptionAdapter *)&v3 init];
  if (result)
  {
    result->_valid = 1;
  }

  return result;
}

- (void)dealloc
{
  self->_valid = 0;
  v2.receiver = self;
  v2.super_class = CLLocationSubscriptionAdapter;
  [(CLLocationSubscriptionAdapter *)&v2 dealloc];
}

@end