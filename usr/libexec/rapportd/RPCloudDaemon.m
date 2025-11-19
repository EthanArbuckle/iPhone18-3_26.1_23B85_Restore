@interface RPCloudDaemon
+ (id)sharedCloudDaemon;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)a3;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForSelf;
- (BOOL)idsHasAppleTV;
- (BOOL)idsHasHomePod;
- (BOOL)idsHasMac;
- (BOOL)idsHasRealityDevice;
- (BOOL)idsHasWatch;
- (BOOL)idsHasiPad;
- (BOOL)idsIsSignedIn;
- (BOOL)sendIDSMessage:(id)a3 cloudServiceID:(id)a4 frameType:(unsigned __int8)a5 destinationID:(id)a6 sendFlags:(unsigned int)a7 msgCtx:(id)a8 error:(id *)a9;
- (NSArray)idsDeviceArray;
- (NSDictionary)idsDeviceMap;
- (NSDictionary)idsFamilyEndpointMap;
- (NSSet)idsAccountSet;
- (NSString)idsDeviceIDSelf;
- (RPCloudDaemon)init;
- (id)_idsAccountWithURI:(id)a3 senderID:(id *)a4;
- (id)_idsURIWithID:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)idsCorrelationIdentifier;
- (id)idsDeviceForBluetoothUUID:(id)a3;
- (int)idsHandheldCount;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_primaryAppleIDChanged;
- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 msgCtx:(id)a6;
- (void)_receivedFriendIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 msgCtx:(id)a6;
- (void)_receivedWatchIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 fromID:(id)a6;
- (void)_receivedWatchIdentityRequest:(id)a3 fromIDSDevice:(id)a4;
- (void)_receivedWatchIdentityResponse:(id)a3 fromIDSDevice:(id)a4;
- (void)_update;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)a3;
- (void)idsFamilyEndpointQueryWithCompletion:(id)a3;
- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)a3;
- (void)invalidate;
- (void)prefsChanged;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
- (void)setIdsFamilyEndpointMap:(id)a3;
@end

@implementation RPCloudDaemon

+ (id)sharedCloudDaemon
{
  if (qword_1001D6010 != -1)
  {
    sub_10000D068();
  }

  v3 = qword_1001D6008;

  return v3;
}

