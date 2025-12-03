@interface _NFACHardwareManager
+ (id)sharedHardwareManager;
- (BOOL)_loadHWInfo;
- (BOOL)_queueNewSession:(id)session onConnection:(id)connection;
- (BOOL)isWalletAttached;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_NFACHardwareManager)init;
- (id)_executeWithDriverSessionSync:(id)sync block:(id)block;
- (id)_getInfo;
- (id)_readDriverSettings;
- (os_state_data_s)dumpState;
- (unint64_t)_loadHW;
- (unint64_t)openSession:(id)session;
- (void)_dequeueSession:(id)session startNextSession:(BOOL)nextSession;
- (void)_loadService;
- (void)_probeHW;
- (void)_sync_pushSignedRF:(id)f callback:(id)callback;
- (void)_unloadService;
- (void)basebandStateChanged:(BOOL)changed;
- (void)canResume:(unint64_t)resume status:(id)status;
- (void)clearMultiTagState:(id)state;
- (void)dequeueSession:(id)session;
- (void)didCloseXPCConnection:(id)connection;
- (void)enableLPCD:(BOOL)d callback:(id)callback;
- (void)enableMultiTag:(BOOL)tag callback:(id)callback;
- (void)getDieId:(id)id;
- (void)getInfo:(id)info;
- (void)getLastDetectedTags:(id)tags;
- (void)getMultiTagState:(id)state;
- (void)getPowerCounters:(id)counters;
- (void)getRfSettings:(id)settings;
- (void)handleHardwareReset:(const char *)reset;
- (void)handleMultiTagStateChanged:(id)changed rfError:(BOOL)error;
- (void)handlePLLUnlock;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleRemoteTagsDetected:(id)detected;
- (void)handleRestartDiscovery;
- (void)handleStackLoad;
- (void)handleStackUnload;
- (void)isHWSupported:(id)supported;
- (void)maybeStartNextSession;
- (void)mustStop:(unint64_t)stop;
- (void)powerObserverSystemHasPoweredOn:(id)on;
- (void)powerObserverSystemWillSleep:(id)sleep;
- (void)preferencesDidChange;
- (void)pushSignedRF:(id)f callback:(id)callback;
- (void)queueReaderSession:(id)session callback:(id)callback;
- (void)setClientName:(id)name;
- (void)shutdownAndLeaveHWEnabled:(BOOL)enabled callback:(id)callback;
- (void)start;
- (void)stop;
- (void)triggerDelayedWake:(unsigned __int8)wake callback:(id)callback;
@end

@implementation _NFACHardwareManager

- (void)maybeStartNextSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isRunning = selfCopy->_isRunning;
  objc_sync_exit(selfCopy);

  if (isRunning)
  {
    v5 = selfCopy->_sessions;
    objc_sync_enter(v5);
    if (selfCopy->_systemWillSleep)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session", v11, ClassName, Name, 778);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(selfCopy);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v102 = v14;
        v103 = 2082;
        v104 = object_getClassName(selfCopy);
        v105 = 2082;
        v106 = sel_getName(a2);
        v107 = 1024;
        v108 = 778;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session", buf, 0x22u);
      }

      objc_sync_exit(v5);
      goto LABEL_83;
    }

    if (!selfCopy->_currentSession && [(NSMutableArray *)selfCopy->_sessions count])
    {
      v17 = [(NSMutableArray *)selfCopy->_sessions objectAtIndex:0];
      currentSession = selfCopy->_currentSession;
      selfCopy->_currentSession = v17;

      v19 = selfCopy->_currentSession;
      v20 = objc_opt_class();
      if (v20 != objc_opt_class() || ![(NFACDriverWrapper *)selfCopy->_driverWrapper readerModeProtectionActive])
      {
        [(NSMutableArray *)selfCopy->_sessions removeObjectAtIndex:0];
        objc_sync_exit(v5);

        willStartSession = [(_NFACSession *)selfCopy->_currentSession willStartSession];
        v5 = willStartSession;
        if (willStartSession)
        {
          if ([willStartSession code]== 72)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v32 = NFLogGetLogger();
            if (v32)
            {
              v33 = v32;
              v34 = object_getClass(selfCopy);
              v35 = class_isMetaClass(v34);
              v36 = object_getClassName(selfCopy);
              v96 = sel_getName(a2);
              v37 = 45;
              if (v35)
              {
                v37 = 43;
              }

              v33(6, "%c[%{public}s %{public}s]:%i System will sleep, session will get dequeued later.", v37, v36, v96, 804);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v38 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = object_getClass(selfCopy);
              if (class_isMetaClass(v39))
              {
                v40 = 43;
              }

              else
              {
                v40 = 45;
              }

              *buf = 67109890;
              v102 = v40;
              v103 = 2082;
              v104 = object_getClassName(selfCopy);
              v105 = 2082;
              v106 = sel_getName(a2);
              v107 = 1024;
              v108 = 804;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i System will sleep, session will get dequeued later.", buf, 0x22u);
            }

            [(NSMutableArray *)selfCopy->_sessions insertObject:selfCopy->_currentSession atIndex:0];
            v41 = selfCopy->_currentSession;
            selfCopy->_currentSession = 0;

            goto LABEL_83;
          }

          [(_NFACSession *)selfCopy->_currentSession didStartSession:v5];
          [(_NFACSession *)selfCopy->_currentSession didEndSession:v5];
        }

        else
        {
          [(_NFACSession *)selfCopy->_currentSession didStartSession:0];
        }

LABEL_15:

        if (selfCopy->_currentSession)
        {
          return;
        }

        if (selfCopy->_runLPCD)
        {
          driverWrapper = selfCopy->_driverWrapper;
          v16 = sub_10004C6A8();
        }

        else
        {
          if (selfCopy->_runMultiTagDetection)
          {
            basebandMonitor = selfCopy->_basebandMonitor;
            if (basebandMonitor && (sub_10000976C(basebandMonitor) & 1) != 0)
            {
              if (selfCopy->_needsMultiTagRestart)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v43 = NFLogGetLogger();
                if (v43)
                {
                  v44 = v43;
                  v45 = object_getClass(selfCopy);
                  v46 = class_isMetaClass(v45);
                  v47 = object_getClassName(selfCopy);
                  v97 = sel_getName(a2);
                  v48 = 45;
                  if (v46)
                  {
                    v48 = 43;
                  }

                  v44(6, "%c[%{public}s %{public}s]:%i Restarting multitag detection", v48, v47, v97, 829);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v49 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = object_getClass(selfCopy);
                  if (class_isMetaClass(v50))
                  {
                    v51 = 43;
                  }

                  else
                  {
                    v51 = 45;
                  }

                  v52 = object_getClassName(selfCopy);
                  v53 = sel_getName(a2);
                  *buf = 67109890;
                  v102 = v51;
                  v103 = 2082;
                  v104 = v52;
                  v105 = 2082;
                  v106 = v53;
                  v107 = 1024;
                  v108 = 829;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting multitag detection", buf, 0x22u);
                }

                v54 = selfCopy->_driverWrapper;
                v55 = sub_10004C268();
                v56 = [(NFACDriverWrapper *)v54 setRouting:v55];

                selfCopy->_needsMultiTagRestart = 0;
              }

              if (NFProductIsDevBoard() && (-[_NFACHardwareManager _getDefaults](selfCopy, "_getDefaults"), v57 = objc_claimAutoreleasedReturnValue(), v58 = [v57 BOOLForKey:@"forceMultiTagEnabled"], v57, (v58 & 1) == 0))
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v84 = NFLogGetLogger();
                if (v84)
                {
                  v85 = v84;
                  v86 = object_getClass(selfCopy);
                  v87 = class_isMetaClass(v86);
                  v88 = object_getClassName(selfCopy);
                  v100 = sel_getName(a2);
                  v89 = 45;
                  if (v87)
                  {
                    v89 = 43;
                  }

                  v85(6, "%c[%{public}s %{public}s]:%i Multitag detection is suppressed on dev boards", v89, v88, v100, 835);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v5 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_83;
                }

                v90 = object_getClass(selfCopy);
                if (class_isMetaClass(v90))
                {
                  v91 = 43;
                }

                else
                {
                  v91 = 45;
                }

                v92 = object_getClassName(selfCopy);
                v93 = sel_getName(a2);
                *buf = 67109890;
                v102 = v91;
                v103 = 2082;
                v104 = v92;
                v105 = 2082;
                v106 = v93;
                v107 = 1024;
                v108 = 835;
                v71 = "%c[%{public}s %{public}s]:%i Multitag detection is suppressed on dev boards";
              }

              else
              {
                _getDefaults = [(_NFACHardwareManager *)selfCopy _getDefaults];
                v60 = [_getDefaults BOOLForKey:@"DisableMultiTag"];

                if (!v60)
                {
                  driverWrapper = selfCopy->_driverWrapper;
                  v16 = sub_1000097C0();
                  goto LABEL_82;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v61 = NFLogGetLogger();
                if (v61)
                {
                  v62 = v61;
                  v63 = object_getClass(selfCopy);
                  v64 = class_isMetaClass(v63);
                  v65 = object_getClassName(selfCopy);
                  v98 = sel_getName(a2);
                  v66 = 45;
                  if (v64)
                  {
                    v66 = 43;
                  }

                  v62(6, "%c[%{public}s %{public}s]:%i MultiTag Detection is disabled in nfcd defaults", v66, v65, v98, 838);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v5 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_83;
                }

                v67 = object_getClass(selfCopy);
                if (class_isMetaClass(v67))
                {
                  v68 = 43;
                }

                else
                {
                  v68 = 45;
                }

                v69 = object_getClassName(selfCopy);
                v70 = sel_getName(a2);
                *buf = 67109890;
                v102 = v68;
                v103 = 2082;
                v104 = v69;
                v105 = 2082;
                v106 = v70;
                v107 = 1024;
                v108 = 838;
                v71 = "%c[%{public}s %{public}s]:%i MultiTag Detection is disabled in nfcd defaults";
              }

              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v71, buf, 0x22u);
              goto LABEL_83;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v72 = NFLogGetLogger();
            if (v72)
            {
              v73 = v72;
              v74 = object_getClass(selfCopy);
              v75 = class_isMetaClass(v74);
              v76 = object_getClassName(selfCopy);
              v99 = sel_getName(a2);
              v77 = 45;
              if (v75)
              {
                v77 = 43;
              }

              v73(6, "%c[%{public}s %{public}s]:%i Baseband not ready", v77, v76, v99, 823);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v78 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = object_getClass(selfCopy);
              if (class_isMetaClass(v79))
              {
                v80 = 43;
              }

              else
              {
                v80 = 45;
              }

              v81 = object_getClassName(selfCopy);
              v82 = sel_getName(a2);
              *buf = 67109890;
              v102 = v80;
              v103 = 2082;
              v104 = v81;
              v105 = 2082;
              v106 = v82;
              v107 = 1024;
              v108 = 823;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Baseband not ready", buf, 0x22u);
            }
          }

          driverWrapper = selfCopy->_driverWrapper;
          v16 = sub_10004C268();
        }

