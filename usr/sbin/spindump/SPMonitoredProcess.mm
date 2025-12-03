@interface SPMonitoredProcess
- (SPMonitoredProcess)initWithPid:(int)pid;
@end

@implementation SPMonitoredProcess

- (SPMonitoredProcess)initWithPid:(int)pid
{
  v8.receiver = self;
  v8.super_class = SPMonitoredProcess;
  v4 = [(SPProcessEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->super._targetProcessId = pid;
    v4->super._isLiveSampling = 1;
    v6 = +[NSUUID UUID];
    [(SPProcessEvent *)v5 setIncidentUUID:v6];
  }

  return v5;
}

@end