@interface W5Engine
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (W5Engine)init;
- (id)__localPeer;
- (id)__model;
- (id)_peerListeners;
- (void)__cancelPeerDiscoveryWithUUID:(id)d;
- (void)__cancelWiFiSnifferWithUUID:(id)d peer:(id)peer reply:(id)reply;
- (void)__collectLogItem:(id)item reply:(id)reply;
- (void)__collectLogsDiagnosticMode:(id)mode outputName:(id)name uid:(unsigned int)uid gid:(unsigned int)gid uuid:(id)uuid reply:(id)reply;
- (void)__collectedLogItem:(id)item;
- (void)__completedDiagnosticsTest:(id)test;
- (void)__runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)__runWiFiPerfLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)__runWiFiSnifferOnPeer:(id)peer channels:(id)channels duration:(double)duration uuid:(id)uuid reply:(id)reply;
- (void)__setupCallbacks;
- (void)__updateStatusMonitoring;
- (void)__updatedStatusWithEvent:(id)event;
- (void)_scheduleRepeatingCleanupTasks;
- (void)dealloc;
- (void)run;
- (void)terminateAndNotify:(id)notify;
- (void)xpcConnection:(id)connection associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply;
- (void)xpcConnection:(id)connection cancelCollectLogsWithUUID:(id)d peerID:(id)iD reply:(id)reply;
- (void)xpcConnection:(id)connection cancelDiagnosticsWithUUID:(id)d peerID:(id)iD reply:(id)reply;
- (void)xpcConnection:(id)connection cancelWiFiPerformanceLoggingWithUUID:(id)d peerID:(id)iD reply:(id)reply;
- (void)xpcConnection:(id)connection cancelWiFiSnifferWithUUID:(id)d peer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection cancelWiFiSnifferWithUUID:(id)d peerID:(id)iD reply:(id)reply;
- (void)xpcConnection:(id)connection collectLogs:(id)logs configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection collectLogsDiagnosticMode:(id)mode uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply;
- (void)xpcConnection:(id)connection queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply;
- (void)xpcConnection:(id)connection queryDebugConfigurationForPeer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply;
- (void)xpcConnection:(id)connection queryFaultEventCacheForPeer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection queryLocalPeerAndReply:(id)reply;
- (void)xpcConnection:(id)connection queryRegisteredDiagnosticsPeersWithReply:(id)reply;
- (void)xpcConnection:(id)connection queryStatusForPeer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply;
- (void)xpcConnection:(id)connection requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply;
- (void)xpcConnection:(id)connection runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection runWiFiPerformanceLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply;
- (void)xpcConnection:(id)connection startMonitoringEvents:(id)events reply:(id)reply;
- (void)xpcConnection:(id)connection startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply;
- (void)xpcConnection:(id)connection startPeerDiscoveryWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)xpcConnection:(id)connection stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply;
- (void)xpcConnection:(id)connection stopMonitoringEvents:(id)events reply:(id)reply;
- (void)xpcConnection:(id)connection stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)xpcConnection:(id)connection stopPeerDiscoveryWithUUID:(id)d reply:(id)reply;
- (void)xpcConnection:(id)connection submitFaultEvent:(id)event reply:(id)reply;
- (void)xpcConnection:(id)connection unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply;
@end

@implementation W5Engine

