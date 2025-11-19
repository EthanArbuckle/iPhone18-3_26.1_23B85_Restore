@interface SDAutoUnlockTransport
+ (id)sharedTransport;
- (BOOL)activityServiceHasWatch;
- (BOOL)appleWatchExisted;
- (BOOL)canRetryCloudPairingForDeviceID:(id)a3 useShortDate:(BOOL)a4;
- (BOOL)deviceNearby;
- (BOOL)isDeviceSatellitePaired;
- (BOOL)localDeviceIDSRegistered;
- (BOOL)macVersionEligibleForDeviceID:(id)a3;
- (BOOL)pairingRequestIsValidForDeviceID:(id)a3 messageContext:(id)a4;
- (BOOL)watchSeenRecently;
- (BOOL)watchVersionEligibleForDevice:(id)a3;
- (NSDate)lastSeenWatchDate;
- (NSNumber)watchCurrentlyInList;
- (NSNumber)watchExistedInUnlockList;
- (SDAutoUnlockTransport)init;
- (SDAutoUnlockTransportClient)primaryClient;
- (id)activeDevice;
- (id)approveBluetoothIDs;
- (id)autoUnlockDeviceForDeviceID:(id)a3;
- (id)autoUnlockDeviceForIDSDevice:(id)a3 cloudPaired:(BOOL)a4 cached:(BOOL)a5;
- (id)autoUnlockEligibleDevicesWithCloudPairing:(BOOL)a3 deviceType:(int64_t)a4;
- (id)bluetoothDeviceIdentifiers;
- (id)bluetoothIDForIDSID:(id)a3;
- (id)cachedIDSDeviceIDsForBluetoothID:(id)a3;
- (id)connectionCacheDevices;
- (id)dataFromUUID:(id)a3;
- (id)deviceNameForDeviceID:(id)a3;
- (id)devicesWithLTKs;
- (id)enabledAutoUnlockDevicesUsingCache:(BOOL)a3;
- (id)enabledAutoUnlockLockDevices;
- (id)idsDeviceForBluetoothID:(id)a3;
- (id)idsDeviceForUniqueID:(id)a3;
- (id)idsDeviceIDsForBluetoothID:(id)a3;
- (id)idsDevicesIDs;
- (id)idsMacDeviceIDs;
- (id)modelIdentifierForDeviceID:(id)a3;
- (id)modelNameForDevice:(id)a3;
- (id)nameForDevice:(id)a3;
- (id)nanoRegistryDeviceForBluetoothIdentifier:(id)a3;
- (id)onqueue_bluetoothDeviceIdentifiers;
- (id)onqueue_bluetoothIDForIDSID:(id)a3;
- (id)onqueue_devicesWithLTKs;
- (id)onqueue_enabledAutoUnlockDevicesUsingCache:(BOOL)a3;
- (id)pairedAutoUnlockDevice;
- (id)pairedDeviceID;
- (id)placeholderDevice;
- (id)proxyBluetoothDeviceIDForDeviceID:(id)a3;
- (id)stableBluetoothIdentifierForIDSDevice:(id)a3;
- (id)state;
- (id)transferDataFromPayload:(id)a3 sessionID:(id)a4;
- (int64_t)deviceTypeForDevice:(id)a3;
- (int64_t)deviceTypeForDeviceID:(id)a3;
- (void)addClient:(id)a3 forIdentifer:(id)a4;
- (void)clearAutoUnlockDeviceCache;
- (void)handleSuccessfulMessageSentWithIdentifier:(id)a3 sessionID:(id)a4;
- (void)loadCloudPairRetries;
- (void)logBluetoothIDCache;
- (void)logDevices;
- (void)removeClientForIdentifier:(id)a3;
- (void)resetAppleWatchExisted;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)setLastSeenWatchDate:(id)a3;
- (void)setWatchCurrentlyInList:(id)a3;
- (void)setWatchExistedInUnlockList:(id)a3;
- (void)updateApproveBluetoothIDs;
- (void)updateBluetoothIDCache;
- (void)updateRetryDatesForDeviceIDs:(id)a3;
@end

@implementation SDAutoUnlockTransport

+ (id)sharedTransport
{
  if (qword_10098A170 != -1)
  {
    sub_1001D5660();
  }

  v3 = qword_10098A168;

  return v3;
}