- (NSString)idsDeviceIDSelf
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_idsDeviceIDSelf;
  if (!v3)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    if (v3)
    {
      objc_storeStrong(&v2->_idsDeviceIDSelf, v3);
    }

    else
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v3 = 0;
    }
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)idsIsSignedIn
{
  v2 = self;
  objc_sync_enter(v2);
  prefIsSignedInForce = v2->_prefIsSignedInForce;
  if (prefIsSignedInForce < 0)
  {
    if (v2->_idsIsSignedInCache < 0)
    {
      nearbyIDSService = v2->_nearbyIDSService;
      if (nearbyIDSService)
      {
        v2->_idsIsSignedInCache = 0;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v6 = [nearbyIDSService accounts];
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          v8 = *v12;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v6);
              }

              if ([*(*(&v11 + 1) + 8 * i) isActive])
              {
                v2->_idsIsSignedInCache = 1;
                goto LABEL_15;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }
    }

    v4 = v2->_idsIsSignedInCache > 0;
  }

  else
  {
    v4 = prefIsSignedInForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (int)idsHandheldCount
{
  v2 = self;
  objc_sync_enter(v2);
  idsHandheldCountCache = v2->_idsHandheldCountCache;
  if (idsHandheldCountCache < 0 && v2->_nearbyIDSService)
  {
    v2->_idsHandheldCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(RPCloudDaemon *)v2 idsDeviceArray];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
          v9 = GestaltProductTypeStringToDeviceClass() - 4 < 0xFFFFFFFD;

          if (!v9)
          {
            ++v2->_idsHandheldCountCache;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    idsHandheldCountCache = v2->_idsHandheldCountCache;
  }

  objc_sync_exit(v2);

  return idsHandheldCountCache;
}

- (BOOL)idsHasMac
{
  v2 = self;
  objc_sync_enter(v2);
  prefHasMacForce = v2->_prefHasMacForce;
  if (prefHasMacForce < 0)
  {
    if (v2->_idsHasMacCache < 0 && v2->_nearbyIDSService)
    {
      v2->_idsHasMacCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(RPCloudDaemon *)v2 idsDeviceArray];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [v9 containsString:@"Mac"];

            if (v10)
            {
              v2->_idsHasMacCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = v2->_idsHasMacCache > 0;
  }

  else
  {
    v4 = prefHasMacForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)idsHasHomePod
{
  v2 = self;
  objc_sync_enter(v2);
  prefHasHomePodForce = v2->_prefHasHomePodForce;
  if (prefHasHomePodForce < 0)
  {
    if (v2->_idsHasHomePodCache < 0 && v2->_nearbyIDSService)
    {
      v2->_idsHasHomePodCache = 0;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(RPCloudDaemon *)v2 idsDeviceArray];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
            if ([v9 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"HomePod"))
            {

              v2->_idsHasHomePodCache = 1;
              goto LABEL_18;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    v4 = v2->_idsHasHomePodCache > 0;
  }

  else
  {
    v4 = prefHasHomePodForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)idsHasAppleTV
{
  v2 = self;
  objc_sync_enter(v2);
  prefHasAppleTVForce = v2->_prefHasAppleTVForce;
  if (prefHasAppleTVForce < 0)
  {
    if (v2->_idsHasAppleTVCache < 0 && v2->_nearbyIDSService)
    {
      v2->_idsHasAppleTVCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(RPCloudDaemon *)v2 idsDeviceArray];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [v9 hasPrefix:@"AppleTV"];

            if (v10)
            {
              v2->_idsHasAppleTVCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = v2->_idsHasAppleTVCache > 0;
  }

  else
  {
    v4 = prefHasAppleTVForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)idsHasWatch
{
  if (![(RPCloudDaemon *)self idsIsSignedIn])
  {
    return 0;
  }

  v3 = self;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(RPCloudDaemon *)v3 idsDeviceArray];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
        v9 = [v8 hasPrefix:@"Watch"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  objc_sync_exit(v3);
  return v10;
}

- (NSArray)idsDeviceArray
{
  v2 = self;
  objc_sync_enter(v2);
  idsDeviceArray = v2->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = [v2->_nearbyIDSService devices];
    v5 = v2->_idsDeviceArray;
    v2->_idsDeviceArray = v4;

    idsDeviceArray = v2->_idsDeviceArray;
  }

  v6 = idsDeviceArray;
  objc_sync_exit(v2);

  return v6;
}

- (NSDictionary)idsDeviceMap
{
  v2 = self;
  objc_sync_enter(v2);
  idsDeviceMap = v2->_idsDeviceMap;
  if (idsDeviceMap)
  {
LABEL_13:
    v14 = idsDeviceMap;
    goto LABEL_14;
  }

  v4 = [(RPCloudDaemon *)v2 idsDeviceArray];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 uniqueIDOverride];
          if (v11)
          {
            [v5 setObject:v10 forKeyedSubscript:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [v5 copy];
    v13 = v2->_idsDeviceMap;
    v2->_idsDeviceMap = v12;

    idsDeviceMap = v2->_idsDeviceMap;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:
  objc_sync_exit(v2);

  return v14;
}

- (id)idsCorrelationIdentifier
{
  idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
  if (!idsCorrelationIdentifier)
  {
    if (self->_idQueryInProgress)
    {
      idsCorrelationIdentifier = 0;
    }

    else
    {
      v4 = [(CUSystemMonitor *)self->_systemMonitor primaryAppleID];
      v5 = [v4 _bestGuessURI];
      if (v5)
      {
        v6 = [NSArray arrayWithObject:v5];
        v7 = +[IDSIDQueryController sharedInstance];
        dispatchQueue = self->_dispatchQueue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100016F3C;
        v10[3] = &unk_1001AAAF0;
        v10[4] = self;
        v10[5] = v4;
        [v7 currentRemoteDevicesForDestinations:v6 service:@"com.apple.private.alloy.nearby" listenerID:@"com.apple.private.alloy.nearby" queue:dispatchQueue completionBlock:v10];
        self->_idQueryInProgress = 1;
      }

      idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
    }
  }

  return idsCorrelationIdentifier;
}

- (NSDictionary)idsFamilyEndpointMap
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsFamilyEndpointMap = self->_idsFamilyEndpointMap;

  return idsFamilyEndpointMap;
}

- (RPCloudDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPCloudDaemon;
  v2 = [(RPCloudDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_prefIsSignedInForce = -1;
    *&v3->_idsHandheldCountCache = -1;
    *&v3->_idsHasHomePodCache = -1;
    *&v3->_idsHasMacCache = -1;
    v3->_idsIsSignedInCache = -1;
    *&v3->_prefHasAppleTVForce = -1;
    *&v3->_prefHasiPadForce = -1;
    v3->_prefHasRealityDeviceForce = -1;
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSDictionary *)self->_idsFamilyEndpointMap allKeys];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v22 = *v26;
    v3 = &stru_1001B1A70;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v4);
        v7 = [(NSDictionary *)self->_idsFamilyEndpointMap objectForKeyedSubscript:v6];
        v8 = [v7 familyEndpointData];
        v9 = [v8 deviceName];
        v10 = [(NSDictionary *)self->_idsFamilyEndpointMap objectForKeyedSubscript:v6];
        v11 = [v10 familyEndpointData];
        v12 = [v11 productVersion];
        v13 = [NSString stringWithFormat:@"    IDSID: %@, name: %@, productVersion: %@\n", v6, v9, v12];

        v3 = [(__CFString *)v5 stringByAppendingString:v13];

        v4 = v4 + 1;
        v5 = v3;
      }

      while (v24 != v4);
      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  else
  {
    v3 = &stru_1001B1A70;
  }

  v14 = [(RPCloudDaemon *)self idsDeviceArray];
  [v14 count];
  [(RPCloudDaemon *)self idsIsSignedIn];
  [(RPCloudDaemon *)self idsHasAppleTV];
  [(RPCloudDaemon *)self idsHasHomePod];
  [(RPCloudDaemon *)self idsHasiPad];
  [(RPCloudDaemon *)self idsHasMac];
  [(RPCloudDaemon *)self idsHasWatch];
  [(RPCloudDaemon *)self idsHasRealityDevice];
  [(RPCloudDaemon *)self idsHandheldCount];
  v15 = [(RPCloudDaemon *)self idsFamilyEndpointMap];
  [v15 count];
  NSAppendPrintF();
  v16 = 0;

  if (a3 <= 20)
  {
    NSAppendPrintF();
    v17 = v16;

    v16 = v17;
  }

  v18 = v16;

  return v16;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016200;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016414;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v8 = v2;
    self->_invalidateCalled = 1;
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E004();
    }

    [(CUSystemMonitor *)self->_systemMonitor invalidate:v3];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    [(RPCloudDaemon *)self _idsEnsureStopped];

    [(RPCloudDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E020();
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)a3
{
  if ((a3 & 0x400) != 0)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E03C();
    }

    [(RPCloudDaemon *)self idsFamilyEndpointsUpdateWithForce:1];
  }
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  prefHasAppleTVForce = self->_prefHasAppleTVForce;
  if (v3 != prefHasAppleTVForce)
  {
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        prefHasAppleTVForce = self->_prefHasAppleTVForce;
      }

      v16 = prefHasAppleTVForce;
      v17 = v3;
      LogPrintF();
    }

LABEL_6:
    self->_prefHasAppleTVForce = v3;
  }

  v5 = CFPrefs_GetInt64() != 0;
  prefHasHomePodForce = self->_prefHasHomePodForce;
  if (v5 == prefHasHomePodForce)
  {
    goto LABEL_13;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      prefHasHomePodForce = self->_prefHasHomePodForce;
    }

    v16 = prefHasHomePodForce;
    v17 = v5;
    LogPrintF();
  }

LABEL_12:
  self->_prefHasHomePodForce = v5;
LABEL_13:
  v7 = CFPrefs_GetInt64() != 0;
  prefHasiPadForce = self->_prefHasiPadForce;
  if (v7 == prefHasiPadForce)
  {
    goto LABEL_19;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      prefHasiPadForce = self->_prefHasiPadForce;
    }

    v16 = prefHasiPadForce;
    v17 = v7;
    LogPrintF();
  }

