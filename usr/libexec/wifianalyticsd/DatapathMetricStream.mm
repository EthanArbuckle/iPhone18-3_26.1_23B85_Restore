@interface DatapathMetricStream
+ (id)sharedInstance;
- (DatapathMetricStream)init;
- (id)getPBCodableNSDataFromNSKeyedArchive:(id)archive;
- (void)dealloc;
- (void)fetchMetrics;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDispatchQueueAndAddObservers:(id)observers withGetter:(id)getter;
- (void)streamPBCodeable:(id)codeable additionalDictionaryItems:(id)items;
- (void)updateTimerConfiguration;
@end

@implementation DatapathMetricStream

+ (id)sharedInstance
{
  if (qword_10010DE20 != -1)
  {
    dispatch_once(&qword_10010DE20, &stru_1000EDB58);
  }

  v3 = qword_10010DE18;

  return v3;
}

- (DatapathMetricStream)init
{
  v14.receiver = self;
  v14.super_class = DatapathMetricStream;
  v2 = [(DatapathMetricStream *)&v14 init];
  v3 = WALogCategoryInitPersistentLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[DatapathMetricStream init]";
      v17 = 1024;
      v18 = 66;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:starting", buf, 0x12u);
    }

    v2->_timerRunning = 0;
    v5 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      timerRunning = v2->_timerRunning;
      *buf = 136446722;
      v16 = "[DatapathMetricStream init]";
      v17 = 1024;
      v18 = 69;
      v19 = 1024;
      v20 = timerRunning;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _timerRunning %d", buf, 0x18u);
    }

    [(DatapathMetricStream *)v2 setMonitoring:0];
    v7 = objc_alloc_init(WAProtobufMessageSubmitter);
    pbConverter = v2->_pbConverter;
    v2->_pbConverter = v7;

    v9 = [[NSMutableData alloc] initWithCapacity:10240];
    [(DatapathMetricStream *)v2 setLastPB:v9];

    lastPB = [(DatapathMetricStream *)v2 lastPB];
    [lastPB setLength:10240];

    [(DatapathMetricStream *)v2 setLastPBLength:0];
    v11 = objc_alloc_init(NSLock);
    [(DatapathMetricStream *)v2 setLastPBLock:v11];

    v12 = v2;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "[DatapathMetricStream init]";
      v17 = 1024;
      v18 = 64;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error super init", buf, 0x12u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled"];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_period_ms"];
  [v3 removeObserver:self forKeyPath:@"coredata_diagnostic_metrics_enabled"];

  v4.receiver = self;
  v4.super_class = DatapathMetricStream;
  [(DatapathMetricStream *)&v4 dealloc];
}

