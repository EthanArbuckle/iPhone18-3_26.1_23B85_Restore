@interface PowerModesManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PowerModesManager)init;
- (id)getModeFromName:(id)a3;
- (id)getSavedExitDate:(id)a3;
- (void)clearState;
- (void)disablePowerMode:(id)a3 withReply:(id)a4;
- (void)enablePowerMode:(id)a3 withReply:(id)a4;
- (void)enterMode:(id)a3;
- (void)evaluatePowerModes;
- (void)evaluatePowerModes:(id)a3 withContext:(id)a4;
- (void)exitMode:(id)a3;
- (void)initializeAllModes;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)restoreState;
- (void)saveState;
- (void)start;
- (void)updateAllowOnCharger:(id)a3 withState:(BOOL)a4 andReply:(id)a5;
- (void)updateEntryDelay:(id)a3 withDelay:(double)a4 andReply:(id)a5;
- (void)updateMaxEngagementDuration:(id)a3 withDuration:(double)a4 andReply:(id)a5;
- (void)updatePowerMode:(id)a3 withState:(BOOL)a4 andReply:(id)a5;
@end

@implementation PowerModesManager

+ (id)sharedInstance
{
  if (qword_100036C80 != -1)
  {
    sub_1000198AC();
  }

  v3 = qword_100036C78;

  return v3;
}

- (void)evaluatePowerModes
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  v4 = [(PowerModesManager *)self deviceContext];
  v7 = [v4 currentContext];

  v5 = [(PowerModesManager *)self resourceManager];
  v6 = [v5 resourceHints];

  [(PowerModesManager *)self evaluatePowerModes:v6 withContext:v7];
}

- (void)initializeAllModes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011B9C;
  block[3] = &unk_10002C738;
  block[4] = self;
  if (qword_100036C68 != -1)
  {
    dispatch_once(&qword_100036C68, block);
  }
}

- (PowerModesManager)init
{
  v19.receiver = self;
  v19.super_class = PowerModesManager;
  v2 = [(PowerModesManager *)&v19 initWithMachServiceName:@"com.apple.powerexperienced.powermodes"];
  if (v2)
  {
    v3 = +[DeviceContext sharedInstance];
    deviceContext = v2->_deviceContext;
    v2->_deviceContext = v3;

    v5 = +[ResourceManager sharedInstance];
    resourceManager = v2->_resourceManager;
    v2->_resourceManager = v5;

    v7 = +[PowerModesService sharedInstance];
    powerModesService = v2->_powerModesService;
    v2->_powerModesService = v7;

    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerexperienced.powermodes"];
    defaults = v2->_defaults;
    v2->_defaults = v9;

    [(PowerModesManager *)v2 initializeAllModes];
    v11 = +[NSMutableSet set];
    activeModes = v2->_activeModes;
    v2->_activeModes = v11;

    v13 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "starting service", buf, 2u);
    }

    [(PowerModesManager *)v2 setDelegate:v2];
    v14 = sub_100001600();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011F94;
    block[3] = &unk_10002C738;
    v17 = v2;
    dispatch_async(v14, block);
  }

  return v2;
}

