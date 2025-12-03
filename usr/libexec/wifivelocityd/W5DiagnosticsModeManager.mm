@interface W5DiagnosticsModeManager
- (BOOL)_isFaultSupported:(int64_t)supported;
- (BOOL)_shouldShowNotification:(int64_t)notification;
- (BOOL)registerPeer:(id)peer role:(int64_t)role configuration:(id)configuration error:(id *)error;
- (BOOL)unregisterPeer:(id)peer role:(int64_t)role error:(id *)error;
- (NSArray)activeDiagnostics;
- (NSArray)allDiagnostics;
- (NSArray)registeredPeers;
- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)manager peerManager:(id)peerManager userNotificationManager:(id)notificationManager snifferManager:(id)snifferManager statusManager:(id)statusManager logManager:(id)logManager;
- (id)_actionHandler;
- (id)finishedDiagnostics;
- (int64_t)registeredRoleForPeer:(id)peer;
- (void)__collectNetUsageFiles:(id)files uuid:(id)uuid;
- (void)__waitForLogRequestToComplete:(id)complete maxWait:(unint64_t)wait;
- (void)__writeDiagnosticModeToFile:(id)file file:(id)a4;
- (void)__writePeerStatusToFile:(id)file;
- (void)_archiveAndCollectLogs:(id)logs logCollectionPath:(id)path outputDirectory:(id)directory maxWait:(unint64_t)wait;
- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)mode;
- (void)_collectNetworkInfoForDiagnosticMode:(id)mode;
- (void)_collectSystemLogsForDiagnosticMode:(id)mode;
- (void)_finishedProcessingDiagnosticMode:(id)mode;
- (void)_notifyPeers:(id)peers info:(id)info;
- (void)_queryDebugConfigurationForPeer:(id)peer reply:(id)reply;
- (void)_runDiagnosticsForDiagnosticMode:(id)mode;
- (void)_showSuggestedStartNotificationForEvent:(id)event;
- (void)_showSuggestedStopNotificationForEvent:(id)event;
- (void)_startDiagnosticsModeWithConfiguration:(id)configuration currentPeer:(id)peer reply:(id)reply;
- (void)_stopDiagnosticsMode:(id)mode currentPeer:(id)peer info:(id)info reply:(id)reply;
- (void)_storeSnifferInfo:(id)info peer:(id)peer uuid:(id)uuid path:(id)path;
- (void)_updateDiagnosticsMode:(id)mode incomingMode:(id)incomingMode currentPeer:(id)peer reply:(id)reply;
- (void)collectLogsDiagnosticMode:(id)mode outputName:(id)name reply:(id)reply;
- (void)handlePeerFaultEvent:(id)event;
- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply;
- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply;
- (void)updateDiagnosticsMode:(id)mode reply:(id)reply;
@end

@implementation W5DiagnosticsModeManager

- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)manager peerManager:(id)peerManager userNotificationManager:(id)notificationManager snifferManager:(id)snifferManager statusManager:(id)statusManager logManager:(id)logManager
{
  managerCopy = manager;
  peerManagerCopy = peerManager;
  notificationManagerCopy = notificationManager;
  snifferManagerCopy = snifferManager;
  statusManagerCopy = statusManager;
  logManagerCopy = logManager;
  v35.receiver = self;
  v35.super_class = W5DiagnosticsModeManager;
  v18 = [(W5DiagnosticsModeManager *)&v35 init];
  objc_storeStrong(&v18->_netUsageManager, manager);
  if (peerManagerCopy && (objc_storeStrong(&v18->_peerManager, peerManager), snifferManagerCopy))
  {
    objc_storeStrong(&v18->_snifferManager, snifferManager);
    v20 = statusManagerCopy;
    v19 = notificationManagerCopy;
    if (logManagerCopy)
    {
      objc_storeStrong(&v18->_logManager, logManager);
      objc_storeStrong(&v18->_userNotificationManager, notificationManager);
      objc_storeStrong(&v18->_statusManager, statusManager);
      v21 = objc_alloc_init(W5DiagnosticsModeStore);
      store = v18->_store;
      v18->_store = v21;

      v23 = objc_alloc_init(W5DiagnosticsModeLocalStore);
      localStore = v18->_localStore;
      v18->_localStore = v23;

      v25 = +[NSMutableArray array];
      processors = v18->_processors;
      v18->_processors = v25;

      v27 = +[NSMutableDictionary dictionary];
      lastNotificationTimestamp = v18->_lastNotificationTimestamp;
      v18->_lastNotificationTimestamp = v27;

      faultEventManager = v18->_faultEventManager;
      v18->_faultEventManager = 0;
    }

    else
    {
      faultEventManager = v18;
      v18 = 0;
    }

    v30 = managerCopy;
  }

  else
  {
    faultEventManager = v18;
    v18 = 0;
    v19 = notificationManagerCopy;
    v30 = managerCopy;
    v20 = statusManagerCopy;
  }

  return v18;
}

- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 147;
    v28 = 2114;
    v29 = configurationCopy;
    _os_log_send_and_compose_impl();
  }

  v9 = [configurationCopy objectForKeyedSubscript:@"Peers"];
  if (v9)
  {
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v12 = sub_10009161C(v9, peerID);

    if (v12)
    {
      [(W5DiagnosticsModeManager *)self _startDiagnosticsModeWithConfiguration:configurationCopy currentPeer:v12 reply:replyCopy];
    }

    else
    {
      v15 = sub_100098A04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
        v24 = 2080;
        v25 = "W5DiagnosticsModeManager.m";
        v26 = 1024;
        v27 = 158;
        v28 = 2114;
        v29 = v9;
        _os_log_send_and_compose_impl();
      }

      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"W5ParamErr";
      v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v16];
      replyCopy[2](replyCopy, 0, v17);

      v12 = 0;
    }
  }

  else
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "[W5DiagnosticsModeManager startDiagnosticsModeWithConfiguration:reply:]";
      v24 = 2080;
      v25 = "W5DiagnosticsModeManager.m";
      v26 = 1024;
      v27 = 151;
      v28 = 2114;
      v29 = configurationCopy;
      _os_log_send_and_compose_impl();
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"W5ParamErr";
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v12];
    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)_startDiagnosticsModeWithConfiguration:(id)configuration currentPeer:(id)peer reply:(id)reply
{
  configurationCopy = configuration;
  peerCopy = peer;
  replyCopy = reply;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315394;
    *&v24[4] = "[W5DiagnosticsModeManager _startDiagnosticsModeWithConfiguration:currentPeer:reply:]";
    *&v24[12] = 2114;
    *&v24[14] = configurationCopy;
    _os_log_send_and_compose_impl();
  }

  v12 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v12)
  {
    [(NSMutableArray *)self->_processors addObject:v12];
    *v24 = 0;
    *&v24[8] = v24;
    *&v24[16] = 0x3032000000;
    v25 = sub_100002E48;
    v26 = sub_100002E58;
    v13 = os_transaction_create();
    v14 = +[W5ActivityManager sharedActivityManager];
    [v14 osTransactionCreate:"_startDiagnosticsModeWithConfiguration" transaction:v13];

    v27 = v13;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100002E60;
    v18[3] = &unk_1000E1000;
    v22 = replyCopy;
    v19 = peerCopy;
    selfCopy = self;
    v21 = v12;
    v23 = v24;
    [(W5DiagnosticsModeProcessor *)v21 performStartOperationsWithConfiguration:configurationCopy handler:_actionHandler completion:v18];

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = @"W5InternalErr";
    v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }
}

- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply
{
  dCopy = d;
  infoCopy = info;
  replyCopy = reply;
  v11 = [infoCopy objectForKeyedSubscript:@"Peer"];
  store = [(W5DiagnosticsModeManager *)self store];
  v13 = [store diagnosticsModeMatchingUUID:dCopy];

  if (!(v13 | v11))
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "[W5DiagnosticsModeManager stopDiagnosticsModeWithUUID:info:reply:]";
      v34 = 2114;
      v35 = dCopy;
      _os_log_send_and_compose_impl();
    }

    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = @"W5ParamErr";
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];
    replyCopy[2](replyCopy, v21);

    goto LABEL_11;
  }

  if (v13)
  {
    peers = [v13 peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v17 = sub_10009161C(peers, peerID);

    v18 = [W5DiagnosticsModePeer alloc];
    if (v17)
    {
      role = [v17 role];
    }

    else
    {
      role = 8;
    }

    localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
    v23 = [v18 initWithRole:role peer:localPeer2];

    [(W5DiagnosticsModeManager *)self _stopDiagnosticsMode:v13 currentPeer:v23 info:infoCopy reply:replyCopy];
LABEL_11:

    goto LABEL_12;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003410;
  v24[3] = &unk_1000E1028;
  v25 = dCopy;
  selfCopy = self;
  v27 = infoCopy;
  v29 = replyCopy;
  v28 = v11;
  [(W5DiagnosticsModeManager *)self _queryDebugConfigurationForPeer:v28 reply:v24];

LABEL_12:
}

- (void)_stopDiagnosticsMode:(id)mode currentPeer:(id)peer info:(id)info reply:(id)reply
{
  modeCopy = mode;
  peerCopy = peer;
  infoCopy = info;
  replyCopy = reply;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 136315394;
    *&v27[4] = "[W5DiagnosticsModeManager _stopDiagnosticsMode:currentPeer:info:reply:]";
    *&v27[12] = 2114;
    *&v27[14] = modeCopy;
    _os_log_send_and_compose_impl();
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v15)
  {
    [(NSMutableArray *)self->_processors addObject:v15];
    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x3032000000;
    v28 = sub_100002E48;
    v29 = sub_100002E58;
    v16 = os_transaction_create();
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionCreate:"_stopDiagnosticsMode" transaction:v16];

    v30 = v16;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100003B3C;
    v21[3] = &unk_1000E1000;
    v25 = replyCopy;
    v22 = peerCopy;
    selfCopy = self;
    v24 = v15;
    v26 = v27;
    [(W5DiagnosticsModeProcessor *)v24 performStopOperationsForMode:modeCopy handler:_actionHandler completion:v21];

    _Block_object_dispose(v27, 8);
  }

  else
  {
    v31 = NSLocalizedFailureReasonErrorKey;
    v32 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

- (void)_queryDebugConfigurationForPeer:(id)peer reply:(id)reply
{
  replyCopy = reply;
  peerCopy = peer;
  v8 = [W5PeerDebugConfigurationRequest alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003EF4;
  v13[3] = &unk_1000E1050;
  v9 = replyCopy;
  v14 = v9;
  v10 = [(W5PeerDebugConfigurationRequest *)v8 initWithPeer:peerCopy type:1 debugConfiguration:0 reply:v13];

  v11 = [(W5PeerManager *)self->_peerManager sendDebugConfigurationForPeerWithRequest:v10];
  v12 = v11;
  if (v9 && v11)
  {
    (*(v9 + 2))(v9, 0, v11);
  }
}

- (void)updateDiagnosticsMode:(id)mode reply:(id)reply
{
  modeCopy = mode;
  replyCopy = reply;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 136316162;
    v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v59 = 2080;
    v60 = "W5DiagnosticsModeManager.m";
    v61 = 1024;
    v62 = 309;
    v63 = 2080;
    v64 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v65 = 2114;
    v66 = modeCopy;
    LODWORD(v45) = 48;
    v44 = &v57;
    _os_log_send_and_compose_impl();
  }

  if (modeCopy)
  {
    peers = [modeCopy peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v12 = sub_10009161C(peers, peerID);

    if (!v12)
    {
      v34 = sub_100098A04();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        peers2 = [modeCopy peers];
        v57 = 136315906;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 319;
        v63 = 2114;
        v64 = peers2;
        _os_log_send_and_compose_impl();
      }

      v70 = NSLocalizedFailureReasonErrorKey;
      v71 = @"W5ParamErr";
      v22 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v23 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v22];
      replyCopy[2](replyCopy, v23);
      goto LABEL_35;
    }

    v46 = replyCopy;
    v47 = modeCopy;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    activeDiagnostics = [(W5DiagnosticsModeManager *)self activeDiagnostics];
    v14 = [activeDiagnostics countByEnumeratingWithState:&v51 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(activeDiagnostics);
        }

        v18 = *(*(&v51 + 1) + 8 * v17);
        peers3 = [v18 peers];
        peer = [v12 peer];
        peerID2 = [peer peerID];
        v22 = sub_10009161C(peers3, peerID2);

        if (v22)
        {
          if (([v22 role] & 1) != 0 || (objc_msgSend(v22, "role") & 2) != 0)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [activeDiagnostics countByEnumeratingWithState:&v51 objects:v69 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v23 = v18;

      uuid = [v23 uuid];
      modeCopy = v47;
      uuid2 = [v47 uuid];
      v27 = [uuid isEqual:uuid2];

      if (v27)
      {
        goto LABEL_20;
      }

      v36 = sub_100098A04();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 136316418;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 341;
        v63 = 2080;
        v64 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v65 = 2114;
        v66 = v22;
        v67 = 2114;
        v68 = v23;
        _os_log_send_and_compose_impl();
      }

      peer2 = [v22 peer];
      name = [peer2 name];
      [v22 peer];
      v40 = v39 = v23;
      peerID3 = [v40 peerID];
      uuid3 = [v39 uuid];
      v30 = [NSString stringWithFormat:@"Device ('%@ - %@') is already in active diagnostics (UUID='%@')", name, peerID3, uuid3];

      v23 = v39;
      v55 = NSLocalizedFailureReasonErrorKey;
      v56 = @"W5NotPermittedErr";
      v32 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v43 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v32];
      replyCopy = v46;
      v46[2](v46, v43);

      goto LABEL_34;
    }

LABEL_15:

    v22 = 0;
    v23 = 0;
    modeCopy = v47;
LABEL_20:
    v28 = [(W5DiagnosticsModeManager *)selfCopy store:v44];
    uuid4 = [modeCopy uuid];
    v30 = [v28 diagnosticsModeMatchingUUID:uuid4];

    replyCopy = v46;
    if (v30)
    {
      state = [v30 state];
      v32 = sub_100098A04();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (state == 10)
      {
        if (v33)
        {
          v57 = 136315650;
          v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
          v59 = 2080;
          v60 = "W5DiagnosticsModeManager.m";
          v61 = 1024;
          v62 = 350;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_34;
      }

      if (v33)
      {
        v57 = 136315906;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 354;
        v63 = 2112;
        v64 = v30;
        _os_log_send_and_compose_impl();
      }
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100004864;
    v49[3] = &unk_1000E1078;
    v50 = v46;
    [(W5DiagnosticsModeManager *)selfCopy _updateDiagnosticsMode:v30 incomingMode:modeCopy currentPeer:v12 reply:v49];
    v32 = v50;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 136315650;
    v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
    v59 = 2080;
    v60 = "W5DiagnosticsModeManager.m";
    v61 = 1024;
    v62 = 311;
    _os_log_send_and_compose_impl();
  }

  v72 = NSLocalizedFailureReasonErrorKey;
  v73 = @"W5ParamErr";
  v12 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v22 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v12];
  replyCopy[2](replyCopy, v22);
LABEL_36:
}

