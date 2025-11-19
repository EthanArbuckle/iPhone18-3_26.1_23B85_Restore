@interface NRAnalyticsDirectToCloud
- (void)submit;
@end

@implementation NRAnalyticsDirectToCloud

- (void)submit
{
  if (self)
  {
    directToCloudRequestStart = self->_directToCloudRequestStart;
    directToCloudRequestEnd = self->_directToCloudRequestEnd;
    NRDiffMachTimeInSeconds();
    v6 = v5;
    iRATManagerQueryStart = self->_iRATManagerQueryStart;
    iRATManagerQueryEnd = self->_iRATManagerQueryEnd;
  }

  else
  {
    NRDiffMachTimeInSeconds();
    v6 = v20;
  }

  NRDiffMachTimeInSeconds();
  v10 = v9;
  v11 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
  if (self)
  {
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v11 forKeyedSubscript:@"requestDurationInSec"];

  v13 = [NSNumber numberWithDouble:round(v10 * 1000.0) * 0.001];
  if (self)
  {
    v14 = self->super._eventDictionary;
  }

  else
  {
    v14 = 0;
  }

  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:@"iRATQueryDurationInSec"];

  if (self)
  {
    v15 = self->_timeSinceLastDirectToCloudRequest * 1000.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [NSNumber numberWithDouble:round(v15) * 0.001];
  if (!self)
  {
    v19 = @"timeSinceLastRequestInSec";
    v18 = 0;
    goto LABEL_14;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v16 forKeyedSubscript:@"timeSinceLastRequestInSec"];

  if (self->_iRATManagerQueryIncomplete)
  {
    v17 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v17 forKeyedSubscript:@"iRATManagerQueryIncomplete"];
  }

  if (self->_fallbackAdvisoryIssued)
  {
    v16 = [NSNumber numberWithBool:1];
    v18 = self->super._eventDictionary;
    v19 = @"fallbackAdvisoryIssued";
LABEL_14:
    [(NSMutableDictionary *)v18 setObject:v16 forKeyedSubscript:v19];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.directToCloud");
}

@end