- (id)activeDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SDAutoUnlockTransport *)self idsService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)updateApproveBluetoothIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  [(SDAutoUnlockTransport *)v2 enabledAutoUnlockDevices];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 supportsApproveWithWatch])
        {
          v9 = [v8 bluetoothID];
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v10 = [(SDAutoUnlockTransport *)v2 cachedApproveBluetoothIDs];
  [(SDAutoUnlockTransport *)v2 setCachedApproveBluetoothIDs:v3];

  objc_sync_exit(v2);
  v11 = [(SDAutoUnlockTransport *)v2 cachedApproveBluetoothIDs];
  v12 = [v10 isEqualToSet:v11];

  if ((v12 & 1) == 0)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(SDAutoUnlockTransport *)v2 cachedApproveBluetoothIDs];
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated approve bluetooth IDs: %@", buf, 0xCu);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"ApproveBluetoothIDsChanged" object:0];
  }
}

- (BOOL)deviceNearby
{
  v2 = [(SDAutoUnlockTransport *)self activeDevice];
  v3 = [v2 isNearby];

  return v3;
}

- (id)devicesWithLTKs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001D0070;
  v11 = sub_1001D0080;
  v12 = objc_opt_new();
  v3 = [(SDAutoUnlockTransport *)self transportQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000255F8;
  v6[3] = &unk_1008D0168;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)onqueue_devicesWithLTKs
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

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

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = +[SDAutoUnlockAKSManager sharedManager];
        v12 = [v10 uniqueIDOverride];
        v13 = [v11 ltkExistsForKeyDevice:v12];

        if (v13)
        {
          v14 = [v10 uniqueIDOverride];
          [v3 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)state
{
  v46 = 0;
  v3 = objc_opt_class();
  v29 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  v45 = v4;
  NSAppendPrintF();
  v5 = v4;

  v6 = objc_alloc_init(NSMutableSet);
  if (SFDeviceClassCodeGet() == 1)
  {
    v7 = self;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    if (SFDeviceClassCodeGet() != 8)
    {
      goto LABEL_6;
    }

    v7 = self;
    v8 = 1;
    v9 = 2;
  }

  v10 = [(SDAutoUnlockTransport *)v7 autoUnlockEligibleDevicesWithCloudPairing:v8 deviceType:v9, v29];
  [v6 unionSet:v10];

LABEL_6:
  v44 = v5;
  NSAppendPrintF();
  v11 = v5;

  v43 = v11;
  NSAppendPrintF();
  v12 = v11;

  v42 = v12;
  NSAppendPrintF();
  v13 = v12;

  v41 = v13;
  NSAppendPrintF();
  v14 = v13;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [(SDAutoUnlockTransport *)self idsService];
  v16 = [v15 devices];

  v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v35 = v6;
    obj = v16;
    v19 = *v38;
    v20 = v14;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 name];
        v24 = [v22 uniqueID];
        v25 = [v22 modelIdentifier];
        v26 = [v22 productBuildVersion];
        [v22 nsuuid];
        v34 = v33 = v26;
        v31 = v24;
        v32 = v25;
        v30 = v23;
        NSAppendPrintF();
        v27 = v20;

        NSAppendPrintF();
        v20 = v27;
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:{16, v23, v24, v25, v26, v34}];
    }

    while (v18);
    v14 = obj;
    v6 = v35;
  }

  else
  {

    NSAppendPrintF();
    v20 = v14;
  }

  return v20;
}

- (void)clearAutoUnlockDeviceCache
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing Auto Unlock device cache", v5, 2u);
  }

  v4 = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
  [v4 removeAllObjects];
}

- (NSDate)lastSeenWatchDate
{
  lastSeenWatchDate = self->_lastSeenWatchDate;
  if (!lastSeenWatchDate)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:@"AutoUnlockLastSeenWatchDate"];
    v6 = self->_lastSeenWatchDate;
    self->_lastSeenWatchDate = v5;

    if (self->_lastSeenWatchDate)
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_lastSeenWatchDate;
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded lastSeenWatchDate %@", &v10, 0xCu);
      }

      lastSeenWatchDate = self->_lastSeenWatchDate;
    }

    else
    {
      lastSeenWatchDate = 0;
    }
  }

  return lastSeenWatchDate;
}