- (void)setDispatchQueueAndAddObservers:(id)observers withGetter:(id)getter
{
  getterCopy = getter;
  observersCopy = observers;
  v8 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "[DatapathMetricStream setDispatchQueueAndAddObservers:withGetter:]";
    v15 = 1024;
    v16 = 98;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setDispatchQueueAndAddObservers", &v13, 0x12u);
  }

  [(DatapathMetricStream *)self setQueue:observersCopy];
  [(DatapathMetricStream *)self setGetter:getterCopy];

  v9 = +[ManagedConfiguration sharedInstance];
  [(DatapathMetricStream *)self setManagedConfiguration:v9];

  managedConfiguration = [(DatapathMetricStream *)self managedConfiguration];
  [managedConfiguration addObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled" options:5 context:0];

  managedConfiguration2 = [(DatapathMetricStream *)self managedConfiguration];
  [managedConfiguration2 addObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_period_ms" options:5 context:0];

  managedConfiguration3 = [(DatapathMetricStream *)self managedConfiguration];
  [managedConfiguration3 addObserver:self forKeyPath:@"coredata_diagnostic_metrics_enabled" options:5 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v15 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v35 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]";
    v36 = 1024;
    v37 = 116;
    v38 = 2112;
    v39 = pathCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:observeValueForKeyPath %@", buf, 0x1Cu);
  }

  if ([pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_enabled"])
  {
    if (v14)
    {
      -[DatapathMetricStream setMegawifiprofile_diagnostic_metrics_enabled:](self, "setMegawifiprofile_diagnostic_metrics_enabled:", [v14 BOOLValue]);
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        megawifiprofile_diagnostic_metrics_enabled = [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_enabled];
        v18 = "NO";
        v35 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]";
        v36 = 1024;
        v37 = 121;
        *buf = 136446978;
        if (megawifiprofile_diagnostic_metrics_enabled)
        {
          v18 = "YES";
        }

        v38 = 2112;
        v39 = pathCopy;
        v40 = 2080;
        v41 = v18;
        v19 = "%{public}s::%d:%@ Preference is %s";
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

  else if ([pathCopy isEqualToString:@"megawifiprofile_diagnostic_metrics_period_ms"])
  {
    if (v14)
    {
      megawifiprofile_diagnostic_metrics_period_ms = [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_period_ms];
      if (megawifiprofile_diagnostic_metrics_period_ms != [v14 unsignedIntegerValue] && -[DatapathMetricStream megawifiprofile_diagnostic_metrics_period_ms](self, "megawifiprofile_diagnostic_metrics_period_ms") && objc_msgSend(v14, "unsignedIntegerValue"))
      {
        v21 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          megawifiprofile_diagnostic_metrics_period_ms2 = [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_period_ms];
          unsignedIntegerValue = [v14 unsignedIntegerValue];
          *buf = 136446978;
          v35 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]";
          v36 = 1024;
          v37 = 130;
          v38 = 2048;
          v39 = megawifiprofile_diagnostic_metrics_period_ms2;
          v40 = 2048;
          v41 = unsignedIntegerValue;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Noticed that kMegaProfileDiagnosticMetricsPeriod_ms is changing values from %lu to %lu", buf, 0x26u);
        }

        *(v31 + 24) = 1;
      }

      -[DatapathMetricStream setMegawifiprofile_diagnostic_metrics_period_ms:](self, "setMegawifiprofile_diagnostic_metrics_period_ms:", [v14 unsignedIntegerValue]);
      v16 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      megawifiprofile_diagnostic_metrics_period_ms3 = [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_period_ms];
      *buf = 136446978;
      v35 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]";
      v36 = 1024;
      v37 = 134;
      v38 = 2112;
      v39 = pathCopy;
      v40 = 2048;
      v41 = megawifiprofile_diagnostic_metrics_period_ms3;
      v19 = "%{public}s::%d:%@ Preference is %lu";
      goto LABEL_28;
    }
  }

  else
  {
    v25 = [pathCopy isEqualToString:@"coredata_diagnostic_metrics_enabled"];
    if (v14)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1)
    {
      -[DatapathMetricStream setCoredata_diagnostic_metrics_enabled:](self, "setCoredata_diagnostic_metrics_enabled:", [v14 BOOLValue]);
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        coredata_diagnostic_metrics_enabled = [(DatapathMetricStream *)self coredata_diagnostic_metrics_enabled];
        *buf = 136446978;
        v35 = "[DatapathMetricStream observeValueForKeyPath:ofObject:change:context:]";
        v36 = 1024;
        v37 = 139;
        v38 = 2112;
        v39 = pathCopy;
        v40 = 2048;
        v41 = coredata_diagnostic_metrics_enabled;
        v19 = "%{public}s::%d:%@ Preference is %lu";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x26u);
      }

LABEL_29:
    }
  }

  queue = [(DatapathMetricStream *)self queue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100042920;
  v29[3] = &unk_1000EDB80;
  v29[4] = self;
  v29[5] = &v30;
  dispatch_async(queue, v29);

  _Block_object_dispose(&v30, 8);
}

- (id)getPBCodableNSDataFromNSKeyedArchive:(id)archive
{
  archiveCopy = archive;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
  v21 = 0;
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:archiveCopy error:&v21];

  v14 = v21;
  if (v14)
  {
    data = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "[DatapathMetricStream getPBCodableNSDataFromNSKeyedArchive:]";
      v24 = 1024;
      v25 = 163;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessageAWD: %@", buf, 0x1Cu);
    }

    v16 = 0;
    goto LABEL_7;
  }

  pbConverter = [(DatapathMetricStream *)self pbConverter];
  v14 = [pbConverter instantiateAWDProtobufAndPopulateValues:v13];

  if (v14)
  {
    v18 = [NSData alloc];
    data = [v14 data];
    v16 = [v18 initWithData:data];
LABEL_7:

    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)fetchMetrics
{
  getter = self->_getter;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100042D98;
  v3[3] = &unk_1000EDBA8;
  v3[4] = self;
  getter[2](getter, 1, v3);
}

