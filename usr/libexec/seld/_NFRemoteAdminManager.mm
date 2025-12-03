@interface _NFRemoteAdminManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_NFRemoteAdminManager)init;
- (void)cancelCardIngestionWithCompletion:(id)completion;
- (void)connectToServer:(id)server initialClientRequestInfo:(id)info sessionToken:(id)token completion:(id)completion;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)deleteAllAppletsAndCleanupWithTSMWithCompletion:(id)completion;
- (void)deleteAllSPAppletsAndCleanupWithTSMithCompletion:(id)completion;
- (void)deleteAllWalletAppletsAndCleanupWithTSMWithCompletion:(id)completion;
- (void)deleteAppletsAndCleanupWithTSM:(id)m sessionToken:(id)token completion:(id)completion;
- (void)getAPNPublicTokenWithCompletion:(id)completion;
- (void)getSELDInfoForBrokerWithCompletion:(id)completion;
- (void)handleAppletStateChange:(id)change;
- (void)handleAppletsDeleted:(id)deleted;
- (void)handleCardIngestionStatus:(unint64_t)status;
- (void)handleCardSessionToken:(id)token;
- (void)hardwareStateDidChange;
- (void)ingestCard:(id)card completion:(id)completion;
- (void)nextRequestForServer:(id)server completion:(id)completion;
- (void)powerObserverSystemHasPoweredOn:(id)on;
- (void)powerObserverSystemWillSleep:(id)sleep;
- (void)primaryRegionTopicWithCompletion:(id)completion;
- (void)queueServerConnection:(id)connection completion:(id)completion;
- (void)queueServerConnectionForApplets:(id)applets completion:(id)completion;
- (void)registerForCallbacks:(id)callbacks;
- (void)registrationInfoWithCompletion:(id)completion;
- (void)setRegistrationInfo:(id)info primaryRegionTopic:(id)topic completion:(id)completion;
- (void)unregisterForCallbacks:(id)callbacks;
@end

@implementation _NFRemoteAdminManager

