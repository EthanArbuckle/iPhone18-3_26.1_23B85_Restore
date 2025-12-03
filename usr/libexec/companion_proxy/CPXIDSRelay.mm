@interface CPXIDSRelay
- (CPXIDSRelay)init;
- (id)sendMessage:(id)message messageDictionary:(id)dictionary;
- (unsigned)acquirePort:(unint64_t)port isLowPriority:(BOOL)priority preferWifi:(BOOL)wifi;
- (unsigned)releasePort:(unint64_t)port isLowPriority:(BOOL)priority preferWifi:(BOOL)wifi;
- (void)handleGenericCPXConnection:(id)connection;
@end

@implementation CPXIDSRelay

- (CPXIDSRelay)init
{
  v16.receiver = self;
  v16.super_class = CPXIDSRelay;
  v2 = [(CPXIDSRelay *)&v16 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  highPriorityPortConnections = v2->_highPriorityPortConnections;
  v2->_highPriorityPortConnections = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  lowPriorityPortConnections = v2->_lowPriorityPortConnections;
  v2->_lowPriorityPortConnections = v5;

  v7 = objc_alloc_init(NSMutableDictionary);
  wifiPortConnections = v2->_wifiPortConnections;
  v2->_wifiPortConnections = v7;

  v9 = dispatch_queue_create("CPXIDSRelayQueue", 0);
  queue = v2->_queue;
  v2->_queue = v9;

  v11 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.companionproxy"];
  service = v2->_service;
  v2->_service = v11;

  v13 = v2->_service;
  if (v13)
  {
    [(IDSService *)v13 addDelegate:v2 queue:v2->_queue];
LABEL_4:
    v14 = v2;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = @"com.apple.private.alloy.companionproxy";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create CPXIDSRelay service for %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (unsigned)acquirePort:(unint64_t)port isLowPriority:(BOOL)priority preferWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  priorityCopy = priority;
  if (!wifi || priority)
  {
    if (priority)
    {
      [(CPXIDSRelay *)self lowPriorityPortConnections];
    }

    else
    {
      [(CPXIDSRelay *)self highPriorityPortConnections];
    }
    wifiPortConnections = ;
  }

  else
  {
    wifiPortConnections = [(CPXIDSRelay *)self wifiPortConnections];
  }

  v9 = wifiPortConnections;
  v10 = [NSNumber numberWithUnsignedInteger:port];
  v11 = [v9 objectForKey:v10];
  unsignedIntValue = [v11 unsignedIntValue];

  v13 = [NSNumber numberWithUnsignedInt:unsignedIntValue + 1];
  v14 = [NSNumber numberWithUnsignedInteger:port];
  [v9 setObject:v13 forKey:v14];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"High";
    if (priorityCopy)
    {
      v16 = @"Low";
    }

    v18 = 138413058;
    v19 = v16;
    v17 = @"WiFi";
    v20 = 2112;
    if (!wifiCopy)
    {
      v17 = @"Bluetooth";
    }

    v21 = v17;
    v22 = 2048;
    portCopy = port;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Number of %@ Priority port connections for preferred link (%@) upon acquire of %lu: %@", &v18, 0x2Au);
  }

  return unsignedIntValue + 1;
}

- (unsigned)releasePort:(unint64_t)port isLowPriority:(BOOL)priority preferWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  priorityCopy = priority;
  if (!wifi || priority)
  {
    if (priority)
    {
      [(CPXIDSRelay *)self lowPriorityPortConnections];
    }

    else
    {
      [(CPXIDSRelay *)self highPriorityPortConnections];
    }
    wifiPortConnections = ;
  }

  else
  {
    wifiPortConnections = [(CPXIDSRelay *)self wifiPortConnections];
  }

  v9 = wifiPortConnections;
  v10 = [NSNumber numberWithUnsignedInteger:port];
  v11 = [v9 objectForKey:v10];
  v12 = [v11 unsignedIntValue] - 1;

  if (v12)
  {
    v13 = [NSNumber numberWithUnsignedInt:v12];
    v14 = [NSNumber numberWithUnsignedInteger:port];
    [v9 setObject:v13 forKey:v14];
  }

  else
  {
    v13 = [NSNumber numberWithUnsignedInteger:port];
    [v9 removeObjectForKey:v13];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"High";
    if (priorityCopy)
    {
      v16 = @"Low";
    }

    v18 = 138413058;
    v19 = v16;
    v17 = @"WiFi";
    v20 = 2112;
    if (!wifiCopy)
    {
      v17 = @"Bluetooth";
    }

    v21 = v17;
    v22 = 2048;
    portCopy = port;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Number of %@ Priority port connections for preferred link (%@) upon release of %lu: %@", &v18, 0x2Au);
  }

  return v12;
}