- (BOOL)activityServiceHasWatch
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(SDAutoUnlockTransport *)self activityService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *v15;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * i);
      v9 = [v8 modelIdentifier];
      v10 = [v9 lowercaseString];
      if (![v10 containsString:@"watch"])
      {
        goto LABEL_11;
      }

      if (!v8)
      {
        v13 = 0;
LABEL_11:

        continue;
      }

      [v8 operatingSystemVersion];

      if (v13 > 2)
      {
        v11 = 1;
        goto LABEL_15;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v5);
LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

- (SDAutoUnlockTransport)init
{
  v24.receiver = self;
  v24.super_class = SDAutoUnlockTransport;
  v2 = [(SDUnlockTransport *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sendDates = v2->_sendDates;
    v2->_sendDates = v3;

    v5 = objc_opt_new();
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v5;

    v7 = objc_opt_new();
    autoUnlockDeviceCache = v2->_autoUnlockDeviceCache;
    v2->_autoUnlockDeviceCache = v7;

    v9 = objc_opt_new();
    sendIdentifierToSessionID = v2->_sendIdentifierToSessionID;
    v2->_sendIdentifierToSessionID = v9;

    v11 = [[NSMapTable alloc] initWithKeyOptions:0x10000 valueOptions:5 capacity:0];
    clientMap = v2->_clientMap;
    v2->_clientMap = v11;

    v13 = dispatch_queue_create("com.apple.sharingd.auto-unlock.transport-client-queue", 0);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v13;

    v15 = dispatch_queue_create("com.apple.sharingd.auto-unlock.transport-queue", 0);
    transportQueue = v2->_transportQueue;
    v2->_transportQueue = v15;

    v17 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.unlock"];
    idsService = v2->_idsService;
    v2->_idsService = v17;

    v19 = v2->_idsService;
    v20 = [(SDAutoUnlockTransport *)v2 transportQueue];
    [(IDSService *)v19 addDelegate:v2 queue:v20];

    v21 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.activity"];
    activityService = v2->_activityService;
    v2->_activityService = v21;

    objc_storeStrong(&v2->_autoUnlockService, v2->_idsService);
    [(SDAutoUnlockTransport *)v2 loadCloudPairRetries];
    [(SDAutoUnlockTransport *)v2 updateBluetoothIDCache];
  }

  return v2;
}

- (void)addClient:(id)a3 forIdentifer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFAF0;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeClientForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockTransport *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CFBF8;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)logDevices
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SDAutoUnlockTransport *)self idsService];
    v5 = [v4 devices];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDS Devices: %@", &v6, 0xCu);
  }
}

- (id)bluetoothIDForIDSID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001D0070;
  v16 = sub_1001D0080;
  v17 = 0;
  v5 = [(SDAutoUnlockTransport *)self transportQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D0088;
  block[3] = &unk_1008D1580;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)onqueue_bluetoothIDForIDSID:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(SDAutoUnlockTransport *)self idsService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 uniqueID];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v15 = [v12 nsuuid];

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bluetoothDeviceIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001D0070;
  v11 = sub_1001D0080;
  v12 = &__NSArray0__struct;
  v3 = [(SDAutoUnlockTransport *)self transportQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D0378;
  v6[3] = &unk_1008D0168;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)onqueue_bluetoothDeviceIdentifiers
{
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 nsuuid];
        if ([v10 supportsHandoff])
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)pairedDeviceID
{
  v2 = [(SDAutoUnlockTransport *)self activeDevice];
  v3 = [v2 uniqueIDOverride];

  return v3;
}

- (id)pairedAutoUnlockDevice
{
  v3 = [(SDAutoUnlockTransport *)self activeDevice];
  v4 = [(SDAutoUnlockTransport *)self autoUnlockDeviceForIDSDevice:v3];

  return v4;
}

- (BOOL)isDeviceSatellitePaired
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  LOBYTE(v3) = [v6 BOOLValue];

  return v3;
}

- (id)idsDevicesIDs
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) uniqueIDOverride];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)idsMacDeviceIDs
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

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

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 modelIdentifier];
        v12 = [v11 lowercaseString];
        v13 = [v12 containsString:@"mac"];

        if (v13)
        {
          v14 = [v10 uniqueIDOverride];
          [v3 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)deviceNameForDeviceID:(id)a3
{
  v3 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:a3];
  v4 = [v3 name];

  return v4;
}

