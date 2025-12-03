@interface RPDaemon
+ (id)sharedDaemon;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (id)keychainStateString;
- (void)_metricsSubmissionSetup;
- (void)_prefsChanged;
- (void)_updateErrorFlags;
- (void)_xpcPublisherAction:(unsigned int)action token:(unint64_t)token event:(id)event;
- (void)_xpcPublisherAddToken:(unint64_t)token event:(id)event;
- (void)_xpcPublisherRemoveToken:(unint64_t)token;
- (void)_xpcPublisherStateChangedForToken:(unint64_t)token state:(BOOL)state;
- (void)_xpcPublisherTriggeredReply:(id)reply token:(unint64_t)token responseHandler:(id)handler;
- (void)_xpcPublisherTriggeredToken:(unint64_t)token payload:(id)payload responseHandler:(id)handler;
- (void)activate;
- (void)invalidate;
- (void)postDaemonInfoChanges:(unint64_t)changes;
@end

@implementation RPDaemon

+ (id)sharedDaemon
{
  if (qword_1001D6148 != -1)
  {
    sub_100117048();
  }

  v3 = qword_1001D6140;

  return v3;
}

- (RPDaemon)init
{
  v32.receiver = self;
  v32.super_class = RPDaemon;
  v2 = [(RPDaemon *)&v32 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_languageChangedNotifier = -1;
    v4 = objc_alloc_init(NSMutableArray);
    subDaemons = v3->_subDaemons;
    v3->_subDaemons = v4;

    v6 = v3->_subDaemons;
    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = v3->_subDaemons;
    v9 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = v3->_subDaemons;
    v11 = +[RPCloudDaemon sharedCloudDaemon];
    [(NSMutableArray *)v10 addObject:v11];

    v12 = v3->_subDaemons;
    v13 = +[RPNearFieldDaemon sharedNearFieldDaemon];
    [(NSMutableArray *)v12 addObject:v13];

    v14 = v3->_subDaemons;
    v15 = +[RPNearbyInvitationDaemon sharedInvitationDaemon];
    [(NSMutableArray *)v14 addObject:v15];

    v16 = v3->_subDaemons;
    v17 = +[RPPeopleDaemon sharedPeopleDaemon];
    [(NSMutableArray *)v16 addObject:v17];

    v18 = v3->_subDaemons;
    v19 = objc_alloc_init(RPRemoteDisplayDaemon);
    [(NSMutableArray *)v18 addObject:v19];

    v20 = v3->_subDaemons;
    v21 = +[RPPrivateDaemon sharedPrivateDaemon];
    [(NSMutableArray *)v20 addObject:v21];

    v22 = v3->_subDaemons;
    v23 = +[RPNWNetworkAgent sharedNetworkAgent];
    [(NSMutableArray *)v22 addObject:v23];

    v24 = v3->_subDaemons;
    v25 = +[RPStatusDaemon sharedStatusDaemon];
    [(NSMutableArray *)v24 addObject:v25];

    if (+[_TtC8rapportd15RPFeatureGating identitySyncServiceEnabled])
    {
      v26 = v3->_subDaemons;
      v27 = +[_TtC8rapportd20RPIdentitySyncDaemon shared];
      [(NSMutableArray *)v26 addObject:v27];
    }

    if (+[_TtC8rapportd15RPFeatureGating applicationServicePairingEnabled])
    {
      v28 = v3->_subDaemons;
      v29 = +[_TtC8rapportd15RPPairingDaemon shared];
      [(NSMutableArray *)v28 addObject:v29];
    }

    [(RPDaemon *)v3 _metricsSubmissionSetup];
    v30 = v3;
  }

  return v3;
}

