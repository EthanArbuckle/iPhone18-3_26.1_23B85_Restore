@interface NRAnalyticsSHOESProxy
- (void)submit;
@end

@implementation NRAnalyticsSHOESProxy

- (void)submit
{
  if (self)
  {
    v3 = [NSNumber numberWithUnsignedLongLong:self->_totalConnectionCounter];
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedLongLong:0];
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v3 forKeyedSubscript:@"shoesProxyTotalConnections"];

  if (self)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_maxSimultanousConnectionCounter];
    v6 = self->super._eventDictionary;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedLongLong:0];
    v6 = 0;
  }

  [(NSMutableDictionary *)v6 setObject:v5 forKeyedSubscript:@"socksProxyMaxSimutaneousConnections"];

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.shoesProxy");
}

@end