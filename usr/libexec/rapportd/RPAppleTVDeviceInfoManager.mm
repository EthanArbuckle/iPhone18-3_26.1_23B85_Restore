@interface RPAppleTVDeviceInfoManager
- (RPAppleTVDeviceInfoManager)initWithQueue:(id)queue;
@end

@implementation RPAppleTVDeviceInfoManager

- (RPAppleTVDeviceInfoManager)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = RPAppleTVDeviceInfoManager;
  return [(RPAppleTVDeviceInfoManager *)&v4 init];
}

@end