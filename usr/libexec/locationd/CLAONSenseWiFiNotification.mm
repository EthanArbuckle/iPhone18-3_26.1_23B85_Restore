@interface CLAONSenseWiFiNotification
- (CLAONSenseWiFiNotification)init;
@end

@implementation CLAONSenseWiFiNotification

- (CLAONSenseWiFiNotification)init
{
  v3.receiver = self;
  v3.super_class = CLAONSenseWiFiNotification;
  result = [(CLAONSenseWiFiNotification *)&v3 init];
  result->type = 12;
  result->data = 0;
  return result;
}

@end