- (void)_metricsSubmissionSetup
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v4 = dispatch_queue_create("RPMetricsSubmission", attr);
  metricsReportQueue = self->_metricsReportQueue;
  self->_metricsReportQueue = v4;

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_metricsReportQueue);
  metricsReportTimer = self->_metricsReportTimer;
  self->_metricsReportTimer = v6;

  dispatch_source_set_event_handler(self->_metricsReportTimer, &stru_1001AC650);
  v8 = self->_metricsReportTimer;
  CUDispatchTimerSet();
  dispatch_resume(self->_metricsReportTimer);
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v63 = sub_100009D00();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  selfCopy = self;
  v5 = self->_subDaemons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v98;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v98 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v97 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v96 = v8;
          v52 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v12 = v8;

          v8 = v12;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = +[RPMetrics sharedMetricsNoCreate];
  v61 = v13;
  if (levelCopy <= 0x13 && v13)
  {
    v95 = v8;
    v52 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v14 = v8;

    v8 = v14;
  }

  v60 = +[RPAssertionTracker sharedTrackerNoCreate];
  if (v60)
  {
    v94 = v8;
    v53 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v15 = v8;

    v8 = v15;
  }

  v93 = v8;
  v54 = [(NSMutableSet *)self->_xpcConnections count];
  NSAppendPrintF();
  v16 = v8;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = self->_xpcConnections;
  v66 = [(NSMutableSet *)obj countByEnumeratingWithState:&v89 objects:v104 count:16, v54];
  if (v66)
  {
    v65 = *v90;
    do
    {
      for (j = 0; j != v66; j = j + 1)
      {
        if (*v90 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v89 + 1) + 8 * j);
        v88 = v16;
        xpcCnx = [v18 xpcCnx];
        processIdentifier = [xpcCnx processIdentifier];
        NSAppendPrintF();
        v20 = v88;

        assertions = [v18 assertions];
        if ([assertions count])
        {
          v87 = v20;
          NSAppendPrintF();
          v22 = v87;

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v67 = assertions;
          v23 = assertions;
          v24 = [v23 countByEnumeratingWithState:&v83 objects:v103 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v84;
            v27 = "";
            do
            {
              v28 = 0;
              v29 = v22;
              do
              {
                if (*v84 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v83 + 1) + 8 * v28);
                v82 = v29;
                v57 = v27;
                v59 = v30;
                NSAppendPrintF();
                v22 = v29;

                v28 = v28 + 1;
                v27 = " ";
                v29 = v22;
              }

              while (v25 != v28);
              v25 = [v23 countByEnumeratingWithState:&v83 objects:v103 count:{16, v57, v59, v60, v61}];
              v27 = " ";
            }

            while (v25);
          }

          v81 = v22;
          NSAppendPrintF();
          v20 = v22;

          assertions = v67;
        }

        v80 = v20;
        NSAppendPrintF();
        v16 = v20;
      }

      v66 = [(NSMutableSet *)obj countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v66);
  }

  errorFlags = selfCopy->_errorFlags;
  if (errorFlags)
  {
    v79 = v16;
    v55 = errorFlags;
    v58 = &unk_100148360;
    NSAppendPrintF();
    v32 = v16;

    v16 = v32;
  }

  v33 = [NSSet alloc];
  v34 = CFPrefs_CopyKeys();
  v35 = [v33 initWithArray:v34];

  v36 = [[NSMutableSet alloc] initWithSet:v35];
  v102[0] = @"btPipeEnabled";
  v102[1] = @"cloudDiscovery";
  v102[2] = @"clBLEClient";
  v102[3] = @"clMeDeviceIsMeOverride";
  v102[4] = @"clClientEnabled";
  v102[5] = @"clHomeKit";
  v102[6] = @"clMaxConnectionCount";
  v102[7] = @"clServerBonjourAlways";
  v102[8] = @"clServerEnabled";
  v102[9] = @"familySyncedName";
  v102[10] = @"ftCompress";
  v102[11] = @"ftLargeFileBufferBytes";
  v102[12] = @"ftLargeFileMaxOutstanding";
  v102[13] = @"ftLargeFileMaxTasks";
  v102[14] = @"ftSmallFilesMaxBytes";
  v102[15] = @"ftSmallFilesMaxTasks";
  v102[16] = @"frPruneAccountSecs";
  v102[17] = @"frPruneLastSecs";
  v102[18] = @"frRefreshMax";
  v102[19] = @"frRefreshMin";
  v102[20] = @"frMaxReachedLastSecs";
  v102[21] = @"frSuggestMax";
  v102[22] = @"frSuggestPollSecs";
  v102[23] = @"frSyncDelaySecs";
  v102[24] = @"hasAppleTVForce";
  v102[25] = @"hasHomePodForce";
  v102[26] = @"hasMacForce";
  v102[27] = @"hidEnabled";
  v102[28] = @"idFamilyResolve";
  v102[29] = @"idFriendResolve";
  v102[30] = @"idOwnerResolve";
  v102[31] = @"idPairedResolve";
  v102[32] = @"idSharedHomeResolve";
  v102[33] = @"idsEnabled";
  v102[34] = @"ignoreCompanionLinkChecks";
  v102[35] = @"ignoreRemoteDisplayChecks";
  v102[36] = @"ipEnabled";
  v102[37] = @"isSignedInForce";
  v102[38] = @"liveAudioEnabled";
  v102[39] = @"mcEnabled";
  v102[40] = @"metricsEnabled";
  v102[41] = @"applyNoiWiFiToUSB";
  v102[42] = @"pdFamily";
  v102[43] = @"pdFriends";
  v102[44] = @"pdFriendSyncStart";
  v102[45] = @"pdPrivacyCoalesceMin";
  v102[46] = @"pdPrivacyCoalesceMax";
  v102[47] = @"pdPTSBurstActionScanSecs";
  v102[48] = @"pdPTSBurstInfoScanSecs";
  v102[49] = @"pdRanging";
  v102[50] = @"pdStrangers";
  v102[51] = @"pdTrackWhileAsleep";
  v102[52] = @"rdBLEClient";
  v102[53] = @"rdBLEServer";
  v102[54] = @"rdClientEnabled";
  v102[55] = @"rdHomeKit";
  v102[56] = @"rdNoInfra";
  v102[57] = @"rdServerBonjourInfra";
  v102[58] = @"rdServerEnabled";
  v102[59] = @"siriEnabled";
  v102[60] = @"textInputEnabled";
  v102[61] = @"touchEnabled";
  v102[62] = @"uiNotes";
  v102[63] = @"useTargetAuthTag";
  v102[64] = @"xpcMatchingTestMode";
  v102[65] = @"nearFieldSeverDiscoveryEnabled";
  v102[66] = @"sendActivityLevelOverInfra";
  v102[67] = @"oneTimeDateRequestedResetCompleted";
  v37 = [NSArray arrayWithObjects:v102 count:68];
  [v36 addObjectsFromArray:v37];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v68 = v36;
  v38 = [v68 countByEnumeratingWithState:&v75 objects:v101 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v76;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v76 != v41)
        {
          objc_enumerationMutation(v68);
        }

        v43 = *(*(&v75 + 1) + 8 * k);
        v44 = [v35 containsObject:{v43, v55, v58}];
        if (!v40)
        {
          v74 = v16;
          NSAppendPrintF();
          v45 = v74;

          v16 = v45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v73 = 0;
          v46 = CFPrefs_CopyTypedValue();
          v47 = v46;
          if (v44)
          {
            if (v63)
            {
              v70 = v16;
              v55 = v43;
              v58 = v46;
              v48 = &v70;
            }

            else
            {
              v69 = v16;
              v55 = v43;
              v58 = v46;
              v48 = &v69;
            }

            goto LABEL_51;
          }

          if (v73 != -6727)
          {
            if (v63)
            {
              v72 = v16;
              v55 = v43;
              v58 = v46;
              v48 = &v72;
            }

            else
            {
              v71 = v16;
              v55 = v43;
              v58 = v46;
              v48 = &v71;
            }

LABEL_51:
            NSAppendPrintF();
            v49 = *v48;

            v16 = v49;
          }

          ++v40;

          continue;
        }
      }

      v39 = [v68 countByEnumeratingWithState:&v75 objects:v101 count:16];
    }

    while (v39);
  }

  v50 = v16;
  return v16;
}

