@interface _DASBatteryTemperatureReader
+ (id)batteryProperties;
- (id)currentValue;
@end

@implementation _DASBatteryTemperatureReader

+ (id)batteryProperties
{
  v2 = IOServiceMatching([@"IOPMPowerSource" UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    properties = 0;
    if (IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = properties;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentValue
{
  v2 = +[_DASBatteryTemperatureReader batteryProperties];
  v3 = os_log_create("com.apple.clas", "signals");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3A4(v2, v3);
  }

  v4 = [v2 objectForKeyedSubscript:@"Temperature"];

  return v4;
}

@end