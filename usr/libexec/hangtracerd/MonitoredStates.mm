@interface MonitoredStates
+ (id)sharedInstance;
- (MonitoredStates)initWithCoder:(id)a3;
- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)a3;
@end

@implementation MonitoredStates

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000176A0;
  block[3] = &unk_100055408;
  block[4] = a1;
  if (qword_100067A58 != -1)
  {
    dispatch_once(&qword_100067A58, block);
  }

  v2 = qword_100067A50;

  return v2;
}

- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MonitoredStates;
  result = [(MonitoredStates *)&v5 init];
  if (result)
  {
    result->_isImmersionLevelControllerPresentOnScreen = a3;
  }

  return result;
}

- (MonitoredStates)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"isImmersionLevelControllerPresentOnScreen"];

  return [(MonitoredStates *)self initWithImmersionLevelControllerPresentOnScreen:v4];
}

@end