- (void)activate
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_10011705C();
  }

  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefXPCMatchingTestMode != v3)
  {
    if (dword_1001D3730 <= 40 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117078();
    }

    self->_prefXPCMatchingTestMode = v3;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = self->_subDaemons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v47 + 1) + 8 * i) setDispatchQueue:self->_dispatchQueue];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v6);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = self->_subDaemons;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v43 + 1) + 8 * j) activate];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v11);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FCE0;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  if (self->_languageChangedNotifier == -1)
  {
    v15 = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004FCE8;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    notify_register_dispatch("com.apple.language.changed", &self->_languageChangedNotifier, v15, handler);
  }

  if (!self->_sigTermSource)
  {
    v16 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_dispatchQueue);
    sigTermSource = self->_sigTermSource;
    self->_sigTermSource = v16;

    v18 = self->_sigTermSource;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10004FD6C;
    v40[3] = &unk_1001AA970;
    v40[4] = self;
    dispatch_source_set_event_handler(v18, v40);
    dispatch_resume(self->_sigTermSource);
  }

  if (!self->_systemMonitor)
  {
    v19 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v19;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10004FDE8;
    v39[3] = &unk_1001AA970;
    v39[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v39];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10004FE50;
    v38[3] = &unk_1001AA970;
    v38[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v38];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10004FEB8;
    v37[3] = &unk_1001AA970;
    v37[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v37];
    v21 = self->_systemMonitor;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10004FF20;
    v36[3] = &unk_1001AA970;
    v36[4] = self;
    [(CUSystemMonitor *)v21 activateWithCompletion:v36];
  }

  if (!self->_xpcEventsRegistered)
  {
    v22 = self->_dispatchQueue;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10004FF28;
    v35[3] = &unk_1001AC678;
    v35[4] = self;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v22, v35);
    self->_xpcEventsRegistered = 1;
  }

  if (!self->_xpcListener)
  {
    v23 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v23;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (!self->_xpcPublisher)
  {
    v25 = self->_dispatchQueue;
    v26 = xpc_event_publisher_create();
    xpcPublisher = self->_xpcPublisher;
    self->_xpcPublisher = v26;

    v28 = self->_xpcPublisher;
    xpc_event_publisher_set_handler();
    v29 = self->_xpcPublisher;
    xpc_event_publisher_set_error_handler();
    v30 = self->_xpcPublisher;
    xpc_event_publisher_activate();
  }

  if (!self->_stateHandleGeneral)
  {
    v31 = self->_dispatchQueue;
    self->_stateHandleGeneral = os_state_add_handler();
  }

  if (!self->_stateHandleIdentities)
  {
    v32 = self->_dispatchQueue;
    self->_stateHandleIdentities = os_state_add_handler();
  }

  if (!self->_stateHandleKeychain)
  {
    v33 = self->_dispatchQueue;
    self->_stateHandleKeychain = os_state_add_handler();
  }

  if (!self->_stateHandlePrivateDiscovery)
  {
    v34 = self->_dispatchQueue;
    self->_stateHandlePrivateDiscovery = os_state_add_handler();
  }
}

