@interface DIIODaemonDelegate
+ (id)requestsStatsToNSArrayWithArray:(DIRequestsStatsArray *)array;
- (BOOL)createNotificationPortWithError:(id *)error;
- (BOOL)setupNewConnection:(id)connection;
- (BOOL)setupTerminationNotificationWithError:(id *)error;
- (BOOL)tryAttachWithParams:(id)params error:(id *)error;
- (BOOL)validateDeserializationWithParams:(id)params reply:(id)reply;
- (DIIODaemonDelegate)initWithIsRAM:(BOOL)m;
- (id)serviceName;
- (void)attachToExistingDeviceWithParams:(id)params reply:(id)reply;
- (void)attachToNewDeviceWithParams:(id)params reply:(id)reply;
- (void)destroyNotificationPort;
- (void)exitDaemon;
- (void)exitWithUnmount;
- (void)onClientInvalidateWithConnection:(id)connection;
- (void)retrieveStatsWithParams:(id)params reply:(id)reply;
- (void)runIOmanager;
- (void)setupExitDaemonWatchdog;
- (void)setupSigtermHandler;
- (void)unmountAll;
- (void)validateConnection;
- (void)validateInstance;
@end

@implementation DIIODaemonDelegate

- (DIIODaemonDelegate)initWithIsRAM:(BOOL)m
{
  v12.receiver = self;
  v12.super_class = DIIODaemonDelegate;
  v4 = [(DIBaseServiceDelegate *)&v12 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  atomic_store(0, &v4->_unmountStarted);
  v4->_isRAM = m;
  v6 = objc_alloc_init(NSMutableSet);
  activeConnections = v5->_activeConnections;
  v5->_activeConnections = v6;

  [(DIIODaemonDelegate *)v5 validateInstance];
  if (![(DIIODaemonDelegate *)v5 createNotificationPortWithError:0])
  {
    goto LABEL_5;
  }

  [(DIIODaemonDelegate *)v5 setupSigtermHandler];
  v8 = [DIDiskArb diskArbWithError:0];
  diskArbDisappear = v5->_diskArbDisappear;
  v5->_diskArbDisappear = v8;

  if (v5->_diskArbDisappear)
  {
LABEL_4:
    v10 = v5;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (void)setupExitDaemonWatchdog
{
  v3 = dispatch_time(0, 8000000000);
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  dispatch_after(v3, dispatchQueue, &stru_1001F5780);
}

- (void)setupSigtermHandler
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigtermHandler = self->_sigtermHandler;
  self->_sigtermHandler = v3;

  v5 = self->_sigtermHandler;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100006C18;
  handler[3] = &unk_1001F57A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_sigtermHandler);
}

- (void)destroyNotificationPort
{
  if ([(DIIODaemonDelegate *)self runLoopSource])
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, [(DIIODaemonDelegate *)self runLoopSource], kCFRunLoopDefaultMode);
    [(DIIODaemonDelegate *)self setRunLoopSource:0];
  }

  if ([(DIIODaemonDelegate *)self notificationPort])
  {
    IONotificationPortDestroy([(DIIODaemonDelegate *)self notificationPort]);
    [(DIIODaemonDelegate *)self setNotificationPort:0];
  }

  notificationIterator = self->_notificationIterator;
  if (notificationIterator)
  {
    IOObjectRelease(notificationIterator);
    self->_notificationIterator = 0;
  }
}

- (BOOL)createNotificationPortWithError:(id *)error
{
  [(DIIODaemonDelegate *)self setNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  if ([(DIIODaemonDelegate *)self notificationPort])
  {
    [(DIIODaemonDelegate *)self setRunLoopSource:IONotificationPortGetRunLoopSource(self->_notificationPort)];
    if ([(DIIODaemonDelegate *)self runLoopSource])
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, [(DIIODaemonDelegate *)self runLoopSource], kCFRunLoopDefaultMode);
      return 1;
    }

    [(DIIODaemonDelegate *)self destroyNotificationPort];
    v7 = @"Failed getting runloop source";
  }

  else
  {
    v7 = @"Failed creating notification port";
  }

  return [DIError failWithEnumValue:153 verboseInfo:v7 error:error];
}

- (BOOL)setupTerminationNotificationWithError:(id *)error
{
  v5 = IOServiceMatching("AppleDiskImageDevice");
  if (IOServiceAddMatchingNotification(self->_notificationPort, "IOServiceTerminate", v5, sub_100006FFC, self, &self->_notificationIterator))
  {

    return [DIError failWithEnumValue:153 verboseInfo:@"Failed adding matching notification" error:error];
  }

  else
  {
    sub_100006FFC(self, self->_notificationIterator);
    return 1;
  }
}

