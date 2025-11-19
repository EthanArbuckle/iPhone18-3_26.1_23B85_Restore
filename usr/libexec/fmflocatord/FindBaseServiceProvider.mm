@interface FindBaseServiceProvider
- (BOOL)enqueueRequest:(id)a3;
- (BOOL)isProviderEnabledForLocations;
- (FindBaseServiceProvider)init;
- (NSMutableDictionary)fullDeviceInfo;
- (NSMutableDictionary)locationDeviceInfo;
- (NSString)lastForcedRegisterTimePrefKey;
- (id)_constructLocationDeviceInfo;
- (id)_constructNonCriticalFullDeviceInfo;
- (id)_constructNonEssentialDeviceInfo;
- (id)_constructNonVolatileFullDeviceInfo;
- (id)_constructPairedDevicesInfo;
- (id)_constructStandardDeviceContext;
- (id)_constructVolatileFullDeviceInfo;
- (id)_nonEssentialRegisterDigestPrefKey;
- (id)_registerDigestPrefKey;
- (id)alertActionInfoForAction:(id)a3 andURL:(id)a4;
- (id)copyHandlerForCommand:(id)a3 params:(id)a4;
- (id)formattedURLForTemplate:(id)a3;
- (id)substituteStandardURLPlaceholders:(id)a3;
- (unsigned)authInvalidError;
- (unsigned)essentialServerInfoMissingError;
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)_registerDeviceWithCause:(id)a3 includeKeys:(unint64_t)a4;
- (void)ackLocateCommand:(id)a3 withStatusCode:(int64_t)a4 andStatusMessage:(id)a5 withCompletion:(id)a6;
- (void)ackRegisterCommand:(id)a3 withCompletion:(id)a4;
- (void)appInstallStateChanged:(id)a3;
- (void)dealloc;
- (void)deinitializeProvider;
- (void)deleteRegisterDigest;
- (void)deregisterCommonNotifications;
- (void)didCancelRequest:(id)a3;
- (void)didReceiveResponseFor:(id)a3;
- (void)handleQueueCheckResponseWithStatus:(int64_t)a3 andBody:(id)a4;
- (void)registerCommonNotifications;
- (void)registerDeviceWithCause:(id)a3 force:(BOOL)a4 includeKeys:(unint64_t)a5;
- (void)sendQueueCheckRequest:(id)a3 withReasons:(id)a4;
- (void)showAlertFromServerResponse:(id)a3;
- (void)tryToFetchAuthToken;
- (void)unregisterDevice;
@end

@implementation FindBaseServiceProvider

- (void)dealloc
{
  v3 = [(FindBaseServiceProvider *)self standardLocator];
  [v3 stopLocator];

  v4.receiver = self;
  v4.super_class = FindBaseServiceProvider;
  [(FindBaseServiceProvider *)&v4 dealloc];
}

- (FindBaseServiceProvider)init
{
  v7.receiver = self;
  v7.super_class = FindBaseServiceProvider;
  v2 = [(FindBaseServiceProvider *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(FindBaseServiceProvider *)v2 setRequests:v3];

    v4 = objc_opt_new();
    [(FindBaseServiceProvider *)v2 setRequestModifierLock:v4];

    v5 = dispatch_queue_create("fmf.deviceRegisterQ", 0);
    [(FindBaseServiceProvider *)v2 setRegisterQueue:v5];
  }

  return v2;
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceNameChanged:" name:@"DeviceNameChangedNotification" object:0];
  [v3 addObserver:self selector:"locationServicesStateChanged:" name:@"LocationServicesStateChangedNotification" object:0];
  [v3 addObserver:self selector:"fmfLocationServicesStateChanged:" name:@"ShareMyLocationInLocationServicesStatusChanged" object:0];
  [v3 addObserver:self selector:"localeChanged:" name:@"LocaleChangedNotification" object:0];
  [v3 addObserver:self selector:"appInstallStateChanged:" name:@"FMFAppInstallStateChangedNotification" object:0];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"DeviceNameChangedNotification" object:0];
  [v3 removeObserver:self name:@"LocationServicesStateChangedNotification" object:0];
  [v3 removeObserver:self name:@"ShareMyLocationInLocationServicesStatusChanged" object:0];
  [v3 removeObserver:self name:@"LocaleChangedNotification" object:0];
  [v3 removeObserver:self name:@"FMFAppInstallStateChangedNotification" object:0];
}