LABEL_18:
  self->_prefHasiPadForce = v7;
LABEL_19:
  v9 = CFPrefs_GetInt64() != 0;
  prefHasMacForce = self->_prefHasMacForce;
  if (v9 == prefHasMacForce)
  {
    goto LABEL_25;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      prefHasMacForce = self->_prefHasMacForce;
    }

    v16 = prefHasMacForce;
    v17 = v9;
    LogPrintF();
  }

LABEL_24:
  self->_prefHasMacForce = v9;
LABEL_25:
  v11 = CFPrefs_GetInt64() != 0;
  prefHasRealityDeviceForce = self->_prefHasRealityDeviceForce;
  if (v11 == prefHasRealityDeviceForce)
  {
    goto LABEL_31;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      prefHasRealityDeviceForce = self->_prefHasRealityDeviceForce;
    }

    v16 = prefHasRealityDeviceForce;
    v17 = v11;
    LogPrintF();
  }

LABEL_30:
  self->_prefHasRealityDeviceForce = v11;
LABEL_31:
  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefIDSEnabled != v13)
  {
    if (dword_1001D30F8 <= 40 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E084();
    }

    self->_prefIDSEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  prefIsSignedInForce = self->_prefIsSignedInForce;
  if (v14 != prefIsSignedInForce)
  {
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        prefIsSignedInForce = self->_prefIsSignedInForce;
      }

      v16 = prefIsSignedInForce;
      v17 = v14;
      LogPrintF();
    }

