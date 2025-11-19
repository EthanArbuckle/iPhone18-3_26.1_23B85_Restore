@interface W5DiagnosticsModeManager
- (BOOL)_isFaultSupported:(int64_t)a3;
- (BOOL)_shouldShowNotification:(int64_t)a3;
- (BOOL)registerPeer:(id)a3 role:(int64_t)a4 configuration:(id)a5 error:(id *)a6;
- (BOOL)unregisterPeer:(id)a3 role:(int64_t)a4 error:(id *)a5;
- (NSArray)activeDiagnostics;
- (NSArray)allDiagnostics;
- (NSArray)registeredPeers;
- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)a3 peerManager:(id)a4 userNotificationManager:(id)a5 snifferManager:(id)a6 statusManager:(id)a7 logManager:(id)a8;
- (id)_actionHandler;
- (id)finishedDiagnostics;
- (int64_t)registeredRoleForPeer:(id)a3;
- (void)__collectNetUsageFiles:(id)a3 uuid:(id)a4;
- (void)__waitForLogRequestToComplete:(id)a3 maxWait:(unint64_t)a4;
- (void)__writeDiagnosticModeToFile:(id)a3 file:(id)a4;
- (void)__writePeerStatusToFile:(id)a3;
- (void)_archiveAndCollectLogs:(id)a3 logCollectionPath:(id)a4 outputDirectory:(id)a5 maxWait:(unint64_t)a6;
- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)a3;
- (void)_collectNetworkInfoForDiagnosticMode:(id)a3;
- (void)_collectSystemLogsForDiagnosticMode:(id)a3;
- (void)_finishedProcessingDiagnosticMode:(id)a3;
- (void)_notifyPeers:(id)a3 info:(id)a4;
- (void)_queryDebugConfigurationForPeer:(id)a3 reply:(id)a4;
- (void)_runDiagnosticsForDiagnosticMode:(id)a3;
- (void)_showSuggestedStartNotificationForEvent:(id)a3;
- (void)_showSuggestedStopNotificationForEvent:(id)a3;
- (void)_startDiagnosticsModeWithConfiguration:(id)a3 currentPeer:(id)a4 reply:(id)a5;
- (void)_stopDiagnosticsMode:(id)a3 currentPeer:(id)a4 info:(id)a5 reply:(id)a6;
- (void)_storeSnifferInfo:(id)a3 peer:(id)a4 uuid:(id)a5 path:(id)a6;
- (void)_updateDiagnosticsMode:(id)a3 incomingMode:(id)a4 currentPeer:(id)a5 reply:(id)a6;
- (void)collectLogsDiagnosticMode:(id)a3 outputName:(id)a4 reply:(id)a5;
- (void)handlePeerFaultEvent:(id)a3;
- (void)startDiagnosticsModeWithConfiguration:(id)a3 reply:(id)a4;
- (void)stopDiagnosticsModeWithUUID:(id)a3 info:(id)a4 reply:(id)a5;
- (void)updateDiagnosticsMode:(id)a3 reply:(id)a4;
@end

@implementation W5DiagnosticsModeManager

- (W5DiagnosticsModeManager)initWithNetUsageManager:(id)a3 peerManager:(id)a4 userNotificationManager:(id)a5 snifferManager:(id)a6 statusManager:(id)a7 logManager:(id)a8
{
  v34 = a3;
  v15 = a4;
  v33 = a5;
  v16 = a6;
  v32 = a7;
  v17 = a8;
  v35.receiver = self;
  v35.super_class = W5DiagnosticsModeManager;
  v18 = [(W5DiagnosticsModeManager *)&v35 init];
  objc_storeStrong(&v18->_netUsageManager, a3);
  if (v15 && (objc_storeStrong(&v18->_peerManager, a4), v16))
  {
    objc_storeStrong(&v18->_snifferManager, a6);
    v20 = v32;
    v19 = v33;
    if (v17)
    {
      objc_storeStrong(&v18->_logManager, a8);
      objc_storeStrong(&v18->_userNotificationManager, a5);
      objc_storeStrong(&v18->_statusManager, a7);
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

    v30 = v34;
  }

  else
  {
    faultEventManager = v18;
    v18 = 0;
    v19 = v33;
    v30 = v34;
    v20 = v32;
  }

  return v18;
}

- (void)startDiagnosticsModeWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v29 = v6;
    _os_log_send_and_compose_impl();
  }

  v9 = [v6 objectForKeyedSubscript:@"Peers"];
  if (v9)
  {
    v10 = [(W5DiagnosticsModeManager *)self localPeer];
    v11 = [v10 peerID];
    v12 = sub_10009161C(v9, v11);

    if (v12)
    {
      [(W5DiagnosticsModeManager *)self _startDiagnosticsModeWithConfiguration:v6 currentPeer:v12 reply:v7];
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
      v7[2](v7, 0, v17);

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
      v29 = v6;
      _os_log_send_and_compose_impl();
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"W5ParamErr";
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v12];
    v7[2](v7, 0, v14);
  }
}

