@interface SDAutoUnlockTransport
+ (id)sharedTransport;
- (BOOL)activityServiceHasWatch;
- (BOOL)appleWatchExisted;
- (BOOL)canRetryCloudPairingForDeviceID:(id)d useShortDate:(BOOL)date;
- (BOOL)deviceNearby;
- (BOOL)isDeviceSatellitePaired;
- (BOOL)localDeviceIDSRegistered;
- (BOOL)macVersionEligibleForDeviceID:(id)d;
- (BOOL)pairingRequestIsValidForDeviceID:(id)d messageContext:(id)context;
- (BOOL)watchSeenRecently;
- (BOOL)watchVersionEligibleForDevice:(id)device;
- (NSDate)lastSeenWatchDate;
- (NSNumber)watchCurrentlyInList;
- (NSNumber)watchExistedInUnlockList;
- (SDAutoUnlockTransport)init;
- (SDAutoUnlockTransportClient)primaryClient;
- (id)activeDevice;
- (id)approveBluetoothIDs;
- (id)autoUnlockDeviceForDeviceID:(id)d;
- (id)autoUnlockDeviceForIDSDevice:(id)device cloudPaired:(BOOL)paired cached:(BOOL)cached;
- (id)autoUnlockEligibleDevicesWithCloudPairing:(BOOL)pairing deviceType:(int64_t)type;
- (id)bluetoothDeviceIdentifiers;
- (id)bluetoothIDForIDSID:(id)d;
- (id)cachedIDSDeviceIDsForBluetoothID:(id)d;
- (id)connectionCacheDevices;
- (id)dataFromUUID:(id)d;
- (id)deviceNameForDeviceID:(id)d;
- (id)devicesWithLTKs;
- (id)enabledAutoUnlockDevicesUsingCache:(BOOL)cache;
- (id)enabledAutoUnlockLockDevices;
- (id)idsDeviceForBluetoothID:(id)d;
- (id)idsDeviceForUniqueID:(id)d;
- (id)idsDeviceIDsForBluetoothID:(id)d;
- (id)idsDevicesIDs;
- (id)idsMacDeviceIDs;
- (id)modelIdentifierForDeviceID:(id)d;
- (id)modelNameForDevice:(id)device;
- (id)nameForDevice:(id)device;
- (id)nanoRegistryDeviceForBluetoothIdentifier:(id)identifier;
- (id)onqueue_bluetoothDeviceIdentifiers;
- (id)onqueue_bluetoothIDForIDSID:(id)d;
- (id)onqueue_devicesWithLTKs;
- (id)onqueue_enabledAutoUnlockDevicesUsingCache:(BOOL)cache;
- (id)pairedAutoUnlockDevice;
- (id)pairedDeviceID;
- (id)placeholderDevice;
- (id)proxyBluetoothDeviceIDForDeviceID:(id)d;
- (id)stableBluetoothIdentifierForIDSDevice:(id)device;
- (id)state;
- (id)transferDataFromPayload:(id)payload sessionID:(id)d;
- (int64_t)deviceTypeForDevice:(id)device;
- (int64_t)deviceTypeForDeviceID:(id)d;
- (void)addClient:(id)client forIdentifer:(id)identifer;
- (void)clearAutoUnlockDeviceCache;
- (void)handleSuccessfulMessageSentWithIdentifier:(id)identifier sessionID:(id)d;
- (void)loadCloudPairRetries;
- (void)logBluetoothIDCache;
- (void)logDevices;
- (void)removeClientForIdentifier:(id)identifier;
- (void)resetAppleWatchExisted;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setLastSeenWatchDate:(id)date;
- (void)setWatchCurrentlyInList:(id)list;
- (void)setWatchExistedInUnlockList:(id)list;
- (void)updateApproveBluetoothIDs;
- (void)updateBluetoothIDCache;
- (void)updateRetryDatesForDeviceIDs:(id)ds;
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_new();
  [(SDAutoUnlockTransport *)selfCopy enabledAutoUnlockDevices];
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
          bluetoothID = [v8 bluetoothID];
          [v3 addObject:bluetoothID];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  cachedApproveBluetoothIDs = [(SDAutoUnlockTransport *)selfCopy cachedApproveBluetoothIDs];
  [(SDAutoUnlockTransport *)selfCopy setCachedApproveBluetoothIDs:v3];

  objc_sync_exit(selfCopy);
  cachedApproveBluetoothIDs2 = [(SDAutoUnlockTransport *)selfCopy cachedApproveBluetoothIDs];
  v12 = [cachedApproveBluetoothIDs isEqualToSet:cachedApproveBluetoothIDs2];

  if ((v12 & 1) == 0)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      cachedApproveBluetoothIDs3 = [(SDAutoUnlockTransport *)selfCopy cachedApproveBluetoothIDs];
      *buf = 138412290;
      v21 = cachedApproveBluetoothIDs3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated approve bluetooth IDs: %@", buf, 0xCu);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"ApproveBluetoothIDsChanged" object:0];
  }
}