LABEL_41:
    self->_prefIsSignedInForce = v14;
  }

  [(RPCloudDaemon *)self _update:v16];
}

- (void)_update
{
  if (self->_prefIDSEnabled)
  {
    [(RPCloudDaemon *)self _idsEnsureStarted];
  }

  else
  {
    [(RPCloudDaemon *)self _idsEnsureStopped];
  }
}

- (void)_primaryAppleIDChanged
{
  idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
  self->_idsCorrelationIdentifier = 0;
}

- (void)_idsEnsureStarted
{
  if (!self->_nearbyIDSService)
  {
    if (dword_1001D30F8 <= 40 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E0E0();
    }

    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.nearby"];
    nearbyIDSService = self->_nearbyIDSService;
    self->_nearbyIDSService = v4;

    dispatchQueue = self->_dispatchQueue;
    v6 = self->_nearbyIDSService;

    [(IDSService *)v6 addDelegate:self queue:dispatchQueue];
  }
}

- (void)_idsEnsureStopped
{
  if (self->_nearbyIDSService)
  {
    if (dword_1001D30F8 <= 40 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E0FC();
    }

    [self->_nearbyIDSService removeDelegate:self];
    nearbyIDSService = self->_nearbyIDSService;
    self->_nearbyIDSService = 0;
  }

  idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
  self->_idsCorrelationIdentifier = 0;
}

- (id)_idsAccountWithURI:(id)a3 senderID:(id *)a4
{
  v6 = a3;
  v7 = IDSCopyRawAddressForDestination();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = [self->_nearbyIDSService accounts];
  v9 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    v44 = a4;
    v46 = v6;
    v40 = *v60;
    v42 = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        if ([v13 canSend])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v14 = [v13 aliasStrings];
          v15 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v56;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v56 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v55 + 1) + 8 * j);
                if ([v19 isEqual:v7])
                {
                  if (v44)
                  {
                    v33 = [(RPCloudDaemon *)v42 _idsURIWithID:v19];
                    v34 = *v44;
                    *v44 = v33;
                  }

                  v32 = v13;
                  goto LABEL_40;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v11 = v40;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
      a4 = v44;
      v6 = v46;
      self = v42;
    }

    while (v10);
  }

  if ([v6 _FZIDType] == -1)
  {
    v32 = 0;
  }

  else
  {
    v8 = IMCanonicalizeFormattedString();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v14 = [self->_nearbyIDSService accounts];
    v20 = [v14 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v20)
    {
      v21 = v20;
      v43 = self;
      v45 = a4;
      v46 = v6;
      v22 = *v52;
      v38 = *v52;
      do
      {
        v23 = 0;
        v39 = v21;
        do
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v51 + 1) + 8 * v23);
          if ([v24 canSend])
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v41 = v24;
            v25 = [v24 aliasStrings];
            v26 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v48;
              while (2)
              {
                for (k = 0; k != v27; k = k + 1)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v47 + 1) + 8 * k);
                  v31 = IMCanonicalizeFormattedString();
                  if ([v31 isEqual:v8])
                  {
                    if (v45)
                    {
                      v36 = [(RPCloudDaemon *)v43 _idsURIWithID:v30];
                      v37 = *v45;
                      *v45 = v36;
                    }

                    v32 = v41;

                    goto LABEL_40;
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            v22 = v38;
            v21 = v39;
          }

          v23 = v23 + 1;
        }

        while (v23 != v21);
        v21 = [v14 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v21);
      v32 = 0;
