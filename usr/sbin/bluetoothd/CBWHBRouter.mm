@interface CBWHBRouter
- (BOOL)insertIntoDeviceTableWithKey:(id)key value:(id)value;
- (BOOL)insertIntoWHBHostTableWithKey:(id)key value:(id)value;
- (CBWHBRouter)init;
- (CBWHBRouter)initWithOptions:(unint64_t)options;
- (id)descriptionWithLevel:(int)level;
- (id)getCBDeviceForStableId:(id)id onHost:(id)host;
- (id)optimalWHBHostForStableIdentifier:(id)identifier result:(int *)result;
- (id)rankWHBHosts:(id)hosts;
- (unint64_t)calculateMetricforDevice:(id)device onHost:(id)host;
- (unint64_t)coexUsageOfWHBHost:(id)host;
- (void)activate;
- (void)coexChangeNotification:(id)notification;
- (void)deviceConnectionInterruptedOn:(id)on;
- (void)deviceFound:(id)found;
- (void)deviceLost:(id)lost;
- (void)hostConnectionInterruptedOn:(id)on;
- (void)invalidate;
- (void)receivedUpdateEvent:(id)event hostID:(id)d;
- (void)removeDeviceFromDeviceTable:(id)table value:(id)value;
- (void)removeFromDeviceTableWithKey:(id)key value:(id)value;
- (void)removefromRemoteHostMapWithKey:(id)key;
- (void)removefromRemoteHostMapWithKey:(id)key value:(id)value;
- (void)subscribeToCoexStateUpdates;
- (void)unSubscribeFromCoexStateUpdates;
- (void)updateCoexUpdate:(id)update whbHost:(id)host;
@end

@implementation CBWHBRouter

- (CBWHBRouter)init
{
  v8.receiver = self;
  v8.super_class = CBWHBRouter;
  v2 = [(CBWHBRouter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    deviceTable = v2->_deviceTable;
    v2->_deviceTable = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    whbHostTable = v2->_whbHostTable;
    v2->_whbHostTable = v5;

    v2->_options = 7;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v2->_isActivated = 0;
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008058E0();
  }

  return v2;
}

- (CBWHBRouter)initWithOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = CBWHBRouter;
  v4 = [(CBWHBRouter *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    deviceTable = v4->_deviceTable;
    v4->_deviceTable = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    whbHostTable = v4->_whbHostTable;
    v4->_whbHostTable = v7;

    v4->_options = options | 1;
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v4->_isActivated = 0;
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805938();
  }

  return v4;
}

- (void)activate
{
  [(CBWHBRouter *)self subscribeToCoexStateUpdates];
  self->_isActivated = 1;
  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805990();
  }
}

- (void)invalidate
{
  self->_isActivated = 0;
  [(CBWHBRouter *)self unSubscribeFromCoexStateUpdates];
  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008059AC();
  }
}

- (unint64_t)coexUsageOfWHBHost:(id)host
{
  hostCopy = host;
  if ((self->_options & 2) == 0)
  {
    v5 = 1;
LABEL_21:
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_25;
  }

  v6 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  if (v6)
  {
    v7 = v6;
    if ([v6 estimatedConnectionsLastUpdatedTicks])
    {
      mach_absolute_time();
      if (UpTicksToSeconds() >= 0xA)
      {
        [v7 setEstimatedConnections:0];
        [v7 setEstimatedConnectionsLastUpdatedTicks:0];
      }
    }

    Int64 = CFPrefs_GetInt64();
    v9 = 3;
    v10 = Int64;
    if (Int64 != 3)
    {
      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_1008059C8();
      }

      v9 = v10;
    }

    coexUsage = [v7 coexUsage];
    numLEConnection = [coexUsage numLEConnection];

    if (numLEConnection >= v9)
    {
      v5 = 0;
    }

    else
    {
      estimatedConnections = [v7 estimatedConnections];
      coexUsage2 = [v7 coexUsage];
      v5 = &estimatedConnections[[coexUsage2 numLEConnection]] < 3;
    }

    goto LABEL_21;
  }

  if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805A0C();
  }

  v5 = 0;
LABEL_25:

  return v5;
}

- (id)rankWHBHosts:(id)hosts
{
  hostsCopy = hosts;
  v5 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:hostsCopy];
  v6 = v5;
  if (v5)
  {
    hostMap = [v5 hostMap];
    allKeys = [hostMap allKeys];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10010A5BC;
    v25[3] = &unk_100AE07F0;
    v25[4] = self;
    v20 = hostsCopy;
    v26 = hostsCopy;
    v9 = [allKeys sortedArrayUsingComparator:v25];

    v10 = [v9 mutableCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((self->_options & 2) != 0)
          {
            v16 = *(*(&v21 + 1) + 8 * v15);
            if (![(CBWHBRouter *)self coexUsageOfWHBHost:v16])
            {
              if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
              {
                sub_100805A4C();
              }

              [v10 removeObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v17 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
        v13 = v17;
      }

      while (v17);
    }

    v18 = [v10 count];
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (v18 && dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805A8C(v10);
    }

    hostsCopy = v20;
  }

  else
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805AEC();
    }

    v10 = 0;
  }

  return v10;
}