LABEL_82:
        v5 = v16;
        v83 = [(NFACDriverWrapper *)driverWrapper setRouting:v16];
LABEL_83:

        return;
      }

      v21 = selfCopy->_currentSession;
      selfCopy->_currentSession = 0;

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v23 = v22;
        v24 = object_getClass(selfCopy);
        v25 = class_isMetaClass(v24);
        v26 = object_getClassName(selfCopy);
        v95 = sel_getName(a2);
        v27 = 45;
        if (v25)
        {
          v27 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i Reader session not dequeued : reader mode protection active", v27, v26, v95, 789);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = object_getClass(selfCopy);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        *buf = 67109890;
        v102 = v30;
        v103 = 2082;
        v104 = object_getClassName(selfCopy);
        v105 = 2082;
        v106 = sel_getName(a2);
        v107 = 1024;
        v108 = 789;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader session not dequeued : reader mode protection active", buf, 0x22u);
      }
    }

    objc_sync_exit(v5);
    goto LABEL_15;
  }
}

+ (id)sharedHardwareManager
{
  if (qword_10035DB78 != -1)
  {
    dispatch_once(&qword_10035DB78, &stru_10031D4B0);
  }

  v3 = qword_10035DB70;

  return v3;
}

- (_NFACHardwareManager)init
{
  v25.receiver = self;
  v25.super_class = _NFACHardwareManager;
  v2 = [(_NFACHardwareManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_hardwareState = 0;
    v4 = objc_opt_new();
    sessions = v3->_sessions;
    v3->_sessions = v4;

    v6 = objc_opt_new();
    xpcConnections = v3->_xpcConnections;
    v3->_xpcConnections = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, -1);

    v10 = dispatch_queue_create("com.apple.nfcacd.xpc", v9);
    xpcConnectionQueue = v3->_xpcConnectionQueue;
    v3->_xpcConnectionQueue = v10;

    dispatch_queue_set_specific(v3->_xpcConnectionQueue, kNFLOG_DISPATCH_SPECIFIC_KEY, 3, 0);
    v12 = dispatch_queue_create("com.apple.nfcacd.workQueue", v9);
    workQueue = v3->_workQueue;
    v3->_workQueue = v12;

    dispatch_queue_set_specific(v3->_workQueue, kNFLOG_DISPATCH_SPECIFIC_KEY, 3, 0);
    v14 = dispatch_get_global_queue(25, 0);
    xpcEventNotificationQueue = v3->_xpcEventNotificationQueue;
    v3->_xpcEventNotificationQueue = v14;

    v16 = [[NFPowerObserver alloc] initWithDelegate:v3];
    powerObserver = v3->_powerObserver;
    v3->_powerObserver = v16;

    v18 = objc_opt_new();
    driverWrapper = v3->_driverWrapper;
    v3->_driverWrapper = v18;

    [(NFACDriverWrapper *)v3->_driverWrapper setDelegate:v3];
    v20 = objc_alloc_init(NFBasebandMonitor);
    basebandMonitor = v3->_basebandMonitor;
    v3->_basebandMonitor = v20;

    v22 = [NFSecureXPCEventPublisher alloc];
    if (v22)
    {
      v22 = sub_100234C58(v22, @"com.apple.accessoryd.nf-events", 1, 33, v3->_xpcEventNotificationQueue, v3->_xpcEventNotificationQueue);
    }

    accessorydEventPublisher = v3->_accessorydEventPublisher;
    v3->_accessorydEventPublisher = v22;
  }

  return v3;
}

- (unint64_t)openSession:(id)session
{
  v3 = [(NFACDriverWrapper *)self->_driverWrapper openSession:session];
  if (v3 != 1)
  {
    v4 = sub_100210FEC();
    sub_100214014(v4, 1, 2);
  }

  return v3;
}

- (void)_probeHW
{
  if (self->_isRunning)
  {
    v4 = [(_NFACHardwareManager *)self openSession:@"HW probe"];
    if (v4 == 1)
    {
      v5 = sub_100210FEC();
      sub_100214014(v5, 0, 2);

      [(_NFACHardwareManager *)self maybeStartNextSession];
      driverWrapper = self->_driverWrapper;

      [(NFACDriverWrapper *)driverWrapper closeSession:@"HW probe"];
    }

    else
    {
      v16 = v4;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v18 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v21 = 45;
        if (isMetaClass)
        {
          v21 = 43;
        }

        v18(3, "%c[%{public}s %{public}s]:%i Failed to open a driver session: %lu", v21, ClassName, Name, 155, v16);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = object_getClass(self);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        *buf = 67110146;
        v29 = v24;
        v30 = 2082;
        v31 = object_getClassName(self);
        v32 = 2082;
        v33 = sel_getName(a2);
        v34 = 1024;
        v35 = 155;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open a driver session: %lu", buf, 0x2Cu);
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v8 = v7;
      v9 = object_getClass(self);
      v10 = class_isMetaClass(v9);
      v11 = object_getClassName(self);
      v26 = sel_getName(a2);
      v12 = 45;
      if (v10)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Not started yet?!", v12, v11, v26, 159);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v29 = v15;
      v30 = 2082;
      v31 = object_getClassName(self);
      v32 = 2082;
      v33 = sel_getName(a2);
      v34 = 1024;
      v35 = 159;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not started yet?!", buf, 0x22u);
    }
  }
}

