@interface PRNarrowbandSARManager
- (BOOL)clearSARStateOverride;
- (BOOL)injectNarrowbandSARState:(int)a3;
- (BOOL)startMonitoring;
- (PRNarrowbandSARManager)initWithQueue:(id)a3 stateChangeHandler:(id)a4;
- (id).cxx_construct;
- (id)printableStateOnQueue;
- (int)audioRouteToSARState:(int)a3;
- (int)checkCurrentAudioRoute;
- (unsigned)getCurrentSARIndexOnQueue;
- (unsigned)nbSARStateToSARIndex:(int)a3;
- (void)audioRouteChanged:(id)a3;
- (void)dealloc;
- (void)initNarrowbandSARListner;
- (void)stopMonitoring;
- (void)updateSARStateIfRequired;
@end

@implementation PRNarrowbandSARManager

- (int)checkCurrentAudioRoute
{
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 currentRoute];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 outputs];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v12 + 1) + 8 * i) portType];
          v9 = [v8 isEqualToString:AVAudioSessionPortBuiltInReceiver];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = 2;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateSARStateIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(PRNarrowbandSARManager *)self checkCurrentAudioRoute];
  v4 = qword_1009F4A00;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, (&off_1009A3D08)[v3]);
    v5 = v16 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#nb-sar,audio route: %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = [(PRNarrowbandSARManager *)self audioRouteToSARState:v3];
  v7 = v6;
  if (!self->_sarStateInitialized || self->_systemSARState != v6)
  {
    self->_sarStateInitialized = 1;
    self->_systemSARState = v6;
    if (self->_overrideSARState.__engaged_)
    {
      v8 = qword_1009F4A00;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (!self->_overrideSARState.__engaged_)
        {
          sub_1000195BC();
        }

        sub_100004A08(__p, (&off_1009A3D20)[self->_overrideSARState.var0.__val_]);
        v9 = v16;
        v10 = __p[0];
        sub_100004A08(buf, (&off_1009A3D20)[v7]);
        v11 = __p;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v18 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        *v19 = 136315394;
        v20 = v11;
        v21 = 2080;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#nb-sar,SAR override %s - ignoring SAR state  : %s", v19, 0x16u);
        if (v18 < 0)
        {
          operator delete(*buf);
        }

        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (self->_stateChangeHandler)
    {
      v13 = qword_1009F4A00;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_100004A08(__p, (&off_1009A3D20)[v7]);
        v14 = v16 >= 0 ? __p : __p[0];
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#nb-sar,updated SAR state: %s", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      (*(self->_stateChangeHandler + 2))(self->_stateChangeHandler, [(PRNarrowbandSARManager *)self nbSARStateToSARIndex:v7]);
    }
  }
}

- (PRNarrowbandSARManager)initWithQueue:(id)a3 stateChangeHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PRNarrowbandSARMonitor.mm" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v17.receiver = self;
  v17.super_class = PRNarrowbandSARManager;
  v10 = [(PRNarrowbandSARManager *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
    fNotificationCenter = v11->_fNotificationCenter;
    v11->_fNotificationCenter = 0;

    *&v11->_monitoring = 0;
    if (v11->_overrideSARState.__engaged_)
    {
      v11->_overrideSARState.__engaged_ = 0;
    }

    v11->_systemSARState = 0;
    v13 = objc_retainBlock(v9);
    stateChangeHandler = v11->_stateChangeHandler;
    v11->_stateChangeHandler = v13;
  }

  return v11;
}

- (void)dealloc
{
  [(PRNarrowbandSARManager *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = PRNarrowbandSARManager;
  [(PRNarrowbandSARManager *)&v3 dealloc];
}

- (void)initNarrowbandSARListner
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSNotificationCenter defaultCenter];
  fNotificationCenter = self->_fNotificationCenter;
  self->_fNotificationCenter = v3;

  v5 = self->_fNotificationCenter;
  v6 = +[AVAudioSession sharedInstance];
  [(NSNotificationCenter *)v5 addObserver:self selector:"audioRouteChanged:" name:AVAudioSessionRouteChangeNotification object:?];
}

- (BOOL)startMonitoring
{
  if (!self->_monitoring)
  {
    v3 = qword_1009F4A00;
    if (os_log_type_enabled(qword_1009F4A00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nb-sar,starting monitoring", buf, 2u);
    }

    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 stringForKey:@"NBSARStateMonitorOverride"];

    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    if ([v6 isEqualToString:@"failsafe"])
    {
      v7 = 0;
    }

    else
    {
      if (([v6 isEqualToString:@"head"] & 1) == 0)
      {
        v11 = [v6 isEqualToString:@"body"];
        if (v11)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }

        if (!v11)
        {
LABEL_13:
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002F3B58;
          block[3] = &unk_10098BD28;
          block[4] = self;
          dispatch_async(queue, block);
          self->_monitoring = 1;

          return 1;
        }

LABEL_10:
        v8 = qword_1009F4A00;
        if (os_log_type_enabled(qword_1009F4A00, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#nb-sar,injecting state from defaults", buf, 2u);
        }

        [(PRNarrowbandSARManager *)self injectNarrowbandSARState:v7];
        goto LABEL_13;
      }

      v7 = 1;
    }

    goto LABEL_10;
  }

  return 1;
}

- (void)stopMonitoring
{
  if (self->_monitoring)
  {
    block[7] = v2;
    block[8] = v3;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F3C24;
    block[3] = &unk_10098BD28;
    block[4] = self;
    dispatch_async(queue, block);
    self->_monitoring = 0;
  }
}

- (void)audioRouteChanged:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F3D4C;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unsigned)getCurrentSARIndexOnQueue
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = 36;
  if (self->_overrideSARState.__engaged_)
  {
    v3 = 28;
  }

  v4 = *(&self->super.isa + v3);

  return [(PRNarrowbandSARManager *)self nbSARStateToSARIndex:v4];
}

- (id)printableStateOnQueue
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_opt_new();
  monitoring = self->_monitoring;
  sarStateInitialized = self->_sarStateInitialized;
  sub_100004A08(v13, (&off_1009A3D20)[self->_systemSARState]);
  if (v14 >= 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = v13[0];
  }

  engaged = self->_overrideSARState.__engaged_;
  if (engaged)
  {
    sub_100004A08(__p, (&off_1009A3D20)[self->_overrideSARState.var0.__val_]);
    if (v12 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }
  }

  else
  {
    v8 = "-";
  }

  v9 = [NSString stringWithFormat:@"Monitoring: %d. State initialized: %d. System state: %s. Override state: %s", monitoring, sarStateInitialized, v6, v8];
  [v3 addObject:v9];

  if (engaged && v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v3;
}

- (BOOL)injectNarrowbandSARState:(int)a3
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002F3FAC;
  v5[3] = &unk_10099E718;
  v5[4] = self;
  v6 = a3;
  dispatch_async(queue, v5);
  return 1;
}

- (BOOL)clearSARStateOverride
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F4178;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (int)audioRouteToSARState:(int)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (unsigned)nbSARStateToSARIndex:(int)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id).cxx_construct
{
  *(self + 28) = 0;
  *(self + 32) = 0;
  return self;
}

@end