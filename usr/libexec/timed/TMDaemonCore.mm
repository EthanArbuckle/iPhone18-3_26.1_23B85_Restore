@interface TMDaemonCore
- (TMDaemonCore)initWithTimeZoneRules:(id)rules monotonicClock:(id)clock preferences:(id)preferences workloop:(id)workloop;
- (TMTimeProvider)timeProvider;
- (TMTimeZone)computedTimeZone;
- (void)addPlugin:(id)plugin;
- (void)addTimeProvider:(id)provider forKey:(id)key;
- (void)checkActiveTimeSourceRequired;
- (void)dealloc;
- (void)executeCommand:(id)command withHandler:(id)handler;
- (void)handleShutdown;
- (void)resetTime;
- (void)resetTimeZone:(id)zone;
- (void)rtcDidReset;
- (void)setRequiresActiveBBTime:(BOOL)time;
- (void)setSourceAvailable:(id)available;
- (void)setSourceTime:(id)time;
- (void)setSourceTimeZone:(id)zone;
- (void)setSourceUnavailable:(id)unavailable;
- (void)setSystemTimeSet:(BOOL)set;
- (void)testAndApplySystemTime;
- (void)timeZoneManager:(id)manager didComputeResult:(id)result;
- (void)timeZoneManager:(id)manager didReset:(id)reset;
- (void)timeZoneManager:(id)manager shouldFetch:(id)fetch;
@end

@implementation TMDaemonCore

- (void)testAndApplySystemTime
{
  if (self && [(TMDaemonCore *)self isAutomaticTimeEnabled])
  {

    sub_100007478(&self->super.isa, 6);
  }
}

- (TMTimeProvider)timeProvider
{
  v2 = [(NSMutableDictionary *)self->_timeProviders objectForKeyedSubscript:[(TMPreferences *)self->_prefs providerName]];
  if (!v2 && os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
  {
    sub_1000168F0();
  }

  return v2;
}

- (void)checkActiveTimeSourceRequired
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003244;
  block[3] = &unk_100028BC8;
  block[4] = self;
  dispatch_async([(TMDaemonCore *)self workloop], block);
}

- (void)rtcDidReset
{
  ++self->_rtcResetCount;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TMRTCResetNotification", 0, 0, 0);
  AnalyticsSendEventLazy();
}

- (void)handleShutdown
{
  if (![(TMDaemonCore *)self isSystemTimeSet])
  {

    [(TMDaemonCore *)self testAndApplySystemTime];
  }
}