- (id)sendMessage:(id)message messageDictionary:(id)dictionary
{
  v5 = IDSDefaultPairedDevice;
  dictionaryCopy = dictionary;
  messageCopy = message;
  v8 = [NSSet setWithObject:v5];
  v24[0] = IDSSendMessageOptionTimeoutKey;
  v24[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v25[0] = &off_1000152E0;
  v25[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v10 = [NSPropertyListSerialization dataWithPropertyList:dictionaryCopy format:200 options:0 error:0];

  v16 = 0;
  v17 = 0;
  v11 = [messageCopy sendData:v10 toDestinations:v8 priority:300 options:v9 identifier:&v17 error:&v16];

  v12 = v17;
  v13 = v16;
  if ((v11 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = v12;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IDS send failed (id: %@, data: %@): %@", buf, 0x20u);
  }

  v14 = v12;

  return v12;
}

- (void)handleGenericCPXConnection:(id)connection
{
  connectionCopy = connection;
  v140 = 0;
  v141 = &v140;
  v142 = 0x3032000000;
  v143 = sub_100002854;
  v144 = sub_100002864;
  v145 = 0;
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_100002854;
  v138 = sub_100002864;
  v139 = 0;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = sub_100002854;
  v132 = sub_100002864;
  v133 = 0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = sub_100002854;
  v126 = sub_100002864;
  v127 = 0;
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x2020000000;
  v121[3] = 0;
  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x2020000000;
  v120[3] = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2020000000;
  v111[3] = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x2020000000;
  v110[3] = 0;
  v58 = fcntl([connectionCopy localSocket], 3, 0);
  v56 = fcntl([connectionCopy bridgeSocket], 3, 0);
  v59 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.companion_proxy"];
  v4 = [v59 arrayForKey:@"ServiceSocketLogging"];
  v57 = v4;
  if (v4)
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v5 = v4;
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v106 objects:v154 count:16];
    if (v7)
    {
      v8 = *v107;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v107 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v106 + 1) + 8 * i);
          serviceName = [connectionCopy serviceName];
          LODWORD(v10) = [v10 isEqualToString:serviceName];

          if (v10)
          {
            v12 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              serviceName2 = [connectionCopy serviceName];
              sub_1000099A8(serviceName2, v152, &v153);
            }

            v6 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v106 objects:v154 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = [v59 BOOLForKey:@"EnableSocketDataLogging"];
  v15 = v14;
  if (v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100009A04();
  }

  if (v58 == -1 || fcntl([connectionCopy localSocket], 4, v58 | 4u) == -1)
  {
    v40 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      localSocket = [connectionCopy localSocket];
      v42 = *__error();
      v43 = __error();
      v44 = strerror(*v43);
      *buf = 67109634;
      v147 = localSocket;
      v148 = 1024;
      v149 = v42;
      v150 = 2080;
      v151 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "fcntl failed on local socket %d: %d (%s)", buf, 0x18u);
    }

    goto LABEL_32;
  }

  if (v56 == -1 || fcntl([connectionCopy bridgeSocket], 4, v56 | 4u) == -1)
  {
    v45 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      bridgeSocket = [connectionCopy bridgeSocket];
      v47 = *__error();
      v48 = __error();
      v49 = strerror(*v48);
      *buf = 67109634;
      v147 = bridgeSocket;
      v148 = 1024;
      v149 = v47;
      v150 = 2080;
      v151 = v49;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "fcntl failed on bridge socket %d: %d (%s)", buf, 0x18u);
    }