- (int64_t)deviceTypeForDeviceID:(id)a3
{
  v4 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:a3];
  v5 = [(SDAutoUnlockTransport *)self deviceTypeForDevice:v4];

  return v5;
}

- (int64_t)deviceTypeForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 modelIdentifier];
  v5 = [v4 lowercaseString];
  v6 = [v5 containsString:@"watch"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 modelIdentifier];
    v9 = [v8 lowercaseString];
    v10 = [v9 containsString:@"iphone"];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      v11 = [v3 modelIdentifier];
      v12 = [v11 lowercaseString];
      v13 = [v12 containsString:@"ipad"];

      if (v13)
      {
        v7 = 3;
      }

      else
      {
        v14 = [v3 modelIdentifier];
        v15 = [v14 lowercaseString];
        v16 = [v15 containsString:@"reality"];

        if (v16)
        {
          v7 = 5;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  return v7;
}

- (id)modelIdentifierForDeviceID:(id)a3
{
  v3 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:a3];
  v4 = [v3 modelIdentifier];

  return v4;
}

- (id)autoUnlockDeviceForDeviceID:(id)a3
{
  v4 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:a3];
  if (v4)
  {
    v5 = [(SDAutoUnlockTransport *)self autoUnlockDeviceForIDSDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)autoUnlockEligibleDevicesWithCloudPairing:(BOOL)a3 deviceType:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001D0070;
  v16 = sub_1001D0080;
  v17 = objc_opt_new();
  v7 = [(SDAutoUnlockTransport *)self transportQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D0D98;
  v10[3] = &unk_1008D3548;
  v10[4] = self;
  v10[5] = &v12;
  v11 = a3;
  v10[6] = a4;
  dispatch_sync(v7, v10);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)enabledAutoUnlockDevicesUsingCache:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001D0070;
  v14 = sub_1001D0080;
  v15 = objc_opt_new();
  v5 = [(SDAutoUnlockTransport *)self transportQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1550;
  block[3] = &unk_1008D3570;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)onqueue_enabledAutoUnlockDevicesUsingCache:(BOOL)a3
{
  v26 = a3;
  v25 = sub_10000C2C4(@"AUDeviceBlackList");
  v24 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 138412290;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = +[SDAutoUnlockAKSManager sharedManager];
        v13 = [v11 uniqueIDOverride];
        v14 = [v12 ltkExistsForKeyDevice:v13 updateLTKs:0];

        if (v14)
        {
          v15 = [(SDAutoUnlockTransport *)self autoUnlockDeviceForIDSDevice:v11 cloudPaired:1 cached:v26];
          v16 = v15;
          if (v15 && [v15 unlockEnabled])
          {
            v17 = [v16 uniqueID];
            v18 = [v25 containsObject:v17];

            if (v18)
            {
              v19 = auto_unlock_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [v16 uniqueID];
                *buf = v23;
                v32 = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping enabled device in blacklist (device ID: %@)", buf, 0xCu);
              }
            }

            else
            {
              [v24 addObject:v16];
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v21 = [v24 copy];

  return v21;
}

- (id)enabledAutoUnlockLockDevices
{
  v3 = objc_opt_new();
  v4 = [(SDAutoUnlockTransport *)self transportQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001D18FC;
  v11 = &unk_1008CE028;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(v4, &v8);

  v6 = [v5 copy];

  return v6;
}

- (id)autoUnlockDeviceForIDSDevice:(id)a3 cloudPaired:(BOOL)a4 cached:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(SDAutoUnlockTransport *)self stableBluetoothIdentifierForIDSDevice:v8];
  v10 = [(SDAutoUnlockTransport *)self nameForDevice:v8];
  if (!v8 || ([v8 uniqueIDOverride], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v20 = auto_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1001D5810(v20);
    }

    goto LABEL_16;
  }

  if ([v8 deviceType] == 6)
  {
    if (([v8 isLocallyPaired] & 1) == 0)
    {
      v20 = auto_unlock_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D56B4();
      }

      goto LABEL_16;
    }

    v12 = [v8 modelIdentifier];
    v13 = sub_1001123D8(v12);

    if (!v13)
    {
      v20 = auto_unlock_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D5728();
      }

      goto LABEL_16;
    }

    v14 = [v9 UUIDString];
    v15 = [(SDAutoUnlockTransport *)self nanoRegistryDeviceForBluetoothIdentifier:v14];

    v16 = [v15 valueForProperty:NRDevicePropertyName];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v10;
    }

    v19 = v18;

    v10 = v19;
  }

  if (v6 && !v9)
  {
    v20 = auto_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1001D579C();
    }

