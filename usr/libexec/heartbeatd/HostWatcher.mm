@interface HostWatcher
+ (int)dumpConnectedHosts:(id *)hosts;
+ (void)addService:(id)service forHostID:(__CFString *)d;
+ (void)cleanupClosedSocketForPeer:(id)peer;
+ (void)invalidateServiceWithPID:(int)d heartBeatRef:(unint64_t)ref;
+ (void)invalidateWatcherForHost:(__CFString *)host;
+ (void)removeService:(id)service forHostID:(__CFString *)d;
- (HostWatcher)initWithCheckinGoop:(void *)goop;
- (id)description;
- (id)receiveMessage:(char *)message size:(unint64_t *)size;
- (int)receivePacket:(char *)packet size:(unint64_t)size;
- (int)sendPacket:(const char *)packet size:(unint64_t)size;
- (void)addService:(id)service;
- (void)dealloc;
- (void)enumerateServices:(id)services;
- (void)handleSleepNotification:(unsigned int)notification service:(unsigned int)service messageArgument:(void *)argument;
- (void)invalidate;
- (void)powerLogForService:(id)service event:(id)event;
- (void)removeService:(id)service;
- (void)runWatcher;
@end

@implementation HostWatcher

+ (void)cleanupClosedSocketForPeer:(id)peer
{
  peerCopy = peer;
  v4 = qword_100010C18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001284;
  block[3] = &unk_10000C4C8;
  v7 = peerCopy;
  v5 = peerCopy;
  dispatch_sync(v4, block);
}

+ (void)addService:(id)service forHostID:(__CFString *)d
{
  serviceCopy = service;
  v6 = qword_100010C18;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001640;
  v8[3] = &unk_10000C4F0;
  v9 = serviceCopy;
  dCopy = d;
  v7 = serviceCopy;
  dispatch_sync(v6, v8);
}

+ (void)removeService:(id)service forHostID:(__CFString *)d
{
  serviceCopy = service;
  v6 = qword_100010C18;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001748;
  v8[3] = &unk_10000C4F0;
  v9 = serviceCopy;
  dCopy = d;
  v7 = serviceCopy;
  dispatch_sync(v6, v8);
}

+ (void)invalidateWatcherForHost:(__CFString *)host
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000019D8;
  v22 = sub_1000019E8;
  v23 = 0;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = v19[5];
  v19[5] = v4;

  v6 = qword_100010C18;
  if (host)
  {
    v7 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000019F0;
    v17[3] = &unk_10000C518;
    v17[5] = host;
  }

  else
  {
    v7 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001A80;
    block[3] = &unk_10000C568;
  }

  v7[4] = &v18;
  dispatch_sync(v6, v7);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = v19[5];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v24 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) invalidate];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v24 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v18, 8);
}

+ (void)invalidateServiceWithPID:(int)d heartBeatRef:(unint64_t)ref
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001B84;
  v4[3] = &unk_10000C5C8;
  v4[4] = ref;
  dCopy = d;
  dispatch_sync(qword_100010C18, v4);
}

+ (int)dumpConnectedHosts:(id *)hosts
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = v4;
  if (v4)
  {
    v6 = qword_100010C18;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E18;
    block[3] = &unk_10000C4C8;
    v7 = v4;
    v13 = v7;
    dispatch_sync(v6, block);

    v8 = [v7 count];
    v9 = 0;
    if (hosts && v8)
    {
      v10 = v7;
      v9 = 0;
      *hosts = v7;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate array.", buf, 2u);
    }

    v9 = -1;
  }

  return v9;
}