- (void)updateTimerConfiguration
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    megawifiprofile_diagnostic_metrics_enabled = self->_megawifiprofile_diagnostic_metrics_enabled;
    megawifiprofile_diagnostic_metrics_period_ms = self->_megawifiprofile_diagnostic_metrics_period_ms;
    timerRunning = self->_timerRunning;
    timer = self->_timer;
    v8 = timer != 0;
    if (timer)
    {
      v9 = dispatch_source_testcancel(timer) != 0;
    }

    else
    {
      v9 = 0;
    }

    *buf = 136447746;
    v40 = "[DatapathMetricStream updateTimerConfiguration]";
    v41 = 1024;
    v42 = 212;
    v43 = 1024;
    *v44 = megawifiprofile_diagnostic_metrics_enabled;
    *&v44[4] = 2048;
    *&v44[6] = megawifiprofile_diagnostic_metrics_period_ms;
    v45 = 1024;
    v46 = timerRunning;
    v47 = 1024;
    v48 = v8;
    v49 = 1024;
    v50 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:megawifiprofile_diagnostic_metrics_enabled is %d megawifiprofile_diagnostic_metrics_period_ms is %lu _timerRunning is %d _timer exists %d testcancel is %d", buf, 0x34u);
  }

  v10 = self->_megawifiprofile_diagnostic_metrics_enabled;
  if (self->_timerRunning)
  {
    if (!self->_megawifiprofile_diagnostic_metrics_enabled || !self->_megawifiprofile_diagnostic_metrics_period_ms)
    {
      v11 = self->_timer;
      if (v11)
      {
        if (!dispatch_source_testcancel(v11))
        {
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = self->_megawifiprofile_diagnostic_metrics_enabled;
            v14 = self->_megawifiprofile_diagnostic_metrics_period_ms;
            *buf = 136446978;
            v40 = "[DatapathMetricStream updateTimerConfiguration]";
            v41 = 1024;
            v42 = 248;
            v43 = 1024;
            *v44 = v13;
            *&v44[4] = 2048;
            *&v44[6] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer exists and is valid, Suspending: Enabled %d Period(ms) %lu", buf, 0x22u);
          }

          dispatch_suspend(self->_timer);
          self->_timerRunning = 0;
          v15 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }

          v16 = self->_timerRunning;
          *buf = 136446722;
          v40 = "[DatapathMetricStream updateTimerConfiguration]";
          v41 = 1024;
          v42 = 251;
          v43 = 1024;
          *v44 = v16;
LABEL_40:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _timerRunning %d", buf, 0x18u);
LABEL_41:
        }
      }
    }

LABEL_42:
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->_megawifiprofile_diagnostic_metrics_enabled;
      v35 = self->_megawifiprofile_diagnostic_metrics_period_ms;
      v36 = self->_timer;
      if (v36)
      {
        v37 = dispatch_source_testcancel(v36) == 0;
      }

      else
      {
        v37 = 0;
      }

      *buf = 136447234;
      v40 = "[DatapathMetricStream updateTimerConfiguration]";
      v41 = 1024;
      v42 = 255;
      v43 = 1024;
      *v44 = v34;
      *&v44[4] = 2048;
      *&v44[6] = v35;
      v45 = 1024;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer State : Enabled %d Period(ms) %lu valid %d", buf, 0x28u);
    }

    goto LABEL_47;
  }

  if (!self->_megawifiprofile_diagnostic_metrics_enabled || !self->_megawifiprofile_diagnostic_metrics_period_ms)
  {
    goto LABEL_42;
  }

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v40 = "[DatapathMetricStream updateTimerConfiguration]";
    v41 = 1024;
    v42 = 215;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting timer", buf, 0x12u);
  }

  v18 = self->_timer;
  if (v18)
  {
    if (!dispatch_source_testcancel(v18))
    {
LABEL_32:
      v26 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        megawifiprofile_diagnostic_metrics_period_ms = [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_period_ms];
        *buf = 136446722;
        v40 = "[DatapathMetricStream updateTimerConfiguration]";
        v41 = 1024;
        v42 = 235;
        v43 = 2048;
        *v44 = 1000000 * megawifiprofile_diagnostic_metrics_period_ms;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer fire in %llu ns", buf, 0x1Cu);
      }

      v28 = self->_timer;
      v29 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 0);
      dispatch_source_set_timer(v28, v29, 1000000 * [(DatapathMetricStream *)self megawifiprofile_diagnostic_metrics_period_ms], 0x5F5E100uLL);
      v30 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v40 = "[DatapathMetricStream updateTimerConfiguration]";
        v41 = 1024;
        v42 = 237;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer Done", buf, 0x12u);
      }

      v31 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v40 = "[DatapathMetricStream updateTimerConfiguration]";
        v41 = 1024;
        v42 = 239;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dispatch_resume _timer", buf, 0x12u);
      }

      dispatch_resume(self->_timer);
      self->_timerRunning = 1;
      v15 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      v32 = self->_timerRunning;
      *buf = 136446722;
      v40 = "[DatapathMetricStream updateTimerConfiguration]";
      v41 = 1024;
      v42 = 243;
      v43 = 1024;
      *v44 = v32;
      goto LABEL_40;
    }

