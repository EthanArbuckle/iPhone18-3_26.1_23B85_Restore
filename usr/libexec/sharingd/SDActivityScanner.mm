@interface SDActivityScanner
+ (id)sharedScanner;
- (BOOL)activeAdvertisementForDeviceWithIdentifier:(id)a3;
- (BOOL)restart;
- (SDActivityScanner)init;
- (id)remoteObjectInterface;
- (id)state;
- (os_state_data_s)dumpState;
- (void)_createOSTransactionIfNeeded;
- (void)activityPayloadFromDeviceUniqueID:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7;
- (void)activityServiceDevicesChanged:(id)a3;
- (void)addObservers;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)consoleUserChanged:(id)a3;
- (void)continuity:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6;
- (void)continuity:(id)a3 didFailToStartScanningForType:(int64_t)a4 withError:(id)a5;
- (void)continuity:(id)a3 didStartScanningForType:(int64_t)a4;
- (void)continuity:(id)a3 didStopScanningForType:(int64_t)a4;
- (void)continuityDidUpdateState:(id)a3;
- (void)didLosePeer:(id)a3;
- (void)didLosePeerTimer:(id)a3;
- (void)lostAllDevices;
- (void)nearbyServiceDevicesChanged:(id)a3;
- (void)postNotification:(id)a3 userInfo:(id)a4;
- (void)removeObservers;
- (void)scanForTypes:(unint64_t)a3;
- (void)stop;
- (void)systemHasPoweredOn:(id)a3;
- (void)systemWillSleep:(id)a3;
@end

@implementation SDActivityScanner