- (void)deleteRegisterDigest
{
  v5 = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
  [FMPreferencesUtil removeKey:v5 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  v3 = [(FindBaseServiceProvider *)self _nonEssentialRegisterDigestPrefKey];
  [FMPreferencesUtil removeKey:v3 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  v4 = [(FindBaseServiceProvider *)self lastForcedRegisterTimePrefKey];
  [FMPreferencesUtil removeKey:v4 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

- (void)deinitializeProvider
{
  v2 = self;
  v30.receiver = self;
  v30.super_class = FindBaseServiceProvider;
  [(ServiceProvider *)&v30 deinitializeProvider];
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(FindBaseServiceProvider *)v2 fm_logID];
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ Deinitializing...", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(FindBaseServiceProvider *)v2 requests];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138412546;
    v25 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = sub_100002830();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          [(FindBaseServiceProvider *)v2 fm_logID];
          v14 = v13 = v2;
          v15 = [v11 fm_logID];
          *buf = v25;
          v32 = v14;
          v33 = 2112;
          v34 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ cancelling request %@", buf, 0x16u);

          v2 = v13;
        }

        [v11 setDelegate:0];
        [v11 cancel];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v8);
  }

  v16 = +[NSMutableArray array];
  [(FindBaseServiceProvider *)v2 setRequests:v16];

  v17 = [(FindBaseServiceProvider *)v2 standardLocator];
  if (v17)
  {
    v18 = v17;
    v19 = [(FindBaseServiceProvider *)v2 standardLocator];
    v20 = [v19 locatorRunning];

    if (v20)
    {
      v21 = sub_100002830();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Stopping standard locate...", buf, 2u);
      }

      v22 = [(FindBaseServiceProvider *)v2 standardLocator];
      [v22 stopLocator];

      v23 = [(FindBaseServiceProvider *)v2 standardLocator];
      [v23 setReceivedLocationBlock:0];

      v24 = [(FindBaseServiceProvider *)v2 standardLocator];
      [v24 setStoppedLocatorBlock:0];
    }
  }

  [(FindBaseServiceProvider *)v2 setStandardLocator:0, v25];
}

- (id)formattedURLForTemplate:(id)a3
{
  v4 = a3;
  v5 = [(FindBaseServiceProvider *)self substituteStandardURLPlaceholders:v4];
  v6 = [[NSURL alloc] initWithString:v5];
  if (!v6)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not create an NSURL from the url string %@ for the template %@", &v9, 0x16u);
    }
  }

  return v6;
}

- (id)substituteStandardURLPlaceholders:(id)a3
{
  v4 = a3;
  v5 = +[PreferencesMgr sharedInstance];
  v6 = [v5 hostportOverride];

  if ([v6 length])
  {
    v7 = [v4 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v6];
  }

  else
  {
    v8 = [(ServiceProvider *)self account];
    v9 = [v8 serverHost];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [(ServiceProvider *)self account];
    v11 = [v10 serverHost];
    v7 = [v4 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v11];

    v4 = v10;
  }

  v4 = v7;
LABEL_6:
  v12 = +[PreferencesMgr sharedInstance];
  v13 = [v12 protocolSchemeOverride];

  if ([v13 length])
  {
    v14 = [v4 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v13];
  }

  else
  {
    v15 = [(ServiceProvider *)self account];
    v16 = [v15 serverProtocolScheme];

    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = [(ServiceProvider *)self account];
    v18 = [v17 serverProtocolScheme];
    v14 = [v4 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v18];

    v4 = v17;
  }

  v4 = v14;
LABEL_11:
  v19 = [(FindBaseServiceProvider *)self serviceIdentifierInURL];

  if (v19)
  {
    v20 = [(FindBaseServiceProvider *)self serviceIdentifierInURL];
    v21 = [v4 stringByReplacingOccurrencesOfString:@"${service}" withString:v20];

    v4 = v21;
  }

  v22 = [(ServiceProvider *)self account];
  v23 = [v22 authId];

  if (v23)
  {
    v24 = [(ServiceProvider *)self account];
    v25 = [v24 authId];
    v26 = [v4 stringByReplacingOccurrencesOfString:@"${dsid}" withString:v25];

    v4 = v26;
  }

  v27 = +[SystemConfig sharedInstance];
  v28 = [v27 deviceUDID];

  if (v28)
  {
    v29 = [v4 stringByReplacingOccurrencesOfString:@"${udid}" withString:v28];

    v4 = v29;
  }

  return v4;
}

