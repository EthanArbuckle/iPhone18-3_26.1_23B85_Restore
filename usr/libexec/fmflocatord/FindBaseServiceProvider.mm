@interface FindBaseServiceProvider
- (BOOL)enqueueRequest:(id)request;
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
- (id)alertActionInfoForAction:(id)action andURL:(id)l;
- (id)copyHandlerForCommand:(id)command params:(id)params;
- (id)formattedURLForTemplate:(id)template;
- (id)substituteStandardURLPlaceholders:(id)placeholders;
- (unsigned)authInvalidError;
- (unsigned)essentialServerInfoMissingError;
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)_registerDeviceWithCause:(id)cause includeKeys:(unint64_t)keys;
- (void)ackLocateCommand:(id)command withStatusCode:(int64_t)code andStatusMessage:(id)message withCompletion:(id)completion;
- (void)ackRegisterCommand:(id)command withCompletion:(id)completion;
- (void)appInstallStateChanged:(id)changed;
- (void)dealloc;
- (void)deinitializeProvider;
- (void)deleteRegisterDigest;
- (void)deregisterCommonNotifications;
- (void)didCancelRequest:(id)request;
- (void)didReceiveResponseFor:(id)for;
- (void)handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body;
- (void)registerCommonNotifications;
- (void)registerDeviceWithCause:(id)cause force:(BOOL)force includeKeys:(unint64_t)keys;
- (void)sendQueueCheckRequest:(id)request withReasons:(id)reasons;
- (void)showAlertFromServerResponse:(id)response;
- (void)tryToFetchAuthToken;
- (void)unregisterDevice;
@end

@implementation FindBaseServiceProvider

- (void)dealloc
{
  standardLocator = [(FindBaseServiceProvider *)self standardLocator];
  [standardLocator stopLocator];

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
  _registerDigestPrefKey = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
  [FMPreferencesUtil removeKey:_registerDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  _nonEssentialRegisterDigestPrefKey = [(FindBaseServiceProvider *)self _nonEssentialRegisterDigestPrefKey];
  [FMPreferencesUtil removeKey:_nonEssentialRegisterDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  lastForcedRegisterTimePrefKey = [(FindBaseServiceProvider *)self lastForcedRegisterTimePrefKey];
  [FMPreferencesUtil removeKey:lastForcedRegisterTimePrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

- (void)deinitializeProvider
{
  selfCopy = self;
  v30.receiver = self;
  v30.super_class = FindBaseServiceProvider;
  [(ServiceProvider *)&v30 deinitializeProvider];
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FindBaseServiceProvider *)selfCopy fm_logID];
    *buf = 138412290;
    v32 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ Deinitializing...", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  requests = [(FindBaseServiceProvider *)selfCopy requests];
  v6 = [requests countByEnumeratingWithState:&v26 objects:v35 count:16];
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
          objc_enumerationMutation(requests);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = sub_100002830();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          [(FindBaseServiceProvider *)selfCopy fm_logID];
          v14 = v13 = selfCopy;
          fm_logID2 = [v11 fm_logID];
          *buf = v25;
          v32 = v14;
          v33 = 2112;
          v34 = fm_logID2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ cancelling request %@", buf, 0x16u);

          selfCopy = v13;
        }

        [v11 setDelegate:0];
        [v11 cancel];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [requests countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v8);
  }

  v16 = +[NSMutableArray array];
  [(FindBaseServiceProvider *)selfCopy setRequests:v16];

  standardLocator = [(FindBaseServiceProvider *)selfCopy standardLocator];
  if (standardLocator)
  {
    v18 = standardLocator;
    standardLocator2 = [(FindBaseServiceProvider *)selfCopy standardLocator];
    locatorRunning = [standardLocator2 locatorRunning];

    if (locatorRunning)
    {
      v21 = sub_100002830();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Stopping standard locate...", buf, 2u);
      }

      standardLocator3 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator3 stopLocator];

      standardLocator4 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator4 setReceivedLocationBlock:0];

      standardLocator5 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator5 setStoppedLocatorBlock:0];
    }
  }

  [(FindBaseServiceProvider *)selfCopy setStandardLocator:0, v25];
}

- (id)formattedURLForTemplate:(id)template
{
  templateCopy = template;
  v5 = [(FindBaseServiceProvider *)self substituteStandardURLPlaceholders:templateCopy];
  v6 = [[NSURL alloc] initWithString:v5];
  if (!v6)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = templateCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not create an NSURL from the url string %@ for the template %@", &v9, 0x16u);
    }
  }

  return v6;
}