- (void)exitDaemon
{
  v4 = *__error();
  if (sub_1000E95F0())
  {
    v5 = sub_1000E957C();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    deviceHandle = [(DIIODaemonDelegate *)self deviceHandle];
    if (deviceHandle)
    {
      deviceHandle2 = [(DIIODaemonDelegate *)self deviceHandle];
      bSDName = [deviceHandle2 BSDName];
    }

    else
    {
      bSDName = @"an unprepared device";
    }

    *buf = 68158210;
    v38 = 32;
    v39 = 2080;
    v40 = "[DIIODaemonDelegate exitDaemon]";
    v41 = 2114;
    v42 = bSDName;
    LODWORD(v36) = 28;
    v35 = buf;
    v8 = _os_log_send_and_compose_impl();
    if (deviceHandle)
    {
    }

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E957C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      deviceHandle3 = [(DIIODaemonDelegate *)self deviceHandle];
      if (deviceHandle3)
      {
        deviceHandle2 = [(DIIODaemonDelegate *)self deviceHandle];
        bSDName2 = [deviceHandle2 BSDName];
      }

      else
      {
        bSDName2 = @"an unprepared device";
      }

      *buf = 68158210;
      v38 = 32;
      v39 = 2080;
      v40 = "[DIIODaemonDelegate exitDaemon]";
      v41 = 2114;
      v42 = bSDName2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: IO daemon of %{public}@ is shutting down, stopping IO channels", buf, 0x1Cu);
      if (deviceHandle3)
      {
      }
    }
  }

  *__error() = v4;
  [(DIIODaemonDelegate *)self setupExitDaemonWatchdog];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listener = [(DIBaseServiceDelegate *)selfCopy listener];
  [listener invalidate];

  clientDelegate = [(DIIODaemonDelegate *)selfCopy clientDelegate];
  v15 = clientDelegate == 0;

  if (!v15)
  {
    clientDelegate2 = [(DIIODaemonDelegate *)selfCopy clientDelegate];
    listener2 = [clientDelegate2 listener];
    [listener2 invalidate];
  }

  v16 = *__error();
  if (sub_1000E95F0())
  {
    v17 = sub_1000E957C();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    v18 = [(DIIODaemonDelegate *)selfCopy activeConnections:v35];
    v19 = [v18 count];
    *buf = 68158210;
    v38 = 32;
    v39 = 2080;
    v40 = "[DIIODaemonDelegate exitDaemon]";
    v41 = 2048;
    v42 = v19;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      fprintf(__stderrp, "%s\n", v20);
      free(v20);
    }
  }

  else
  {
    v23 = sub_1000E957C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
      v25 = [activeConnections count];
      *buf = 68158210;
      v38 = 32;
      v39 = 2080;
      v40 = "[DIIODaemonDelegate exitDaemon]";
      v41 = 2048;
      v42 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%.*s: # client connections at time of daemon termination: %lu", buf, 0x1Cu);
    }
  }

  *__error() = v16;
  [(DIIODaemonDelegate *)selfCopy destroyNotificationPort];
  diskArbDisappear = [(DIIODaemonDelegate *)selfCopy diskArbDisappear];
  [diskArbDisappear stop];

  sigtermHandler = [(DIIODaemonDelegate *)selfCopy sigtermHandler];
  v28 = sigtermHandler == 0;

  if (!v28)
  {
    sigtermHandler2 = [(DIIODaemonDelegate *)selfCopy sigtermHandler];
    dispatch_source_cancel(sigtermHandler2);

    [(DIIODaemonDelegate *)selfCopy setSigtermHandler:0];
  }

  ioManager = selfCopy->_ioManager;
  if (!ioManager)
  {
    v30 = *__error();
    if (sub_1000E95F0())
    {
      v31 = sub_1000E957C();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v38 = 32;
      v39 = 2080;
      v40 = "[DIIODaemonDelegate exitDaemon]";
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        fprintf(__stderrp, "%s\n", v32);
        free(v32);
      }
    }

    else
    {
      v34 = sub_1000E957C();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v38 = 32;
        v39 = 2080;
        v40 = "[DIIODaemonDelegate exitDaemon]";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: _ioManager was not initialized yet, quitting immediately", buf, 0x12u);
      }
    }

    *__error() = v30;
    exit(0);
  }

  sub_10000E33C(ioManager);
  while (1)
  {
    sleep(0xAu);
  }
}