- (void)start
{
  _getDefaults = [(_NFACHardwareManager *)self _getDefaults];
  v5 = [_getDefaults BOOLForKey:@"DisableFury"];

  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Fury is disabled in nfcd defaults, not starting", "[_NFACHardwareManager start]", 166);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[_NFACHardwareManager start]";
      *&buf[12] = 1024;
      *&buf[14] = 166;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Fury is disabled in nfcd defaults, not starting", buf, 0x12u);
    }
  }

  else
  {
    v8 = _os_activity_create(&_mh_execute_header, "_NFACHardwareManager started", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v8, buf);
    os_activity_scope_leave(buf);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v10 = v9;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(6, "%c[%{public}s %{public}s]:%i starting", v14, ClassName, Name, 173);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v17;
      *&buf[8] = 2082;
      *&buf[10] = v18;
      v46 = 2082;
      v47 = v19;
      v48 = 1024;
      v49 = 173;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i starting", buf, 0x22u);
    }

    v20 = NFSharedSignpostLog();
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_STARTED", &unk_1002E8B7A, buf, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (NFProductSupportsAC())
    {
      v22 = sub_100210FEC();
      sub_100212EFC(v22, selfCopy, 2, selfCopy->_workQueue);

      handler[6] = _NSConcreteStackBlock;
      handler[7] = 3221225472;
      handler[8] = sub_100270FC4;
      handler[9] = &unk_100318408;
      handler[10] = selfCopy;
      selfCopy->_stateCaptureHandle = os_state_add_handler();
      v23 = dispatch_get_global_queue(0, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002710A4;
      handler[3] = &unk_10031D518;
      handler[4] = selfCopy;
      handler[5] = a2;
      xpc_set_event_stream_handler("com.apple.iokit.matching", v23, handler);

      objc_sync_exit(selfCopy);
      v24 = sub_100233748();
      schedulingDailyUpdating = selfCopy->_schedulingDailyUpdating;
      selfCopy->_schedulingDailyUpdating = v24;

      v26 = selfCopy->_schedulingDailyUpdating;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100271518;
      v43[3] = &unk_1003162B8;
      v43[4] = selfCopy;
      v43[5] = a2;
      sub_100233938(v26, @"com.apple.nfcd.coreanalytics.event", v43);
      v27 = selfCopy;
      objc_sync_enter(v27);
      if (v27->_isRunning)
      {
        objc_sync_exit(v27);

        return;
      }

      [(_NFACHardwareManager *)v27 _loadService];
      v27->_isRunning = 1;
      objc_sync_exit(v27);

      workQueue = selfCopy->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002716B0;
      block[3] = &unk_100315F30;
      block[4] = v27;
      dispatch_async(workQueue, block);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(v27);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(v27);
        v41 = sel_getName(a2);
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(6, "%c[%{public}s %{public}s]:%i started", v35, v34, v41, 233);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      selfCopy = NFSharedLogGetLogger();
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
      {
        v36 = object_getClass(v27);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        v38 = object_getClassName(v27);
        v39 = sel_getName(a2);
        *buf = 67109890;
        *&buf[4] = v37;
        *&buf[8] = 2082;
        *&buf[10] = v38;
        v46 = 2082;
        v47 = v39;
        v48 = 1024;
        v49 = 233;
        _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i started", buf, 0x22u);
      }
    }

    else
    {
      selfCopy->_hardwareState = 2;
      v28 = dispatch_get_global_queue(0, 0);
      xpc_set_event_stream_handler("com.apple.iokit.matching", v28, &stru_10031D4F0);

      objc_sync_exit(selfCopy);
    }
  }
}

- (void)stop
{
  v4 = _os_activity_create(&_mh_execute_header, "_NFACHardwareManager stopped", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v4, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Nfcacd stopping", v10, ClassName, Name, 240);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v13;
    *&state[8] = 2082;
    *&state[10] = v14;
    v34 = 2082;
    v35 = v15;
    v36 = 1024;
    v37 = 240;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Nfcacd stopping", state, 0x22u);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *state = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_STOPPING", &unk_1002E8B7A, state, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isRunning)
  {
    [(NFPowerObserver *)selfCopy->_powerObserver unregisterForEvents];
    powerObserver = selfCopy->_powerObserver;
    selfCopy->_powerObserver = 0;

    [(NFPreferenceObserver *)selfCopy->_preferenceObserver stop];
    preferenceObserver = selfCopy->_preferenceObserver;
    selfCopy->_preferenceObserver = 0;

    [(_NFACHardwareManager *)selfCopy _unloadService];
    selfCopy->_isRunning = 0;
    [(NFACDriverWrapper *)selfCopy->_driverWrapper stopNowAndLeveHWEnabled:0];
    [(NSMutableArray *)selfCopy->_sessions removeAllObjects];
    objc_sync_exit(selfCopy);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(selfCopy);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(selfCopy);
      v32 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i nfcacd stopped", v25, v24, v32, 258);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    p_super = NFSharedLogGetLogger();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(selfCopy);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(selfCopy);
      v30 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v28;
      *&state[8] = 2082;
      *&state[10] = v29;
      v34 = 2082;
      v35 = v30;
      v36 = 1024;
      v37 = 258;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i nfcacd stopped", state, 0x22u);
    }
  }

  else
  {
    objc_sync_exit(selfCopy);
    p_super = &selfCopy->super;
  }
}

- (void)_loadService
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Trying to create service", v9, ClassName, Name, 265);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v41 = v12;
    v42 = 2082;
    v43 = object_getClassName(self);
    v44 = 2082;
    v45 = sel_getName(a2);
    v46 = 1024;
    v47 = 265;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Trying to create service", buf, 0x22u);
  }

  v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nfcacd.hwmanager"];
  v14 = qword_10035DB68;
  qword_10035DB68 = v13;

  [qword_10035DB68 setDelegate:self];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(self);
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(self);
    v38 = sel_getName(a2);
    v20 = 45;
    if (v18)
    {
      v20 = 43;
    }

    v16(6, "%c[%{public}s %{public}s]:%i mach service created", v20, v19, v38, 269);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    *buf = 67109890;
    v41 = v23;
    v42 = 2082;
    v43 = v24;
    v44 = 2082;
    v45 = v25;
    v46 = 1024;
    v47 = 269;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i mach service created", buf, 0x22u);
  }

  [qword_10035DB68 _setQueue:self->_xpcConnectionQueue];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(self);
    v29 = class_isMetaClass(v28);
    v30 = object_getClassName(self);
    v39 = sel_getName(a2);
    v31 = 45;
    if (v29)
    {
      v31 = 43;
    }

    v27(6, "%c[%{public}s %{public}s]:%i Resuming service", v31, v30, v39, 273);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = object_getClass(self);
    if (class_isMetaClass(v33))
    {
      v34 = 43;
    }

    else
    {
      v34 = 45;
    }

    v35 = object_getClassName(self);
    v36 = sel_getName(a2);
    *buf = 67109890;
    v41 = v34;
    v42 = 2082;
    v43 = v35;
    v44 = 2082;
    v45 = v36;
    v46 = 1024;
    v47 = 273;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resuming service", buf, 0x22u);
  }

  [qword_10035DB68 resume];
}