- (NSMutableDictionary)fullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_autoreleasePoolPush();
  v5 = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:v5];

  v6 = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:v6];

  v7 = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [v3 addEntriesFromDictionary:v7];

  v8 = +[PreferencesMgr sharedInstance];
  v9 = [v8 deviceInfoOverrides];

  if (v9)
  {
    [v3 addEntriesFromDictionary:v9];
  }

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (NSMutableDictionary)locationDeviceInfo
{
  v3 = [(FindBaseServiceProvider *)self _constructLocationDeviceInfo];
  v4 = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:v5];

  v6 = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [v3 addEntriesFromDictionary:v6];

  v7 = +[PreferencesMgr sharedInstance];
  v8 = [v7 locationDeviceInfoOverrides];

  if (v8)
  {
    [v3 addEntriesFromDictionary:v8];
  }

  return v3;
}

- (id)_constructStandardDeviceContext
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSDate date];
  v4 = [v3 stringValueForServer];

  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"deviceTS"];
  }

  return v2;
}

- (id)_constructVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SystemConfig sharedInstance];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLocationServicesEnabled]);
  [v3 setObject:v5 forKeyedSubscript:@"locationServicesEnabled"];

  v6 = +[SystemConfig sharedInstance];
  LODWORD(v4) = [v6 isShareMyLocationSystemServiceEnabled];

  if (v4)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"smlLS"];
    v7 = sub_10001BB68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100036EC0(v7);
    }
  }

  else
  {
    [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"smlLS"];
    v7 = sub_10001BB68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "smlLS is OFF", v25, 2u);
    }
  }

  v8 = +[SystemConfig sharedInstance];
  v9 = [v8 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v9];

  v10 = +[SystemConfig sharedInstance];
  v11 = [v10 timezone];
  [v3 fm_safelyMapKey:@"timezone" toObject:v11];

  v12 = +[SystemConfig sharedInstance];
  v13 = [v12 locale];
  [v3 fm_safelyMapKey:@"locale" toObject:v13];

  v14 = +[SystemConfig sharedInstance];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 processIdentifier]);
  v16 = [v15 stringValue];
  [v3 fm_safelyMapKey:@"processId" toObject:v16];

  v17 = +[SystemConfig sharedInstance];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unlockState]);
  [v3 setObject:v18 forKeyedSubscript:@"unlockState"];

  v19 = +[SystemConfig sharedInstance];
  v20 = [v19 isFMFAppRemoved];

  v21 = [NSNumber numberWithBool:v20];
  [v3 fm_safelyMapKey:@"isFMFAppRemoved" toObject:v21];

  v22 = objc_alloc_init(FMDGainsboroughPairedDeviceSimulation);
  if ([(FMDGainsboroughPairedDeviceSimulation *)v22 isPairedDeviceSimulationActive])
  {
    [v3 fm_safelyMapKey:@"deviceName" toObject:@"Gainsborough's iPhone"];
  }

  v23 = [(FindBaseServiceProvider *)self _constructPairedDevicesInfo];
  [v3 setObject:v23 forKeyedSubscript:@"otherDevices"];

  return v3;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SystemConfig sharedInstance];
  v5 = [v4 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:v5];

  v6 = +[SystemConfig sharedInstance];
  LODWORD(v4) = [v6 canRegisterWithIDSID];

  if (v4)
  {
    v7 = +[SystemConfig sharedInstance];
    v8 = [v7 idsDeviceID];
    [v3 fm_safelyMapKey:@"idsDeviceId" toObject:v8];
  }

  v9 = +[SystemConfig sharedInstance];
  v10 = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:v10];

  v11 = +[SystemConfig sharedInstance];
  v12 = [v11 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:v12];

  v13 = +[SystemConfig sharedInstance];
  v14 = [v13 buildVersion];
  [v3 fm_safelyMapKey:@"buildVersion" toObject:v14];

  v15 = +[SystemConfig sharedInstance];
  v16 = [v15 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v16];

  v17 = +[SystemConfig sharedInstance];
  v18 = [v17 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:v18];

  v19 = +[FMSystemInfo sharedInstance];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isInternalBuild]);
  [v3 fm_safelyMapKey:@"isInternal" toObject:v20];

  v21 = +[SystemConfig sharedInstance];
  v22 = [v21 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:v22];

  v23 = [(ServiceProvider *)self account];
  v24 = [v23 versionHistory];
  v25 = [v24 componentsJoinedByString:{@", "}];
  [v3 fm_safelyMapKey:@"versionHistory" toObject:v25];

  v26 = +[SystemConfig sharedInstance];
  v27 = [v26 deviceColor];
  [v3 fm_safelyMapKey:@"deviceColor" toObject:v27];

  v28 = +[SystemConfig sharedInstance];
  v29 = [v28 deviceEnclosureColor];
  [v3 fm_safelyMapKey:@"enclosureColor" toObject:v29];

  v30 = +[SystemConfig sharedInstance];
  v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 forceTouchAvailable]);
  [v3 fm_safelyMapKey:@"supportsForceTouch" toObject:v31];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"supportsNotifyV2"];
  v32 = +[SystemConfig sharedInstance];
  v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 deviceSupportsUltraLowPowerNetworking]);
  [v3 fm_safelyMapKey:@"ulpnCapable" toObject:v33];

  return v3;
}