- (_NFRemoteAdminManager)init
{
  v110.receiver = self;
  v110.super_class = _NFRemoteAdminManager;
  v3 = [(_NFRemoteAdminManager *)&v110 init];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 dataForKey:@"APNTokenUpdateInfo"];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = v6;
    if (v5)
    {
      [v6 removeObjectForKey:@"APNTokenUpdateInfo"];

      v8 = +[NSUserDefaults standardUserDefaults];
      [v8 removeObjectForKey:@"APNToken"];
    }

    else
    {
      v8 = [v6 dataForKey:@"APNToken"];

      if ([v8 length])
      {
        CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), md);
        v9 = [[NSData alloc] initWithBytesNoCopy:md length:32 freeWhenDone:0];

        v10 = +[NSUserDefaults standardUserDefaults];
        [v10 setObject:v9 forKey:@"APNTokenHash"];

        v11 = +[NSUserDefaults standardUserDefaults];
        [v11 removeObjectForKey:@"APNToken"];

        v8 = v9;
      }
    }

    atomic_store(0, v3 + 154);
    v12 = sub_100033310();
    v13 = *(v3 + 3);
    *(v3 + 3) = v12;

    v14 = *(v3 + 3);
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 integerForKey:@"SecureElementSequenceCounter"];
    if (v14)
    {
      *(v14 + 48) = v16;
    }

    v17 = *(v3 + 3);
    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 stringForKey:@"SecureElementPlatformId"];
    sub_100035C4C(v17, v19);

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.seld.adminSession", v20);
    v22 = *(v3 + 13);
    *(v3 + 13) = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.seld.aps", v23);
    v25 = *(v3 + 10);
    *(v3 + 10) = v24;

    v26 = [[NFPowerObserver alloc] initWithDelegate:v3];
    v27 = *(v3 + 5);
    *(v3 + 5) = v26;

    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = *(v3 + 2);
    *(v3 + 2) = v28;

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("com.apple.seld.xpcConnection", v30);
    v32 = *(v3 + 9);
    *(v3 + 9) = v31;

    v109 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    byte_10005BAB0 = [v109 BOOLForKey:@"LogTSM"];
    v33 = [[NSDictionary alloc] initWithContentsOfFile:@"/Library/Preferences/Logging/Subsystems/com.apple.nfc.plist"];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 objectForKey:@"LogTSM"];

      if (v35)
      {
        v36 = [v34 objectForKey:@"LogTSM"];
        byte_10005BAB0 = [v36 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v38 = Logger;
          Class = object_getClass(v3);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v3);
          Name = sel_getName(a2);
          v43 = 45;
          if (isMetaClass)
          {
            v43 = 43;
          }

          v38(6, "%c[%{public}s %{public}s]:%i Overriding LogTSM value with managed profile: %d", v43, ClassName, Name, 293, byte_10005BAB0);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = object_getClass(v3);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(v3);
          v48 = sel_getName(a2);
          *md = 67110146;
          *&md[4] = v46;
          *v130 = 2082;
          *&v130[2] = v47;
          *&v130[10] = 2082;
          *&v130[12] = v48;
          *&v130[20] = 1024;
          *&v130[22] = 293;
          v131 = 1024;
          *v132 = byte_10005BAB0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding LogTSM value with managed profile: %d", md, 0x28u);
        }
      }
    }

    v49 = objc_alloc_init(NSLock);
    v50 = *(v3 + 16);
    *(v3 + 16) = v49;

    v3[153] = 0;
    v3[155] = 0;
    *(v3 + 156) = -1;
    sub_100016008(v3);
    v51 = objc_opt_new();
    v52 = *(v3 + 21);
    *(v3 + 21) = v51;

    v53 = [[NFXPCEventPublisher alloc] initWithStreamName:@"com.apple.seld.xpc.events" queue:*(v3 + 9)];
    v54 = *(v3 + 28);
    *(v3 + 28) = v53;

    update_handler = _NSConcreteStackBlock;
    v124 = 3221225472;
    v125 = sub_10001B454;
    v126 = &unk_100054930;
    v127 = v3;
    if ((sub_10001B4DC(v3, @"com.apple.seld.alarm", &update_handler) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v56 = v55;
        v57 = object_getClass(v3);
        v58 = class_isMetaClass(v57);
        v103 = object_getClassName(v3);
        v106 = sel_getName("registerActivityHandlers");
        v59 = 45;
        if (v58)
        {
          v59 = 43;
        }

        v56(3, "%c[%{public}s %{public}s]:%i Failed to register %@", v59, v103, v106, 720, @"com.apple.seld.alarm");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = object_getClass(v3);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        v63 = object_getClassName(v3);
        v64 = sel_getName("registerActivityHandlers");
        *md = 67110146;
        *&md[4] = v62;
        *v130 = 2082;
        *&v130[2] = v63;
        *&v130[10] = 2082;
        *&v130[12] = v64;
        *&v130[20] = 1024;
        *&v130[22] = 720;
        v131 = 2112;
        *v132 = @"com.apple.seld.alarm";
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register %@", md, 0x2Cu);
      }
    }

    v118 = _NSConcreteStackBlock;
    v119 = 3221225472;
    v120 = sub_10001B5BC;
    v121 = &unk_100054930;
    v122 = v3;
    if ((sub_10001B4DC(v3, @"com.apple.seld.processing", &v118) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFLogGetLogger();
      if (v65)
      {
        v66 = v65;
        v67 = object_getClass(v3);
        v68 = class_isMetaClass(v67);
        v104 = object_getClassName(v3);
        v107 = sel_getName("registerActivityHandlers");
        v69 = 45;
        if (v68)
        {
          v69 = 43;
        }

        v66(3, "%c[%{public}s %{public}s]:%i Failed to register %@", v69, v104, v107, 731, @"com.apple.seld.processing");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = object_getClass(v3);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(v3);
        v74 = sel_getName("registerActivityHandlers");
        *md = 67110146;
        *&md[4] = v72;
        *v130 = 2082;
        *&v130[2] = v73;
        *&v130[10] = 2082;
        *&v130[12] = v74;
        *&v130[20] = 1024;
        *&v130[22] = 731;
        v131 = 2112;
        *v132 = @"com.apple.seld.processing";
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register %@", md, 0x2Cu);
      }
    }

    v113 = _NSConcreteStackBlock;
    v114 = 3221225472;
    v115 = sub_10001B644;
    v116 = &unk_100054930;
    v117 = v3;
    if ((sub_10001B4DC(v3, @"com.apple.seld.osupdate", &v113) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFLogGetLogger();
      if (v75)
      {
        v76 = v75;
        v77 = object_getClass(v3);
        v78 = class_isMetaClass(v77);
        v105 = object_getClassName(v3);
        v108 = sel_getName("registerActivityHandlers");
        v79 = 45;
        if (v78)
        {
          v79 = 43;
        }

        v76(3, "%c[%{public}s %{public}s]:%i Failed to register %@", v79, v105, v108, 742, @"com.apple.seld.osupdate");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = object_getClass(v3);
        if (class_isMetaClass(v81))
        {
          v82 = 43;
        }

        else
        {
          v82 = 45;
        }

        v83 = object_getClassName(v3);
        v84 = sel_getName("registerActivityHandlers");
        *md = 67110146;
        *&md[4] = v82;
        *v130 = 2082;
        *&v130[2] = v83;
        *&v130[10] = 2082;
        *&v130[12] = v84;
        *&v130[20] = 1024;
        *&v130[22] = 742;
        v131 = 2112;
        *v132 = @"com.apple.seld.osupdate";
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register %@", md, 0x2Cu);
      }
    }

    *(v3 + 27) = 15;
    v85 = nw_path_monitor_create_with_type(nw_interface_type_wifi);
    v86 = *(v3 + 23);
    *(v3 + 23) = v85;

    v87 = nw_path_monitor_create_with_type(nw_interface_type_cellular);
    v88 = *(v3 + 24);
    *(v3 + 24) = v87;

    v89 = nw_path_monitor_create_with_type(nw_interface_type_wired);
    v90 = *(v3 + 25);
    *(v3 + 25) = v89;

    v91 = nw_path_monitor_create_with_type(nw_interface_type_other);
    v92 = *(v3 + 26);
    *(v3 + 26) = v91;

    nw_path_monitor_set_queue(*(v3 + 23), *(v3 + 13));
    nw_path_monitor_set_queue(*(v3 + 24), *(v3 + 13));
    nw_path_monitor_set_queue(*(v3 + 25), *(v3 + 13));
    nw_path_monitor_set_queue(*(v3 + 26), *(v3 + 13));
    objc_initWeak(&location, v3);
    *md = _NSConcreteStackBlock;
    *v130 = 3221225472;
    *&v130[8] = sub_100017328;
    *&v130[16] = &unk_100054878;
    objc_copyWeak(&v130[24], &location);
    *&v132[4] = "_setupNetworkMonitor";
    v93 = objc_retainBlock(md);
    v94 = *(v3 + 23);
    update_handler = _NSConcreteStackBlock;
    v124 = 3221225472;
    v125 = sub_1000178E4;
    v126 = &unk_1000548A0;
    v95 = v93;
    v127 = v95;
    nw_path_monitor_set_update_handler(v94, &update_handler);
    v96 = *(v3 + 24);
    v118 = _NSConcreteStackBlock;
    v119 = 3221225472;
    v120 = sub_100017974;
    v121 = &unk_1000548A0;
    v97 = v95;
    v122 = v97;
    nw_path_monitor_set_update_handler(v96, &v118);
    v98 = *(v3 + 25);
    v113 = _NSConcreteStackBlock;
    v114 = 3221225472;
    v115 = sub_100017A04;
    v116 = &unk_1000548A0;
    v99 = v97;
    v117 = v99;
    nw_path_monitor_set_update_handler(v98, &v113);
    v100 = *(v3 + 26);
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_100017A94;
    v111[3] = &unk_1000548A0;
    v112 = v99;
    v101 = v99;
    nw_path_monitor_set_update_handler(v100, v111);

    objc_destroyWeak(&v130[24]);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)hardwareStateDidChange
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_isRunning)
  {
    v2 = +[NFHardwareManager sharedHardwareManager];
    getHwSupport = [v2 getHwSupport];
    if (getHwSupport == 4)
    {
      v5 = +[NFHardwareManager sharedHardwareManager];
      [v5 unregisterEventListener:obj];

      waitForNFCDTransaction = obj->_waitForNFCDTransaction;
      obj->_waitForNFCDTransaction = 0;
    }

    else if (getHwSupport == 2)
    {
      v4 = +[NFHardwareManager sharedHardwareManager];
      [v4 unregisterEventListener:obj];

      sub_100018A60(obj);
LABEL_7:

      goto LABEL_8;
    }

    sub_100018C20(obj);
    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(obj);
}