- (BOOL)deviceNearby
{
  activeDevice = [(SDAutoUnlockTransport *)self activeDevice];
  isNearby = [activeDevice isNearby];

  return isNearby;
}

- (id)devicesWithLTKs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001D0070;
  v11 = sub_1001D0080;
  v12 = objc_opt_new();
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000255F8;
  v6[3] = &unk_1008D0168;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(transportQueue, v6);

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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v6 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = +[SDAutoUnlockAKSManager sharedManager];
        uniqueIDOverride = [v10 uniqueIDOverride];
        v13 = [v11 ltkExistsForKeyDevice:uniqueIDOverride];

        if (v13)
        {
          uniqueIDOverride2 = [v10 uniqueIDOverride];
          [v3 addObject:uniqueIDOverride2];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    selfCopy2 = self;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    if (SFDeviceClassCodeGet() != 8)
    {
      goto LABEL_6;
    }

    selfCopy2 = self;
    v8 = 1;
    v9 = 2;
  }

  v10 = [(SDAutoUnlockTransport *)selfCopy2 autoUnlockEligibleDevicesWithCloudPairing:v8 deviceType:v9, v29];
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v17 = [devices countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v35 = v6;
    obj = devices;
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
        name = [v22 name];
        uniqueID = [v22 uniqueID];
        modelIdentifier = [v22 modelIdentifier];
        productBuildVersion = [v22 productBuildVersion];
        [v22 nsuuid];
        v34 = v33 = productBuildVersion;
        v31 = uniqueID;
        v32 = modelIdentifier;
        v30 = name;
        NSAppendPrintF();
        v27 = v20;

        NSAppendPrintF();
        v20 = v27;
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:{16, name, uniqueID, modelIdentifier, productBuildVersion, v34}];
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

  autoUnlockDeviceCache = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
  [autoUnlockDeviceCache removeAllObjects];
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
  activityService = [(SDAutoUnlockTransport *)self activityService];
  devices = [activityService devices];

  v4 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(devices);
      }

      v8 = *(*(&v14 + 1) + 8 * i);
      modelIdentifier = [v8 modelIdentifier];
      lowercaseString = [modelIdentifier lowercaseString];
      if (![lowercaseString containsString:@"watch"])
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

    v5 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    transportQueue = [(SDAutoUnlockTransport *)v2 transportQueue];
    [(IDSService *)v19 addDelegate:v2 queue:transportQueue];

    v21 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.activity"];
    activityService = v2->_activityService;
    v2->_activityService = v21;

    objc_storeStrong(&v2->_autoUnlockService, v2->_idsService);
    [(SDAutoUnlockTransport *)v2 loadCloudPairRetries];
    [(SDAutoUnlockTransport *)v2 updateBluetoothIDCache];
  }

  return v2;
}

- (void)addClient:(id)client forIdentifer:(id)identifer
{
  clientCopy = client;
  identiferCopy = identifer;
  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFAF0;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = clientCopy;
  v13 = identiferCopy;
  v9 = identiferCopy;
  v10 = clientCopy;
  dispatch_async(clientQueue, block);
}

- (void)removeClientForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CFBF8;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(clientQueue, v7);
}

- (void)logDevices
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    idsService = [(SDAutoUnlockTransport *)self idsService];
    devices = [idsService devices];
    v6 = 138412290;
    v7 = devices;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDS Devices: %@", &v6, 0xCu);
  }
}