- (W5Engine)init
{
  v27.receiver = self;
  v27.super_class = W5Engine;
  v2 = [(W5Engine *)&v27 init];
  if (!v2)
  {
    goto LABEL_75;
  }

  v3 = dispatch_queue_create("com.apple.wifivelocity.engine", 0);
  v2->_queue = v3;
  if (!v3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil disaptch_queue";
LABEL_74:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] %s", buf, 0xCu);
    goto LABEL_75;
  }

  dispatch_queue_set_specific(v3, &v2->_queue, 1, 0);
  v4 = objc_alloc_init(NSMutableArray);
  v2->_xpcConnections = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil XPC Connections List";
    goto LABEL_74;
  }

  v5 = objc_alloc_init(W5StatusManager);
  v2->_status = v5;
  if (!v5)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5StatusManager";
    goto LABEL_74;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v6 = [[W5PeerDiagnosticsManager alloc] initWithStatusManager:v2->_status];
    v2->_peerDiagnostics = v6;
    if (!v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "nil W5StatusManager";
        goto LABEL_74;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[W5Engine init]";
      v30 = 2080;
      v31 = "W5Engine.m";
      v32 = 1024;
      v33 = 138;
      LODWORD(v26) = 28;
      v25 = buf;
      _os_log_send_and_compose_impl();
    }
  }

  v7 = [[W5DiagnosticsManager alloc] initWithStatusManager:v2->_status peerDiagnosticsManager:v2->_peerDiagnostics];
  v2->_diagnostics = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5DiagnosticsManager";
    goto LABEL_74;
  }

  v8 = objc_alloc_init(W5UserNotificationManager);
  v2->_notificationManager = v8;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "nil W5UserNotificationManager";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] %s", buf, 0xCu);
  }

  if ([W5FeatureAvailability diagnosticsModeEnabled:v25])
  {
    v9 = objc_alloc_init(W5BGTaskManager);
    v2->_bgTaskManager = v9;
    if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "nil W5BGTaskManager";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] %s", buf, 0xCu);
    }
  }

  v10 = [[W5WiFiSniffManager alloc] initWithStatusManager:v2->_status andUserNotificationManager:v2->_notificationManager];
  v2->_sniff = v10;
  if (!v10)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5StatusManager";
    goto LABEL_74;
  }

  v11 = objc_alloc_init(W5FileTransferManager);
  v2->_transferManager = v11;
  if (!v11)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5FileTransferManager";
    goto LABEL_74;
  }

  v12 = objc_alloc_init(W5NetUsageManager);
  v2->_netUsageManager = v12;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "nil W5NetUsageManager";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] %s", buf, 0xCu);
  }

  v13 = objc_alloc_init(W5PeerManager);
  v2->_peerManager = v13;
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5PeerManager";
    goto LABEL_74;
  }

  v14 = [[W5LogManager alloc] initWithStatusManager:v2->_status diagnosticsManager:v2->_diagnostics peerDiagnosticsManager:v2->_peerDiagnostics];
  v2->_log = v14;
  if (!v14)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5LogManager";
    goto LABEL_74;
  }

  v15 = [[W5DiagnosticsModeManager alloc] initWithNetUsageManager:v2->_netUsageManager peerManager:v2->_peerManager userNotificationManager:v2->_notificationManager snifferManager:v2->_sniff statusManager:v2->_status logManager:v2->_log];
  v2->_diagnosticsModeManager = v15;
  if (!v15)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5DiagnosticsModeManager";
    goto LABEL_74;
  }

  v16 = [[W5DebugManager alloc] initWithDiagnosticsModeManager:v2->_diagnosticsModeManager statusManager:v2->_status];
  v2->_debug = v16;
  if (!v16)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5DebugManager";
    goto LABEL_74;
  }

  v17 = [[W5WiFiConnectionMonitor alloc] initWithStatusManager:v2->_status diagnosticsManager:v2->_diagnostics];
  v2->_monitor = v17;
  if (!v17)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5WiFiConnectionMonitor";
    goto LABEL_74;
  }

  v18 = [[W5WiFiPerfLoggingManager alloc] initWithStatusManager:v2->_status];
  v2->_wifiperf = v18;
  if (!v18)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5WiFiPerfLoggingManager";
    goto LABEL_74;
  }

  v19 = [[W5FaultEventManager alloc] initWithPeerManager:v2->_peerManager diagnosticsModeManager:v2->_diagnosticsModeManager];
  v2->_faultEventManager = v19;
  if (!v19)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil W5FaultEventManager";
    goto LABEL_74;
  }

  [(W5FaultEventManager *)v2->_faultEventManager setLocalPeer:[(W5Engine *)v2 __localPeer]];
  [(W5DiagnosticsModeManager *)v2->_diagnosticsModeManager setLocalPeer:[(W5Engine *)v2 __localPeer]];
  [(W5DiagnosticsModeManager *)v2->_diagnosticsModeManager setFaultEventManager:v2->_faultEventManager];
  [(W5StatusManager *)v2->_status setDiagnosticsModeManager:v2->_diagnosticsModeManager];
  if (+[W5FeatureAvailability diagnosticsModeEnabled])
  {
    v20 = +[W5DatabaseManager sharedObject];
    v2->_databaseManager = v20;
    if (!v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "nil _databaseManager";
        goto LABEL_74;
      }

      goto LABEL_75;
    }
  }

  v21 = [[W5PeerInfraManager alloc] initWithPeerManager:v2->_peerManager statusManager:v2->_status];
  v2->_infraManager = v21;
  if (!v21)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315138;
    v29 = "nil InfraManager";
    goto LABEL_74;
  }

  v22 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.wifivelocityd"];
  v2->_listener = v22;
  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "nil NSXPCListener";
      goto LABEL_74;
    }

LABEL_75:

    return 0;
  }

  if (![(W5PeerManager *)v2->_peerManager registerPeerListeners:[(W5Engine *)v2 _peerListeners]]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "Failed to register peer listeners";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] %s", buf, 0xCu);
  }

  [(NSXPCListener *)v2->_listener setDelegate:v2];
  if (v2->_bgTaskManager)
  {
    [(W5Engine *)v2 _scheduleRepeatingCleanupTasks];
  }

  return v2;
}

