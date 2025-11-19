@interface NRAnalyticsLocalDevice
- (void)submit;
@end

@implementation NRAnalyticsLocalDevice

- (void)submit
{
  if (self)
  {
    deviceRegistrationStart = self->_deviceRegistrationStart;
    deviceRegistrationEnd = self->_deviceRegistrationEnd;
  }

  NRDiffMachTimeInSeconds();
  v6 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
  if (!self)
  {
    v9 = @"deviceRegistrationTimeInSec";
    eventDictionary = 0;
    goto LABEL_8;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v6 forKeyedSubscript:@"deviceRegistrationTimeInSec"];

  if (self->_deviceRegistrationSuccess)
  {
    v7 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v7 forKeyedSubscript:@"deviceRegistrationSuccess"];
  }

  if (self->_devicePairedWithOOBKey)
  {
    v6 = [NSNumber numberWithBool:1];
    eventDictionary = self->super._eventDictionary;
    v9 = @"devicePairedWithOOBKey";
LABEL_8:
    [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:v9];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.localDevice");
}

@end