- (int)sendPacket:(const char *)packet size:(unint64_t)size
{
  if ([(HostWatcher *)self ldConn])
  {
    v6 = 0;
    while (size > v6)
    {
      [(HostWatcher *)self ldConn];
      v7 = lockdown_send();
      v6 += v7;
      if (v7 == -1)
      {
        return -1;
      }
    }

    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

- (int)receivePacket:(char *)packet size:(unint64_t)size
{
  if ([(HostWatcher *)self ldConn])
  {
    v6 = 0;
    while (size > v6)
    {
      [(HostWatcher *)self ldConn];
      v7 = lockdown_recv();
      v6 += v7;
      if (v7 <= 0)
      {
        return -1;
      }
    }

    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

- (id)receiveMessage:(char *)message size:(unint64_t *)size
{
  v27 = 0;
  if (!message || !size)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "Invalid inputs.";
LABEL_9:
    v11 = 2;
    goto LABEL_10;
  }

  if ([(HostWatcher *)self receivePacket:&v27 size:4])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 67109378;
      *v29 = v7;
      *&v29[4] = 2082;
      *&v29[6] = v9;
      v10 = "Failed to read response message size: %d %{public}s";
LABEL_6:
      v11 = 18;
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
    }

LABEL_11:
    v12 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  v17 = bswap32(v27);
  v27 = v17;
  if (v17 > 0x2000)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    *v29 = v27;
    v10 = "Message size of %d is too large.";
    v11 = 8;
    goto LABEL_10;
  }

  if (*size >= v17)
  {
    v19 = *message;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v29 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Growing read buffer size to %d.", buf, 8u);
    }

    *size = v27;
    free(*message);
    v18 = malloc_type_malloc(*size, 0x96FD4A89uLL);
    *message = v18;
    if (!v18)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v25 = *size;
      *buf = 134217984;
      *v29 = v25;
      v10 = "Failed to allocate buffer of size %ld.";
      v11 = 12;
      goto LABEL_10;
    }

    v19 = v18;
    v17 = v27;
  }

  if ([(HostWatcher *)self receivePacket:v19 size:v17])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 67109378;
    *v29 = v20;
    *&v29[4] = 2082;
    *&v29[6] = v22;
    v10 = "Failed to read message: %d %{public}s";
    goto LABEL_6;
  }

  v23 = [NSData alloc];
  v24 = [v23 initWithBytes:*message length:v27];
  if (!v24)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "Failed to allocate data.";
    goto LABEL_9;
  }

  v12 = v24;
  v13 = [NSPropertyListSerialization propertyListWithData:v24 options:0 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v13;
    v14 = v13;
    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    hostID = [(HostWatcher *)self hostID];
    *buf = 138543618;
    *v29 = v13;
    *&v29[8] = 2114;
    *&v29[10] = hostID;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid message (%{public}@) received from host %{public}@.", buf, 0x16u);
  }

LABEL_12:
  v14 = 0;
LABEL_13:
  v15 = v14;

  return v14;
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    hostID = [(HostWatcher *)self hostID];
    *buf = 138543362;
    v10 = hostID;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalidating host watcher: %{public}@", buf, 0xCu);
  }

  [(HostWatcher *)self setInvalidated:1];
  v5 = qword_100010C08;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002660;
  block[3] = &unk_10000C678;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)runWatcher
{
  v36 = 0;
  v37 = 256;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = sub_1000030A8();
  objc_initWeak(&location, self);
  pingQueue = [(HostWatcher *)self pingQueue];
  dispatch_assert_queue_V2(pingQueue);

  v36 = malloc_type_malloc(v37, 0x4F5288A3uLL);
  if (!v36)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Failed to allocate read buffer.";
LABEL_30:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }

LABEL_31:
    v10 = 0;
    v6 = 0;
LABEL_42:
    [(HostWatcher *)self invalidate];
    goto LABEL_43;
  }

  if (qword_100010C48 != -1)
  {
    sub_1000077EC();
  }

  v4 = qword_100010C50;
  if (qword_100010C50)
  {
    v5 = qword_100010C58;
    goto LABEL_6;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to ping create message.", buf, 2u), (v4 = qword_100010C50) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Failed to allocate write buffer.";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v5 = 0;
LABEL_6:
  v6 = dispatch_queue_create("com.apple.mobile.heartbeat.lastPing", 0);
  if (!v33[3])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Failed to allocate queue.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }

