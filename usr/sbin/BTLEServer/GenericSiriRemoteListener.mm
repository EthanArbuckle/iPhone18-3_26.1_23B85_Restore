@interface GenericSiriRemoteListener
+ (id)instance;
- (GenericSiriRemoteListener)init;
- (id)allocHIDQueue;
- (void)dealloc;
- (void)doapAudioDidStop:(id)a3;
- (void)doapAudioWillStart:(id)a3;
- (void)handleAudioData:(id)a3;
- (void)setUpHidHandlers;
- (void)waitForSiriAudioToStop:(id)a3;
@end

@implementation GenericSiriRemoteListener

+ (id)instance
{
  if (qword_1000DDA78 != -1)
  {
    sub_100072AF8();
  }

  v3 = qword_1000DDA70;

  return v3;
}

- (void)dealloc
{
  hidManager = self->_hidManager;
  if (hidManager)
  {
    [(HIDManager *)hidManager cancel];
    [(HIDManager *)self->_hidManager close];
  }

  eventQueue = self->_eventQueue;
  self->_eventQueue = 0;

  v5.receiver = self;
  v5.super_class = GenericSiriRemoteListener;
  [(GenericSiriRemoteListener *)&v5 dealloc];
}

- (void)setUpHidHandlers
{
  [(HIDManager *)self->_hidManager setInputElementMatching:&off_1000C41C0];
  hidManager = self->_hidManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017F30;
  v6[3] = &unk_1000BD700;
  v6[4] = self;
  [(HIDManager *)hidManager setInputElementHandler:v6];
  [(HIDManager *)self->_hidManager setDeviceMatching:&off_1000C4210];
  v4 = self->_hidManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017F88;
  v5[3] = &unk_1000BD728;
  v5[4] = self;
  [(HIDManager *)v4 setDeviceNotificationHandler:v5];
  [(HIDManager *)self->_hidManager setDispatchQueue:self->_eventQueue];
  [(HIDManager *)self->_hidManager open];
  [(HIDManager *)self->_hidManager activate];
}

- (id)allocHIDQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], v2);

  return v4;
}

- (GenericSiriRemoteListener)init
{
  v12.receiver = self;
  v12.super_class = GenericSiriRemoteListener;
  v2 = [(GenericSiriRemoteListener *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    audioBuffer = v2->_audioBuffer;
    v2->_audioBuffer = v3;

    v5 = dispatch_semaphore_create(1);
    doapAudioStart = v2->_doapAudioStart;
    v2->_doapAudioStart = v5;

    v7 = objc_alloc_init(HIDManager);
    hidManager = v2->_hidManager;
    v2->_hidManager = v7;

    v9 = [(GenericSiriRemoteListener *)v2 allocHIDQueue];
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v9;
  }

  return v2;
}

- (void)handleAudioData:(id)a3
{
  v4 = a3;
  v17 = 0;
  if ([v4 length] <= 3)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072B8C();
    }

    goto LABEL_22;
  }

  [v4 getBytes:&v17 range:{4, 1}];
  if ([(GenericSiriRemoteListener *)self state]== 4)
  {
    goto LABEL_22;
  }

  if (v4 && v17)
  {
    v5 = +[NSDate date];
    [(GenericSiriRemoteListener *)self setLastAudioDate:v5];

    v6 = [NSData dataWithData:v4];
    if (objc_opt_class())
    {
      v7 = +[SLGLog sharedInstance];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100018564;
      v15[3] = &unk_1000BD3E8;
      v16 = v6;
      [v7 logBlock:v15];
    }

    v8 = self;
    objc_sync_enter(v8);
    v9 = [(GenericSiriRemoteListener *)v8 audioBuffer];

    if (v9)
    {
      v10 = [(GenericSiriRemoteListener *)v8 audioBuffer];
      [v10 addObject:v6];
    }

    else
    {
      v10 = [(GenericSiriRemoteListener *)v8 doapAudioRelay];
      [v10 sendAudioFrame:v6];
    }

    objc_sync_exit(v8);
LABEL_21:

    goto LABEL_22;
  }

  if (!v17)
  {
    if (objc_opt_class())
    {
      v11 = +[SLGLog sharedInstance];
      [v11 logBlock:&stru_1000BD748];
    }

    v12 = [(GenericSiriRemoteListener *)self doapAudioStop];

    if (v12)
    {
      v13 = [(GenericSiriRemoteListener *)self doapAudioStop];
      dispatch_semaphore_signal(v13);
    }

    v6 = self;
    objc_sync_enter(v6);
    v14 = [(GenericSiriRemoteListener *)v6 audioBuffer];
    [v14 removeAllObjects];

    objc_sync_exit(v6);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072B4C();
  }

