@interface NESMVPNSessionRetryCounter
- (NESMVPNSessionRetryCounter)init;
@end

@implementation NESMVPNSessionRetryCounter

- (NESMVPNSessionRetryCounter)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionRetryCounter;
  result = [(NESMVPNSessionRetryCounter *)&v3 init];
  if (result)
  {
    result->_interval = 0;
    result->_retryCount = 0;
  }

  return result;
}

@end