- (id)substituteStandardURLPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  v5 = +[PreferencesMgr sharedInstance];
  hostportOverride = [v5 hostportOverride];

  if ([hostportOverride length])
  {
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:hostportOverride];
  }

  else
  {
    account = [(ServiceProvider *)self account];
    serverHost = [account serverHost];

    if (!serverHost)
    {
      goto LABEL_6;
    }

    account2 = [(ServiceProvider *)self account];
    serverHost2 = [account2 serverHost];
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:serverHost2];

    placeholdersCopy = account2;
  }

  placeholdersCopy = v7;
LABEL_6:
  v12 = +[PreferencesMgr sharedInstance];
  protocolSchemeOverride = [v12 protocolSchemeOverride];

  if ([protocolSchemeOverride length])
  {
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:protocolSchemeOverride];
  }

  else
  {
    account3 = [(ServiceProvider *)self account];
    serverProtocolScheme = [account3 serverProtocolScheme];

    if (!serverProtocolScheme)
    {
      goto LABEL_11;
    }

    account4 = [(ServiceProvider *)self account];
    serverProtocolScheme2 = [account4 serverProtocolScheme];
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:serverProtocolScheme2];

    placeholdersCopy = account4;
  }

  placeholdersCopy = v14;
LABEL_11:
  serviceIdentifierInURL = [(FindBaseServiceProvider *)self serviceIdentifierInURL];

  if (serviceIdentifierInURL)
  {
    serviceIdentifierInURL2 = [(FindBaseServiceProvider *)self serviceIdentifierInURL];
    v21 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${service}" withString:serviceIdentifierInURL2];

    placeholdersCopy = v21;
  }

  account5 = [(ServiceProvider *)self account];
  authId = [account5 authId];

  if (authId)
  {
    account6 = [(ServiceProvider *)self account];
    authId2 = [account6 authId];
    v26 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${dsid}" withString:authId2];

    placeholdersCopy = v26;
  }

  v27 = +[SystemConfig sharedInstance];
  deviceUDID = [v27 deviceUDID];

  if (deviceUDID)
  {
    v29 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${udid}" withString:deviceUDID];

    placeholdersCopy = v29;
  }

  return placeholdersCopy;
}

- (NSMutableDictionary)fullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_autoreleasePoolPush();
  _constructNonVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructNonVolatileFullDeviceInfo];

  _constructVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructVolatileFullDeviceInfo];

  _constructNonCriticalFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructNonCriticalFullDeviceInfo];

  v8 = +[PreferencesMgr sharedInstance];
  deviceInfoOverrides = [v8 deviceInfoOverrides];

  if (deviceInfoOverrides)
  {
    [v3 addEntriesFromDictionary:deviceInfoOverrides];
  }

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (NSMutableDictionary)locationDeviceInfo
{
  _constructLocationDeviceInfo = [(FindBaseServiceProvider *)self _constructLocationDeviceInfo];
  _constructNonVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructNonVolatileFullDeviceInfo];

  _constructVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructVolatileFullDeviceInfo];

  _constructNonCriticalFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructNonCriticalFullDeviceInfo];

  v7 = +[PreferencesMgr sharedInstance];
  locationDeviceInfoOverrides = [v7 locationDeviceInfoOverrides];

  if (locationDeviceInfoOverrides)
  {
    [_constructLocationDeviceInfo addEntriesFromDictionary:locationDeviceInfoOverrides];
  }

  return _constructLocationDeviceInfo;
}