- (void)_updateDiagnosticsMode:(id)mode incomingMode:(id)incomingMode currentPeer:(id)peer reply:(id)reply
{
  modeCopy = mode;
  incomingModeCopy = incomingMode;
  peerCopy = peer;
  replyCopy = reply;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315394;
    *&v25[4] = "[W5DiagnosticsModeManager _updateDiagnosticsMode:incomingMode:currentPeer:reply:]";
    *&v25[12] = 2114;
    *&v25[14] = incomingModeCopy;
    _os_log_send_and_compose_impl();
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:peerCopy];
  if (v15)
  {
    [(NSMutableArray *)self->_processors addObject:v15];
    *v25 = 0;
    *&v25[8] = v25;
    *&v25[16] = 0x3032000000;
    v26 = sub_100002E48;
    v27 = sub_100002E58;
    v16 = os_transaction_create();
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionCreate:"_updateDiagnosticsMode" transaction:v16];

    v28 = v16;
    _actionHandler = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004B90;
    v21[3] = &unk_1000E10C8;
    v23 = replyCopy;
    v21[4] = self;
    v22 = v15;
    v24 = v25;
    [(W5DiagnosticsModeProcessor *)v22 performUpdateOperationsForMode:modeCopy incomingMode:incomingModeCopy handler:_actionHandler completion:v21];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

- (id)_actionHandler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004E84;
  v5[3] = &unk_1000E1248;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)_storeSnifferInfo:(id)info peer:(id)peer uuid:(id)uuid path:(id)path
{
  pathCopy = path;
  uuidCopy = uuid;
  peerCopy = peer;
  infoCopy = info;
  info = [peerCopy info];
  [info setObject:uuidCopy forKey:@"UUID"];

  info2 = [peerCopy info];

  [info2 setObject:pathCopy forKey:@"path"];
  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v18[0] = @"UUID";
  v18[1] = @"path";
  v19[0] = uuidCopy;
  v19[1] = pathCopy;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  [localStore addToStore:infoCopy newInfo:v17];
}

