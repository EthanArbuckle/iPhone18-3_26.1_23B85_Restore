@interface SignalMonitor
+ (id)sharedInstance;
- (SignalMonitor)init;
- (void)checkDataMigrationStatus;
- (void)handleAudioSession;
- (void)handleAudioSessionNotification:(id)notification;
- (void)handleNFCSession;
- (void)handlePhoneCallNotification:(id)notification;
- (void)handleXPCEvent:(id)event;
- (void)initAVSystemControllerNotifications;
- (void)initAudioHandling;
- (void)initDataMigrationMonitoring;
- (void)initNFCHandling;
- (void)initializeMonitors;
- (void)startDataMigrationTimer;
@end

@implementation SignalMonitor

+ (id)sharedInstance
{
  if (qword_100036C10 != -1)
  {
    sub_100019290();
  }

  v3 = qword_100036C08;

  return v3;
}

- (void)handleAudioSession
{
  queue = [(SignalMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  state64 = 0;
  if (!notify_get_state(dword_100036C20, &state64))
  {
    if (state64)
    {
      [(SignalMonitor *)self setAudioActive:1];
      v4 = qword_100036C18;
      if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v14 = state64;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio playback started current_state %llu. Creating a resource hint", buf, 0xCu);
      }

      legacyAudioResourceHint = [(SignalMonitor *)self legacyAudioResourceHint];

      if (!legacyAudioResourceHint)
      {
        v11 = [[ResourceHint alloc] initWithResourceType:5 andState:1];
        [(SignalMonitor *)self setLegacyAudioResourceHint:v11];

        return;
      }

      legacyAudioResourceHint2 = [(SignalMonitor *)self legacyAudioResourceHint];
      v7 = legacyAudioResourceHint2;
      v8 = 1;
    }

    else
    {
      [(SignalMonitor *)self setAudioActive:0];
      legacyAudioResourceHint3 = [(SignalMonitor *)self legacyAudioResourceHint];

      if (!legacyAudioResourceHint3)
      {
        return;
      }

      v10 = qword_100036C18;
      if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio playback stopped. Dropping a resource hint", buf, 2u);
      }

      legacyAudioResourceHint2 = [(SignalMonitor *)self legacyAudioResourceHint];
      v7 = legacyAudioResourceHint2;
      v8 = 0;
    }

    [legacyAudioResourceHint2 updateState:v8];

    return;
  }

  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_ERROR))
  {
    sub_1000192D8();
  }
}

- (void)handleNFCSession
{
  queue = [(SignalMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  state64 = 0;
  if (!notify_get_state(dword_100036C24, &state64))
  {
    if (state64 && ![(SignalMonitor *)self nfcActive])
    {
      [(SignalMonitor *)self setNfcActive:1];
      nfcResourceHint = [(SignalMonitor *)self nfcResourceHint];

      if (nfcResourceHint)
      {
        nfcResourceHint2 = [(SignalMonitor *)self nfcResourceHint];
        [nfcResourceHint2 updateState:1];
      }

      else
      {
        v6 = qword_100036C18;
        if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NFC session started. Creating a resource hint", buf, 2u);
        }

        nfcResourceHint2 = [[ResourceHint alloc] initWithResourceType:4 andState:1];
        [(SignalMonitor *)self setNfcResourceHint:nfcResourceHint2];
      }

      v7 = dispatch_time(0, 5000000000);
      queue2 = [(SignalMonitor *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000016CC;
      block[3] = &unk_10002C738;
      block[4] = self;
      dispatch_after(v7, queue2, block);
    }

    else if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_ERROR))
    {
      sub_1000030C4();
    }
  }
}

- (SignalMonitor)init
{
  v8.receiver = self;
  v8.super_class = SignalMonitor;
  v2 = [(SignalMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.powerexperieced.signalmonitor", v3);
    [(SignalMonitor *)v2 setQueue:v4];

    v5 = os_log_create("com.apple.powerexperienced", "signalMonitor");
    v6 = qword_100036C18;
    qword_100036C18 = v5;
  }

  return v2;
}

- (void)initializeMonitors
{
  [(SignalMonitor *)self initNFCHandling];
  [(SignalMonitor *)self initAudioHandling];
  [(SignalMonitor *)self initDataMigrationMonitoring];
  [(SignalMonitor *)self initAVSystemControllerNotifications];
  queue = [(SignalMonitor *)self queue];
  v4 = [CameraMonitor monitorWithQueue:queue];

  v5 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initialized signal monitors", v6, 2u);
  }
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  queue = [(SignalMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EC34;
  v7[3] = &unk_10002C698;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)initAudioHandling
{
  if (notify_register_check("com.apple.coreaudio.IORunning", &dword_100036C20))
  {
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_ERROR))
    {
      sub_1000192A4();
    }
  }

  else
  {
    queue = [(SignalMonitor *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ED98;
    block[3] = &unk_10002C738;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)initAVSystemControllerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v14[0] = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
  v14[1] = AVSystemController_CallIsActiveDidChangeNotification;
  v4 = [NSArray arrayWithObjects:v14 count:2];
  v13 = 0;
  v5 = [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleAudioSessionNotification:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v3];

    v8 = qword_100036C18;
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered for AV System Controller notifications", buf, 2u);
    }
  }

  else
  {
    v9 = qword_100036C18;
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_ERROR))
    {
      sub_10001930C(v6, v9);
    }
  }

  queue = [(SignalMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EF90;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleAudioSessionNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SignalMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F278;
  v7[3] = &unk_10002C698;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)handlePhoneCallNotification:(id)notification
{
  notificationCopy = notification;
  v5 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received phone call notification %@", &v13, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:AVSystemController_CallIsActiveNotificationParameter];

  v8 = qword_100036C18;
  v9 = os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phone call started", &v13, 2u);
    }

    phoneCallResourceHint = [(SignalMonitor *)self phoneCallResourceHint];

    if (!phoneCallResourceHint)
    {
      phoneCallResourceHint2 = [[ResourceHint alloc] initWithResourceType:16 andState:1];
      [(SignalMonitor *)self setPhoneCallResourceHint:phoneCallResourceHint2];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    phoneCallResourceHint2 = [(SignalMonitor *)self phoneCallResourceHint];
    [phoneCallResourceHint2 updateState:0];
    goto LABEL_12;
  }

  if (v9)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phone call ended", &v13, 2u);
  }

  phoneCallResourceHint3 = [(SignalMonitor *)self phoneCallResourceHint];

  if (phoneCallResourceHint3)
  {
    goto LABEL_11;
  }

