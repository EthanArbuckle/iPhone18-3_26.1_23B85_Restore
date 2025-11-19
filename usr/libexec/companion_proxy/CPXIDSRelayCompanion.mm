@interface CPXIDSRelayCompanion
+ (id)defaultCPXIDSRelayCompanion;
- (CPXIDSRelayCompanion)init;
- (id)copyLockdownPortNumWithRequireHostIP:(id)a3 ipV6:(BOOL)a4;
- (id)setupListeningSocket:(unsigned __int16)a3 serviceName:(id)a4 requiredHostIP:(id)a5 ipV6:(BOOL)a6 isLowPriority:(BOOL)a7 preferWifi:(BOOL)a8;
- (void)acquirePort:(unint64_t)a3 isLowPriority:(BOOL)a4 preferWifi:(BOOL)a5;
- (void)dealloc;
- (void)handleIDSRelayConnectionResponse:(id)a3 fromID:(id)a4 UUID:(id)a5 context:(id)a6;
- (void)releasePort:(unint64_t)a3 isLowPriority:(BOOL)a4 preferWifi:(BOOL)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)startTimerForUDID:(id)a3 queue:(id)a4 timeout:(unint64_t)a5 withErrorCallback:(id)a6;
- (void)stopTimerForUDID:(id)a3;
- (void)teardownAllListeningSockets;
- (void)teardownListeningSocket:(unint64_t)a3;
@end

@implementation CPXIDSRelayCompanion

- (CPXIDSRelayCompanion)init
{
  v13.receiver = self;
  v13.super_class = CPXIDSRelayCompanion;
  v2 = [(CPXIDSRelay *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    connectionTimers = v2->_connectionTimers;
    v2->_connectionTimers = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    connectionMap = v2->_connectionMap;
    v2->_connectionMap = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    connectionSources = v2->_connectionSources;
    v2->_connectionSources = v7;

    v9 = dispatch_group_create();
    connectionSourceGroup = v2->_connectionSourceGroup;
    v2->_connectionSourceGroup = v9;

    lockdownPortNum = v2->_lockdownPortNum;
    v2->_lockdownPortNum = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(CPXIDSRelayCompanion *)self teardownAllListeningSockets];
  v3.receiver = self;
  v3.super_class = CPXIDSRelayCompanion;
  [(CPXIDSRelayCompanion *)&v3 dealloc];
}

+ (id)defaultCPXIDSRelayCompanion
{
  if (qword_100019C90 != -1)
  {
    sub_10000A68C();
  }

  v3 = qword_100019C88;

  return v3;
}

- (id)copyLockdownPortNumWithRequireHostIP:(id)a3 ipV6:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v4)
  {
    p_lockdownPortNumIPV6 = &v7->_lockdownPortNumIPV6;
    lockdownPortNumIPV6 = v7->_lockdownPortNumIPV6;
    if (!lockdownPortNumIPV6)
    {
      v10 = [(CPXIDSRelayCompanion *)v7 setupListeningSocket:62078 serviceName:@"com.apple.mobile.lockdown" requiredHostIP:v6 ipV6:1 isLowPriority:0 preferWifi:0];
LABEL_6:
      v11 = *p_lockdownPortNumIPV6;
      *p_lockdownPortNumIPV6 = v10;

      lockdownPortNumIPV6 = *p_lockdownPortNumIPV6;
    }
  }

  else
  {
    p_lockdownPortNumIPV6 = &v7->_lockdownPortNum;
    lockdownPortNumIPV6 = v7->_lockdownPortNum;
    if (!lockdownPortNumIPV6)
    {
      v10 = [(CPXIDSRelayCompanion *)v7 setupListeningSocket:62078 serviceName:@"com.apple.mobile.lockdown" requiredHostIP:v6 ipV6:0 isLowPriority:0 preferWifi:0];
      goto LABEL_6;
    }
  }

  v12 = lockdownPortNumIPV6;
  objc_sync_exit(v7);

  return v12;
}

- (void)startTimerForUDID:(id)a3 queue:(id)a4 timeout:(unint64_t)a5 withErrorCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    sub_10000A71C();
  }

  v13 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A6A0();
  }

  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
  v15 = [(CPXIDSRelayCompanion *)self connectionTimers];
  [v15 setObject:v14 forKeyedSubscript:v10];

  v16 = dispatch_time(0, 1000000000 * a5);
  dispatch_source_set_timer(v14, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000053B0;
  handler[3] = &unk_100014628;
  v20 = v10;
  v21 = self;
  v22 = v13;
  v17 = v13;
  v18 = v10;
  dispatch_source_set_event_handler(v14, handler);
  dispatch_resume(v14);
}

- (void)stopTimerForUDID:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A7C8();
  }

  v5 = [(CPXIDSRelayCompanion *)self connectionTimers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(CPXIDSRelayCompanion *)self connectionTimers];
    v8 = [v7 objectForKeyedSubscript:v4];
    dispatch_source_cancel(v8);

    v9 = [(CPXIDSRelayCompanion *)self connectionTimers];
    [v9 removeObjectForKey:v4];
  }
}