- (void)collectLogsDiagnosticMode:(id)mode outputName:(id)name reply:(id)reply
{
  modeCopy = mode;
  nameCopy = name;
  replyCopy = reply;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v77 = 136315906;
    v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
    v79 = 2080;
    v80 = "W5DiagnosticsModeManager.m";
    v81 = 1024;
    v82 = 804;
    v83 = 2112;
    v84 = modeCopy;
    LODWORD(v71) = 38;
    v69 = &v77;
    _os_log_send_and_compose_impl();
  }

  v12 = [NSUUID alloc];
  v13 = [(NSError *)modeCopy objectForKey:@"DiagnosticsModeUUID"];
  v14 = [v12 initWithUUIDString:v13];

  store = [(W5DiagnosticsModeManager *)self store];
  v16 = store;
  if (v14)
  {
    firstObject = [store diagnosticsModeMatchingUUID:v14];
LABEL_7:
    v19 = firstObject;
    goto LABEL_8;
  }

  v18 = [store diagnosticsModeWithState:10];

  v16 = [v18 sortedArrayUsingSelector:"compareCollectionTimeLatestFirst:"];

  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:

  v20 = sub_100098A04();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v77 = 136315906;
      v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
      v79 = 2080;
      v80 = "W5DiagnosticsModeManager.m";
      v81 = 1024;
      v82 = 829;
      v83 = 2114;
      v84 = v19;
      LODWORD(v71) = 38;
      v69 = &v77;
      _os_log_send_and_compose_impl();
    }

    peers = [(NSError *)v19 peers];
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID = [localPeer peerID];
    v25 = sub_10009161C(peers, peerID);

    if (v25)
    {
      v73 = v14;
      role = [v25 role];
      v27 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
      v75 = nameCopy;
      v28 = [v27 URLByAppendingPathComponent:nameCopy];

      v29 = [(NSError *)modeCopy objectForKeyedSubscript:@"Compress"];
      bOOLValue = [v29 BOOLValue];

      HIDWORD(v71) = bOOLValue;
      if (bOOLValue)
      {
        uRLByDeletingPathExtension = [(NSError *)v28 URLByDeletingPathExtension];

        v28 = uRLByDeletingPathExtension;
      }

      v74 = modeCopy;
      v32 = [NSFileManager defaultManager:v69];
      path = [(NSError *)v28 path];
      [v32 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

      v34 = [(NSError *)v28 URLByAppendingPathComponent:@"status.txt"];
      [(W5DiagnosticsModeManager *)self __writePeerStatusToFile:v34];

      v35 = [(NSError *)v28 URLByAppendingPathComponent:@"diagnostic_mode.txt"];
      [(W5DiagnosticsModeManager *)self __writeDiagnosticModeToFile:v19 file:v35];

      if ((role & 4) == 0 && self->_netUsageManager)
      {
        uuid = [(NSError *)v19 uuid];
        v37 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkUsage", uuid];
        v38 = [(NSError *)v28 URLByAppendingPathComponent:v37];

        uuid2 = [(NSError *)v19 uuid];
        [(W5DiagnosticsModeManager *)self __collectNetUsageFiles:v38 uuid:uuid2];
      }

      localStore = [(W5DiagnosticsModeManager *)self localStore];
      v41 = [localStore infoMatchingDiagnosticMode:v19];

      if (v41)
      {
        if ((role & 4) != 0)
        {
          v42 = sub_100098A04();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v77 = 136315650;
            v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
            v79 = 2080;
            v80 = "W5DiagnosticsModeManager.m";
            v81 = 1024;
            v82 = 869;
            LODWORD(v72) = 28;
            v70 = &v77;
            _os_log_send_and_compose_impl();
          }

          v43 = [(NSError *)v41 objectForKey:@"path"];
          [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:0 logCollectionPath:v43 outputDirectory:v28 maxWait:0];
        }

        v44 = sub_100098A04();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315650;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 876;
          LODWORD(v72) = 28;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v45 = [(NSError *)v41 objectForKey:@"diagnosticTestsRequestUUID"];
        v46 = [(NSError *)v41 objectForKey:@"TestOutputDirectory"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v45 logCollectionPath:v46 outputDirectory:v28 maxWait:240];

        v47 = sub_100098A04();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315650;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 882;
          LODWORD(v72) = 28;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v48 = [(NSError *)v41 objectForKey:@"analyticsCSVsRequestUUID"];
        v49 = [(NSError *)v41 objectForKey:@"analyticsCSVsOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v48 logCollectionPath:v49 outputDirectory:v28 maxWait:240];

        v50 = sub_100098A04();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315650;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 888;
          LODWORD(v72) = 28;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v51 = [(NSError *)v41 objectForKey:@"systemLogsRequestUUID"];
        v52 = [(NSError *)v41 objectForKey:@"systemLogsOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v51 logCollectionPath:v52 outputDirectory:v28 maxWait:240];

        v53 = sub_100098A04();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315650;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 894;
          LODWORD(v72) = 28;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v54 = [(NSError *)v41 objectForKey:@"networkInfoGenUUID"];
        [(W5DiagnosticsModeManager *)self __waitForLogRequestToComplete:v54 maxWait:100];

        v55 = [(NSError *)v41 objectForKey:@"networkInfoCollectUUID"];
        v56 = [(NSError *)v41 objectForKey:@"networkInfoOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:v55 logCollectionPath:v56 outputDirectory:v28 maxWait:180];

        v57 = sub_100098A04();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315650;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 901;
          LODWORD(v72) = 28;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v58 = [(NSError *)v41 objectForKey:@"tcpdumpOutputPath"];
        [(W5DiagnosticsModeManager *)self _archiveAndCollectLogs:0 logCollectionPath:v58 outputDirectory:v28 maxWait:0];
      }

      else
      {
        v58 = sub_100098A04();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136315906;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 908;
          v83 = 2112;
          v84 = v19;
          LODWORD(v72) = 38;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }
      }

      if (HIDWORD(v72))
      {
        v62 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
        v63 = [v62 URLByAppendingPathComponent:v75];

        v76 = 0;
        v64 = sub_100098A4C(v28, v63, &v76);
        v65 = v76;
        v66 = sub_100098A04();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 136316674;
          v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
          v79 = 2080;
          v80 = "W5DiagnosticsModeManager.m";
          v81 = 1024;
          v82 = 917;
          v83 = 2112;
          v84 = v28;
          v85 = 2112;
          v86 = v63;
          v87 = 1024;
          v88 = v64;
          v89 = 2112;
          v90 = v65;
          LODWORD(v72) = 64;
          v70 = &v77;
          _os_log_send_and_compose_impl();
        }

        v67 = v63;
      }

      else
      {
        v65 = 0;
        v67 = 0;
        v63 = v28;
      }

      [(NSError *)v19 setState:11, v70, v72];
      store2 = [(W5DiagnosticsModeManager *)self store];
      [store2 updateStoreWithDiagnosticsMode:v19];

      if (replyCopy)
      {
        replyCopy[2](replyCopy, v65, 0, v63);
      }

      v14 = v73;
    }

    else
    {
      v59 = sub_100098A04();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
        peers2 = [(NSError *)v19 peers];
        v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
        v79 = 2080;
        v77 = 136316162;
        v80 = "W5DiagnosticsModeManager.m";
        v81 = 1024;
        v82 = 834;
        v83 = 2112;
        v84 = localPeer2;
        v85 = 2114;
        v86 = peers2;
        _os_log_send_and_compose_impl();
      }

      if (!replyCopy)
      {
        v25 = 0;
        goto LABEL_53;
      }

      v74 = modeCopy;
      v75 = nameCopy;
      v91 = NSLocalizedFailureReasonErrorKey;
      v92 = @"W5NotPermittedErr";
      v28 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v41 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v28];
      replyCopy[2](replyCopy, v41, 0, 0);
    }

    modeCopy = v74;
LABEL_52:

    nameCopy = v75;
LABEL_53:

    goto LABEL_54;
  }

  if (v21)
  {
    v77 = 136315650;
    v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
    v79 = 2080;
    v80 = "W5DiagnosticsModeManager.m";
    v81 = 1024;
    v82 = 824;
    _os_log_send_and_compose_impl();
  }

  if (replyCopy)
  {
    v75 = nameCopy;
    v93 = NSLocalizedFailureReasonErrorKey;
    v94 = @"W5NotPermittedErr";
    v25 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v28 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v25];
    replyCopy[2](replyCopy, v28, 0, 0);
    goto LABEL_52;
  }

LABEL_54:
}

- (void)_archiveAndCollectLogs:(id)logs logCollectionPath:(id)path outputDirectory:(id)directory maxWait:(unint64_t)wait
{
  logsCopy = logs;
  pathCopy = path;
  directoryCopy = directory;
  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136316418;
    v28 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
    v29 = 2080;
    v30 = "W5DiagnosticsModeManager.m";
    v31 = 1024;
    v32 = 929;
    v33 = 2112;
    v34 = logsCopy;
    v35 = 2112;
    v36 = pathCopy;
    v37 = 2112;
    v38[0] = directoryCopy;
    _os_log_send_and_compose_impl();
  }

  if (logsCopy)
  {
    [(W5DiagnosticsModeManager *)self __waitForLogRequestToComplete:logsCopy maxWait:wait];
  }

  if (pathCopy)
  {
    lastPathComponent = [(NSError *)pathCopy lastPathComponent];
    v15 = [NSString stringWithFormat:@"%@.tgz", lastPathComponent];

    v16 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v17 = [v16 URLByAppendingPathComponent:v15];

    v26 = 0;
    sub_100098A4C(pathCopy, v17, &v26);
    v18 = v26;
    if (v18)
    {
      v19 = sub_100098A04();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136316162;
        v28 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
        v29 = 2080;
        v30 = "W5DiagnosticsModeManager.m";
        v31 = 1024;
        v32 = 940;
        v33 = 2112;
        v34 = pathCopy;
        v35 = 2112;
        v36 = v18;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      v21 = [directoryCopy URLByAppendingPathComponent:v15];
      v25 = 0;
      v22 = [v20 moveItemAtURL:v17 toURL:v21 error:&v25];
      v19 = v25;

      v23 = sub_100098A04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [directoryCopy URLByAppendingPathComponent:v15];
        v27 = 136316674;
        v28 = "[W5DiagnosticsModeManager _archiveAndCollectLogs:logCollectionPath:outputDirectory:maxWait:]";
        v29 = 2080;
        v30 = "W5DiagnosticsModeManager.m";
        v31 = 1024;
        v32 = 945;
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v24;
        v37 = 1024;
        LODWORD(v38[0]) = v22;
        WORD2(v38[0]) = 2112;
        *(v38 + 6) = v19;
        _os_log_send_and_compose_impl();
      }
    }
  }
}