- (void)invalidate
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001171E0();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_subDaemons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v26 + 1) + 8 * i) invalidate];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_subDaemons removeAllObjects];
  xpcPublisher = self->_xpcPublisher;
  self->_xpcPublisher = 0;

  if (self->_stateHandleGeneral)
  {
    os_state_remove_handler();
    self->_stateHandleGeneral = 0;
  }

  if (self->_stateHandleIdentities)
  {
    os_state_remove_handler();
    self->_stateHandleIdentities = 0;
  }

  if (self->_stateHandleKeychain)
  {
    os_state_remove_handler();
    self->_stateHandleKeychain = 0;
  }

  if (self->_stateHandlePrivateDiscovery)
  {
    os_state_remove_handler();
    self->_stateHandlePrivateDiscovery = 0;
  }

  languageChangedNotifier = self->_languageChangedNotifier;
  if (languageChangedNotifier != -1)
  {
    notify_cancel(languageChangedNotifier);
    self->_languageChangedNotifier = -1;
  }

  sigTermSource = self->_sigTermSource;
  if (sigTermSource)
  {
    v11 = sigTermSource;
    dispatch_source_cancel(v11);
    v12 = self->_sigTermSource;
    self->_sigTermSource = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_xpcConnections;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        xpcCnx = [*(*(&v22 + 1) + 8 * j) xpcCnx];
        [xpcCnx invalidate];
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001171FC();
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  paramsCopy = params;
  dispatchQueue = self->_dispatchQueue;
  commandCopy = command;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [commandCopy isEqual:@"errorFlags"];

  if (v9)
  {
    self->_errorFlagsForceSet = CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
    self->_errorFlagsForceClear = Int64;
    if (dword_1001D3730 <= 30)
    {
      if (dword_1001D3730 != -1)
      {
LABEL_4:
        v16 = Int64;
        errorFlagsForceSet = self->_errorFlagsForceSet;
        LogPrintF();
        [(RPDaemon *)self _updateErrorFlags:errorFlagsForceSet];
        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        Int64 = self->_errorFlagsForceClear;
        goto LABEL_4;
      }
    }

    [(RPDaemon *)self _updateErrorFlags:v12];
  }

LABEL_7:

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPDaemonXPCConnection alloc] initWithDaemon:self xpcConnection:connectionCopy];
  [(RPDaemonXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonXPCServerInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100050728;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v6;
  [connectionCopy setInvalidationHandler:v13];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPDaemonXPCClientInterface];
  [connectionCopy setRemoteObjectInterface:v11];

  [connectionCopy resume];
  if (dword_1001D3730 <= 20 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117230(connectionCopy);
  }

  return 1;
}