LABEL_40:
      v6 = v46;
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (NSSet)idsAccountSet
{
  v2 = self;
  objc_sync_enter(v2);
  idsAccountSet = v2->_idsAccountSet;
  if (!idsAccountSet)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = [v2->_nearbyIDSService accounts];
    v5 = v2->_idsAccountSet;
    v2->_idsAccountSet = v4;

    idsAccountSet = v2->_idsAccountSet;
  }

  v6 = idsAccountSet;
  objc_sync_exit(v2);

  return v6;
}

- (id)idsDeviceForBluetoothUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(RPCloudDaemon *)v5 idsDeviceArray];
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

  objc_sync_exit(v5);

  return v7;
}

- (void)idsFamilyEndpointQueryWithCompletion:(id)a3
{
  v8 = a3;
  v4 = +[RPPeopleDaemon sharedPeopleDaemon];
  v5 = [v4 getFamilyURIs];

  v6 = +[IDSIDQueryController sharedInstance];
  v7 = +[IDSIDInfoOptions refreshIDInfo];
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E14C();
  }

  [v6 idInfoForDestinations:v5 service:@"com.apple.private.alloy.nearby.family" infoTypes:1 options:v7 listenerID:@"com.apple.private.alloy.nearby" queue:self->_dispatchQueue completionBlock:v8];
}

- (void)setIdsFamilyEndpointMap:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsFamilyEndpointMap = self->_idsFamilyEndpointMap;
  self->_idsFamilyEndpointMap = v4;
}

- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)a3
{
  v5 = +[NSDate date];
  v6 = v5;
  if (self->_lastFamilyQueryDate)
  {
    [v5 timeIntervalSinceDate:?];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if ([(RPCloudDaemon *)self getDeviceClass]== 4 && !self->_idQueryInProgress && (a3 || v8 == 0.0 || v8 > 300.0))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001769C;
    v9[3] = &unk_1001AAB18;
    v9[4] = self;
    [(RPCloudDaemon *)self idsFamilyEndpointQueryWithCompletion:v9];
    self->_idQueryInProgress = 1;
  }
}