- (BOOL)restart
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDActivityController *)v2 shouldStart];
  v4 = [(SDActivityScanner *)v2 shouldScanForCopyPaste];
  v5 = [(SDActivityScanner *)v2 shouldScanForHandoff];
  if (v2->_scannerEnabled && (([(IDSContinuity *)v2->_continuity state]== 3) & v3) == 1 && ((v4 | v5) & 1) != 0)
  {
    [(SDActivityScanner *)v2 _createOSTransactionIfNeeded];
    v6 = [(SDActivityController *)v2 allPeerBTIdentifiers];
    if (v5 & 1 | ((v4 & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSMutableData dataWithCapacity:14];
      [v7 setLength:14];
      *[v7 mutableBytes] = 8;
    }

    v42 = [(SDActivityScanner *)v2 shouldBoostScan];
    os_unfair_lock_lock(&v2->_lock);
    v21 = [(NSMutableDictionary *)v2->_deviceIdentifierToDeviceRecord allValues];
    os_unfair_lock_unlock(&v2->_lock);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v23)
    {
      v24 = *v45;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v44 + 1) + 8 * i) deviceTracked])
          {
            v26 = 1;
            goto LABEL_43;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
LABEL_43:

    v27 = handoff_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v7;
      v28 = v6;
      if (v5)
      {
        v29 = @" Handoff";
      }

      else
      {
        v29 = &stru_1008EFBD0;
      }

      if (v4)
      {
        v30 = @" CopyPaste";
      }

      else
      {
        v30 = &stru_1008EFBD0;
      }

      if (v42)
      {
        v31 = @" Boosted";
      }

      else
      {
        v31 = &stru_1008EFBD0;
      }

      if (v26)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v40 = v28;
      v33 = [(__CFString *)v28 valueForKeyPath:@"@unionOfObjects.UUIDString"];
      v34 = [v33 componentsJoinedByString:{@", "}];
      *buf = 138413314;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v49 = v31;
      *v50 = 2112;
      *&v50[2] = v32;
      *&v50[10] = 2112;
      *&v50[12] = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting%@%@%@ scanning with duplicates:%@ for peers [%@]", buf, 0x34u);

      v6 = v40;
      v7 = v39;
    }

    LOBYTE(v38) = v26;
    [(IDSContinuity *)v2->_continuity startScanningForType:0 withData:v7 mask:v7 peers:v6 withOptions:0 boostedScan:v42 duplicates:v38];
    stopScanLostDeviceTimer = v2->_stopScanLostDeviceTimer;
    if (stopScanLostDeviceTimer)
    {
      dispatch_source_cancel(stopScanLostDeviceTimer);
      v36 = v2->_stopScanLostDeviceTimer;
      v2->_stopScanLostDeviceTimer = 0;
    }

    v20 = 1;
  }

  else
  {
    if (v2->_isScanning)
    {
      v8 = @"Stopped";
    }

    else
    {
      v8 = @"Skipping request for";
    }

    v6 = v8;
    v9 = handoff_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v5;
      if (v2->_scannerEnabled)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (([(IDSContinuity *)v2->_continuity state]& 0x8000000000000000) != 0 || [(IDSContinuity *)v2->_continuity state]> 3)
      {
        v11 = "UnexpectedState";
      }

      else
      {
        v11 = off_1008D43E0[[(IDSContinuity *)v2->_continuity state]];
      }

      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138413570;
      if (v4)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&buf[4] = v6;
      *&buf[12] = 2112;
      if (v41)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *&buf[14] = v10;
      *&buf[22] = 2080;
      v49 = v11;
      *v50 = 2112;
      *&v50[2] = v12;
      *&v50[10] = 2112;
      *&v50[12] = v13;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ enabled: %@, state: %s, shouldStart: %@, scanForCopyPaste: %@, scanForHandoff: %@", buf, 0x3Eu);
    }

    if (v2->_isScanning)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_10020EAFC;
      *v50 = sub_10020EB0C;
      *&v50[8] = v2->_scanningTransaction;
      [(IDSContinuity *)v2->_continuity stopScanningForType:0];
      v15 = v2->_stopScanLostDeviceTimer;
      if (!v15)
      {
        v16 = &_dispatch_main_q;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10020EB14;
        v43[3] = &unk_1008CE0B8;
        v43[4] = v2;
        v43[5] = buf;
        v17 = sub_1001F0548(0, &_dispatch_main_q, v43);
        v18 = v2->_stopScanLostDeviceTimer;
        v2->_stopScanLostDeviceTimer = v17;

        dispatch_resume(v2->_stopScanLostDeviceTimer);
        v15 = v2->_stopScanLostDeviceTimer;
      }

      v19 = sub_1001F0530(10.0);
      sub_1001F05F0(v15, v19);
      _Block_object_dispose(buf, 8);
    }

    v20 = 0;
  }

  objc_sync_exit(v2);
  return v20;
}