- (void)start
{
  [(PowerModesManager *)self activate];
  v3 = [(PowerModesManager *)self deviceContext];
  [v3 addObserver:self forKeyPath:@"currentContext" options:3 context:0];

  v4 = +[ChargeDurationPredictor sharedInstance];
  chargingPredictor = self->_chargingPredictor;
  self->_chargingPredictor = v4;

  v6 = [(PowerModesManager *)self chargingPredictor];
  [v6 addObserver:self forKeyPath:@"predictorOutput" options:3 context:0];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PowerModesManagerProtocol];
  [v5 setExportedInterface:v6];

  v7 = [v5 valueForEntitlement:@"com.apple.powerexperience.powermode.update"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
  {
    v8 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v13[0] = 67109120;
      v13[1] = [v5 processIdentifier];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PowerModesManager: listener: accepted new connection from pid %d", v13, 8u);
    }

    [v5 setExportedObject:self];
    [v5 resume];
    v10 = 1;
  }

  else
  {
    v11 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_ERROR))
    {
      sub_1000198C0(v11, v5);
    }

    v10 = 0;
  }

  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000122B8;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)evaluatePowerModes:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v37 = a4;
  v7 = sub_100001600();
  dispatch_assert_queue_V2(v7);

  v8 = [(PowerModesManager *)self overridePresent];

  if (!v8)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [(PowerModesManager *)self powerModes];
    v12 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = v12;
    v14 = *v45;
    v34 = v39;
    v35 = v6;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = [(PowerModesManager *)self powerModes];
        v18 = [v17 objectForKeyedSubscript:v16];

        if (([v18 isEnabled] & 1) == 0)
        {
          v26 = qword_100036C70;
          if (!os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          v22 = v26;
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138412290;
          v50 = v28;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ is disabled. Skipping evaluation", buf, 0xCu);

          goto LABEL_18;
        }

        if ([v18 isSupportedPlatform])
        {
          if ([v18 evaluatePowerModeWithResourceHints:v6 andContext:v37])
          {
            if ([v18 getState])
            {
              goto LABEL_22;
            }

            [v18 getEntryDelay];
            v20 = v19;
            v21 = v18;
            v22 = v21;
            if (v20 <= 0.0)
            {
              [(PowerModesManager *)self enterMode:v21];
            }

            else if (([v21 pendingDelayedEntryTimer]& 1) == 0)
            {
              when = dispatch_time(0xFFFFFFFFFFFFFFFELL, (v20 * 1000000000.0));
              v23 = sub_100001600();
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v39[0] = sub_100012758;
              v39[1] = &unk_10002CB08;
              v40 = v22;
              v41 = self;
              v24 = v40;
              v42 = v24;
              v43 = v20;
              dispatch_after(when, v23, block);

              v25 = v24;
              v6 = v35;
              [v25 setPendingDelayedEntryTimer:1];
            }

LABEL_18:

            goto LABEL_22;
          }

          [(PowerModesManager *)self exitMode:v18];
        }

        else
        {
          v29 = qword_100036C70;
          if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_INFO))
          {
            v30 = v29;
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            *buf = 138412290;
            v50 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%@ is not supported on this platform. Skipping evaluation", buf, 0xCu);
          }
        }

LABEL_22:

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v33 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v13 = v33;
      if (!v33)
      {
LABEL_26:

        goto LABEL_27;
      }
    }
  }

  v9 = qword_100036C70;
  if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(PowerModesManager *)self overridePresent];
    *buf = 138412290;
    v50 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Override present. Skipping evaluation. Please exit %@ mode using powerexperienceutil", buf, 0xCu);

    goto LABEL_26;
  }

LABEL_27:
}

- (void)enterMode:(id)a3
{
  v4 = a3;
  if (([v4 getState] & 1) == 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = [(PowerModesManager *)self powerModes];
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      p_superclass = &OBJC_METACLASS___CPMTrialManager.superclass;
      v43 = self;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v48 + 1) + 8 * i);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = [v11 isEqualToString:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [(PowerModesManager *)self powerModes];
            v16 = [v15 objectForKeyedSubscript:v11];

            if ([v16 getState] && objc_msgSend(v16, "isEnabled") && objc_msgSend(v16, "isSupportedPlatform"))
            {
              v17 = p_superclass[398];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                v21 = objc_opt_class();
                NSStringFromClass(v21);
                v23 = v22 = p_superclass;
                *buf = 138412546;
                v53 = v20;
                v54 = 2112;
                v55 = *&v23;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "exiting mode %@ before entering %@", buf, 0x16u);

                p_superclass = v22;
                self = v43;
              }

              [(PowerModesManager *)self exitMode:v16];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v7);
    }

    [v4 enterPowerMode];
    if ([v4 getState])
    {
      v24 = [(PowerModesManager *)self activeModes];
      [v24 addObject:v4];

      v25 = [(PowerModesManager *)self powerModesService];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [v25 updateClientsforMode:v27 withState:1];

      [v4 getMaxEngagementDuration];
      if (v28 != 0.0)
      {
        v29 = v28;
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [(PowerModesManager *)self getSavedExitDate:v31];

        if (v32)
        {
          v33 = +[NSDate distantFuture];
          v34 = [v32 isEqualToDate:v33];

          if ((v34 & 1) == 0)
          {
            v35 = qword_100036C70;
            if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v32;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Saved exit date %@", buf, 0xCu);
            }

            [v32 timeIntervalSinceNow];
            v29 = v36;
          }
        }

        v37 = qword_100036C70;
        if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          *buf = 138412546;
          v53 = v40;
          v54 = 2048;
          v55 = v29;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Setting a timer to exit %@ after %f seconds", buf, 0x16u);
        }

        v41 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (v29 * 1000000000.0));
        v42 = sub_100001600();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100012D78;
        block[3] = &unk_10002C530;
        v47 = v29;
        v45 = v4;
        v46 = self;
        dispatch_after(v41, v42, block);
      }
    }

    [(PowerModesManager *)self saveState];
  }
}

