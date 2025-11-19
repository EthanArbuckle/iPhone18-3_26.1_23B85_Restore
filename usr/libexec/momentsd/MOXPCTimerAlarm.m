@interface MOXPCTimerAlarm
- (BOOL)_isEndDateValid:(id)a3;
- (BOOL)fireWithDate:(id)a3 error:(id *)a4;
- (BOOL)invalidate;
- (MOXPCTimerAlarm)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)_deregisterAlarm;
- (void)_fireWithDate:(id)a3;
- (void)_handleDurationExpiry;
- (void)_invalidate;
- (void)_onNotification:(id)a3;
- (void)_setAlarmWithEndDate:(id)a3 userVisible:(BOOL)a4;
- (void)_setup;
- (void)onNotification:(id)a3;
- (void)setup;
@end

@implementation MOXPCTimerAlarm

- (MOXPCTimerAlarm)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MOXPCTimerAlarm;
  v11 = [(MOXPCTimerAlarm *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a4);
    v12->_state = 0;
    v13 = [v8 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v10 copy];
    handler = v12->_handler;
    v12->_handler = v15;

    [(MOXPCTimerAlarm *)v12 setup];
  }

  return v12;
}

- (void)setup
{
  v3 = [(MOXPCTimerAlarm *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __24__MOXPCTimerAlarm_setup__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = [(MOXPCTimerAlarm *)self identifier];
  [v4 addObserver:self selector:"onNotification:" name:v3 object:0];
}

- (void)onNotification:(id)a3
{
  v4 = a3;
  v5 = [(MOXPCTimerAlarm *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__MOXPCTimerAlarm_onNotification___block_invoke;
  v7[3] = &unk_100335B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onNotification:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "onNotification com.apple.alarm, notification, %@ ---", &v6, 0xCu);
  }

  [(MOXPCTimerAlarm *)self _handleDurationExpiry];
}

- (BOOL)fireWithDate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MOXPCTimerAlarm *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __38__MOXPCTimerAlarm_fireWithDate_error___block_invoke;
  v9[3] = &unk_100335B08;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, v9);

  return 1;
}

- (BOOL)invalidate
{
  v3 = [(MOXPCTimerAlarm *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __29__MOXPCTimerAlarm_invalidate__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = self;
  dispatch_async(v3, block);

  return 1;
}

- (void)_fireWithDate:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_fireWithDate com.apple.alarm, date, %@ ---", &v6, 0xCu);
  }

  [(MOXPCTimerAlarm *)self _deregisterAlarm];
  [(MOXPCTimerAlarm *)self _resetState];
  if ([(MOXPCTimerAlarm *)self _isEndDateValid:v4])
  {
    [(MOXPCTimerAlarm *)self setState:2];
    [(MOXPCTimerAlarm *)self _setAlarmWithEndDate:v4 userVisible:0];
  }
}

- (void)_handleDurationExpiry
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_handleDurationExpiry com.apple.alarm, date, ", buf, 2u);
  }

  [(MOXPCTimerAlarm *)self setState:3];
  [(MOXPCTimerAlarm *)self _deregisterAlarm];
  v4 = +[NSDate date];
  [(MOXPCTimerAlarm *)self setEndDate:v4];

  v5 = [(MOXPCTimerAlarm *)self handler];

  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invoke block from handler com.apple.alarm, date, ", v8, 2u);
    }

    v7 = [(MOXPCTimerAlarm *)self handler];
    v7[2]();
  }
}

- (void)_invalidate
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_invalidate com.apple.alarm, date, ", v6, 2u);
  }

  [(MOXPCTimerAlarm *)self _deregisterAlarm];
  [(MOXPCTimerAlarm *)self _resetState];
  [(MOXPCTimerAlarm *)self setState:1];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(MOXPCTimerAlarm *)self identifier];
  [v4 removeObserver:self name:v5 object:0];
}

- (void)_setAlarmWithEndDate:(id)a3 userVisible:(BOOL)a4
{
  v7 = a3;
  p_previousFireDate = &self->_previousFireDate;
  [v7 timeIntervalSinceDate:self->_previousFireDate];
  if (fabs(v9) / 60.0 <= 2.0)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "skip setting alarm as the previous fire date is within 2 minutes of current fire date", &v15, 2u);
    }
  }

  else
  {
    v10 = [(MOXPCTimerAlarm *)self identifier];
    [v10 cStringUsingEncoding:4];

    [v7 timeIntervalSince1970];
    v12 = 1000000000 * v11;
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v13, "Date", v12);
    xpc_dictionary_set_BOOL(v13, "UserVisible", a4);
    xpc_set_event();
    objc_storeStrong(p_previousFireDate, a3);
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_setAlarmWithEndDate, %@", &v15, 0xCu);
    }
  }
}

- (void)_deregisterAlarm
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_deregisterAlarm com.apple.alarm, date, ", v5, 2u);
  }

  v4 = [(MOXPCTimerAlarm *)self identifier];
  [v4 cStringUsingEncoding:4];

  xpc_set_event();
}

- (BOOL)_isEndDateValid:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = [v5 compare:v4];

  if (v6 == 1)
  {
    [(MOXPCTimerAlarm *)self _handleDurationExpiry];
  }

  return v6 != 1;
}

@end