- (void)powerObserverSystemWillSleep:(id)sleep
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

    v6(6, "%c[%{public}s %{public}s]:%i System is sleeping", v10, ClassName, Name, 920);
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
    v30 = v13;
    v31 = 2082;
    v32 = object_getClassName(self);
    v33 = 2082;
    v34 = sel_getName(a2);
    v35 = 1024;
    v36 = 920;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i System is sleeping", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeSession)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(selfCopy);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(selfCopy);
      v28 = sel_getName(a2);
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(5, "%c[%{public}s %{public}s]:%i Aborting active session", v20, v19, v28, 923);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(selfCopy);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(selfCopy);
      v25 = sel_getName(a2);
      *buf = 67109890;
      v30 = v23;
      v31 = 2082;
      v32 = v24;
      v33 = 2082;
      v34 = v25;
      v35 = 1024;
      v36 = 923;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborting active session", buf, 0x22u);
    }

    [(NFAdminSession *)selfCopy->_activeSession abort:4];
    activeSession = selfCopy->_activeSession;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy->_sessionWasAbortedOnSleep = 1;
    }
  }

  [(NFPowerObserver *)selfCopy->_powerObserver allowSleep];
  objc_sync_exit(selfCopy);
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

    v6(6, "%c[%{public}s %{public}s]:%i System is powered on", v10, ClassName, Name, 936);
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
    v16 = v13;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 936;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i System is powered on", buf, 0x22u);
  }

  if (self->_sessionWasAbortedOnSleep)
  {
    self->_sessionWasAbortedOnSleep = 0;
    sub_100015830(self);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = [[NFServiceWhitelistChecker alloc] initWithConnection:connectionCopy];
  if ([v7 remoteAdminAccess])
  {
    hardwareLoadComplete = self->_hardwareLoadComplete;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v10 = Logger;
    if (hardwareLoadComplete)
    {
      if (Logger)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        [v7 clientName];
        v16 = v15 = a2;
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Added connection from %{public}@ : %{public}@", v17, ClassName, Name, 990, v16, connectionCopy);

        a2 = v15;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

        v21 = object_getClassName(self);
        v22 = sel_getName(a2);
        clientName = [v7 clientName];
        *buf = 67110402;
        *&buf[4] = v20;
        *v62 = 2082;
        *&v62[2] = v21;
        *&v62[10] = 2082;
        *&v62[12] = v22;
        *&v62[20] = 1024;
        *&v62[22] = 990;
        *&v62[26] = 2114;
        *&v62[28] = clientName;
        *&v62[36] = 2114;
        *&v62[38] = connectionCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Added connection from %{public}@ : %{public}@", buf, 0x36u);
      }

      v24 = +[NFRemoteAdminManagerCallbacks interface];
      [connectionCopy setRemoteObjectInterface:v24];

      v25 = +[NFRemoteAdminManagerInterface interface];
      [connectionCopy setExportedInterface:v25];

      [connectionCopy setExportedObject:self];
      v26 = [NFXPCConnectionUserInfoDictionary alloc];
      clientName2 = [v7 clientName];
      v28 = [v26 initWithServiceWhitelist:v7 clientName:clientName2];

      v29 = objc_opt_new();
      [v28 setObject:v29 forKeyedSubscript:@"ProxyObjects"];

      [connectionCopy setUserInfo:v28];
      *buf = 0;
      *v62 = buf;
      *&v62[8] = 0x3032000000;
      *&v62[16] = sub_10001CBAC;
      *&v62[24] = sub_10001CBBC;
      v30 = connectionCopy;
      *&v62[32] = v30;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10001CBC4;
      v60[3] = &unk_100054A68;
      v60[4] = self;
      v60[5] = buf;
      [v30 setInvalidationHandler:v60];
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10001CE00;
      v59[3] = &unk_100054A68;
      v59[4] = self;
      v59[5] = buf;
      [v30 setInterruptionHandler:v59];
      [v30 _setQueue:self->_xpcConnectionQueue];
      [v30 resume];
      _Block_object_dispose(buf, 8);

      v31 = 1;
    }

    else
    {
      if (Logger)
      {
        v49 = object_getClass(self);
        v50 = class_isMetaClass(v49);
        v51 = object_getClassName(self);
        v56 = sel_getName(a2);
        v52 = 45;
        if (v50)
        {
          v52 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Hardware isn't loaded. Rejecting XPC connections", v52, v51, v56, 986);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v53 = object_getClass(self);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v54;
        *v62 = 2082;
        *&v62[2] = object_getClassName(self);
        *&v62[10] = 2082;
        *&v62[12] = sel_getName(a2);
        *&v62[20] = 1024;
        *&v62[22] = 986;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardware isn't loaded. Rejecting XPC connections", buf, 0x22u);
      }

      v31 = 0;
    }
  }

  else
  {
    v58 = v7;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      v38 = a2;
      processIdentifier = [connectionCopy processIdentifier];
      [v58 clientName];
      v41 = v40 = connectionCopy;
      v57 = processIdentifier;
      a2 = v38;
      v42 = 43;
      if (!v35)
      {
        v42 = 45;
      }

      v33(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v42, v36, v37, 981, v57, v41, "com.apple.seld.tsmmanager");

      connectionCopy = v40;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(self);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(self);
      v46 = sel_getName(a2);
      processIdentifier2 = [connectionCopy processIdentifier];
      v7 = v58;
      clientName3 = [v58 clientName];
      *buf = 67110658;
      *&buf[4] = v44;
      *v62 = 2082;
      *&v62[2] = v45;
      *&v62[10] = 2082;
      *&v62[12] = v46;
      *&v62[20] = 1024;
      *&v62[22] = 981;
      *&v62[26] = 1024;
      *&v62[28] = processIdentifier2;
      *&v62[32] = 2114;
      *&v62[34] = clientName3;
      *&v62[42] = 2080;
      *&v62[44] = "com.apple.seld.tsmmanager";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);

      v31 = 0;
    }

    else
    {
      v31 = 0;
      v7 = v58;
    }
  }

  return v31;
}

