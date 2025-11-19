@interface NEWiFiManager
- (NEWiFiManager)init;
@end

@implementation NEWiFiManager

- (NEWiFiManager)init
{
  v3.receiver = self;
  v3.super_class = NEWiFiManager;
  result = [(NEWiFiManager *)&v3 init];
  if (result)
  {
    result->_wowRefCount = 0;
    result->_wifiManagerClient = 0;
  }

  return result;
}

@end