- (id)keychainStateString
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = objc_alloc_init(CUKeychainItem);
  [v3 setAccessGroup:@"com.apple.rapport"];
  [v3 setSyncType:3];
  v4 = objc_alloc_init(CUKeychainManager);
  v23 = 0;
  v5 = [v4 copyItemsMatchingItem:v3 flags:0 error:&v23];
  v6 = v23;
  v22 = v2;
  v17 = [v5 count];
  NSAppendPrintF();
  v7 = v2;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:{16, v17, v6}];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = CUDescriptionWithLevel();
        [v7 appendString:v14];

        [v7 appendString:@"\n"];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = v7;
  return v7;
}

- (void)postDaemonInfoChanges:(unint64_t)changes
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000509D0;
  v4[3] = &unk_1001AC750;
  v4[4] = self;
  v4[5] = changes;
  dispatch_async(dispatchQueue, v4);
}

- (void)_prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_subDaemons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) prefsChanged];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateErrorFlags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(CUSystemMonitor *)self->_systemMonitor manateeAvailable])
  {
    v3 = 0;
  }

  else
  {
    v3 = 256;
  }

  if (![(CUSystemMonitor *)self->_systemMonitor primaryAppleIDIsHSA2])
  {
    v3 |= 0x20uLL;
  }

  v4 = v3 | (4 * [(CUSystemMonitor *)self->_systemMonitor wifiFlags]) & 0x80;
  wifiState = [(CUSystemMonitor *)self->_systemMonitor wifiState];
  v6 = v4 | 4;
  if (wifiState != 10)
  {
    v6 = v4;
  }

  v7 = (v6 | self->_errorFlagsForceSet) & ~self->_errorFlagsForceClear;
  errorFlags = self->_errorFlags;
  if (v7 != errorFlags)
  {
    self->_errorFlags = v7;
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      v11 = v7;
      v12 = &unk_100148360;
      v9 = errorFlags;
      v10 = &unk_100148360;
      LogPrintF();
    }

    v13 = [RPDaemon sharedDaemon:v9];
    [v13 postDaemonInfoChanges:32];
  }
}

- (void)_xpcPublisherAction:(unsigned int)action token:(unint64_t)token event:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (action != 2)
  {
    if (action == 1)
    {
      [(RPDaemon *)self _xpcPublisherRemoveToken:token];
    }

    else if (action)
    {
      if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        sub_1001172C0();
      }
    }

    else
    {
      [(RPDaemon *)self _xpcPublisherAddToken:token event:eventCopy];
    }
  }
}