- (id)_constructStandardDeviceContext
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSDate date];
  stringValueForServer = [v3 stringValueForServer];

  if (stringValueForServer)
  {
    [v2 setObject:stringValueForServer forKeyedSubscript:@"deviceTS"];
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
  deviceName = [v8 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  v10 = +[SystemConfig sharedInstance];
  timezone = [v10 timezone];
  [v3 fm_safelyMapKey:@"timezone" toObject:timezone];

  v12 = +[SystemConfig sharedInstance];
  locale = [v12 locale];
  [v3 fm_safelyMapKey:@"locale" toObject:locale];

  v14 = +[SystemConfig sharedInstance];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 processIdentifier]);
  stringValue = [v15 stringValue];
  [v3 fm_safelyMapKey:@"processId" toObject:stringValue];

  v17 = +[SystemConfig sharedInstance];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unlockState]);
  [v3 setObject:v18 forKeyedSubscript:@"unlockState"];

  v19 = +[SystemConfig sharedInstance];
  isFMFAppRemoved = [v19 isFMFAppRemoved];

  v21 = [NSNumber numberWithBool:isFMFAppRemoved];
  [v3 fm_safelyMapKey:@"isFMFAppRemoved" toObject:v21];

  v22 = objc_alloc_init(FMDGainsboroughPairedDeviceSimulation);
  if ([(FMDGainsboroughPairedDeviceSimulation *)v22 isPairedDeviceSimulationActive])
  {
    [v3 fm_safelyMapKey:@"deviceName" toObject:@"Gainsborough's iPhone"];
  }

  _constructPairedDevicesInfo = [(FindBaseServiceProvider *)self _constructPairedDevicesInfo];
  [v3 setObject:_constructPairedDevicesInfo forKeyedSubscript:@"otherDevices"];

  return v3;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SystemConfig sharedInstance];
  deviceUDID = [v4 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v6 = +[SystemConfig sharedInstance];
  LODWORD(v4) = [v6 canRegisterWithIDSID];

  if (v4)
  {
    v7 = +[SystemConfig sharedInstance];
    idsDeviceID = [v7 idsDeviceID];
    [v3 fm_safelyMapKey:@"idsDeviceId" toObject:idsDeviceID];
  }

  v9 = +[SystemConfig sharedInstance];
  deviceClassString = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:deviceClassString];

  v11 = +[SystemConfig sharedInstance];
  productType = [v11 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  v13 = +[SystemConfig sharedInstance];
  buildVersion = [v13 buildVersion];
  [v3 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  v15 = +[SystemConfig sharedInstance];
  productVersion = [v15 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  v17 = +[SystemConfig sharedInstance];
  platform = [v17 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:platform];

  v19 = +[FMSystemInfo sharedInstance];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isInternalBuild]);
  [v3 fm_safelyMapKey:@"isInternal" toObject:v20];

  v21 = +[SystemConfig sharedInstance];
  serialNumber = [v21 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  account = [(ServiceProvider *)self account];
  versionHistory = [account versionHistory];
  v25 = [versionHistory componentsJoinedByString:{@", "}];
  [v3 fm_safelyMapKey:@"versionHistory" toObject:v25];

  v26 = +[SystemConfig sharedInstance];
  deviceColor = [v26 deviceColor];
  [v3 fm_safelyMapKey:@"deviceColor" toObject:deviceColor];

  v28 = +[SystemConfig sharedInstance];
  deviceEnclosureColor = [v28 deviceEnclosureColor];
  [v3 fm_safelyMapKey:@"enclosureColor" toObject:deviceEnclosureColor];

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
  deviceUDID = [v3 deviceUDID];
  [v2 fm_safelyMapKey:@"udid" toObject:deviceUDID];

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
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, uniqueId];

  return v7;
}

- (id)_nonEssentialRegisterDigestPrefKey
{
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigestNonEssential-%@-%@", v4, uniqueId];

  return v7;
}

- (NSString)lastForcedRegisterTimePrefKey
{
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, uniqueId];

  return v7;
}

- (id)_constructPairedDevicesInfo
{
  v35 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v2 getPairedDevices];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = getPairedDevices;
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
        bOOLValue = [v11 BOOLValue];

        v13 = [v10 valueForProperty:v8];
        bOOLValue2 = [v13 BOOLValue];

        if (bOOLValue && (bOOLValue2 & 1) == 0)
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
          uUIDString = [v20 UUIDString];
          [v15 fm_safelyMapKey:@"pairingId" toObject:uUIDString];

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
    pairedDeviceInfo = [(FMDGainsboroughPairedDeviceSimulation *)v25 pairedDeviceInfo];
    [v35 addObjectsFromArray:pairedDeviceInfo];
  }

  return v35;
}

- (void)registerDeviceWithCause:(id)cause force:(BOOL)force includeKeys:(unint64_t)keys
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10000EFDC;
  v16[4] = sub_10000EFEC;
  causeCopy = cause;
  v17 = causeCopy;
  registerQueue = [(FindBaseServiceProvider *)self registerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFF4;
  block[3] = &unk_10005D690;
  block[4] = self;
  v12 = causeCopy;
  forceCopy = force;
  v13 = v16;
  keysCopy = keys;
  v10 = causeCopy;
  dispatch_async(registerQueue, block);

  _Block_object_dispose(v16, 8);
}

