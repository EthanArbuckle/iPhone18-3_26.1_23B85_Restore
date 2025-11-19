@interface SDUnlockIDSController
+ (SDUnlockIDSController)sharedController;
- (BOOL)hasDefaultDevice;
- (BOOL)isDefaultPairedDeviceNearby;
- (NSSet)autoUnlockEligibleDevices;
- (SDUnlockIDSController)init;
- (id)activeIDSDevice;
- (id)autoUnlockDeviceForIDSDevice:(id)a3;
- (id)dataClassStringForDataClass:(int64_t)a3;
- (void)addDelegate:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)sendProtocolBufferData:(id)a3 withType:(unsigned __int16)a4 timeout:(id)a5 option:(int64_t)a6 dataClass:(int64_t)a7 queueOneID:(id)a8 errorHandler:(id)a9;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
@end

@implementation SDUnlockIDSController

- (id)activeIDSDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isActive])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(IDSService *)self->_idsService devices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) isDefaultPairedDevice];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice] && (objc_msgSend(v6, "isNearby") & 1) != 0)
        {
          LODWORD(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

- (void)sendProtocolBufferData:(id)a3 withType:(unsigned __int16)a4 timeout:(id)a5 option:(int64_t)a6 dataClass:(int64_t)a7 queueOneID:(id)a8 errorHandler:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v19 = [(SDUnlockIDSController *)self serviceQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006AA2C;
  v24[3] = &unk_1008CE000;
  v25 = v16;
  v26 = v17;
  v32 = a4;
  v27 = v15;
  v28 = self;
  v30 = a6;
  v31 = a7;
  v29 = v18;
  v20 = v18;
  v21 = v15;
  v22 = v17;
  v23 = v16;
  dispatch_async(v19, v24);
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockIDSController *)self serviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AE60;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockIDSController *)self serviceQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AF68;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSSet)autoUnlockEligibleDevices
{
  v29 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [(SDUnlockIDSController *)self idsService];
  v4 = [v3 devices];

  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v8 = &_mh_execute_header;
    v9 = "Skipping unpaired device: %@";
    v28 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
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

        v12 = [v11 modelIdentifier];
        v13 = sub_1001123D8(v12);

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
          v17 = self;
          v18 = v8;
          v19 = v9;
          v20 = [v16 deviceKeyBagUnlocked];

          v21 = +[SDAutoUnlockAKSManager sharedManager];
          v22 = [v11 uniqueIDOverride];
          v23 = v20;
          v9 = v19;
          v8 = v18;
          self = v17;
          v4 = v28;
          -[NSObject setKeyExists:](v15, "setKeyExists:", [v21 ltkExistsForKeyDevice:v22 updateLTKs:v23]);

          [v29 addObject:v15];
        }

LABEL_16:
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  return v29;
}

- (id)autoUnlockDeviceForIDSDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 nsuuid];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 uniqueIDOverride];
    [v5 setUniqueID:v6];

    v7 = [v3 nsuuid];
    [v5 setBluetoothID:v7];

    v8 = [v3 modelIdentifier];
    [v5 setModelIdentifier:v8];

    v9 = [v3 productName];
    [v5 setProductName:v9];

    v10 = [v3 productVersion];
    [v5 setProductVersion:v10];

    v11 = [v3 productBuildVersion];
    [v5 setProductBuildVersion:v11];

    v12 = [v3 name];
    [v5 setName:v12];

    v13 = [v3 enclosureColor];
    [v5 setEnclosureColor:v13];

    [v5 setDefaultPairedDevice:{objc_msgSend(v3, "isDefaultPairedDevice")}];
    [v5 setModelName:@"Apple Watch"];
    if (v3)
    {
      [v3 operatingSystemVersion];
      v14 = v38;
      [v3 operatingSystemVersion];
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
    v17 = [v3 modelIdentifier];
    v18 = sub_100112424(v17);
    v19 = [v18 integerValue];

    v20 = v14 == 7 && v15;
    if (v14 > 7)
    {
      v20 = 1;
    }

    if (v19 > 2)
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
    v23 = [v3 uniqueIDOverride];
    v24 = [v22 sessionKeyExistsForDeviceID:v23];

    v25 = +[SDAutoUnlockAKSManager sharedManager];
    v26 = [v25 deviceIDsMissingSessionKey];
    v27 = [v3 uniqueIDOverride];
    v28 = [v26 containsObject:v27];

    [v5 setSupportsEncryption:v24 & (v28 ^ 1)];
    v29 = +[SDAutoUnlockAKSManager sharedManager];
    v30 = [v3 uniqueIDOverride];
    v31 = [v29 deviceEnabledAsKey:v30];

    [v5 setUnlockEnabled:v31];
    v32 = [v3 nsuuid];
    v16 = v32;
    if (v32 && (v31 & 1) != 0)
    {
      v33 = [v5 proxyBluetoothID];
      [v5 setBluetoothCloudPaired:v33 != 0];
    }

    else
    {
      [v5 setBluetoothCloudPaired:v32 != 0];
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

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 valueForKeyPath:@"@unionOfObjects.uniqueID"];
    v8 = SFCompactStringFromCollection();
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "nearbyDevicesChanged %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(SDUnlockIDSController *)self delegates];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 idsControllerNearbyStateChanged:self];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
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
  v5 = [(SDUnlockIDSController *)self delegates];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 idsControllerSpaceDidBecomeAvailable:self];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = paired_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 type];
    v15 = [v11 data];
    v16 = [v15 length];
    v17 = [v11 data];
    *buf = 67109634;
    v36 = v14;
    v37 = 1024;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming protobuf (type = %d, size = %u, data = %@)", buf, 0x18u);
  }

  v18 = [v10 deviceForFromID:v12];
  v29 = [v18 uniqueIDOverride];

  if (v11)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [(SDUnlockIDSController *)self delegates];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = v12;
      v28 = v10;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v25 = [v11 data];
            [v24 idsController:self didReceiveProtoData:v25 forType:{objc_msgSend(v11, "type")}];
          }

          if (objc_opt_respondsToSelector())
          {
            v26 = [v11 data];
            [v24 idsController:self didReceiveProtoData:v26 forType:objc_msgSend(v11 deviceID:{"type"), v29}];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
      v12 = v27;
      v10 = v28;
    }
  }

  else
  {
    v19 = paired_unlock_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10006C150();
    }
  }
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = paired_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didSwitchActivePairedDevice %@", &v9, 0xCu);
  }

  v7[2](v7);
}

- (id)dataClassStringForDataClass:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"SDUnlockSendDataClassClassA";
  }

  if (a3 == 1)
  {
    return @"SDUnlockSendDataClassClassD";
  }

  else
  {
    return v3;
  }
}

@end