- (void)_startDiagnosticsModeWithConfiguration:(id)a3 currentPeer:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315394;
    *&v24[4] = "[W5DiagnosticsModeManager _startDiagnosticsModeWithConfiguration:currentPeer:reply:]";
    *&v24[12] = 2114;
    *&v24[14] = v8;
    _os_log_send_and_compose_impl();
  }

  v12 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:v9];
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
    v15 = [(W5DiagnosticsModeManager *)self _actionHandler];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100002E60;
    v18[3] = &unk_1000E1000;
    v22 = v10;
    v19 = v9;
    v20 = self;
    v21 = v12;
    v23 = v24;
    [(W5DiagnosticsModeProcessor *)v21 performStartOperationsWithConfiguration:v8 handler:v15 completion:v18];

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = @"W5InternalErr";
    v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v16];
    (*(v10 + 2))(v10, 0, v17);
  }
}

- (void)stopDiagnosticsModeWithUUID:(id)a3 info:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"Peer"];
  v12 = [(W5DiagnosticsModeManager *)self store];
  v13 = [v12 diagnosticsModeMatchingUUID:v8];

  if (!(v13 | v11))
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "[W5DiagnosticsModeManager stopDiagnosticsModeWithUUID:info:reply:]";
      v34 = 2114;
      v35 = v8;
      _os_log_send_and_compose_impl();
    }

    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = @"W5ParamErr";
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];
    v10[2](v10, v21);

    goto LABEL_11;
  }

  if (v13)
  {
    v14 = [v13 peers];
    v15 = [(W5DiagnosticsModeManager *)self localPeer];
    v16 = [v15 peerID];
    v17 = sub_10009161C(v14, v16);

    v18 = [W5DiagnosticsModePeer alloc];
    if (v17)
    {
      v19 = [v17 role];
    }

    else
    {
      v19 = 8;
    }

    v22 = [(W5DiagnosticsModeManager *)self localPeer];
    v23 = [v18 initWithRole:v19 peer:v22];

    [(W5DiagnosticsModeManager *)self _stopDiagnosticsMode:v13 currentPeer:v23 info:v9 reply:v10];
LABEL_11:

    goto LABEL_12;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003410;
  v24[3] = &unk_1000E1028;
  v25 = v8;
  v26 = self;
  v27 = v9;
  v29 = v10;
  v28 = v11;
  [(W5DiagnosticsModeManager *)self _queryDebugConfigurationForPeer:v28 reply:v24];

LABEL_12:
}

- (void)_stopDiagnosticsMode:(id)a3 currentPeer:(id)a4 info:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 136315394;
    *&v27[4] = "[W5DiagnosticsModeManager _stopDiagnosticsMode:currentPeer:info:reply:]";
    *&v27[12] = 2114;
    *&v27[14] = v10;
    _os_log_send_and_compose_impl();
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:v11];
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
    v18 = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100003B3C;
    v21[3] = &unk_1000E1000;
    v25 = v13;
    v22 = v11;
    v23 = self;
    v24 = v15;
    v26 = v27;
    [(W5DiagnosticsModeProcessor *)v24 performStopOperationsForMode:v10 handler:v18 completion:v21];

    _Block_object_dispose(v27, 8);
  }

  else
  {
    v31 = NSLocalizedFailureReasonErrorKey;
    v32 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(v13 + 2))(v13, v20);
  }
}