- (void)_registerDeviceWithCause:(id)cause includeKeys:(unint64_t)keys
{
  causeCopy = cause;
  essentialServerInfoMissingError = [(FindBaseServiceProvider *)self essentialServerInfoMissingError];
  if (essentialServerInfoMissingError == 1196379972)
  {
    v7 = [[FMRequestRegister alloc] initWithProvider:self andCause:causeCopy];
    registrationInformationDigestIncludingKeys = [(FMRequestRegister *)v7 registrationInformationDigestIncludingKeys];
    _registerDigestPrefKey = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
    if (qword_100070128 && [qword_100070128 isEqualToData:registrationInformationDigestIncludingKeys])
    {
      v10 = sub_100002830();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v45 = fm_logID;
        v46 = 2112;
        v47 = causeCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Not sending register with cause %@ because there is already another register with the same registration information in-progress", buf, 0x16u);
      }
    }

    else
    {
      v21 = [FMPreferencesUtil dataForKey:_registerDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
      v10 = v21;
      if (v21)
      {
        v22 = [v21 isEqualToData:registrationInformationDigestIncludingKeys];
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
              v45 = causeCopy;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Reg-info unchanged. Ignoring register %@", buf, 0xCu);
            }

            goto LABEL_41;
          }

          v28 = sub_100002830();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v31 = +[StartupRegisterManager sharedInstance];
            *buf = 138412546;
            v45 = causeCopy;
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
            v45 = causeCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Reg-info unchanged but forcing register %@", buf, 0xCu);
          }
        }
      }

      v32 = sub_100002830();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v45 = fm_logID2;
        v46 = 2112;
        v47 = causeCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@ Sending register with cause %@ because registration information has changed", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000F90C;
      v42[3] = &unk_10005D498;
      v34 = registrationInformationDigestIncludingKeys;
      v43 = v34;
      [(FMRequest *)v7 setWillSendHandler:v42];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000F91C;
      v37[3] = &unk_10005D6B8;
      objc_copyWeak(&v41, buf);
      v38 = v34;
      v39 = _registerDigestPrefKey;
      selfCopy = self;
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

  v12 = essentialServerInfoMissingError;
  v13 = sub_100002830();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID3 = [(FindBaseServiceProvider *)self fm_logID];
    v15 = [CommonUtil stringForFourCC:v12];
    *buf = 138412802;
    v45 = fm_logID3;
    v46 = 2112;
    v47 = causeCopy;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Not sending register with cause %@ to server since some essential server info is missing - '%@'", buf, 0x20u);
  }

  v16 = v12 == 1480675411;
  v17 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v17 isInternalBuild];

  if (v16)
  {
    if (isInternalBuild)
    {
      v19 = sub_100002830();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        serviceName = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = serviceName;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ is not functional as an APS token is not available.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (isInternalBuild)
    {
      v23 = sub_100002830();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = serviceName2;
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

- (void)sendQueueCheckRequest:(id)request withReasons:(id)reasons
{
  requestCopy = request;
  [(FindBaseServiceProvider *)self _beginXPCTransaction];
  v6 = [[FMRequestQueueCheck alloc] initWithProvider:self andServerContext:requestCopy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000100EC;
  v7[3] = &unk_10005D498;
  v7[4] = self;
  [(FMRequest *)v6 setCompletionHandler:v7];
  [(FindBaseServiceProvider *)self enqueueRequest:v6];

  [(FindBaseServiceProvider *)self _endXPCTransaction];
}

- (void)ackRegisterCommand:(id)command withCompletion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  if (v8)
  {
    v9 = [NSURL URLWithString:v8];
    v10 = [[FMRequestAckRegister alloc] initWithProvider:self registerCommand:commandCopy ackURL:v9];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000108FC;
    v15 = &unk_10005D4C0;
    selfCopy = self;
    v17 = completionCopy;
    [(FMRequest *)v10 setCompletionHandler:&v12];
    [(FindBaseServiceProvider *)self enqueueRequest:v10, v12, v13, v14, v15, selfCopy];
  }

  else
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v19 = serviceName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Not acking the register command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)ackLocateCommand:(id)command withStatusCode:(int64_t)code andStatusMessage:(id)message withCompletion:(id)completion
{
  commandCopy = command;
  messageCopy = message;
  completionCopy = completion;
  v13 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  if (v13)
  {
    v14 = [NSURL URLWithString:v13];
    v15 = [[FMRequestAckLocate alloc] initWithProvider:self locateCommand:commandCopy ackURL:v14 cmdStatusCode:code cmdStatusMessage:messageCopy];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100010CBC;
    v20 = &unk_10005D4C0;
    selfCopy = self;
    v22 = completionCopy;
    [(FMRequest *)v15 setCompletionHandler:&v17];
    [(FindBaseServiceProvider *)self enqueueRequest:v15, v17, v18, v19, v20, selfCopy];
  }

  else
  {
    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v24 = serviceName;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: Not acking the locate command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body
{
  bodyCopy = body;
  v7 = bodyCopy;
  if (bodyCopy && [bodyCopy count])
  {
    v8 = [v7 objectForKeyedSubscript:@"cmd"];
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      v22 = 138412546;
      v23 = serviceName;
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
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412546;
        v23 = serviceName2;
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
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412546;
        v23 = serviceName2;
        v24 = 2112;
        v25 = v8;
        v15 = "%@: No handler found for command %@";
        goto LABEL_11;
      }
    }

    v16 = +[StartupRegisterManager sharedInstance];
    [v16 eventDidOccur:8];

    if (status == 210 || status == 204)
    {
      v17 = sub_100002830();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        serviceName3 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412290;
        v23 = serviceName3;
        v21 = "%@: No more pending messages on the server...";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v21, &v22, 0xCu);
      }
    }

    else
    {
      if (status != 200)
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
          serviceName4 = [(FindBaseServiceProvider *)self serviceName];
          v22 = 138412290;
          v23 = serviceName4;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: More messages pending - checking now...", &v22, 0xCu);
        }

        [(FindBaseServiceProvider *)self sendQueueCheckRequest:0];
        goto LABEL_23;
      }

      if (v18)
      {
        serviceName3 = [(FindBaseServiceProvider *)self serviceName];
        v22 = 138412290;
        v23 = serviceName3;
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
    fm_logID = [(FindBaseServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ isProviderEnabledForLocations should be handled in a subclass", &v6, 0xCu);
  }

  return 0;
}

- (unsigned)essentialServerInfoMissingError
{
  authInvalidError = [(FindBaseServiceProvider *)self authInvalidError];
  if (authInvalidError == 1196379972)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    apsToken = [(FindBaseServiceProvider *)selfCopy apsToken];

    if (apsToken)
    {
      authInvalidError = 1196379972;
    }

    else
    {
      authInvalidError = 1480675411;
    }

    objc_sync_exit(selfCopy);
  }

  return authInvalidError;
}

- (unsigned)authInvalidError
{
  account = [(ServiceProvider *)self account];

  if (!account)
  {
    return 1480672067;
  }

  account2 = [(ServiceProvider *)self account];
  username = [account2 username];
  v6 = [username length];

  if (!v6)
  {
    return 1481986898;
  }

  account3 = [(ServiceProvider *)self account];
  authToken = [account3 authToken];
  v9 = [authToken length];

  if (!v9)
  {
    return 1481920331;
  }

  account4 = [(ServiceProvider *)self account];
  authId = [account4 authId];
  v12 = [authId length];

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
  account = [(ServiceProvider *)self account];
  authToken = [account authToken];
  [authToken length];
}

- (id)copyHandlerForCommand:(id)command params:(id)params
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Base copyHandlerForCommand should not be called", v6, 2u);
  }

  return 0;
}