- (BOOL)registerPeer:(id)peer role:(int64_t)role configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  peerCopy = peer;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[W5CloudStore sharedStore];
    registeredPeers = [v12 registeredPeers];
    _os_log_send_and_compose_impl();
  }

  v13 = [[W5DiagnosticsModePeer alloc] initWithRole:role peer:peerCopy];
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v15 = +[W5CloudStore sharedStore];
  v16 = [v15 registerDiagnosticModePeer:v13 configuration:configurationCopy error:error];

  return v16;
}

- (BOOL)unregisterPeer:(id)peer role:(int64_t)role error:(id *)error
{
  peerCopy = peer;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[W5CloudStore sharedStore];
    registeredPeers = [v9 registeredPeers];
    _os_log_send_and_compose_impl();
  }

  v10 = [[W5DiagnosticsModePeer alloc] initWithRole:role peer:peerCopy];
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v12 = +[W5CloudStore sharedStore];
  v13 = [v12 unregisterDiagnosticModePeer:v10 error:error];

  return v13;
}

- (void)__waitForLogRequestToComplete:(id)complete maxWait:(unint64_t)wait
{
  completeCopy = complete;
  if ([(W5LogManager *)self->_logManager isRequestActiveOrPending:completeCopy])
  {
    v7 = (wait / 0xA);
    if (v7)
    {
      v8 = 1;
      v9 = 10;
      while (1)
      {
        v10 = dispatch_semaphore_create(0);
        v11 = sub_100098A04();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v23 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
          v24 = 2080;
          v25 = "W5DiagnosticsModeManager.m";
          v26 = 1024;
          v27 = 974;
          v28 = 2048;
          v29 = 10;
          v30 = 2112;
          v31 = completeCopy;
          v32 = 2048;
          v33 = v8;
          LODWORD(v19) = 58;
          v18 = buf;
          _os_log_send_and_compose_impl();
        }

        v12 = dispatch_time(0, 10000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A050;
        block[3] = &unk_1000E1270;
        v13 = v10;
        v21 = v13;
        dispatch_after(v12, &_dispatch_main_q, block);
        v14 = dispatch_time(0, 80000000000);
        if (dispatch_semaphore_wait(v13, v14) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v23 = 0x4054000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
        }

        v15 = [(W5LogManager *)self->_logManager isRequestActiveOrPending:completeCopy, v18, v19];
        v16 = sub_100098A04();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if ((v15 & 1) == 0)
        {
          break;
        }

        if (v17)
        {
          *buf = 136316162;
          v23 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
          v24 = 2080;
          v25 = "W5DiagnosticsModeManager.m";
          v26 = 1024;
          v27 = 985;
          v28 = 2112;
          v29 = completeCopy;
          v30 = 2048;
          v31 = v9;
          LODWORD(v19) = 48;
          v18 = buf;
          _os_log_send_and_compose_impl();
        }

        ++v8;
        v9 += 10;
        if (v8 > v7)
        {
          goto LABEL_17;
        }
      }

      if (v17)
      {
        *buf = 136316162;
        v23 = "[W5DiagnosticsModeManager __waitForLogRequestToComplete:maxWait:]";
        v24 = 2080;
        v25 = "W5DiagnosticsModeManager.m";
        v26 = 1024;
        v27 = 982;
        v28 = 2112;
        v29 = completeCopy;
        v30 = 2048;
        v31 = v9;
        _os_log_send_and_compose_impl();
      }
    }
  }

LABEL_17:
}

- (void)__writePeerStatusToFile:(id)file
{
  fileCopy = file;
  statusManager = self->_statusManager;
  if (statusManager)
  {
    status = [(W5StatusManager *)statusManager status];
    if (!status)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        _os_log_send_and_compose_impl();
      }

LABEL_9:

      goto LABEL_10;
    }

    v7 = +[NSFileManager defaultManager];
    path = [fileCopy path];
    v9 = [status description];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v7 createFileAtPath:path contents:v10 attributes:0];

    if (v11)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    status = 0;
  }

LABEL_10:
}

- (void)__writeDiagnosticModeToFile:(id)file file:(id)a4
{
  fileCopy = file;
  v6 = a4;
  if (!fileCopy)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      _os_log_send_and_compose_impl();
    }

LABEL_7:

    goto LABEL_8;
  }

  v7 = +[NSFileManager defaultManager];
  path = [v6 path];
  v9 = [fileCopy description];
  v10 = [v9 dataUsingEncoding:4];
  v11 = [v7 createFileAtPath:path contents:v10 attributes:0];

  if (v11)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)__collectNetUsageFiles:(id)files uuid:(id)uuid
{
  filesCopy = files;
  uuidCopy = uuid;
  v8 = +[NSFileManager defaultManager];
  v24 = 0;
  v9 = [v8 createDirectoryAtURL:filesCopy withIntermediateDirectories:1 attributes:0 error:&v24];
  v10 = v24;

  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136316418;
    v26 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
    v27 = 2080;
    v28 = "W5DiagnosticsModeManager.m";
    v29 = 1024;
    v30 = 1028;
    v31 = 2112;
    v32 = filesCopy;
    v33 = 1024;
    *v34 = v9;
    *&v34[4] = 2112;
    *&v34[6] = v10;
    _os_log_send_and_compose_impl();
  }

  if (v9)
  {
    v12 = [(W5NetUsageManager *)self->_netUsageManager calculateUsageDelta:uuidCopy];
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315650;
      v26 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v27 = 2080;
      v28 = "W5DiagnosticsModeManager.m";
      v29 = 1024;
      v30 = 1032;
      _os_log_send_and_compose_impl();
    }

    v14 = [filesCopy URLByAppendingPathComponent:@"netusage_delta.csv"];
    [W5NetUsageManager writeProcNetUsage:v12 ToFile:v14];

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315650;
      v26 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v27 = 2080;
      v28 = "W5DiagnosticsModeManager.m";
      v29 = 1024;
      v30 = 1035;
      _os_log_send_and_compose_impl();
    }

    [W5NetUsageManager copyPeriodicNetUsageToDir:filesCopy uuid:uuidCopy];
    filesCopy = [NSString stringWithFormat:@"%@.tgz", filesCopy];
    v17 = [NSURL URLWithString:filesCopy];

    v23 = v10;
    v18 = sub_100098A4C(filesCopy, v17, &v23);
    v19 = v23;

    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136316674;
      v26 = "[W5DiagnosticsModeManager __collectNetUsageFiles:uuid:]";
      v27 = 2080;
      v28 = "W5DiagnosticsModeManager.m";
      v29 = 1024;
      v30 = 1040;
      v31 = 2112;
      v32 = filesCopy;
      v33 = 2112;
      *v34 = v17;
      *&v34[8] = 1024;
      *&v34[10] = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_send_and_compose_impl();
    }

    if (v18)
    {
      v21 = +[NSFileManager defaultManager];
      path = [filesCopy path];
      [v21 removeItemAtPath:path error:0];
    }
  }

  else
  {
    v19 = v10;
  }
}