- (void)registerForCallbacks:(id)callbacks
{
  callbacksCopy = callbacks;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i Registering callback handler for %{public}@", v14, ClassName, Name, 1197, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v24 = v17;
    v25 = 2082;
    v26 = v18;
    v27 = 2082;
    v28 = v19;
    v29 = 1024;
    v30 = 1197;
    v31 = 2114;
    v32 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Registering callback handler for %{public}@", buf, 0x2Cu);
  }

  v21 = self->_callbackHandlers;
  objc_sync_enter(v21);
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 processIdentifier]);
  [(NSMutableDictionary *)self->_callbackHandlers setObject:callbacksCopy forKeyedSubscript:v22];

  objc_sync_exit(v21);
}

- (void)unregisterForCallbacks:(id)callbacks
{
  v5 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v5 NF_clientName];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Unregistering callback handler for %{public}@", v13, ClassName, Name, 1213, nF_clientName);
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
    nF_clientName2 = [v5 NF_clientName];
    *buf = 67110146;
    v21 = v16;
    v22 = 2082;
    v23 = v17;
    v24 = 2082;
    v25 = v18;
    v26 = 1024;
    v27 = 1213;
    v28 = 2114;
    v29 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unregistering callback handler for %{public}@", buf, 0x2Cu);
  }

  sub_10001CE14(self, v5);
}

