@interface NDTActivity
- (NDTActivity)initWithDelegate:(id)delegate;
- (NDTActivityDelegate)delegate;
- (OS_xpc_object)activity;
- (id)_currentCriteria;
- (void)_activityComplete;
- (void)_addStateHandler;
- (void)_checkIn;
- (void)_markActivityStateChanged:(int64_t)changed;
- (void)_setState:(int64_t)state;
- (void)_startDeferralPolling;
- (void)_stopDeferralPolling;
- (void)completeAndFireIn:(int64_t)in;
- (void)completeAndFireNever;
- (void)completeAndFireOnConnection;
- (void)dealloc;
@end

@implementation NDTActivity

- (NDTActivity)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = NDTActivity;
  v5 = [(NDTActivity *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NDTActivity *)v5 setDelegate:delegateCopy];
    v7 = objc_alloc_init(NSCondition);
    [(NDTActivity *)v6 setActivityCondition:v7];

    v8 = os_log_create([delegateCopy activitySubsystem:v6], "xpc_activity");
    [(NDTActivity *)v6 setLog:v8];

    [(NDTActivity *)v6 setCriteriaDelay:-1];
    [(NDTActivity *)v6 setCriteriaOnConnection:0];
    -[NDTActivity setActivityIdentifier:](v6, "setActivityIdentifier:", strdup([delegateCopy activityIdentifier:v6]));
    [(NDTActivity *)v6 _checkIn];
    [(NDTActivity *)v6 _addStateHandler];
  }

  return v6;
}

- (void)dealloc
{
  stateHandle = self->_stateHandle;
  os_state_remove_handler();
  free([(NDTActivity *)self activityIdentifier]);
  v4.receiver = self;
  v4.super_class = NDTActivity;
  [(NDTActivity *)&v4 dealloc];
}

- (OS_xpc_object)activity
{
  activityCondition = [(NDTActivity *)self activityCondition];
  [activityCondition lock];
  while (1)
  {

    if (self->_activity)
    {
      break;
    }

    activityCondition = [(NDTActivity *)self activityCondition];
    [activityCondition wait];
  }

  activityCondition2 = [(NDTActivity *)self activityCondition];
  [activityCondition2 unlock];

  activity = self->_activity;

  return activity;
}

- (void)_addStateHandler
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(21, 0);
  objc_copyWeak(&v4, &location);
  self->_stateHandle = os_state_add_handler();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_markActivityStateChanged:(int64_t)changed
{
  [(NDTActivity *)self setCurrentActivityState:changed];
  v4 = +[NSDate date];
  [(NDTActivity *)self setActivityStateChangedDate:v4];
}

- (void)_checkIn
{
  delegate = [(NDTActivity *)self delegate];
  objc_initWeak(&location, self);
  v4 = [delegate activityIdentifier:self];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006B5A0;
  handler[3] = &unk_1000B6238;
  objc_copyWeak(&v8, &location);
  v5 = delegate;
  v7 = v5;
  xpc_activity_register(v4, XPC_ACTIVITY_CHECK_IN, handler);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_currentCriteria
{
  if ([(NDTActivity *)self criteriaDelay]== -1 && ![(NDTActivity *)self criteriaOnConnection])
  {
    v5 = 0;
  }

  else
  {
    delegate = [(NDTActivity *)self delegate];
    activity = [(NDTActivity *)self activity];
    v5 = xpc_activity_copy_criteria(activity);

    if (!v5)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, 10);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, [(NDTActivity *)self criteriaOnConnection]);
    if (![(NDTActivity *)self criteriaOnConnection])
    {
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, [(NDTActivity *)self criteriaDelay]);
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate activity:self customizeCriteria:v5];
    }
  }

  return v5;
}