- (void)dealloc
{
  notificationManager = self->_notificationManager;
  if (notificationManager)
  {
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  isMonitoringTransaction = self->_isMonitoringTransaction;
  if (isMonitoringTransaction)
  {

    self->_isMonitoringTransaction = 0;
  }

  isMonitoringConnectionTransaction = self->_isMonitoringConnectionTransaction;
  if (isMonitoringConnectionTransaction)
  {

    self->_isMonitoringConnectionTransaction = 0;
  }

  bgTaskManager = self->_bgTaskManager;
  if (bgTaskManager)
  {
  }

  v8.receiver = self;
  v8.super_class = W5Engine;
  [(W5Engine *)&v8 dealloc];
}

- (void)run
{
  v3 = objc_autoreleasePoolPush();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028DB0;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
  objc_autoreleasePoolPop(v3);
  [+[NSRunLoop currentRunLoop](NSRunLoop run];
}

- (void)terminateAndNotify:(id)notify
{
  v5 = dispatch_semaphore_create(0);
  sniff = self->_sniff;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002908C;
  v14[3] = &unk_1000E1CE8;
  v14[4] = v5;
  [(W5WiFiSniffManager *)sniff teardownAndNotify:v14];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  log = self->_log;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100029094;
  v13[3] = &unk_1000E1CE8;
  v13[4] = v5;
  [(W5LogManager *)log teardownAndNotify:v13];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  [(W5LogManager *)self->_log setCollectedItemCallback:0];
  [(W5LogManager *)self->_log setPingCallback:0];
  diagnostics = self->_diagnostics;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002909C;
  v12[3] = &unk_1000E1CE8;
  v12[4] = v5;
  [(W5DiagnosticsManager *)diagnostics teardownAndNotify:v12];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  [(W5DiagnosticsManager *)self->_diagnostics setPingCallback:0];
  [(W5DiagnosticsManager *)self->_diagnostics setCompletedTestCallback:0];
  wifiperf = self->_wifiperf;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000290A4;
  v11[3] = &unk_1000E1CE8;
  v11[4] = v5;
  [(W5WiFiPerfLoggingManager *)wifiperf teardownAndNotify:v11];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  [(W5StatusManager *)self->_status stopEventMonitoring];
  [(W5StatusManager *)self->_status setUpdatedWiFiCallback:0];
  [(W5StatusManager *)self->_status setUpdatedBluetoothCallback:0];
  [(W5StatusManager *)self->_status setUpdatedAWDLStatusCallback:0];
  [(W5StatusManager *)self->_status setUpdatedWiFiStatusCallback:0];
  [(W5StatusManager *)self->_status setUpdatedBluetoothStatusCallback:0];
  [(W5StatusManager *)self->_status setUpdatedPowerSourceCallback:0];
  [(W5StatusManager *)self->_status setUpdatedNetworkStatusCallback:0];
  [(W5StatusManager *)self->_status setUpdatedPowerManagementCallback:0];
  [(W5StatusManager *)self->_status setUpdatedPowerStatusCallback:0];
  [(W5StatusManager *)self->_status setLowBatteryCallback:0];
  [(W5WiFiConnectionMonitor *)self->_monitor stopMonitoring];
  [(W5WiFiConnectionMonitor *)self->_monitor setDroppedWiFiConnectionCallback:0];
  [(W5FaultEventManager *)self->_faultEventManager invalidate];
  bgTaskManager = self->_bgTaskManager;
  if (bgTaskManager)
  {
    [(W5BGTaskManager *)bgTaskManager stopAllRepeatingTasks];
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  (*(notify + 2))(notify);
}

- (id)__model
{
  v2 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"model", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = [[NSString alloc] initWithFormat:@"%@", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", CFDataGetBytePtr(CFProperty), 4)];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  IOObjectRelease(v4);
  return v7;
}

- (id)__localPeer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029234;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  if (qword_100106BC8 != -1)
  {
    dispatch_once(&qword_100106BC8, block);
  }

  return [(W5Peer *)self->_localPeer copy];
}

- (void)__updateStatusMonitoring
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  xpcConnections = self->_xpcConnections;
  v4 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(xpcConnections);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v7 |= [objc_msgSend(v10 "eventIDs")] != 0;
      v6 |= [objc_msgSend(v10 "eventIDs")];
      if (v7 & 1) != 0 && (v6)
      {
        break;
      }

      if (v5 == ++v9)
      {
        v5 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        p_isMonitoring = &self->_isMonitoring;
        if (self->_isMonitoring != (v7 & 1))
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

        goto LABEL_23;
      }
    }

    p_isMonitoring = &self->_isMonitoring;
    if (!self->_isMonitoring)
    {
      LOBYTE(v6) = 1;
LABEL_21:
      [(W5StatusManager *)self->_status startEventMonitoring];
      v14 = os_transaction_create();
      [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
      self->_isMonitoringTransaction = v14;
      LOBYTE(isMonitoringTransaction) = 1;
      goto LABEL_22;
    }

    p_isMonitoringWiFiConnection = &self->_isMonitoringWiFiConnection;
    if (self->_isMonitoringWiFiConnection)
    {
      return;
    }

    goto LABEL_25;
  }

  p_isMonitoring = &self->_isMonitoring;
  if (!self->_isMonitoring)
  {
    p_isMonitoringWiFiConnection = &self->_isMonitoringWiFiConnection;
    if (!self->_isMonitoringWiFiConnection)
    {
      return;
    }

    goto LABEL_27;
  }

  LOBYTE(v6) = 0;
LABEL_18:
  [(W5StatusManager *)self->_status stopEventMonitoring];
  isMonitoringTransaction = self->_isMonitoringTransaction;
  if (isMonitoringTransaction)
  {
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

    LOBYTE(isMonitoringTransaction) = 0;
    self->_isMonitoringTransaction = 0;
  }

LABEL_22:
  *p_isMonitoring = isMonitoringTransaction;
LABEL_23:
  p_isMonitoringWiFiConnection = &self->_isMonitoringWiFiConnection;
  if (self->_isMonitoringWiFiConnection != (v6 & 1))
  {
    if (v6)
    {
LABEL_25:
      [(W5WiFiConnectionMonitor *)self->_monitor startMonitoring];
      v15 = os_transaction_create();
      [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
      self->_isMonitoringConnectionTransaction = v15;
      LOBYTE(isMonitoringConnectionTransaction) = 1;
LABEL_29:
      *p_isMonitoringWiFiConnection = isMonitoringConnectionTransaction;
      return;
    }

LABEL_27:
    [(W5WiFiConnectionMonitor *)self->_monitor stopMonitoring];
    isMonitoringConnectionTransaction = self->_isMonitoringConnectionTransaction;
    if (isMonitoringConnectionTransaction)
    {
      [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

      LOBYTE(isMonitoringConnectionTransaction) = 0;
      self->_isMonitoringConnectionTransaction = 0;
    }

    goto LABEL_29;
  }
}

- (void)__runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  v11 = objc_alloc_init(W5DiagnosticsTestRequestInternal);
  [(W5DiagnosticsTestRequestInternal *)v11 setUuid:uuid];
  [(W5DiagnosticsTestRequestInternal *)v11 setTestRequests:diagnostics];
  [(W5DiagnosticsTestRequestInternal *)v11 setConfiguration:configuration];
  -[W5DiagnosticsTestRequestInternal setIncludeEvents:](v11, "setIncludeEvents:", [objc_msgSend(configuration objectForKeyedSubscript:{@"IncludeEvents", "BOOLValue"}]);
  [(W5DiagnosticsTestRequestInternal *)v11 setReply:reply];
  diagnostics = self->_diagnostics;

  [(W5DiagnosticsManager *)diagnostics addRequest:v11];
}

- (void)__collectLogsDiagnosticMode:(id)mode outputName:(id)name uid:(unsigned int)uid gid:(unsigned int)gid uuid:(id)uuid reply:(id)reply
{
  v12 = [mode mutableCopy];
  if ([-[W5DebugManager queryDebugConfigurationAndReturnError:](self->_debug queryDebugConfigurationAndReturnError:{0), "megaWiFiProfile"}] == 1)
  {
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseMegaWiFiProfileLimits"];
  }

  diagnosticsModeManager = self->_diagnosticsModeManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100029C7C;
  v14[3] = &unk_1000E1DE8;
  v14[4] = reply;
  [(W5DiagnosticsModeManager *)diagnosticsModeManager collectLogsDiagnosticMode:mode outputName:name reply:v14];
}

- (void)__runWiFiSnifferOnPeer:(id)peer channels:(id)channels duration:(double)duration uuid:(id)uuid reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029D8C;
  v9[3] = &unk_1000E1E10;
  v9[4] = reply;
  v8 = [(W5PeerManager *)self->_peerManager runSnifferAtPeerWithRequest:[[W5PeerSnifferRequest alloc] initWithPeer:peer requestType:1 duration:0 uuid:channels channels:0 config:v9 reply:duration]];
  if (reply)
  {
    if (v8)
    {
      (*(reply + 2))(reply, v8, 0, 0, 0);
    }
  }
}

- (void)__cancelWiFiSnifferWithUUID:(id)d peer:(id)peer reply:(id)reply
{
  if (peer)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002A150;
    v7[3] = &unk_1000E1E10;
    v7[4] = reply;
    v6 = [(W5PeerManager *)self->_peerManager runSnifferAtPeerWithRequest:[[W5PeerSnifferRequest alloc] initWithPeer:peer requestType:2 duration:d uuid:0 channels:0 config:v7 reply:0.0]];
    if (reply)
    {
      if (v6)
      {
        (*(reply + 2))(reply, v6);
      }
    }
  }

  else
  {

    [(W5Engine *)self __cancelWiFiSnifferWithUUID:d reply:reply];
  }
}

- (void)__runWiFiPerfLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  v9 = objc_alloc_init(W5WiFiPerfLoggingRequest);
  [(W5WiFiPerfLoggingRequest *)v9 setUuid:uuid];
  [(W5WiFiPerfLoggingRequest *)v9 setConfiguration:configuration];
  [(W5WiFiPerfLoggingRequest *)v9 setReply:reply];
  wifiperf = self->_wifiperf;

  [(W5WiFiPerfLoggingManager *)wifiperf addRequest:v9];
}