- (void)_queryDebugConfigurationForPeer:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [W5PeerDebugConfigurationRequest alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003EF4;
  v13[3] = &unk_1000E1050;
  v9 = v6;
  v14 = v9;
  v10 = [(W5PeerDebugConfigurationRequest *)v8 initWithPeer:v7 type:1 debugConfiguration:0 reply:v13];

  v11 = [(W5PeerManager *)self->_peerManager sendDebugConfigurationForPeerWithRequest:v10];
  v12 = v11;
  if (v9 && v11)
  {
    (*(v9 + 2))(v9, 0, v11);
  }
}

- (void)updateDiagnosticsMode:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v66 = v6;
    LODWORD(v45) = 48;
    v44 = &v57;
    _os_log_send_and_compose_impl();
  }

  if (v6)
  {
    v9 = [v6 peers];
    v10 = [(W5DiagnosticsModeManager *)self localPeer];
    v11 = [v10 peerID];
    v12 = sub_10009161C(v9, v11);

    if (!v12)
    {
      v34 = sub_100098A04();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v6 peers];
        v57 = 136315906;
        v58 = "[W5DiagnosticsModeManager updateDiagnosticsMode:reply:]";
        v59 = 2080;
        v60 = "W5DiagnosticsModeManager.m";
        v61 = 1024;
        v62 = 319;
        v63 = 2114;
        v64 = v35;
        _os_log_send_and_compose_impl();
      }

      v70 = NSLocalizedFailureReasonErrorKey;
      v71 = @"W5ParamErr";
      v22 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v23 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v22];
      v7[2](v7, v23);
      goto LABEL_35;
    }

    v46 = v7;
    v47 = v6;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v48 = self;
    v13 = [(W5DiagnosticsModeManager *)self activeDiagnostics];
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v69 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v51 + 1) + 8 * v17);
        v19 = [v18 peers];
        v20 = [v12 peer];
        v21 = [v20 peerID];
        v22 = sub_10009161C(v19, v21);

        if (v22)
        {
          if (([v22 role] & 1) != 0 || (objc_msgSend(v22, "role") & 2) != 0)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v51 objects:v69 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v23 = v18;

      v25 = [v23 uuid];
      v6 = v47;
      v26 = [v47 uuid];
      v27 = [v25 isEqual:v26];

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

      v37 = [v22 peer];
      v38 = [v37 name];
      [v22 peer];
      v40 = v39 = v23;
      v41 = [v40 peerID];
      v42 = [v39 uuid];
      v30 = [NSString stringWithFormat:@"Device ('%@ - %@') is already in active diagnostics (UUID='%@')", v38, v41, v42];

      v23 = v39;
      v55 = NSLocalizedFailureReasonErrorKey;
      v56 = @"W5NotPermittedErr";
      v32 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v43 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v32];
      v7 = v46;
      v46[2](v46, v43);

      goto LABEL_34;
    }

LABEL_15:

    v22 = 0;
    v23 = 0;
    v6 = v47;
LABEL_20:
    v28 = [(W5DiagnosticsModeManager *)v48 store:v44];
    v29 = [v6 uuid];
    v30 = [v28 diagnosticsModeMatchingUUID:v29];

    v7 = v46;
    if (v30)
    {
      v31 = [v30 state];
      v32 = sub_100098A04();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31 == 10)
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
    [(W5DiagnosticsModeManager *)v48 _updateDiagnosticsMode:v30 incomingMode:v6 currentPeer:v12 reply:v49];
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
  v7[2](v7, v22);
LABEL_36:
}

- (void)_updateDiagnosticsMode:(id)a3 incomingMode:(id)a4 currentPeer:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315394;
    *&v25[4] = "[W5DiagnosticsModeManager _updateDiagnosticsMode:incomingMode:currentPeer:reply:]";
    *&v25[12] = 2114;
    *&v25[14] = v11;
    _os_log_send_and_compose_impl();
  }

  v15 = [[W5DiagnosticsModeProcessor alloc] initWithCurrentPeer:v12];
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
    v18 = [(W5DiagnosticsModeManager *)self _actionHandler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004B90;
    v21[3] = &unk_1000E10C8;
    v23 = v13;
    v21[4] = self;
    v22 = v15;
    v24 = v25;
    [(W5DiagnosticsModeProcessor *)v22 performUpdateOperationsForMode:v10 incomingMode:v11 handler:v18 completion:v21];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"W5InternalErr";
    v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v19];
    (*(v13 + 2))(v13, v20);
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

