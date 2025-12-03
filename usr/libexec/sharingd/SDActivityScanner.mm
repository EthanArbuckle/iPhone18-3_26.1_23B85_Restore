@interface SDActivityScanner
+ (id)sharedScanner;
- (BOOL)activeAdvertisementForDeviceWithIdentifier:(id)identifier;
- (BOOL)restart;
- (SDActivityScanner)init;
- (id)remoteObjectInterface;
- (id)state;
- (os_state_data_s)dumpState;
- (void)_createOSTransactionIfNeeded;
- (void)activityPayloadFromDeviceUniqueID:(id)d forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler;
- (void)activityServiceDevicesChanged:(id)changed;
- (void)addObservers;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)consoleUserChanged:(id)changed;
- (void)continuity:(id)continuity didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer;
- (void)continuity:(id)continuity didFailToStartScanningForType:(int64_t)type withError:(id)error;
- (void)continuity:(id)continuity didStartScanningForType:(int64_t)type;
- (void)continuity:(id)continuity didStopScanningForType:(int64_t)type;
- (void)continuityDidUpdateState:(id)state;
- (void)didLosePeer:(id)peer;
- (void)didLosePeerTimer:(id)timer;
- (void)lostAllDevices;
- (void)nearbyServiceDevicesChanged:(id)changed;
- (void)postNotification:(id)notification userInfo:(id)info;
- (void)removeObservers;
- (void)scanForTypes:(unint64_t)types;
- (void)stop;
- (void)systemHasPoweredOn:(id)on;
- (void)systemWillSleep:(id)sleep;
@end

@implementation SDActivityScanner