- (void)handlePeerFaultEvent:(id)event
{
  eventCopy = event;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315906;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1047;
    v91 = 2114;
    v92 = eventCopy;
    LODWORD(v69) = 38;
    v68 = &v85;
    _os_log_send_and_compose_impl();
  }

  info = [eventCopy info];
  v7 = [info objectForKeyedSubscript:@"RemoteListener"];

  peer = [eventCopy peer];
  peerID = [peer peerID];

  if (peerID)
  {
    localPeer = [(W5DiagnosticsModeManager *)self localPeer];
    peerID2 = [localPeer peerID];
    v12 = [peerID isEqualToString:peerID2];

    if (!v12)
    {
      info2 = [eventCopy info];
      v17 = [info2 objectForKey:@"DiagnosticMode"];

      if (v17)
      {
        v31 = sub_100098A04();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          peer2 = [eventCopy peer];
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v85 = 136316162;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1103;
          v91 = 2112;
          v92 = v17;
          v93 = 2114;
          v94 = peer2;
          LODWORD(v69) = 48;
          v68 = &v85;
          _os_log_send_and_compose_impl();
        }

        v33 = [W5DiagnosticsModePeer alloc];
        localPeer2 = [(W5DiagnosticsModeManager *)self localPeer];
        v35 = [v33 initWithRole:8 peer:localPeer2];

        peers = [v17 peers];
        v37 = sub_100091470(peers, v35, 8);

        if (!v37)
        {
LABEL_60:

          goto LABEL_68;
        }

        v70 = v35;
        v71 = v7;
        info3 = [eventCopy info];
        v39 = [info3 objectForKeyedSubscript:@"FaultType"];
        integerValue = [v39 integerValue];

        info4 = [v17 info];
        v42 = [info4 objectForKeyedSubscript:@"Faults"];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v43 = v42;
        v44 = [v43 countByEnumeratingWithState:&v72 objects:v83 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v73;
          while (2)
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v73 != v46)
              {
                objc_enumerationMutation(v43);
              }

              if ([*(*(&v72 + 1) + 8 * i) integerValue] == integerValue)
              {

                v65 = sub_100098A04();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = 136315650;
                  v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
                  v87 = 2080;
                  v88 = "W5DiagnosticsModeManager.m";
                  v89 = 1024;
                  v90 = 1131;
                  _os_log_send_and_compose_impl();
                }

                v35 = v70;
                if (self->_userNotificationManager)
                {
                  [(W5DiagnosticsModeManager *)self _showSuggestedStopNotificationForEvent:eventCopy];
                  v7 = v71;
                }

                else
                {
                  v66 = sub_100098A04();
                  v7 = v71;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = 136315650;
                    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
                    v87 = 2080;
                    v88 = "W5DiagnosticsModeManager.m";
                    v89 = 1024;
                    v90 = 1138;
                    _os_log_send_and_compose_impl();
                  }
                }

                goto LABEL_60;
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v72 objects:v83 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v48 = sub_100098A04();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v85 = 136316162;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1127;
          v91 = 2048;
          v92 = integerValue;
          v93 = 2114;
          v94 = v43;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_48;
      }

      localPeer3 = [(W5DiagnosticsModeManager *)self localPeer];
      peerID3 = [localPeer3 peerID];
      v55 = [v7 isEqualToString:peerID3];

      v56 = sub_100098A04();
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (!v55)
      {
        if (v57)
        {
          v85 = 136315906;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1158;
          v91 = 2114;
          v92 = eventCopy;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_67;
      }

      if (v57)
      {
        v85 = 136315650;
        v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
        v87 = 2080;
        v88 = "W5DiagnosticsModeManager.m";
        v89 = 1024;
        v90 = 1145;
        _os_log_send_and_compose_impl();
      }

      if (self->_userNotificationManager)
      {
        info5 = [eventCopy info];
        v59 = [info5 objectForKeyedSubscript:@"FaultType"];
        v60 = -[W5DiagnosticsModeManager _isFaultSupported:](self, "_isFaultSupported:", [v59 integerValue]);

        if (v60)
        {
          [(W5DiagnosticsModeManager *)self _showSuggestedStartNotificationForEvent:eventCopy];
LABEL_67:
          v17 = 0;
          goto LABEL_68;
        }

        v67 = sub_100098A04();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136315906;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1149;
          v91 = 2114;
          v92 = eventCopy;
          goto LABEL_65;
        }
      }

      else
      {
        v67 = sub_100098A04();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136315650;
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1153;
LABEL_65:
          _os_log_send_and_compose_impl();
        }
      }

      goto LABEL_67;
    }
  }

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315650;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1053;
    LODWORD(v69) = 28;
    v68 = &v85;
    _os_log_send_and_compose_impl();
  }

  store = [(W5DiagnosticsModeManager *)self store];
  localPeer4 = [(W5DiagnosticsModeManager *)self localPeer];
  peerID4 = [localPeer4 peerID];
  v17 = [store diagnosticsModeMatchingPeerID:peerID4 state:3 role:1];

  if ([v17 count])
  {
    v71 = v7;
    firstObject = [v17 firstObject];
    info6 = [eventCopy info];
    v20 = [info6 objectForKeyedSubscript:@"FaultType"];
    integerValue2 = [v20 integerValue];

    info7 = [firstObject info];
    v23 = [info7 objectForKeyedSubscript:@"Faults"];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v80;
      while (2)
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v79 + 1) + 8 * j) integerValue] == integerValue2)
          {

            [firstObject setState:4];
            info8 = [firstObject info];
            if (info8)
            {
              info9 = [firstObject info];
              v51 = [info9 mutableCopy];
            }

            else
            {
              v51 = +[NSMutableDictionary dictionary];
            }

            v61 = [NSNumber numberWithInteger:integerValue2];
            v84 = v61;
            v62 = [NSArray arrayWithObjects:&v84 count:1];
            [v51 setObject:v62 forKeyedSubscript:@"DetectedFaults"];

            [firstObject setInfo:v51];
            store2 = [(W5DiagnosticsModeManager *)self store];
            [store2 updateStoreWithDiagnosticsMode:firstObject];

            uuid = [firstObject uuid];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_10000B69C;
            v76[3] = &unk_1000E1298;
            v76[4] = self;
            v77 = eventCopy;
            v78 = firstObject;
            [(W5DiagnosticsModeManager *)self stopDiagnosticsModeWithUUID:uuid info:&__NSDictionary0__struct reply:v76];

            goto LABEL_47;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
      v87 = 2080;
      v85 = 136316162;
      v88 = "W5DiagnosticsModeManager.m";
      v89 = 1024;
      v90 = 1073;
      v91 = 2048;
      v92 = integerValue2;
      v93 = 2114;
      v94 = v24;
      _os_log_send_and_compose_impl();
    }

    [(W5DiagnosticsModeManager *)self _notifyPeers:eventCopy info:0];