- (void)validateInstance
{
  v2 = getenv("LaunchInstanceID");
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    if (sub_1000E95F0())
    {
      v5 = sub_1000E957C();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v9 = 38;
      v10 = 2080;
      v11 = "[DIIODaemonDelegate validateInstance]";
      v12 = 2082;
      v13 = v3;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        fprintf(__stderrp, "%s\n", v6);
        free(v6);
      }
    }

    else
    {
      v7 = sub_1000E957C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v9 = 38;
        v10 = 2080;
        v11 = "[DIIODaemonDelegate validateInstance]";
        v12 = 2082;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Instance ID: %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v4;
  }
}

- (id)serviceName
{
  if (getuid())
  {
    isRAM = [(DIIODaemonDelegate *)self isRAM];
    v4 = @"com.apple.diskimagesiod";
    if (isRAM)
    {
      v4 = @"com.apple.diskimagesiod.ram";
    }

    v5 = v4;
  }

  else
  {
    v5 = @"com.apple.diskimagesiod.spb";
  }

  return v5;
}

- (void)unmountAll
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy;
  deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];
  if (!deviceHandle || (-[DIIODaemonDelegate deviceHandle](selfCopy, "deviceHandle"), v5 = objc_claimAutoreleasedReturnValue(), [v5 BSDName], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, deviceHandle, !v6))
  {
LABEL_12:
    objc_sync_exit(v3);
    goto LABEL_13;
  }

  ioManager = v3->_ioManager;
  if (!ioManager || (ioManager[112] & 1) != 0)
  {
    v8 = *__error();
    if (sub_1000E95F0())
    {
      v45 = 0;
      v9 = sub_1000E957C();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v47 = 32;
      v48 = 2080;
      v49 = "[DIIODaemonDelegate unmountAll]";
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = sub_1000E957C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v47 = 32;
        v48 = 2080;
        v49 = "[DIIODaemonDelegate unmountAll]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Device is already ejected, skipping unmount", buf, 0x12u);
      }
    }

    *__error() = v8;
    goto LABEL_12;
  }

  objc_sync_exit(v3);

  v12 = [DIAttachedDeviceInfo alloc];
  deviceHandle2 = [(DIIODaemonDelegate *)v3 deviceHandle];
  bSDName = [deviceHandle2 BSDName];
  v3 = [(DIAttachedDeviceInfo *)v12 initWithBSDName:bSDName error:0];

  if (v3)
  {
    v39 = v3;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(DIIODaemonDelegate *)v3 copyEntitiesList];
    v15 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v15)
    {
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:{@"Mount Point", v37, v38}];
          if (v19)
          {
            v20 = *__error();
            if (sub_1000E95F0())
            {
              v45 = 0;
              v21 = sub_1000E957C();
              os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
              v22 = [v18 objectForKeyedSubscript:@"BSD Name"];
              *buf = 68158467;
              v47 = 32;
              v48 = 2080;
              v49 = "[DIIODaemonDelegate unmountAll]";
              v50 = 2113;
              v51 = v19;
              v52 = 2114;
              v53 = v22;
              LODWORD(v38) = 38;
              v37 = buf;
              v23 = _os_log_send_and_compose_impl();

              if (v23)
              {
                fprintf(__stderrp, "%s\n", v23);
                free(v23);
              }
            }

            else
            {
              v24 = sub_1000E957C();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v18 objectForKeyedSubscript:@"BSD Name"];
                *buf = 68158467;
                v47 = 32;
                v48 = 2080;
                v49 = "[DIIODaemonDelegate unmountAll]";
                v50 = 2113;
                v51 = v19;
                v52 = 2114;
                v53 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%.*s: Forcing unmount of %{private}@ (%{public}@)", buf, 0x26u);
              }
            }

            *__error() = v20;
            v26 = v19;
            if (unmount([v19 fileSystemRepresentation], 0x80000))
            {
              v27 = *__error();
              if (sub_1000E95F0())
              {
                v45 = 0;
                v28 = sub_1000E957C();
                os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
                v29 = *__error();
                *buf = 68158467;
                v47 = 32;
                v48 = 2080;
                v49 = "[DIIODaemonDelegate unmountAll]";
                v50 = 2113;
                v51 = v19;
                v52 = 1024;
                LODWORD(v53) = v29;
                LODWORD(v38) = 34;
                v37 = buf;
                v30 = _os_log_send_and_compose_impl();

                if (v30)
                {
                  fprintf(__stderrp, "%s\n", v30);
                  free(v30);
                }
              }

              else
              {
                v31 = sub_1000E957C();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = *__error();
                  *buf = 68158467;
                  v47 = 32;
                  v48 = 2080;
                  v49 = "[DIIODaemonDelegate unmountAll]";
                  v50 = 2113;
                  v51 = v19;
                  v52 = 1024;
                  LODWORD(v53) = v32;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%.*s: Force unmount of %{private}@ failed with errno %d", buf, 0x22u);
                }
              }

              *__error() = v27;
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v15);
    }

    v33 = *__error();
    if (sub_1000E95F0())
    {
      v45 = 0;
      v34 = sub_1000E957C();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v47 = 32;
      v48 = 2080;
      v49 = "[DIIODaemonDelegate unmountAll]";
      v35 = _os_log_send_and_compose_impl();

      if (v35)
      {
        fprintf(__stderrp, "%s\n", v35);
        free(v35);
      }
    }

    else
    {
      v36 = sub_1000E957C();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v47 = 32;
        v48 = 2080;
        v49 = "[DIIODaemonDelegate unmountAll]";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Unmount done", buf, 0x12u);
      }
    }

    *__error() = v33;

    v3 = v39;
  }

