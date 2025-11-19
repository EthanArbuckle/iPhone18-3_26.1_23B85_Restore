@interface NRAnalyticsCmpnLinkWiFi
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkWiFi

- (void)submit
{
  sub_1001554F0(self);
  if (self)
  {
    symptomsNOIRegistrationStart = self->_symptomsNOIRegistrationStart;
    symptomsNOIRegistrationEnd = self->_symptomsNOIRegistrationEnd;
  }

  NRDiffMachTimeInSeconds();
  v6 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
  if (!self)
  {
    v10 = @"symptomsNOIRegistrationTimeInSec";
    eventDictionary = 0;
    goto LABEL_10;
  }

  [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v6 forKeyedSubscript:@"symptomsNOIRegistrationTimeInSec"];

  if (self->_symptomsAdvisoryFalsePositivesCounter)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v7 forKeyedSubscript:@"symptomsAdvisoryFalsePositivesCounter"];
  }

  if (self->_virtualInterfaceRetryCounter)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v8 forKeyedSubscript:@"virtualInterfaceRetryCounter"];
  }

  if (self->_symptomsNOIRegistrationCounter)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    eventDictionary = self->super.super._eventDictionary;
    v10 = @"symptomsNOIRegistrationCounter";
LABEL_10:
    [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:v10];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkWiFi");
}

@end