LABEL_27:
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v40 = "[DatapathMetricStream updateTimerConfiguration]";
      v41 = 1024;
      v42 = 227;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting dispatch_source_set_event_handler", buf, 0x12u);
    }

    v24 = self->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100043834;
    handler[3] = &unk_1000ED880;
    handler[4] = self;
    dispatch_source_set_event_handler(v24, handler);
    v25 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v40 = "[DatapathMetricStream updateTimerConfiguration]";
      v41 = 1024;
      v42 = 232;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting block Done", buf, 0x12u);
    }

    goto LABEL_32;
  }

  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v40 = "[DatapathMetricStream updateTimerConfiguration]";
    v41 = 1024;
    v42 = 221;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Creating _timer", buf, 0x12u);
  }

  v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v21 = self->_timer;
  self->_timer = v20;

  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v40 = "[DatapathMetricStream updateTimerConfiguration]";
    v41 = 1024;
    v42 = 223;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating _timer Done", buf, 0x12u);
  }

  if (self->_timer)
  {
    goto LABEL_27;
  }

  v33 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Failed to create _timer", buf, 2u);
  }

LABEL_47:
}

- (void)streamPBCodeable:(id)codeable additionalDictionaryItems:(id)items
{
  codeableCopy = codeable;
  itemsCopy = items;
  v8 = objc_autoreleasePoolPush();
  v9 = [WANWActivityStatistics alloc];
  data = [codeableCopy data];
  v11 = [v9 initWithPBCodableData:data];

  lastPBLock = [(DatapathMetricStream *)self lastPBLock];
  [lastPBLock lock];

  lastPB = [(DatapathMetricStream *)self lastPB];
  if (![lastPB length])
  {

    goto LABEL_18;
  }

  lastPBLength = [(DatapathMetricStream *)self lastPBLength];

  if (!lastPBLength)
  {
LABEL_18:
    v45 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
      v78 = 1024;
      v79 = 342;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Missing previous fragment, writing single fragment", buf, 0x12u);
    }

    v31 = [v11 getTransformedFlattened:2];
    if ([NSJSONSerialization isValidJSONObject:v31])
    {
      v74 = 0;
      v38 = [NSJSONSerialization dataWithJSONObject:v31 options:0 error:&v74];
      v19 = v74;
      if (!v19)
      {
        v46 = WALogDiagnosticProfileLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [[NSString alloc] initWithData:v38 encoding:4];
          *buf = 138543362;
          v77 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_40;
    }

    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
      v78 = 1024;
      v79 = 357;
      v80 = 2112;
      *v81 = v31;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid JSON %@", buf, 0x1Cu);
    }

    goto LABEL_41;
  }

  v15 = [NSData alloc];
  lastPB2 = [(DatapathMetricStream *)self lastPB];
  v17 = [v15 initWithBytesNoCopy:objc_msgSend(lastPB2 length:"mutableBytes") freeWhenDone:{-[DatapathMetricStream lastPBLength](self, "lastPBLength"), 0}];

  v18 = WALogCategoryDefaultHandle();
  v19 = v18;
  if (v17)
  {
    v72 = codeableCopy;
    v73 = v8;
    v71 = itemsCopy;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
      v78 = 1024;
      v79 = 285;
      v80 = 2048;
      *v81 = [v17 length];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:initWithBytesNoCopy NSData len %lu", buf, 0x1Cu);
    }

    v68 = v17;
    v19 = [[WANWActivityStatistics alloc] initWithPBCodableData:v17];
    awdReport = [v19 awdReport];
    dictionaryRepresentation = [awdReport dictionaryRepresentation];
    allKeys = [dictionaryRepresentation allKeys];
    v23 = [allKeys count];
    v70 = v11;
    awdReport2 = [v11 awdReport];
    dictionaryRepresentation2 = [awdReport2 dictionaryRepresentation];
    allKeys2 = [dictionaryRepresentation2 allKeys];
    v27 = [allKeys2 count];

    if (v23 != v27)
    {
      v38 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        awdReport3 = [v19 awdReport];
        dictionaryRepresentation3 = [awdReport3 dictionaryRepresentation];
        allKeys3 = [dictionaryRepresentation3 allKeys];
        v50 = [allKeys3 count];
        v11 = v70;
        awdReport4 = [v70 awdReport];
        dictionaryRepresentation4 = [awdReport4 dictionaryRepresentation];
        allKeys4 = [dictionaryRepresentation4 allKeys];
        v54 = [allKeys4 count];
        *buf = 136446978;
        v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
        v78 = 1024;
        v79 = 334;
        v80 = 2048;
        *v81 = v50;
        *&v81[8] = 2048;
        *&v81[10] = v54;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Not diffing - previousFragment.keys.count %lu wifiFragment %lu", buf, 0x26u);

        itemsCopy = v71;
        codeableCopy = v72;
        v8 = v73;
      }

      else
      {
        itemsCopy = v71;
        codeableCopy = v72;
        v8 = v73;
        v11 = v70;
      }

      v31 = v68;
