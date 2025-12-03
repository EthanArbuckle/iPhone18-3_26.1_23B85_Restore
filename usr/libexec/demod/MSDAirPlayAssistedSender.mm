@interface MSDAirPlayAssistedSender
+ (id)sharedInstance;
- (BOOL)_activateSenderUsingParameters:(id)parameters discoveryMode:(unint64_t)mode;
- (BOOL)_isAirPlayStreaming;
- (BOOL)_startAWDLDiscoveryUsingBonjour:(BOOL)bonjour;
- (BOOL)activateSenderUsingParametersData:(id)data discoveryMode:(unint64_t)mode;
- (BOOL)isSenderReady;
- (MSDAirPlayAssistedSender)init;
- (id)_NSStringFromSenderState:(unint64_t)state;
- (void)_handleAVOutputDeviceDidChangeNotification:(id)notification;
- (void)_handleTimeoutTimerFired;
- (void)_startTimeoutTimer;
- (void)_stopAWDLDiscovery;
- (void)_stopActivation;
- (void)_stopTimoutTimer;
@end

@implementation MSDAirPlayAssistedSender

+ (id)sharedInstance
{
  if (qword_1001A56A8 != -1)
  {
    sub_1000CEF98();
  }

  v3 = qword_1001A56B0;

  return v3;
}

- (MSDAirPlayAssistedSender)init
{
  v11.receiver = self;
  v11.super_class = MSDAirPlayAssistedSender;
  v2 = [(MSDAirPlayAssistedSender *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileStoreDemo.AirPlayAsssitedSender", v3);
    [(MSDAirPlayAssistedSender *)v2 setQueue:v4];

    v5 = +[AVOutputContext sharedSystemScreenContext];
    [(MSDAirPlayAssistedSender *)v2 setAvOutputContext:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleAVOutputDeviceDidChangeNotification:" name:AVOutputContextOutputDeviceDidChangeNotification object:0];

    if ([(MSDAirPlayAssistedSender *)v2 _isAirPlayStreaming])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [(MSDAirPlayAssistedSender *)v2 setState:v7];
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MSDAirPlayAssistedSender *)v2 _NSStringFromSenderState:[(MSDAirPlayAssistedSender *)v2 state]];
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Sender initialized to state: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isSenderReady
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MSDAirPlayAssistedSender *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B82C;
  v5[3] = &unk_10016A948;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)activateSenderUsingParametersData:(id)data discoveryMode:(unint64_t)mode
{
  dataCopy = data;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Activating sender in discovery mode: %lu", buf, 0xCu);
  }

  v19 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v19];
  v9 = v19;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    queue = [(MSDAirPlayAssistedSender *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003BAAC;
    block[3] = &unk_10016A970;
    v17 = &v20;
    block[4] = self;
    v16 = v8;
    modeCopy2 = mode;
    dispatch_sync(queue, block);

    v11 = *(v21 + 24);
  }

  else
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      sub_1000CEFAC(localizedDescription, buf, v12);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v11 & 1;
}

- (BOOL)_isAirPlayStreaming
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  avOutputContext = [(MSDAirPlayAssistedSender *)self avOutputContext];
  outputDevices = [avOutputContext outputDevices];

  v4 = [outputDevices countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(outputDevices);
        }

        if (![*(*(&v9 + 1) + 8 * i) deviceType])
        {
          LODWORD(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [outputDevices countByEnumeratingWithState:&v9 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Sender has AirPlay streaming=%{BOOL}d", buf, 8u);
  }

  return v4;
}

- (BOOL)_activateSenderUsingParameters:(id)parameters discoveryMode:(unint64_t)mode
{
  parametersCopy = parameters;
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MSDAirPlayAssistedSender *)self state]!= 1)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF004(self);
    }

    goto LABEL_10;
  }

  [(MSDAirPlayAssistedSender *)self setState:2];
  if (!mode)
  {
    goto LABEL_12;
  }

  if (mode != 2)
  {
    if (mode != 1)
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF118();
      }

LABEL_17:

      goto LABEL_18;
    }

    if (![(MSDAirPlayAssistedSender *)self _startAWDLDiscoveryUsingBonjour:1])
    {
      goto LABEL_18;
    }