- (id)bluetoothIDForIDSID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001D0070;
  v16 = sub_1001D0080;
  v17 = 0;
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D0088;
  block[3] = &unk_1008D1580;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(transportQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)onqueue_bluetoothIDForIDSID:(id)d
{
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v7 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(devices);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uniqueID = [v12 uniqueID];
        v14 = [uniqueID isEqualToString:dCopy];

        if (v14)
        {
          nsuuid = [v12 nsuuid];

          v9 = nsuuid;
        }
      }

      v8 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D0378;
  v6[3] = &unk_1008D0168;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(transportQueue, v6);

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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        nsuuid = [v10 nsuuid];
        if ([v10 supportsHandoff])
        {
          v12 = nsuuid == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [v3 addObject:nsuuid];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)pairedDeviceID
{
  activeDevice = [(SDAutoUnlockTransport *)self activeDevice];
  uniqueIDOverride = [activeDevice uniqueIDOverride];

  return uniqueIDOverride;
}

- (id)pairedAutoUnlockDevice
{
  activeDevice = [(SDAutoUnlockTransport *)self activeDevice];
  v4 = [(SDAutoUnlockTransport *)self autoUnlockDeviceForIDSDevice:activeDevice];

  return v4;
}

- (BOOL)isDeviceSatellitePaired
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  v6 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(devices);
        }

        uniqueIDOverride = [*(*(&v12 + 1) + 8 * i) uniqueIDOverride];
        [v3 addObject:uniqueIDOverride];
      }

      v7 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v6 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        modelIdentifier = [v10 modelIdentifier];
        lowercaseString = [modelIdentifier lowercaseString];
        v13 = [lowercaseString containsString:@"mac"];

        if (v13)
        {
          uniqueIDOverride = [v10 uniqueIDOverride];
          [v3 addObject:uniqueIDOverride];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)deviceNameForDeviceID:(id)d
{
  v3 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:d];
  name = [v3 name];

  return name;
}

- (int64_t)deviceTypeForDeviceID:(id)d
{
  v4 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:d];
  v5 = [(SDAutoUnlockTransport *)self deviceTypeForDevice:v4];

  return v5;
}

