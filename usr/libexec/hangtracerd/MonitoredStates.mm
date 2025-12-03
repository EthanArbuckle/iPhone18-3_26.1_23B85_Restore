@interface MonitoredStates
+ (id)sharedInstance;
- (MonitoredStates)initWithCoder:(id)coder;
- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)screen;
@end

@implementation MonitoredStates

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000176A0;
  block[3] = &unk_100055408;
  block[4] = self;
  if (qword_100067A58 != -1)
  {
    dispatch_once(&qword_100067A58, block);
  }

  v2 = qword_100067A50;

  return v2;
}

- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)screen
{
  v5.receiver = self;
  v5.super_class = MonitoredStates;
  result = [(MonitoredStates *)&v5 init];
  if (result)
  {
    result->_isImmersionLevelControllerPresentOnScreen = screen;
  }

  return result;
}

- (MonitoredStates)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"isImmersionLevelControllerPresentOnScreen"];

  return [(MonitoredStates *)self initWithImmersionLevelControllerPresentOnScreen:v4];
}

@end