- (void)showAlertFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100036F9C(responseCopy, v4);
  }

  v5 = [responseCopy objectForKeyedSubscript:@"title"];
  v29 = [responseCopy objectForKeyedSubscript:@"text"];
  v28 = [responseCopy objectForKeyedSubscript:@"okButtonTitle"];
  v6 = [responseCopy objectForKeyedSubscript:@"okButtonURL"];
  v7 = [responseCopy objectForKeyedSubscript:@"okButtonAction"];
  v8 = [responseCopy objectForKeyedSubscript:@"cancelButtonTitle"];
  v9 = [responseCopy objectForKeyedSubscript:@"cancelButtonURL"];
  v10 = [responseCopy objectForKeyedSubscript:@"cancelButtonAction"];
  v11 = [responseCopy objectForKeyedSubscript:@"delay"];
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

    defaultButtonTitle = [v14 defaultButtonTitle];
    if (defaultButtonTitle)
    {
    }

    else
    {
      alternateButtonTitle = [v14 alternateButtonTitle];

      if (!alternateButtonTitle)
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

- (id)alertActionInfoForAction:(id)action andURL:(id)l
{
  actionCopy = action;
  lCopy = l;
  if ([actionCopy isEqualToString:@"appleid"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT";
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

  if ([actionCopy isEqualToString:@"settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
    v17[0] = @"url";
    v17[1] = @"sensitive";
    v18[0] = v7;
    v18[1] = &__kCFBooleanTrue;
    v8 = v18;
    v9 = v17;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:@"sml-settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING"];
    v15[0] = @"url";
    v15[1] = @"sensitive";
    v16[0] = v7;
    v16[1] = &__kCFBooleanTrue;
    v8 = v16;
    v9 = v15;
    goto LABEL_10;
  }

  v10 = [actionCopy isEqualToString:@"open-url"];
  v11 = 0;
  if (lCopy && v10)
  {
    v7 = [NSURL URLWithString:lCopy];
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

- (void)appInstallStateChanged:(id)changed
{
  v4 = sub_10001BB68();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver", v5, 2u);
  }

  [(FindBaseServiceProvider *)self registerDeviceWithCause:@"AppStateChanged"];
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  allowServerRequests = [(FindBaseServiceProvider *)self allowServerRequests];
  if (allowServerRequests)
  {
    selfCopy = self;
    requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock lock];

    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FindBaseServiceProvider *)selfCopy fm_logID];
      fm_logID2 = [requestCopy fm_logID];
      *buf = 138412546;
      v41 = fm_logID;
      v42 = 2112;
      v43 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Enqueueing request %@", buf, 0x16u);
    }

    [requestCopy setDelegate:selfCopy];
    v8 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    requests = [(FindBaseServiceProvider *)selfCopy requests];
    v10 = [requests countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v10)
    {
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(requests);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          if ([requestCopy canReplace:v13])
          {
            [v8 addObject:v13];
          }
        }

        v10 = [requests countByEnumeratingWithState:&v36 objects:v47 count:16];
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
            fm_logID3 = [(FindBaseServiceProvider *)selfCopy fm_logID];
            fm_logID4 = [v18 fm_logID];
            fm_logID5 = [requestCopy fm_logID];
            *buf = 138412802;
            v41 = fm_logID3;
            v42 = 2112;
            v43 = fm_logID4;
            v44 = 2112;
            v45 = fm_logID5;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ Discarding %@ because a newer request %@ can replace this one", buf, 0x20u);
          }

          [v18 cancel];
        }

        v15 = [v14 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v15);
    }

    requests2 = [(FindBaseServiceProvider *)selfCopy requests];
    [requests2 addObject:requestCopy];

    [requestCopy send];
    requestModifierLock2 = [(FindBaseServiceProvider *)selfCopy requestModifierLock];
    [requestModifierLock2 unlock];
  }

  else
  {
    v25 = sub_100002830();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      fm_logID6 = [(FindBaseServiceProvider *)self fm_logID];
      fm_logID7 = [requestCopy fm_logID];
      *buf = 138412546;
      v41 = fm_logID6;
      v42 = 2112;
      v43 = fm_logID7;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@: Not sending request %@ to server since the provider is not allowing server requests", buf, 0x16u);
    }
  }

  return allowServerRequests;
}

