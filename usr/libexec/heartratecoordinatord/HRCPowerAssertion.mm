@interface HRCPowerAssertion
- (HRCPowerAssertion)initWithName:(id)a3 reason:(id)a4;
- (void)dealloc;
@end

@implementation HRCPowerAssertion

- (HRCPowerAssertion)initWithName:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HRCPowerAssertion;
  v8 = [(HRCPowerAssertion *)&v17 init];
  if (v8)
  {
    v9 = sub_10000132C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "creating a %{public}@ power assertion to prevent system sleep, reason : %{public}@", buf, 0x16u);
    }

    v10 = [(__CFString *)v6 copy];
    name = v8->_name;
    v8->_name = v10;

    v12 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", v6, v7, 0, 0, 0.0, @"TimeoutActionTurnOff", &v8->_powerAssertion);
    v13 = sub_10000132C();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100011BF8(v12, v14);
      }

      v15 = 0;
      v8->_powerAssertion = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "successfully acquired power assertion %{public}@", buf, 0xCu);
      }

      v15 = v8;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  if (self->_powerAssertion)
  {
    v3 = sub_10000132C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      name = self->_name;
      *buf = 138543362;
      v7 = name;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "releasing %{public}@ power assertion", buf, 0xCu);
    }

    IOPMAssertionRelease(self->_powerAssertion);
  }

  v5.receiver = self;
  v5.super_class = HRCPowerAssertion;
  [(HRCPowerAssertion *)&v5 dealloc];
}

@end