LABEL_13:
}

- (void)exitWithUnmount
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_unmountStarted.__a_.__a_value, &v2, 1u);
  if (v2)
  {
    v11 = *__error();
    if (sub_1000E95F0())
    {
      v24 = 0;
      v12 = sub_1000E957C();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v26 = 37;
      v27 = 2080;
      v28 = "[DIIODaemonDelegate exitWithUnmount]";
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        fprintf(__stderrp, "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v14 = sub_1000E957C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v26 = 37;
        v27 = 2080;
        v28 = "[DIIODaemonDelegate exitWithUnmount]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: Exit already in progress", buf, 0x12u);
      }
    }

    *__error() = v11;
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    if (!v4)
    {
      v16 = *__error();
      if (sub_1000E95F0())
      {
        v24 = 0;
        v17 = sub_1000E957C();
        os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        *buf = 68157954;
        v26 = 37;
        v27 = 2080;
        v28 = "[DIIODaemonDelegate exitWithUnmount]";
        v18 = _os_log_send_and_compose_impl();

        if (v18)
        {
          fprintf(__stderrp, "%s\n", v18);
          free(v18);
        }
      }

      else
      {
        v19 = sub_1000E957C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v26 = 37;
          v27 = 2080;
          v28 = "[DIIODaemonDelegate exitWithUnmount]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%.*s: Failed creating unmount done semaphore", buf, 0x12u);
        }
      }

      *__error() = v16;
      exit(0);
    }

    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008960;
    block[3] = &unk_1001F57D0;
    block[4] = self;
    v6 = v4;
    v23 = v6;
    dispatch_async(dispatchQueue, block);

    v7 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = *__error();
      if (sub_1000E95F0())
      {
        v24 = 0;
        v9 = sub_1000E957C();
        os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        *buf = 68157954;
        v26 = 37;
        v27 = 2080;
        v28 = "[DIIODaemonDelegate exitWithUnmount]";
        LODWORD(v21) = 18;
        v20 = buf;
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          fprintf(__stderrp, "%s\n", v10);
          free(v10);
        }
      }

      else
      {
        v15 = sub_1000E957C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v26 = 37;
          v27 = 2080;
          v28 = "[DIIODaemonDelegate exitWithUnmount]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%.*s: Unmount timeout occurred", buf, 0x12u);
        }
      }

      *__error() = v8;
    }

    [(DIIODaemonDelegate *)self exitDaemon:v20];
  }
}

- (void)onClientInvalidateWithConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
  [activeConnections removeObject:connectionCopy];

  deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];

  if (!deviceHandle)
  {
    v8 = *__error();
    if (sub_1000E95F0())
    {
      v9 = sub_1000E957C();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v31 = 55;
      v32 = 2080;
      v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
      LODWORD(v29) = 18;
      v28 = buf;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = sub_1000E957C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v31 = 55;
        v32 = 2080;
        v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Reached XPC invalidation/interruption before device initialization, quitting.", buf, 0x12u);
      }
    }

    *__error() = v8;
    [(DIIODaemonDelegate *)selfCopy exitDaemon];
  }

  if (![(DIIODaemonDelegate *)selfCopy handleRefCount:v28])
  {
    v14 = *__error();
    if (!sub_1000E95F0())
    {
      v22 = sub_1000E957C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        activeConnections2 = [(DIIODaemonDelegate *)selfCopy activeConnections];
        v24 = [activeConnections2 count];
        *buf = 68158210;
        v31 = 55;
        v32 = 2080;
        v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        v34 = 2048;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Unmanaged attach, ignoring XPC disconnection (# open connections left: %lu)", buf, 0x1Cu);
      }

      goto LABEL_25;
    }

    v19 = sub_1000E957C();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    activeConnections3 = [(DIIODaemonDelegate *)selfCopy activeConnections];
    v21 = [activeConnections3 count];
    *buf = 68158210;
    v31 = 55;
    v32 = 2080;
    v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
    v34 = 2048;
    v35 = v21;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
LABEL_13:
      fprintf(__stderrp, "%s\n", v18);
      free(v18);
    }

