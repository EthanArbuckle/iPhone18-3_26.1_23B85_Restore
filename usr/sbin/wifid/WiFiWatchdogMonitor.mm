@interface WiFiWatchdogMonitor
- (WiFiWatchdogMonitor)initWithServiceName:(id)name;
- (id)description;
- (void)checkForTimeout;
- (void)dealloc;
- (void)handleCrashNotificationWithID:(unint64_t)d andCPUName:(id)name;
- (void)handleWatchdog:(char *)watchdog;
- (void)handleWatchdogTriggered;
- (void)setWatchdogCallback:(id)callback context:(void *)context;
@end

@implementation WiFiWatchdogMonitor

- (WiFiWatchdogMonitor)initWithServiceName:(id)name
{
  v4 = IOServiceNameMatching("AppleWLANDriver");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);

  return [(WiFiWatchdogMonitor *)self initWithIOService:MatchingService];
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[WiFiWatchdogMonitor dealloc]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: cleaning up.", buf, 0xCu);
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;

  watchdogStartedTimestamp = self->_watchdogStartedTimestamp;
  self->_watchdogStartedTimestamp = 0;

  mappedFile = self->mappedFile;
  if (mappedFile)
  {
    munmap(mappedFile, self->mappedSize);
    self->mappedFile = 0;
    self->mappedSize = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  driverConnectHandle = self->_driverConnectHandle;
  if (driverConnectHandle)
  {
    IOServiceClose(driverConnectHandle);
  }

  wdTriggeredIterator = self->_wdTriggeredIterator;
  if (wdTriggeredIterator)
  {
    IOObjectRelease(wdTriggeredIterator);
  }

  crashIDIterator = self->_crashIDIterator;
  if (crashIDIterator)
  {
    IOObjectRelease(crashIDIterator);
  }

  driverService = self->_driverService;
  if (driverService)
  {
    IOObjectRelease(driverService);
  }

  v11.receiver = self;
  v11.super_class = WiFiWatchdogMonitor;
  [(WiFiWatchdogMonitor *)&v11 dealloc];
}

- (void)handleWatchdogTriggered
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[WiFiWatchdogMonitor handleWatchdogTriggered]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", buf, 0xCu);
  }

  v3 = open([@"/tmp/Centauri/wifi-assert-strings.bin" fileSystemRepresentation], 0);
  if (v3 < 0)
  {
    sub_1001AAD68();
  }

  else
  {
    v4 = v3;
    memset(&v10, 0, sizeof(v10));
    fstat(v3, &v10);
    st_size = v10.st_size;
    self->mappedSize = v10.st_size;
    self->mappedFile = mmap(0, st_size, 1, 1, v4, 0);
    close(v4);
    mappedFile = self->mappedFile;
    if (mappedFile == -1)
    {
      self->mappedFile = 0;
    }

    else if (mappedFile)
    {
      v7 = +[NSDate date];
      [(WiFiWatchdogMonitor *)self setWatchdogStartedTimestamp:v7];

      v8 = os_transaction_create();
      osTransaction = self->_osTransaction;
      self->_osTransaction = v8;

      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[WiFiWatchdogMonitor handleWatchdogTriggered]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: error mapping", buf, 0xCu);
    }
  }

LABEL_10:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[WiFiWatchdogMonitor handleWatchdogTriggered]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: LEAVE", buf, 0xCu);
  }
}

