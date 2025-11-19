@interface NRAnalyticsALUAdviceAggregateStats
- (void)submit;
@end

@implementation NRAnalyticsALUAdviceAggregateStats

- (void)submit
{
  if (self)
  {
    avgIntervalForNonDefaultAdvice = self->_avgIntervalForNonDefaultAdvice;
    if (avgIntervalForNonDefaultAdvice > 0.0)
    {
      v4 = [NSNumber numberWithDouble:round(avgIntervalForNonDefaultAdvice * 1000.0) * 0.001];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"avgIntervalForNonDefaultAdvice"];
    }

    v5 = self->_avgDurationForWiFiAdvice * 1000.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [NSNumber numberWithDouble:round(v5) * 0.001];
  if (self)
  {
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:@"avgDurationForWiFiAdvice"];

  if (self)
  {
    v8 = self->_avgDurationForBTClassicAdvice * 1000.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [NSNumber numberWithDouble:round(v8) * 0.001];
  if (!self)
  {
    v13 = @"avgDurationForBTClassicAdvice";
    v12 = 0;
    goto LABEL_16;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v9 forKeyedSubscript:@"avgDurationForBTClassicAdvice"];

  if (self->_totalAdviceCount)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v10 forKeyedSubscript:@"totalAdviceCount"];
  }

  if (self->_totalAdviceCountForWiFi)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v11 forKeyedSubscript:@"totalAdviceCountForWiFi"];
  }

  if (self->_totalAdviceCountForBTClassic)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:?];
    v12 = self->super._eventDictionary;
    v13 = @"totalAdviceCountForBTClassic";
LABEL_16:
    [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:v13];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.aluAdviceAggregateStats");
}

@end