- (TMDaemonCore)initWithTimeZoneRules:(id)rules monotonicClock:(id)clock preferences:(id)preferences workloop:(id)workloop
{
  v35.receiver = self;
  v35.super_class = TMDaemonCore;
  v10 = [(TMDaemonCore *)&v35 init];
  if (v10)
  {
    *(v10 + 7) = preferences;
    *(v10 + 9) = objc_alloc_init(NSMutableArray);
    *(v10 + 11) = objc_alloc_init(NSMutableDictionary);
    [*(v10 + 7) settimeofdayThreshold];
    *(v10 + 8) = v12;
    *(v10 + 21) = workloop;
    [v10 setClock:clock];
    *(v10 + 16) = -[TMCache initWithPath:clock:]([TMCache alloc], "initWithPath:clock:", @"/var/db/timed/com.apple.timed.plist", [v10 clock]);
    v13 = (v10 + 128);
    *(v10 + 17) = objc_alloc_init(TMTimeSynthesizerMonitor);
    *(v10 + 18) = objc_alloc_init(TMTapToRadar);
    if ([*(v10 + 16) isValid])
    {
      v14 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Loading data from cache.", buf, 2u);
      }

      v15 = 0;
    }

    else
    {
      sub_100015EA0(v10 + 16, @"/var/db/timed/com.apple.timed.plist", buf);
      v15 = *buf;
    }

    if ([objc_msgSend(*(v10 + 16) "bootUUID")])
    {
      v16 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        bootUUID = [*v13 bootUUID];
        rtcResetCount = [*v13 rtcResetCount];
        *buf = 138412546;
        *&buf[4] = bootUUID;
        v37 = 1024;
        v38 = rtcResetCount;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Boot UUID matches. Keeping RTC reset count. UUID:%@ Count:%u", buf, 0x12u);
      }

      *(v10 + 41) += [*(v10 + 16) rtcResetCount];
    }

    if ([*v13 rtcReset])
    {
      [v10 rtcDidReset];
    }

    v10[40] = [*(v10 + 16) systemTimeSet];
    [*(v10 + 16) accessoryUnc_s];
    *(v10 + 22) = v19;
    sub_100002938(v10);
    v20 = [*(v10 + 16) STF];
    if (v20)
    {
      v21 = [TMTimeSynthesizer newSynthesizerFromDataRepresentation:v20];
      *(v10 + 3) = v21;
      if (([objc_msgSend(v21 "name")] & 1) == 0)
      {
        sub_100015E08();
      }
    }

    v22 = *(v10 + 3);
    [*(v10 + 7) RTCWakeUncertainty];
    [v22 inflateHistoricalDataBy:?];
    if ([*(v10 + 16) TDTF])
    {
      v27 = [TMTimeSynthesizer newSynthesizerFromDataRepresentation:?];
      *(v10 + 2) = v27;
      if (([objc_msgSend(v27 "name")] & 1) == 0)
      {
        sub_100015E54();
      }
    }

    else
    {
      v23 = [TMTimeSynthesizer alloc];
      [*(v10 + 7) RTCFrequencyTolerance];
      v25 = v24;
      [*(v10 + 7) RTCFrequencyNoiseDensity];
      *(v10 + 2) = [(TMTimeSynthesizer *)v23 initWithClockAccuracy:@"TDTF" noiseDensity:v25 name:v26];
    }

    v28 = *(v10 + 2);
    [*(v10 + 7) RTCWakeUncertainty];
    [v28 inflateHistoricalDataBy:?];
    [v10 addTimeProvider:*(v10 + 2) forKey:@"Filtered"];
    *(v10 + 1) = [[TMTimeZoneManager alloc] initWithRules:rules delegate:v10];
    v29 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, *(v10 + 21));
    *(v10 + 19) = v29;
    dispatch_source_set_timer(v29, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v30 = *(v10 + 19);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000702C;
    handler[3] = &unk_100028BC8;
    handler[4] = v10;
    dispatch_source_set_event_handler(v30, handler);
    dispatch_activate(*(v10 + 19));
    if ([*(v10 + 7) shouldUseFilesystemTimestamp] && v15)
    {
      v31 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Injecting filesystem timestamp: %@", buf, 0xCu);
      }

      [v10 setSourceTime:v15];
    }

    v32 = objc_alloc_init(TMBackgroundNtpSource);
    *(v10 + 4) = v32;
    [(TMBackgroundNtpSource *)v32 setPreferences:*(v10 + 7)];
    [*(v10 + 16) lastNTPFetchAttempt];
    [*(v10 + 4) setLastFetchAttempt:?];
    [*(v10 + 4) setClock:{objc_msgSend(v10, "clock")}];
    [*(v10 + 4) setDaemonCore:v10];
    v33 = *(v10 + 7);
    if (v10[40] == 1)
    {
      [v33 NTPSchedulingInterval];
    }

    else
    {
      [v33 NTPUnsetSchedulingInterval];
    }

    [*(v10 + 4) setSchedulingInterval:?];
    sub_100013490(v10);
  }

  return v10;
}

- (void)dealloc
{
  self->bootUUID = 0;

  self->_plugins = 0;
  self->_pendingSetupTimeHandlers = 0;

  self->_timeProviders = 0;
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  self->_timeZoneManager = 0;
  self->_timeSynthesizer = 0;

  self->_STF = 0;
  self->_ntpSource = 0;
  [(TMDaemonCore *)self setClock:0];

  self->_prefs = 0;
  self->cache = 0;

  self->monitor = 0;
  self->radarHelper = 0;
  dispatch_source_cancel(self->proactiveBBFetchTimer);
  v3.receiver = self;
  v3.super_class = TMDaemonCore;
  [(TMDaemonCore *)&v3 dealloc];
}