- (void)_storeSnifferInfo:(id)a3 peer:(id)a4 uuid:(id)a5 path:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 info];
  [v14 setObject:v11 forKey:@"UUID"];

  v15 = [v12 info];

  [v15 setObject:v10 forKey:@"path"];
  v16 = [(W5DiagnosticsModeManager *)self localStore];
  v18[0] = @"UUID";
  v18[1] = @"path";
  v19[0] = v11;
  v19[1] = v10;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  [v16 addToStore:v13 newInfo:v17];
}

- (void)collectLogsDiagnosticMode:(id)a3 outputName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v84 = v8;
    LODWORD(v71) = 38;
    v69 = &v77;
    _os_log_send_and_compose_impl();
  }

  v12 = [NSUUID alloc];
  v13 = [(NSError *)v8 objectForKey:@"DiagnosticsModeUUID"];
  v14 = [v12 initWithUUIDString:v13];

  v15 = [(W5DiagnosticsModeManager *)self store];
  v16 = v15;
  if (v14)
  {
    v17 = [v15 diagnosticsModeMatchingUUID:v14];
LABEL_7:
    v19 = v17;
    goto LABEL_8;
  }

  v18 = [v15 diagnosticsModeWithState:10];

  v16 = [v18 sortedArrayUsingSelector:"compareCollectionTimeLatestFirst:"];

  if ([v16 count])
  {
    v17 = [v16 firstObject];
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

    v22 = [(NSError *)v19 peers];
    v23 = [(W5DiagnosticsModeManager *)self localPeer];
    v24 = [v23 peerID];
    v25 = sub_10009161C(v22, v24);

    if (v25)
    {
      v73 = v14;
      v26 = [v25 role];
      v27 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
      v75 = v9;
      v28 = [v27 URLByAppendingPathComponent:v9];

      v29 = [(NSError *)v8 objectForKeyedSubscript:@"Compress"];
      v30 = [v29 BOOLValue];

      HIDWORD(v71) = v30;
      if (v30)
      {
        v31 = [(NSError *)v28 URLByDeletingPathExtension];

        v28 = v31;
      }

      v74 = v8;
      v32 = [NSFileManager defaultManager:v69];
      v33 = [(NSError *)v28 path];
      [v32 createDirectoryAtPath:v33 withIntermediateDirectories:1 attributes:0 error:0];

      v34 = [(NSError *)v28 URLByAppendingPathComponent:@"status.txt"];
      [(W5DiagnosticsModeManager *)self __writePeerStatusToFile:v34];

      v35 = [(NSError *)v28 URLByAppendingPathComponent:@"diagnostic_mode.txt"];
      [(W5DiagnosticsModeManager *)self __writeDiagnosticModeToFile:v19 file:v35];

      if ((v26 & 4) == 0 && self->_netUsageManager)
      {
        v36 = [(NSError *)v19 uuid];
        v37 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkUsage", v36];
        v38 = [(NSError *)v28 URLByAppendingPathComponent:v37];

        v39 = [(NSError *)v19 uuid];
        [(W5DiagnosticsModeManager *)self __collectNetUsageFiles:v38 uuid:v39];
      }

      v40 = [(W5DiagnosticsModeManager *)self localStore];
      v41 = [v40 infoMatchingDiagnosticMode:v19];

      if (v41)
      {
        if ((v26 & 4) != 0)
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
      v68 = [(W5DiagnosticsModeManager *)self store];
      [v68 updateStoreWithDiagnosticsMode:v19];

      if (v10)
      {
        v10[2](v10, v65, 0, v63);
      }

      v14 = v73;
    }

    else
    {
      v59 = sub_100098A04();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [(W5DiagnosticsModeManager *)self localPeer];
        v61 = [(NSError *)v19 peers];
        v78 = "[W5DiagnosticsModeManager collectLogsDiagnosticMode:outputName:reply:]";
        v79 = 2080;
        v77 = 136316162;
        v80 = "W5DiagnosticsModeManager.m";
        v81 = 1024;
        v82 = 834;
        v83 = 2112;
        v84 = v60;
        v85 = 2114;
        v86 = v61;
        _os_log_send_and_compose_impl();
      }

      if (!v10)
      {
        v25 = 0;
        goto LABEL_53;
      }

      v74 = v8;
      v75 = v9;
      v91 = NSLocalizedFailureReasonErrorKey;
      v92 = @"W5NotPermittedErr";
      v28 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v41 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v28];
      v10[2](v10, v41, 0, 0);
    }

    v8 = v74;