LABEL_35:
    v10 = 0;
    goto LABEL_42;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Failed to create timer.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v8 = v7;
  v9 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v8, v9, 0x2540BE400uLL, 0x12A05F200uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003108;
  handler[3] = &unk_10000C6A0;
  objc_copyWeak(&v30, &location);
  v29 = &v32;
  v10 = v8;
  v28 = v10;
  dispatch_source_set_event_handler(v10, handler);

  objc_destroyWeak(&v30);
  dispatch_resume(v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v39 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting loop for %{public}@", buf, 0xCu);
  }

  LOBYTE(pingSem) = 0;
  *&v11 = 134218242;
  v23 = v11;
  while (![(HostWatcher *)self invalidated]&& ![(HostWatcher *)self aboutToSleep])
  {
    if ([(HostWatcher *)self sendPacket:v4 size:v5])
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *__error();
        v21 = __error();
        v22 = strerror(*v21);
        *buf = 67109378;
        *v39 = v20;
        *&v39[4] = 2082;
        *&v39[6] = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send ping: %d %{public}s", buf, 0x12u);
      }

      LOBYTE(pingSem) = 0;
      break;
    }

    v13 = objc_autoreleasePoolPush();
    pingSem = [(HostWatcher *)self receiveMessage:&v36 size:&v37];
    if (pingSem)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003254;
      block[3] = &unk_10000C568;
      block[4] = &v32;
      dispatch_sync(v6, block);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v14 = v33[3];
        *buf = v23;
        *v39 = v14;
        *&v39[8] = 2114;
        *&v39[10] = pingSem;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received response at %llu: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive ping response.", buf, 2u);
    }

    objc_autoreleasePoolPop(v13);
    if (!pingSem)
    {
      break;
    }

    v15 = dispatch_time(0, 10000000000);
    v16 = dispatch_get_global_queue(0, 0);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003284;
    v24[3] = &unk_10000C6C8;
    objc_copyWeak(&v25, &location);
    dispatch_after(v15, v16, v24);

    pingSem = [(HostWatcher *)self pingSem];
    dispatch_semaphore_wait(pingSem, 0xFFFFFFFFFFFFFFFFLL);

    objc_destroyWeak(&v25);
    LOBYTE(pingSem) = 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v39 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ended loop for %{public}@", buf, 0xCu);
  }

  dispatch_source_cancel(v10);
  if ((pingSem & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (v36)
  {
    free(v36);
  }

  v36 = 0;
  objc_destroyWeak(&location);

  _Block_object_dispose(&v32, 8);
}

- (void)handleSleepNotification:(unsigned int)notification service:(unsigned int)service messageArgument:(void *)argument
{
  objc_initWeak(&location, self);
  HIDWORD(v9) = notification + 536870288;
  LODWORD(v9) = notification + 536870288;
  v8 = v9 >> 4;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
LABEL_24:
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 67109120;
        notificationCopy = notification;
        v11 = "Unknown power notification: %d";
        goto LABEL_26;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Power notification: kIOMessageSystemWillSleep", buf, 2u);
      }

      if ([(HostWatcher *)self systemSleepNotificationProcessed])
      {
        v10 = IOAllowPowerChange([(HostWatcher *)self powerConn], argument);
        if (!v10 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 67109120;
        notificationCopy = v10;
        v11 = "IOAllowPowerChange failed: %08x";
LABEL_26:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, 8u);
        goto LABEL_30;
      }

      [(HostWatcher *)self setAboutToSleep:1];
      pingSem = [(HostWatcher *)self pingSem];
      dispatch_semaphore_signal(pingSem);

      v14 = qword_100010C18;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003744;
      block[3] = &unk_10000C6C8;
      objc_copyWeak(&v25, &location);
      dispatch_sync(v14, block);
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        peerName = [(HostWatcher *)self peerName];
        servicesAwaitingClose = [(HostWatcher *)self servicesAwaitingClose];
        sub_1000079BC(peerName, servicesAwaitingClose, buf);
      }

      pingQueue = [(HostWatcher *)self pingQueue];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100003860;
      v22 = &unk_10000C738;
      objc_copyWeak(v23, &location);
      v23[1] = argument;
      dispatch_sync(pingQueue, &v19);

      [(HostWatcher *)self setSystemSleepNotificationProcessed:1, v19, v20, v21, v22];
      objc_destroyWeak(v23);
      objc_destroyWeak(&v25);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Power notification: kIOMessageCanSystemSleep", buf, 2u);
      }

      v12 = IOAllowPowerChange([(HostWatcher *)self powerConn], argument);
      if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        notificationCopy = v12;
        v11 = "IOAllowPowerChange failed: %08x";
        goto LABEL_26;
      }
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000078F0();
        }

        break;
      case 9:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100007934();
        }

        break;
      case 11:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100007978();
        }

        break;
      default:
        goto LABEL_24;
    }
  }