LABEL_40:

      goto LABEL_41;
    }

    if (v19)
    {
      awdReport5 = [v19 awdReport];
      dictionaryRepresentation5 = [awdReport5 dictionaryRepresentation];
      allKeys5 = [dictionaryRepresentation5 allKeys];
      v31 = v68;
      if ([allKeys5 containsObject:@"interfaceStats"])
      {
        awdReport6 = [v19 awdReport];
        dictionaryRepresentation6 = [awdReport6 dictionaryRepresentation];
        allKeys6 = [dictionaryRepresentation6 allKeys];
        v35 = [allKeys6 containsObject:@"controllerStats"];

        if (v35)
        {
          awdReport7 = [v19 awdReport];
          dictionaryRepresentation7 = [awdReport7 dictionaryRepresentation];
          v11 = v70;
          v38 = [v70 getTransformedFlattenedFrom:dictionaryRepresentation7 style:2];

          codeableCopy = v72;
          v8 = v73;
          if (v38)
          {
            v39 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
            [v39 processWiFiStats:v38];

            itemsCopy = v71;
            if ([NSJSONSerialization isValidJSONObject:v38])
            {
              v40 = objc_autoreleasePoolPush();
              v75 = 0;
              v41 = [NSJSONSerialization dataWithJSONObject:v38 options:0 error:&v75];
              v42 = v75;
              if (!v42)
              {
                v65 = v40;
                v43 = WALogDiagnosticProfileLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  log = v43;
                  v44 = [[NSString alloc] initWithData:v41 encoding:4];
                  *buf = 138543362;
                  v77 = v44;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);

                  v43 = log;
                }

                v40 = v65;
              }

              objc_autoreleasePoolPop(v40);
              v8 = v73;
              goto LABEL_40;
            }

            v55 = 0;
          }

          else
          {
            v55 = 1;
            itemsCopy = v71;
          }

LABEL_37:
          v56 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            awdReport8 = [v19 awdReport];
            dictionaryRepresentation8 = [awdReport8 dictionaryRepresentation];
            loga = [dictionaryRepresentation8 allKeys];
            v57 = [loga count];
            [v19 awdReport];
            v59 = v58 = v38;
            dictionaryRepresentation9 = [v59 dictionaryRepresentation];
            allKeys7 = [dictionaryRepresentation9 allKeys];
            *buf = 136447490;
            v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
            v78 = 1024;
            v79 = 330;
            v80 = 1024;
            *v81 = v55;
            *&v81[4] = 2048;
            *&v81[6] = v57;
            *&v81[14] = 2112;
            *&v81[16] = allKeys7;
            v82 = 2112;
            v83 = v58;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s::%d:bad flattenedAndTransformed %d %lu %@ or invalid JSON %@", buf, 0x36u);

            codeableCopy = v72;
            itemsCopy = v71;

            v38 = v58;
            v8 = v73;
          }

          v11 = v70;
          goto LABEL_40;
        }
      }

      else
      {
      }

      v38 = 0;
      v55 = 1;
      itemsCopy = v71;
      codeableCopy = v72;
      v8 = v73;
      goto LABEL_37;
    }

    v38 = 0;
    v55 = 1;
    itemsCopy = v71;
    codeableCopy = v72;
    v8 = v73;
    v31 = v68;
    goto LABEL_37;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v77 = "[DatapathMetricStream streamPBCodeable:additionalDictionaryItems:]";
    v78 = 1024;
    v79 = 337;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to make NSData initWithBytesNoCopy", buf, 0x12u);
  }

  v31 = 0;
LABEL_41:

  lastPBLock2 = [(DatapathMetricStream *)self lastPBLock];
  [lastPBLock2 unlock];

  objc_autoreleasePoolPop(v8);
}

@end