- (void)exitMode:(id)a3
{
  v8 = a3;
  if ([v8 getState])
  {
    [v8 exitPowerMode];
    if (([v8 getState] & 1) == 0)
    {
      v4 = [(PowerModesManager *)self activeModes];
      [v4 removeObject:v8];

      v5 = [(PowerModesManager *)self powerModesService];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v5 updateClientsforMode:v7 withState:0];
    }

    [(PowerModesManager *)self saveState];
  }

  _objc_release_x1();
}

- (void)saveState
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  v21 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PowerModesManager *)self powerModes];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [(PowerModesManager *)self powerModes];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {
          v11 = +[NSDate distantFuture];
          if ([v10 getState])
          {
            [v10 getMaxEngagementDuration];
            if (v12 != 0.0)
            {
              [v10 getMaxEngagementDuration];
              v13 = [NSDate dateWithTimeIntervalSinceNow:?];

              v11 = v13;
            }
          }

          v26[0] = @"state";
          v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 getState]);
          v27[0] = v14;
          v26[1] = @"enabled";
          v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEnabled]);
          v26[2] = @"exitDate";
          v27[1] = v15;
          v27[2] = v11;
          v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          [v21 setObject:v16 forKeyedSubscript:v18];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v19 = [(PowerModesManager *)self defaults];
  [v19 setValue:v21 forKey:@"modes"];
}

- (void)restoreState
{
  v3 = sub_100001600();
  dispatch_assert_queue_V2(v3);

  v4 = [(PowerModesManager *)self defaults];
  v5 = [v4 valueForKey:@"modes"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(PowerModesManager *)self getModeFromName:v11];
          if (v12)
          {
            v13 = [v5 objectForKeyedSubscript:v11];
            [v12 restoreState:v13];

            if ([v12 getState])
            {
              [(PowerModesManager *)self enterMode:v12];
            }

            else
            {
              [(PowerModesManager *)self exitMode:v12];
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)clearState
{
  v3 = qword_100036C70;
  if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing state after a reboot", v6, 2u);
  }

  v4 = sub_100001600();
  dispatch_assert_queue_V2(v4);

  v5 = [(PowerModesManager *)self defaults];
  [v5 removeObjectForKey:@"modes"];
}

- (id)getSavedExitDate:(id)a3
{
  v4 = a3;
  v5 = [(PowerModesManager *)self defaults];
  v6 = [v5 valueForKey:@"modes"];

  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 objectForKeyedSubscript:@"exitDate"];

  return v8;
}

- (id)getModeFromName:(id)a3
{
  v4 = a3;
  v5 = [(PowerModesManager *)self powerModes];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)disablePowerMode:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001362C;
  block[3] = &unk_10002CB30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)enablePowerMode:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000137AC;
  block[3] = &unk_10002CB30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)updatePowerMode:(id)a3 withState:(BOOL)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100001600();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013930;
  v13[3] = &unk_10002CB58;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)updateAllowOnCharger:(id)a3 withState:(BOOL)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100001600();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013B9C;
  v13[3] = &unk_10002CB58;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)updateEntryDelay:(id)a3 withDelay:(double)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100001600();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013D04;
  v13[3] = &unk_10002CB80;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)updateMaxEngagementDuration:(id)a3 withDuration:(double)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100001600();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013E64;
  v13[3] = &unk_10002CB80;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

@end