LABEL_30:
  objc_destroyWeak(&location);
}

- (id)description
{
  descriptionOverride = [(HostWatcher *)self descriptionOverride];

  if (descriptionOverride)
  {
    descriptionOverride2 = [(HostWatcher *)self descriptionOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HostWatcher;
    descriptionOverride2 = [(HostWatcher *)&v6 description];
  }

  return descriptionOverride2;
}

- (HostWatcher)initWithCheckinGoop:(void *)goop
{
  v58.receiver = self;
  v58.super_class = HostWatcher;
  theDict = 0;
  v4 = [(HostWatcher *)&v58 init];
  if (!v4)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v64[0] = @"CheckinConnectionInfo";
  v64[1] = @"NoHeartBeat";
  v65[0] = goop;
  v65[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
  v6 = secure_lockdown_checkin();
  if (!v6)
  {
    v11 = CFDictionaryGetValue(theDict, @"HostID");
    v12 = *(v4 + 5);
    *(v4 + 5) = v11;

    v13 = *(v4 + 5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = CFDictionaryGetValue(theDict, @"HostName");
      v15 = *(v4 + 6);
      *(v4 + 6) = v14;

      v16 = *(v4 + 6);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = *(v4 + 6);
        *(v4 + 6) = @"Unknown host";
      }

      v18 = *(v4 + 8);
      socket = lockdown_get_socket();
      v4[6] = socket;
      if (socket == -1)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 0;
        v8 = "Invalid socket.";
      }

      else
      {
        *(v4 + 11) = 0;
        v20 = *(v4 + 8);
        securecontext = lockdown_get_securecontext();
        *(v4 + 16) = securecontext;
        if (!securecontext && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SSL not enabled on this connection.", buf, 2u);
        }

        v22 = objc_alloc_init(NSMutableSet);
        v23 = *(v4 + 9);
        *(v4 + 9) = v22;

        if (*(v4 + 9))
        {
          v24 = objc_alloc_init(NSMutableArray);
          v25 = *(v4 + 10);
          *(v4 + 10) = v24;

          if (*(v4 + 10))
          {
            if (sub_100000FF8(v4[6]))
            {
              v26 = sub_10000487C(v4[6]);
              v27 = *(v4 + 7);
              *(v4 + 7) = v26;

              if (*(v4 + 7))
              {
                v28 = [NSString alloc];
                v29 = objc_opt_class();
                v30 = [v28 initWithFormat:@"<%s: %p> [%@ %@ '%@'] [fd=%d]", class_getName(v29), v4, *(v4 + 5), *(v4 + 7), *(v4 + 6), v4[6]];
                v31 = *(v4 + 11);
                *(v4 + 11) = v30;

                if (*(v4 + 11))
                {
                  v32 = IORegisterForSystemPower(v4, v4 + 15, sub_100004954, v4 + 5);
                  v4[4] = v32;
                  if (v32)
                  {
                    v33 = [NSString alloc];
                    hostID = [v4 hostID];
                    v35 = [v33 initWithFormat:@"com.apple.mobile.heartbeat.pingQueue.%@", hostID];

                    if (v35)
                    {
                      v36 = dispatch_queue_create([v35 UTF8String], 0);
                      v37 = *(v4 + 12);
                      *(v4 + 12) = v36;

                      if (*(v4 + 12))
                      {
                        v38 = dispatch_semaphore_create(0);
                        v39 = *(v4 + 13);
                        *(v4 + 13) = v38;

                        if (*(v4 + 13))
                        {
                          IONotificationPortSetDispatchQueue(*(v4 + 15), qword_100010C08);
                          objc_initWeak(buf, v4);
                          v40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100010C08);
                          v41 = *(v4 + 14);
                          *(v4 + 14) = v40;

                          v42 = *(v4 + 14);
                          if (v42)
                          {
                            dispatch_source_set_timer(v42, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
                            v43 = *(v4 + 14);
                            handler[0] = _NSConcreteStackBlock;
                            handler[1] = 3221225472;
                            handler[2] = sub_100004960;
                            handler[3] = &unk_10000C6C8;
                            objc_copyWeak(&v56, buf);
                            dispatch_source_set_event_handler(v43, handler);
                            v44 = *(v4 + 14);
                            v53[0] = _NSConcreteStackBlock;
                            v53[1] = 3221225472;
                            v53[2] = sub_100004AB0;
                            v53[3] = &unk_10000C6C8;
                            objc_copyWeak(&v54, buf);
                            dispatch_source_set_cancel_handler(v44, v53);
                            dispatch_resume(*(v4 + 14));
                            objc_destroyWeak(&v54);
                            objc_destroyWeak(&v56);
                            objc_destroyWeak(buf);
                            v45 = os_transaction_create();
                            v46 = *(v4 + 4);
                            *(v4 + 4) = v45;

                            v47 = *(v4 + 11);
                            v62 = *(v4 + 5);
                            v63 = v47;
                            sub_10000117C(@"com.apple.heartbeatd.host.attached", [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1]);
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543362;
                              v61 = v4;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initialized host watcher: %{public}@", buf, 0xCu);
                            }

                            v10 = 1;
                            goto LABEL_47;
                          }

                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                          {
                            *v57 = 0;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create timer.", v57, 2u);
                          }

                          objc_destroyWeak(buf);
                          goto LABEL_71;
                        }

                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          v52 = "Failed to create ping semaphore.";
                          goto LABEL_67;
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        v52 = "Failed to allocate queue.";
LABEL_67:
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
                      }

LABEL_71:

                      goto LABEL_46;
                    }

                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_46;
                    }

                    *buf = 0;
                    v8 = "Failed to create string.";
                  }

                  else
                  {
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_46;
                    }

                    *buf = 0;
                    v8 = "Failed to register for system power notifications.";
                  }
                }

                else
                {
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_46;
                  }

                  *buf = 0;
                  v8 = "Failed to create string.";
                }
              }

              else
              {
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_46;
                }

                *buf = 0;
                v8 = "Failed to get _peerName from socket.";
              }
            }

            else
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_46;
              }

              *buf = 0;
              v8 = "Failed setting _sock options";
            }
          }

          else
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_46;
            }

            *buf = 0;
            v8 = "Failed to create set.";
          }
        }

        else
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 0;
          v8 = "Failed to create set.";
        }
      }
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 0;
      v8 = "Checkin info did not contain host ID.";
    }

    v9 = 2;
    goto LABEL_45;
  }

  v7 = v6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v61) = v7;
    v8 = "Failed to checkin: %d";
    v9 = 8;