LABEL_25:
    *__error() = v14;
    objc_sync_exit(selfCopy);

    goto LABEL_26;
  }

  activeConnections4 = [(DIIODaemonDelegate *)selfCopy activeConnections];
  v13 = [activeConnections4 count] == 0;

  if (!v13)
  {
    v14 = *__error();
    if (!sub_1000E95F0())
    {
      v25 = sub_1000E957C();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        activeConnections5 = [(DIIODaemonDelegate *)selfCopy activeConnections];
        v27 = [activeConnections5 count];
        *buf = 68158210;
        v31 = 55;
        v32 = 2080;
        v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
        v34 = 2048;
        v35 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: XPC connection closed for a managed attach, # open connections left: %lu", buf, 0x1Cu);
      }

      goto LABEL_25;
    }

    v15 = sub_1000E957C();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    activeConnections6 = [(DIIODaemonDelegate *)selfCopy activeConnections];
    v17 = [activeConnections6 count];
    *buf = 68158210;
    v31 = 55;
    v32 = 2080;
    v33 = "[DIIODaemonDelegate onClientInvalidateWithConnection:]";
    v34 = 2048;
    v35 = v17;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  objc_sync_exit(selfCopy);

  [(DIIODaemonDelegate *)selfCopy exitWithUnmount];
LABEL_26:
}

- (void)runIOmanager
{
  sub_10000E300(self->_ioManager);
  if (self->_ioManager)
  {
    sub_10000E2FC();
    operator delete();
  }

  v3 = *__error();
  if (sub_1000E95F0())
  {
    v4 = sub_1000E957C();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v8 = 34;
    v9 = 2080;
    v10 = "[DIIODaemonDelegate runIOmanager]";
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(__stderrp, "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = sub_1000E957C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v8 = 34;
      v9 = 2080;
      v10 = "[DIIODaemonDelegate runIOmanager]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Shutdown is complete", buf, 0x12u);
    }
  }

  *__error() = v3;
  [(DIIODaemonDelegate *)self setAttachedTransaction:0];
  exit(0);
}

- (BOOL)tryAttachWithParams:(id)params error:(id *)error
{
  paramsCopy = params;
  objc_initWeak(&location, self);
  -[DIIODaemonDelegate setHandleRefCount:](self, "setHandleRefCount:", [paramsCopy handleRefCount]);
  if ([(DIIODaemonDelegate *)self handleRefCount])
  {
    v7 = [[DIIOClientDelegate alloc] initWithIODaemon:self];
    [(DIIODaemonDelegate *)self setClientDelegate:v7];

    clientDelegate = [(DIIODaemonDelegate *)self clientDelegate];
    [clientDelegate startXPClistener];

    v9 = [DIDeviceHandle alloc];
    regEntryID = [paramsCopy regEntryID];
    clientDelegate2 = [(DIIODaemonDelegate *)self clientDelegate];
    xpcEndpoint = [(DIDeviceHandle *)clientDelegate2 xpcEndpoint];
    v13 = [(DIDeviceHandle *)v9 initWithRegEntryID:regEntryID xpcEndpoint:xpcEndpoint];
    [(DIIODaemonDelegate *)self setDeviceHandle:v13];
  }

  else
  {
    clientDelegate2 = -[DIDeviceHandle initWithRegEntryID:]([DIDeviceHandle alloc], "initWithRegEntryID:", [paramsCopy regEntryID]);
    [(DIIODaemonDelegate *)self setDeviceHandle:clientDelegate2];
  }

  deviceHandle = [(DIIODaemonDelegate *)self deviceHandle];
  v25 = +[DIBlockDevice copyUnmatchedDiskImageWithRegEntryID:error:](DIBlockDevice, "copyUnmatchedDiskImageWithRegEntryID:error:", [deviceHandle regEntryID], error);

  if (v25)
  {
    IOObjectRetain([v25 ioObj]);
    if ([(DIIODaemonDelegate *)self setupTerminationNotificationWithError:error])
    {
      diskArbDisappear = [(DIIODaemonDelegate *)self diskArbDisappear];
      inputStatFS = [paramsCopy inputStatFS];
      if (inputStatFS)
      {
        inputStatFS2 = [paramsCopy inputStatFS];
        mountedOnURL = [inputStatFS2 mountedOnURL];
      }

      else
      {
        mountedOnURL = 0;
      }

      shadowChain = [paramsCopy shadowChain];
      mountPoints = [shadowChain mountPoints];
      [diskArbDisappear addDisappearedCallbackWithMountPoint:mountedOnURL shadowMountPoints:mountPoints delegate:self];

      if (inputStatFS)
      {
      }

      v20 = *__error();
      if (sub_1000E95F0())
      {
        v21 = sub_1000E957C();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v29 = 48;
        v30 = 2080;
        v31 = "[DIIODaemonDelegate tryAttachWithParams:error:]";
        v22 = _os_log_send_and_compose_impl();

        if (v22)
        {
          fprintf(__stderrp, "%s\n", v22);
          free(v22);
        }
      }

      else
      {
        v23 = sub_1000E957C();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v29 = 48;
          v30 = 2080;
          v31 = "[DIIODaemonDelegate tryAttachWithParams:error:]";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Dispatching DIIOManager", buf, 0x12u);
        }
      }

      *__error() = v20;
      operator new();
    }
  }

  objc_destroyWeak(&location);
  return 0;
}