LABEL_22:
}

- (void)doapAudioWillStart:(id)a3
{
  v4 = a3;
  if ([(GenericSiriRemoteListener *)self state]== 4)
  {
    v5 = [NSString stringWithFormat:@"GenericSiriRemote stopped (disconnected)"];
    v11 = NSLocalizedDescriptionKey;
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    v4[2](v4, v7);
  }

  else
  {
    eventQueue = self->_eventQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000187A4;
    block[3] = &unk_1000BD770;
    block[4] = self;
    v10 = v4;
    dispatch_async(eventQueue, block);
  }
}

- (void)waitForSiriAudioToStop:(id)a3
{
  v4 = a3;
  if ([(GenericSiriRemoteListener *)self state]== 4)
  {
    v5 = [NSString stringWithFormat:@"GenericSiriRemote stopped (disconnected)"];
    v43 = NSLocalizedDescriptionKey;
    v44 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    v4[2](v4, v7);
    v8 = [(GenericSiriRemoteListener *)self doapAudioStart];
    dispatch_semaphore_signal(v8);

    goto LABEL_18;
  }

  v9 = [(GenericSiriRemoteListener *)self lastAudioDate];
  [v9 timeIntervalSinceNow];
  v11 = fabs(v10);

  if (v11 >= 0.105)
  {
    v25 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [(GenericSiriRemoteListener *)self lastAudioDate];
      [v27 timeIntervalSinceNow];
      *buf = 134217984;
      v42 = fabs(v28) * 1000.0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Have not received audio data for %f ms. Stop Siri session.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v12 = [(GenericSiriRemoteListener *)self doapAudioStop];

  if (v12)
  {
    v13 = [(GenericSiriRemoteListener *)self lastAudioDate];
    [v13 timeIntervalSinceNow];
    v15 = v14;

    v16 = [(GenericSiriRemoteListener *)self doapAudioStop];
    v17 = dispatch_time(0, 1000000 * vcvtpd_s64_f64((v15 + 0.105) * 1000.0));
    v18 = dispatch_semaphore_wait(v16, v17);

    v19 = qword_1000DDBC8;
    v20 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = v19;
        v22 = [(GenericSiriRemoteListener *)self lastAudioDate];
        [v22 timeIntervalSinceNow];
        *buf = 134217984;
        v42 = fabs(v23) * 1000.0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Siri audio data %f ms ago.", buf, 0xCu);
      }

      eventQueue = self->_eventQueue;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100019134;
      v37[3] = &unk_1000BD770;
      v37[4] = self;
      v38 = v4;
      dispatch_async(eventQueue, v37);

      goto LABEL_18;
    }

    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received empty audio input report. Stop Siri session.", buf, 2u);
    }

LABEL_17:
    [(GenericSiriRemoteListener *)self setDoapAudioStop:0];
    v4[2](v4, 0);
    v34 = [(GenericSiriRemoteListener *)self doapAudioStart];
    dispatch_semaphore_signal(v34);

    v35 = self;
    objc_sync_enter(v35);
    v36 = objc_alloc_init(NSMutableArray);
    [(GenericSiriRemoteListener *)v35 setAudioBuffer:v36];

    objc_sync_exit(v35);
    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100071DCC();
  }

  v39 = NSLocalizedDescriptionKey;
  v40 = @"No doapAudioStop semaphore";
  v29 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v30 = [NSError errorWithDomain:NSMachErrorDomain code:-536870165 userInfo:v29];

  v4[2](v4, v30);
  v31 = [(GenericSiriRemoteListener *)self doapAudioStart];
  dispatch_semaphore_signal(v31);

  v32 = self;
  objc_sync_enter(v32);
  v33 = objc_alloc_init(NSMutableArray);
  [(GenericSiriRemoteListener *)v32 setAudioBuffer:v33];

  objc_sync_exit(v32);
LABEL_18:
}

- (void)doapAudioDidStop:(id)a3
{
  v4 = a3;
  if ([(GenericSiriRemoteListener *)self state]== 4)
  {
    v5 = [NSString stringWithFormat:@"GenericSiriRemote stopped (disconnected)"];
    v12 = NSLocalizedDescriptionKey;
    v13 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    v4[2](v4, v7);
    v8 = [(GenericSiriRemoteListener *)self doapAudioStart];
    dispatch_semaphore_signal(v8);
  }

  else
  {
    eventQueue = self->_eventQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000192E4;
    block[3] = &unk_1000BD770;
    block[4] = self;
    v11 = v4;
    dispatch_async(eventQueue, block);
  }
}

@end