LABEL_52:

    v9 = v75;
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

  if (v10)
  {
    v75 = v9;
    v93 = NSLocalizedFailureReasonErrorKey;
    v94 = @"W5NotPermittedErr";
    v25 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v28 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v25];
    v10[2](v10, v28, 0, 0);
    goto LABEL_52;
  }

LABEL_54:
}

- (void)_archiveAndCollectLogs:(id)a3 logCollectionPath:(id)a4 outputDirectory:(id)a5 maxWait:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38[0] = v12;
    _os_log_send_and_compose_impl();
  }

  if (v10)
  {
    [(W5DiagnosticsModeManager *)self __waitForLogRequestToComplete:v10 maxWait:a6];
  }

  if (v11)
  {
    v14 = [(NSError *)v11 lastPathComponent];
    v15 = [NSString stringWithFormat:@"%@.tgz", v14];

    v16 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v17 = [v16 URLByAppendingPathComponent:v15];

    v26 = 0;
    sub_100098A4C(v11, v17, &v26);
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
        v34 = v11;
        v35 = 2112;
        v36 = v18;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      v21 = [v12 URLByAppendingPathComponent:v15];
      v25 = 0;
      v22 = [v20 moveItemAtURL:v17 toURL:v21 error:&v25];
      v19 = v25;

      v23 = sub_100098A04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v12 URLByAppendingPathComponent:v15];
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

- (BOOL)registerPeer:(id)a3 role:(int64_t)a4 configuration:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[W5CloudStore sharedStore];
    v18 = [v12 registeredPeers];
    _os_log_send_and_compose_impl();
  }

  v13 = [[W5DiagnosticsModePeer alloc] initWithRole:a4 peer:v10];
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v15 = +[W5CloudStore sharedStore];
  v16 = [v15 registerDiagnosticModePeer:v13 configuration:v9 error:a6];

  return v16;
}

- (BOOL)unregisterPeer:(id)a3 role:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[W5CloudStore sharedStore];
    v15 = [v9 registeredPeers];
    _os_log_send_and_compose_impl();
  }

  v10 = [[W5DiagnosticsModePeer alloc] initWithRole:a4 peer:v7];
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v12 = +[W5CloudStore sharedStore];
  v13 = [v12 unregisterDiagnosticModePeer:v10 error:a5];

  return v13;
}

- (void)__waitForLogRequestToComplete:(id)a3 maxWait:(unint64_t)a4
{
  v6 = a3;
  if ([(W5LogManager *)self->_logManager isRequestActiveOrPending:v6])
  {
    v7 = (a4 / 0xA);
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
          v31 = v6;
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

        v15 = [(W5LogManager *)self->_logManager isRequestActiveOrPending:v6, v18, v19];
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
          v29 = v6;
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
        v29 = v6;
        v30 = 2048;
        v31 = v9;
        _os_log_send_and_compose_impl();
      }
    }
  }

LABEL_17:
}

- (void)__writePeerStatusToFile:(id)a3
{
  v4 = a3;
  statusManager = self->_statusManager;
  if (statusManager)
  {
    v6 = [(W5StatusManager *)statusManager status];
    if (!v6)
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
    v8 = [v4 path];
    v9 = [v6 description];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v7 createFileAtPath:v8 contents:v10 attributes:0];

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
    v6 = 0;
  }

LABEL_10:
}

- (void)__writeDiagnosticModeToFile:(id)a3 file:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
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
  v8 = [v6 path];
  v9 = [v5 description];
  v10 = [v9 dataUsingEncoding:4];
  v11 = [v7 createFileAtPath:v8 contents:v10 attributes:0];

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

- (void)__collectNetUsageFiles:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v24 = 0;
  v9 = [v8 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v24];
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
    v32 = v6;
    v33 = 1024;
    *v34 = v9;
    *&v34[4] = 2112;
    *&v34[6] = v10;
    _os_log_send_and_compose_impl();
  }

  if (v9)
  {
    v12 = [(W5NetUsageManager *)self->_netUsageManager calculateUsageDelta:v7];
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

    v14 = [v6 URLByAppendingPathComponent:@"netusage_delta.csv"];
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

    [W5NetUsageManager copyPeriodicNetUsageToDir:v6 uuid:v7];
    v16 = [NSString stringWithFormat:@"%@.tgz", v6];
    v17 = [NSURL URLWithString:v16];

    v23 = v10;
    v18 = sub_100098A4C(v6, v17, &v23);
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
      v32 = v6;
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
      v22 = [v6 path];
      [v21 removeItemAtPath:v22 error:0];
    }
  }

  else
  {
    v19 = v10;
  }
}

