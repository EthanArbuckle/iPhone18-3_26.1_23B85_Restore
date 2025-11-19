@interface CLStatusBarAssertion
- (CLStatusBarAssertion)initWithPid:(int)a3 name:(id)a4 queue:(id)a5 backgrounded:(BOOL)a6 registration:(int)a7;
- (void)dealloc;
- (void)invalidate:(int)a3;
- (void)setBackgrounded:(BOOL)a3;
- (void)setDesiredEnablementState:(BOOL)a3;
@end

@implementation CLStatusBarAssertion

- (CLStatusBarAssertion)initWithPid:(int)a3 name:(id)a4 queue:(id)a5 backgrounded:(BOOL)a6 registration:(int)a7
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
      v13->_pid = a3;
      v13->_name = [a4 copy];
      v14->_queue = a5;
      v14->_startedInBackground = a6;
      v14->_everBackgrounded = a6;
      v14->_backgrounded = a6;
      v14->_registration = a7;
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

- (void)invalidate:(int)a3
{
  v4[1] = @"Pid";
  v5[0] = &__kCFBooleanFalse;
  v4[0] = @"Status";
  v5[1] = [NSNumber numberWithInt:self->_pid];
  sub_10006FFF0([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2], "StatusBarOverride");
  [(SBSStatusBarStyleOverridesAssertion *)self->_assertion invalidate];

  self->_assertion = 0;
}

- (void)setDesiredEnablementState:(BOOL)a3
{
  assertion = self->_assertion;
  if (a3)
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

- (void)setBackgrounded:(BOOL)a3
{
  if (a3)
  {
    self->_everBackgrounded = 1;
  }

  self->_backgrounded = a3;
}

@end