- (id)_constructNonEssentialDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

- (id)_constructNonCriticalFullDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[SystemConfig sharedInstance];
  v4 = v3;
  if (v3)
  {
    [v3 batteryStats];
  }

  return v2;
}

- (id)_constructLocationDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[SystemConfig sharedInstance];
  v4 = [v3 deviceUDID];
  [v2 fm_safelyMapKey:@"udid" toObject:v4];

  v5 = +[SystemConfig sharedInstance];
  v6 = v5;
  if (v5)
  {
    [v5 batteryStats];
  }

  return v2;
}

- (id)_registerDigestPrefKey
{
  v3 = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  v5 = [(ServiceProvider *)self account];
  v6 = [v5 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, v6];

  return v7;
}

- (id)_nonEssentialRegisterDigestPrefKey
{
  v3 = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  v5 = [(ServiceProvider *)self account];
  v6 = [v5 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigestNonEssential-%@-%@", v4, v6];

  return v7;
}

- (NSString)lastForcedRegisterTimePrefKey
{
  v3 = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  v5 = [(ServiceProvider *)self account];
  v6 = [v5 uniqueId];
  v7 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, v6];

  return v7;
}

- (id)_constructPairedDevicesInfo
{
  v35 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getPairedDevices];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = NRDevicePropertyIsPaired;
    v8 = NRDevicePropertyIsAltAccount;
    v32 = NRDevicePropertyLastActiveDate;
    v31 = NRDevicePropertyUDID;
    v30 = NRDevicePropertyProductType;
    v29 = NRDevicePropertyName;
    v33 = *v38;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v7];
        v12 = [v11 BOOLValue];

        v13 = [v10 valueForProperty:v8];
        v14 = [v13 BOOLValue];

        if (v12 && (v14 & 1) == 0)
        {
          v15 = +[NSMutableDictionary dictionary];
          v16 = [v10 valueForProperty:v32];
          v17 = v16;
          if (v16)
          {
            v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 fm_epoch]);
          }

          else
          {
            v18 = &off_100062F40;
          }

          [v15 fm_safelyMapKey:@"lastActiveTime" toObject:v18];
          [v15 fm_safelyMapKey:@"deviceClass" toObject:@"Watch"];
          [v15 fm_safelyMapKey:@"platform" toObject:@"watchos"];
          v19 = [(FindBaseServiceProvider *)self connectionStringForNRDevice:v10];
          [v15 fm_safelyMapKey:@"connectionStatus" toObject:v19];

          v20 = [(FindBaseServiceProvider *)self pairingIdForNRDevice:v10];
          v21 = [v20 UUIDString];
          [v15 fm_safelyMapKey:@"pairingId" toObject:v21];

          v22 = [v10 valueForProperty:v31];
          [v15 fm_safelyMapKey:@"udid" toObject:v22];

          v23 = [v10 valueForProperty:v30];
          [v15 fm_safelyMapKey:@"productType" toObject:v23];

          v24 = [v10 valueForProperty:v29];
          [v15 fm_safelyMapKey:@"deviceName" toObject:v24];

          [v35 addObject:v15];
          v6 = v33;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  v25 = objc_alloc_init(FMDGainsboroughPairedDeviceSimulation);
  if ([(FMDGainsboroughPairedDeviceSimulation *)v25 isPairedDeviceSimulationActive])
  {
    v26 = [(FMDGainsboroughPairedDeviceSimulation *)v25 pairedDeviceInfo];
    [v35 addObjectsFromArray:v26];
  }

  return v35;
}

