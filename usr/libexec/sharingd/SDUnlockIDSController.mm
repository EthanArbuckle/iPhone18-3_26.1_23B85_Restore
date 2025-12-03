@interface SDUnlockIDSController
+ (SDUnlockIDSController)sharedController;
- (BOOL)hasDefaultDevice;
- (BOOL)isDefaultPairedDeviceNearby;
- (NSSet)autoUnlockEligibleDevices;
- (SDUnlockIDSController)init;
- (id)activeIDSDevice;
- (id)autoUnlockDeviceForIDSDevice:(id)device;
- (id)dataClassStringForDataClass:(int64_t)class;
- (void)addDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate;
- (void)sendProtocolBufferData:(id)data withType:(unsigned __int16)type timeout:(id)timeout option:(int64_t)option dataClass:(int64_t)class queueOneID:(id)d errorHandler:(id)handler;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
@end

@implementation SDUnlockIDSController

- (id)activeIDSDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isActive])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (SDUnlockIDSController)init
{
  v16.receiver = self;
  v16.super_class = SDUnlockIDSController;
  v2 = [(SDUnlockTransport *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorHandlers = v2->_errorHandlers;
    v2->_errorHandlers = v3;

    v5 = SFMainQueue();
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v5;

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.auth"];
    idsService = v2->_idsService;
    v2->_idsService = v7;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_serviceQueue];
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v2->_idsService;
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created continuity.auth service %@", buf, 0xCu);
    }

    v11 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.auth.classa"];
    idsServiceClassA = v2->_idsServiceClassA;
    v2->_idsServiceClassA = v11;

    [(IDSService *)v2->_idsServiceClassA addDelegate:v2 queue:v2->_serviceQueue];
    objc_storeStrong(&v2->_autoUnlockService, v2->_idsServiceClassA);
    v13 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v13;
  }

  return v2;
}

+ (SDUnlockIDSController)sharedController
{
  if (qword_100989A18 != -1)
  {
    sub_10006C014();
  }

  v3 = qword_100989A10;

  return v3;
}

- (BOOL)hasDefaultDevice
{
  devices = [(IDSService *)self->_idsService devices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) isDefaultPairedDevice];
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)isDefaultPairedDeviceNearby
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice] && (objc_msgSend(v6, "isNearby") & 1) != 0)
        {
          LODWORD(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = paired_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Default paired device nearby = %@", buf, 0xCu);
  }

  return v3;
}