- (os_state_data_s)dumpState
{
  v3 = handoff_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dumping state", buf, 2u);
  }

  NSAppendPrintF();
  v4 = 0;
  v5 = [(SDActivityScanner *)self state];
  v6 = v5;
  if (v5)
  {
    v23 = v5;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  v8 = +[SDActivityAdvertiser sharedAdvertiser];
  v9 = [v8 state];

  if (v9)
  {
    v24 = v9;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  v11 = +[SDActivityEncryptionManager sharedEncryptionManager];
  v12 = [v11 state];

  if (v12)
  {
    v25 = v12;
    NSAppendPrintF();
    v13 = v4;

    v4 = v13;
  }

  v14 = +[SDActivityPayloadManager sharedPayloadManager];
  v15 = [v14 state];

  if (v15)
  {
    NSAppendPrintF();
    v16 = v4;

    v4 = v16;
  }

  NSAppendPrintF();
  v17 = v4;

  if (v17)
  {
    v18 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:0];
    v19 = [v18 length];
    v20 = malloc_type_calloc(1uLL, v19 + 200, 0x1000040BEF03554uLL);
    v21 = v20;
    if (v20)
    {
      v20->var0 = 1;
      v20->var1.var1 = v19;
      __strlcpy_chk();
      memcpy(v21->var4, [v18 bytes], v19);
    }
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

  return v21;
}

- (id)state
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF();
  v5 = 0;

  NSAppendPrintF();
  v6 = v5;

  versionByte = self->_versionByte;
  NSAppendPrintF();
  v7 = v6;

  [(SDActivityController *)self shouldStart];
  NSAppendPrintF();
  v8 = v7;

  self->_isScanning;
  NSAppendPrintF();
  v9 = v8;

  scanTypes = self->_scanTypes;
  v11 = SFActivityScanTypesToString();
  NSAppendPrintF();
  v12 = v9;

  deviceIdentifierToLostDeviceTimers = self->_deviceIdentifierToLostDeviceTimers;
  NSAppendPrintF();
  v13 = v12;

  os_unfair_lock_lock(&self->_lock);
  deviceIdentifierToDeviceRecord = self->_deviceIdentifierToDeviceRecord;
  NSAppendPrintF();
  v14 = v13;

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

+ (id)sharedScanner
{
  if (qword_10098A2B8 != -1)
  {
    sub_100033478();
  }

  v3 = qword_10098A2B0;

  return v3;
}

- (SDActivityScanner)init
{
  v14.receiver = self;
  v14.super_class = SDActivityScanner;
  v2 = [(SDActivityController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v4;

    v3->_versionByte = sub_1001180B4(@"BluetoothAdvertiseScanVersionByte", 0);
    v3->_scanTypes = 0;
    v3->_isScanning = 0;
    os_unfair_lock_lock(&v3->_lock);
    v6 = objc_opt_new();
    deviceIdentifierToDeviceRecord = v3->_deviceIdentifierToDeviceRecord;
    v3->_deviceIdentifierToDeviceRecord = v6;

    os_unfair_lock_unlock(&v3->_lock);
    v8 = objc_opt_new();
    deviceIdentifierToLostDeviceTimers = v3->_deviceIdentifierToLostDeviceTimers;
    v3->_deviceIdentifierToLostDeviceTimers = v8;

    v10 = [[IDSContinuity alloc] initWithDelegate:v3 queue:&_dispatch_main_q];
    continuity = v3->_continuity;
    v3->_continuity = v10;

    [(SDActivityScanner *)v3 initializeStateCaptureBlock];
    [(SDActivityScanner *)v3 addObservers];
    v13.receiver = v3;
    v13.super_class = SDActivityScanner;
    [(SDXPCDaemon *)&v13 _activate];
  }

  return v3;
}

- (void)stop
{
  scanningTransaction = self->_scanningTransaction;
  self->_scanningTransaction = 0;

  self->_scannerEnabled = 0;

  [(SDActivityScanner *)self restart];
}

- (void)_createOSTransactionIfNeeded
{
  if (!self->_scanningTransaction)
  {
    v3 = os_transaction_create();
    scanningTransaction = self->_scanningTransaction;
    self->_scanningTransaction = v3;
  }
}

- (void)activityServiceDevicesChanged:(id)a3
{
  v4 = a3;
  v25 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v24 = v31;
    v8 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
    v9 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
    do
    {
      v10 = 0;
      v26 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = v8[666];
        os_unfair_lock_lock((self + v12));
        v13 = *(&self->super.super.super.isa + v9[671]);
        v14 = [v11 uniqueIDOverride];
        v15 = [v13 objectForKeyedSubscript:v14];

        os_unfair_lock_unlock((self + v12));
        if (v15)
        {
          [v15 setIdsDevice:v11];
          if ([v15 deviceTracked])
          {
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v31[0] = sub_10020EED8;
            v31[1] = &unk_1008D4408;
            v32 = v15;
            [(SDActivityScanner *)self _enumerateRemoteObjectProxiesUsingBlock:v30];
          }

          v16 = sub_100108EE8(v11);
          if (v16)
          {
            v17 = v7;
            v18 = v9;
            v19 = v8;
            v20 = +[SDActivityEncryptionManager sharedEncryptionManager];
            v21 = [v16 uniqueID];
            v22 = [v20 cachedDecryptionKeyForDeviceIdentifier:v21];

            if (v22)
            {
              [v16 setValidKey:{objc_msgSend(v22, "isValidKey")}];
              [v16 setKeyCounter:{objc_msgSend(v22, "lastUsedCounter")}];
            }

            [v25 addObject:v16];

            v8 = v19;
            v9 = v18;
            v7 = v17;
            v6 = v26;
          }
        }

        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10020EF3C;
  v28[3] = &unk_1008D4408;
  v29 = v25;
  v23 = v25;
  [(SDActivityScanner *)self _enumerateRemoteObjectProxiesUsingBlock:v28];
}

- (void)nearbyServiceDevicesChanged:(id)a3
{
  v4 = a3;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1002110BC(v4, v5);
  }

  if (![(SDActivityController *)self shouldStart])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isLocallyPaired] && (objc_msgSend(v11, "isNearby") & 1) == 0)
          {
            v12 = [v11 uniqueIDOverride];
            [(SDActivityScanner *)self didLosePeer:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)activeAdvertisementForDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = [v5 deviceTracked];
  }

  else
  {
    v6 = 0;
  }

  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "no";
    if (v6)
    {
      v8 = "yes";
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handoff active for device %@ : %s", &v10, 0x16u);
  }

  return v6;
}