- (void)subscribeToCoexStateUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"coexChangeNotification:" name:@"com.apple.bluetooth.leconnection" object:0];
}

- (void)unSubscribeFromCoexStateUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.bluetooth.leconnection" object:0];
}

- (void)coexChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A7A4;
  v7[3] = &unk_100ADF590;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)insertIntoDeviceTableWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [keyCopy stableIdentifier];
  if (stableIdentifier)
  {
    v9 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:stableIdentifier];
    if (v9)
    {
      v10 = v9;
      hostMap = [(CBDeviceEntry *)v9 hostMap];
      v12 = [hostMap objectForKeyedSubscript:valueCopy];
      v13 = v12;
      if (v12)
      {
        [v12 floatValue];
        *&v15 = (v14 + [keyCopy bleRSSI]) * 0.5;
        v16 = [NSNumber numberWithFloat:v15];
        [hostMap setObject:v16 forKeyedSubscript:valueCopy];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805B88(keyCopy, hostMap, valueCopy);
        }
      }

      else
      {
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [keyCopy bleRSSI]);
        [hostMap setObject:v19 forKeyedSubscript:valueCopy];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805C10(keyCopy);
        }
      }
    }

    else
    {
      v10 = objc_alloc_init(CBDeviceEntry);
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [keyCopy bleRSSI]);
      hostMap2 = [(CBDeviceEntry *)v10 hostMap];
      [hostMap2 setObject:v17 forKeyedSubscript:valueCopy];

      [(NSMutableDictionary *)self->_deviceTable setObject:v10 forKeyedSubscript:stableIdentifier];
      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805C54();
      }
    }
  }

  return stableIdentifier != 0;
}

- (void)removeDeviceFromDeviceTable:(id)table value:(id)value
{
  tableCopy = table;
  valueCopy = value;
  v7 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:tableCopy];
  v8 = v7;
  if (v7)
  {
    hostMap = [v7 hostMap];
    [hostMap removeObjectForKey:valueCopy];
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)removeFromDeviceTableWithKey:(id)key value:(id)value
{
  valueCopy = value;
  stableIdentifier = [key stableIdentifier];
  if (stableIdentifier)
  {
    [(CBWHBRouter *)self removeDeviceFromDeviceTable:stableIdentifier value:valueCopy];
  }
}

- (unint64_t)calculateMetricforDevice:(id)device onHost:(id)host
{
  deviceCopy = device;
  hostCopy = host;
  v8 = hostCopy;
  v9 = 0;
  if (deviceCopy && hostCopy)
  {
    v10 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:deviceCopy];
    v11 = v10;
    if (v10)
    {
      hostMap = [v10 hostMap];
      v13 = [hostMap objectForKeyedSubscript:v8];
      v14 = v13;
      if (v13)
      {
        [v13 floatValue];
        if (v15 <= -85.0)
        {
          v9 = 0;
        }

        else if (v15 < -85.0 || v15 > -80.0)
        {
          v17 = v15 > -50.0 || v15 < -70.0;
          v18 = 3;
          if (v17)
          {
            v18 = 4;
          }

          if (v15 < -80.0 || v15 > -70.0)
          {
            v9 = v18;
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 1;
        }

        if ((self->_options & 2) != 0)
        {
          v9 *= [(CBWHBRouter *)self coexUsageOfWHBHost:v8];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  return v9;
}

- (BOOL)insertIntoWHBHostTableWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [valueCopy stableIdentifier];
  if (stableIdentifier)
  {
    v9 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
    if (v9)
    {
      v10 = v9;
      deviceList = [(CBWHBHostEntry *)v9 deviceList];
      [deviceList setObject:valueCopy forKeyedSubscript:stableIdentifier];

      if (dword_100B50AE8 > 30 || dword_100B50AE8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = objc_alloc_init(CBWHBHostEntry);
      deviceList2 = [(CBWHBHostEntry *)v10 deviceList];
      [deviceList2 setObject:valueCopy forKeyedSubscript:stableIdentifier];

      [(NSMutableDictionary *)self->_whbHostTable setObject:v10 forKeyedSubscript:keyCopy];
      if (dword_100B50AE8 > 30 || dword_100B50AE8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }
    }

    LogPrintF_safe();
LABEL_16:

    goto LABEL_17;
  }

  if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805C70();
  }

LABEL_17:

  return stableIdentifier != 0;
}

- (void)removefromRemoteHostMapWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [valueCopy stableIdentifier];
  if (stableIdentifier)
  {
    v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      deviceList = [v8 deviceList];
      [deviceList removeObjectForKey:stableIdentifier];
    }

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805CB0();
  }
}

- (void)removefromRemoteHostMapWithKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805CF0();
    }

    deviceList = [v5 deviceList];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10010B2E4;
    v10 = &unk_100AE0818;
    selfCopy = self;
    v12 = keyCopy;
    [deviceList enumerateKeysAndObjectsUsingBlock:&v7];
  }

  [(NSMutableDictionary *)self->_whbHostTable removeObjectForKey:keyCopy, v7, v8, v9, v10, selfCopy];
  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805D30();
  }
}