- (void)handlePeerFaultEvent:(id)a3
{
  v4 = a3;
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
    v92 = v4;
    LODWORD(v69) = 38;
    v68 = &v85;
    _os_log_send_and_compose_impl();
  }

  v6 = [v4 info];
  v7 = [v6 objectForKeyedSubscript:@"RemoteListener"];

  v8 = [v4 peer];
  v9 = [v8 peerID];

  if (v9)
  {
    v10 = [(W5DiagnosticsModeManager *)self localPeer];
    v11 = [v10 peerID];
    v12 = [v9 isEqualToString:v11];

    if (!v12)
    {
      v30 = [v4 info];
      v17 = [v30 objectForKey:@"DiagnosticMode"];

      if (v17)
      {
        v31 = sub_100098A04();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v4 peer];
          v86 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]";
          v87 = 2080;
          v85 = 136316162;
          v88 = "W5DiagnosticsModeManager.m";
          v89 = 1024;
          v90 = 1103;
          v91 = 2112;
          v92 = v17;
          v93 = 2114;
          v94 = v32;
          LODWORD(v69) = 48;
          v68 = &v85;
          _os_log_send_and_compose_impl();
        }

        v33 = [W5DiagnosticsModePeer alloc];
        v34 = [(W5DiagnosticsModeManager *)self localPeer];
        v35 = [v33 initWithRole:8 peer:v34];

        v36 = [v17 peers];
        v37 = sub_100091470(v36, v35, 8);

        if (!v37)
        {
LABEL_60:

          goto LABEL_68;
        }

        v70 = v35;
        v71 = v7;
        v38 = [v4 info];
        v39 = [v38 objectForKeyedSubscript:@"FaultType"];
        v40 = [v39 integerValue];

        v41 = [v17 info];
        v42 = [v41 objectForKeyedSubscript:@"Faults"];

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

              if ([*(*(&v72 + 1) + 8 * i) integerValue] == v40)
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
                  [(W5DiagnosticsModeManager *)self _showSuggestedStopNotificationForEvent:v4];
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
          v92 = v40;
          v93 = 2114;
          v94 = v43;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_48;
      }

      v53 = [(W5DiagnosticsModeManager *)self localPeer];
      v54 = [v53 peerID];
      v55 = [v7 isEqualToString:v54];

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
          v92 = v4;
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
        v58 = [v4 info];
        v59 = [v58 objectForKeyedSubscript:@"FaultType"];
        v60 = -[W5DiagnosticsModeManager _isFaultSupported:](self, "_isFaultSupported:", [v59 integerValue]);

        if (v60)
        {
          [(W5DiagnosticsModeManager *)self _showSuggestedStartNotificationForEvent:v4];
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
          v92 = v4;
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

  v14 = [(W5DiagnosticsModeManager *)self store];
  v15 = [(W5DiagnosticsModeManager *)self localPeer];
  v16 = [v15 peerID];
  v17 = [v14 diagnosticsModeMatchingPeerID:v16 state:3 role:1];

  if ([v17 count])
  {
    v71 = v7;
    v18 = [v17 firstObject];
    v19 = [v4 info];
    v20 = [v19 objectForKeyedSubscript:@"FaultType"];
    v21 = [v20 integerValue];

    v22 = [v18 info];
    v23 = [v22 objectForKeyedSubscript:@"Faults"];

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

          if ([*(*(&v79 + 1) + 8 * j) integerValue] == v21)
          {

            [v18 setState:4];
            v49 = [v18 info];
            if (v49)
            {
              v50 = [v18 info];
              v51 = [v50 mutableCopy];
            }

            else
            {
              v51 = +[NSMutableDictionary dictionary];
            }

            v61 = [NSNumber numberWithInteger:v21];
            v84 = v61;
            v62 = [NSArray arrayWithObjects:&v84 count:1];
            [v51 setObject:v62 forKeyedSubscript:@"DetectedFaults"];

            [v18 setInfo:v51];
            v63 = [(W5DiagnosticsModeManager *)self store];
            [v63 updateStoreWithDiagnosticsMode:v18];

            v64 = [v18 uuid];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_10000B69C;
            v76[3] = &unk_1000E1298;
            v76[4] = self;
            v77 = v4;
            v78 = v18;
            [(W5DiagnosticsModeManager *)self stopDiagnosticsModeWithUUID:v64 info:&__NSDictionary0__struct reply:v76];

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
      v92 = v21;
      v93 = 2114;
      v94 = v24;
      _os_log_send_and_compose_impl();
    }

    [(W5DiagnosticsModeManager *)self _notifyPeers:v4 info:0];
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

  [(W5DiagnosticsModeManager *)self _notifyPeers:v4 info:0];
LABEL_68:
}

- (BOOL)_isFaultSupported:(int64_t)a3
{
  v4 = [&off_1000F34E0 objectAtIndex:0];
  v5 = [v4 integerValue];

  if (v5 == a3)
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
    v10 = [v9 integerValue];
  }

  while (v10 != a3);
  return v8 < 3;
}

