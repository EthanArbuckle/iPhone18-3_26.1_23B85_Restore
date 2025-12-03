@interface RDDeviceInfo
+ (void)initialize;
@end

@implementation RDDeviceInfo

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071AD0 = os_log_create("com.apple.SensorKit", "RDDeviceInfo");
  }
}

@end