- (void)setRegistrationInfo:(id)info primaryRegionTopic:(id)topic completion:(id)completion
{
  infoCopy = info;
  topicCopy = topic;
  completionCopy = completion;
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

    v13(6, "%c[%{public}s %{public}s]:%i theInfo=%{public}@, thePrimaryRegionTopic=%{public}@", v17, ClassName, Name, 1283, infoCopy, topicCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
    v33 = v20;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 1283;
    v40 = 2114;
    v41 = infoCopy;
    v42 = 2114;
    v43 = topicCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i theInfo=%{public}@, thePrimaryRegionTopic=%{public}@", buf, 0x36u);
  }

  if (sub_100035CA4(self->_storage, infoCopy, topicCopy))
  {
    completionCopy[2](completionCopy, 0);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002222C;
    v27[3] = &unk_100054B08;
    v27[4] = self;
    v28 = infoCopy;
    v29 = topicCopy;
    sub_100021878(self, v27);
  }

  else
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v30 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v31 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [v21 initWithDomain:v22 code:10 userInfo:v24];
    (completionCopy)[2](completionCopy, v25);
  }
}

- (void)registrationInfoWithCompletion:(id)completion
{
  storage = self->_storage;
  completionCopy = completion;
  v6 = sub_1000355D0(storage);
  (*(completion + 2))(completionCopy, v6, 0);
}

- (void)primaryRegionTopicWithCompletion:(id)completion
{
  storage = self->_storage;
  completionCopy = completion;
  v6 = sub_1000368E4(storage);
  (*(completion + 2))(completionCopy, v6, 0);
}

- (void)nextRequestForServer:(id)server completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000229F8;
  v7[3] = &unk_100054B58;
  selfCopy = self;
  serverCopy = server;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = serverCopy;
  sub_100021878(selfCopy, v7);
}