- (BOOL)idsHasiPad
{
  v2 = self;
  objc_sync_enter(v2);
  prefHasiPadForce = v2->_prefHasiPadForce;
  if (prefHasiPadForce < 0)
  {
    if (v2->_idsHasiPadCache < 0 && v2->_nearbyIDSService)
    {
      v2->_idsHasiPadCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(RPCloudDaemon *)v2 idsDeviceArray];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [v9 hasPrefix:@"iPad"];

            if (v10)
            {
              v2->_idsHasiPadCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = v2->_idsHasiPadCache > 0;
  }

  else
  {
    v4 = prefHasiPadForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)idsHasRealityDevice
{
  v2 = self;
  objc_sync_enter(v2);
  prefHasRealityDeviceForce = v2->_prefHasRealityDeviceForce;
  if (prefHasRealityDeviceForce < 0)
  {
    if (v2->_idsHasRealityDeviceCache < 0 && v2->_nearbyIDSService)
    {
      v2->_idsHasRealityDeviceCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(RPCloudDaemon *)v2 idsDeviceArray];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [v9 hasPrefix:@"RealityDevice"];

            if (v10)
            {
              v2->_idsHasRealityDeviceCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = v2->_idsHasRealityDeviceCache > 0;
  }

  else
  {
    v4 = prefHasRealityDeviceForce != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)_idsURIWithID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 _FZIDType] == -1)
    {
      v6 = [v4 _bestGuessURI];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }

      v5 = v8;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v27 = a5;
  v11 = a6;
  v12 = a7;
  dispatchQueue = self->_dispatchQueue;
  v14 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v15 = [v27 length];
  nearbyIDSService = self->_nearbyIDSService;

  if (nearbyIDSService == v14)
  {
    v17 = @"com.apple.private.alloy.nearby";
    v18 = [v27 bytes];
    v19 = v15 - 4;
    if (v15 < 4)
    {
      if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v20 = v18;
    v21 = (v18[1] << 16) | (v18[2] << 8) | v18[3];
    if (v19 < v21)
    {
      if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

LABEL_12:
      LogPrintF();
      goto LABEL_15;
    }

    v22 = objc_alloc_init(RPCloudMessageContext);
    [(RPCloudMessageContext *)v22 setCloudServiceID:v17];
    [(RPCloudMessageContext *)v22 setFromID:v11];
    v23 = [v12 toID];
    [(RPCloudMessageContext *)v22 setToID:v23];

    v24 = *v20;
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      v25 = [(RPCloudMessageContext *)v22 toID];
      LogPrintF();
    }

    v26 = v24 - 32;
    if ((v24 - 32) <= 0x21)
    {
      if (((1 << v26) & 7) != 0)
      {
        [(RPCloudDaemon *)self _receivedFamilyIdentityFrameType:v24 ptr:v20 + 4 length:v21 msgCtx:v22];
        goto LABEL_38;
      }

      if (((1 << v26) & 0x30000) != 0)
      {
        [(RPCloudDaemon *)self _receivedWatchIdentityFrameType:v24 ptr:v20 + 4 length:v21 fromID:v11];
        goto LABEL_38;
      }

      if (((1 << v26) & 0x300000000) != 0)
      {
        [(RPCloudDaemon *)self _receivedFriendIdentityFrameType:v24 ptr:v20 + 4 length:v21 msgCtx:v22];
LABEL_38:

        goto LABEL_15;
      }
    }

    if (v24 != 1 && dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000183B0(v24);
      LogPrintF();
    }

    goto LABEL_38;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v17 = 0;
LABEL_15:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v17 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  if (v15 || !a6)
  {
    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E238();
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E278();
  }
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2B8(v6);
  }

  v7 = self;
  objc_sync_enter(v7);
  idsDeviceArray = v7->_idsDeviceArray;
  v7->_idsDeviceArray = 0;

  idsAccountSet = v7->_idsAccountSet;
  v7->_idsAccountSet = 0;

  idsDeviceMap = v7->_idsDeviceMap;
  v7->_idsDeviceMap = 0;

  v7->_idsIsSignedInCache = -1;
  *&v7->_idsHasHomePodCache = -1;
  *&v7->_idsHasMacCache = -1;
  *&v7->_idsHandheldCountCache = -1;
  objc_sync_exit(v7);

  v11 = +[RPDaemon sharedDaemon];
  [v11 postDaemonInfoChanges:1];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2FC(v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = v8;
          if (dword_1001D30F8 <= 90)
          {
            if (dword_1001D30F8 != -1 || (v19 = v8, _LogCategory_Initialize()))
            {
              sub_10010E340();
              v19 = v8;
            }
          }

          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v8 copy];
  v15 = self;
  objc_sync_enter(v15);
  idsDeviceArray = v15->_idsDeviceArray;
  v15->_idsDeviceArray = v14;
  v17 = v14;

  idsDeviceMap = v15->_idsDeviceMap;
  v15->_idsDeviceMap = 0;

  v15->_idsIsSignedInCache = -1;
  *&v15->_idsHasHomePodCache = -1;
  *&v15->_idsHasMacCache = -1;
  *&v15->_idsHandheldCountCache = -1;
  objc_sync_exit(v15);

  v19 = +[RPDaemon sharedDaemon];

  [v19 postDaemonInfoChanges:1];
LABEL_16:
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_1001D30F8 <= 30)
  {
    v6 = v3;
    if (dword_1001D30F8 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10010E380();
      v4 = v6;
    }
  }
}

- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 msgCtx:(id)a6
{
  v6 = a3;
  v7 = a6;
  v8 = [v7 fromID];
  v9 = OPACKDecodeBytes();
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = IDSCopyRawAddressForDestination();
      v11 = v10;
      if (!v10)
      {
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E3E4();
        }

        goto LABEL_28;
      }

      if ([v10 _appearsToBePhoneNumber])
      {
        CUNormalizePhoneNumber();
      }

      else
      {
        CUNormalizeEmailAddress();
      }
      v12 = ;
      [v7 setAppleID:v12];

      switch(v6)
      {
        case '""':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityUpdate:v9 msgCtx:v7];
          break;
        case '!':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityResponse:v9 msgCtx:v7];
          break;
        case ' ':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityRequest:v9 msgCtx:v7];
          break;
        default:
          if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
          {
            sub_10010E39C(v6);
          }

          goto LABEL_28;
      }

LABEL_28:
      goto LABEL_34;
    }

    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
LABEL_33:
      LogPrintF();
    }
  }

  else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)_receivedFriendIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 msgCtx:(id)a6
{
  v6 = a3;
  v7 = a6;
  v8 = [v7 fromID];
  v9 = OPACKDecodeBytes();
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = IDSCopyRawAddressForDestination();
      v11 = v10;
      if (!v10)
      {
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E46C();
        }

        goto LABEL_28;
      }

      if ([v10 _appearsToBePhoneNumber])
      {
        CUNormalizePhoneNumber();
      }

      else
      {
        CUNormalizeEmailAddress();
      }
      v12 = ;
      [v7 setAppleID:v12];

      switch(v6)
      {
        case 'B':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityUpdate:v9 msgCtx:v7];
          break;
        case 'A':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityResponse:v9 msgCtx:v7];
          break;
        case '@':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityRequest:v9 msgCtx:v7];
          break;
        default:
          if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
          {
            sub_10010E424(v6);
          }

          goto LABEL_28;
      }

LABEL_28:
      goto LABEL_34;
    }

    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
LABEL_33:
      LogPrintF();
    }
  }

  else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)_receivedWatchIdentityFrameType:(unsigned __int8)a3 ptr:(const char *)a4 length:(unint64_t)a5 fromID:(id)a6
{
  v6 = a3;
  v8 = a6;
  if ([v8 hasPrefix:@"device:"])
  {
    v9 = [(RPCloudDaemon *)self idsDeviceMap];
    v10 = [v8 substringFromIndex:7];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (!v11)
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E534();
      }

      goto LABEL_32;
    }

    v12 = OPACKDecodeBytes();
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v6 == 49)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityResponse:v12 fromIDSDevice:v11];
        }

        else if (v6 == 48)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityRequest:v12 fromIDSDevice:v11];
        }

        else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E4EC(v6);
        }

        goto LABEL_31;
      }

      if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
      {
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }
    }

    else if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    LogPrintF();
    goto LABEL_31;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E4AC();
  }

LABEL_33:
}

- (void)_receivedWatchIdentityRequest:(id)a3 fromIDSDevice:(id)a4
{
  v11 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v7 = [v6 uniqueIDOverride];
    if (v7)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E590();
      }

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 saveIdentityWithIDSDeviceID:v7 message:v11 error:0];

      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v10 addSelfIdentityInfoToMessage:v9 flags:0];

      [(RPCloudDaemon *)self sendIDSMessage:v9 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:49 destinationDevice:v6 sendFlags:1 msgCtx:0 error:0];
    }

    else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E5D0();
    }
  }

  else if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E574();
  }
}

- (void)_receivedWatchIdentityResponse:(id)a3 fromIDSDevice:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v7 = [v6 uniqueIDOverride];
    if (v7)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E60C();
      }

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 saveIdentityWithIDSDeviceID:v7 message:v9 error:0];
    }

    else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E64C();
    }
  }

  else if (dword_1001D30F8 <= 60 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E5EC();
  }
}

