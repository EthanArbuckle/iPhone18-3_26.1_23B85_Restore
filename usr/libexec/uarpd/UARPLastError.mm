@interface UARPLastError
- (UARPLastError)initWithLastAction:(unint64_t)a3 lastError:(unint64_t)a4;
@end

@implementation UARPLastError

- (UARPLastError)initWithLastAction:(unint64_t)a3 lastError:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = UARPLastError;
  result = [(UARPLastError *)&v7 init];
  if (result)
  {
    result->_lastAction = a3;
    result->_lastError = a4;
  }

  return result;
}

@end