- (void)registerDeviceWithCause:(id)a3 force:(BOOL)a4 includeKeys:(unint64_t)a5
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10000EFDC;
  v16[4] = sub_10000EFEC;
  v8 = a3;
  v17 = v8;
  v9 = [(FindBaseServiceProvider *)self registerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFF4;
  block[3] = &unk_10005D690;
  block[4] = self;
  v12 = v8;
  v15 = a4;
  v13 = v16;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, block);

  _Block_object_dispose(v16, 8);
}

- (void)_registerDeviceWithCause:(id)a3 includeKeys:(unint64_t)a4
{
  v5 = a3;
  v6 = [(FindBaseServiceProvider *)self essentialServerInfoMissingError];
  if (v6 == 1196379972)
  {
    v7 = [[FMRequestRegister alloc] initWithProvider:self andCause:v5];
    v8 = [(FMRequestRegister *)v7 registrationInformationDigestIncludingKeys];
    v9 = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
    if (qword_100070128 && [qword_100070128 isEqualToData:v8])
    {
      v10 = sub_100002830();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v45 = v11;
        v46 = 2112;
        v47 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Not sending register with cause %@ because there is already another register with the same registration information in-progress", buf, 0x16u);
      }
    }

    else
    {
      v21 = [FMPreferencesUtil dataForKey:v9 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
      v10 = v21;
      if (v21)
      {
        v22 = [v21 isEqualToData:v8];
      }

      else
      {
        v22 = 0;
      }

      v25 = sub_100002830();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v45) = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Reg-info matching complete. Essentitial info matches - [%i]", buf, 8u);
      }

      if (v22)
      {
        if (-[FindBaseServiceProvider completedStartupRegister](self, "completedStartupRegister") || (+[FMFLocatorDaemon sharedInstance](FMFLocatorDaemon, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isFirstRunAfterBoot], v26, !v27))
        {
          if (-[FindBaseServiceProvider completedStartupRegister](self, "completedStartupRegister") || (+[StartupRegisterManager sharedInstance](StartupRegisterManager, "sharedInstance"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 shouldForceRegisterOnStartup], v29, !v30))
          {
            v36 = sub_100002830();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v45 = v5;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Reg-info unchanged. Ignoring register %@", buf, 0xCu);
            }

            goto LABEL_41;
          }

          v28 = sub_100002830();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v31 = +[StartupRegisterManager sharedInstance];
            *buf = 138412546;
            v45 = v5;
            v46 = 2112;
            v47 = v31;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Reg-info unchanged but forcing register %@ due to %@", buf, 0x16u);
          }
        }

        else
        {
          v28 = sub_100002830();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v5;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Reg-info unchanged but forcing register %@", buf, 0xCu);
          }
        }
      }

      v32 = sub_100002830();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v45 = v33;
        v46 = 2112;
        v47 = v5;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@ Sending register with cause %@ because registration information has changed", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000F90C;
      v42[3] = &unk_10005D498;
      v34 = v8;
      v43 = v34;
      [(FMRequest *)v7 setWillSendHandler:v42];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000F91C;
      v37[3] = &unk_10005D6B8;
      objc_copyWeak(&v41, buf);
      v38 = v34;
      v39 = v9;
      v40 = self;
      [(FMRequest *)v7 setCompletionHandler:v37];
      if (![(FindBaseServiceProvider *)self enqueueRequest:v7])
      {
        v35 = qword_100070128;
        qword_100070128 = 0;
      }

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }

LABEL_41:

    goto LABEL_42;
  }

  v12 = v6;
  v13 = sub_100002830();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(FindBaseServiceProvider *)self fm_logID];
    v15 = [CommonUtil stringForFourCC:v12];
    *buf = 138412802;
    v45 = v14;
    v46 = 2112;
    v47 = v5;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Not sending register with cause %@ to server since some essential server info is missing - '%@'", buf, 0x20u);
  }

  v16 = v12 == 1480675411;
  v17 = +[FMSystemInfo sharedInstance];
  v18 = [v17 isInternalBuild];

  if (v16)
  {
    if (v18)
    {
      v19 = sub_100002830();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ is not functional as an APS token is not available.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v18)
    {
      v23 = sub_100002830();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
      }
    }

    [(FindBaseServiceProvider *)self tryToFetchAuthToken];
  }

LABEL_42:
}

- (void)unregisterDevice
{
  v3 = [[FMRequestUnregister alloc] initWithProvider:self];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FCBC;
  v4[3] = &unk_10005D498;
  v4[4] = self;
  [(FMRequest *)v3 setCompletionHandler:v4];
  [(FindBaseServiceProvider *)self enqueueRequest:v3];
}

