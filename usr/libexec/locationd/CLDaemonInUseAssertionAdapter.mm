@interface CLDaemonInUseAssertionAdapter
- (CLDaemonInUseAssertionAdapter)init;
- (void)dealloc;
@end

@implementation CLDaemonInUseAssertionAdapter

- (CLDaemonInUseAssertionAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLDaemonInUseAssertionAdapter;
  result = [(CLDaemonInUseAssertionAdapter *)&v3 init];
  if (result)
  {
    result->_valid = 1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_valid)
  {
    sub_101A82630();
  }

  v2.receiver = self;
  v2.super_class = CLDaemonInUseAssertionAdapter;
  [(CLDaemonInUseAssertionAdapter *)&v2 dealloc];
}

@end