- (id)remoteObjectInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFContinuityScannerClient];
  [v2 setClass:objc_opt_class() forSelector:"receivedAdvertisement:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"foundDeviceWithDevice:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"lostDeviceWithDevice:" argumentIndex:0 ofReply:0];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [NSSet setWithArray:v3];
  [v2 setClasses:v4 forSelector:"pairedDevicesChanged:" argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectionEstablished:(id)a3
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100211290();
  }

  if (!self->_scannerEnabled)
  {
    [(SDActivityScanner *)self start];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allValues];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 deviceTracked])
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_10020FB3C;
          v12[3] = &unk_1008D4408;
          v12[4] = v11;
          [(SDActivityScanner *)self _enumerateRemoteObjectProxiesUsingBlock:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)connectionInvalidated:(id)a3
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002112C4();
  }

  v5 = [(SDXPCDaemon *)self activeConnections];
  v6 = [v5 count];

  if (!v6)
  {
    [(SDActivityScanner *)self stop];
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"resetStateRequested:" name:@"com.apple.sharingd.ResetState" object:0];
  [v3 addObserver:self selector:"systemWillSleep:" name:@"com.apple.sharingd.SystemWillSleep" object:0];
  [v3 addObserver:self selector:"systemHasPoweredOn:" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
  [v3 addObserver:self selector:"consoleUserChanged:" name:@"com.apple.sharingd.ConsoleUserChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)systemWillSleep:(id)a3
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = getuid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Stopping for user %d on sleep", v5, 8u);
  }

  [(SDActivityScanner *)self stop];
}

- (void)systemHasPoweredOn:(id)a3
{
  if ([(SDStatusMonitor *)self->_monitor currentConsoleUser])
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = getuid();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting for user %d on wake", v5, 8u);
    }

    [(SDActivityScanner *)self start];
  }
}

- (void)consoleUserChanged:(id)a3
{
  v4 = [(SDStatusMonitor *)self->_monitor currentConsoleUser];
  v5 = handoff_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = 67109120;
      v8 = getuid();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting for user %d on login", &v7, 8u);
    }

    [(SDActivityScanner *)self start];
  }

  else
  {
    if (v6)
    {
      v7 = 67109120;
      v8 = getuid();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stopping for user %d on logout", &v7, 8u);
    }

    [(SDActivityScanner *)self stop];
  }
}