- (BOOL)sendIDSMessage:(id)a3 cloudServiceID:(id)a4 frameType:(unsigned __int8)a5 destinationID:(id)a6 sendFlags:(unsigned int)a7 msgCtx:(id)a8 error:(id *)a9
{
  v10 = a7;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v58 = 0;
  Data = OPACKEncoderCreateData();
  v18 = Data;
  if (Data)
  {
    v50 = v14;
    v57[0] = a5;
    v19 = [Data length];
    v57[1] = BYTE2(v19);
    v57[2] = BYTE1(v19);
    v57[3] = v19;
    v20 = objc_alloc_init(NSMutableData);
    [v20 appendBytes:v57 length:4];
    [v20 appendData:v18];
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = v21;
    if (v10)
    {
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
      [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionRequireBluetoothKey];
    }

    v23 = IDSSendMessageOptionFromIDKey;
    v24 = [v16 toID];
    if (v24)
    {
      [v22 setObject:v24 forKeyedSubscript:v23];
      v25 = [(RPCloudDaemon *)self _idsAccountWithURI:v24 senderID:0];

      if (v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v27 = [v16 sendersKnownAlias];
    v56 = [(RPCloudDaemon *)self _idsURIWithID:v27];

    v28 = v56;
    if (v56)
    {
      v25 = [(RPCloudDaemon *)self _idsAccountWithURI:v56 senderID:&v56];
      v28 = v56;
      if (v25)
      {
        [v22 setObject:v56 forKeyedSubscript:v23];
        v28 = v56;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_16:
    if ([v16 nonWakingRequest])
    {
      [v22 setObject:&off_1001B7D20 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
    }

    v14 = v50;
    if (![v50 isEqual:@"com.apple.private.alloy.nearby"] || (v29 = self->_nearbyIDSService) == 0)
    {
      v30 = RPErrorF();
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a9)
      {
        v33 = v30;
        v34 = 0;
        *a9 = v30;
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_58;
    }

    v30 = v29;
    v15 = v15;
    v31 = v15;
    if (([(__CFString *)v15 hasPrefix:@"token:"]& 1) == 0)
    {
      if ([(__CFString *)v15 _appearsToBePhoneNumber])
      {
        v32 = IDSCopyIDForPhoneNumber();
LABEL_36:
        v31 = v32;

        goto LABEL_37;
      }

      v31 = v15;
      if ([(__CFString *)v15 _appearsToBeEmail])
      {
        v32 = IDSCopyIDForEmailAddress();
        goto LABEL_36;
      }
    }

LABEL_37:
    if ([v31 isEqual:v15])
    {

      v15 = @"=";
    }

    v48 = v31;
    if (v31)
    {
      v36 = [NSSet setWithObject:v31];
      if (v25)
      {
        v54 = 0;
        v55 = 0;
        v37 = [v30 sendData:v20 fromAccount:v25 toDestinations:v36 priority:300 options:v22 identifier:&v55 error:&v54];
        v46 = v55;
        v38 = v54;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v37 = [v30 sendData:v20 toDestinations:v36 priority:300 options:v22 identifier:&v53 error:&v52];
        v46 = v53;
        v38 = v52;
      }

      v47 = v38;

      if (v37)
      {
        v39 = sub_100009D00();
        sub_10001BB10("to ", v39);
        NSAppendPrintF();
        v51 = 0;
        sub_10001BB10(" (", v39);
        v49 = v15;
        v44 = v15;
        NSAppendPrintF();
        v40 = v51;

        sub_10001BB10("), Account ", v39);
        v45 = [v25 loginID];
        NSAppendPrintF();
        v41 = v40;

        v14 = v50;
        if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v34 = 1;
        v15 = v49;
      }

      else
      {
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v14 = v50;
        if (a9)
        {
          RPNestedErrorF();
          *a9 = v34 = 0;
        }

        else
        {
          v34 = 0;
        }
      }

      v42 = v48;
    }

    else
    {
      if (a9)
      {
        RPErrorF();
        *a9 = v34 = 0;
      }

      else
      {
        v34 = 0;
      }

      v42 = 0;
    }

LABEL_58:
    goto LABEL_59;
  }

  v26 = RPErrorF();
  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a9)
  {
    v35 = v26;
    *a9 = v26;
  }

  v34 = 0;
LABEL_59:

  return v34;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)a3
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if ([(RPCloudDaemon *)self idsIsSignedIn])
  {
    v7 = self;
    objc_sync_enter(v7);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(RPCloudDaemon *)v7 idsDeviceArray];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 uniqueID];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            if (v12)
            {
              [v12 operatingSystemVersion];
            }

            else
            {
              v16 = 0uLL;
              v17 = 0;
            }

            *&retstr->var0 = v16;
            retstr->var2 = v17;
            goto LABEL_15;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    objc_sync_exit(v7);
  }

  return result;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForSelf
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v4 = +[NSProcessInfo processInfo];
  if (v4)
  {
    v6 = v4;
    [v4 operatingSystemVersion];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

@end