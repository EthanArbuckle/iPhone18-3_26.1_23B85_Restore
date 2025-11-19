@interface NESMAlwaysOnSessionRetryCounter
- (NESMAlwaysOnSessionRetryCounter)init;
@end

@implementation NESMAlwaysOnSessionRetryCounter

- (NESMAlwaysOnSessionRetryCounter)init
{
  v3.receiver = self;
  v3.super_class = NESMAlwaysOnSessionRetryCounter;
  result = [(NESMAlwaysOnSessionRetryCounter *)&v3 init];
  if (result)
  {
    result->_interval = 0;
    result->_retryCount = 0;
  }

  return result;
}

@end