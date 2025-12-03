@interface RPCloudDaemon
+ (id)sharedCloudDaemon;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)d;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForSelf;
- (BOOL)idsHasAppleTV;
- (BOOL)idsHasHomePod;
- (BOOL)idsHasMac;
- (BOOL)idsHasRealityDevice;
- (BOOL)idsHasWatch;
- (BOOL)idsHasiPad;
- (BOOL)idsIsSignedIn;
- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationID:(id)iD sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error;
- (NSArray)idsDeviceArray;
- (NSDictionary)idsDeviceMap;
- (NSDictionary)idsFamilyEndpointMap;
- (NSSet)idsAccountSet;
- (NSString)idsDeviceIDSelf;
- (RPCloudDaemon)init;
- (id)_idsAccountWithURI:(id)i senderID:(id *)d;
- (id)_idsURIWithID:(id)d;
- (id)descriptionWithLevel:(int)level;
- (id)idsCorrelationIdentifier;
- (id)idsDeviceForBluetoothUUID:(id)d;
- (int)idsHandheldCount;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_primaryAppleIDChanged;
- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx;
- (void)_receivedFriendIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx;
- (void)_receivedWatchIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length fromID:(id)d;
- (void)_receivedWatchIdentityRequest:(id)request fromIDSDevice:(id)device;
- (void)_receivedWatchIdentityResponse:(id)response fromIDSDevice:(id)device;
- (void)_update;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)idsFamilyEndpointQueryWithCompletion:(id)completion;
- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)force;
- (void)invalidate;
- (void)prefsChanged;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)setIdsFamilyEndpointMap:(id)map;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_idsDeviceIDSelf;
  if (!v3)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    if (v3)
    {
      objc_storeStrong(&selfCopy->_idsDeviceIDSelf, v3);
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

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)idsIsSignedIn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefIsSignedInForce = selfCopy->_prefIsSignedInForce;
  if (prefIsSignedInForce < 0)
  {
    if (selfCopy->_idsIsSignedInCache < 0)
    {
      nearbyIDSService = selfCopy->_nearbyIDSService;
      if (nearbyIDSService)
      {
        selfCopy->_idsIsSignedInCache = 0;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        accounts = [nearbyIDSService accounts];
        v7 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          v8 = *v12;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(accounts);
              }

              if ([*(*(&v11 + 1) + 8 * i) isActive])
              {
                selfCopy->_idsIsSignedInCache = 1;
                goto LABEL_15;
              }
            }

            v7 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
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

    v4 = selfCopy->_idsIsSignedInCache > 0;
  }

  else
  {
    v4 = prefIsSignedInForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (int)idsHandheldCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsHandheldCountCache = selfCopy->_idsHandheldCountCache;
  if (idsHandheldCountCache < 0 && selfCopy->_nearbyIDSService)
  {
    selfCopy->_idsHandheldCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          modelIdentifier = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
          v9 = GestaltProductTypeStringToDeviceClass() - 4 < 0xFFFFFFFD;

          if (!v9)
          {
            ++selfCopy->_idsHandheldCountCache;
          }
        }

        v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    idsHandheldCountCache = selfCopy->_idsHandheldCountCache;
  }

  objc_sync_exit(selfCopy);

  return idsHandheldCountCache;
}