- (void)didReceiveResponseFor:(id)for
{
  forCopy = for;
  if ([forCopy responseErrorType] == 257)
  {
    [(FindBaseServiceProvider *)self didReceiveAuthFailureForRequest:forCopy];
  }

  alertFromServerResponse = [forCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    alertFromServerResponse2 = [forCopy alertFromServerResponse];
    [(FindBaseServiceProvider *)self showAlertFromServerResponse:alertFromServerResponse2];
  }

  if (([forCopy willRetry] & 1) == 0)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      fm_logID = [(FindBaseServiceProvider *)self fm_logID];
      fm_logID2 = [forCopy fm_logID];
      v13 = 138412546;
      v14 = fm_logID;
      v15 = 2112;
      v16 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was completed or it exhausted its retries", &v13, 0x16u);
    }

    requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock lock];

    [forCopy deinitializeRequest];
    requests = [(FindBaseServiceProvider *)self requests];
    [requests removeObject:forCopy];

    requestModifierLock2 = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock2 unlock];
  }
}

- (void)didCancelRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FindBaseServiceProvider *)self fm_logID];
    fm_logID2 = [requestCopy fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2112;
    v14 = fm_logID2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was cancelled", &v11, 0x16u);
  }

  requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
  [requestModifierLock lock];

  [requestCopy deinitializeRequest];
  requests = [(FindBaseServiceProvider *)self requests];
  [requests removeObject:requestCopy];

  requestModifierLock2 = [(FindBaseServiceProvider *)self requestModifierLock];
  [requestModifierLock2 unlock];
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