- (void)connectToServer:(id)server initialClientRequestInfo:(id)info sessionToken:(id)token completion:(id)completion
{
  serverCopy = server;
  infoCopy = info;
  tokenCopy = token;
  completionCopy = completion;
  v13 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v15 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    v18 = tokenCopy;
    v19 = serverCopy;
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v13 NF_clientName];
    v23 = 45;
    if (isMetaClass)
    {
      v23 = 43;
    }

    v35 = ClassName;
    serverCopy = v19;
    tokenCopy = v18;
    v15(6, "%c[%{public}s %{public}s]:%i Server connection request from %{public}@", v23, v35, Name, 1454, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(self);
    v28 = sel_getName(a2);
    nF_clientName2 = [v13 NF_clientName];
    *buf = 67110146;
    v46 = v26;
    v47 = 2082;
    v48 = v27;
    v49 = 2082;
    v50 = v28;
    v51 = 1024;
    v52 = 1454;
    v53 = 2114;
    v54 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Server connection request from %{public}@", buf, 0x2Cu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100023720;
  v38[3] = &unk_100054BA8;
  v38[4] = self;
  v39 = v13;
  v40 = serverCopy;
  v41 = infoCopy;
  v42 = tokenCopy;
  v43 = completionCopy;
  v44 = a2;
  v30 = completionCopy;
  v31 = tokenCopy;
  v32 = infoCopy;
  v33 = serverCopy;
  v34 = v13;
  sub_100021878(self, v38);
}

- (void)queueServerConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [v9 NF_clientName];
    v16 = v9;
    v17 = completionCopy;
    v18 = a2;
    v20 = v19 = connectionCopy;
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, Name, 1499, v20);

    connectionCopy = v19;
    a2 = v18;
    completionCopy = v17;
    v9 = v16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
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

    v25 = object_getClassName(self);
    v26 = sel_getName(a2);
    nF_clientName = [v9 NF_clientName];
    *buf = 67110146;
    v35 = v24;
    v36 = 2082;
    v37 = v25;
    v38 = 2082;
    v39 = v26;
    v40 = 1024;
    v41 = 1499;
    v42 = 2114;
    v43 = nF_clientName;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  apsInited = selfCopy->_apsInited;
  objc_sync_exit(selfCopy);

  if (apsInited)
  {
    sub_100023F30(&selfCopy->super.isa, connectionCopy, completionCopy);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100024828;
    v30[3] = &unk_100054BD0;
    v30[4] = selfCopy;
    v33 = a2;
    v31 = v9;
    v32 = connectionCopy;
    sub_100021878(selfCopy, v30);
  }
}

- (void)queueServerConnectionForApplets:(id)applets completion:(id)completion
{
  appletsCopy = applets;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [v9 NF_clientName];
    v16 = v9;
    v17 = completionCopy;
    v18 = a2;
    v20 = v19 = appletsCopy;
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, Name, 1566, v20);

    appletsCopy = v19;
    a2 = v18;
    completionCopy = v17;
    v9 = v16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
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

    v25 = object_getClassName(self);
    v26 = sel_getName(a2);
    nF_clientName = [v9 NF_clientName];
    *buf = 67110146;
    v35 = v24;
    v36 = 2082;
    v37 = v25;
    v38 = 2082;
    v39 = v26;
    v40 = 1024;
    v41 = 1566;
    v42 = 2114;
    v43 = nF_clientName;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  apsInited = selfCopy->_apsInited;
  objc_sync_exit(selfCopy);

  if (apsInited)
  {
    sub_100024A04(selfCopy, appletsCopy, completionCopy);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100025510;
    v30[3] = &unk_100054BD0;
    v30[4] = selfCopy;
    v33 = a2;
    v31 = v9;
    v32 = appletsCopy;
    sub_100021878(selfCopy, v30);
  }
}

- (void)ingestCard:(id)card completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [v9 NF_clientName];
    v16 = a2;
    v17 = completionCopy;
    v19 = v18 = cardCopy;
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v20, ClassName, Name, 1744, v19);

    cardCopy = v18;
    completionCopy = v17;
    a2 = v16;
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
    nF_clientName = [v9 NF_clientName];
    *buf = 67110146;
    v36 = v23;
    v37 = 2082;
    v38 = v24;
    v39 = 2082;
    v40 = v25;
    v41 = 1024;
    v42 = 1744;
    v43 = 2114;
    v44 = nF_clientName;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002699C;
  v30[3] = &unk_100054C48;
  v33 = completionCopy;
  v34 = a2;
  v30[4] = self;
  v31 = v9;
  v32 = cardCopy;
  v27 = completionCopy;
  v28 = cardCopy;
  v29 = v9;
  sub_100021878(self, v30);
}

