@interface NDPowerlogReporter
- (NDPowerlogReporter)initWithTaskDescription:(id)a3;
- (void)taskWillResume;
@end

@implementation NDPowerlogReporter

- (void)taskWillResume
{
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_hasStarted)
  {
    self->_suspendedDurationSinceLastUpdate = self->_suspendedDurationSinceLastUpdate + Current - self->_lastSuspendTime;
  }

  else
  {
    self->_hasStarted = 1;
    self->_lastUpdateTime = Current;
  }
}

- (NDPowerlogReporter)initWithTaskDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NDPowerlogReporter;
  v6 = [(NDPowerlogReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskDescription, a3);
    v7->_hasStarted = 0;
    v7->_suspendedDurationSinceLastUpdate = 0.0;
  }

  return v7;
}

@end