LABEL_16:
    v21 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (v5)
  {
    v23 = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
    v24 = [v8 uniqueIDOverride];
    v21 = [v23 objectForKeyedSubscript:v24];

    v25 = auto_unlock_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v21;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Using cached device: %@", buf, 0xCu);
    }

    if (v21)
    {
      goto LABEL_49;
    }
  }

  v21 = objc_opt_new();
  v26 = [v8 uniqueIDOverride];
  [v21 setUniqueID:v26];

  [v21 setBluetoothID:v9];
  v27 = [v8 modelIdentifier];
  [v21 setModelIdentifier:v27];

  v28 = [v8 productName];
  [v21 setProductName:v28];

  v29 = [v8 productVersion];
  [v21 setProductVersion:v29];

  v30 = [v8 productBuildVersion];
  [v21 setProductBuildVersion:v30];

  [v21 setName:v10];
  v31 = [v8 enclosureColor];
  [v21 setEnclosureColor:v31];

  [v21 setDefaultPairedDevice:{objc_msgSend(v8, "isDefaultPairedDevice")}];
  v32 = [(SDAutoUnlockTransport *)self modelNameForDevice:v8];
  [v21 setModelName:v32];

  [v8 operatingSystemVersion];
  [v8 operatingSystemVersion];
  v33 = v59 > 3 && v60 == 7;
  v34 = v60 > 7 || v33;
  [v21 setMajorOSVersion:v60];
  [v21 setSupportsAlwaysDirect:?];
  v35 = [v8 modelIdentifier];
  v36 = sub_100112424(v35);
  v58 = [v36 integerValue];

  v37 = v58 > 2 ? v34 : 0;
  [v21 setSupportsApproveWithWatch:v37];
  v38 = sub_10000C1F8(@"AUForceApproveLabel", 0);
  v39 = [v21 supportsApproveWithWatch];
  v40 = v38 ? 0 : v39;
  [v21 setSupportsApproveIcon:v40];
  v41 = +[SDAutoUnlockAKSManager sharedManager];
  v42 = [v8 uniqueIDOverride];
  v57 = [v41 sessionKeyExistsForDeviceID:v42];

  v43 = +[SDAutoUnlockAKSManager sharedManager];
  v44 = [v43 deviceIDsMissingSessionKey];
  v45 = [v8 uniqueIDOverride];
  v46 = [v44 containsObject:v45];

  [v21 setSupportsEncryption:{v57 & ~-[SDAutoUnlockTransport disableEncryption](self, "disableEncryption") & (v60 > 3) & (v46 ^ 1)}];
  [v21 setSupportsAdvertisingUnlocked:v60 > 4];
  v47 = sub_100111B70();
  v48 = v60 > 6 ? v47 : 0;
  [v21 setSupportsConnectionCache:v48];
  [v21 setSupportsHEIC:v58 > 3];
  v49 = +[SDAutoUnlockAKSManager sharedManager];
  v50 = [v8 uniqueIDOverride];
  v51 = [v49 deviceEnabledAsKeyForIDSDeviceID:v50];

  [v21 setCanUnlockDevice:v51];
  v52 = +[SDAutoUnlockAKSManager sharedManager];
  v53 = [v8 uniqueIDOverride];
  v54 = [v52 deviceEnabledAsKey:v53];

  [v21 setUnlockEnabled:v54];
  if (!v9)
  {
    goto LABEL_47;
  }

  if (v54)
  {
    v55 = [v21 proxyBluetoothID];
    [v21 setBluetoothCloudPaired:v55 != 0];
  }

  else
  {
LABEL_47:
    [v21 setBluetoothCloudPaired:v9 != 0];
  }

  if (v21)
  {
LABEL_49:
    v20 = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
    v56 = [v21 uniqueID];
    [v20 setObject:v21 forKeyedSubscript:v56];

    goto LABEL_17;
  }

LABEL_18:

  return v21;
}