- (void)deviceFound:(id)found
{
  foundCopy = found;
  if (self->_isActivated)
  {
    if (foundCopy)
    {
      v10 = foundCopy;
      if ([foundCopy bleRSSI])
      {
        stableIdentifier = [v10 stableIdentifier];
        if (stableIdentifier)
        {
          remoteHostID = [v10 remoteHostID];
          if (remoteHostID)
          {
            remoteHostID2 = [v10 remoteHostID];
          }

          else
          {
            remoteHostID2 = @"CBLocalHostID";
          }

          if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
          {
            v8 = stableIdentifier;
            v9 = remoteHostID2;
            LogPrintF_safe();
          }

          [(CBWHBRouter *)self insertIntoDeviceTableWithKey:v10 value:remoteHostID2, v8, v9];
          [(CBWHBRouter *)self insertIntoWHBHostTableWithKey:remoteHostID2 value:v10];
        }
      }

      else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805D8C();
      }
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805D70();
  }

  _objc_release_x2();
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  if (self->_isActivated)
  {
    if (lostCopy)
    {
      v10 = lostCopy;
      stableIdentifier = [lostCopy stableIdentifier];
      if (stableIdentifier)
      {
        remoteHostID = [v10 remoteHostID];
        if (remoteHostID)
        {
          remoteHostID2 = [v10 remoteHostID];
        }

        else
        {
          remoteHostID2 = @"CBLocalHostID";
        }

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          v8 = stableIdentifier;
          v9 = remoteHostID2;
          LogPrintF_safe();
        }

        [(CBWHBRouter *)self removeFromDeviceTableWithKey:v10 value:remoteHostID2, v8, v9];
        [(CBWHBRouter *)self removefromRemoteHostMapWithKey:remoteHostID2 value:v10];
      }
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805DA8();
  }

  _objc_release_x2();
}

- (void)hostConnectionInterruptedOn:(id)on
{
  onCopy = on;
  v5 = onCopy;
  if (self->_isActivated)
  {
    v6 = @"CBLocalHostID";
    v10 = onCopy;
    if (onCopy)
    {
      v6 = onCopy;
    }

    v7 = v6;
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805DE0();
    }

    [(CBWHBRouter *)self removefromRemoteHostMapWithKey:v7];
    v8 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v8 reportWhbMetric:&off_100B34248];

    goto LABEL_8;
  }

  if (dword_100B50AE8 <= 90)
  {
    v10 = onCopy;
    if (dword_100B50AE8 != -1 || (v9 = _LogCategory_Initialize(), v5 = v10, v9))
    {
      sub_100805DC4();
LABEL_8:
      v5 = v10;
    }
  }
}

- (void)deviceConnectionInterruptedOn:(id)on
{
  onCopy = on;
  if (self->_isActivated)
  {
    v6 = onCopy;
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805E3C();
    }

    [(CBWHBRouter *)self deviceLost:v6];
    v5 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v5 reportWhbMetric:&off_100B34270];
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805E20();
  }

  _objc_release_x2();
}