- (void)_notifyPeers:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  faultEventManager = self->_faultEventManager;
  v9 = sub_100098A04();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (faultEventManager)
  {
    if (v10)
    {
      _os_log_send_and_compose_impl();
    }

    [(W5FaultEventManager *)self->_faultEventManager notifyPeersWithFaultEvent:v6 info:v7];
  }

  else
  {
    if (v10)
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (void)_showSuggestedStartNotificationForEvent:(id)a3
{
  v20 = a3;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:2])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    v5 = [v20 info];
    v6 = [v5 objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Detected", v7];

    v9 = [v20 peer];
    v10 = [v9 name];
    if (v10)
    {
      v11 = [v20 peer];
      v12 = [v11 name];
    }

    else
    {
      v12 = @"Your device";
    }

    v13 = [v20 peer];
    v14 = [v13 peerID];
    v15 = [NSString stringWithFormat:@"wifiapp://startDiagnostics?peerID=%@", v14];
    v16 = [NSURL URLWithString:v15];

    userNotificationManager = self->_userNotificationManager;
    v18 = [NSString stringWithFormat:@"%@ has detected an issue. Tap here to help diagnose the issue.", v12];
    v19 = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v18 type:3 UUID:v19 actionURL:v16];
  }
}

- (void)_showSuggestedStopNotificationForEvent:(id)a3
{
  v24 = a3;
  if ([(W5DiagnosticsModeManager *)self _shouldShowNotification:3])
  {
    v4 = +[NSUUID UUID];
    [(W5DiagnosticsModeManager *)self setStopNotificationUUID:v4];

    v5 = [v24 info];
    v6 = [v5 objectForKeyedSubscript:@"FaultType"];
    [v6 integerValue];

    v7 = W5DescriptionForDiagnosticsFaultType();
    v8 = [NSString stringWithFormat:@"%@ Issue Diagnostics Complete", v7];

    v9 = [v24 peer];
    v10 = [v9 name];
    if (v10)
    {
      v11 = [v24 peer];
      v12 = [v11 name];
    }

    else
    {
      v12 = @"Your device";
    }

    v13 = [v24 info];
    v14 = [v13 objectForKeyedSubscript:@"DiagnosticMode"];
    v15 = [v14 uuid];

    v16 = [v24 peer];
    v17 = [v16 peerID];
    v18 = [v15 UUIDString];
    v19 = [NSString stringWithFormat:@"wifiapp://endDiagnostics?peerID=%@&dmUUID=%@", v17, v18];
    v20 = [NSURL URLWithString:v19];

    userNotificationManager = self->_userNotificationManager;
    v22 = [NSString stringWithFormat:@"%@ has detected the issue again and has completed diagnostics. Tap here to file a radar.", v12];
    v23 = [(W5DiagnosticsModeManager *)self stopNotificationUUID];
    [(W5UserNotificationManager *)userNotificationManager dispatchNotificationWithTitle:v8 subtitle:0 body:v22 type:3 UUID:v23 actionURL:v20];
  }
}