- (void)__updatedStatusWithEvent:(id)event
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  xpcConnections = self->_xpcConnections;
  v5 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(xpcConnections);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v9 "eventIDs")])
        {
          [objc_msgSend(objc_msgSend(v9 "connection")];
        }
      }

      v6 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)__completedDiagnosticsTest:(id)test
{
  v4 = [objc_msgSend(test "info")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  xpcConnections = self->_xpcConnections;
  v6 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(xpcConnections);
        }

        if (v8)
        {
LABEL_17:
          v8 = 1;
        }

        else
        {
          v11 = *(*(&v23 + 1) + 8 * v10);
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          activeRequests = [v11 activeRequests];
          v13 = [activeRequests countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(activeRequests);
                }

                if ([objc_msgSend(*(*(&v19 + 1) + 8 * i) "uuid")])
                {
                  [objc_msgSend(objc_msgSend(v11 "connection")];
                  goto LABEL_17;
                }
              }

              v14 = [activeRequests countByEnumeratingWithState:&v19 objects:v27 count:16];
              v8 = 0;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v17 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v23 objects:v28 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (void)__collectedLogItem:(id)item
{
  v4 = [objc_msgSend(item "info")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  xpcConnections = self->_xpcConnections;
  v6 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(xpcConnections);
        }

        if (v8)
        {
LABEL_17:
          v8 = 1;
        }

        else
        {
          v11 = *(*(&v23 + 1) + 8 * v10);
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          activeRequests = [v11 activeRequests];
          v13 = [activeRequests countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(activeRequests);
                }

                if ([objc_msgSend(*(*(&v19 + 1) + 8 * i) "uuid")])
                {
                  [objc_msgSend(objc_msgSend(v11 "connection")];
                  goto LABEL_17;
                }
              }

              v14 = [activeRequests countByEnumeratingWithState:&v19 objects:v27 count:16];
              v8 = 0;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v17 = [(NSMutableArray *)xpcConnections countByEnumeratingWithState:&v23 objects:v28 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (void)__collectLogItem:(id)item reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A778;
  v7[3] = &unk_1000E1C70;
  v7[4] = item;
  v7[5] = reply;
  dispatch_async(global_queue, v7);
}

- (void)__setupCallbacks
{
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3052000000;
  v29[3] = sub_100029A3C;
  v29[4] = sub_100029A4C;
  v29[5] = self;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3052000000;
  v28[3] = sub_100029A3C;
  queue = self->_queue;
  status = self->_status;
  v28[4] = sub_100029A4C;
  v28[5] = queue;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = sub_100029A3C;
  v27[4] = sub_100029A4C;
  v27[5] = status;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3052000000;
  v26[3] = sub_100029A3C;
  monitor = self->_monitor;
  v26[4] = sub_100029A4C;
  v26[5] = monitor;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002B05C;
  v25[3] = &unk_1000E1E60;
  v25[4] = v28;
  v25[5] = v29;
  [(W5StatusManager *)status setUpdatedWiFiStatusCallback:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002B128;
  v24[3] = &unk_1000E1E60;
  v24[4] = v28;
  v24[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedAWDLStatusCallback:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002B1F4;
  v23[3] = &unk_1000E1E60;
  v23[4] = v28;
  v23[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedBluetoothStatusCallback:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002B2C0;
  v22[3] = &unk_1000E1E60;
  v22[4] = v28;
  v22[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedNetworkStatusCallback:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002B38C;
  v21[3] = &unk_1000E1E60;
  v21[4] = v28;
  v21[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedPowerStatusCallback:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002B458;
  v20[3] = &unk_1000E1E88;
  v20[4] = v28;
  v20[5] = v27;
  v20[6] = v26;
  v20[7] = v29;
  [(W5StatusManager *)self->_status setUpdatedWiFiCallback:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002B5A8;
  v19[3] = &unk_1000E1E60;
  v19[4] = v28;
  v19[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedBluetoothCallback:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002B674;
  v18[3] = &unk_1000E1E88;
  v18[4] = v28;
  v18[5] = v27;
  v18[6] = v26;
  v18[7] = v29;
  [(W5StatusManager *)self->_status setUpdatedPowerManagementCallback:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002B7B4;
  v17[3] = &unk_1000E1E60;
  v17[4] = v28;
  v17[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedPowerSourceCallback:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B880;
  v16[3] = &unk_1000E1E60;
  v16[4] = v28;
  v16[5] = v29;
  [(W5StatusManager *)self->_status setLowBatteryCallback:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002B94C;
  v15[3] = &unk_1000E1E60;
  v15[4] = v28;
  v15[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedFaultsCallback:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BA18;
  v14[3] = &unk_1000E1E60;
  v14[4] = v28;
  v14[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedLinkTestsCallback:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002BAE4;
  v13[3] = &unk_1000E1E60;
  v13[4] = v28;
  v13[5] = v29;
  [(W5StatusManager *)self->_status setUpdatedRecoveriesCallback:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002BBB0;
  v12[3] = &unk_1000E1ED8;
  v12[4] = v28;
  v12[5] = v29;
  [(W5DiagnosticsManager *)self->_diagnostics setCompletedTestCallback:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002BD38;
  v11[3] = &unk_1000E1F28;
  v11[4] = v28;
  v11[5] = v27;
  v11[6] = v29;
  [(W5DiagnosticsManager *)self->_diagnostics setPingCallback:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BE1C;
  v10[3] = &unk_1000E1F50;
  v10[4] = v28;
  v10[5] = v29;
  [(W5LogManager *)self->_log setCollectedItemCallback:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002BFA4;
  v9[3] = &unk_1000E1FA0;
  v9[4] = v28;
  v9[5] = v29;
  [(W5LogManager *)self->_log setCollectLogItemCallback:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C078;
  v8[3] = &unk_1000E1F28;
  v8[4] = v28;
  v8[5] = v27;
  v8[6] = v29;
  [(W5LogManager *)self->_log setPingCallback:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C15C;
  v7[3] = &unk_1000E1F28;
  v7[4] = v28;
  v7[5] = v27;
  v7[6] = v29;
  [(W5WiFiConnectionMonitor *)self->_monitor setDroppedWiFiConnectionCallback:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C240;
  v6[3] = &unk_1000E1FC8;
  v6[4] = self;
  v6[5] = v28;
  [(W5FaultEventManager *)self->_faultEventManager setFaultEventHandler:v6];
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
}

- (void)xpcConnection:(id)connection startMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C478;
  v6[3] = &unk_1000E1C70;
  v6[4] = self;
  v6[5] = reply;
  dispatch_async(queue, v6);
}

- (void)xpcConnection:(id)connection stopMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C548;
  v6[3] = &unk_1000E1C70;
  v6[4] = self;
  v6[5] = reply;
  dispatch_async(queue, v6);
}

- (void)xpcConnection:(id)connection queryLocalPeerAndReply:(id)reply
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002C618;
  v5[3] = &unk_1000E1C70;
  v5[4] = self;
  v5[5] = reply;
  dispatch_async(queue, v5);
}

- (void)xpcConnection:(id)connection queryStatusForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C728;
  block[3] = &unk_1000E2108;
  block[5] = self;
  block[6] = reply;
  block[4] = peer;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C9D4;
  v7[3] = &unk_1000E20B8;
  v7[4] = peer;
  v7[5] = self;
  v7[6] = fetch;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D000;
  v7[3] = &unk_1000E20B8;
  v7[4] = peer;
  v7[5] = path;
  v7[6] = self;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D1C8;
  v7[3] = &unk_1000E20B8;
  v7[4] = peer;
  v7[5] = path;
  v7[6] = self;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection queryDebugConfigurationForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D348;
  block[3] = &unk_1000E2108;
  block[5] = self;
  block[6] = reply;
  block[4] = peer;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D5FC;
  v7[3] = &unk_1000E2180;
  v7[4] = peer;
  v7[5] = configuration;
  v7[6] = self;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D8AC;
  v8[3] = &unk_1000E21D0;
  v8[4] = uuid;
  v8[5] = connection;
  v8[6] = configuration;
  v8[7] = diagnostics;
  v8[8] = self;
  v8[9] = reply;
  dispatch_async(queue, v8);
}

- (void)xpcConnection:(id)connection runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 136316674;
    v36 = "[W5Engine xpcConnection:runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:]";
    v37 = 2080;
    v38 = "W5Engine.m";
    v39 = 1024;
    v40 = 1230;
    v41 = 2114;
    v42 = [objc_msgSend(uuid "UUIDString")];
    v43 = 2114;
    processName = [connection processName];
    v45 = 1024;
    v46 = [objc_msgSend(connection "connection")];
    v47 = 2114;
    configurationCopy = configuration;
    LODWORD(v23) = 64;
    v22 = &v35;
    _os_log_send_and_compose_impl();
  }

  configurationCopy2 = configuration;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [diagnostics countByEnumeratingWithState:&v30 objects:v34 count:{16, v22, v23}];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(diagnostics);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = sub_100098A04();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          [v16 testID];
          v18 = W5DescriptionForDiagnosticsTestID();
          testID = [v16 testID];
          v35 = 136316162;
          v36 = "[W5Engine xpcConnection:runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:]";
          v37 = 2080;
          v38 = "W5Engine.m";
          v39 = 1024;
          v40 = 1232;
          v41 = 2114;
          v42 = v18;
          v43 = 2048;
          processName = testID;
          _os_log_send_and_compose_impl();
        }
      }

      v13 = [diagnostics countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002E164;
  v29[3] = &unk_1000E2068;
  v29[4] = reply;
  v20 = [[W5PeerDiagnosticsRequest alloc] initWithPeer:peer diagnostics:diagnostics configuration:configurationCopy2 uuid:uuid reply:v29];
  v21 = [(W5PeerManager *)self->_peerManager runDiagnosticsOnPeerWithRequest:v20];
  if (reply && v21)
  {
    (*(reply + 2))(reply, v21, 0);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

- (void)xpcConnection:(id)connection registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  v9 = 0;
  if (![(W5DiagnosticsModeManager *)self->_diagnosticsModeManager registerPeer:peer role:16 configuration:configuration error:&v9])
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = "[W5Engine xpcConnection:registerRemoteDiagnosticEventsForPeer:configuration:reply:]";
      v12 = 2080;
      v13 = "W5Engine.m";
      v14 = 1024;
      v15 = 1252;
      v16 = 2114;
      peerCopy = peer;
      v18 = 2114;
      v19 = v9;
      _os_log_send_and_compose_impl();
    }
  }

  if (reply)
  {
    (*(reply + 2))(reply, v9);
  }
}

- (void)xpcConnection:(id)connection unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  v9 = 0;
  if (![(W5DiagnosticsModeManager *)self->_diagnosticsModeManager unregisterPeer:peer role:16 error:&v9])
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = "[W5Engine xpcConnection:unregisterRemoteDiagnosticEventsForPeer:configuration:reply:]";
      v12 = 2080;
      v13 = "W5Engine.m";
      v14 = 1024;
      v15 = 1262;
      v16 = 2114;
      peerCopy = peer;
      v18 = 2114;
      v19 = v9;
      _os_log_send_and_compose_impl();
    }
  }

  if (reply)
  {
    (*(reply + 2))(reply, v9);
  }
}

- (void)xpcConnection:(id)connection queryRegisteredDiagnosticsPeersWithReply:(id)reply
{
  if (reply)
  {
    v5 = [(W5DiagnosticsModeManager *)self->_diagnosticsModeManager registeredPeersForFaultType:0x7FFFFFFFFFFFFFFFLL];
    v6 = *(reply + 2);

    v6(reply, 0, v5);
  }
}

- (void)xpcConnection:(id)connection startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002E4BC;
  v6[3] = &unk_1000E20B8;
  v6[4] = connection;
  v6[5] = configuration;
  v6[6] = self;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)xpcConnection:(id)connection stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E7C4;
  block[3] = &unk_1000E2220;
  block[4] = d;
  block[5] = connection;
  block[6] = info;
  block[7] = self;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EAC8;
  block[3] = &unk_1000E2220;
  block[4] = connection;
  block[5] = info;
  block[6] = peer;
  block[7] = self;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection collectLogs:(id)logs configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002EEE0;
  v8[3] = &unk_1000E21D0;
  v8[4] = uuid;
  v8[5] = connection;
  v8[6] = configuration;
  v8[7] = logs;
  v8[8] = self;
  v8[9] = reply;
  dispatch_async(queue, v8);
}

- (void)xpcConnection:(id)connection collectLogsDiagnosticMode:(id)mode uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F608;
  block[3] = &unk_1000E2220;
  block[4] = uuid;
  block[5] = connection;
  block[6] = mode;
  block[7] = self;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002FC9C;
  v9[3] = &unk_1000E2388;
  v9[4] = peer;
  v9[5] = self;
  *&v9[9] = duration;
  v9[7] = uuid;
  v9[8] = reply;
  v9[6] = channels;
  dispatch_async(queue, v9);
}

- (void)xpcConnection:(id)connection runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000301B0;
  v9[3] = &unk_1000E2388;
  v9[4] = peer;
  v9[5] = self;
  *&v9[9] = duration;
  v9[7] = uuid;
  v9[8] = reply;
  v9[6] = channels;
  dispatch_async(queue, v9);
}

- (void)xpcConnection:(id)connection startPeerDiscoveryWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030560;
  block[3] = &unk_1000E2220;
  block[4] = configuration;
  block[5] = uuid;
  block[6] = connection;
  block[7] = self;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection stopPeerDiscoveryWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030808;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)__cancelPeerDiscoveryWithUUID:(id)d
{
  if ([(W5PeerManager *)self->_peerManager stopPeerDiscoveryWithRequestUUID:?])
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (void)xpcConnection:(id)connection startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000309D4;
  block[3] = &unk_1000E1CC0;
  block[4] = peer;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030E28;
  block[3] = &unk_1000E2220;
  block[4] = peer;
  block[5] = self;
  block[6] = result;
  block[7] = configuration;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection runWiFiPerformanceLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031274;
  v7[3] = &unk_1000E20B8;
  v7[4] = self;
  v7[5] = configuration;
  v7[6] = uuid;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection cancelDiagnosticsWithUUID:(id)d peerID:(id)iD reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003144C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection cancelCollectLogsWithUUID:(id)d peerID:(id)iD reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031624;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection cancelWiFiSnifferWithUUID:(id)d peerID:(id)iD reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000317FC;
  v7[3] = &unk_1000E20B8;
  v7[4] = iD;
  v7[5] = self;
  v7[6] = d;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection cancelWiFiSnifferWithUUID:(id)d peer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031B44;
  v7[3] = &unk_1000E20B8;
  v7[4] = peer;
  v7[5] = self;
  v7[6] = d;
  v7[7] = reply;
  dispatch_async(queue, v7);
}

- (void)xpcConnection:(id)connection cancelWiFiPerformanceLoggingWithUUID:(id)d peerID:(id)iD reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031E4C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032024;
  block[3] = &unk_1000E1CC0;
  block[4] = peer;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032108;
  block[3] = &unk_1000E1CC0;
  block[4] = peer;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection submitFaultEvent:(id)event reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000321EC;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = event;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)xpcConnection:(id)connection queryFaultEventCacheForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000322C4;
  block[3] = &unk_1000E1CC0;
  block[4] = peer;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3052000000;
  v39[3] = sub_100029A3C;
  v39[4] = sub_100029A4C;
  v39[5] = connection;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = sub_100029A3C;
  v37 = sub_100029A4C;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = sub_100029A3C;
  v31 = sub_100029A4C;
  v32 = 0;
  v6 = [[W5XPCConnection alloc] initWithXPCConnection:connection];
  v7 = v6;
  if (!v6)
  {
    v17 = sub_100098A04();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v15 = 0;
      goto LABEL_9;
    }

    processIdentifier = [connection processIdentifier];
    v40 = 136315906;
    v41 = "[W5Engine listener:shouldAcceptNewConnection:]";
    v42 = 2080;
    v43 = "W5Engine.m";
    v44 = 1024;
    v45 = 1800;
    v46 = 1024;
    LODWORD(v47) = processIdentifier;
LABEL_12:
    _os_log_send_and_compose_impl();
    goto LABEL_13;
  }

  if (([-[NSXPCConnection valueForEntitlement:](-[W5XPCConnection connection](v6 "connection")] & 1) == 0 && (objc_msgSend(-[NSXPCConnection valueForEntitlement:](-[W5XPCConnection connection](v7, "connection"), "valueForEntitlement:", @"com.apple.private.network-performance-tester"), "BOOLValue") & 1) == 0 && (objc_msgSend(-[NSXPCConnection valueForEntitlement:](-[W5XPCConnection connection](v7, "connection"), "valueForEntitlement:", @"com.apple.wifivelocity"), "BOOLValue") & 1) == 0 && (objc_msgSend(-[NSXPCConnection valueForEntitlement:](-[W5XPCConnection connection](v7, "connection"), "valueForEntitlement:", @"com.apple.wireless-diagnostics"), "BOOLValue") & 1) == 0)
  {
    v19 = sub_100098A04();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    processName = [(W5XPCConnection *)v7 processName];
    processIdentifier2 = [(NSXPCConnection *)[(W5XPCConnection *)v7 connection] processIdentifier];
    v40 = 136316418;
    v41 = "[W5Engine listener:shouldAcceptNewConnection:]";
    v42 = 2080;
    v43 = "W5Engine.m";
    v44 = 1024;
    v45 = 1807;
    v46 = 2114;
    v47 = processName;
    v48 = 1024;
    v49 = processIdentifier2;
    v50 = 2114;
    *v51 = @"com.apple.private.wifivelocity";
    goto LABEL_12;
  }

  [(W5XPCConnection *)v7 setDelegate:self];
  [connection setExportedInterface:sub_1000344F8()];
  [connection setExportedObject:v7];
  [connection setRemoteObjectInterface:sub_1000363F8()];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032940;
  block[3] = &unk_1000E1C98;
  block[4] = self;
  block[5] = v7;
  dispatch_sync(queue, block);
  [(NSString *)[(W5XPCConnection *)v7 processName] utf8ValueSafe];
  v9 = os_transaction_create();
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
  v28[5] = v9;
  v34[5] = v7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100032988;
  v25[3] = &unk_1000E2428;
  v25[4] = &v33;
  v25[5] = v39;
  [connection setInterruptionHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100032AEC;
  v24[3] = &unk_1000E2450;
  v24[4] = self;
  v24[5] = &v33;
  v24[6] = v39;
  v24[7] = &v27;
  [connection setInvalidationHandler:v24];
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    processName2 = [(W5XPCConnection *)v7 processName];
    processIdentifier3 = [connection processIdentifier];
    effectiveUserIdentifier = [connection effectiveUserIdentifier];
    effectiveGroupIdentifier = [connection effectiveGroupIdentifier];
    v40 = 136316674;
    v41 = "[W5Engine listener:shouldAcceptNewConnection:]";
    v42 = 2080;
    v43 = "W5Engine.m";
    v44 = 1024;
    v45 = 1911;
    v46 = 2114;
    v47 = processName2;
    v48 = 1024;
    v49 = processIdentifier3;
    v50 = 1024;
    *v51 = effectiveUserIdentifier;
    *&v51[4] = 1024;
    *&v51[6] = effectiveGroupIdentifier;
    LODWORD(v23) = 56;
    v22 = &v40;
    _os_log_send_and_compose_impl();
  }

  [connection resume];
  v15 = 1;
LABEL_9:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);
  return v15;
}

- (id)_peerListeners
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [[W5PeerSensingListener alloc] initWithInterface:[(W5StatusManager *)self->_status corewifi]];
  if (!v4)
  {
    v12 = sub_100098A04();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

LABEL_23:
    _os_log_send_and_compose_impl();
    return v3;
  }

  [v3 addObject:v4];
  v5 = [[W5PeerStatusListener alloc] initWithInterface:[(W5StatusManager *)self->_status corewifi] statusManager:self->_status];
  if (!v5)
  {
    v13 = sub_100098A04();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v5];
  v6 = [[W5PeerSnifferListener alloc] initWithInterface:[(W5StatusManager *)self->_status corewifi] snifferManager:self->_sniff];
  if (!v6)
  {
    v14 = sub_100098A04();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v6];
  v7 = [[W5PeerDebugListener alloc] initWithDebugManager:self->_debug];
  if (!v7)
  {
    v15 = sub_100098A04();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v7];
  v8 = [[W5PeerDiagnosticsListener alloc] initWithDiagnosticsManager:self->_diagnostics];
  if (!v8)
  {
    v16 = sub_100098A04();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v8];
  v9 = [[W5PeerFileTransferListener alloc] initWithTransferManager:self->_transferManager];
  if (!v9)
  {
    v17 = sub_100098A04();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v9];
  v10 = [[W5PeerDatabaseListener alloc] initWithDatabaseAccessManager:self->_databaseManager];
  if (!v10)
  {
    v18 = sub_100098A04();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    goto LABEL_23;
  }

  [v3 addObject:v10];
  [v3 addObject:{-[W5FaultEventManager listener](self->_faultEventManager, "listener")}];
  [v3 addObject:{-[W5PeerInfraManager listener](self->_infraManager, "listener")}];
  return v3;
}

- (void)_scheduleRepeatingCleanupTasks
{
  if (![(W5BGTaskManager *)self->_bgTaskManager scheduleRepeatingTask:@"com.apple.wifivelocity.sniffer_cleanup" interval:&stru_1000E2490 repeatingTask:86400.0])
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[W5Engine _scheduleRepeatingCleanupTasks]";
      v12 = 2080;
      v13 = "W5Engine.m";
      v14 = 1024;
      v15 = 2013;
      LODWORD(v8) = 28;
      _os_log_send_and_compose_impl();
    }
  }

  v4 = [NSPredicate predicateWithFormat:@"SELF.absoluteString CONTAINS %@", @"WiFiNetworkDiagnostics", v8];
  v5 = [NSPredicate predicateWithFormat:@"pathExtension='tgz'"];
  bgTaskManager = self->_bgTaskManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100033AE0;
  v9[3] = &unk_1000E24B8;
  v9[4] = v4;
  v9[5] = v5;
  if (![(W5BGTaskManager *)bgTaskManager scheduleRepeatingTask:@"com.apple.wifivelocity.de_cleanup" interval:v9 repeatingTask:86400.0])
  {
    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[W5Engine _scheduleRepeatingCleanupTasks]";
      v12 = 2080;
      v13 = "W5Engine.m";
      v14 = 1024;
      v15 = 2042;
      _os_log_send_and_compose_impl();
    }
  }
}

@end