LABEL_47:

LABEL_48:
    v7 = v71;
    goto LABEL_68;
  }

  v52 = sub_100098A04();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 136315650;
    v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeManager.m";
    v89 = 1024;
    v90 = 1093;
    _os_log_send_and_compose_impl();
  }

  [(W5DiagnosticsModeManager *)self _notifyPeers:eventCopy info:0];
LABEL_68:
}

- (BOOL)_isFaultSupported:(int64_t)supported
{
  v4 = [&off_1000F34E0 objectAtIndex:0];
  integerValue = [v4 integerValue];

  if (integerValue == supported)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 3)
    {
      break;
    }

    ++v7;
    v9 = [&off_1000F34E0 objectAtIndex:v8 + 1];
    integerValue2 = [v9 integerValue];
  }

  while (integerValue2 != supported);
  return v8 < 3;
}

- (void)_notifyPeers:(id)peers info:(id)info
{
  peersCopy = peers;
  infoCopy = info;
  faultEventManager = self->_faultEventManager;
  v9 = sub_100098A04();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (faultEventManager)
  {
    if (v10)
    {
      _os_log_send_and_compose_impl();
    }

    [(W5FaultEventManager *)self->_faultEventManager notifyPeersWithFaultEvent:peersCopy info:infoCopy];
  }

  else
  {
    if (v10)
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (void)_showSuggestedStartNotificationForEvent:(id)event
{
  eventCopy = event;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:2])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    info = [eventCopy info];
    v6 = [info objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Detected", v7];

    peer = [eventCopy peer];
    name = [peer name];
    if (name)
    {
      peer2 = [eventCopy peer];
      name2 = [peer2 name];
    }

    else
    {
      name2 = @"Your device";
    }

    peer3 = [eventCopy peer];
    peerID = [peer3 peerID];
    v15 = [NSString stringWithFormat:@"wifiapp://startDiagnostics?peerID=%@", peerID];
    v16 = [NSURL URLWithString:v15];

    userNotificationManager = self->_userNotificationManager;
    v18 = [NSString stringWithFormat:@"%@ has detected an issue. Tap here to help diagnose the issue.", name2];
    stopNotificationUUID = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v18 type:3 UUID:stopNotificationUUID actionURL:v16];
  }
}

- (void)_showSuggestedStopNotificationForEvent:(id)event
{
  eventCopy = event;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:3])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    info = [eventCopy info];
    v6 = [info objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Diagnostics Complete", v7];

    peer = [eventCopy peer];
    name = [peer name];
    if (name)
    {
      peer2 = [eventCopy peer];
      name2 = [peer2 name];
    }

    else
    {
      name2 = @"Your device";
    }

    info2 = [eventCopy info];
    v14 = [info2 objectForKeyedSubscript:@"DiagnosticMode"];
    uuid = [v14 uuid];

    peer3 = [eventCopy peer];
    peerID = [peer3 peerID];
    uUIDString = [uuid UUIDString];
    v19 = [NSString stringWithFormat:@"wifiapp://endDiagnostics?peerID=%@&dmUUID=%@", peerID, uUIDString];
    v20 = [NSURL URLWithString:v19];

    userNotificationManager = self->_userNotificationManager;
    v22 = [NSString stringWithFormat:@"%@ has detected the issue again and has completed diagnostics. Tap here to file a radar.", name2];
    stopNotificationUUID = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v22 type:3 UUID:stopNotificationUUID actionURL:v20];
  }
}

- (BOOL)_shouldShowNotification:(int64_t)notification
{
  v5 = +[NSDate date];
  v6 = 300.0;
  if (notification != 3)
  {
    v6 = 0.0;
  }

  if (notification == 2)
  {
    v7 = 900.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = +[W5CloudStore sharedStore];
  peerID = [(W5Peer *)self->_localPeer peerID];
  v10 = [v8 getMinNotificationInterval:peerID notificationType:notification];

  if (v10)
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1239;
      v37 = 2112;
      v38 = v10;
      LODWORD(v29) = 38;
      v27 = &v31;
      _os_log_send_and_compose_impl();
    }

    [v10 doubleValue];
    v7 = v12;
  }

  v13 = [NSUserDefaults standardUserDefaults:v27];
  v14 = [v13 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  if (notification == 2)
  {
    v15 = @"MinStartNotificationInterval";
  }

  else
  {
    if (notification != 3)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v15 = @"MinStopNotificationInterval";
  }

  v16 = [v14 objectForKey:v15];
  if (v16)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1259;
      v37 = 2112;
      v38 = v16;
      LODWORD(v30) = 38;
      v28 = &v31;
      _os_log_send_and_compose_impl();
    }

    [v16 doubleValue];
    v7 = v18;
  }

LABEL_19:
  v19 = [NSNumber numberWithInteger:notification, v28, v30];
  lastNotificationTimestamp = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
  v21 = [lastNotificationTimestamp objectForKey:v19];

  if (v21)
  {
    [v5 timeIntervalSinceDate:v21];
    v23 = v22 > v7;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136316674;
    v32 = "[W5DiagnosticsModeManager _shouldShowNotification:]";
    v33 = 2080;
    v34 = "W5DiagnosticsModeManager.m";
    v35 = 1024;
    v36 = 1269;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v21;
    v41 = 2048;
    v42 = v7;
    v43 = 1024;
    v44 = v23;
    _os_log_send_and_compose_impl();
  }

  if (v23)
  {
    lastNotificationTimestamp2 = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
    [lastNotificationTimestamp2 setObject:v5 forKeyedSubscript:v19];
  }

  return v23;
}