- (void)handleCrashNotificationWithID:(unint64_t)d andCPUName:(id)name
{
  nameCopy = name;
  v36 = [NSString stringWithFormat:@"</dict></plist>"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[WiFiWatchdogMonitor handleCrashNotificationWithID:andCPUName:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", buf, 0xCu);
  }

  mappedFile = self->mappedFile;
  v35 = nameCopy;
  if (!mappedFile)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1001AB2E4();
    }

    v28 = 0;
    v25 = 0;
    v31 = 0;
    goto LABEL_25;
  }

  v8 = [[NSString alloc] initWithBytes:self->mappedFile length:memmem(mappedFile encoding:{self->mappedSize, "<dict>", 6uLL) - self->mappedFile, 4}];
  nameCopy = [NSString stringWithFormat:@"<key>%@</key>", nameCopy];
  uTF8String = [nameCopy UTF8String];
  mappedSize = self->mappedSize;
  v11 = strlen(uTF8String);
  v12 = memmem(self->mappedFile, mappedSize, uTF8String, v11);
  if (!v12)
  {
    v31 = nameCopy;
    sub_1001AB230(nameCopy, v8);
    v28 = 0;
    v25 = 0;
LABEL_25:
    v14 = 0;
    v30 = 0;
    v26 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [NSString stringWithFormat:@"<key>0x%llx</key>", d];
  v15 = (self->mappedFile - v13);
  uTF8String2 = [v14 UTF8String];
  v17 = strlen(uTF8String2);
  v18 = memmem(v13, &v15[mappedSize], uTF8String2, v17);
  if (!v18)
  {
    sub_1001AB17C(v14, v8);
LABEL_30:
    v28 = 0;
    v25 = 0;
    v30 = 0;
    v26 = 0;
LABEL_31:
    v31 = nameCopy;
    goto LABEL_16;
  }

  v19 = memmem(v18, &v15[mappedSize], "<dict>", 6uLL);
  v20 = memmem(v19, &v15[mappedSize], "</dict>", 7uLL);
  if (!v20)
  {
    sub_1001AB0BC(v8);
    goto LABEL_30;
  }

  v21 = [[NSString alloc] initWithBytes:v19 length:v20 - v19 encoding:4];
  if (!v21)
  {
    sub_1001AB010(v8);
    goto LABEL_30;
  }

  v22 = v21;
  v23 = [NSString stringWithFormat:@"%@%@%@", v8, v21, v36];
  if (!v23)
  {
    sub_1001AAF5C(v22, v8);
    goto LABEL_30;
  }

  v24 = v23;
  v25 = [v23 dataUsingEncoding:4];
  v37 = 0;
  v26 = [NSPropertyListSerialization propertyListWithData:v25 options:0 format:0 error:&v37];
  v27 = v37;
  v28 = v27;
  if (!v26)
  {
    sub_1001AAE98(v24, v22, v8);
    v30 = 0;
    goto LABEL_31;
  }

  v29 = v27;
  v30 = [v26 mutableCopy];
  [v30 setObject:v35 forKey:@"cpu"];
  [v30 setObject:v14 forKey:@"assertId"];
  if (IORegistryEntrySetCFProperties(self->_driverService, v30) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1001AAE10();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[WiFiWatchdogMonitor handleCrashNotificationWithID:andCPUName:]";
    v40 = 2112;
    v41 = v26;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: translated %@\n", buf, 0x16u);
  }

  v31 = nameCopy;
  v28 = v29;
LABEL_16:
  [(WiFiWatchdogMonitor *)self setWatchdogStartedTimestamp:0];
  v32 = self->mappedFile;
  if (v32)
  {
    munmap(v32, self->mappedSize);
    self->mappedFile = 0;
    self->mappedSize = 0;
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[WiFiWatchdogMonitor handleCrashNotificationWithID:andCPUName:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: LEAVE", buf, 0xCu);
  }
}

- (void)checkForTimeout
{
  v3 = +[NSDate date];
  watchdogStartedTimestamp = [(WiFiWatchdogMonitor *)self watchdogStartedTimestamp];
  if (watchdogStartedTimestamp)
  {
    v5 = watchdogStartedTimestamp;
    watchdogStartedTimestamp2 = [(WiFiWatchdogMonitor *)self watchdogStartedTimestamp];
    [v3 timeIntervalSinceDate:watchdogStartedTimestamp2];
    v8 = v7;

    if (v8 >= 5.0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1001AB368();
      }

      internalQ = [(WiFiWatchdogMonitor *)self internalQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100109DB0;
      block[3] = &unk_10025E9B8;
      block[4] = self;
      dispatch_sync(internalQ, block);
    }
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"< %@:%p ", v4, self];

  [v5 appendString:@">"];

  return v5;
}

- (void)handleWatchdog:(char *)watchdog
{
  watchdogCallback = [(WiFiWatchdogMonitor *)self watchdogCallback];

  if (watchdogCallback)
  {
    watchdogCallback2 = [(WiFiWatchdogMonitor *)self watchdogCallback];
    watchdogCallback2[2](watchdogCallback2, watchdog, [(WiFiWatchdogMonitor *)self watchdogContext]);
  }
}

- (void)setWatchdogCallback:(id)callback context:(void *)context
{
  callbackCopy = callback;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WiFiWatchdogMonitor setWatchdogCallback:context:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", &v7, 0xCu);
  }

  [(WiFiWatchdogMonitor *)self setWatchdogCallback:callbackCopy];
  [(WiFiWatchdogMonitor *)self setWatchdogContext:context];
}

@end