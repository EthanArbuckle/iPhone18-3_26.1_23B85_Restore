@interface CBWHBRouter
- (BOOL)insertIntoDeviceTableWithKey:(id)a3 value:(id)a4;
- (BOOL)insertIntoWHBHostTableWithKey:(id)a3 value:(id)a4;
- (CBWHBRouter)init;
- (CBWHBRouter)initWithOptions:(unint64_t)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)getCBDeviceForStableId:(id)a3 onHost:(id)a4;
- (id)optimalWHBHostForStableIdentifier:(id)a3 result:(int *)a4;
- (id)rankWHBHosts:(id)a3;
- (unint64_t)calculateMetricforDevice:(id)a3 onHost:(id)a4;
- (unint64_t)coexUsageOfWHBHost:(id)a3;
- (void)activate;
- (void)coexChangeNotification:(id)a3;
- (void)deviceConnectionInterruptedOn:(id)a3;
- (void)deviceFound:(id)a3;
- (void)deviceLost:(id)a3;
- (void)hostConnectionInterruptedOn:(id)a3;
- (void)invalidate;
- (void)receivedUpdateEvent:(id)a3 hostID:(id)a4;
- (void)removeDeviceFromDeviceTable:(id)a3 value:(id)a4;
- (void)removeFromDeviceTableWithKey:(id)a3 value:(id)a4;
- (void)removefromRemoteHostMapWithKey:(id)a3;
- (void)removefromRemoteHostMapWithKey:(id)a3 value:(id)a4;
- (void)subscribeToCoexStateUpdates;
- (void)unSubscribeFromCoexStateUpdates;
- (void)updateCoexUpdate:(id)a3 whbHost:(id)a4;
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

- (CBWHBRouter)initWithOptions:(unint64_t)a3
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

    v4->_options = a3 | 1;
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

- (unint64_t)coexUsageOfWHBHost:(id)a3
{
  v4 = a3;
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

  v6 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v4];
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

    v11 = [v7 coexUsage];
    v12 = [v11 numLEConnection];

    if (v12 >= v9)
    {
      v5 = 0;
    }

    else
    {
      v13 = [v7 estimatedConnections];
      v14 = [v7 coexUsage];
      v5 = &v13[[v14 numLEConnection]] < 3;
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

- (id)rankWHBHosts:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hostMap];
    v8 = [v7 allKeys];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10010A5BC;
    v25[3] = &unk_100AE07F0;
    v25[4] = self;
    v20 = v4;
    v26 = v4;
    v9 = [v8 sortedArrayUsingComparator:v25];

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

    v4 = v20;
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

- (void)coexChangeNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A7A4;
  v7[3] = &unk_100ADF590;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)insertIntoDeviceTableWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stableIdentifier];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [(CBDeviceEntry *)v9 hostMap];
      v12 = [v11 objectForKeyedSubscript:v7];
      v13 = v12;
      if (v12)
      {
        [v12 floatValue];
        *&v15 = (v14 + [v6 bleRSSI]) * 0.5;
        v16 = [NSNumber numberWithFloat:v15];
        [v11 setObject:v16 forKeyedSubscript:v7];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805B88(v6, v11, v7);
        }
      }

      else
      {
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 bleRSSI]);
        [v11 setObject:v19 forKeyedSubscript:v7];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805C10(v6);
        }
      }
    }

    else
    {
      v10 = objc_alloc_init(CBDeviceEntry);
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 bleRSSI]);
      v18 = [(CBDeviceEntry *)v10 hostMap];
      [v18 setObject:v17 forKeyedSubscript:v7];

      [(NSMutableDictionary *)self->_deviceTable setObject:v10 forKeyedSubscript:v8];
      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805C54();
      }
    }
  }

  return v8 != 0;
}

- (void)removeDeviceFromDeviceTable:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hostMap];
    [v9 removeObjectForKey:v6];
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)removeFromDeviceTableWithKey:(id)a3 value:(id)a4
{
  v7 = a4;
  v6 = [a3 stableIdentifier];
  if (v6)
  {
    [(CBWHBRouter *)self removeDeviceFromDeviceTable:v6 value:v7];
  }
}

- (unint64_t)calculateMetricforDevice:(id)a3 onHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 hostMap];
      v13 = [v12 objectForKeyedSubscript:v8];
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

- (BOOL)insertIntoWHBHostTableWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 stableIdentifier];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [(CBWHBHostEntry *)v9 deviceList];
      [v11 setObject:v7 forKeyedSubscript:v8];

      if (dword_100B50AE8 > 30 || dword_100B50AE8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = objc_alloc_init(CBWHBHostEntry);
      v12 = [(CBWHBHostEntry *)v10 deviceList];
      [v12 setObject:v7 forKeyedSubscript:v8];

      [(NSMutableDictionary *)self->_whbHostTable setObject:v10 forKeyedSubscript:v6];
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

  return v8 != 0;
}

- (void)removefromRemoteHostMapWithKey:(id)a3 value:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 stableIdentifier];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v11];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 deviceList];
      [v10 removeObjectForKey:v7];
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

- (void)removefromRemoteHostMapWithKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v4];
  if (v5)
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805CF0();
    }

    v6 = [v5 deviceList];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10010B2E4;
    v10 = &unk_100AE0818;
    v11 = self;
    v12 = v4;
    [v6 enumerateKeysAndObjectsUsingBlock:&v7];
  }

  [(NSMutableDictionary *)self->_whbHostTable removeObjectForKey:v4, v7, v8, v9, v10, v11];
  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805D30();
  }
}

- (void)deviceFound:(id)a3
{
  v4 = a3;
  if (self->_isActivated)
  {
    if (v4)
    {
      v10 = v4;
      if ([v4 bleRSSI])
      {
        v5 = [v10 stableIdentifier];
        if (v5)
        {
          v6 = [v10 remoteHostID];
          if (v6)
          {
            v7 = [v10 remoteHostID];
          }

          else
          {
            v7 = @"CBLocalHostID";
          }

          if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
          {
            v8 = v5;
            v9 = v7;
            LogPrintF_safe();
          }

          [(CBWHBRouter *)self insertIntoDeviceTableWithKey:v10 value:v7, v8, v9];
          [(CBWHBRouter *)self insertIntoWHBHostTableWithKey:v7 value:v10];
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

- (void)deviceLost:(id)a3
{
  v4 = a3;
  if (self->_isActivated)
  {
    if (v4)
    {
      v10 = v4;
      v5 = [v4 stableIdentifier];
      if (v5)
      {
        v6 = [v10 remoteHostID];
        if (v6)
        {
          v7 = [v10 remoteHostID];
        }

        else
        {
          v7 = @"CBLocalHostID";
        }

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          v8 = v5;
          v9 = v7;
          LogPrintF_safe();
        }

        [(CBWHBRouter *)self removeFromDeviceTableWithKey:v10 value:v7, v8, v9];
        [(CBWHBRouter *)self removefromRemoteHostMapWithKey:v7 value:v10];
      }
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805DA8();
  }

  _objc_release_x2();
}

- (void)hostConnectionInterruptedOn:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isActivated)
  {
    v6 = @"CBLocalHostID";
    v10 = v4;
    if (v4)
    {
      v6 = v4;
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
    v10 = v4;
    if (dword_100B50AE8 != -1 || (v9 = _LogCategory_Initialize(), v5 = v10, v9))
    {
      sub_100805DC4();
LABEL_8:
      v5 = v10;
    }
  }
}

- (void)deviceConnectionInterruptedOn:(id)a3
{
  v4 = a3;
  if (self->_isActivated)
  {
    v6 = v4;
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

- (id)optimalWHBHostForStableIdentifier:(id)a3 result:(int *)a4
{
  v6 = a3;
  if (self->_isActivated)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:v6];
    if (!v7)
    {
      if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805EE8();
      }

      v16 = 0;
      if (a4)
      {
        *a4 = 1701;
      }

      goto LABEL_30;
    }

    v8 = [(CBWHBRouter *)self rankWHBHosts:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 firstObject];
      if (v10)
      {
        v11 = v10;
        v12 = [(CBWHBRouter *)self getCBDeviceForStableId:v6 onHost:v10];
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

      if (a4)
      {
        *a4 = 345;
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

- (id)getCBDeviceForStableId:(id)a3 onHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v7];
  v9 = v8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000421D4;
  v21 = sub_10004257C;
  v22 = 0;
  if (v8)
  {
    v10 = [v8 deviceList];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10010BD30;
    v13[3] = &unk_100AE0840;
    v14 = v6;
    v15 = v7;
    v16 = &v17;
    [v10 enumerateKeysAndObjectsUsingBlock:v13];
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)descriptionWithLevel:(int)a3
{
  if (a3 > 0x14u)
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

- (void)updateCoexUpdate:(id)a3 whbHost:(id)a4
{
  v12 = a4;
  v6 = [a3 objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
  v7 = [v6 unsignedLongValue];
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v12];
  if (v8)
  {
    v9 = v8;
    [(CBWHBHostEntry *)v8 setEstimatedConnections:0];
    [(CBWHBHostEntry *)v9 setEstimatedConnectionsLastUpdatedTicks:0];
    v10 = [(CBWHBHostEntry *)v9 coexUsage];
    [v10 setNumLEConnection:v7];
  }

  else
  {
    v9 = objc_alloc_init(CBWHBHostEntry);
    v11 = [(CBWHBHostEntry *)v9 coexUsage];
    [v11 setNumLEConnection:v7];

    [(NSMutableDictionary *)self->_whbHostTable setObject:v9 forKeyedSubscript:v12];
  }
}

- (void)receivedUpdateEvent:(id)a3 hostID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isActivated)
  {
    v8 = [v6 objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedLongValue];
      [(CBWHBRouter *)self updateCoexUpdate:v6 whbHost:v7];
      v14[0] = @"CBWHBMetricsKeyEventType";
      v14[1] = @"CBWHBMetricsKeySubEventType";
      v15[0] = @"CoexUpdateEvent";
      v15[1] = @"ReceivedCoexUpdate";
      v14[2] = @"CBWHBMetricsKeyNumLEConnections";
      v11 = [NSNumber numberWithUnsignedLongLong:v10];
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