LABEL_12:
    [(MSDAirPlayAssistedSender *)self _startTimeoutTimer];
    if (!APSXPCClientSendCommandCreatingReply())
    {
      v9 = 1;
      goto LABEL_14;
    }

    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF0A4();
    }

    goto LABEL_17;
  }

  if ([(MSDAirPlayAssistedSender *)self _startAWDLDiscoveryUsingBonjour:0])
  {
    goto LABEL_12;
  }

LABEL_18:
  sub_1000CF18C(self);
LABEL_10:
  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)_startAWDLDiscoveryUsingBonjour:(BOOL)bonjour
{
  bonjourCopy = bonjour;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = bonjourCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Starting AWDL discovery using bonjour service: %{BOOL}d", v12, 8u);
  }

  if (!bonjourCopy)
  {
    v8 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:2];
    [(MSDAirPlayAssistedSender *)self setAvDiscoverySession:v8];

    avDiscoverySession = [(MSDAirPlayAssistedSender *)self avDiscoverySession];

    if (avDiscoverySession)
    {
      avDiscoverySession2 = [(MSDAirPlayAssistedSender *)self avDiscoverySession];
      [avDiscoverySession2 setDiscoveryMode:2];

      return 1;
    }

    sub_1000CF1BC();
    return 0;
  }

  if (BonjourBrowser_CreateEx())
  {
    sub_1000CF220();
    return 0;
  }

  [(MSDAirPlayAssistedSender *)self bonjourBrowser];
  queue = [(MSDAirPlayAssistedSender *)self queue];
  BonjourBrowser_SetDispatchQueue();

  [(MSDAirPlayAssistedSender *)self bonjourBrowser];
  if (BonjourBrowser_Start())
  {
    sub_1000CF2C0();
    return 0;
  }

  v7 = 1;
  sleep(1u);
  return v7;
}

- (void)_startTimeoutTimer
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(MSDAirPlayAssistedSender *)self queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
  [(MSDAirPlayAssistedSender *)self setTimeoutTimer:v5];

  timeoutTimer = [(MSDAirPlayAssistedSender *)self timeoutTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003C0A4;
  handler[3] = &unk_100169B70;
  handler[4] = self;
  dispatch_source_set_event_handler(timeoutTimer, handler);

  timeoutTimer2 = [(MSDAirPlayAssistedSender *)self timeoutTimer];
  v8 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(timeoutTimer2, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  timeoutTimer3 = [(MSDAirPlayAssistedSender *)self timeoutTimer];
  dispatch_resume(timeoutTimer3);
}

- (void)_stopActivation
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MSDAirPlayAssistedSender *)self _stopAWDLDiscovery];

  [(MSDAirPlayAssistedSender *)self _stopTimoutTimer];
}

- (void)_stopAWDLDiscovery
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Stopping AWDL discovery.", v7, 2u);
  }

  avDiscoverySession = [(MSDAirPlayAssistedSender *)self avDiscoverySession];

  if (avDiscoverySession)
  {
    avDiscoverySession2 = [(MSDAirPlayAssistedSender *)self avDiscoverySession];
    [avDiscoverySession2 setDiscoveryMode:0];

    [(MSDAirPlayAssistedSender *)self setAvDiscoverySession:0];
  }

  if ([(MSDAirPlayAssistedSender *)self bonjourBrowser])
  {
    [(MSDAirPlayAssistedSender *)self bonjourBrowser];
    BonjourBrowser_Stop();
    CFRelease([(MSDAirPlayAssistedSender *)self bonjourBrowser]);
    [(MSDAirPlayAssistedSender *)self setBonjourBrowser:0];
  }
}

- (void)_stopTimoutTimer
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Stopping timeout timer.", v7, 2u);
  }

  timeoutTimer = [(MSDAirPlayAssistedSender *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(MSDAirPlayAssistedSender *)self timeoutTimer];
    dispatch_source_cancel(timeoutTimer2);

    [(MSDAirPlayAssistedSender *)self setTimeoutTimer:0];
  }
}

- (void)_handleTimeoutTimerFired
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDAirPlayAssistedSender: Timed out waiting for sender to start streaming!", v5, 2u);
  }

  [(MSDAirPlayAssistedSender *)self _stopActivation];
  [(MSDAirPlayAssistedSender *)self setState:1];
}

- (id)_NSStringFromSenderState:(unint64_t)state
{
  if (state > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10016A990 + state);
  }
}

- (void)_handleAVOutputDeviceDidChangeNotification:(id)notification
{
  queue = [(MSDAirPlayAssistedSender *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C3E8;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(queue, block);
}

@end