LABEL_13:
}

- (void)initNFCHandling
{
  if (notify_register_check("com.apple.request.hipuncap", &dword_100036C24))
  {
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_ERROR))
    {
      sub_100019384();
    }
  }

  else
  {
    queue = [(SignalMonitor *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F704;
    block[3] = &unk_10002C738;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)initDataMigrationMonitoring
{
  queue = [(SignalMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F794;
  block[3] = &unk_10002C738;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startDataMigrationTimer
{
  queue = [(SignalMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(SignalMonitor *)self queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
  [(SignalMonitor *)self setDataMigrationTimer:v5];

  dataMigrationTimer = [(SignalMonitor *)self dataMigrationTimer];
  v7 = dispatch_time(0, 0);
  dispatch_source_set_timer(dataMigrationTimer, v7, 0x45D964B800uLL, 0x3B9ACA00uLL);

  dataMigrationTimer2 = [(SignalMonitor *)self dataMigrationTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F91C;
  handler[3] = &unk_10002C738;
  handler[4] = self;
  dispatch_source_set_event_handler(dataMigrationTimer2, handler);

  dataMigrationTimer3 = [(SignalMonitor *)self dataMigrationTimer];
  dispatch_resume(dataMigrationTimer3);

  v10 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started DataMigration monitoring timer (immediate first check, then 5 minute intervals)", v11, 2u);
  }
}

- (void)checkDataMigrationStatus
{
  queue = [(SignalMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = DMIsMigrationNeeded();
  v5 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DataMigration status check: migrationNeeded=%d", v16, 8u);
  }

  dataMigrationResourceHint = [(SignalMonitor *)self dataMigrationResourceHint];
  v7 = dataMigrationResourceHint;
  if (v4)
  {

    if (v7)
    {
      dataMigrationResourceHint2 = [(SignalMonitor *)self dataMigrationResourceHint];
      [dataMigrationResourceHint2 updateState:1];
    }

    else
    {
      v14 = qword_100036C18;
      if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DataMigration needed. Creating resource hint", v16, 2u);
      }

      v15 = [[ResourceHint alloc] initWithResourceType:18 andState:1];
      [(SignalMonitor *)self setDataMigrationResourceHint:v15];
    }
  }

  else
  {

    if (v7)
    {
      v9 = qword_100036C18;
      if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DataMigration no longer needed. Releasing resource hint", v16, 2u);
      }

      dataMigrationResourceHint3 = [(SignalMonitor *)self dataMigrationResourceHint];
      [dataMigrationResourceHint3 updateState:0];
    }

    dataMigrationTimer = [(SignalMonitor *)self dataMigrationTimer];

    if (dataMigrationTimer)
    {
      dataMigrationTimer2 = [(SignalMonitor *)self dataMigrationTimer];
      dispatch_source_cancel(dataMigrationTimer2);

      [(SignalMonitor *)self setDataMigrationTimer:0];
      v13 = qword_100036C18;
      if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DataMigration monitoring timer stopped - migration complete", v16, 2u);
      }
    }
  }
}

@end