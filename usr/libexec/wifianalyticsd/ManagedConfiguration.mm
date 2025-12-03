@interface ManagedConfiguration
+ (ManagedConfiguration)sharedInstance;
- (ManagedConfiguration)init;
- (void)MCSettingsDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scheduleWithQueue:(id)queue;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)unscheduleFromQueue:(id)queue;
@end

@implementation ManagedConfiguration

+ (ManagedConfiguration)sharedInstance
{
  if (qword_10010DE30 != -1)
  {
    dispatch_once(&qword_10010DE30, &stru_1000EDBC8);
  }

  v3 = qword_10010DE28;

  return v3;
}

- (ManagedConfiguration)init
{
  v14.receiver = self;
  v14.super_class = ManagedConfiguration;
  v2 = [(ManagedConfiguration *)&v14 init];
  v3 = WALogCategoryInitPersistentLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v16 = "[ManagedConfiguration init]";
      v17 = 1024;
      v18 = 107;
      v19 = 2112;
      v20 = @"com.apple.wifianalyticsd";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:starting id %@", buf, 0x1Cu);
    }

    [(ManagedConfiguration *)v2 setMonitoring:0];
    v5 = +[MCProfileConnection sharedConnection];
    [(ManagedConfiguration *)v2 setMcConnection:v5];

    v4 = +[NSUserDefaults standardUserDefaults];
    v6 = [v4 persistentDomainForName:@"com.apple.wifianalyticsd"];
    v7 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v16 = "[ManagedConfiguration init]";
      v17 = 1024;
      v18 = 117;
      v19 = 2112;
      v20 = @"com.apple.wifianalyticsd";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RecommendationPreferences bundleIdentifier %@ defaults %@", buf, 0x26u);
    }

    v8 = +[NSMutableDictionary dictionary];
    v9 = +[WAUtil isWiFiFragmentSamplingEnabled];
    if (v9)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }

    if (v9)
    {
      v11 = &off_100102DA0;
    }

    else
    {
      v11 = &off_100102DB8;
    }

    [v8 setObject:v10 forKey:@"megawifiprofile_diagnostic_metrics_enabled"];
    [v8 setObject:v11 forKey:@"megawifiprofile_diagnostic_metrics_period_ms"];
    [v8 setObject:v10 forKey:@"coredata_diagnostic_metrics_enabled"];
    [v8 setObject:&__kCFBooleanFalse forKey:@"megawifiprofile_diagnostic_metrics_before_first_assoc"];
    [v8 setObject:&__kCFBooleanTrue forKey:@"megawifiprofile_diagnostic_metrics_while_unassoc"];
    [v4 setPersistentDomain:v6 forName:@"com.apple.wifianalyticsd"];
    [v4 registerDefaults:v8];
    [v4 addObserver:v2 forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled" options:5 context:0];
    [v4 addObserver:v2 forKeyPath:@"megawifiprofile_diagnostic_metrics_period_ms" options:5 context:0];
    [v4 addObserver:v2 forKeyPath:@"coredata_diagnostic_metrics_enabled" options:5 context:0];
    [v4 addObserver:v2 forKeyPath:@"megawifiprofile_diagnostic_metrics_before_first_assoc" options:5 context:0];
    [v4 addObserver:v2 forKeyPath:@"megawifiprofile_diagnostic_metrics_while_unassoc" options:5 context:0];
    v12 = v2;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v16 = "[ManagedConfiguration init]";
    v17 = 1024;
    v18 = 105;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error super init", buf, 0x12u);
  }

  return v2;
}

