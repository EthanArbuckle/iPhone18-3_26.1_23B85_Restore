@interface UARPLastError
- (UARPLastError)initWithLastAction:(unint64_t)action lastError:(unint64_t)error;
@end

@implementation UARPLastError

- (UARPLastError)initWithLastAction:(unint64_t)action lastError:(unint64_t)error
{
  v7.receiver = self;
  v7.super_class = UARPLastError;
  result = [(UARPLastError *)&v7 init];
  if (result)
  {
    result->_lastAction = action;
    result->_lastError = error;
  }

  return result;
}

@end