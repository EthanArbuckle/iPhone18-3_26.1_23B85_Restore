@interface RPThermalPressure
- (RPThermalPressureDelegate)delegate;
- (int)getStateWithToken:(int)a3;
- (int64_t)convertThermalPressureLevel:(int)a3;
- (void)dealloc;
- (void)startMonitoring;
- (void)thermalPressureDidChangeWithThermalLevel:(int)a3;
@end

@implementation RPThermalPressure

- (void)dealloc
{
  [(RPThermalPressure *)self stopMonitoring];
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = RPThermalPressure;
  [(RPThermalPressure *)&v3 dealloc];
}

- (void)startMonitoring
{
  notify_register_check(kOSThermalNotificationPressureLevelName, &self->_thermalNotificationToken);
  v3 = [(RPThermalPressure *)self getStateWithToken:self->_thermalNotificationToken];
  self->_thermalLevel = v3;
  self->_newThermalLevel = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004110;
  handler[3] = &unk_1000A10B0;
  handler[4] = self;
  notify_register_dispatch(kOSThermalNotificationPressureLevelName, &self->_thermalNotificationToken, &_dispatch_main_q, handler);
}

- (void)thermalPressureDidChangeWithThermalLevel:(int)a3
{
  newThermalLevel = self->_newThermalLevel;
  if (newThermalLevel != a3)
  {
    self->_thermalLevel = newThermalLevel;
    self->_newThermalLevel = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained thermalPressureDidChangeWithLevel:{-[RPThermalPressure convertThermalPressureLevel:](self, "convertThermalPressureLevel:", self->_thermalLevel)}];
  }
}

- (int64_t)convertThermalPressureLevel:(int)a3
{
  v3 = a3;
  if (a3 > 29)
  {
    switch(a3)
    {
      case 30:
        return 30;
      case 40:
        return 40;
      case 50:
        return 50;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        return v3;
      case 10:
        return 10;
      case 20:
        return 20;
    }
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPThermalPressure convertThermalPressureLevel:]";
    v7 = 1024;
    v8 = 70;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d unknown pressure level", &v5, 0x12u);
  }

  return v3;
}

- (int)getStateWithToken:(int)a3
{
  state64 = 0;
  notify_get_state(a3, &state64);
  return state64;
}

- (RPThermalPressureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end