- (int64_t)deviceTypeForDevice:(id)device
{
  deviceCopy = device;
  modelIdentifier = [deviceCopy modelIdentifier];
  lowercaseString = [modelIdentifier lowercaseString];
  v6 = [lowercaseString containsString:@"watch"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    modelIdentifier2 = [deviceCopy modelIdentifier];
    lowercaseString2 = [modelIdentifier2 lowercaseString];
    v10 = [lowercaseString2 containsString:@"iphone"];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      modelIdentifier3 = [deviceCopy modelIdentifier];
      lowercaseString3 = [modelIdentifier3 lowercaseString];
      v13 = [lowercaseString3 containsString:@"ipad"];

      if (v13)
      {
        v7 = 3;
      }

      else
      {
        modelIdentifier4 = [deviceCopy modelIdentifier];
        lowercaseString4 = [modelIdentifier4 lowercaseString];
        v16 = [lowercaseString4 containsString:@"reality"];

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

- (id)modelIdentifierForDeviceID:(id)d
{
  v3 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:d];
  modelIdentifier = [v3 modelIdentifier];

  return modelIdentifier;
}

- (id)autoUnlockDeviceForDeviceID:(id)d
{
  v4 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:d];
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

- (id)autoUnlockEligibleDevicesWithCloudPairing:(BOOL)pairing deviceType:(int64_t)type
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001D0070;
  v16 = sub_1001D0080;
  v17 = objc_opt_new();
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D0D98;
  v10[3] = &unk_1008D3548;
  v10[4] = self;
  v10[5] = &v12;
  pairingCopy = pairing;
  v10[6] = type;
  dispatch_sync(transportQueue, v10);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)enabledAutoUnlockDevicesUsingCache:(BOOL)cache
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001D0070;
  v14 = sub_1001D0080;
  v15 = objc_opt_new();
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1550;
  block[3] = &unk_1008D3570;
  block[4] = self;
  block[5] = &v10;
  cacheCopy = cache;
  dispatch_sync(transportQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)onqueue_enabledAutoUnlockDevicesUsingCache:(BOOL)cache
{
  cacheCopy = cache;
  v25 = sub_10000C2C4(@"AUDeviceBlackList");
  v24 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v6 = [devices countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = +[SDAutoUnlockAKSManager sharedManager];
        uniqueIDOverride = [v11 uniqueIDOverride];
        v14 = [v12 ltkExistsForKeyDevice:uniqueIDOverride updateLTKs:0];

        if (v14)
        {
          v15 = [(SDAutoUnlockTransport *)self autoUnlockDeviceForIDSDevice:v11 cloudPaired:1 cached:cacheCopy];
          v16 = v15;
          if (v15 && [v15 unlockEnabled])
          {
            uniqueID = [v16 uniqueID];
            v18 = [v25 containsObject:uniqueID];

            if (v18)
            {
              v19 = auto_unlock_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                uniqueID2 = [v16 uniqueID];
                *buf = v23;
                v32 = uniqueID2;
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

      v8 = [devices countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v21 = [v24 copy];

  return v21;
}

- (id)enabledAutoUnlockLockDevices
{
  v3 = objc_opt_new();
  transportQueue = [(SDAutoUnlockTransport *)self transportQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001D18FC;
  v11 = &unk_1008CE028;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(transportQueue, &v8);

  v6 = [v5 copy];

  return v6;
}

- (id)autoUnlockDeviceForIDSDevice:(id)device cloudPaired:(BOOL)paired cached:(BOOL)cached
{
  cachedCopy = cached;
  pairedCopy = paired;
  deviceCopy = device;
  v9 = [(SDAutoUnlockTransport *)self stableBluetoothIdentifierForIDSDevice:deviceCopy];
  v10 = [(SDAutoUnlockTransport *)self nameForDevice:deviceCopy];
  if (!deviceCopy || ([deviceCopy uniqueIDOverride], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    autoUnlockDeviceCache2 = auto_unlock_log();
    if (os_log_type_enabled(autoUnlockDeviceCache2, OS_LOG_TYPE_DEBUG))
    {
      sub_1001D5810(autoUnlockDeviceCache2);
    }

    goto LABEL_16;
  }

  if ([deviceCopy deviceType] == 6)
  {
    if (([deviceCopy isLocallyPaired] & 1) == 0)
    {
      autoUnlockDeviceCache2 = auto_unlock_log();
      if (os_log_type_enabled(autoUnlockDeviceCache2, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D56B4();
      }

      goto LABEL_16;
    }

    modelIdentifier = [deviceCopy modelIdentifier];
    v13 = sub_1001123D8(modelIdentifier);

    if (!v13)
    {
      autoUnlockDeviceCache2 = auto_unlock_log();
      if (os_log_type_enabled(autoUnlockDeviceCache2, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D5728();
      }

      goto LABEL_16;
    }

    uUIDString = [v9 UUIDString];
    v15 = [(SDAutoUnlockTransport *)self nanoRegistryDeviceForBluetoothIdentifier:uUIDString];

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

  if (pairedCopy && !v9)
  {
    autoUnlockDeviceCache2 = auto_unlock_log();
    if (os_log_type_enabled(autoUnlockDeviceCache2, OS_LOG_TYPE_ERROR))
    {
      sub_1001D579C();
    }

LABEL_16:
    v21 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (cachedCopy)
  {
    autoUnlockDeviceCache = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v21 = [autoUnlockDeviceCache objectForKeyedSubscript:uniqueIDOverride];

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
  uniqueIDOverride2 = [deviceCopy uniqueIDOverride];
  [v21 setUniqueID:uniqueIDOverride2];

  [v21 setBluetoothID:v9];
  modelIdentifier2 = [deviceCopy modelIdentifier];
  [v21 setModelIdentifier:modelIdentifier2];

  productName = [deviceCopy productName];
  [v21 setProductName:productName];

  productVersion = [deviceCopy productVersion];
  [v21 setProductVersion:productVersion];

  productBuildVersion = [deviceCopy productBuildVersion];
  [v21 setProductBuildVersion:productBuildVersion];

  [v21 setName:v10];
  enclosureColor = [deviceCopy enclosureColor];
  [v21 setEnclosureColor:enclosureColor];

  [v21 setDefaultPairedDevice:{objc_msgSend(deviceCopy, "isDefaultPairedDevice")}];
  v32 = [(SDAutoUnlockTransport *)self modelNameForDevice:deviceCopy];
  [v21 setModelName:v32];

  [deviceCopy operatingSystemVersion];
  [deviceCopy operatingSystemVersion];
  v33 = v59 > 3 && v60 == 7;
  v34 = v60 > 7 || v33;
  [v21 setMajorOSVersion:v60];
  [v21 setSupportsAlwaysDirect:?];
  modelIdentifier3 = [deviceCopy modelIdentifier];
  v36 = sub_100112424(modelIdentifier3);
  integerValue = [v36 integerValue];

  v37 = integerValue > 2 ? v34 : 0;
  [v21 setSupportsApproveWithWatch:v37];
  v38 = sub_10000C1F8(@"AUForceApproveLabel", 0);
  supportsApproveWithWatch = [v21 supportsApproveWithWatch];
  v40 = v38 ? 0 : supportsApproveWithWatch;
  [v21 setSupportsApproveIcon:v40];
  v41 = +[SDAutoUnlockAKSManager sharedManager];
  uniqueIDOverride3 = [deviceCopy uniqueIDOverride];
  v57 = [v41 sessionKeyExistsForDeviceID:uniqueIDOverride3];

  v43 = +[SDAutoUnlockAKSManager sharedManager];
  deviceIDsMissingSessionKey = [v43 deviceIDsMissingSessionKey];
  uniqueIDOverride4 = [deviceCopy uniqueIDOverride];
  v46 = [deviceIDsMissingSessionKey containsObject:uniqueIDOverride4];

  [v21 setSupportsEncryption:{v57 & ~-[SDAutoUnlockTransport disableEncryption](self, "disableEncryption") & (v60 > 3) & (v46 ^ 1)}];
  [v21 setSupportsAdvertisingUnlocked:v60 > 4];
  v47 = sub_100111B70();
  v48 = v60 > 6 ? v47 : 0;
  [v21 setSupportsConnectionCache:v48];
  [v21 setSupportsHEIC:integerValue > 3];
  v49 = +[SDAutoUnlockAKSManager sharedManager];
  uniqueIDOverride5 = [deviceCopy uniqueIDOverride];
  v51 = [v49 deviceEnabledAsKeyForIDSDeviceID:uniqueIDOverride5];

  [v21 setCanUnlockDevice:v51];
  v52 = +[SDAutoUnlockAKSManager sharedManager];
  uniqueIDOverride6 = [deviceCopy uniqueIDOverride];
  v54 = [v52 deviceEnabledAsKey:uniqueIDOverride6];

  [v21 setUnlockEnabled:v54];
  if (!v9)
  {
    goto LABEL_47;
  }

  if (v54)
  {
    proxyBluetoothID = [v21 proxyBluetoothID];
    [v21 setBluetoothCloudPaired:proxyBluetoothID != 0];
  }

  else
  {
LABEL_47:
    [v21 setBluetoothCloudPaired:v9 != 0];
  }

  if (v21)
  {
LABEL_49:
    autoUnlockDeviceCache2 = [(SDAutoUnlockTransport *)self autoUnlockDeviceCache];
    uniqueID = [v21 uniqueID];
    [autoUnlockDeviceCache2 setObject:v21 forKeyedSubscript:uniqueID];

    goto LABEL_17;
  }

LABEL_18:

  return v21;
}

- (id)approveBluetoothIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedApproveBluetoothIDs = [(SDAutoUnlockTransport *)selfCopy cachedApproveBluetoothIDs];

  if (!cachedApproveBluetoothIDs)
  {
    [(SDAutoUnlockTransport *)selfCopy updateApproveBluetoothIDs];
  }

  cachedApproveBluetoothIDs2 = [(SDAutoUnlockTransport *)selfCopy cachedApproveBluetoothIDs];
  objc_sync_exit(selfCopy);

  return cachedApproveBluetoothIDs2;
}

- (id)modelNameForDevice:(id)device
{
  v3 = [(SDAutoUnlockTransport *)self deviceTypeForDevice:device];
  if ((v3 - 1) > 3)
  {
    return &stru_1008EFBD0;
  }

  else
  {
    return off_1008D35B8[v3 - 1];
  }
}

- (BOOL)watchVersionEligibleForDevice:(id)device
{
  deviceCopy = device;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (deviceCopy)
    {
      [deviceCopy operatingSystemVersion];
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

  if (deviceCopy)
  {
    [deviceCopy operatingSystemVersion];
    v6 = v8 > 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)macVersionEligibleForDeviceID:(id)d
{
  dCopy = d;
  v5 = [(SDAutoUnlockTransport *)self idsDeviceForUniqueID:dCopy];
  modelIdentifier = [v5 modelIdentifier];
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
      sub_1001D5854(dCopy, v7, v9);
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

- (id)nameForDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  if ([(SDAutoUnlockTransport *)self showIDInName])
  {
    name2 = [deviceCopy name];
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v8 = [NSString stringWithFormat:@"%@ (%@)", name2, uniqueIDOverride];

    name = v8;
  }

  return name;
}

- (id)proxyBluetoothDeviceIDForDeviceID:(id)d
{
  dCopy = d;
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  v6 = [v5 companionIDForWatchID:dCopy];

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

- (id)idsDeviceForUniqueID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueIDOverride = [v10 uniqueIDOverride];
        v12 = [uniqueIDOverride isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)idsDeviceForBluetoothID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        nsuuid = [v10 nsuuid];
        v12 = [nsuuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)idsDeviceIDsForBluetoothID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  v8 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(devices);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        nsuuid = [v12 nsuuid];
        v14 = [nsuuid isEqual:dCopy];

        if (v14)
        {
          uniqueIDOverride = [v12 uniqueIDOverride];
          [v5 addObject:uniqueIDOverride];
        }
      }

      v9 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)cachedIDSDeviceIDsForBluetoothID:(id)d
{
  dCopy = d;
  cachedBluetoothIDToUniqueIDs = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
  v6 = [cachedBluetoothIDToUniqueIDs objectForKeyedSubscript:dCopy];

  return v6;
}

- (void)logBluetoothIDCache
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cachedBluetoothIDToUniqueIDs = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
    v5 = 138412290;
    v6 = cachedBluetoothIDToUniqueIDs;
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  devices = [idsService devices];

  obj = devices;
  v6 = [devices countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        uniqueIDOverride = [v10 uniqueIDOverride];
        v13 = uniqueIDOverride;
        if (v11)
        {
          v14 = uniqueIDOverride == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          cachedBluetoothIDToUniqueIDs = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
          v16 = [cachedBluetoothIDToUniqueIDs objectForKeyedSubscript:v11];
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
          cachedBluetoothIDToUniqueIDs2 = [(SDAutoUnlockTransport *)self cachedBluetoothIDToUniqueIDs];
          [cachedBluetoothIDToUniqueIDs2 setObject:v21 forKeyedSubscript:v11];
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
  idsService = [(SDAutoUnlockTransport *)self idsService];
  accounts = [idsService accounts];

  v4 = [accounts countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v15 objects:v21 count:16];
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
    registrationStatus = [v6 registrationStatus];
    *buf = 67109120;
    v20 = registrationStatus;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDS registration status: %d", buf, 8u);
  }

  v13 = [v6 registrationStatus] == 5;
  return v13;
}

- (id)connectionCacheDevices
{
  v3 = objc_opt_new();
  enabledAutoUnlockDevices = [(SDAutoUnlockTransport *)self enabledAutoUnlockDevices];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [enabledAutoUnlockDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(enabledAutoUnlockDevices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsConnectionCache])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [enabledAutoUnlockDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nanoRegistryDeviceForBluetoothIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getAllDevices = [v4 getAllDevices];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = getAllDevices;
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
        if ([identifierCopy isEqualToString:v13])
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

- (id)stableBluetoothIdentifierForIDSDevice:(id)device
{
  deviceCopy = device;
  nsuuid = [deviceCopy nsuuid];
  if (!nsuuid)
  {
    if (objc_opt_respondsToSelector())
    {
      nsuuid = [deviceCopy performSelector:"stableBluetoothIdentifier"];
    }

    else
    {
      nsuuid = 0;
    }
  }

  return nsuuid;
}

- (void)handleSuccessfulMessageSentWithIdentifier:(id)identifier sessionID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D3580;
  block[3] = &unk_1008CE900;
  v12 = dCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v9 = identifierCopy;
  v10 = dCopy;
  dispatch_async(clientQueue, block);
}

- (void)updateRetryDatesForDeviceIDs:(id)ds
{
  dsCopy = ds;
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
  v10 = dsCopy;
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
        cloudPairRetryRecords = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
        [cloudPairRetryRecords setObject:v9 forKeyedSubscript:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = +[NSUserDefaults standardUserDefaults];
  cloudPairRetryRecords2 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
  [v17 setObject:cloudPairRetryRecords2 forKey:@"AutoUnlockCloudPairRetries"];

  v19 = +[NSUserDefaults standardUserDefaults];
  [v19 synchronize];

  v20 = auto_unlock_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    cloudPairRetryRecords3 = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
    *buf = 138412290;
    v27 = cloudPairRetryRecords3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated cloud pairing retry dates %@", buf, 0xCu);
  }
}

- (BOOL)canRetryCloudPairingForDeviceID:(id)d useShortDate:(BOOL)date
{
  dateCopy = date;
  dCopy = d;
  cloudPairRetryRecords = [(SDAutoUnlockTransport *)self cloudPairRetryRecords];
  v8 = [cloudPairRetryRecords objectForKeyedSubscript:dCopy];

  if (v8)
  {
    if (dateCopy)
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
        if (dateCopy)
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
        v21 = dCopy;
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

- (id)transferDataFromPayload:(id)payload sessionID:(id)d
{
  dCopy = d;
  payloadCopy = payload;
  v8 = objc_opt_new();
  [v8 setVersion:1];
  v9 = [(SDAutoUnlockTransport *)self dataFromUUID:dCopy];

  [v8 setSessionID:v9];
  [v8 setPayload:payloadCopy];

  data = [v8 data];

  return data;
}

- (id)dataFromUUID:(id)d
{
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  [(SDAutoUnlockTransport *)self updateBluetoothIDCache:service];
  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D3EF4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nearby devices changed %@", buf, 0xCu);
  }

  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D40A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D4240;
  v17[3] = &unk_1008CE158;
  v17[4] = self;
  v18 = dCopy;
  v19 = protobufCopy;
  v20 = contextCopy;
  v14 = contextCopy;
  v15 = protobufCopy;
  v16 = dCopy;
  dispatch_async(clientQueue, v17);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    clientQueue = [(SDAutoUnlockTransport *)self clientQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D492C;
    v9[3] = &unk_1008CE028;
    v10 = identifierCopy;
    selfCopy = self;
    dispatch_async(clientQueue, v9);
  }
}

- (BOOL)appleWatchExisted
{
  lastSeenWatchDate = [(SDAutoUnlockTransport *)self lastSeenWatchDate];
  v3 = lastSeenWatchDate != 0;

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
  lastSeenWatchDate = [(SDAutoUnlockTransport *)self lastSeenWatchDate];
  v3 = lastSeenWatchDate;
  if (lastSeenWatchDate)
  {
    v4 = [lastSeenWatchDate dateByAddingTimeInterval:2419200.0];
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

- (void)setLastSeenWatchDate:(id)date
{
  dateCopy = date;
  objc_storeStrong(&self->_lastSeenWatchDate, date);
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
      bOOLValue = [(NSNumber *)self->_watchExistedInUnlockList BOOLValue];
      v9 = @"NO";
      if (bOOLValue)
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

- (void)setWatchExistedInUnlockList:(id)list
{
  objc_storeStrong(&self->_watchExistedInUnlockList, list);
  listCopy = list;
  v6 = +[NSUserDefaults standardUserDefaults];
  bOOLValue = [listCopy BOOLValue];

  [v6 setBool:bOOLValue forKey:@"AutoUnlockWatchExistedInUnlockList"];
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
      bOOLValue = [(NSNumber *)self->_watchCurrentlyInList BOOLValue];
      v9 = @"NO";
      if (bOOLValue)
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

- (void)setWatchCurrentlyInList:(id)list
{
  objc_storeStrong(&self->_watchCurrentlyInList, list);
  listCopy = list;
  v6 = +[NSUserDefaults standardUserDefaults];
  bOOLValue = [listCopy BOOLValue];

  [v6 setBool:bOOLValue forKey:@"AutoUnlockWatchCurrentlyInList"];
}

- (BOOL)pairingRequestIsValidForDeviceID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  serverReceivedTime = [contextCopy serverReceivedTime];
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [v8 escrowSecretCreationDateForDeviceID:dCopy];

  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = serverReceivedTime;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pairing request arrived (creation date: %@ server date: %@) from device: %@", &v19, 0x20u);
  }

  if (v9)
  {
    if (serverReceivedTime)
    {
      [serverReceivedTime timeIntervalSinceDate:v9];
      if (v11 < 0.0)
      {
        goto LABEL_9;
      }
    }
  }

  if (![contextCopy fromServerStorage])
  {
    goto LABEL_8;
  }

  v12 = +[NSDate date];
  serverReceivedTime2 = [contextCopy serverReceivedTime];
  [v12 timeIntervalSinceDate:serverReceivedTime2];
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
      v22 = serverReceivedTime;
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