- (BOOL)validateDeserializationWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v10 = 0;
  v7 = [paramsCopy validateDeserializationWithError:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    replyCopy[2](replyCopy, 0, v8);
  }

  return v7;
}

- (void)attachToNewDeviceWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  objc_initWeak(&location, self);
  if ([(DIIODaemonDelegate *)self validateDeserializationWithParams:paramsCopy reply:replyCopy])
  {
    v8 = *__error();
    if (sub_1000E95F0())
    {
      v23[1] = 0;
      v9 = sub_1000E957C();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      instanceID = [paramsCopy instanceID];
      regEntryID = [paramsCopy regEntryID];
      *buf = 68158466;
      v26 = 56;
      v27 = 2080;
      v28 = "[DIIODaemonDelegate attachToNewDeviceWithParams:reply:]";
      v29 = 2114;
      v30 = instanceID;
      v31 = 2048;
      v32 = regEntryID;
      LODWORD(v19) = 38;
      v18 = buf;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E957C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        instanceID2 = [paramsCopy instanceID];
        regEntryID2 = [paramsCopy regEntryID];
        *buf = 68158466;
        v26 = 56;
        v27 = 2080;
        v28 = "[DIIODaemonDelegate attachToNewDeviceWithParams:reply:]";
        v29 = 2114;
        v30 = instanceID2;
        v31 = 2048;
        v32 = regEntryID2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 0x26u);
      }
    }

    *__error() = v8;
    if (!getuid() && ([paramsCopy requiresRootDaemon] & 1) == 0)
    {
      v16 = [DIError errorWithPOSIXCode:1 verboseInfo:@"Root daemon connection denied"];
      replyCopy[2](replyCopy, 0, v16);
      [(DIIODaemonDelegate *)self exitDaemon];
    }

    v17 = [(DIBaseServiceDelegate *)self dispatchQueue:v18];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A0C4;
    block[3] = &unk_1001F5820;
    objc_copyWeak(v23, &location);
    v22 = replyCopy;
    v21 = paramsCopy;
    dispatch_async(v17, block);

    objc_destroyWeak(v23);
  }

  objc_destroyWeak(&location);
}