- (void)sendQueueCheckRequest:(id)a3 withReasons:(id)a4
{
  v5 = a3;
  [(FindBaseServiceProvider *)self _beginXPCTransaction];
  v6 = [[FMRequestQueueCheck alloc] initWithProvider:self andServerContext:v5];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000100EC;
  v7[3] = &unk_10005D498;
  v7[4] = self;
  [(FMRequest *)v6 setCompletionHandler:v7];
  [(FindBaseServiceProvider *)self enqueueRequest:v6];

  [(FindBaseServiceProvider *)self _endXPCTransaction];
}

- (void)ackRegisterCommand:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ackURL"];
  if (v8)
  {
    v9 = [NSURL URLWithString:v8];
    v10 = [[FMRequestAckRegister alloc] initWithProvider:self registerCommand:v6 ackURL:v9];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000108FC;
    v15 = &unk_10005D4C0;
    v16 = self;
    v17 = v7;
    [(FMRequest *)v10 setCompletionHandler:&v12];
    [(FindBaseServiceProvider *)self enqueueRequest:v10, v12, v13, v14, v15, v16];
  }

  else
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Not acking the register command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)ackLocateCommand:(id)a3 withStatusCode:(int64_t)a4 andStatusMessage:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:@"ackURL"];
  if (v13)
  {
    v14 = [NSURL URLWithString:v13];
    v15 = [[FMRequestAckLocate alloc] initWithProvider:self locateCommand:v10 ackURL:v14 cmdStatusCode:a4 cmdStatusMessage:v11];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100010CBC;
    v20 = &unk_10005D4C0;
    v21 = self;
    v22 = v12;
    [(FMRequest *)v15 setCompletionHandler:&v17];
    [(FindBaseServiceProvider *)self enqueueRequest:v15, v17, v18, v19, v20, v21];
  }

  else
  {
    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: Not acking the locate command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)handleQueueCheckResponseWithStatus:(int64_t)a3 andBody:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [v7 objectForKeyedSubscript:@"cmd"];
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(FindBaseServiceProvider *)self serviceName];
      v22 = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Command Received: %@", &v22, 0x16u);
    }

    v11 = [(FindBaseServiceProvider *)self copyHandlerForCommand:v8 params:v7];
    v12 = v11;
    if (v11)
    {
      [v11 executeCommand];
      v13 = sub_100002830();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412546;
        v23 = v14;
        v24 = 2112;
        v25 = v8;
        v15 = "%@: Successfully finished command %@";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v22, 0x16u);
      }
    }

    else
    {
      v13 = sub_100002830();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412546;
        v23 = v14;
        v24 = 2112;
        v25 = v8;
        v15 = "%@: No handler found for command %@";
        goto LABEL_11;
      }
    }

    v16 = +[StartupRegisterManager sharedInstance];
    [v16 eventDidOccur:8];

    if (a3 == 210 || a3 == 204)
    {
      v17 = sub_100002830();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412290;
        v23 = v20;
        v21 = "%@: No more pending messages on the server...";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v21, &v22, 0xCu);
      }
    }

    else
    {
      if (a3 != 200)
      {
LABEL_23:

        goto LABEL_24;
      }

      v17 = sub_100002830();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v18)
        {
          v19 = [(FindBaseServiceProvider *)self serviceName];
          v22 = 138412290;
          v23 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: More messages pending - checking now...", &v22, 0xCu);
        }

        [(FindBaseServiceProvider *)self sendQueueCheckRequest:0];
        goto LABEL_23;
      }

      if (v18)
      {
        v20 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412290;
        v23 = v20;
        v21 = "%@: Not checking for new messages - previous command was not successful or duplicate";
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v8 = +[StartupRegisterManager sharedInstance];
  [v8 eventDidOccur:8];
LABEL_24:
}

- (BOOL)isProviderEnabledForLocations
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FindBaseServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ isProviderEnabledForLocations should be handled in a subclass", &v6, 0xCu);
  }

  return 0;
}

- (unsigned)essentialServerInfoMissingError
{
  v3 = [(FindBaseServiceProvider *)self authInvalidError];
  if (v3 == 1196379972)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(FindBaseServiceProvider *)v4 apsToken];

    if (v5)
    {
      v3 = 1196379972;
    }

    else
    {
      v3 = 1480675411;
    }

    objc_sync_exit(v4);
  }

  return v3;
}