- (void)acquirePort:(unint64_t)a3 isLowPriority:(BOOL)a4 preferWifi:(BOOL)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000554C;
  block[3] = &unk_100014650;
  v6 = a5;
  v7 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)releasePort:(unint64_t)a3 isLowPriority:(BOOL)a4 preferWifi:(BOOL)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057AC;
  block[3] = &unk_100014650;
  v6 = a4;
  v7 = a5;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(&_dispatch_main_q, block);
}

- (id)setupListeningSocket:(unsigned __int16)a3 serviceName:(id)a4 requiredHostIP:(id)a5 ipV6:(BOOL)a6 isLowPriority:(BOOL)a7 preferWifi:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v12 = a3;
  v14 = a4;
  v15 = a5;
  *&v95.sa_len = 0;
  *&v95.sa_data[6] = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = -1;
  if (v10)
  {
    v16 = 30;
  }

  else
  {
    v16 = 2;
  }

  v17 = socket(v16, 1, 0);
  *(v76 + 6) = v17;
  if (v17 == -1)
  {
    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      *buf = 67109378;
      v84 = v23;
      v85 = 2080;
      v86 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "socket failed: %d (%s)", buf, 0x12u);
    }

    goto LABEL_37;
  }

  if (v10)
  {
    v74 = 1;
    LODWORD(v80) = 7708;
    v81 = in6addr_any;
    v79 = 28;
    if (setsockopt(v17, 41, 27, &v74, 4u))
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        v20 = __error();
        v21 = strerror(*v20);
        *buf = 67109378;
        v84 = v19;
        v85 = 2080;
        v86 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setsockopt failed: %d (%s)", buf, 0x12u);
      }

      goto LABEL_36;
    }

    v17 = *(v76 + 6);
    v27 = &v80;
    v26 = v79;
  }

  else
  {
    v95.sa_family = 2;
    *v95.sa_data = 0;
    *&v95.sa_data[2] = 0;
    v26 = 16;
    v79 = 16;
    v27 = &v95;
  }

  if (bind(v17, v27, v26) == -1)
  {
    v43 = &_os_log_default;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v44 = *__error();
    v45 = __error();
    v46 = strerror(*v45);
    *buf = 67109378;
    v84 = v44;
    v85 = 2080;
    v86 = v46;
    v47 = "bind error: %d (%s)";
LABEL_35:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v47, buf, 0x12u);
    goto LABEL_36;
  }

  if (getsockname(*(v76 + 6), v27, &v79) == -1)
  {
    v48 = &_os_log_default;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v49 = *__error();
    v50 = __error();
    v51 = strerror(*v50);
    *buf = 67109378;
    v84 = v49;
    v85 = 2080;
    v86 = v51;
    v47 = "getsockname error: %d (%s)";
    goto LABEL_35;
  }

  v28 = &v95;
  if (v10)
  {
    v28 = &v80;
  }

  v29 = *v28->sa_data;
  if (listen(*(v76 + 6), 128) == -1)
  {
    v52 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *__error();
      v54 = __error();
      v55 = strerror(*v54);
      *buf = 67109378;
      v84 = v53;
      v85 = 2080;
      v86 = v55;
      v47 = "listen error: %d (%s)";
      goto LABEL_35;
    }

LABEL_36:

    close(*(v76 + 6));
LABEL_37:
    v42 = 0;
    goto LABEL_38;
  }

  v30 = *(v76 + 6);
  v31 = dispatch_get_global_queue(0, 0);
  v32 = dispatch_source_create(&_dispatch_source_type_read, v30, 0, v31);

  if (v32)
  {
    v59 = bswap32(v29) >> 16;
    v33 = [CPXIDSForwardingProxy initWithServerPort:"initWithServerPort:targetingPort:" targetingPort:?];
    if (v33)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000061A8;
      handler[3] = &unk_100014678;
      handler[4] = self;
      v70 = &v75;
      v71 = v12;
      v34 = v14;
      v68 = v34;
      v58 = v15;
      v69 = v58;
      v72 = a7;
      v73 = v8;
      dispatch_source_set_event_handler(v32, handler);
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100006224;
      v60[3] = &unk_100014678;
      v65 = v59;
      v66 = v12;
      v64 = &v75;
      v35 = v34;
      v61 = v35;
      v62 = self;
      v36 = v33;
      v63 = v36;
      dispatch_source_set_cancel_handler(v32, v60);
      dispatch_resume(v32);
      v37 = [(CPXIDSRelayCompanion *)self connectionSourceGroup];
      dispatch_group_enter(v37);

      v38 = [(CPXIDSRelayCompanion *)self connectionSources];
      objc_sync_enter(v38);
      v39 = [(CPXIDSRelayCompanion *)self connectionSources];
      [v39 setObject:v32 forKey:v36];

      objc_sync_exit(v38);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"(ipV4)";
        *buf = 67110402;
        v84 = v59;
        v85 = 2048;
        v86 = v12;
        if (v10)
        {
          v40 = @"(ipV6)";
        }

        v41 = @"(Bluetooth)";
        v87 = 2112;
        v88 = v35;
        v89 = 2112;
        if (v8)
        {
          v41 = @"(WiFi)";
        }

        v90 = v58;
        v91 = 2112;
        v92 = v40;
        v93 = 2112;
        v94 = v41;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Forward port companion %d to gizmo %lu for %@ %@ %@. Client link preference: %@", buf, 0x3Au);
      }

      v42 = [NSNumber numberWithUnsignedShort:v59];

      goto LABEL_47;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v57 = "Failed to create proxied ports object.";
      goto LABEL_45;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v57 = "Failed to create listening dispatch source";
