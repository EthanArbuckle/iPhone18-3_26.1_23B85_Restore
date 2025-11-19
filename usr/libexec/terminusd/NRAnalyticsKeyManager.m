@interface NRAnalyticsKeyManager
- (void)submit;
@end

@implementation NRAnalyticsKeyManager

- (void)submit
{
  if (self)
  {
    queryKeysStart = self->_queryKeysStart;
    queryKeysEnd = self->_queryKeysEnd;
  }

  NRDiffMachTimeInSeconds();
  v6 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
  if (self)
  {
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v6 forKeyedSubscript:@"queryKeysDurationInSec"];

    if (!self->_queryKeysSuccess)
    {
      goto LABEL_7;
    }

    v6 = [NSNumber numberWithBool:1];
    eventDictionary = self->super._eventDictionary;
    v8 = @"queryKeysSuccess";
  }

  else
  {
    v8 = @"queryKeysDurationInSec";
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:v8];

LABEL_7:

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.keyManager");
}

@end