- (BOOL)restart
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldStart = [(SDActivityController *)selfCopy shouldStart];
  shouldScanForCopyPaste = [(SDActivityScanner *)selfCopy shouldScanForCopyPaste];
  shouldScanForHandoff = [(SDActivityScanner *)selfCopy shouldScanForHandoff];
  if (selfCopy->_scannerEnabled && (([(IDSContinuity *)selfCopy->_continuity state]== 3) & shouldStart) == 1 && ((shouldScanForCopyPaste | shouldScanForHandoff) & 1) != 0)
  {
    [(SDActivityScanner *)selfCopy _createOSTransactionIfNeeded];
    allPeerBTIdentifiers = [(SDActivityController *)selfCopy allPeerBTIdentifiers];
    if (shouldScanForHandoff & 1 | ((shouldScanForCopyPaste & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSMutableData dataWithCapacity:14];
      [v7 setLength:14];
      *[v7 mutableBytes] = 8;
    }

    shouldBoostScan = [(SDActivityScanner *)selfCopy shouldBoostScan];
    os_unfair_lock_lock(&selfCopy->_lock);
    allValues = [(NSMutableDictionary *)selfCopy->_deviceIdentifierToDeviceRecord allValues];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = allValues;
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
      v28 = allPeerBTIdentifiers;
      if (shouldScanForHandoff)
      {
        v29 = @" Handoff";
      }

      else
      {
        v29 = &stru_1008EFBD0;
      }

      if (shouldScanForCopyPaste)
      {
        v30 = @" CopyPaste";
      }

      else
      {
        v30 = &stru_1008EFBD0;
      }

      if (shouldBoostScan)
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

      allPeerBTIdentifiers = v40;
      v7 = v39;
    }

    LOBYTE(v38) = v26;
    [(IDSContinuity *)selfCopy->_continuity startScanningForType:0 withData:v7 mask:v7 peers:allPeerBTIdentifiers withOptions:0 boostedScan:shouldBoostScan duplicates:v38];
    stopScanLostDeviceTimer = selfCopy->_stopScanLostDeviceTimer;
    if (stopScanLostDeviceTimer)
    {
      dispatch_source_cancel(stopScanLostDeviceTimer);
      v36 = selfCopy->_stopScanLostDeviceTimer;
      selfCopy->_stopScanLostDeviceTimer = 0;
    }

    v20 = 1;
  }

  else
  {
    if (selfCopy->_isScanning)
    {
      v8 = @"Stopped";
    }

    else
    {
      v8 = @"Skipping request for";
    }

    allPeerBTIdentifiers = v8;
    v9 = handoff_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v41 = shouldScanForHandoff;
      if (selfCopy->_scannerEnabled)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (([(IDSContinuity *)selfCopy->_continuity state]& 0x8000000000000000) != 0 || [(IDSContinuity *)selfCopy->_continuity state]> 3)
      {
        v11 = "UnexpectedState";
      }

      else
      {
        v11 = off_1008D43E0[[(IDSContinuity *)selfCopy->_continuity state]];
      }

      if (shouldStart)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138413570;
      if (shouldScanForCopyPaste)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&buf[4] = allPeerBTIdentifiers;
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

    if (selfCopy->_isScanning)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_10020EAFC;
      *v50 = sub_10020EB0C;
      *&v50[8] = selfCopy->_scanningTransaction;
      [(IDSContinuity *)selfCopy->_continuity stopScanningForType:0];
      v15 = selfCopy->_stopScanLostDeviceTimer;
      if (!v15)
      {
        v16 = &_dispatch_main_q;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10020EB14;
        v43[3] = &unk_1008CE0B8;
        v43[4] = selfCopy;
        v43[5] = buf;
        v17 = sub_1001F0548(0, &_dispatch_main_q, v43);
        v18 = selfCopy->_stopScanLostDeviceTimer;
        selfCopy->_stopScanLostDeviceTimer = v17;

        dispatch_resume(selfCopy->_stopScanLostDeviceTimer);
        v15 = selfCopy->_stopScanLostDeviceTimer;
      }

      v19 = sub_1001F0530(10.0);
      sub_1001F05F0(v15, v19);
      _Block_object_dispose(buf, 8);
    }

    v20 = 0;
  }

  objc_sync_exit(selfCopy);
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
  state = [(SDActivityScanner *)self state];
  v6 = state;
  if (state)
  {
    v23 = state;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  v8 = +[SDActivityAdvertiser sharedAdvertiser];
  state2 = [v8 state];

  if (state2)
  {
    v24 = state2;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  v11 = +[SDActivityEncryptionManager sharedEncryptionManager];
  state3 = [v11 state];

  if (state3)
  {
    v25 = state3;
    NSAppendPrintF();
    v13 = v4;

    v4 = v13;
  }

  v14 = +[SDActivityPayloadManager sharedPayloadManager];
  state4 = [v14 state];

  if (state4)
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

- (void)activityServiceDevicesChanged:(id)changed
{
  changedCopy = changed;
  v25 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = changedCopy;
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
        uniqueIDOverride = [v11 uniqueIDOverride];
        v15 = [v13 objectForKeyedSubscript:uniqueIDOverride];

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
            uniqueID = [v16 uniqueID];
            v22 = [v20 cachedDecryptionKeyForDeviceIdentifier:uniqueID];

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

- (void)nearbyServiceDevicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1002110BC(changedCopy, v5);
  }

  if (![(SDActivityController *)self shouldStart])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = changedCopy;
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
            uniqueIDOverride = [v11 uniqueIDOverride];
            [(SDActivityScanner *)self didLosePeer:uniqueIDOverride];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)activeAdvertisementForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    deviceTracked = [v5 deviceTracked];
  }

  else
  {
    deviceTracked = 0;
  }

  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "no";
    if (deviceTracked)
    {
      v8 = "yes";
    }

    v10 = 138412546;
    v11 = identifierCopy;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handoff active for device %@ : %s", &v10, 0x16u);
  }

  return deviceTracked;
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

- (void)connectionEstablished:(id)established
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
  allValues = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allValues];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = allValues;
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

- (void)connectionInvalidated:(id)invalidated
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002112C4();
  }

  activeConnections = [(SDXPCDaemon *)self activeConnections];
  v6 = [activeConnections count];

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

- (void)systemWillSleep:(id)sleep
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