- (unsigned)authInvalidError
{
  v3 = [(ServiceProvider *)self account];

  if (!v3)
  {
    return 1480672067;
  }

  v4 = [(ServiceProvider *)self account];
  v5 = [v4 username];
  v6 = [v5 length];

  if (!v6)
  {
    return 1481986898;
  }

  v7 = [(ServiceProvider *)self account];
  v8 = [v7 authToken];
  v9 = [v8 length];

  if (!v9)
  {
    return 1481920331;
  }

  v10 = [(ServiceProvider *)self account];
  v11 = [v10 authId];
  v12 = [v11 length];

  if (v12)
  {
    return 1196379972;
  }

  else
  {
    return 1482639684;
  }
}

- (void)tryToFetchAuthToken
{
  v3 = [(ServiceProvider *)self account];
  v2 = [v3 authToken];
  [v2 length];
}

- (id)copyHandlerForCommand:(id)a3 params:(id)a4
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Base copyHandlerForCommand should not be called", v6, 2u);
  }

  return 0;
}

- (void)showAlertFromServerResponse:(id)a3
{
  v3 = a3;
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100036F9C(v3, v4);
  }

  v5 = [v3 objectForKeyedSubscript:@"title"];
  v29 = [v3 objectForKeyedSubscript:@"text"];
  v28 = [v3 objectForKeyedSubscript:@"okButtonTitle"];
  v6 = [v3 objectForKeyedSubscript:@"okButtonURL"];
  v7 = [v3 objectForKeyedSubscript:@"okButtonAction"];
  v8 = [v3 objectForKeyedSubscript:@"cancelButtonTitle"];
  v9 = [v3 objectForKeyedSubscript:@"cancelButtonURL"];
  v10 = [v3 objectForKeyedSubscript:@"cancelButtonAction"];
  v11 = [v3 objectForKeyedSubscript:@"delay"];
  [v11 doubleValue];
  v13 = v12;

  if (v5)
  {
    v14 = objc_alloc_init(FMAlert);
    [v14 setCategory:qword_10006FAF8];
    [v14 setMsgTitle:v5];
    [v14 setMsgText:v29];
    [v14 setShowMsgInLockScreen:1];
    [v14 setDismissMsgOnUnlock:0];
    [v14 setDismissMsgOnLock:0];
    [v14 setDefaultButtonTitle:v28];
    if (v6)
    {
      v15 = v7 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v7 = @"open-url";
    }

    if (v9)
    {
      v16 = v10 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v10 = @"open-url";
    }

    if (v7)
    {
      v17 = [(FindBaseServiceProvider *)self alertActionInfoForAction:v7 andURL:v6];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100011A54;
      v35[3] = &unk_10005D6E0;
      v36 = v7;
      v37 = v17;
      v18 = v17;
      [v14 setDefaultButtonAction:v35];
    }

    v26 = v8;
    [v14 setAlternateButtonTitle:v8];
    if (v10)
    {
      v19 = [(FindBaseServiceProvider *)self alertActionInfoForAction:v10 andURL:v9];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100011B0C;
      v32[3] = &unk_10005D6E0;
      v33 = v10;
      v34 = v19;
      v20 = v19;
      [v14 setAlternateButtonAction:v32];
    }

    v21 = [v14 defaultButtonTitle];
    if (v21)
    {
    }

    else
    {
      v22 = [v14 alternateButtonTitle];

      if (!v22)
      {
        v25 = sub_100002830();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Received a server alert without an button. Not showing it", buf, 2u);
        }

        goto LABEL_26;
      }
    }

    if (v13 <= 0.0)
    {
      v25 = +[FMAlertManager sharedInstance];
      [v25 activateAlert:v14];
    }

    else
    {
      v23 = sub_100002830();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v39 = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Showing alert after %.2f seconds...", buf, 0xCu);
      }

      v24 = dispatch_time(0, (v13 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011BC4;
      block[3] = &unk_10005D2B0;
      v31 = v14;
      dispatch_after(v24, &_dispatch_main_q, block);
      v25 = v31;
    }

LABEL_26:

    v8 = v26;
  }
}