- (void)completeAndFireIn:(int64_t)in
{
  v5 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    activityIdentifier = [(NDTActivity *)self activityIdentifier];
    v17 = 1024;
    LODWORD(v18) = in;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: completeAndFireIn: %d", &v15, 0x12u);
  }

  v6 = os_transaction_create();
  [(NDTActivity *)self setWaitingForCheckin:v6];

  v7 = [NSDate dateWithTimeIntervalSinceNow:in];
  estimatedFireDate = [(NDTActivity *)self estimatedFireDate];
  [(NDTActivity *)self setEstimatedFireDate:0];
  [(NDTActivity *)self _activityComplete];
  if (!estimatedFireDate || [v7 compare:estimatedFireDate] == -1)
  {
    v13 = [(NDTActivity *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      activityIdentifier2 = [(NDTActivity *)self activityIdentifier];
      v15 = 136315394;
      activityIdentifier = activityIdentifier2;
      v17 = 1024;
      LODWORD(v18) = in;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: fireIn: %d", &v15, 0x12u);
    }

    [(NDTActivity *)self setCriteriaOnConnection:0];
    [(NDTActivity *)self setCriteriaDelay:in];
    [(NDTActivity *)self setEstimatedFireDate:v7];
    [(NDTActivity *)self _checkIn];
  }

  else
  {
    [(NDTActivity *)self setEstimatedFireDate:estimatedFireDate];
    [estimatedFireDate timeIntervalSinceNow];
    v10 = v9;
    v11 = [(NDTActivity *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      activityIdentifier3 = [(NDTActivity *)self activityIdentifier];
      v15 = 136315394;
      activityIdentifier = activityIdentifier3;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fireIn request for %s disregarded for previous scheduled timer (%0.2f to go)", &v15, 0x16u);
    }
  }
}

- (void)completeAndFireOnConnection
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    activityIdentifier = [(NDTActivity *)self activityIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: completeAndFireOnConnection", &v6, 0xCu);
  }

  v4 = os_transaction_create();
  [(NDTActivity *)self setWaitingForCheckin:v4];

  [(NDTActivity *)self setEstimatedFireDate:0];
  [(NDTActivity *)self _activityComplete];
  [(NDTActivity *)self setCriteriaOnConnection:1];
  [(NDTActivity *)self setCriteriaDelay:0];
  [(NDTActivity *)self _checkIn];
  v5 = +[NSDate date];
  [(NDTActivity *)self setEstimatedFireDate:v5];
}

- (void)completeAndFireNever
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    activityIdentifier = [(NDTActivity *)self activityIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: completeAndFireNever", &v4, 0xCu);
  }

  [(NDTActivity *)self _activityComplete];
}

- (void)_setState:(int64_t)state
{
  if (self->_activity)
  {
    activity = [(NDTActivity *)self activity];
    v6 = xpc_activity_set_state(activity, state);

    v7 = [(NDTActivity *)self log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        activityIdentifier = [(NDTActivity *)self activityIdentifier];
        if (state <= 5)
        {
          v10 = (&off_1000B6258)[state];
        }

        else
        {
          v10 = "OUT_OF_BOUNDS";
        }

        v13 = 136315394;
        v14 = activityIdentifier;
        v15 = 2080;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Set activity state to %s", &v13, 0x16u);
      }

      [(NDTActivity *)self _markActivityStateChanged:state];
    }

    else
    {
      if (v8)
      {
        activityIdentifier2 = [(NDTActivity *)self activityIdentifier];
        if (state <= 5)
        {
          v12 = (&off_1000B6258)[state];
        }

        else
        {
          v12 = "OUT_OF_BOUNDS";
        }

        v13 = 136315394;
        v14 = activityIdentifier2;
        v15 = 2080;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to set activity state to %s", &v13, 0x16u);
      }
    }
  }
}

- (void)_activityComplete
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    activityIdentifier = [(NDTActivity *)self activityIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: _activityComplete", &v4, 0xCu);
  }

  [(NDTActivity *)self _stopDeferralPolling];
  [(NDTActivity *)self _setState:5];
  [(NDTActivity *)self setEstimatedFireDate:0];
}

- (void)_startDeferralPolling
{
  [(NDTActivity *)self _stopDeferralPolling];
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  deferPollingSource = self->_deferPollingSource;
  self->_deferPollingSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_deferPollingSource;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C278;
  v9[3] = &unk_1000B4B48;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v6, v9);
  v7 = self->_deferPollingSource;
  v8 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v7, v8, 0xB2D05E00uLL, 0);
  dispatch_activate(self->_deferPollingSource);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_stopDeferralPolling
{
  deferPollingSource = self->_deferPollingSource;
  if (deferPollingSource)
  {
    dispatch_source_cancel(deferPollingSource);
    v4 = self->_deferPollingSource;
    self->_deferPollingSource = 0;
  }
}

- (NDTActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end