@interface CLMediatorSubmersionClient
- (CLMediatorSubmersionClient)initWithMediator:(void *)a3;
@end

@implementation CLMediatorSubmersionClient

- (CLMediatorSubmersionClient)initWithMediator:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLMediatorSubmersionClient;
  result = [(CLMediatorSubmersionClient *)&v5 init];
  if (result)
  {
    result->_client = a3;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

@end