- (void)addPlugin:(id)plugin
{
  plugins = self->_plugins;
  if (!plugins)
  {
    plugins = objc_alloc_init(NSMutableSet);
    self->_plugins = plugins;
  }

  [(NSMutableSet *)plugins addObject:plugin];
}

- (void)setSystemTimeSet:(BOOL)set
{
  setCopy = set;
  if (self->_systemTimeSet != set)
  {
    self->_systemTimeSet = set;
    prefs = self->_prefs;
    if (set)
    {
      [(TMPreferences *)prefs NTPSchedulingInterval];
    }

    else
    {
      [(TMPreferences *)prefs NTPUnsetSchedulingInterval];
    }

    [(TMBackgroundNtpSource *)self->_ntpSource setSchedulingInterval:?];
  }

  if (setCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    pendingSetupTimeHandlers = self->_pendingSetupTimeHandlers;
    v7 = [(NSMutableArray *)pendingSetupTimeHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(pendingSetupTimeHandlers);
          }

          (*(*(*(&v11 + 1) + 8 * i) + 16))();
        }

        v8 = [(NSMutableArray *)pendingSetupTimeHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_pendingSetupTimeHandlers removeAllObjects];
  }
}

- (void)setSourceTime:(id)time
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009728;
  v3[3] = &unk_100028E18;
  v3[4] = time;
  v3[5] = self;
  dispatch_async([(TMDaemonCore *)self workloop], v3);
}

- (void)setSourceTimeZone:(id)zone
{
  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = [zone objectForKey:@"TMTimeZone"];
    v14 = 2112;
    v15 = [zone objectForKey:@"TMSource"];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received timezone %@ from %@\n", buf, 0x16u);
  }

  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [zone objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(zone objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    v9 = v8;
    v10 = [zone objectForKeyedSubscript:@"TMTimeZone"];
    *buf = 138413058;
    v13 = @"TZ";
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,tz,%@", buf, 0x2Au);
  }

  AnalyticsSendEventLazy();
  if ([objc_msgSend(zone objectForKeyedSubscript:{@"TMSource", "isEqualToString:", @"Location"}])
  {
    sub_100016860(zone);
  }

  v11 = [[TMTimeZone alloc] initWithDictionary:zone];
  [(TMTimeZoneManager *)self->_timeZoneManager setSourceTimeZone:v11];
}

- (void)setRequiresActiveBBTime:(BOOL)time
{
  requiresActiveBBTime = self->_requiresActiveBBTime;
  self->_requiresActiveBBTime = time;
  if (requiresActiveBBTime != time)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TMBBTimeActiveNotification", 0, 0, 0);
    AnalyticsSendEventLazy();
  }
}

- (void)resetTime
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AB4C;
  block[3] = &unk_100028BC8;
  block[4] = self;
  dispatch_async([(TMDaemonCore *)self workloop], block);
}

- (void)resetTimeZone:(id)zone
{
  v5 = [zone objectForKey:@"TMResetTimeZoneReason"];
  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [zone objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(zone objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    *buf = 138413058;
    v10 = @"reset_tz";
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,reason,%@", buf, 0x2Au);
  }

  AnalyticsSendEventLazy();
  [(TMTimeZoneManager *)self->_timeZoneManager reset:v5, _NSConcreteStackBlock, 3221225472, sub_10000ADD0, &unk_100028F00, v5, zone];
}

- (TMTimeZone)computedTimeZone
{
  v3 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    timeZoneManager = self->_timeZoneManager;
    v6 = 138412290;
    v7 = timeZoneManager;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Asked for computed time zone: %@", &v6, 0xCu);
  }

  return [(TMTimeZoneManager *)self->_timeZoneManager currentTimeZone];
}