- (void)cancelCardIngestionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1789, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 1789;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100027F08;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)getSELDInfoForBrokerWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1836, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 1836;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100028A48;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)deleteAllAppletsAndCleanupWithTSMWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1895, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 1895;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100029274;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)deleteAllWalletAppletsAndCleanupWithTSMWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1913, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 1913;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100029748;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)deleteAllSPAppletsAndCleanupWithTSMithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1932, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 1932;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100029C1C;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)deleteAppletsAndCleanupWithTSM:(id)m sessionToken:(id)token completion:(id)completion
{
  mCopy = m;
  tokenCopy = token;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    v40 = completionCopy;
    v17 = tokenCopy;
    v18 = mCopy;
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [v12 NF_clientName];
    selfCopy = self;
    v23 = v22 = a2;
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v39 = ClassName;
    mCopy = v18;
    tokenCopy = v17;
    completionCopy = v40;
    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v24, v39, Name, 1985, v23);

    a2 = v22;
    self = selfCopy;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(self);
    v29 = a2;
    v30 = v28;
    v31 = sel_getName(v29);
    nF_clientName = [v12 NF_clientName];
    *buf = 67110146;
    v48 = v27;
    v49 = 2082;
    v50 = v30;
    v51 = 2082;
    v52 = v31;
    v53 = 1024;
    v54 = 1985;
    v55 = 2114;
    v56 = nF_clientName;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  apsInited = selfCopy2->_apsInited;
  objc_sync_exit(selfCopy2);

  if (!tokenCopy || apsInited)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10002A214;
    v41[3] = &unk_100054CE8;
    v41[4] = selfCopy2;
    v42 = mCopy;
    v43 = tokenCopy;
    v44 = completionCopy;
    sub_1000198F4(selfCopy2, v41);
  }

  else
  {
    v35 = [NSError alloc];
    v36 = [NSString stringWithUTF8String:"seld"];
    v45 = NSLocalizedDescriptionKey;
    v46 = @"System not yet initialized";
    v37 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v38 = [v35 initWithDomain:v36 code:2 userInfo:v37];
    (*(completionCopy + 2))(completionCopy, v38);
  }
}

- (void)getAPNPublicTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 2020, nF_clientName);
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
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v28 = v17;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 1024;
    v34 = 2020;
    v35 = 2114;
    v36 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002A764;
  v23[3] = &unk_100054C70;
  v23[4] = self;
  v24 = v6;
  v25 = completionCopy;
  v26 = a2;
  v21 = completionCopy;
  v22 = v6;
  sub_100021878(self, v23);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = _os_activity_create(&_mh_execute_header, "connection:didReceivePublicToken:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v6, state);
  os_activity_scope_leave(state);

  v7 = tokenCopy;
  v8 = v7;
  if (self)
  {
    if ([v7 length])
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), md);
      v10 = [[NSData alloc] initWithBytesNoCopy:md length:32 freeWhenDone:0];
      v11 = [v9 dataForKey:@"APNTokenHash"];
      if (([v11 isEqualToData:v10] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName("_checkForAPNTokenUpdate:");
          v17 = 45;
          if (isMetaClass)
          {
            v17 = 43;
          }

          v13(5, "%c[%{public}s %{public}s]:%i New APN token received", v17, ClassName, Name, 872);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

          v21 = object_getClassName(self);
          v22 = sel_getName("_checkForAPNTokenUpdate:");
          *state = 67109890;
          *&state[4] = v20;
          *&state[8] = 2082;
          *&state[10] = v21;
          v38 = 2082;
          v39 = v22;
          v40 = 1024;
          v41 = 872;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New APN token received", state, 0x22u);
        }

        [v9 setObject:v10 forKey:@"APNTokenHash"];
        v23 = sub_100033310();
        sub_10003707C(v23, v8);

        sub_100015830(self);
      }
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
        v35 = sel_getName("_checkForAPNTokenUpdate:");
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Inalid token", v29, v28, v35, 859);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

        v32 = object_getClassName(self);
        v33 = sel_getName("_checkForAPNTokenUpdate:");
        *state = 67109890;
        *&state[4] = v31;
        *&state[8] = 2082;
        *&state[10] = v32;
        v38 = 2082;
        v39 = v33;
        v40 = 1024;
        v41 = 859;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Inalid token", state, 0x22u);
      }
    }
  }

  sub_100017CF4(self);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  connectionCopy = connection;
  v12 = _os_activity_create(&_mh_execute_header, "connection:didReceiveMessageForTopic:userInfo:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v12, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v17, ClassName, Name, 2107, topicCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    *state = 67110146;
    *&state[4] = v20;
    *&state[8] = 2082;
    *&state[10] = v21;
    v43 = 2082;
    v44 = v22;
    v45 = 1024;
    v46 = 2107;
    v47 = 2114;
    v48 = topicCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", state, 0x2Cu);
  }

  v23 = objc_alloc_init(NSDateFormatter);
  v24 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v23 setLocale:v24];

  [v23 setDateFormat:@"yyyy-MM-dd HH:mm:ss z"];
  storage = self->_storage;
  v40[0] = @"APNClientConnected";
  isConnected = [connectionCopy isConnected];
  v27 = &off_100057390;
  if (isConnected)
  {
    v27 = &off_100057378;
  }

  v41[0] = v27;
  v40[1] = @"APNTopicsRegistered";
  enabledTopics = [connectionCopy enabledTopics];

  v41[1] = enabledTopics;
  v40[2] = @"CheckIn";
  v39[0] = topicCopy;
  v38[0] = @"Reason";
  v38[1] = @"PushRxData";
  v29 = [[NSDictionary alloc] initWithDictionary:infoCopy];

  v39[1] = v29;
  v38[2] = @"PushRxTime";
  v30 = +[NSDate date];
  v31 = [v23 stringFromDate:v30];
  v39[2] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
  v41[2] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
  sub_100037214(storage, v33, topicCopy);

  v37 = topicCopy;
  v34 = [NSArray arrayWithObjects:&v37 count:1];
  sub_10001CEC4(self, v34);

  [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1000574A8];
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    if (statusCopy)
    {
      v13 = "connected";
    }

    else
    {
      v13 = "disconnected";
    }

    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(5, "%c[%{public}s %{public}s]:%i APS connection status - %s", v14, ClassName, Name, 2129, v13);
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
    *buf = 67110146;
    if (statusCopy)
    {
      v20 = "connected";
    }

    else
    {
      v20 = "disconnected";
    }

    v22 = v17;
    v23 = 2082;
    v24 = v18;
    v25 = 2082;
    v26 = v19;
    v27 = 1024;
    v28 = 2129;
    v29 = 2080;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i APS connection status - %s", buf, 0x2Cu);
  }
}

