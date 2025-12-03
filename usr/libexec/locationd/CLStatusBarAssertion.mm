@interface CLStatusBarAssertion
- (CLStatusBarAssertion)initWithPid:(int)pid name:(id)name queue:(id)queue backgrounded:(BOOL)backgrounded registration:(int)registration;
- (void)dealloc;
- (void)invalidate:(int)invalidate;
- (void)setBackgrounded:(BOOL)backgrounded;
- (void)setDesiredEnablementState:(BOOL)state;
@end

@implementation CLStatusBarAssertion

- (CLStatusBarAssertion)initWithPid:(int)pid name:(id)name queue:(id)queue backgrounded:(BOOL)backgrounded registration:(int)registration
{
  if (+[CLStatusBarAssertion isStatusBarAssertionAvailable])
  {
    v16.receiver = self;
    v16.super_class = CLStatusBarAssertion;
    v13 = [(CLStatusBarAssertion *)&v16 init];
    v14 = v13;
    if (v13)
    {
      v13->_assertion = 0;
      v13->_pid = pid;
      v13->_name = [name copy];
      v14->_queue = queue;
      v14->_startedInBackground = backgrounded;
      v14->_everBackgrounded = backgrounded;
      v14->_backgrounded = backgrounded;
      v14->_registration = registration;
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

- (void)dealloc
{
  if (self->_assertion)
  {
    sub_101960270();
  }

  v3.receiver = self;
  v3.super_class = CLStatusBarAssertion;
  [(CLStatusBarAssertion *)&v3 dealloc];
}

- (void)invalidate:(int)invalidate
{
  v4[1] = @"Pid";
  v5[0] = &__kCFBooleanFalse;
  v4[0] = @"Status";
  v5[1] = [NSNumber numberWithInt:self->_pid];
  sub_10006FFF0([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2], "StatusBarOverride");
  [(SBSStatusBarStyleOverridesAssertion *)self->_assertion invalidate];

  self->_assertion = 0;
}

- (void)setDesiredEnablementState:(BOOL)state
{
  assertion = self->_assertion;
  if (state)
  {
    if (!assertion)
    {
      v5 = [SBSStatusBarStyleOverridesAssertion backgroundLocationAssertionForPID:self->_pid];
      self->_assertion = v5;
      if (!v5)
      {
        sub_1019603F4();
      }

      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1008B29B0;
      v6[3] = &unk_10245C2C8;
      v6[4] = self;
      [(SBSStatusBarStyleOverridesAssertion *)v5 acquireWithHandler:v6 onQueue:self->_queue];
    }
  }

  else if (assertion)
  {
    v8[0] = &__kCFBooleanFalse;
    v7[0] = @"Status";
    v7[1] = @"Pid";
    v8[1] = [NSNumber numberWithInt:self->_pid];
    sub_10006FFF0([NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2], "StatusBarOverride");
    [(SBSStatusBarStyleOverridesAssertion *)self->_assertion invalidate];

    self->_assertion = 0;
  }
}

- (void)setBackgrounded:(BOOL)backgrounded
{
  if (backgrounded)
  {
    self->_everBackgrounded = 1;
  }

  self->_backgrounded = backgrounded;
}

@end