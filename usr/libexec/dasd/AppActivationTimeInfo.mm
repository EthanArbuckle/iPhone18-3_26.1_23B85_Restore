@interface AppActivationTimeInfo
- (AppActivationTimeInfo)init;
@end

@implementation AppActivationTimeInfo

- (AppActivationTimeInfo)init
{
  v3.receiver = self;
  v3.super_class = AppActivationTimeInfo;
  result = [(AppActivationTimeInfo *)&v3 init];
  if (result)
  {
    *&result->_launchCount = 0;
    result->_totalLaunchActivationTime = 0.0;
    result->_totalResumeActivationTime = 0.0;
  }

  return result;
}

@end