- (void)_runDiagnosticsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-WiFiDETestsAtFault", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:55 configuration:0];
  v30 = v10;
  v11 = [NSArray arrayWithObjects:&v30 count:1];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v11];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v12 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v12];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _runDiagnosticsForDiagnosticMode:]";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1287;
    v28 = 2112;
    v29 = v9;
    _os_log_send_and_compose_impl();
  }

  v15 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v16 = [v15 URLByAppendingPathComponent:v7];

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _runDiagnosticsForDiagnosticMode:]";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1290;
    v28 = 2114;
    v29 = v16;
    _os_log_send_and_compose_impl();
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v20[0] = @"diagnosticTestsRequestUUID";
  v20[1] = @"TestOutputDirectory";
  v21[0] = v8;
  v21[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [localStore addToStore:modeCopy newInfo:v19];
}

- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-AnalyticsCSVs", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:85 configuration:&off_1000F2018];
  v32[0] = v10;
  v11 = [W5LogItemRequest requestWithItemID:84 configuration:&off_1000F2040];
  v32[1] = v11;
  v12 = [W5LogItemRequest requestWithItemID:88 configuration:&off_1000F2068];
  v32[2] = v12;
  v13 = [NSArray arrayWithObjects:v32 count:3];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v13];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v14 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v14];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v16 = sub_100098A04();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _collectAnalyticsCSVsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1315;
    v30 = 2112;
    v31 = v9;
    _os_log_send_and_compose_impl();
  }

  v17 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v18 = [v17 URLByAppendingPathComponent:v7];

  v19 = sub_100098A04();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315906;
    v25 = "[W5DiagnosticsModeManager _collectAnalyticsCSVsForDiagnosticMode:]";
    v26 = 2080;
    v27 = "W5DiagnosticsModeManager.m";
    v28 = 1024;
    v29 = 1318;
    v30 = 2114;
    v31 = v18;
    _os_log_send_and_compose_impl();
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v22[0] = @"analyticsCSVsRequestUUID";
  v22[1] = @"analyticsCSVsOutputPath";
  v23[0] = v8;
  v23[1] = v18;
  v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [localStore addToStore:modeCopy newInfo:v21];
}

- (void)_collectSystemLogsForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-SystemLogs", uUIDString];

  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v9 setUuid:v8];
  v10 = [W5LogItemRequest requestWithItemID:31 configuration:&off_1000F2090];
  v30 = v10;
  v11 = [NSArray arrayWithObjects:&v30 count:1];
  [(W5LogItemRequestInternal *)v9 setItemRequests:v11];

  [(W5LogItemRequestInternal *)v9 setFilename:v7];
  v12 = +[NSDate date];
  [(W5LogItemRequestInternal *)v9 setAddedAt:v12];

  logManager = [(W5DiagnosticsModeManager *)self logManager];
  [logManager addRequest:v9];

  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _collectSystemLogsForDiagnosticMode:]";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1337;
    v28 = 2112;
    v29 = v9;
    _os_log_send_and_compose_impl();
  }

  v15 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v16 = [v15 URLByAppendingPathComponent:v7];

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _collectSystemLogsForDiagnosticMode:]";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1340;
    v28 = 2114;
    v29 = v16;
    _os_log_send_and_compose_impl();
  }

  localStore = [(W5DiagnosticsModeManager *)self localStore];
  v20[0] = @"systemLogsRequestUUID";
  v20[1] = @"systemLogsOutputPath";
  v21[0] = v8;
  v21[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [localStore addToStore:modeCopy newInfo:v19];
}

- (void)_collectNetworkInfoForDiagnosticMode:(id)mode
{
  modeCopy = mode;
  uuid = [modeCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkInfo", uUIDString];

  v8 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v9 = [v8 URLByAppendingPathComponent:v7];

  v10 = +[NSFileManager defaultManager];
  path = [(W5LogItemRequestInternal *)v9 path];
  v12 = [v10 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  if (v12)
  {
    v13 = +[NSUUID UUID];
    v14 = objc_alloc_init(W5LogItemRequestInternal);
    [(W5LogItemRequestInternal *)v14 setUuid:v13];
    v15 = [W5LogItemRequest requestWithItemID:89 configuration:&off_1000F20B8];
    v39[0] = v15;
    v16 = [W5LogItemRequest requestWithItemID:91 configuration:&off_1000F20E0];
    v39[1] = v16;
    v17 = [W5LogItemRequest requestWithItemID:92 configuration:0];
    v39[2] = v17;
    v18 = [NSArray arrayWithObjects:v39 count:3];
    [(W5LogItemRequestInternal *)v14 setItemRequests:v18];

    [(W5LogItemRequestInternal *)v14 setFilename:v7];
    v19 = +[NSDate date];
    [(W5LogItemRequestInternal *)v14 setAddedAt:v19];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000D1C8;
    v25[3] = &unk_1000E12C0;
    v26 = v7;
    selfCopy = self;
    v20 = modeCopy;
    v28 = v20;
    [(W5LogItemRequestInternal *)v14 setReply:v25];
    logManager = [(W5DiagnosticsModeManager *)self logManager];
    [logManager addRequest:v14];

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1385;
      v37 = 2112;
      v38 = v14;
      _os_log_send_and_compose_impl();
    }

    localStore = [(W5DiagnosticsModeManager *)self localStore];
    v29[0] = @"networkInfoGenUUID";
    v29[1] = @"networkInfoOutputPath";
    v30[0] = v13;
    v30[1] = v9;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    [localStore addToStore:v20 newInfo:v24];
  }

  else
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]";
      v33 = 2080;
      v34 = "W5DiagnosticsModeManager.m";
      v35 = 1024;
      v36 = 1392;
      v37 = 2112;
      v38 = v9;
      _os_log_send_and_compose_impl();
    }
  }
}

- (NSArray)registeredPeers
{
  v2 = +[W5CloudStore sharedStore];
  registeredPeers = [v2 registeredPeers];

  return registeredPeers;
}

- (int64_t)registeredRoleForPeer:(id)peer
{
  peerCopy = peer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  registeredPeers = [(W5DiagnosticsModeManager *)self registeredPeers];
  role = [registeredPeers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (role)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != role; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(registeredPeers);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        peer = [v9 peer];
        peerID = [peer peerID];
        peerID2 = [peerCopy peerID];
        v13 = [peerID isEqualToString:peerID2];

        if (v13)
        {
          role = [v9 role];
          goto LABEL_11;
        }
      }

      role = [registeredPeers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (role)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return role;
}

- (NSArray)activeDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  v3 = [store diagnosticsModeWithState:3];

  return v3;
}

- (id)finishedDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  v3 = [store diagnosticsModeWithState:11];

  return v3;
}

- (NSArray)allDiagnostics
{
  store = [(W5DiagnosticsModeManager *)self store];
  diagnostics = [store diagnostics];
  allObjects = [diagnostics allObjects];

  return allObjects;
}

- (void)_finishedProcessingDiagnosticMode:(id)mode
{
  modeCopy = mode;
  store = [(W5DiagnosticsModeManager *)self store];
  [store updateStoreWithDiagnosticsMode:modeCopy];
}

@end