- (id)approveBluetoothIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDAutoUnlockTransport *)v2 cachedApproveBluetoothIDs];

  if (!v3)
  {
    [(SDAutoUnlockTransport *)v2 updateApproveBluetoothIDs];
  }

  v4 = [(SDAutoUnlockTransport *)v2 cachedApproveBluetoothIDs];
  objc_sync_exit(v2);

  return v4;
}

- (id)modelNameForDevice:(id)a3
{
  v3 = [(SDAutoUnlockTransport *)self deviceTypeForDevice:a3];
  if ((v3 - 1) > 3)
  {
    return &stru_1008EFBD0;
  }

  else
  {
    return off_1008D35B8[v3 - 1];
  }
}

- (BOOL)watchVersionEligibleForDevice:(id)a3
{
  v3 = a3;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      [v3 operatingSystemVersion];
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    *buf = 67109120;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device version: %d", buf, 8u);
  }

  if (v3)
  {
    [v3 operatingSystemVersion];
    v6 = v8 > 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)macVersionEligibleForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:v4];
  v6 = [v5 modelIdentifier];
  v7 = GestaltProductTypeStringToDeviceClass();

  v8 = auto_unlock_log();
  v9 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001D58F0();
    }

    goto LABEL_17;
  }

  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v5 operatingSystemVersion];
      [v5 operatingSystemVersion];
      *buf = 67109376;
      v23 = v16;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote iOS major version: %d and minor version: %d", buf, 0xEu);
    }

    [v5 operatingSystemVersion];
    if (v14 <= 14)
    {
      [v5 operatingSystemVersion];
      if (v13 == 14)
      {
        [v5 operatingSystemVersion];
        v10 = v12 >= 0;
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_14:
    v10 = 1;
    goto LABEL_19;
  }

  if (v7 != 100)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001D5854(v4, v7, v9);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [v5 operatingSystemVersion];
    [v5 operatingSystemVersion];
    *buf = 67109376;
    v23 = v21;
    v24 = 1024;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote MacOS major version: %d and minor version: %d", buf, 0xEu);
  }

  [v5 operatingSystemVersion];
  if (v19 > 10)
  {
    goto LABEL_14;
  }

  [v5 operatingSystemVersion];
  if (v18 != 10)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  [v5 operatingSystemVersion];
  v10 = v17 > 12;
LABEL_19:

  return v10;
}

- (id)nameForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if ([(SDAutoUnlockTransport *)self showIDInName])
  {
    v6 = [v4 name];
    v7 = [v4 uniqueIDOverride];
    v8 = [NSString stringWithFormat:@"%@ (%@)", v6, v7];

    v5 = v8;
  }

  return v5;
}

- (id)proxyBluetoothDeviceIDForDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  v6 = [v5 companionIDForWatchID:v4];

  if (v6)
  {
    v7 = [(SDAutoUnlockTransport *)self onqueue_bluetoothIDForIDSID:v6];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001D5964(v8);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)idsDeviceForUniqueID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SDAutoUnlockTransport *)self idsService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uniqueIDOverride];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)idsDeviceForBluetoothID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SDAutoUnlockTransport *)self idsService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 nsuuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)idsDeviceIDsForBluetoothID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SDAutoUnlockTransport *)self idsService];
  v7 = [v6 devices];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 nsuuid];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = [v12 uniqueIDOverride];
          [v5 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)cachedIDSDeviceIDsForBluetoothID:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)logBluetoothIDCache
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth ID cache %@", &v5, 0xCu);
  }
}

- (void)updateBluetoothIDCache
{
  v3 = +[NSMutableDictionary dictionary];
  [(SDAutoUnlockTransport *)self setCachedBluetoothIDToUniqueIDs:v3];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(SDAutoUnlockTransport *)self idsService];
  v5 = [v4 devices];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(SDAutoUnlockTransport *)self stableBluetoothIdentifierForIDSDevice:v10];
        v12 = [v10 uniqueIDOverride];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
          v16 = [v15 objectForKeyedSubscript:v11];
          v17 = [v16 mutableCopy];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = +[NSMutableArray array];
          }

          v20 = v19;

          [v20 addObject:v13];
          v21 = [v20 copy];
          v22 = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
          [v22 setObject:v21 forKeyedSubscript:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = auto_unlock_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated bluetooth ID cache", buf, 2u);
  }
}