- (void)systemHasPoweredOn:(id)on
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

- (void)consoleUserChanged:(id)changed
{
  currentConsoleUser = [(SDStatusMonitor *)self->_monitor currentConsoleUser];
  v5 = handoff_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (currentConsoleUser)
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

- (void)continuityDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  v6 = handoff_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 3)
    {
      v7 = "UnexpectedState";
    }

    else
    {
      v7 = off_1008D43E0[[stateCopy state]];
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did update state to %s", buf, 0xCu);
  }

  state = [stateCopy state];
  if (state > 1)
  {
    if (state == 2)
    {
      v11 = handoff_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFE3C();
      }

      [(SDActivityScanner *)self lostAllDevices];
    }

    else if (state == 3)
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
    if (!state)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000CFDFC();
      }

      goto LABEL_19;
    }

    if (state == 1)
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

- (void)continuity:(id)continuity didStartScanningForType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v7, &v9);
  if (!type)
  {
    self->_isScanning = 1;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1002112F8(type, v8);
  }

  os_activity_scope_leave(&v9);
}

- (void)continuity:(id)continuity didStopScanningForType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidStopScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  if (!type)
  {
    self->_isScanning = 0;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100211390(type, v8);
  }

  scanningTransaction = self->_scanningTransaction;
  self->_scanningTransaction = 0;

  os_activity_scope_leave(&v10);
}

- (void)continuity:(id)continuity didFailToStartScanningForType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityScanner/continuityDidFailToStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v10, &v15);
  if (!type)
  {
    self->_isScanning = 0;
  }

  v11 = handoff_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (type > 3)
    {
      v12 = "UnexpectedType";
    }

    else
    {
      v12 = off_1008D4450[type];
    }

    localizedDescription = [errorCopy localizedDescription];
    sub_100211428(v12, localizedDescription, buf, v11);
  }

  scanningTransaction = self->_scanningTransaction;
  self->_scanningTransaction = 0;

  os_activity_scope_leave(&v15);
}

- (void)continuity:(id)continuity didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  if (!type)
  {
    uUIDString = [peer UUIDString];
    v11 = [(SDActivityController *)self idsDeviceFromBTIdentifier:uUIDString];
    if (v11)
    {
      [(SDActivityScanner *)self handleNewAdvertisementDevice:v11 data:dataCopy receivedViaScanning:1 withSuccessHandler:0];
    }

    else
    {
      v12 = handoff_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100211490(uUIDString, v12);
      }
    }
  }
}

- (void)didLosePeer:(id)peer
{
  peerCopy = peer;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = peerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Lost IDS device %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:peerCopy];
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
  allValues = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allValues];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = allValues;
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
  allKeys = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord allKeys];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = allKeys;
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

- (void)didLosePeerTimer:(id)timer
{
  userInfo = [timer userInfo];
  [(NSMutableDictionary *)self->_deviceIdentifierToLostDeviceTimers removeObjectForKey:userInfo];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_deviceIdentifierToDeviceRecord objectForKeyedSubscript:userInfo];
  os_unfair_lock_unlock(&self->_lock);
  [v4 setDisableDuplicateFilterOnce:1];
  [(SDActivityScanner *)self didLosePeer:userInfo];
}

- (void)scanForTypes:(unint64_t)types
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
  v7[5] = types;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)activityPayloadFromDeviceUniqueID:(id)d forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler
{
  dCopy = d;
  payloadCopy = payload;
  commandCopy = command;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100210D98;
  block[3] = &unk_1008D4478;
  v19 = dCopy;
  v20 = payloadCopy;
  handlerCopy = handler;
  timeoutCopy = timeout;
  v21 = commandCopy;
  v14 = handlerCopy;
  v15 = commandCopy;
  v16 = payloadCopy;
  v17 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)postNotification:(id)notification userInfo:(id)info
{
  infoCopy = info;
  notificationCopy = notification;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:notificationCopy object:0 userInfo:infoCopy];
}

@end