- (void)continuityDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  v6 = handoff_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (([v4 state] & 0x8000000000000000) != 0 || objc_msgSend(v4, "state") > 3)
    {
      v7 = "UnexpectedState";
    }

    else
    {
      v7 = off_1008D43E0[[v4 state]];
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did update state to %s", buf, 0xCu);
  }

  v8 = [v4 state];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v11 = handoff_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFE3C();
      }

      [(SDActivityScanner *)self lostAllDevices];
    }

    else if (v8 == 3)
    {
      v10 = handoff_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFE70();
      }

      [(SDActivityScanner *)self restart];
    }
  }

  else
  {
    if (!v8)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000CFDFC();
      }

      goto LABEL_19;
    }

    if (v8 == 1)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFDC8();
      }

LABEL_19:
    }
  }

  os_activity_scope_leave(&v12);
}

- (void)continuity:(id)a3 didStartScanningForType:(int64_t)a4
{
  v6 = a3;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v7, &v9);
  if (!a4)
  {
    self->_isScanning = 1;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1002112F8(a4, v8);
  }

  os_activity_scope_leave(&v9);
}

- (void)continuity:(id)a3 didStopScanningForType:(int64_t)a4
{
  v6 = a3;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidStopScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  if (!a4)
  {
    self->_isScanning = 0;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100211390(a4, v8);
  }

  scanningTransaction = self->_scanningTransaction;
  self->_scanningTransaction = 0;

  os_activity_scope_leave(&v10);
}

- (void)continuity:(id)a3 didFailToStartScanningForType:(int64_t)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidFailToStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v10, &v15);
  if (!a4)
  {
    self->_isScanning = 0;
  }

  v11 = handoff_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (a4 > 3)
    {
      v12 = "UnexpectedType";
    }

    else
    {
      v12 = off_1008D4450[a4];
    }

    v13 = [v9 localizedDescription];
    sub_100211428(v12, v13, buf, v11);
  }

  scanningTransaction = self->_scanningTransaction;
  self->_scanningTransaction = 0;

  os_activity_scope_leave(&v15);
}

- (void)continuity:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6
{
  v9 = a5;
  if (!a4)
  {
    v10 = [a6 UUIDString];
    v11 = [(SDActivityController *)self idsDeviceFromBTIdentifier:v10];
    if (v11)
    {
      [(SDActivityScanner *)self handleNewAdvertisementDevice:v11 data:v9 receivedViaScanning:1 withSuccessHandler:0];
    }

    else
    {
      v12 = handoff_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100211490(v10, v12);
      }
    }
  }
}

- (void)didLosePeer:(id)a3
{
  v4 = a3;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Lost IDS device %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if ([v6 deviceTracked])
  {
    [v6 setDeviceTracked:0];
    [(SDActivityScanner *)self postNotification:@"com.apple.sharingd.HandoffTrackedDevicesChanged"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002108BC;
    v17[3] = &unk_1008D4408;
    v18 = v6;
    [(SDActivityScanner *)self _enumerateRemoteObjectProxiesUsingBlock:v17];
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allValues];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * v12) deviceTracked])
        {

          goto LABEL_15;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(SDActivityScanner *)self restart];
LABEL_15:
}

- (void)lostAllDevices
{
  v3 = handoff_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100211508();
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allKeys];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_deviceIdentifierToLostDeviceTimers objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 fire];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didLosePeerTimer:(id)a3
{
  v5 = [a3 userInfo];
  [(NSMutableDictionary *)self->_deviceIdentifierToLostDeviceTimers removeObjectForKey:v5];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:v5];
  os_unfair_lock_unlock(&self->_lock);
  [v4 setDisableDuplicateFilterOnce:1];
  [(SDActivityScanner *)self didLosePeer:v5];
}

- (void)scanForTypes:(unint64_t)a3
{
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = SFActivityScanTypesToString();
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "requested scanning for %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100210C70;
  v7[3] = &unk_1008CFD30;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)activityPayloadFromDeviceUniqueID:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100210D98;
  block[3] = &unk_1008D4478;
  v19 = v11;
  v20 = v12;
  v22 = a7;
  v23 = a6;
  v21 = v13;
  v14 = v22;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)postNotification:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:v6 object:0 userInfo:v5];
}

@end