- (id)placeholderDevice
{
  v2 = objc_opt_new();
  [v2 setUniqueID:@"5EAFD122-F291-4D56-B1F9-D856CBBC7E0C"];
  [v2 setBluetoothID:0];
  [v2 setModelIdentifier:{@"Watch0, 0"}];
  [v2 setProductName:@"Watch OS"];
  [v2 setProductVersion:@"0.0"];
  [v2 setProductBuildVersion:@"14S000"];
  [v2 setName:@"Placeholder"];
  [v2 setEnclosureColor:@"0"];
  [v2 setDefaultPairedDevice:0];
  [v2 setModelName:@"Apple Watch"];
  [v2 setProxyBluetoothID:0];
  [v2 setUnlockEnabled:0];
  [v2 setBluetoothCloudPaired:0];
  [v2 setPlaceholder:1];

  return v2;
}

- (BOOL)localDeviceIDSRegistered
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(SDAutoUnlockTransport *)self idsService];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 registrationStatus];
    *buf = 67109120;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDS registration status: %d", buf, 8u);
  }

  v13 = [v6 registrationStatus] == 5;
  return v13;
}

- (id)connectionCacheDevices
{
  v3 = objc_opt_new();
  v4 = [(SDAutoUnlockTransport *)self enabledAutoUnlockDevices];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsConnectionCache])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nanoRegistryDeviceForBluetoothIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getAllDevices];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = _NRDevicePropertyBluetoothIdentifier;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 valueForProperty:{v10, v16}];
        if ([v3 isEqualToString:v13])
        {
          v14 = v12;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)stableBluetoothIdentifierForIDSDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 nsuuid];
  if (!v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 performSelector:"stableBluetoothIdentifier"];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)handleSuccessfulMessageSentWithIdentifier:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D3580;
  block[3] = &unk_1008CE900;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)updateRetryDatesForDeviceIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:86400.0];

  v7 = +[NSDate date];
  v8 = [v7 dateByAddingTimeInterval:900.0];

  v29[0] = @"CloudPairGeneralRetryDate";
  v29[1] = @"CloudPairShortRetryDate";
  v30[0] = v6;
  v30[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
        [v16 setObject:v9 forKeyedSubscript:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = +[NSUserDefaults standardUserDefaults];
  v18 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
  [v17 setObject:v18 forKey:@"AutoUnlockCloudPairRetries"];

  v19 = +[NSUserDefaults standardUserDefaults];
  [v19 synchronize];

  v20 = auto_unlock_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
    *buf = 138412290;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated cloud pairing retry dates %@", buf, 0xCu);
  }
}

- (BOOL)canRetryCloudPairingForDeviceID:(id)a3 useShortDate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    if (v4)
    {
      v9 = @"CloudPairShortRetryDate";
    }

    else
    {
      v9 = @"CloudPairGeneralRetryDate";
    }

    v10 = [v8 objectForKeyedSubscript:v9];
    if (v10 && (+[NSDate date](NSDate, "date"), v11 = objc_claimAutoreleasedReturnValue(), [v11 timeIntervalSinceDate:v10], v13 = v12, v11, v13 < 0.0))
    {
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (v4)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v16 = [v8 objectForKeyedSubscript:@"CloudPairShortRetryDate"];
        v17 = [v8 objectForKeyedSubscript:@"CloudPairGeneralRetryDate"];
        v20 = 138413058;
        v21 = v6;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Still backing off cloud pair retry (device ID: %@, use short: %@, short date: %@, general date: %@)", &v20, 0x2Au);
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)loadCloudPairRetries
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v3 = [v6 objectForKey:@"AutoUnlockCloudPairRetries"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  [(SDAutoUnlockTransport *)self setCloudPairRetryRecords:v4];
}

- (id)transferDataFromPayload:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setVersion:1];
  v9 = [(SDAutoUnlockTransport *)self dataFromUUID:v6];

  [v8 setSessionID:v9];
  [v8 setPayload:v7];

  v10 = [v8 data];

  return v10;
}

- (id)dataFromUUID:(id)a3
{
  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  [(SDAutoUnlockTransport *)self updateBluetoothIDCache:a3];
  v5 = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D3EF4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nearby devices changed %@", buf, 0xCu);
  }

  v7 = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D40A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(SDAutoUnlockTransport *)self clientQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D4240;
  v17[3] = &unk_1008CE158;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, v17);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v7 = a5;
  if (v7)
  {
    v8 = [(SDAutoUnlockTransport *)self clientQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D492C;
    v9[3] = &unk_1008CE028;
    v10 = v7;
    v11 = self;
    dispatch_async(v8, v9);
  }
}

