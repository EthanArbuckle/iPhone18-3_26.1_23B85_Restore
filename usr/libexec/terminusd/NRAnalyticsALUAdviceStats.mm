@interface NRAnalyticsALUAdviceStats
- (void)submit;
@end

@implementation NRAnalyticsALUAdviceStats

- (void)submit
{
  if (self)
  {
    v3 = self->_timeSinceLastAdvice * 1000.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [NSNumber numberWithDouble:round(v3) * 0.001];
  if (!self)
  {
    v8 = @"timeSinceLastAdvice";
    eventDictionary = 0;
    goto LABEL_8;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"timeSinceLastAdvice"];

  timeSinceLastNonDefaultAdvice = self->_timeSinceLastNonDefaultAdvice;
  if (timeSinceLastNonDefaultAdvice > 0.0)
  {
    v6 = [NSNumber numberWithDouble:round(timeSinceLastNonDefaultAdvice * 1000.0) * 0.001];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v6 forKeyedSubscript:@"timeSinceLastNonDefaultAdvice"];
  }

  if (self->_receivedSameAdvice)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:?];
    eventDictionary = self->super._eventDictionary;
    v8 = @"receivedSameAdvice";
LABEL_8:
    [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v8];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.aluAdviceStats");
}

@end