- (BOOL)idsHasMac
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasMacForce = selfCopy->_prefHasMacForce;
  if (prefHasMacForce < 0)
  {
    if (selfCopy->_idsHasMacCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasMacCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier containsString:@"Mac"];

            if (v10)
            {
              selfCopy->_idsHasMacCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasMacCache > 0;
  }

  else
  {
    v4 = prefHasMacForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasHomePod
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasHomePodForce = selfCopy->_prefHasHomePodForce;
  if (prefHasHomePodForce < 0)
  {
    if (selfCopy->_idsHasHomePodCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasHomePodCache = 0;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
            if ([modelIdentifier hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"HomePod"))
            {

              selfCopy->_idsHasHomePodCache = 1;
              goto LABEL_18;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    v4 = selfCopy->_idsHasHomePodCache > 0;
  }

  else
  {
    v4 = prefHasHomePodForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasAppleTV
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasAppleTVForce = selfCopy->_prefHasAppleTVForce;
  if (prefHasAppleTVForce < 0)
  {
    if (selfCopy->_idsHasAppleTVCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasAppleTVCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"AppleTV"];

            if (v10)
            {
              selfCopy->_idsHasAppleTVCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasAppleTVCache > 0;
  }

  else
  {
    v4 = prefHasAppleTVForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasWatch
{
  if (![(RPCloudDaemon *)self idsIsSignedIn])
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
        v9 = [modelIdentifier hasPrefix:@"Watch"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  objc_sync_exit(selfCopy);
  return v10;
}

- (NSArray)idsDeviceArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    devices = [selfCopy->_nearbyIDSService devices];
    v5 = selfCopy->_idsDeviceArray;
    selfCopy->_idsDeviceArray = devices;

    idsDeviceArray = selfCopy->_idsDeviceArray;
  }

  v6 = idsDeviceArray;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)idsDeviceMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceMap = selfCopy->_idsDeviceMap;
  if (idsDeviceMap)
  {
LABEL_13:
    v14 = idsDeviceMap;
    goto LABEL_14;
  }

  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  if (idsDeviceArray)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = idsDeviceArray;
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
          uniqueIDOverride = [v10 uniqueIDOverride];
          if (uniqueIDOverride)
          {
            [v5 setObject:v10 forKeyedSubscript:uniqueIDOverride];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [v5 copy];
    v13 = selfCopy->_idsDeviceMap;
    selfCopy->_idsDeviceMap = v12;

    idsDeviceMap = selfCopy->_idsDeviceMap;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:
  objc_sync_exit(selfCopy);

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
      primaryAppleID = [(CUSystemMonitor *)self->_systemMonitor primaryAppleID];
      _bestGuessURI = [primaryAppleID _bestGuessURI];
      if (_bestGuessURI)
      {
        v6 = [NSArray arrayWithObject:_bestGuessURI];
        v7 = +[IDSIDQueryController sharedInstance];
        dispatchQueue = self->_dispatchQueue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100016F3C;
        v10[3] = &unk_1001AAAF0;
        v10[4] = self;
        v10[5] = primaryAppleID;
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

- (id)descriptionWithLevel:(int)level
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
        familyEndpointData = [v7 familyEndpointData];
        deviceName = [familyEndpointData deviceName];
        v10 = [(NSDictionary *)self->_idsFamilyEndpointMap objectForKeyedSubscript:v6];
        familyEndpointData2 = [v10 familyEndpointData];
        productVersion = [familyEndpointData2 productVersion];
        v13 = [NSString stringWithFormat:@"    IDSID: %@, name: %@, productVersion: %@\n", v6, deviceName, productVersion];

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

  idsDeviceArray = [(RPCloudDaemon *)self idsDeviceArray];
  [idsDeviceArray count];
  [(RPCloudDaemon *)self idsIsSignedIn];
  [(RPCloudDaemon *)self idsHasAppleTV];
  [(RPCloudDaemon *)self idsHasHomePod];
  [(RPCloudDaemon *)self idsHasiPad];
  [(RPCloudDaemon *)self idsHasMac];
  [(RPCloudDaemon *)self idsHasWatch];
  [(RPCloudDaemon *)self idsHasRealityDevice];
  [(RPCloudDaemon *)self idsHandheldCount];
  idsFamilyEndpointMap = [(RPCloudDaemon *)self idsFamilyEndpointMap];
  [idsFamilyEndpointMap count];
  NSAppendPrintF();
  v16 = 0;

  if (level <= 20)
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

- (void)daemonInfoChanged:(unint64_t)changed
{
  if ((changed & 0x400) != 0)
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

- (id)_idsAccountWithURI:(id)i senderID:(id *)d
{
  iCopy = i;
  v7 = IDSCopyRawAddressForDestination();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  accounts = [self->_nearbyIDSService accounts];
  v9 = [accounts countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    dCopy = d;
    v46 = iCopy;
    v40 = *v60;
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(accounts);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        if ([v13 canSend])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          aliasStrings = [v13 aliasStrings];
          v15 = [aliasStrings countByEnumeratingWithState:&v55 objects:v65 count:16];
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
                  objc_enumerationMutation(aliasStrings);
                }

                v19 = *(*(&v55 + 1) + 8 * j);
                if ([v19 isEqual:v7])
                {
                  if (dCopy)
                  {
                    v33 = [(RPCloudDaemon *)selfCopy _idsURIWithID:v19];
                    v34 = *dCopy;
                    *dCopy = v33;
                  }

                  v32 = v13;
                  goto LABEL_40;
                }
              }

              v16 = [aliasStrings countByEnumeratingWithState:&v55 objects:v65 count:16];
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

      v10 = [accounts countByEnumeratingWithState:&v59 objects:v66 count:16];
      d = dCopy;
      iCopy = v46;
      self = selfCopy;
    }

    while (v10);
  }

  if ([iCopy _FZIDType] == -1)
  {
    v32 = 0;
  }

  else
  {
    accounts = IMCanonicalizeFormattedString();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    aliasStrings = [self->_nearbyIDSService accounts];
    v20 = [aliasStrings countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v20)
    {
      v21 = v20;
      selfCopy2 = self;
      dCopy2 = d;
      v46 = iCopy;
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
            objc_enumerationMutation(aliasStrings);
          }

          v24 = *(*(&v51 + 1) + 8 * v23);
          if ([v24 canSend])
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v41 = v24;
            aliasStrings2 = [v24 aliasStrings];
            v26 = [aliasStrings2 countByEnumeratingWithState:&v47 objects:v63 count:16];
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
                    objc_enumerationMutation(aliasStrings2);
                  }

                  v30 = *(*(&v47 + 1) + 8 * k);
                  v31 = IMCanonicalizeFormattedString();
                  if ([v31 isEqual:accounts])
                  {
                    if (dCopy2)
                    {
                      v36 = [(RPCloudDaemon *)selfCopy2 _idsURIWithID:v30];
                      v37 = *dCopy2;
                      *dCopy2 = v36;
                    }

                    v32 = v41;

                    goto LABEL_40;
                  }
                }

                v27 = [aliasStrings2 countByEnumeratingWithState:&v47 objects:v63 count:16];
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
        v21 = [aliasStrings countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v21);
      v32 = 0;
LABEL_40:
      iCopy = v46;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsAccountSet = selfCopy->_idsAccountSet;
  if (!idsAccountSet)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    accounts = [selfCopy->_nearbyIDSService accounts];
    v5 = selfCopy->_idsAccountSet;
    selfCopy->_idsAccountSet = accounts;

    idsAccountSet = selfCopy->_idsAccountSet;
  }

  v6 = idsAccountSet;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)idsDeviceForBluetoothUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  v7 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(idsDeviceArray);
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

      v7 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)idsFamilyEndpointQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[RPPeopleDaemon sharedPeopleDaemon];
  getFamilyURIs = [v4 getFamilyURIs];

  v6 = +[IDSIDQueryController sharedInstance];
  v7 = +[IDSIDInfoOptions refreshIDInfo];
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E14C();
  }

  [v6 idInfoForDestinations:getFamilyURIs service:@"com.apple.private.alloy.nearby.family" infoTypes:1 options:v7 listenerID:@"com.apple.private.alloy.nearby" queue:self->_dispatchQueue completionBlock:completionCopy];
}

- (void)setIdsFamilyEndpointMap:(id)map
{
  mapCopy = map;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsFamilyEndpointMap = self->_idsFamilyEndpointMap;
  self->_idsFamilyEndpointMap = mapCopy;
}

- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)force
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

  if ([(RPCloudDaemon *)self getDeviceClass]== 4 && !self->_idQueryInProgress && (force || v8 == 0.0 || v8 > 300.0))
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasiPadForce = selfCopy->_prefHasiPadForce;
  if (prefHasiPadForce < 0)
  {
    if (selfCopy->_idsHasiPadCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasiPadCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"iPad"];

            if (v10)
            {
              selfCopy->_idsHasiPadCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasiPadCache > 0;
  }

  else
  {
    v4 = prefHasiPadForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasRealityDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasRealityDeviceForce = selfCopy->_prefHasRealityDeviceForce;
  if (prefHasRealityDeviceForce < 0)
  {
    if (selfCopy->_idsHasRealityDeviceCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasRealityDeviceCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"RealityDevice"];

            if (v10)
            {
              selfCopy->_idsHasRealityDeviceCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasRealityDeviceCache > 0;
  }

  else
  {
    v4 = prefHasRealityDeviceForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)_idsURIWithID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    if ([dCopy _FZIDType] == -1)
    {
      _bestGuessURI = [v4 _bestGuessURI];
      v7 = _bestGuessURI;
      if (_bestGuessURI)
      {
        v8 = _bestGuessURI;
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

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  serviceCopy = service;
  dispatch_assert_queue_V2(dispatchQueue);
  v15 = [dataCopy length];
  nearbyIDSService = self->_nearbyIDSService;

  if (nearbyIDSService == serviceCopy)
  {
    v17 = @"com.apple.private.alloy.nearby";
    bytes = [dataCopy bytes];
    v19 = v15 - 4;
    if (v15 < 4)
    {
      if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v20 = bytes;
    v21 = (bytes[1] << 16) | (bytes[2] << 8) | bytes[3];
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
    [(RPCloudMessageContext *)v22 setFromID:dCopy];
    toID = [contextCopy toID];
    [(RPCloudMessageContext *)v22 setToID:toID];

    v24 = *v20;
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      toID2 = [(RPCloudMessageContext *)v22 toID];
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
        [(RPCloudDaemon *)self _receivedWatchIdentityFrameType:v24 ptr:v20 + 4 length:v21 fromID:dCopy];
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if (errorCopy || !success)
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

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E278();
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2B8(changedCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  selfCopy->_idsDeviceArray = 0;

  idsAccountSet = selfCopy->_idsAccountSet;
  selfCopy->_idsAccountSet = 0;

  idsDeviceMap = selfCopy->_idsDeviceMap;
  selfCopy->_idsDeviceMap = 0;

  selfCopy->_idsIsSignedInCache = -1;
  *&selfCopy->_idsHasHomePodCache = -1;
  *&selfCopy->_idsHasMacCache = -1;
  *&selfCopy->_idsHandheldCountCache = -1;
  objc_sync_exit(selfCopy);

  v11 = +[RPDaemon sharedDaemon];
  [v11 postDaemonInfoChanges:1];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2FC(changedCopy);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = changedCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  selfCopy->_idsDeviceArray = v14;
  v17 = v14;

  idsDeviceMap = selfCopy->_idsDeviceMap;
  selfCopy->_idsDeviceMap = 0;

  selfCopy->_idsIsSignedInCache = -1;
  *&selfCopy->_idsHasHomePodCache = -1;
  *&selfCopy->_idsHasMacCache = -1;
  *&selfCopy->_idsHandheldCountCache = -1;
  objc_sync_exit(selfCopy);

  v19 = +[RPDaemon sharedDaemon];

  [v19 postDaemonInfoChanges:1];
LABEL_16:
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v4 = availableCopy;
  if (dword_1001D30F8 <= 30)
  {
    v6 = availableCopy;
    if (dword_1001D30F8 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10010E380();
      v4 = v6;
    }
  }
}

- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx
{
  typeCopy = type;
  ctxCopy = ctx;
  fromID = [ctxCopy fromID];
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
      [ctxCopy setAppleID:v12];

      switch(typeCopy)
      {
        case '""':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityUpdate:v9 msgCtx:ctxCopy];
          break;
        case '!':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityResponse:v9 msgCtx:ctxCopy];
          break;
        case ' ':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFamilyIdentityRequest:v9 msgCtx:ctxCopy];
          break;
        default:
          if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
          {
            sub_10010E39C(typeCopy);
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

- (void)_receivedFriendIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx
{
  typeCopy = type;
  ctxCopy = ctx;
  fromID = [ctxCopy fromID];
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
      [ctxCopy setAppleID:v12];

      switch(typeCopy)
      {
        case 'B':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityUpdate:v9 msgCtx:ctxCopy];
          break;
        case 'A':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityResponse:v9 msgCtx:ctxCopy];
          break;
        case '@':
          v13 = +[RPPeopleDaemon sharedPeopleDaemon];
          [v13 receivedFriendIdentityRequest:v9 msgCtx:ctxCopy];
          break;
        default:
          if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
          {
            sub_10010E424(typeCopy);
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

- (void)_receivedWatchIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length fromID:(id)d
{
  typeCopy = type;
  dCopy = d;
  if ([dCopy hasPrefix:@"device:"])
  {
    idsDeviceMap = [(RPCloudDaemon *)self idsDeviceMap];
    v10 = [dCopy substringFromIndex:7];
    v11 = [idsDeviceMap objectForKeyedSubscript:v10];

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
        if (typeCopy == 49)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityResponse:v12 fromIDSDevice:v11];
        }

        else if (typeCopy == 48)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityRequest:v12 fromIDSDevice:v11];
        }

        else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E4EC(typeCopy);
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

- (void)_receivedWatchIdentityRequest:(id)request fromIDSDevice:(id)device
{
  requestCopy = request;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    if (uniqueIDOverride)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E590();
      }

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 saveIdentityWithIDSDeviceID:uniqueIDOverride message:requestCopy error:0];

      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v10 addSelfIdentityInfoToMessage:v9 flags:0];

      [(RPCloudDaemon *)self sendIDSMessage:v9 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:49 destinationDevice:deviceCopy sendFlags:1 msgCtx:0 error:0];
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

- (void)_receivedWatchIdentityResponse:(id)response fromIDSDevice:(id)device
{
  responseCopy = response;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    if (uniqueIDOverride)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E60C();
      }

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 saveIdentityWithIDSDeviceID:uniqueIDOverride message:responseCopy error:0];
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

- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationID:(id)iD sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error
{
  flagsCopy = flags;
  dCopy = d;
  iDCopy = iD;
  ctxCopy = ctx;
  v58 = 0;
  Data = OPACKEncoderCreateData();
  v18 = Data;
  if (Data)
  {
    v50 = dCopy;
    v57[0] = type;
    v19 = [Data length];
    v57[1] = BYTE2(v19);
    v57[2] = BYTE1(v19);
    v57[3] = v19;
    v20 = objc_alloc_init(NSMutableData);
    [v20 appendBytes:v57 length:4];
    [v20 appendData:v18];
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = v21;
    if (flagsCopy)
    {
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
      [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionRequireBluetoothKey];
    }

    v23 = IDSSendMessageOptionFromIDKey;
    toID = [ctxCopy toID];
    if (toID)
    {
      [v22 setObject:toID forKeyedSubscript:v23];
      v25 = [(RPCloudDaemon *)self _idsAccountWithURI:toID senderID:0];

      if (v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    sendersKnownAlias = [ctxCopy sendersKnownAlias];
    v56 = [(RPCloudDaemon *)self _idsURIWithID:sendersKnownAlias];

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
    if ([ctxCopy nonWakingRequest])
    {
      [v22 setObject:&off_1001B7D20 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
    }

    dCopy = v50;
    if (![v50 isEqual:@"com.apple.private.alloy.nearby"] || (v29 = self->_nearbyIDSService) == 0)
    {
      v30 = RPErrorF();
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (error)
      {
        v33 = v30;
        v34 = 0;
        *error = v30;
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_58;
    }

    v30 = v29;
    iDCopy = iDCopy;
    v31 = iDCopy;
    if (([(__CFString *)iDCopy hasPrefix:@"token:"]& 1) == 0)
    {
      if ([(__CFString *)iDCopy _appearsToBePhoneNumber])
      {
        v32 = IDSCopyIDForPhoneNumber();
LABEL_36:
        v31 = v32;

        goto LABEL_37;
      }

      v31 = iDCopy;
      if ([(__CFString *)iDCopy _appearsToBeEmail])
      {
        v32 = IDSCopyIDForEmailAddress();
        goto LABEL_36;
      }
    }

LABEL_37:
    if ([v31 isEqual:iDCopy])
    {

      iDCopy = @"=";
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
        v49 = iDCopy;
        v44 = iDCopy;
        NSAppendPrintF();
        v40 = v51;

        sub_10001BB10("), Account ", v39);
        loginID = [v25 loginID];
        NSAppendPrintF();
        v41 = v40;

        dCopy = v50;
        if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v34 = 1;
        iDCopy = v49;
      }

      else
      {
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        dCopy = v50;
        if (error)
        {
          RPNestedErrorF();
          *error = v34 = 0;
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
      if (error)
      {
        RPErrorF();
        *error = v34 = 0;
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

  if (error)
  {
    v35 = v26;
    *error = v26;
  }

  v34 = 0;
LABEL_59:

  return v34;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)d
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if ([(RPCloudDaemon *)self idsIsSignedIn])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
    v9 = [idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          uniqueID = [v12 uniqueID];
          v14 = [uniqueID isEqualToString:v6];

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

        v9 = [idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    objc_sync_exit(selfCopy);
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