- (void)_unloadService
{
  [qword_10035DB68 invalidate];
  [qword_10035DB68 setDelegate:0];
  v2 = qword_10035DB68;
  qword_10035DB68 = 0;
}

- (void)mustStop:(unint64_t)stop
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Secondary must stop", v10, ClassName, Name, 294);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = object_getClassName(self);
    v22 = 2082;
    v23 = sel_getName(a2);
    v24 = 1024;
    v25 = 294;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Secondary must stop", buf, 0x22u);
  }

  self->_stoppedForFailForward = 1;
  runMultiTagDetection = self->_runMultiTagDetection;
  self->_resumeMultiTagAfterFF = runMultiTagDetection;
  if (runMultiTagDetection)
  {
    v15 = [(_NFACHardwareManager *)self enableMultiTag:0];
  }

  [(_NFACHardwareManager *)self stop];
  v16 = sub_100210FEC();
  sub_100214310(v16, 2);
}

- (void)canResume:(unint64_t)resume status:(id)status
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 308);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v19 = v14;
    v20 = 2082;
    v21 = object_getClassName(self);
    v22 = 2082;
    v23 = sel_getName(a2);
    v24 = 1024;
    v25 = 308;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_stoppedForFailForward = 0;
  if (selfCopy->_isRunning)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    [(_NFACHardwareManager *)selfCopy _loadService];
    selfCopy->_isRunning = 1;
    objc_sync_exit(selfCopy);

    [(_NFACHardwareManager *)selfCopy _probeHW];
    if (selfCopy->_resumeMultiTagAfterFF)
    {
      v16 = [(_NFACHardwareManager *)selfCopy enableMultiTag:1];
    }
  }
}

- (void)powerObserverSystemWillSleep:(id)sleep
{
  sleepCopy = sleep;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 331);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v24 = v14;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 331;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_WILL_SLEEP", &unk_1002E8B7A, buf, 2u);
  }

  v16 = self->_sessions;
  objc_sync_enter(v16);
  self->_systemWillSleep = 1;
  objc_sync_exit(v16);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002724C8;
  block[3] = &unk_100315F80;
  v21 = sleepCopy;
  v22 = a2;
  block[4] = self;
  v18 = sleepCopy;
  dispatch_sync(workQueue, block);
}

- (void)powerObserverSystemHasPoweredOn:(id)on
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 360);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = object_getClassName(self);
    v22 = 2082;
    v23 = sel_getName(a2);
    v24 = 1024;
    v25 = 360;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_POWERED_ON", &unk_1002E8B7A, buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100272A28;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_getInfo
{
  v3 = objc_opt_new();
  controllerInfo = self->_controllerInfo;
  if (controllerInfo)
  {
    asDictionary = [(NFHardwareControllerInfo *)controllerInfo asDictionary];
    [v3 setObject:asDictionary forKeyedSubscript:@"Controller"];
  }

  _getDefaults = [(_NFACHardwareManager *)self _getDefaults];
  [_getDefaults synchronize];
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [&off_1003391F8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(&off_1003391F8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [_getDefaults objectForKey:v12];

        if (v13)
        {
          v14 = [_getDefaults objectForKey:v12];
          [v7 setObject:v14 forKey:v12];
        }
      }

      v9 = [&off_1003391F8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v3 setObject:v7 forKeyedSubscript:@"Preferences"];
  v15 = +[NFPowerAssertion sharedPowerAssertion];
  assertionHolders = [v15 assertionHolders];
  [v3 setObject:assertionHolders forKeyedSubscript:@"PowerAssertions"];

  owners = [(NFACDriverWrapper *)self->_driverWrapper owners];
  [v3 setObject:owners forKeyedSubscript:@"DriverOwners"];

  v18 = [NSNumber numberWithBool:self->_stoppedForFailForward];
  [v3 setObject:v18 forKeyedSubscript:@"stoppedForFailForward"];

  return v3;
}

- (id)_executeWithDriverSessionSync:(id)sync block:(id)block
{
  syncCopy = sync;
  blockCopy = block;
  v9 = [(NFACDriverWrapper *)self->_driverWrapper openSession:syncCopy];
  if (v9 == 1)
  {
    v10 = blockCopy[2](blockCopy);
    [(NFACDriverWrapper *)self->_driverWrapper closeSession:syncCopy];
  }

  else
  {
    v11 = v9;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(4, "%c[%{public}s %{public}s]:%i Failed to open session; %@ hwState=%lu", v17, ClassName, Name, 413, syncCopy, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67110402;
      v30 = v20;
      v31 = 2082;
      v32 = object_getClassName(self);
      v33 = 2082;
      v34 = sel_getName(a2);
      v35 = 1024;
      v36 = 413;
      v37 = 2112;
      v38 = syncCopy;
      v39 = 2048;
      v40 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; %@ hwState=%lu", buf, 0x36u);
    }

    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Stack Error"];
    v28 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v10 = [v21 initWithDomain:v22 code:15 userInfo:v24];
  }

  return v10;
}

- (void)getInfo:(id)info
{
  infoCopy = info;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100273044;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(workQueue, v7);
}

- (void)getDieId:(id)id
{
  idCopy = id;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002731DC;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(workQueue, v7);
}

- (void)getPowerCounters:(id)counters
{
  countersCopy = counters;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10027356C;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = countersCopy;
  v6 = countersCopy;
  dispatch_async(workQueue, v7);
}

- (void)getRfSettings:(id)settings
{
  settingsCopy = settings;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100273814;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(workQueue, v7);
}

- (void)enableMultiTag:(BOOL)tag callback:(id)callback
{
  callbackCopy = callback;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100273BBC;
  block[3] = &unk_10031D568;
  block[4] = self;
  v10 = callbackCopy;
  tagCopy = tag;
  v8 = callbackCopy;
  dispatch_async(workQueue, block);
}

- (void)enableLPCD:(BOOL)d callback:(id)callback
{
  callbackCopy = callback;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100274974;
  v10[3] = &unk_100316FA0;
  dCopy = d;
  v11 = callbackCopy;
  v12 = a2;
  v10[4] = self;
  v9 = callbackCopy;
  dispatch_async(workQueue, v10);
}

- (void)getLastDetectedTags:(id)tags
{
  tagsCopy = tags;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100275068;
  block[3] = &unk_100316050;
  v9 = tagsCopy;
  v10 = a2;
  block[4] = self;
  v7 = tagsCopy;
  dispatch_async(workQueue, block);
}

- (void)getMultiTagState:(id)state
{
  stateCopy = state;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027564C;
  block[3] = &unk_100316050;
  v9 = stateCopy;
  v10 = a2;
  block[4] = self;
  v7 = stateCopy;
  dispatch_async(workQueue, block);
}

- (void)setClientName:(id)name
{
  nameCopy = name;
  v6 = +[NSXPCConnection currentConnection];
  v7 = [[NFXPCConnectionUserInfoDictionary alloc] initWithServiceWhitelist:0 clientName:nameCopy];
  v8 = objc_opt_new();
  [v7 setObject:v8 forKeyedSubscript:@"ProxyObjects"];

  [v6 setUserInfo:v7];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    processIdentifier = [v6 processIdentifier];
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i new XPC connection from pid=%d, name=%{public}@", v15, ClassName, Name, 674, processIdentifier, nameCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    *buf = 67110402;
    v21 = v18;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 674;
    v28 = 1024;
    processIdentifier2 = [v6 processIdentifier];
    v30 = 2114;
    v31 = nameCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i new XPC connection from pid=%d, name=%{public}@", buf, 0x32u);
  }
}

- (void)clearMultiTagState:(id)state
{
  stateCopy = state;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100275B24;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(workQueue, v7);
}