- (id)optimalWHBHostForStableIdentifier:(id)identifier result:(int *)result
{
  identifierCopy = identifier;
  if (self->_isActivated)
  {
    if (result)
    {
      *result = 0;
    }

    v7 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:identifierCopy];
    if (!v7)
    {
      if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805EE8();
      }

      v16 = 0;
      if (result)
      {
        *result = 1701;
      }

      goto LABEL_30;
    }

    v8 = [(CBWHBRouter *)self rankWHBHosts:identifierCopy];
    v9 = v8;
    if (v8)
    {
      firstObject = [v8 firstObject];
      if (firstObject)
      {
        v11 = firstObject;
        v12 = [(CBWHBRouter *)self getCBDeviceForStableId:identifierCopy onHost:firstObject];
        v13 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v11];
        [v13 setEstimatedConnections:{objc_msgSend(v13, "estimatedConnections") + 1}];
        [v13 setEstimatedConnectionsLastUpdatedTicks:mach_absolute_time()];
        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805E98(v13);
        }

        v20 = @"CBWHBMetricsKeyEventType";
        v21 = @"CBWHBMetricsKeySubEventType";
        v23 = @"WhbStateEvent";
        v24 = @"OptimalWHBHost";
        v22 = @"CBWHBMetricsKeyHostIdentifier";
        v14 = [v11 isEqual:@"CBLocalHostID"];
        v15 = @"NotLocal";
        if (v14)
        {
          v15 = @"Local";
        }

        goto LABEL_25;
      }

      if (result)
      {
        *result = 345;
      }
    }

    v11 = 0;
    v12 = 0;
    v20 = @"CBWHBMetricsKeyEventType";
    v21 = @"CBWHBMetricsKeySubEventType";
    v23 = @"WhbStateEvent";
    v24 = @"OptimalWHBHost";
    v22 = @"CBWHBMetricsKeyHostIdentifier";
    v15 = @"None";
LABEL_25:
    v25 = v15;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v20 count:3];
    v18 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v18 reportWhbMetric:v17];

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v16 = v12;

LABEL_30:
    goto LABEL_31;
  }

  if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805E7C();
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (id)getCBDeviceForStableId:(id)id onHost:(id)host
{
  idCopy = id;
  hostCopy = host;
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  v9 = v8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000421D4;
  v21 = sub_10004257C;
  v22 = 0;
  if (v8)
  {
    deviceList = [v8 deviceList];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10010BD30;
    v13[3] = &unk_100AE0840;
    v14 = idCopy;
    v15 = hostCopy;
    v16 = &v17;
    [deviceList enumerateKeysAndObjectsUsingBlock:v13];
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if (level > 0x14u)
  {
    v12 = 0;
    v6 = [objc_opt_class() description];
    [(NSMutableDictionary *)self->_deviceTable count];
    [(NSMutableDictionary *)self->_whbHostTable count];
    v7 = &v12;
    goto LABEL_7;
  }

  v13[4] = 0;
  v11 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v4 = 0;

  if (self->_deviceTable)
  {
    v13[3] = v4;
    NSAppendPrintF_safe();
    v5 = v4;

    v13[2] = v5;
    NSAppendPrintF_safe();
    v4 = v5;
  }

  if (self->_whbHostTable)
  {
    v13[1] = v4;
    NSAppendPrintF_safe();
    v6 = v4;

    v13[0] = v6;
    v7 = v13;
LABEL_7:
    NSAppendPrintF_safe();
    v4 = *v7;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = &stru_100B0F9E0;
  }

  v9 = v8;

  return v8;
}

- (void)updateCoexUpdate:(id)update whbHost:(id)host
{
  hostCopy = host;
  v6 = [update objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
  unsignedLongValue = [v6 unsignedLongValue];
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  if (v8)
  {
    v9 = v8;
    [(CBWHBHostEntry *)v8 setEstimatedConnections:0];
    [(CBWHBHostEntry *)v9 setEstimatedConnectionsLastUpdatedTicks:0];
    coexUsage = [(CBWHBHostEntry *)v9 coexUsage];
    [coexUsage setNumLEConnection:unsignedLongValue];
  }

  else
  {
    v9 = objc_alloc_init(CBWHBHostEntry);
    coexUsage2 = [(CBWHBHostEntry *)v9 coexUsage];
    [coexUsage2 setNumLEConnection:unsignedLongValue];

    [(NSMutableDictionary *)self->_whbHostTable setObject:v9 forKeyedSubscript:hostCopy];
  }
}

- (void)receivedUpdateEvent:(id)event hostID:(id)d
{
  eventCopy = event;
  dCopy = d;
  if (self->_isActivated)
  {
    v8 = [eventCopy objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
    v9 = v8;
    if (v8)
    {
      unsignedLongValue = [v8 unsignedLongValue];
      [(CBWHBRouter *)self updateCoexUpdate:eventCopy whbHost:dCopy];
      v14[0] = @"CBWHBMetricsKeyEventType";
      v14[1] = @"CBWHBMetricsKeySubEventType";
      v15[0] = @"CoexUpdateEvent";
      v15[1] = @"ReceivedCoexUpdate";
      v14[2] = @"CBWHBMetricsKeyNumLEConnections";
      v11 = [NSNumber numberWithUnsignedLongLong:unsignedLongValue];
      v15[2] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

      v13 = +[CBMetricsDaemon sharedCBMetricsDaemon];
      [v13 reportWhbMetric:v12];
    }

    else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805F44();
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805F28();
  }
}

@end