LABEL_45:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
  }

LABEL_46:
  v10 = 0;
LABEL_47:

LABEL_48:
  if (theDict)
  {
    CFRelease(theDict);
  }

  theDict = 0;
  if (v4)
  {
    v48 = v10;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    if (v4[4])
    {
      v49 = IODeregisterForSystemPower(v4 + 5);
      if (v49)
      {
        v50 = v49;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v61) = v50;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODeregisterForSystemPower failed: %08x", buf, 8u);
        }
      }

      IONotificationPortDestroy(*(v4 + 15));
      IOServiceClose(v4[4]);
      *(v4 + 15) = 0;
      *(v4 + 2) = 0;
    }

    if (*(v4 + 8))
    {
      lockdown_disconnect();
      *(v4 + 8) = 0;
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deallocating host watcher: %{public}@", buf, 0xCu);
  }

  watchedServices = [(HostWatcher *)self watchedServices];
  [watchedServices enumerateObjectsUsingBlock:&stru_10000C778];

  if (self->_ldConn)
  {
    lockdown_disconnect();
  }

  if (self->_powerConn)
  {
    v4 = IODeregisterForSystemPower(&self->_powerNotifier);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODeregisterForSystemPower failed: %08x", buf, 8u);
      }
    }

    IONotificationPortDestroy(self->_powerPort);
    IOServiceClose(self->_powerConn);
  }

  powerDownTimer = self->_powerDownTimer;
  if (powerDownTimer)
  {
    dispatch_source_cancel(powerDownTimer);
  }

  v7.receiver = self;
  v7.super_class = HostWatcher;
  [(HostWatcher *)&v7 dealloc];
}