LABEL_45:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v57, buf, 2u);
  }

  close(*(v76 + 6));
  v42 = 0;
LABEL_47:

LABEL_38:
  _Block_object_dispose(&v75, 8);

  return v42;
}

- (void)teardownListeningSocket:(unint64_t)a3
{
  v5 = [(CPXIDSRelayCompanion *)self connectionSources];
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CPXIDSRelayCompanion *)self connectionSources];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 targetPort] == a3)
        {
          v12 = [(CPXIDSRelayCompanion *)self connectionSources];
          v13 = [v12 objectForKey:v11];

          if (v13)
          {
            dispatch_source_cancel(v13);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
}

- (void)teardownAllListeningSockets
{
  v3 = [(CPXIDSRelayCompanion *)self connectionSources];
  v4 = [v3 allValues];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v4 count];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "There are %lu sources to tear down", buf, 0xCu);
  }

  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dispatch_source_cancel(*(*(&v16 + 1) + 8 * i));
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v10 = [(CPXIDSRelayCompanion *)self connectionSourceGroup];
    v11 = dispatch_time(0, 3000000000);
    v12 = dispatch_group_wait(v10, v11);

    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      *buf = 0;
      v14 = "Timed out waiting to cancel all connection sources";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      *buf = 0;
      v14 = "Successfully cancelled all connection sources";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
  }

LABEL_17:
  v15 = [(CPXIDSRelayCompanion *)self connectionSources];
  if ([v15 count])
  {
    sub_10000A844();
  }
}

- (void)handleIDSRelayConnectionResponse:(id)a3 fromID:(id)a4 UUID:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 deviceForFromID:v11];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100007264;
  v47 = sub_100007274;
  v48 = 0;
  v15 = [(CPXIDSRelayCompanion *)self connectionMap];
  v16 = [v15 objectForKey:v12];

  if (v16)
  {
    [(CPXIDSRelayCompanion *)self stopTimerForUDID:v12];
    v17 = [(CPXIDSRelayCompanion *)self connectionMap];
    [v17 removeObjectForKey:v12];

    v18 = [v16 objectForKey:@"Socket"];
    v19 = [v18 intValue];
    *(v58 + 6) = v19;

    v20 = [v16 objectForKey:@"Port"];
    v21 = [v20 unsignedIntegerValue];
    v54[3] = v21;

    v22 = [v16 objectForKey:@"LowPriority"];
    v23 = [v22 BOOLValue];
    *(v50 + 24) = v23;

    v24 = [v16 objectForKey:@"ServiceName"];
    v25 = v44[5];
    v44[5] = v24;

    v26 = [v16 objectForKey:@"PreferWifi"];
    v27 = [v26 BOOLValue];

    v66[0] = IDSOpenSocketOptionTransportKey;
    v66[1] = IDSOpenSocketOptionPriorityKey;
    v67[0] = &off_100015338;
    v67[1] = &off_100015350;
    v66[2] = IDSOpenSocketOptionStreamNameKey;
    v67[2] = v12;
    v28 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x3032000000;
    v63 = sub_100007264;
    v64 = sub_100007274;
    v65 = 0;
    v29 = [IDSDeviceConnection alloc];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000727C;
    v33[3] = &unk_100014710;
    p_buf = &buf;
    v38 = &v57;
    v39 = &v53;
    v34 = v12;
    v35 = self;
    v40 = &v43;
    v41 = &v49;
    v42 = v27;
    v36 = v13;
    v30 = [(CPXIDSRelay *)self queue];
    v31 = [v29 initSocketWithDevice:v14 options:v28 completionHandler:v33 queue:v30];
    v32 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v31;

    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error locating entry in connection map for %@", &buf, 0xCu);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v21 = 0;
  v14 = [NSPropertyListSerialization propertyListWithData:a5 options:0 format:0 error:&v21];
  v15 = v21;
  if (v14)
  {
    v16 = [v14 objectForKey:@"Type"];
    v17 = [v16 intValue];

    v18 = [v14 objectForKey:@"UUID"];
    if (v17 == 2)
    {
      [(CPXIDSRelayCompanion *)self handleIDSRelayConnectionResponse:v11 fromID:v12 UUID:v18 context:v13];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: unknown message", v19, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error creating dictionary for message", buf, 2u);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!a6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error occurred sending message (id: %@): %@", &v15, 0x16u);
  }
}

@end