- (BOOL)_queueNewSession:(id)session onConnection:(id)connection
{
  sessionCopy = session;
  connectionCopy = connection;
  v9 = [(_NFACHardwareManager *)self _validateSessionRequest:sessionCopy withConnection:connectionCopy];
  if (v9)
  {
    [sessionCopy setConnection:connectionCopy];
    [sessionCopy setQueue:self];
    [sessionCopy setDriverWrapper:self->_driverWrapper];
    ++self->_sessionCounter;
    [sessionCopy setSessionID:?];
    v10 = self->_sessions;
    objc_sync_enter(v10);
    nF_userInfo = [connectionCopy NF_userInfo];
    v12 = [nF_userInfo objectForKeyedSubscript:@"ProxyObjects"];
    [v12 addObject:sessionCopy];

    if (![(NSMutableArray *)self->_sessions count])
    {
      v13 = +[NFPowerAssertion sharedPowerAssertion];
      v14 = [v13 holdPowerAssertion:@"NfcacdSessions" behaviourWhenSleepStarted:2];

      if ((v14 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v16 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v20 = 45;
          if (isMetaClass)
          {
            v20 = 43;
          }

          v16(3, "%c[%{public}s %{public}s]:%i Failed to get power assertion for session", v20, ClassName, Name, 724);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = object_getClass(self);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          *buf = 67109890;
          v36 = v23;
          v37 = 2082;
          v38 = object_getClassName(self);
          v39 = 2082;
          v40 = sel_getName(a2);
          v41 = 1024;
          v42 = 724;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get power assertion for session", buf, 0x22u);
        }
      }
    }

    [(NSMutableArray *)self->_sessions addObject:sessionCopy];
    objc_sync_exit(v10);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(self);
      v34 = sel_getName(a2);
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i New session failed validation", v29, v28, v34, 711);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67109890;
      v36 = v31;
      v37 = 2082;
      v38 = object_getClassName(self);
      v39 = 2082;
      v40 = sel_getName(a2);
      v41 = 1024;
      v42 = 711;
      _os_log_impl(&_mh_execute_header, &v10->super.super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i New session failed validation", buf, 0x22u);
    }
  }

  return v9;
}

- (void)queueReaderSession:(id)session callback:(id)callback
{
  callbackCopy = callback;
  sessionCopy = session;
  v9 = +[NSXPCConnection currentConnection];
  v10 = NFSharedSignpostLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_QUEUE_READER_SESSION", &unk_1002E8B7A, buf, 2u);
  }

  v11 = [[_NFACReaderSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  if ([(_NFACHardwareManager *)self _queueNewSession:v11 onConnection:v9])
  {
    v12 = sub_1001AE468();
    [(_NFACReaderSession *)v11 setPowerConsumptionReporter:v12];

    callbackCopy[2](callbackCopy, v11, 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002764FC;
    block[3] = &unk_100315F30;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Failed to queue session", v19, ClassName, Name, 746);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(self);
      v24 = sel_getName(a2);
      *buf = 67109890;
      v35 = v22;
      v36 = 2082;
      v37 = v23;
      v38 = 2082;
      v39 = v24;
      v40 = 1024;
      v41 = 746;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to queue session", buf, 0x22u);
    }

    v25 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Security Violation"];
    v33 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v29 = [v25 initWithDomain:v26 code:8 userInfo:v28];
    (callbackCopy)[2](callbackCopy, 0, v29);
  }
}

- (void)shutdownAndLeaveHWEnabled:(BOOL)enabled callback:(id)callback
{
  callbackCopy = callback;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_SHUTDOWN", &unk_1002E8B7A, buf, 2u);
  }

  if (NFIsInternalBuild())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(6, "%c[%{public}s %{public}s]:%i ", v14, ClassName, Name, 860);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      *buf = 67109890;
      v32 = v17;
      v33 = 2082;
      v34 = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 1024;
      v38 = 860;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100276820;
    block[3] = &unk_100316FA0;
    block[4] = self;
    v29 = a2;
    v28 = callbackCopy;
    enabledCopy = enabled;
    dispatch_async(workQueue, block);
  }

  else
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v39 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v40 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v25 = [v21 initWithDomain:v22 code:14 userInfo:v24];
    (*(callbackCopy + 2))(callbackCopy, v25);
  }
}

- (void)dequeueSession:(id)session
{
  sessionCopy = session;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100276DFC;
  v7[3] = &unk_100315FA8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(workQueue, v7);
}

- (void)_dequeueSession:(id)session startNextSession:(BOOL)nextSession
{
  nextSessionCopy = nextSession;
  sessionCopy = session;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_DEQUEUE_SESSION", &unk_1002E8B7A, buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isRunning = selfCopy->_isRunning;
  objc_sync_exit(selfCopy);

  if (isRunning)
  {
    v11 = selfCopy->_sessions;
    objc_sync_enter(v11);
    if (selfCopy->_currentSession == sessionCopy)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Aborted"];
      v57 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v21 = [v17 initWithDomain:v18 code:3 userInfo:v20];
      [(_NFACSession *)sessionCopy didEndSession:v21];

      currentSession = selfCopy->_currentSession;
      selfCopy->_currentSession = 0;

      if (selfCopy->_systemWillSleep)
      {
        v23 = NFSharedSignpostLog();
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_dequeueSession: allowing to sleep", &unk_1002E8B7A, buf, 2u);
        }

        [(NFPowerObserver *)selfCopy->_powerObserver allowSleep];
      }
    }

    else
    {
      if (![(NSMutableArray *)selfCopy->_sessions containsObject:sessionCopy])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v29 = Logger;
          Class = object_getClass(selfCopy);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(selfCopy);
          Name = sel_getName(a2);
          v32 = 45;
          if (isMetaClass)
          {
            v32 = 43;
          }

          v29(5, "%c[%{public}s %{public}s]:%i Session not found in queue %@", v32, ClassName, Name, 920, sessionCopy);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = object_getClass(selfCopy);
          if (class_isMetaClass(v34))
          {
            v35 = 43;
          }

          else
          {
            v35 = 45;
          }

          v36 = object_getClassName(selfCopy);
          v37 = sel_getName(a2);
          *buf = 67110146;
          v45 = v35;
          v46 = 2082;
          v47 = v36;
          v48 = 2082;
          v49 = v37;
          v50 = 1024;
          v51 = 920;
          v52 = 2112;
          v53 = sessionCopy;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session not found in queue %@", buf, 0x2Cu);
        }

        [(_NFACSession *)sessionCopy releaseRemoteObject];
        connection = [(_NFACSession *)sessionCopy connection];
        nF_userInfo = [connection NF_userInfo];
        v39 = [nF_userInfo objectForKeyedSubscript:@"ProxyObjects"];
        [v39 removeObject:sessionCopy];

        goto LABEL_22;
      }

      [(NSMutableArray *)selfCopy->_sessions removeObject:sessionCopy];
      v12 = [NSError alloc];
      v13 = [NSString stringWithUTF8String:"nfcd"];
      v54 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithUTF8String:"Aborted"];
      v55 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v16 = [v12 initWithDomain:v13 code:3 userInfo:v15];
      [(_NFACSession *)sessionCopy didEndSession:v16];
    }

    [(_NFACSession *)sessionCopy releaseRemoteObject];
    connection2 = [(_NFACSession *)sessionCopy connection];
    nF_userInfo2 = [connection2 NF_userInfo];
    v26 = [nF_userInfo2 objectForKeyedSubscript:@"ProxyObjects"];
    [v26 removeObject:sessionCopy];

    connection = +[NFPowerAssertion sharedPowerAssertion];
    [connection releasePowerAssertion:@"NfcacdSessions"];
LABEL_22:

    objc_sync_exit(v11);
    if (nextSessionCopy)
    {
      workQueue = selfCopy->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10027735C;
      block[3] = &unk_100315F30;
      block[4] = selfCopy;
      dispatch_async(workQueue, block);
    }
  }
}

- (BOOL)_loadHWInfo
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100277570;
  v18[3] = &unk_10031D5E0;
  v18[4] = self;
  v18[5] = a2;
  v4 = [(_NFACHardwareManager *)self _executeWithDriverSessionSync:@"Load HW Info" block:v18];
  if (v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 963, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(self);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(self);
      v14 = sel_getName(a2);
      *buf = 67110146;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 1024;
      v26 = 963;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  return v4 == 0;
}