- (void)attachToExistingDeviceWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  if ([(DIIODaemonDelegate *)self validateDeserializationWithParams:paramsCopy reply:replyCopy])
  {
    v8 = *__error();
    if (sub_1000E95F0())
    {
      v9 = sub_1000E957C();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      instanceID = [paramsCopy instanceID];
      *buf = 68158466;
      v38 = 61;
      v39 = 2080;
      v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
      v41 = 2114;
      v42 = instanceID;
      v43 = 2048;
      regEntryID = [paramsCopy regEntryID];
      LODWORD(v36) = 38;
      v35 = buf;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E957C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        instanceID2 = [paramsCopy instanceID];
        *buf = 68158466;
        v38 = 61;
        v39 = 2080;
        v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
        v41 = 2114;
        v42 = instanceID2;
        v43 = 2048;
        regEntryID = [paramsCopy regEntryID];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: entry, instance ID = %{public}@, registry entry ID = 0x%llx", buf, 0x26u);
      }
    }

    *__error() = v8;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    deviceHandle = [(DIIODaemonDelegate *)selfCopy deviceHandle];
    v16 = deviceHandle == 0;

    if (v16)
    {
      v20 = [DIError errorWithEnumValue:155 verboseInfo:@"A controller XPC service attempted to connect to an existing device, but this daemon instance has no such device yet"];
      replyCopy[2](replyCopy, 0, v20);
    }

    else
    {
      regEntryID2 = [paramsCopy regEntryID];
      deviceHandle2 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
      LOBYTE(regEntryID2) = regEntryID2 == [deviceHandle2 regEntryID];

      if (regEntryID2)
      {
        v19 = atomic_load(&selfCopy->_unmountStarted);
        if (v19)
        {
          v20 = [DIError errorWithEnumValue:170 verboseInfo:@"Unmount already started, notifying controller to retry later"];
          replyCopy[2](replyCopy, 0, v20);
        }

        else
        {
          if ([paramsCopy handleRefCount] && !-[DIIODaemonDelegate handleRefCount](selfCopy, "handleRefCount"))
          {
            v24 = *__error();
            if (sub_1000E95F0())
            {
              v25 = sub_1000E957C();
              os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
              *buf = 68157954;
              v38 = 61;
              v39 = 2080;
              v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              v26 = _os_log_send_and_compose_impl();

              if (v26)
              {
                fprintf(__stderrp, "%s\n", v26);
                free(v26);
              }
            }

            else
            {
              v27 = sub_1000E957C();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v38 = 61;
                v39 = 2080;
                v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring client reference counting request as a previous attach was performed without reference counting", buf, 0x12u);
              }
            }

            *__error() = v24;
          }

          else if (([paramsCopy handleRefCount] & 1) == 0 && -[DIIODaemonDelegate handleRefCount](selfCopy, "handleRefCount"))
          {
            v21 = *__error();
            if (sub_1000E95F0())
            {
              v22 = sub_1000E957C();
              os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              *buf = 68157954;
              v38 = 61;
              v39 = 2080;
              v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              v23 = _os_log_send_and_compose_impl();

              if (v23)
              {
                fprintf(__stderrp, "%s\n", v23);
                free(v23);
              }
            }

            else
            {
              v28 = sub_1000E957C();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v38 = 61;
                v39 = 2080;
                v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%.*s: Disabling reference counting", buf, 0x12u);
              }
            }

            *__error() = v21;
            [(DIIODaemonDelegate *)selfCopy setHandleRefCount:0];
            deviceHandle3 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
            [deviceHandle3 setXpcEndpoint:0];
          }

          v30 = *__error();
          if (sub_1000E95F0())
          {
            v31 = sub_1000E957C();
            os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            *buf = 68157954;
            v38 = 61;
            v39 = 2080;
            v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
            v32 = _os_log_send_and_compose_impl();

            if (v32)
            {
              fprintf(__stderrp, "%s\n", v32);
              free(v32);
            }
          }

          else
          {
            v33 = sub_1000E957C();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68157954;
              v38 = 61;
              v39 = 2080;
              v40 = "[DIIODaemonDelegate attachToExistingDeviceWithParams:reply:]";
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%.*s: Got connection to an existing disk image, returning its handle", buf, 0x12u);
            }
          }

          *__error() = v30;
          deviceHandle4 = [(DIIODaemonDelegate *)selfCopy deviceHandle];
          (replyCopy)[2](replyCopy, deviceHandle4, 0);

          v20 = 0;
        }
      }

      else
      {
        v20 = [DIError errorWithEnumValue:150 verboseInfo:@"Registry entry ID mismatch between controller and daemon"];
        replyCopy[2](replyCopy, 0, v20);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)validateConnection
{
  if (!getenv("LaunchInstanceID"))
  {
    v2 = *__error();
    if (sub_1000E95F0())
    {
      v3 = sub_1000E957C();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v7 = 40;
      v8 = 2080;
      v9 = "[DIIODaemonDelegate validateConnection]";
      v4 = _os_log_send_and_compose_impl();

      if (v4)
      {
        fprintf(__stderrp, "%s\n", v4);
        free(v4);
      }
    }

    else
    {
      v5 = sub_1000E957C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v7 = 40;
        v8 = 2080;
        v9 = "[DIIODaemonDelegate validateConnection]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s: As we were launched without instance ID, rejecting the connection and killing the daemon.", buf, 0x12u);
      }
    }

    *__error() = v2;
    exit(1);
  }
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.diskimages.creator-uc"];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = *__error();
    if (sub_1000E95F0())
    {
      location = 0;
      v7 = sub_1000E957C();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      buf = 0x2904100202;
      v36 = 2080;
      v37 = "[DIIODaemonDelegate setupNewConnection:]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v19 = sub_1000E957C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        buf = 0x2904100202;
        v36 = 2080;
        v37 = "[DIIODaemonDelegate setupNewConnection:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Connected client is entitled to attach a disk image", &buf, 0x12u);
      }
    }

    *__error() = v6;
    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIIODaemonProtocol];
    [connectionCopy setExportedInterface:v20];

    [connectionCopy setExportedObject:self];
    objc_initWeak(&buf, self);
    objc_initWeak(&location, connectionCopy);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = atomic_load(&selfCopy->_unmountStarted);
    if ((v22 & 1) == 0)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10000B46C;
      v31[3] = &unk_1001F5848;
      objc_copyWeak(&v32, &buf);
      objc_copyWeak(&v33, &location);
      [connectionCopy setInterruptionHandler:v31];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000B64C;
      v28[3] = &unk_1001F5848;
      objc_copyWeak(&v29, &buf);
      objc_copyWeak(&v30, &location);
      [connectionCopy setInvalidationHandler:v28];
      activeConnections = [(DIIODaemonDelegate *)selfCopy activeConnections];
      [activeConnections addObject:connectionCopy];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v33);
      objc_destroyWeak(&v32);
    }

    objc_sync_exit(selfCopy);

    objc_destroyWeak(&location);
    objc_destroyWeak(&buf);
    v17 = 1;
  }

  else
  {
    v9 = *__error();
    if (sub_1000E95F0())
    {
      location = 0;
      v10 = sub_1000E957C();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      buf = 0x2904100202;
      v36 = 2080;
      v37 = "[DIIODaemonDelegate setupNewConnection:]";
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E957C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        buf = 0x2904100202;
        v36 = 2080;
        v37 = "[DIIODaemonDelegate setupNewConnection:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: The connected client is not entitled to attach a disk image, rejecting", &buf, 0x12u);
      }
    }

    *__error() = v9;
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    deviceHandle = [(DIIODaemonDelegate *)selfCopy2 deviceHandle];
    if (deviceHandle)
    {
    }

    else
    {
      activeConnections2 = [(DIIODaemonDelegate *)selfCopy2 activeConnections];
      v16 = [activeConnections2 count] == 0;

      if (v16)
      {
        v24 = *__error();
        if (sub_1000E95F0())
        {
          location = 0;
          v25 = sub_1000E957C();
          os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
          buf = 0x2904100202;
          v36 = 2080;
          v37 = "[DIIODaemonDelegate setupNewConnection:]";
          v26 = _os_log_send_and_compose_impl();

          if (v26)
          {
            fprintf(__stderrp, "%s\n", v26);
            free(v26);
          }
        }

        else
        {
          v27 = sub_1000E957C();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            buf = 0x2904100202;
            v36 = 2080;
            v37 = "[DIIODaemonDelegate setupNewConnection:]";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%.*s: The rejected connection caused a daemon instance to wake up. Killing it", &buf, 0x12u);
          }
        }

        *__error() = v24;
        exit(0);
      }
    }

    objc_sync_exit(selfCopy2);

    v17 = 0;
  }

  return v17;
}

