@interface WifiScannerThread
- (WifiScannerThread)init;
- (WifiScannerThread)initWithBackend:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)runWifiThread:(id)a3;
- (void)setStopExpected;
@end

@implementation WifiScannerThread

- (WifiScannerThread)init
{
  [(WifiScannerThread *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WifiScannerThread)initWithBackend:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WifiScannerThread;
  v6 = [(WifiScannerThread *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 16) = 0;
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

- (void)setStopExpected
{
  std::mutex::lock((self + 24));
  *(self + 16) = 1;

  std::mutex::unlock((self + 24));
}

- (void)dealloc
{
  std::mutex::lock((self + 24));
  if (*(self + 16))
  {
    std::mutex::unlock((self + 24));
    v3.receiver = self;
    v3.super_class = WifiScannerThread;
    [(WifiScannerThread *)&v3 dealloc];
  }

  else
  {
    sub_100386B84(&v4);

    abort_report_np();
    __break(1u);
  }
}

- (void)runWifiThread:(id)a3
{
  v4 = a3;
  Current = CFRunLoopGetCurrent();
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&_mh_execute_header, "Wifi Framework", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
  os_activity_scope_enter(v7, &state);
  v8 = [*(self + 1) onQueueAllocManagerWithRunLoop:Current];
  if (qword_10045B050 != -1)
  {
    sub_100386CE0();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(self + 1) wifiThreadRunLoop];
    v11 = *(self + 1);
    *buf = 134218240;
    *&buf[4] = v10;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Created runloop %p on %p", buf, 0x16u);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if (qword_10045B050 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failure, wifi manager failed to initialize", buf, 2u);
    }

LABEL_9:
    v13 = [*(self + 1) wifiThreadShutdown];
    v14 = *(self + 1);
    *(self + 1) = 0;

    os_activity_scope_leave(&state);
    objc_autoreleasePoolPop(v6);
    if (v8)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CE0();
      }

      v15 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Scheduling block onto runloop to unblock init", buf, 2u);
      }

      v7 = kCFRunLoopCommonModes;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002EF914;
      block[3] = &unk_100432828;
      v20 = v4;
      CFRunLoopPerformBlock(Current, kCFRunLoopCommonModes, block);
      if (qword_10045B050 != -1)
      {
        sub_100386CE0();
      }

      Current = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, Current, OS_LOG_TYPE_DEFAULT, "Starting WiFi runloop", buf, 2u);
      }

      CFRunLoopRun();
    }

    else
    {
      dispatch_semaphore_signal(v4);
      [(WifiScannerThread *)self setStopExpected];
    }

    dispatch_semaphore_signal(v13);
    std::mutex::lock((self + 24));
    if (*(self + 16))
    {
      break;
    }

    sub_100386D08(buf);

    v17 = 606;
    v18 = "[WifiScannerThread runWifiThread:]";
    v16 = "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/wifiscanning/sensor/backend/IOSWifiScannerBackend.mm";
    abort_report_np();
    __break(1u);
LABEL_23:
    sub_100386CE0();
  }

  std::mutex::unlock((self + 24));
}

- (id).cxx_construct
{
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 10) = 0;
  return self;
}

@end