- (BOOL)appleWatchExisted
{
  v2 = [(SDAutoUnlockTransport *)self lastSeenWatchDate];
  v3 = v2 != 0;

  return v3;
}

- (void)resetAppleWatchExisted
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting apple watch existed state", v4, 2u);
  }

  [(SDAutoUnlockTransport *)self setLastSeenWatchDate:0];
  [(SDAutoUnlockTransport *)self setWatchExistedInUnlockList:&__kCFBooleanFalse];
  [(SDAutoUnlockTransport *)self setWatchCurrentlyInList:&__kCFBooleanFalse];
}

- (BOOL)watchSeenRecently
{
  v2 = [(SDAutoUnlockTransport *)self lastSeenWatchDate];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dateByAddingTimeInterval:2419200.0];
    v5 = objc_opt_new();
    [v5 timeIntervalSinceDate:v4];
    v7 = v6 < 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setLastSeenWatchDate:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_lastSeenWatchDate, a3);
  lastSeenWatchDate = self->_lastSeenWatchDate;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = v6;
  if (lastSeenWatchDate)
  {
    [v6 setObject:self->_lastSeenWatchDate forKey:@"AutoUnlockLastSeenWatchDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"AutoUnlockLastSeenWatchDate"];
  }
}

- (NSNumber)watchExistedInUnlockList
{
  watchExistedInUnlockList = self->_watchExistedInUnlockList;
  if (!watchExistedInUnlockList)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLForKey:@"AutoUnlockWatchExistedInUnlockList"]);
    v6 = self->_watchExistedInUnlockList;
    self->_watchExistedInUnlockList = v5;

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSNumber *)self->_watchExistedInUnlockList BOOLValue];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded watchExistedInUnlockList %@", &v11, 0xCu);
    }

    watchExistedInUnlockList = self->_watchExistedInUnlockList;
  }

  return watchExistedInUnlockList;
}

- (void)setWatchExistedInUnlockList:(id)a3
{
  objc_storeStrong(&self->_watchExistedInUnlockList, a3);
  v4 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLValue];

  [v6 setBool:v5 forKey:@"AutoUnlockWatchExistedInUnlockList"];
}

- (NSNumber)watchCurrentlyInList
{
  watchCurrentlyInList = self->_watchCurrentlyInList;
  if (!watchCurrentlyInList)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLForKey:@"AutoUnlockWatchCurrentlyInList"]);
    v6 = self->_watchCurrentlyInList;
    self->_watchCurrentlyInList = v5;

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSNumber *)self->_watchCurrentlyInList BOOLValue];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded watchCurrentlyInList %@", &v11, 0xCu);
    }

    watchCurrentlyInList = self->_watchCurrentlyInList;
  }

  return watchCurrentlyInList;
}

- (void)setWatchCurrentlyInList:(id)a3
{
  objc_storeStrong(&self->_watchCurrentlyInList, a3);
  v4 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLValue];

  [v6 setBool:v5 forKey:@"AutoUnlockWatchCurrentlyInList"];
}

- (BOOL)pairingRequestIsValidForDeviceID:(id)a3 messageContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 serverReceivedTime];
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [v8 escrowSecretCreationDateForDeviceID:v5];

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pairing request arrived (creation date: %@ server date: %@) from device: %@", &v19, 0x20u);
  }

  if (v9)
  {
    if (v7)
    {
      [v7 timeIntervalSinceDate:v9];
      if (v11 < 0.0)
      {
        goto LABEL_9;
      }
    }
  }

  if (![v6 fromServerStorage])
  {
    goto LABEL_8;
  }

  v12 = +[NSDate date];
  v13 = [v6 serverReceivedTime];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 >= 60.0)
  {
LABEL_9:
    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Pairing request arrived outside window (creation date: %@ server date: %@)", &v19, 0x16u);
    }

    v16 = 0;
  }

  else
  {
LABEL_8:
    v16 = 1;
  }

  return v16;
}

- (SDAutoUnlockTransportClient)primaryClient
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryClient);

  return WeakRetained;
}

@end