- (unint64_t)_loadHW
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_LOAD_HW", &unk_1002E8B7A, buf, 2u);
  }

  driverWrapper = self->_driverWrapper;
  _readDriverSettings = [(_NFACHardwareManager *)self _readDriverSettings];
  [(NFACDriverWrapper *)driverWrapper configureDriverSettings:_readDriverSettings];

  if (([(NFPowerObserver *)self->_powerObserver registerForEvents]& 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to register for power events", v12, ClassName, Name, 981);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(self);
      v17 = sel_getName(a2);
      *buf = 67109890;
      v61 = v15;
      v62 = 2082;
      v63 = v16;
      v64 = 2082;
      v65 = v17;
      v66 = 1024;
      v67 = 981;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register for power events", buf, 0x22u);
    }
  }

  if (!self->_preferenceObserver)
  {
    v18 = objc_opt_new();
    preferenceObserver = self->_preferenceObserver;
    self->_preferenceObserver = v18;

    v20 = self->_preferenceObserver;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100277E4C;
    v59[3] = &unk_100315F30;
    v59[4] = self;
    [(NFPreferenceObserver *)v20 start:v59];
  }

  v21 = [(_NFACHardwareManager *)self openSession:@"Load HW"];
  if (v21 != 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v52 = object_getClassName(self);
      v55 = sel_getName(a2);
      v31 = 45;
      if (v30)
      {
        v31 = 43;
      }

      v28(4, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v31, v52, v55, 993, v21);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(self);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      *buf = 67110146;
      v61 = v33;
      v62 = 2082;
      v63 = v34;
      v64 = 2082;
      v65 = v35;
      v66 = 1024;
      v67 = 993;
      v68 = 2048;
      v69 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
    }

    goto LABEL_48;
  }

  if ([(_NFACHardwareManager *)self _loadHWInfo])
  {
    v22 = sub_1001AB908(NFPowerTrackingConsumer, [(NFHardwareControllerInfo *)self->_controllerInfo siliconName]);
    v23 = v22;
    if (v22)
    {
      *(v22 + 16) = 0;
    }

    v24 = sub_1001AE468();
    sub_1001AE198(v24, v23);

    if (self->_runLPCD)
    {
      if ([(_NFACHardwareManager *)self openSession:@"LpcdSession"]== 1)
      {
        v25 = os_transaction_create();
        lpcdTransaction = self->_lpcdTransaction;
        self->_lpcdTransaction = v25;

        [(_NFACHardwareManager *)self maybeStartNextSession];
      }
    }

    else if (self->_runMultiTagDetection && [(_NFACHardwareManager *)self openSession:@"MultiTagSession"]== 1)
    {
      v36 = os_transaction_create();
      multiTagTransaction = self->_multiTagTransaction;
      self->_multiTagTransaction = v36;

      v58 = 0;
      v38 = self->_driverWrapper;
      v57 = 0;
      v39 = [(NFACDriverWrapper *)v38 queryMultiTagState:&v58 error:&v57];
      v40 = v57;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(self);
        v44 = class_isMetaClass(v43);
        v53 = object_getClassName(self);
        v56 = sel_getName(a2);
        v45 = 45;
        if (v44)
        {
          v45 = 43;
        }

        v42(6, "%c[%{public}s %{public}s]:%i detectedTags; %{public}@", v45, v53, v56, 1023, v39);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = object_getClass(self);
        if (class_isMetaClass(v47))
        {
          v48 = 43;
        }

        else
        {
          v48 = 45;
        }

        v49 = object_getClassName(self);
        v50 = sel_getName(a2);
        *buf = 67110146;
        v61 = v48;
        v62 = 2082;
        v63 = v49;
        v64 = 2082;
        v65 = v50;
        v66 = 1024;
        v67 = 1023;
        v68 = 2114;
        v69 = v39;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i detectedTags; %{public}@", buf, 0x2Cu);
      }

      if (v58 == 1)
      {
        objc_storeStrong(&self->_lastDetectedTags, v39);
      }

      [(_NFACHardwareManager *)self maybeStartNextSession];
    }

    sub_1001A38F4(self->_basebandMonitor, self);
    [(NFACDriverWrapper *)self->_driverWrapper closeSession:@"Load HW"];
LABEL_48:

    return v21;
  }

  return 2;
}

- (void)didCloseXPCConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [connectionCopy NF_clientName];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Removing XPC connection for %{public}@ - %{public}@", v13, ClassName, Name, 1041, nF_clientName, connectionCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    nF_clientName2 = [connectionCopy NF_clientName];
    *buf = 67110402;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    v30 = 2082;
    v31 = v18;
    v32 = 1024;
    v33 = 1041;
    v34 = 2114;
    v35 = nF_clientName2;
    v36 = 2114;
    v37 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing XPC connection for %{public}@ - %{public}@", buf, 0x36u);
  }

  v20 = NFSharedSignpostLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_XPC_CONNECTION_CLOSE", &unk_1002E8B7A, buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002780F8;
  block[3] = &unk_100315F80;
  v24 = connectionCopy;
  v25 = a2;
  block[4] = self;
  v22 = connectionCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 1065);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(self);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(self);
    v17 = sel_getName(a2);
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v15;
    v65 = 2082;
    v66 = v16;
    v67 = 2082;
    v68 = v17;
    v69 = 1024;
    v70 = 1065;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &buf, 0x22u);
  }

  v18 = NFSharedSignpostLog();
  if (os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_XPC_CONNECT", &unk_1002E8B7A, &buf, 2u);
  }

  v19 = [connectionCopy valueForEntitlement:@"com.apple.nfcacd.hwmanager"];
  if (v19)
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v61[3] = selfCopy->_hardwareState;
    objc_sync_exit(selfCopy);

    if ((v61[3] | 2) == 2)
    {
      workQueue = selfCopy->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100278B88;
      block[3] = &unk_1003157C0;
      block[4] = selfCopy;
      block[5] = &v60;
      dispatch_sync(workQueue, block);
      if (v61[3] != 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v23 = v22;
          v24 = object_getClass(selfCopy);
          v25 = class_isMetaClass(v24);
          v26 = object_getClassName(selfCopy);
          v27 = sel_getName(a2);
          v28 = 45;
          if (v25)
          {
            v28 = 43;
          }

          v23(4, "%c[%{public}s %{public}s]:%i Hardware not available : %lu", v28, v26, v27, 1090, selfCopy->_hardwareState);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = object_getClass(selfCopy);
          if (class_isMetaClass(v30))
          {
            v31 = 43;
          }

          else
          {
            v31 = 45;
          }

          v32 = object_getClassName(selfCopy);
          v33 = sel_getName(a2);
          hardwareState = selfCopy->_hardwareState;
          LODWORD(buf) = 67110146;
          HIDWORD(buf) = v31;
          v65 = 2082;
          v66 = v32;
          v67 = 2082;
          v68 = v33;
          v69 = 1024;
          v70 = 1090;
          v71 = 2048;
          *v72 = hardwareState;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardware not available : %lu", &buf, 0x2Cu);
        }
      }

      v35 = selfCopy;
      objc_sync_enter(v35);
      selfCopy->_hardwareState = v61[3];
      objc_sync_exit(v35);
    }

    v36 = sub_1001869E4();
    [connectionCopy setRemoteObjectInterface:v36];

    v37 = sub_10018683C();
    [connectionCopy setExportedInterface:v37];

    [connectionCopy setExportedObject:selfCopy];
    objc_initWeak(&buf, connectionCopy);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100278C80;
    v57[3] = &unk_10031D608;
    v57[4] = selfCopy;
    objc_copyWeak(&v58, &buf);
    [connectionCopy setInvalidationHandler:v57];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100278CD4;
    v55[3] = &unk_10031D608;
    v55[4] = selfCopy;
    objc_copyWeak(&v56, &buf);
    [connectionCopy setInterruptionHandler:v55];
    [connectionCopy _setQueue:selfCopy->_xpcConnectionQueue];
    v38 = selfCopy->_xpcConnections;
    objc_sync_enter(v38);
    [(NSMutableArray *)selfCopy->_xpcConnections addObject:connectionCopy];
    objc_sync_exit(v38);

    [connectionCopy resume];
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&buf);
    _Block_object_dispose(&v60, 8);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(self);
      v44 = sel_getName(a2);
      processIdentifier = [connectionCopy processIdentifier];
      v45 = 45;
      if (v42)
      {
        v45 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i client; pid=%d is missing entitlement :%{public}@", v45, v43, v44, 1069, processIdentifier, @"com.apple.nfcacd.hwmanager");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = object_getClass(self);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(self);
      v50 = sel_getName(a2);
      processIdentifier2 = [connectionCopy processIdentifier];
      LODWORD(buf) = 67110402;
      HIDWORD(buf) = v48;
      v65 = 2082;
      v66 = v49;
      v67 = 2082;
      v68 = v50;
      v69 = 1024;
      v70 = 1069;
      v71 = 1024;
      *v72 = processIdentifier2;
      *&v72[4] = 2114;
      *&v72[6] = @"com.apple.nfcacd.hwmanager";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i client; pid=%d is missing entitlement :%{public}@", &buf, 0x32u);
    }
  }

  return v19 != 0;
}