- (void)retrieveStatsWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v8 = [paramsCopy validateDeserializationWithError:&v16];
  v9 = v16;
  if (v8)
  {
    if (sub_10000E56C(self->_ioManager, &v19, &v18) && sub_10000E748(self->_ioManager, outputStruct))
    {
      v10 = [NSNumber alloc];
      v11 = [v10 initWithUnsignedLongLong:v19];
      v12 = [NSNumber alloc];
      v13 = [v12 initWithUnsignedLongLong:v18];
      v14 = [DIIODaemonDelegate requestsStatsToNSArrayWithArray:outputStruct];
      v15 = [NSDictionary dictionaryWithObjectsAndKeys:v11, @"hit", v13, @"miss", v14, @"pending_requests", 0];
    }

    else
    {
      v15 = 0;
      [DIError errorWithEnumValue:150 verboseInfo:@"Failed to fetch stats from driver"];
      v9 = v11 = v9;
    }
  }

  else
  {
    v15 = 0;
  }

  replyCopy[2](replyCopy, v15, v9);
}

+ (id)requestsStatsToNSArrayWithArray:(DIRequestsStatsArray *)array
{
  v15 = objc_alloc_init(NSMutableArray);
  arrayCopy = array;
  if (array->var1)
  {
    v4 = 0;
    p_var3 = &array->var0[0].var3;
    do
    {
      v6 = [[NSNumber alloc] initWithUnsignedInt:*(p_var3 - 4)];
      v7 = [[NSNumber alloc] initWithUnsignedLongLong:*(p_var3 - 1)];
      v8 = [[NSNumber alloc] initWithUnsignedLongLong:*p_var3];
      v9 = [[NSNumber alloc] initWithUnsignedLongLong:p_var3[1]];
      v10 = [[NSNumber alloc] initWithUnsignedLongLong:p_var3[2]];
      v11 = [[NSNumber alloc] initWithUnsignedShort:*(p_var3 - 6)];
      v12 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"index", v7, @"offset", v8, @"absolute_offset", v9, @"size", v10, @"total_size", v11, @"cmd", 0];

      [v15 addObject:v12];
      ++v4;
      p_var3 += 5;
    }

    while (v4 < arrayCopy->var1);
  }

  return v15;
}

@end