- (void)dealloc
{
  if ([(ManagedConfiguration *)self monitoring])
  {
    [(ManagedConfiguration *)self stopMonitoring];
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled"];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_period_ms"];
  [v3 removeObserver:self forKeyPath:@"coredata_diagnostic_metrics_enabled"];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_before_first_assoc"];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_while_unassoc"];

  v4.receiver = self;
  v4.super_class = ManagedConfiguration;
  [(ManagedConfiguration *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9 = [change objectForKeyedSubscript:NSKeyValueChangeNewKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (![pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_enabled"])
  {
    if ([pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_period_ms"])
    {
      if (!v11)
      {
        goto LABEL_28;
      }

      -[ManagedConfiguration setMegawifiprofile_diagnostic_metrics_period_ms:](self, "setMegawifiprofile_diagnostic_metrics_period_ms:", [v11 unsignedIntValue]);
      v12 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v16 = 136446978;
      v17 = "[ManagedConfiguration observeValueForKeyPath:ofObject:change:context:]";
      v18 = 1024;
      v19 = 195;
      v20 = 2112;
      v21 = @"megawifiprofile_diagnostic_metrics_period_ms";
      v22 = 2048;
      megawifiprofile_diagnostic_metrics_period_ms = [(ManagedConfiguration *)self megawifiprofile_diagnostic_metrics_period_ms];
      v15 = "%{public}s::%d:%@ Preference is %lu";
    }

    else if ([pathCopy isEqualToString:@"coredata_diagnostic_metrics_enabled"])
    {
      if (!v11)
      {
        goto LABEL_28;
      }

      -[ManagedConfiguration setCoredata_diagnostic_metrics_enabled:](self, "setCoredata_diagnostic_metrics_enabled:", [v11 BOOLValue]);
      v12 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v16 = 136446978;
      v17 = "[ManagedConfiguration observeValueForKeyPath:ofObject:change:context:]";
      v18 = 1024;
      v19 = 200;
      v20 = 2112;
      v21 = @"coredata_diagnostic_metrics_enabled";
      v22 = 2048;
      megawifiprofile_diagnostic_metrics_period_ms = [(ManagedConfiguration *)self coredata_diagnostic_metrics_enabled];
      v15 = "%{public}s::%d:%@ Preference is %lu";
    }

    else if ([pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_before_first_assoc"])
    {
      if (!v11)
      {
        goto LABEL_28;
      }

      -[ManagedConfiguration setMegawifiprofile_diagnostic_metrics_before_first_assoc:](self, "setMegawifiprofile_diagnostic_metrics_before_first_assoc:", [v11 BOOLValue]);
      v12 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v16 = 136446978;
      v17 = "[ManagedConfiguration observeValueForKeyPath:ofObject:change:context:]";
      v18 = 1024;
      v19 = 205;
      v20 = 2112;
      v21 = @"megawifiprofile_diagnostic_metrics_before_first_assoc";
      v22 = 2048;
      megawifiprofile_diagnostic_metrics_period_ms = [(ManagedConfiguration *)self megawifiprofile_diagnostic_metrics_before_first_assoc];
      v15 = "%{public}s::%d:%@ Preference is %lu";
    }

    else
    {
      if (![pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_while_unassoc"] || !v11)
      {
        goto LABEL_28;
      }

      -[ManagedConfiguration setMegawifiprofile_diagnostic_metrics_while_unassoc:](self, "setMegawifiprofile_diagnostic_metrics_while_unassoc:", [v11 BOOLValue]);
      v12 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v16 = 136446978;
      v17 = "[ManagedConfiguration observeValueForKeyPath:ofObject:change:context:]";
      v18 = 1024;
      v19 = 210;
      v20 = 2112;
      v21 = @"megawifiprofile_diagnostic_metrics_while_unassoc";
      v22 = 2048;
      megawifiprofile_diagnostic_metrics_period_ms = [(ManagedConfiguration *)self megawifiprofile_diagnostic_metrics_while_unassoc];
      v15 = "%{public}s::%d:%@ Preference is %lu";
    }

LABEL_26:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, &v16, 0x26u);
    goto LABEL_27;
  }

  if (v11)
  {
    -[ManagedConfiguration setMegawifiprofile_diagnostic_metrics_enabled:](self, "setMegawifiprofile_diagnostic_metrics_enabled:", [v11 BOOLValue]);
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      megawifiprofile_diagnostic_metrics_enabled = [(ManagedConfiguration *)self megawifiprofile_diagnostic_metrics_enabled];
      v14 = "NO";
      v17 = "[ManagedConfiguration observeValueForKeyPath:ofObject:change:context:]";
      v18 = 1024;
      v19 = 190;
      v16 = 136446978;
      if (megawifiprofile_diagnostic_metrics_enabled)
      {
        v14 = "YES";
      }

      v20 = 2112;
      v21 = @"megawifiprofile_diagnostic_metrics_enabled";
      v22 = 2080;
      megawifiprofile_diagnostic_metrics_period_ms = v14;
      v15 = "%{public}s::%d:%@ Preference is %s";
      goto LABEL_26;
    }

LABEL_27:
  }

LABEL_28:
}

- (void)MCSettingsDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[ManagedConfiguration MCSettingsDidChange:]";
    v9 = 1024;
    v10 = 218;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MCNotification received", &v7, 0x12u);
  }

  [(ManagedConfiguration *)self profileChangedCallback:0];
  objc_autoreleasePoolPop(v5);
}

- (void)scheduleWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_autoreleasePoolPush();
  [(ManagedConfiguration *)self setQueue:queueCopy];
  v6 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[ManagedConfiguration scheduleWithQueue:]";
    v11 = 1024;
    v12 = 229;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:scheduleWithQueue", buf, 0x12u);
  }

  queue = [(ManagedConfiguration *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004514C;
  block[3] = &unk_1000ED880;
  block[4] = self;
  dispatch_async(queue, block);

  objc_autoreleasePoolPop(v5);
}

- (void)unscheduleFromQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_autoreleasePoolPush();
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[ManagedConfiguration unscheduleFromQueue:]";
    v9 = 1024;
    v10 = 241;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unscheduleFromQueue", &v7, 0x12u);
  }

  [(ManagedConfiguration *)self stopMonitoring];
  [(ManagedConfiguration *)self setQueue:0];
  objc_autoreleasePoolPop(v5);
}

- (void)startMonitoring
{
  v3 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000455B0;
  handler[3] = &unk_1000EDBF0;
  handler[4] = self;
  v4 = notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &self->_profileNoticeToken, v3, handler);

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "[ManagedConfiguration startMonitoring]";
    v15 = 1024;
    v16 = 259;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:notify_register_dispatch for PROFILE_SERVICE_IDENTIFIER %d", buf, 0x18u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[ManagedConfiguration startMonitoring]";
    v15 = 1024;
    v16 = 263;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding NSNotificationCenter Observer", buf, 0x12u);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"MCSettingsDidChange:" name:MCEffectiveSettingsChangedNotification object:0];

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[ManagedConfiguration startMonitoring]";
    v15 = 1024;
    v16 = 270;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DarwinNotifyCenter Observer", buf, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = DarwinNotifyCenter;
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000455BC, @"CCDaemonProfile Changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, &stru_1000EDC30);
  }

  else
  {
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[ManagedConfiguration startMonitoring]";
      v15 = 1024;
      v16 = 273;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get DarwinNotifyCenter", buf, 0x12u);
    }
  }

  [(ManagedConfiguration *)self setMonitoring:v11 != 0];
  objc_autoreleasePoolPop(v6);
}

- (void)stopMonitoring
{
  v3 = objc_autoreleasePoolPush();
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[ManagedConfiguration stopMonitoring]";
    v8 = 1024;
    v9 = 415;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:removing observer", &v6, 0x12u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:MCEffectiveSettingsChangedNotification object:0];

  [(ManagedConfiguration *)self setMonitoring:0];
  objc_autoreleasePoolPop(v3);
}

@end