- (void)_xpcPublisherAddToken:(unint64_t)token event:(id)event
{
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        tokenCopy = token;
        v14 = v6;
        LogPrintF();
      }

      if (self->_prefXPCMatchingTestMode || !CFDictionaryGetInt64())
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = self->_subDaemons;
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v16 + 1) + 8 * i);
              v15[0] = _NSConcreteStackBlock;
              v15[1] = 3221225472;
              v15[2] = sub_100051128;
              v15[3] = &unk_1001AC778;
              v15[4] = self;
              v15[5] = token;
              if ([v12 addXPCMatchingToken:token event:v6 handler:{v15, tokenCopy, v14}])
              {

                goto LABEL_32;
              }
            }

            v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_30;
        }
      }

      else if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
LABEL_30:
        LogPrintF();
      }
    }

    else if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117300();
    }
  }

  else if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117340();
  }

LABEL_32:
}

- (void)_xpcPublisherRemoveToken:(unint64_t)token
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_subDaemons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) removeXPCMatchingToken:{token, v9}])
        {

          return;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117380();
  }
}

- (void)_xpcPublisherTriggeredToken:(unint64_t)token payload:(id)payload responseHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v9 = objc_retainBlock(handlerCopy);
  v10 = self->_xpcPublisher;
  if (!v10)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117420();
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    else if (!v9)
    {
      goto LABEL_26;
    }

    v14 = RPErrorF();
    v9[2](v9, 0, v14);

    goto LABEL_26;
  }

  if (!payloadCopy)
  {
LABEL_14:
    v11 = 0;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_15:
    v13 = xpc_event_publisher_fire();
    goto LABEL_16;
  }

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v11)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001173C0();
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_5:
  dispatchQueue = self->_dispatchQueue;
  v15 = handlerCopy;
  v13 = xpc_event_publisher_fire_with_reply();

LABEL_16:
  if (v13)
  {
    if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001173E0();
  }

LABEL_26:
}

- (void)_xpcPublisherTriggeredReply:(id)reply token:(unint64_t)token responseHandler:(id)handler
{
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000029DC;
  v22 = sub_100003184;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000518A4;
  v14[3] = &unk_1001AC7C8;
  v16 = &v18;
  tokenCopy = token;
  handlerCopy = handler;
  v15 = handlerCopy;
  v9 = objc_retainBlock(v14);
  if (xpc_get_type(replyCopy) == &_xpc_type_error)
  {
    xpc_dictionary_get_string(replyCopy, _xpc_error_key_description);
    v11 = RPErrorF();
    v10 = v19[5];
    v19[5] = v11;
  }

  else
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      (*(handlerCopy + 2))(handlerCopy, v10, 0);
    }

    else
    {
      v12 = RPErrorF();
      v13 = v19[5];
      v19[5] = v12;
    }
  }

  (v9[2])(v9);
  _Block_object_dispose(&v18, 8);
}

- (void)_xpcPublisherStateChangedForToken:(unint64_t)token state:(BOOL)state
{
  stateCopy = state;
  v5 = self->_xpcPublisher;
  v6 = v5;
  if (v5)
  {
    v10 = v5;
    if (xpc_event_publisher_set_subscriber_keepalive())
    {
      if (dword_1001D3730 > 90 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }
    }

    else if (dword_1001D3730 > 30 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    LogPrintF();
LABEL_17:
    v6 = v10;
    if (!stateCopy)
    {
      goto LABEL_28;
    }

    if (xpc_event_publisher_fire())
    {
      v6 = v10;
      if (dword_1001D3730 > 90)
      {
        goto LABEL_28;
      }

      if (dword_1001D3730 == -1)
      {
        v9 = _LogCategory_Initialize();
        v6 = v10;
        if (!v9)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_21;
    }

    v6 = v10;
    if (dword_1001D3730 <= 30)
    {
      if (dword_1001D3730 != -1 || (v8 = _LogCategory_Initialize(), v6 = v10, v8))
      {
        sub_100117460();
        goto LABEL_22;
      }
    }

    goto LABEL_28;
  }

  if (dword_1001D3730 <= 90)
  {
    v10 = 0;
    if (dword_1001D3730 != -1 || (v7 = _LogCategory_Initialize(), v6 = 0, v7))
    {
LABEL_21:
      LogPrintF();
LABEL_22:
      v6 = v10;
    }
  }

LABEL_28:
}

@end