- (id)alertActionInfoForAction:(id)a3 andURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"appleid"])
  {

    v6 = @"prefs:root=APPLE_ACCOUNT";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
    v19[0] = @"url";
    v19[1] = @"sensitive";
    v20[0] = v7;
    v20[1] = &__kCFBooleanTrue;
    v8 = v20;
    v9 = v19;
LABEL_10:
    v11 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:2];

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"settings"])
  {

    v6 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
    v17[0] = @"url";
    v17[1] = @"sensitive";
    v18[0] = v7;
    v18[1] = &__kCFBooleanTrue;
    v8 = v18;
    v9 = v17;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"sml-settings"])
  {

    v6 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING"];
    v15[0] = @"url";
    v15[1] = @"sensitive";
    v16[0] = v7;
    v16[1] = &__kCFBooleanTrue;
    v8 = v16;
    v9 = v15;
    goto LABEL_10;
  }

  v10 = [v5 isEqualToString:@"open-url"];
  v11 = 0;
  if (v6 && v10)
  {
    v7 = [NSURL URLWithString:v6];
    v13[0] = @"url";
    v13[1] = @"sensitive";
    v14[0] = v7;
    v14[1] = &__kCFBooleanFalse;
    v8 = v14;
    v9 = v13;
    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)appInstallStateChanged:(id)a3
{
  v4 = sub_10001BB68();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver", v5, 2u);
  }

  [(FindBaseServiceProvider *)self registerDeviceWithCause:@"AppStateChanged"];
}

- (BOOL)enqueueRequest:(id)a3
{
  v31 = a3;
  v29 = [(FindBaseServiceProvider *)self allowServerRequests];
  if (v29)
  {
    v30 = self;
    v4 = [(FindBaseServiceProvider *)self requestModifierLock];
    [v4 lock];

    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FindBaseServiceProvider *)v30 fm_logID];
      v7 = [v31 fm_logID];
      *buf = 138412546;
      v41 = v6;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Enqueueing request %@", buf, 0x16u);
    }

    [v31 setDelegate:v30];
    v8 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [(FindBaseServiceProvider *)v30 requests];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v10)
    {
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          if ([v31 canReplace:v13])
          {
            [v8 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v10);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v15)
    {
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v32 + 1) + 8 * j);
          v19 = sub_100002830();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [(FindBaseServiceProvider *)v30 fm_logID];
            v21 = [v18 fm_logID];
            v22 = [v31 fm_logID];
            *buf = 138412802;
            v41 = v20;
            v42 = 2112;
            v43 = v21;
            v44 = 2112;
            v45 = v22;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ Discarding %@ because a newer request %@ can replace this one", buf, 0x20u);
          }

          [v18 cancel];
        }

        v15 = [v14 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v15);
    }

    v23 = [(FindBaseServiceProvider *)v30 requests];
    [v23 addObject:v31];

    [v31 send];
    v24 = [(FindBaseServiceProvider *)v30 requestModifierLock];
    [v24 unlock];
  }

  else
  {
    v25 = sub_100002830();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [(FindBaseServiceProvider *)self fm_logID];
      v27 = [v31 fm_logID];
      *buf = 138412546;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@: Not sending request %@ to server since the provider is not allowing server requests", buf, 0x16u);
    }
  }

  return v29;
}

- (void)didReceiveResponseFor:(id)a3
{
  v4 = a3;
  if ([v4 responseErrorType] == 257)
  {
    [(FindBaseServiceProvider *)self didReceiveAuthFailureForRequest:v4];
  }

  v5 = [v4 alertFromServerResponse];

  if (v5)
  {
    v6 = [v4 alertFromServerResponse];
    [(FindBaseServiceProvider *)self showAlertFromServerResponse:v6];
  }

  if (([v4 willRetry] & 1) == 0)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(FindBaseServiceProvider *)self fm_logID];
      v9 = [v4 fm_logID];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was completed or it exhausted its retries", &v13, 0x16u);
    }

    v10 = [(FindBaseServiceProvider *)self requestModifierLock];
    [v10 lock];

    [v4 deinitializeRequest];
    v11 = [(FindBaseServiceProvider *)self requests];
    [v11 removeObject:v4];

    v12 = [(FindBaseServiceProvider *)self requestModifierLock];
    [v12 unlock];
  }
}

- (void)didCancelRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(FindBaseServiceProvider *)self fm_logID];
    v7 = [v4 fm_logID];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was cancelled", &v11, 0x16u);
  }

  v8 = [(FindBaseServiceProvider *)self requestModifierLock];
  [v8 lock];

  [v4 deinitializeRequest];
  v9 = [(FindBaseServiceProvider *)self requests];
  [v9 removeObject:v4];

  v10 = [(FindBaseServiceProvider *)self requestModifierLock];
  [v10 unlock];
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

@end