- (void)addTimeProvider:(id)provider forKey:(id)key
{
  if ([(NSMutableDictionary *)self->_timeProviders objectForKeyedSubscript:key]&& os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
  {
    sub_100016964();
  }

  [(NSMutableDictionary *)self->_timeProviders setObject:provider forKeyedSubscript:key];
}

- (void)executeCommand:(id)command withHandler:(id)handler
{
  machTime = [(TMMonotonicClock *)[(TMDaemonCore *)self clock] machTime];
  v8 = sub_100013EE4(self, [command objectForKeyedSubscript:@"TMCommand"]);
  if ([command objectForKeyedSubscript:@"TMRtcTime"] || !sub_100001C24())
  {
    v9 = 0;
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      v10 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        commandCopy = [command objectForKeyedSubscript:@"TMCommand"];
        sub_10000B140(&_mh_execute_header, v10, v13, "Command '%@' included mach time when not expected, forcing conversion", &v16);
      }
    }

    machTime = [sub_100001C24() unsignedLongLongValue];
    v8 = 1;
    v9 = 1;
  }

  if ([command objectForKeyedSubscript:@"TMRtcTime"] && objc_msgSend(command, "objectForKeyedSubscript:", @"TMMachTime") && (!objc_msgSend(objc_msgSend(command, "objectForKeyedSubscript:", @"TMCommand"), "isEqualToString:", @"TMSetSourceTime") || (objc_msgSend(objc_msgSend(command, "objectForKeyedSubscript:", @"TMSource"), "isEqualToString:", @"NTP") & 1) == 0) && (v11 = qword_100033218, os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR)))
  {
    v16 = 138412290;
    commandCopy = command;
    sub_10000B140(&_mh_execute_header, v11, v12, "Command included both mach and RTC time: %@", &v16);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else if (v8)
  {
LABEL_14:
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008394;
    v14[3] = &unk_100028C80;
    v15 = v9;
    v14[4] = self;
    v14[5] = command;
    v14[6] = handler;
    [(TMMonotonicClock *)[(TMDaemonCore *)self clock] montonicTimeForMachTime:machTime toQueue:[(TMDaemonCore *)self workloop] withCompletionHandler:v14];
    return;
  }

  sub_1000141E0(self, command, handler);
}

- (void)setSourceAvailable:(id)available
{
  v5 = [available objectForKeyedSubscript:@"TMSource"];
  if (sub_1000023E4())
  {
    sub_1000023FC();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  if (sub_1000023E4())
  {
    [available objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(available objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    sub_10000243C();
    sub_1000023FC();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  sub_100002254();
  sub_1000022A8();
  AnalyticsSendEventLazy();
  v16 = sub_1000021F0();
  sub_100012F48(v16, v17, v18, v19, v20, v21, v22, v23);
  [(TMTimeZoneManager *)self->_timeZoneManager setSourceAvailable:v5];
}

- (void)setSourceUnavailable:(id)unavailable
{
  v5 = [unavailable objectForKeyedSubscript:@"TMSource"];
  if (sub_1000023E4())
  {
    sub_1000023FC();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  if (sub_1000023E4())
  {
    [unavailable objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(unavailable objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    sub_10000243C();
    sub_1000023FC();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  sub_100002254();
  sub_1000022A8();
  AnalyticsSendEventLazy();
  [(TMTimeZoneManager *)self->_timeZoneManager setSourceUnavailable:v5];
  v16 = sub_1000021F0();
  sub_100012F48(v16, v17, v18, v19, v20, v21, v22, v23);
}

- (void)timeZoneManager:(id)manager didReset:(id)reset
{
  sub_100002938(self);
  sub_100012F48(self, "timeZoneWasReset:", reset, v6, v7, v8, v9, v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AutomaticTimeZoneUpdateNeeded", 0, 0, 1u);

  sub_1000158A0(self);
}

- (void)timeZoneManager:(id)manager didComputeResult:(id)result
{
  sub_100002880();
  if (([manager isEqual:*(v8 + 8)] & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v5 file:v4 lineNumber:@"TMDaemonCore.m" description:1738, @"Got unexpected callback from manager %@", manager];
  }

  [result olsonName];
  sub_100013DE4(v4);

  sub_100002938(v4);
}

- (void)timeZoneManager:(id)manager shouldFetch:(id)fetch
{
  sub_100002938(self);
  sub_100012F48(self, "fetch:", fetch, v6, v7, v8, v9, v10);

  sub_1000158A0(self);
}

@end