LABEL_32:

    goto LABEL_33;
  }

  localSocket2 = [connectionCopy localSocket];
  v17 = dispatch_get_global_queue(0, 0);
  v18 = dispatch_source_create(&_dispatch_source_type_read, localSocket2, 0, v17);
  v19 = v141[5];
  v141[5] = v18;

  if (v141[5])
  {
    v20 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
    v117[3] = v20;
    v21 = v141[5];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000286C;
    handler[3] = &unk_100014570;
    v99 = v121;
    v22 = connectionCopy;
    v98 = v22;
    v23 = v6 & 1;
    v104 = v23;
    v100 = &v116;
    v101 = &v140;
    v105 = v15;
    v102 = v111;
    v103 = &v128;
    dispatch_source_set_event_handler(v21, handler);
    v24 = v141[5];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100002C90;
    v92[3] = &unk_100014598;
    v94 = &v128;
    v95 = &v134;
    v25 = v22;
    v93 = v25;
    v96 = &v116;
    dispatch_source_set_cancel_handler(v24, v92);
    v26 = dispatch_source_create(&_dispatch_source_type_write, [v25 bridgeSocket], 0, v17);
    v27 = v129[5];
    v129[5] = v26;

    v28 = v129[5];
    if (v28)
    {
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100002D18;
      v83[3] = &unk_100014570;
      v85 = v121;
      v29 = v25;
      v84 = v29;
      v86 = v111;
      v90 = v23;
      v91 = v15;
      v87 = &v140;
      v88 = &v116;
      v89 = &v128;
      dispatch_source_set_event_handler(v28, v83);
      v30 = dispatch_source_create(&_dispatch_source_type_read, [v29 bridgeSocket], 0, v17);
      v31 = v135[5];
      v135[5] = v30;

      if (v135[5])
      {
        v32 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
        v113[3] = v32;
        v33 = v135[5];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_100003070;
        v74[3] = &unk_100014570;
        v76 = v120;
        v34 = v29;
        v75 = v34;
        v81 = v23;
        v77 = &v112;
        v78 = &v134;
        v82 = v15;
        v79 = v110;
        v80 = &v122;
        dispatch_source_set_event_handler(v33, v74);
        v35 = v135[5];
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_100003408;
        v69[3] = &unk_100014598;
        v71 = &v122;
        v72 = &v140;
        v36 = v34;
        v70 = v36;
        v73 = &v112;
        dispatch_source_set_cancel_handler(v35, v69);
        v37 = dispatch_source_create(&_dispatch_source_type_write, [v36 localSocket], 0, v17);
        v38 = v123[5];
        v123[5] = v37;

        v39 = v123[5];
        if (v39)
        {
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_100003490;
          v60[3] = &unk_100014570;
          v62 = v120;
          v61 = v36;
          v63 = v110;
          v67 = v23;
          v68 = v15;
          v64 = &v134;
          v65 = &v112;
          v66 = &v122;
          dispatch_source_set_event_handler(v39, v60);
          dispatch_resume(v141[5]);
          dispatch_resume(v135[5]);

          goto LABEL_38;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create bridge write dispatch source", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create bridge read dispatch source", buf, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create local write dispatch source", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create local read dispatch source", buf, 2u);
  }

LABEL_33:
  localCompletion = [connectionCopy localCompletion];
  localCompletion[2]();

  bridgeCompletion = [connectionCopy bridgeCompletion];
  bridgeCompletion[2]();

  v52 = v117;
  v53 = v117[3];
  if (v53)
  {
    free(v53);
    v52 = v117;
  }

  v52[3] = 0;
  v54 = v113;
  v55 = v113[3];
  if (v55)
  {
    free(v55);
    v54 = v113;
  }

  v54[3] = 0;
LABEL_38:

  _Block_object_dispose(v110, 8);
  _Block_object_dispose(v111, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(v120, 8);
  _Block_object_dispose(v121, 8);
  _Block_object_dispose(&v122, 8);

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(&v140, 8);
}

@end