- (void)powerLogForService:(id)service event:(id)event
{
  serviceCopy = service;
  eventCopy = event;
  v8 = eventCopy;
  if (!serviceCopy || !eventCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v22 = 0;
    v21 = "Invalid argument(s).";
LABEL_13:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
    goto LABEL_14;
  }

  v9 = [NSMutableDictionary alloc];
  v23[0] = @"HostName";
  hostName = [(HostWatcher *)self hostName];
  v24[0] = hostName;
  v23[1] = @"HostClient";
  hostClient = [serviceCopy hostClient];
  v24[1] = hostClient;
  v23[2] = @"Service";
  serviceName = [serviceCopy serviceName];
  v24[2] = serviceName;
  v23[3] = @"ServiceInstanceID";
  serviceInstanceID = [serviceCopy serviceInstanceID];
  uUIDString = [serviceInstanceID UUIDString];
  v23[4] = @"Transport";
  v24[3] = uUIDString;
  v24[4] = @"network";
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  v16 = [v9 initWithDictionary:v15];

  if (!v16)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v22 = 0;
    v21 = "Failed to create dictionary.";
    goto LABEL_13;
  }

  if ([v8 isEqual:@"com.apple.mobile.heartbeat.ServiceStop"])
  {
    TMGetKernelMonotonicClock();
    if (v17 <= 0.0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query monotonic clock time.", v22, 2u);
      }

      goto LABEL_8;
    }

    v18 = v17;
    [serviceCopy serviceStartTime];
    v20 = [NSNumber numberWithDouble:v18 - v19];
    [v16 setObject:v20 forKeyedSubscript:@"DurationSeconds"];
  }

  PLLogRegisteredEvent();
LABEL_8:

LABEL_14:
}

- (void)addService:(id)service
{
  serviceCopy = service;
  dispatch_assert_queue_V2(qword_100010C18);
  if (serviceCopy)
  {
    [(HostWatcher *)self powerLogForService:serviceCopy event:@"com.apple.mobile.heartbeat.ServiceStart"];
    watchedServices = [(HostWatcher *)self watchedServices];
    [watchedServices addObject:serviceCopy];
  }
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  dispatch_assert_queue_V2(qword_100010C18);
  if (serviceCopy)
  {
    [(HostWatcher *)self powerLogForService:serviceCopy event:@"com.apple.mobile.heartbeat.ServiceStop"];
    watchedServices = [(HostWatcher *)self watchedServices];
    [watchedServices removeObject:serviceCopy];
  }
}

- (void)enumerateServices:(id)services
{
  servicesCopy = services;
  dispatch_assert_queue_V2(qword_100010C18);
  watchedServices = [(HostWatcher *)self watchedServices];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000512C;
  v7[3] = &unk_10000C7A0;
  v8 = servicesCopy;
  v6 = servicesCopy;
  [watchedServices enumerateObjectsUsingBlock:v7];
}

@end