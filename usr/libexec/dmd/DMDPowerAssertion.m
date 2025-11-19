@interface DMDPowerAssertion
+ (id)assertionForOperation:(id)a3;
- (id)initForOperation:(id)a3;
- (void)_release;
- (void)_retain;
- (void)dealloc;
- (void)park;
- (void)unpark;
@end

@implementation DMDPowerAssertion

+ (id)assertionForOperation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[NSString alloc] initWithFormat:v4 arguments:&v9];
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [[a1 alloc] initForOperation:v5];

  return v6;
}

- (id)initForOperation:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DMDPowerAssertion;
  v6 = [(DMDPowerAssertion *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operation, a3);
    v8 = _assertionQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066A08;
    block[3] = &unk_1000CE5A0;
    v11 = v7;
    dispatch_sync(v8, block);
  }

  return v7;
}

- (void)dealloc
{
  if (!self->_isParked)
  {
    v3 = _assertionQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066ABC;
    block[3] = &unk_1000CE5A0;
    block[4] = self;
    dispatch_sync(v3, block);
  }

  v4.receiver = self;
  v4.super_class = DMDPowerAssertion;
  [(DMDPowerAssertion *)&v4 dealloc];
}

- (void)park
{
  v3 = _assertionQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066B50;
  block[3] = &unk_1000CE5A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)unpark
{
  v3 = _assertionQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066C54;
  block[3] = &unk_1000CE5A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_retain
{
  v3 = qword_1000FF2B0;
  if (!qword_1000FF2B0)
  {
    IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"dmd activity", 0, 0, 0, 3600.0, @"TimeoutActionTurnOff", &dword_1000FF2B8);
    v3 = qword_1000FF2B0;
  }

  qword_1000FF2B0 = v3 + 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DMDPowerAssertion *)self operation];
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Beginning power assertion, operation: %{public}@", &v10, 0xCu);
  }

  v5 = +[DMDUserSwitchStakeholder sharedStakeholder];
  v6 = [v5 inEDUMode];

  if (v6)
  {
    v7 = [(DMDPowerAssertion *)self operation];
    v8 = [UMUserSwitchBlockingTask taskWithName:@"DMDSwitchBlockingTask" reason:v7];
    [(DMDPowerAssertion *)self setBlockingTask:v8];

    v9 = [(DMDPowerAssertion *)self blockingTask];
    [v9 begin];
  }
}

- (void)_release
{
  if (!--qword_1000FF2B0)
  {
    IOPMAssertionRelease(dword_1000FF2B8);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(DMDPowerAssertion *)self operation];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ending power assertion, operation: %{public}@", &v7, 0xCu);
  }

  v4 = +[DMDUserSwitchStakeholder sharedStakeholder];
  v5 = [v4 inEDUMode];

  if (v5)
  {
    v6 = [(DMDPowerAssertion *)self blockingTask];
    [v6 end];
  }
}

@end