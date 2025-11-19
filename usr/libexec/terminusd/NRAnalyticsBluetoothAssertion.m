@interface NRAnalyticsBluetoothAssertion
- (void)submit;
@end

@implementation NRAnalyticsBluetoothAssertion

- (void)submit
{
  if (self)
  {
    v3 = self->_durationInSec * 1000.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [NSNumber numberWithDouble:round(v3) * 0.001];
  if (self)
  {
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"durationInSec"];

    if (!self->_multipleAssertions)
    {
      goto LABEL_7;
    }

    v4 = [NSNumber numberWithBool:1];
    eventDictionary = self->super._eventDictionary;
    v6 = @"multipleAssertions";
  }

  else
  {
    v6 = @"durationInSec";
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v6];

LABEL_7:

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.bluetoothAssertion");
}

@end