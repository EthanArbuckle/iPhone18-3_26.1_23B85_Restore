@interface WatchedServiceInfo
+ (int)processWatchCommand:(id)command;
- (WatchedServiceInfo)initWithWatchCommand:(id)command;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)logService:(const char *)service;
@end

@implementation WatchedServiceInfo

+ (int)processWatchCommand:(id)command
{
  commandCopy = command;
  v4 = [[WatchedServiceInfo alloc] initWithWatchCommand:commandCopy];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "Failed to allocate service.";
      v10 = &v13;
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_11:
    v8 = -1;
    goto LABEL_12;
  }

  v5 = xpc_dictionary_get_remote_connection(commandCopy);
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "Failed to retrieve message from service.";
      v10 = &v12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = v5;
  reply = xpc_dictionary_create_reply(commandCopy);
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "HB_PARAM_REF", [(WatchedServiceInfo *)v4 heartbeatRef]);
    xpc_connection_send_message(v6, reply);
  }

  [(WatchedServiceInfo *)v4 logService:"Watching"];

  v8 = 0;
LABEL_12:

  return v8;
}

- (WatchedServiceInfo)initWithWatchCommand:(id)command
{
  commandCopy = command;
  v43.receiver = self;
  v43.super_class = WatchedServiceInfo;
  v5 = [(WatchedServiceInfo *)&v43 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  bzero(buffer, 0x401uLL);
  objc_initWeak(&location, v5);
  v6 = objc_alloc_init(NSUUID);
  v7 = *(v5 + 4);
  *(v5 + 4) = v6;

  if (!*(v5 + 4))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v18 = "Failed to create UUID.";
LABEL_21:
    v19 = 2;
LABEL_22:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
    goto LABEL_23;
  }

  TMGetKernelMonotonicClock();
  *(v5 + 3) = v8;
  if (v8 <= 0.0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v18 = "Failed to query monotonic clock time.";
    goto LABEL_21;
  }

  v9 = xpc_dictionary_get_remote_connection(commandCopy);
  v5[3] = xpc_connection_get_pid(v9);

  if (!v5[3])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v18 = "Failed to query remote PID.";
    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(commandCopy, "HB_PARAM_HOSTID");
  if (!string)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v21 = v5[3];
    *buf = 67109120;
    LODWORD(v45) = v21;
    v18 = "Failed to query HOST ID from client pid %d";
    goto LABEL_31;
  }

  v11 = [[NSString alloc] initWithCString:string encoding:4];
  v12 = *(v5 + 5);
  *(v5 + 5) = v11;

  if (!*(v5 + 5))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v45 = string;
    v18 = "Failed to create string for %{public}s.";
    goto LABEL_28;
  }

  *(v5 + 2) = mach_absolute_time();
  v13 = xpc_dictionary_dup_fd(commandCopy, "HB_PARAM_FD");
  v5[2] = v13;
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v22 = v5[3];
    *buf = 67109120;
    LODWORD(v45) = v22;
    v18 = "Failed to retrieve valid FD from client pid %d.";
LABEL_31:
    v19 = 8;
    goto LABEL_22;
  }

  if (!sub_100000FF8(v13))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v18 = "Failed setting _ourFD options";
    goto LABEL_21;
  }

  v14 = sub_10000487C(v5[2]);
  v15 = *(v5 + 7);
  *(v5 + 7) = v14;

  if (!*(v5 + 7))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v18 = "Failed to get _peerName from socket.";
    goto LABEL_21;
  }

  uint64 = xpc_dictionary_get_uint64(commandCopy, "HB_PARAM_THEIRFD");
  if (!uint64 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown client FD.", buf, 2u);
  }

  if (proc_pidinfo(v5[3], 11, 1uLL, buffer, 1025))
  {
    v17 = "Unknown process";
  }

  else
  {
    v17 = buffer;
    v23 = rindex(buffer, 47);
    if (v23)
    {
      v17 = v23 + 1;
    }
  }

  v24 = xpc_dictionary_get_string(commandCopy, "HB_PARAM_CLIENTNAME");
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = "Unknown client";
  }

  v26 = [[NSString alloc] initWithUTF8String:v25];
  v27 = *(v5 + 6);
  *(v5 + 6) = v26;

  if (!*(v5 + 6))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v45 = v25;
    v18 = "Failed to create string for %{public}s.";
    goto LABEL_28;
  }

  v28 = xpc_dictionary_get_string(commandCopy, "HB_PARAM_HOSTNAME");
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = "Unknown host";
  }

  v30 = [[NSString alloc] initWithUTF8String:v17];
  v31 = *(v5 + 8);
  *(v5 + 8) = v30;

  if (!*(v5 + 8))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v45 = v17;
    v18 = "Failed to create string for %{public}s.";
LABEL_28:
    v19 = 12;
    goto LABEL_22;
  }

  v32 = [NSString alloc];
  v33 = objc_opt_class();
  v34 = [v32 initWithFormat:@"<%s: %p> [client=%@ '%s' (%@ %@)] [fd=%d] [pid=%d (%@ fd=%d)] [hb=%lld]", class_getName(v33), v5, *(v5 + 6), v29, *(v5 + 5), *(v5 + 7), v5[2], v5[3], *(v5 + 8), uint64, *(v5 + 2)];
  v35 = *(v5 + 9);
  *(v5 + 9) = v34;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100007A54();
  }

  v36 = dispatch_source_create(&_dispatch_source_type_proc, v5[3], 0x80000000uLL, qword_100010C08);
  v37 = *(v5 + 10);
  *(v5 + 10) = v36;

  v38 = *(v5 + 10);
  if (v38)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100005BA4;
    handler[3] = &unk_10000C6C8;
    objc_copyWeak(&v41, &location);
    dispatch_source_set_event_handler(v38, handler);
    dispatch_resume(*(v5 + 10));
    [HostWatcher addService:v5 forHostID:*(v5 + 5)];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
LABEL_50:
    v20 = v5;
    goto LABEL_51;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v18 = "Failed to create dispatch source.";
    goto LABEL_21;
  }

LABEL_23:
  objc_destroyWeak(&location);
  v20 = 0;
LABEL_51:

  return v20;
}

- (void)dealloc
{
  [(WatchedServiceInfo *)self logService:"Deallocating service watcher"];
  ourFD = self->_ourFD;
  if (ourFD != -1)
  {
    shutdown(ourFD, 2);
    close(self->_ourFD);
    self->_ourFD = -1;
  }

  v4.receiver = self;
  v4.super_class = WatchedServiceInfo;
  [(WatchedServiceInfo *)&v4 dealloc];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  [(WatchedServiceInfo *)self logService:"Invalidating service watcher"];
  v3 = qword_100010C08;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005D24;
  v4[3] = &unk_10000C6C8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)description
{
  descriptionOverride = [(WatchedServiceInfo *)self descriptionOverride];

  if (descriptionOverride)
  {
    descriptionOverride2 = [(WatchedServiceInfo *)self descriptionOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WatchedServiceInfo;
    descriptionOverride2 = [(WatchedServiceInfo *)&v6 description];
  }

  return descriptionOverride2;
}

- (void)logService:(const char *)service
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    serviceCopy = service;
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", &v5, 0x16u);
  }
}

@end