- (void)handleCardSessionToken:(id)token
{
  tokenCopy = token;
  v5 = self->_callbackHandlers;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_callbackHandlers allValues];
  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) readerModeCardSessionToken:tokenCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
}

- (void)handleCardIngestionStatus:(unint64_t)status
{
  v5 = self->_callbackHandlers;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_callbackHandlers allValues];
  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) readerModeCardIngestionStatus:status];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
}

- (void)handleAppletStateChange:(id)change
{
  changeCopy = change;
  v6 = changeCopy;
  if (changeCopy)
  {
    v39 = @"appletChanged";
    v40 = changeCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i sending event to Wallet: %@", v12, ClassName, Name, 2168, v7);
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

      *buf = 67110146;
      v30 = v15;
      v31 = 2082;
      v32 = object_getClassName(self);
      v33 = 2082;
      v34 = sel_getName(a2);
      v35 = 1024;
      v36 = 2168;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sending event to Wallet: %@", buf, 0x2Cu);
    }

    [(NFXPCEventPublisher *)self->_xpcEventPublisher sendXpcNotificationEventWithDictionary:v7];
    v16 = self->_callbackHandlers;
    objc_sync_enter(v16);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    allValues = [(NSMutableDictionary *)self->_callbackHandlers allValues];
    v18 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v24 + 1) + 8 * i) appletStateChange:v6];
        }

        v19 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    objc_sync_exit(v16);
  }
}

- (void)handleAppletsDeleted:(id)deleted
{
  deletedCopy = deleted;
  if ([deletedCopy count])
  {
    v6 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = deletedCopy;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 setObject:&off_1000574D0 forKey:*(*(&v35 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v52 count:16];
      }

      while (v9);
    }

    v50 = @"appletsDeleted";
    v51 = v6;
    v12 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i sending event to Wallet: %@", v17, ClassName, Name, 2187, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      *buf = 67110146;
      v41 = v20;
      v42 = 2082;
      v43 = v21;
      v44 = 2082;
      v45 = v22;
      v46 = 1024;
      v47 = 2187;
      v48 = 2112;
      v49 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sending event to Wallet: %@", buf, 0x2Cu);
    }

    [(NFXPCEventPublisher *)self->_xpcEventPublisher sendXpcNotificationEventWithDictionary:v12];
    v23 = self->_callbackHandlers;
    objc_sync_enter(v23);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allValues = [(NSMutableDictionary *)self->_callbackHandlers allValues];
    v25 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v31 + 1) + 8 * j) appletsDeleted:v7];
        }

        v26 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v26);
    }

    objc_sync_exit(v23);
  }
}

@end