- (BOOL)_shouldShowNotification:(int64_t)a3
{
  v5 = +[NSDate date];
  v6 = 300.0;
  if (a3 != 3)
  {
    v6 = 0.0;
  }

  if (a3 == 2)
  {
    v7 = 900.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = +[W5CloudStore sharedStore];
  v9 = [(W5Peer *)self->_localPeer peerID];
  v10 = [v8 getMinNotificationInterval:v9 notificationType:a3];

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

  if (a3 == 2)
  {
    v15 = @"MinStartNotificationInterval";
  }

  else
  {
    if (a3 != 3)
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
  v19 = [NSNumber numberWithInteger:a3, v28, v30];
  v20 = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
  v21 = [v20 objectForKey:v19];

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
    v25 = [(W5DiagnosticsModeManager *)self lastNotificationTimestamp];
    [v25 setObject:v5 forKeyedSubscript:v19];
  }

  return v23;
}

- (void)_runDiagnosticsForDiagnosticMode:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-WiFiDETestsAtFault", v6];

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

  v13 = [(W5DiagnosticsModeManager *)self logManager];
  [v13 addRequest:v9];

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

  v18 = [(W5DiagnosticsModeManager *)self localStore];
  v20[0] = @"diagnosticTestsRequestUUID";
  v20[1] = @"TestOutputDirectory";
  v21[0] = v8;
  v21[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v18 addToStore:v4 newInfo:v19];
}

- (void)_collectAnalyticsCSVsForDiagnosticMode:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-AnalyticsCSVs", v6];

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

  v15 = [(W5DiagnosticsModeManager *)self logManager];
  [v15 addRequest:v9];

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

  v20 = [(W5DiagnosticsModeManager *)self localStore];
  v22[0] = @"analyticsCSVsRequestUUID";
  v22[1] = @"analyticsCSVsOutputPath";
  v23[0] = v8;
  v23[1] = v18;
  v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v20 addToStore:v4 newInfo:v21];
}

- (void)_collectSystemLogsForDiagnosticMode:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-SystemLogs", v6];

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

  v13 = [(W5DiagnosticsModeManager *)self logManager];
  [v13 addRequest:v9];

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

  v18 = [(W5DiagnosticsModeManager *)self localStore];
  v20[0] = @"systemLogsRequestUUID";
  v20[1] = @"systemLogsOutputPath";
  v21[0] = v8;
  v21[1] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v18 addToStore:v4 newInfo:v19];
}

- (void)_collectNetworkInfoForDiagnosticMode:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"DiagnosticsMode-%@-NetworkInfo", v6];

  v8 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
  v9 = [v8 URLByAppendingPathComponent:v7];

  v10 = +[NSFileManager defaultManager];
  v11 = [(W5LogItemRequestInternal *)v9 path];
  v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];

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
    v27 = self;
    v20 = v4;
    v28 = v20;
    [(W5LogItemRequestInternal *)v14 setReply:v25];
    v21 = [(W5DiagnosticsModeManager *)self logManager];
    [v21 addRequest:v14];

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

    v23 = [(W5DiagnosticsModeManager *)self localStore];
    v29[0] = @"networkInfoGenUUID";
    v29[1] = @"networkInfoOutputPath";
    v30[0] = v13;
    v30[1] = v9;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v23 addToStore:v20 newInfo:v24];
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
  v3 = [v2 registeredPeers];

  return v3;
}

- (int64_t)registeredRoleForPeer:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(W5DiagnosticsModeManager *)self registeredPeers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 peer];
        v11 = [v10 peerID];
        v12 = [v4 peerID];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v6 = [v9 role];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)activeDiagnostics
{
  v2 = [(W5DiagnosticsModeManager *)self store];
  v3 = [v2 diagnosticsModeWithState:3];

  return v3;
}

- (id)finishedDiagnostics
{
  v2 = [(W5DiagnosticsModeManager *)self store];
  v3 = [v2 diagnosticsModeWithState:11];

  return v3;
}

- (NSArray)allDiagnostics
{
  v2 = [(W5DiagnosticsModeManager *)self store];
  v3 = [v2 diagnostics];
  v4 = [v3 allObjects];

  return v4;
}

- (void)_finishedProcessingDiagnosticMode:(id)a3
{
  v4 = a3;
  v5 = [(W5DiagnosticsModeManager *)self store];
  [v5 updateStoreWithDiagnosticsMode:v4];
}

@end