- (void)sendProtocolBufferData:(id)data withType:(unsigned __int16)type timeout:(id)timeout option:(int64_t)option dataClass:(int64_t)class queueOneID:(id)d errorHandler:(id)handler
{
  dataCopy = data;
  timeoutCopy = timeout;
  dCopy = d;
  handlerCopy = handler;
  serviceQueue = [(SDUnlockIDSController *)self serviceQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006AA2C;
  v24[3] = &unk_1008CE000;
  v25 = timeoutCopy;
  v26 = dCopy;
  typeCopy = type;
  v27 = dataCopy;
  selfCopy = self;
  optionCopy = option;
  classCopy = class;
  v29 = handlerCopy;
  v20 = handlerCopy;
  v21 = dataCopy;
  v22 = dCopy;
  v23 = timeoutCopy;
  dispatch_async(serviceQueue, v24);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceQueue = [(SDUnlockIDSController *)self serviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AE60;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceQueue = [(SDUnlockIDSController *)self serviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AF68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(serviceQueue, v7);
}

- (NSSet)autoUnlockEligibleDevices
{
  v29 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  idsService = [(SDUnlockIDSController *)self idsService];
  devices = [idsService devices];

  v5 = [devices countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v8 = &_mh_execute_header;
    v9 = "Skipping unpaired device: %@";
    v28 = devices;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (([v11 isLocallyPaired] & 1) == 0)
        {
          v15 = auto_unlock_log();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = 138412290;
          v35 = v11;
          v24 = v8;
          v25 = v15;
          v26 = v9;
LABEL_15:
          _os_log_impl(v24, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
          goto LABEL_16;
        }

        modelIdentifier = [v11 modelIdentifier];
        v13 = sub_1001123D8(modelIdentifier);

        if (!v13)
        {
          v15 = auto_unlock_log();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = 138412290;
          v35 = v11;
          v24 = v8;
          v25 = v15;
          v26 = "Skipping Unsupported hardware: %@";
          goto LABEL_15;
        }

        v14 = [(SDUnlockIDSController *)self autoUnlockDeviceForIDSDevice:v11];
        v15 = v14;
        if (v14 && [v14 type]== 1)
        {
          v16 = +[SDStatusMonitor sharedMonitor];
          selfCopy = self;
          v18 = v8;
          v19 = v9;
          deviceKeyBagUnlocked = [v16 deviceKeyBagUnlocked];

          v21 = +[SDAutoUnlockAKSManager sharedManager];
          uniqueIDOverride = [v11 uniqueIDOverride];
          v23 = deviceKeyBagUnlocked;
          v9 = v19;
          v8 = v18;
          self = selfCopy;
          devices = v28;
          -[NSObject setKeyExists:](v15, "setKeyExists:", [v21 ltkExistsForKeyDevice:uniqueIDOverride updateLTKs:v23]);

          [v29 addObject:v15];
        }

LABEL_16:
      }

      v6 = [devices countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  return v29;
}

- (id)autoUnlockDeviceForIDSDevice:(id)device
{
  deviceCopy = device;
  nsuuid = [deviceCopy nsuuid];

  if (nsuuid)
  {
    v5 = objc_opt_new();
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    [v5 setUniqueID:uniqueIDOverride];

    nsuuid2 = [deviceCopy nsuuid];
    [v5 setBluetoothID:nsuuid2];

    modelIdentifier = [deviceCopy modelIdentifier];
    [v5 setModelIdentifier:modelIdentifier];

    productName = [deviceCopy productName];
    [v5 setProductName:productName];

    productVersion = [deviceCopy productVersion];
    [v5 setProductVersion:productVersion];

    productBuildVersion = [deviceCopy productBuildVersion];
    [v5 setProductBuildVersion:productBuildVersion];

    name = [deviceCopy name];
    [v5 setName:name];

    enclosureColor = [deviceCopy enclosureColor];
    [v5 setEnclosureColor:enclosureColor];

    [v5 setDefaultPairedDevice:{objc_msgSend(deviceCopy, "isDefaultPairedDevice")}];
    [v5 setModelName:@"Apple Watch"];
    if (deviceCopy)
    {
      [deviceCopy operatingSystemVersion];
      v14 = v38;
      [deviceCopy operatingSystemVersion];
      v15 = v36 > 3;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v36 = 0;
      v37 = 0;
      v35 = 0;
    }

    [v5 setMajorOSVersion:{v14, v35, v36, v37, v38, v39, v40}];
    modelIdentifier2 = [deviceCopy modelIdentifier];
    v18 = sub_100112424(modelIdentifier2);
    integerValue = [v18 integerValue];

    v20 = v14 == 7 && v15;
    if (v14 > 7)
    {
      v20 = 1;
    }

    if (integerValue > 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    [v5 setSupportsApproveWithWatch:v21];
    [v5 setSupportsApproveIcon:{objc_msgSend(v5, "supportsApproveWithWatch")}];
    v22 = +[SDAutoUnlockAKSManager sharedManager];
    uniqueIDOverride2 = [deviceCopy uniqueIDOverride];
    v24 = [v22 sessionKeyExistsForDeviceID:uniqueIDOverride2];

    v25 = +[SDAutoUnlockAKSManager sharedManager];
    deviceIDsMissingSessionKey = [v25 deviceIDsMissingSessionKey];
    uniqueIDOverride3 = [deviceCopy uniqueIDOverride];
    v28 = [deviceIDsMissingSessionKey containsObject:uniqueIDOverride3];

    [v5 setSupportsEncryption:v24 & (v28 ^ 1)];
    v29 = +[SDAutoUnlockAKSManager sharedManager];
    uniqueIDOverride4 = [deviceCopy uniqueIDOverride];
    v31 = [v29 deviceEnabledAsKey:uniqueIDOverride4];

    [v5 setUnlockEnabled:v31];
    nsuuid3 = [deviceCopy nsuuid];
    v16 = nsuuid3;
    if (nsuuid3 && (v31 & 1) != 0)
    {
      proxyBluetoothID = [v5 proxyBluetoothID];
      [v5 setBluetoothCloudPaired:proxyBluetoothID != 0];
    }

    else
    {
      [v5 setBluetoothCloudPaired:nsuuid3 != 0];
    }
  }

  else
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10006C09C();
    }

    v5 = 0;
  }

  return v5;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [changedCopy valueForKeyPath:@"@unionOfObjects.uniqueID"];
    v8 = SFCompactStringFromCollection();
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "nearbyDevicesChanged %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  delegates = [(SDUnlockIDSController *)self delegates];
  v10 = [delegates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(delegates);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 idsControllerNearbyStateChanged:self];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [delegates countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Space became avaliable", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  delegates = [(SDUnlockIDSController *)self delegates];
  v6 = [delegates countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(delegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 idsControllerSpaceDidBecomeAvailable:self];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [delegates countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  protobufCopy = protobuf;
  dCopy = d;
  v13 = paired_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    type = [protobufCopy type];
    data = [protobufCopy data];
    v16 = [data length];
    data2 = [protobufCopy data];
    *buf = 67109634;
    v36 = type;
    v37 = 1024;
    v38 = v16;
    v39 = 2112;
    v40 = data2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming protobuf (type = %d, size = %u, data = %@)", buf, 0x18u);
  }

  v18 = [serviceCopy deviceForFromID:dCopy];
  uniqueIDOverride = [v18 uniqueIDOverride];

  if (protobufCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    delegates = [(SDUnlockIDSController *)self delegates];
    v20 = [delegates countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = dCopy;
      v28 = serviceCopy;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(delegates);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            data3 = [protobufCopy data];
            [v24 idsController:self didReceiveProtoData:data3 forType:{objc_msgSend(protobufCopy, "type")}];
          }

          if (objc_opt_respondsToSelector())
          {
            data4 = [protobufCopy data];
            [v24 idsController:self didReceiveProtoData:data4 forType:objc_msgSend(protobufCopy deviceID:{"type"), uniqueIDOverride}];
          }
        }

        v21 = [delegates countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
      dCopy = v27;
      serviceCopy = v28;
    }
  }

  else
  {
    delegates = paired_unlock_log();
    if (os_log_type_enabled(delegates, OS_LOG_TYPE_ERROR))
    {
      sub_10006C150();
    }
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  v8 = paired_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didSwitchActivePairedDevice %@", &v9, 0xCu);
  }

  blockCopy[2](blockCopy);
}

- (id)dataClassStringForDataClass:(int64_t)class
{
  v3 = @"Unknown";
  if (class == 2)
  {
    v3 = @"SDUnlockSendDataClassClassA";
  }

  if (class == 1)
  {
    return @"SDUnlockSendDataClassClassD";
  }

  else
  {
    return v3;
  }
}

@end