- (void)handleReaderBurnoutTimer
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_TIMER", &unk_1002E8B7A, buf, 2u);
  }

  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100278E04;
  v6[3] = &unk_100315F58;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(workQueue, v6);
}

- (void)handleReaderBurnoutCleared
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_TIMER_CLEARED", &unk_1002E8B7A, buf, 2u);
  }

  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002790B4;
  v6[3] = &unk_100315F58;
  v6[4] = self;
  v6[5] = a2;
  dispatch_sync(workQueue, v6);
}

- (void)handleRestartDiscovery
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1151);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 1151;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (void)handleHardwareReset:(const char *)reset
{
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_HW_RESET", &unk_1002E8B7A, v6, 2u);
  }

  [(NFACDriverWrapper *)self->_driverWrapper simulateCrash:57005 reason:reset];
}

- (void)handlePLLUnlock
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_PLL_UNLOCK", &unk_1002E8B7A, buf, 2u);
  }

  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100279554;
  v6[3] = &unk_100315F58;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(workQueue, v6);
}

- (void)handleStackUnload
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_STACK_UNLOAD", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 1202);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v18 = v13;
    v19 = 2082;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 1024;
    v24 = 1202;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (void)handleStackLoad
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_STACK_LOAD", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 1208);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v18 = v13;
    v19 = 2082;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 1024;
    v24 = 1208;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (void)handleRemoteTagsDetected:(id)detected
{
  detectedCopy = detected;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100279DFC;
  block[3] = &unk_100315F80;
  v9 = detectedCopy;
  v10 = a2;
  block[4] = self;
  v7 = detectedCopy;
  dispatch_async(workQueue, block);
}

- (void)handleMultiTagStateChanged:(id)changed rfError:(BOOL)error
{
  changedCopy = changed;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10027A664;
  v10[3] = &unk_100318D38;
  v11 = changedCopy;
  v12 = a2;
  v10[4] = self;
  errorCopy = error;
  v9 = changedCopy;
  dispatch_async(workQueue, v10);
}

- (void)preferencesDidChange
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_13;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_readDriverSettings
{
  v4 = objc_opt_new();
  _getDefaults = [(_NFACHardwareManager *)self _getDefaults];
  [_getDefaults synchronize];
  self->_runLPCD = [_getDefaults BOOLForKey:@"LpcdAlwaysOn"];
  self->_runMultiTagDetection = [_getDefaults BOOLForKey:@"MultiTagDetectionOn"];
  if ([_getDefaults BOOLForKey:@"LogNCI"])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if ([_getDefaults BOOLForKey:@"LogAPI"])
  {
    v6 |= 8uLL;
  }

  if ([_getDefaults BOOLForKey:@"LogAPDU"])
  {
    v6 |= 0x10uLL;
  }

  if ([_getDefaults BOOLForKey:@"LogLPCD"])
  {
    v6 |= 0x2000uLL;
  }

  if ([_getDefaults BOOLForKey:@"MultiTagDebug"])
  {
    v6 |= 0x800000uLL;
  }

  v7 = [_getDefaults integerForKey:@"LogRF"];
  v8 = v6 | 1;
  v9 = v6 | 2;
  if (v7 != 1)
  {
    v9 = v6;
  }

  if (v7 != 2)
  {
    v8 = v9;
  }

  if (v7 == 4)
  {
    v10 = v6 | 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = [NSDictionary alloc];
  v12 = [NSString stringWithUTF8String:"/Library/Preferences/Logging/Subsystems/com.apple.nfcac.plist"];
  v13 = [v11 initWithContentsOfFile:v12];

  if (v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(6, "%c[%{public}s %{public}s]:%i Loading managed profile settings", v19, ClassName, Name, 1344);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v119 = v22;
      v120 = 2082;
      v121 = object_getClassName(self);
      v122 = 2082;
      v123 = sel_getName(a2);
      v124 = 1024;
      v125 = 1344;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Loading managed profile settings", buf, 0x22u);
    }

    v23 = [v13 objectForKey:@"LpcdAlwaysOn"];

    if (v23)
    {
      v24 = [v13 objectForKey:@"LpcdAlwaysOn"];
      bOOLValue = [v24 BOOLValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v107 = object_getClassName(self);
        v113 = sel_getName(a2);
        v30 = 45;
        if (v29)
        {
          v30 = 43;
        }

        v27(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LpcdAlwaysOn with managed profile: %d", v30, v107, v113, 1348, bOOLValue);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = object_getClass(self);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(self);
        v35 = sel_getName(a2);
        *buf = 67110146;
        v119 = v33;
        v120 = 2082;
        v121 = v34;
        v122 = 2082;
        v123 = v35;
        v124 = 1024;
        v125 = 1348;
        v126 = 1024;
        v127 = bOOLValue;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LpcdAlwaysOn with managed profile: %d", buf, 0x28u);
      }

      self->_runLPCD = bOOLValue;
    }

    v36 = [v13 objectForKey:@"LogAPDU"];

    if (v36)
    {
      v37 = [v13 objectForKey:@"LogAPDU"];
      bOOLValue2 = [v37 BOOLValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v40 = v39;
        v41 = object_getClass(self);
        v42 = class_isMetaClass(v41);
        v108 = object_getClassName(self);
        v114 = sel_getName(a2);
        v43 = 45;
        if (v42)
        {
          v43 = 43;
        }

        v40(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", v43, v108, v114, 1353, bOOLValue2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = object_getClass(self);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(self);
        v48 = sel_getName(a2);
        *buf = 67110146;
        v119 = v46;
        v120 = 2082;
        v121 = v47;
        v122 = 2082;
        v123 = v48;
        v124 = 1024;
        v125 = 1353;
        v126 = 1024;
        v127 = bOOLValue2;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", buf, 0x28u);
      }

      v49 = 16;
      if (!bOOLValue2)
      {
        v49 = 0;
      }

      v10 = v49 | v10 & 0xFFFFFFFFFFFFFFEFLL;
    }

    v50 = [v13 objectForKey:@"LogAPI"];

    if (v50)
    {
      v51 = [v13 objectForKey:@"LogAPI"];
      bOOLValue3 = [v51 BOOLValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v54 = v53;
        v55 = object_getClass(self);
        v56 = class_isMetaClass(v55);
        v109 = object_getClassName(self);
        v115 = sel_getName(a2);
        v57 = 45;
        if (v56)
        {
          v57 = 43;
        }

        v54(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", v57, v109, v115, 1359, bOOLValue3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = object_getClass(self);
        if (class_isMetaClass(v59))
        {
          v60 = 43;
        }

        else
        {
          v60 = 45;
        }

        v61 = object_getClassName(self);
        v62 = sel_getName(a2);
        *buf = 67110146;
        v119 = v60;
        v120 = 2082;
        v121 = v61;
        v122 = 2082;
        v123 = v62;
        v124 = 1024;
        v125 = 1359;
        v126 = 1024;
        v127 = bOOLValue3;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", buf, 0x28u);
      }

      v63 = 8;
      if (!bOOLValue3)
      {
        v63 = 0;
      }

      v10 = v63 | v10 & 0xFFFFFFFFFFFFFFF7;
    }

    v64 = [v13 objectForKey:@"LogNCI"];

    if (v64)
    {
      v65 = [v13 objectForKey:@"LogNCI"];
      bOOLValue4 = [v65 BOOLValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v68 = v67;
        v69 = object_getClass(self);
        v70 = class_isMetaClass(v69);
        v110 = object_getClassName(self);
        v116 = sel_getName(a2);
        v71 = 45;
        if (v70)
        {
          v71 = 43;
        }

        v68(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", v71, v110, v116, 1365, bOOLValue4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = object_getClass(self);
        if (class_isMetaClass(v73))
        {
          v74 = 43;
        }

        else
        {
          v74 = 45;
        }

        v75 = object_getClassName(self);
        v76 = sel_getName(a2);
        *buf = 67110146;
        v119 = v74;
        v120 = 2082;
        v121 = v75;
        v122 = 2082;
        v123 = v76;
        v124 = 1024;
        v125 = 1365;
        v126 = 1024;
        v127 = bOOLValue4;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", buf, 0x28u);
      }

      v77 = 4;
      if (!bOOLValue4)
      {
        v77 = 0;
      }

      v10 = v77 | v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v78 = [v13 objectForKey:@"LogRF"];

    if (v78)
    {
      v79 = [v13 objectForKey:@"LogRF"];
      intValue = [v79 intValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v81 = NFLogGetLogger();
      if (v81)
      {
        v82 = v81;
        v83 = object_getClass(self);
        v84 = class_isMetaClass(v83);
        v111 = object_getClassName(self);
        v117 = sel_getName(a2);
        v85 = 45;
        if (v84)
        {
          v85 = 43;
        }

        v82(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", v85, v111, v117, 1371, intValue);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = object_getClass(self);
        if (class_isMetaClass(v87))
        {
          v88 = 43;
        }

        else
        {
          v88 = 45;
        }

        v89 = object_getClassName(self);
        v90 = sel_getName(a2);
        *buf = 67110146;
        v119 = v88;
        v120 = 2082;
        v121 = v89;
        v122 = 2082;
        v123 = v90;
        v124 = 1024;
        v125 = 1371;
        v126 = 1024;
        v127 = intValue;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", buf, 0x28u);
      }

      v91 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      if (intValue == 1)
      {
        v91 = v10 & 0xFFFFFFFFFFFFFFFCLL | 2;
      }

      if (intValue == 2)
      {
        v91 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
      }

      if (intValue == 4)
      {
        v10 |= 3uLL;
      }

      else
      {
        v10 = v91;
      }
    }
  }

  v92 = [_getDefaults integerForKey:@"PollingPeriod"];
  v93 = v92 & ~(v92 >> 63);
  v94 = [NSNumber numberWithUnsignedLongLong:v10];
  [v4 setObject:v94 forKeyedSubscript:@"flags"];

  v95 = [NSNumber numberWithInteger:v93];
  [v4 setObject:v95 forKeyedSubscript:@"pollPeriod"];

  v96 = [_getDefaults integerForKey:@"MultiTagPollingPeriod"];
  v97 = [NSNumber numberWithInteger:v96 & ~(v96 >> 63)];
  [v4 setObject:v97 forKeyedSubscript:@"multiTagPollPeriod"];

  v98 = [_getDefaults integerForKey:@"MultiTagPollingRetries"];
  v99 = [NSNumber numberWithInteger:v98 & ~(v98 >> 63)];
  [v4 setObject:v99 forKeyedSubscript:@"multiTagPollRetries"];

  v100 = [_getDefaults integerForKey:@"NTAG5DataRate"];
  v101 = [NSNumber numberWithInteger:v100 & ~(v100 >> 63)];
  [v4 setObject:v101 forKeyedSubscript:@"ntag5DataRate"];

  v102 = [_getDefaults integerForKey:@"TypeATagDataRate"];
  v103 = [NSNumber numberWithInteger:v102 & ~(v102 >> 63)];
  [v4 setObject:v103 forKeyedSubscript:@"typeATagDataRate"];

  v104 = [_getDefaults integerForKey:@"NTAG5T1"];
  v105 = [NSNumber numberWithInteger:v104 & ~(v104 >> 63)];
  [v4 setObject:v105 forKeyedSubscript:@"ntag5T1"];

  return v4;
}

- (void)isHWSupported:(id)supported
{
  hardwareState = self->_hardwareState;
  if (hardwareState < 4)
  {
    v4 = (hardwareState + 1);
  }

  else
  {
    v4 = 0;
  }

  (*(supported + 2))(supported, v4);
}

- (void)triggerDelayedWake:(unsigned __int8)wake callback:(id)callback
{
  callbackCopy = callback;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10027B8F8;
  v10[3] = &unk_100316FA0;
  v11 = callbackCopy;
  v12 = a2;
  v10[4] = self;
  wakeCopy = wake;
  v9 = callbackCopy;
  dispatch_async(workQueue, v10);
}

- (void)pushSignedRF:(id)f callback:(id)callback
{
  fCopy = f;
  callbackCopy = callback;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027BED4;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v12 = fCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = fCopy;
  dispatch_async(workQueue, block);
}

- (void)_sync_pushSignedRF:(id)f callback:(id)callback
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10027BFC0;
  v10[3] = &unk_10031D630;
  fCopy = f;
  v12 = a2;
  v10[4] = self;
  v7 = fCopy;
  callbackCopy = callback;
  v9 = [(_NFACHardwareManager *)self _executeWithDriverSessionSync:@"Push RF" block:v10];
  callbackCopy[2](callbackCopy, v9);
}

- (void)basebandStateChanged:(BOOL)changed
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027C32C;
  block[3] = &unk_10031D658;
  block[4] = self;
  block[5] = a2;
  changedCopy = changed;
  dispatch_async(workQueue, block);
}

- (os_state_data_s)dumpState
{
  v4 = [NSMutableDictionary alloc];
  _getInfo = [(_NFACHardwareManager *)self _getInfo];
  v6 = [v4 initWithDictionary:_getInfo];

  state = [(NFACDriverWrapper *)self->_driverWrapper state];
  [v6 setObject:state forKeyedSubscript:@"driverwrapperState"];

  v25 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v25];
  v9 = v25;
  if (v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", v14, ClassName, Name, 1524, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      *buf = 67110146;
      v27 = v17;
      v28 = 2082;
      v29 = v18;
      v30 = 2082;
      v31 = v19;
      v32 = 1024;
      v33 = 1524;
      v34 = 2114;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", buf, 0x2Cu);
    }
  }

  v20 = [v8 length];
  v21 = malloc_type_calloc(1uLL, v20 + 200, 0x1000040BEF03554uLL);
  v21->var0 = 1;
  v21->var1.var1 = v20;
  __strlcpy_chk();
  memcpy(v21->var4, [v8 bytes], v20);

  return v21;
}

- (BOOL)isWalletAttached
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_lastDetectedTags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 silentType] == 3)
        {
          tagID = [v6 tagID];
          bytes = [tagID bytes];

          if (bytes)
          {
            if (*bytes - 87 < 2)
            {
              LOBYTE(v3) = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

@end