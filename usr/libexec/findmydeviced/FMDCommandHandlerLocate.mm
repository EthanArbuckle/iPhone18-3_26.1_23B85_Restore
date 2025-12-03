@interface FMDCommandHandlerLocate
- (id)createLocatorWithParams:(id)params;
- (id)locationPublisherWithParams:(id)params;
- (void)_notifyAboutLocatingState;
- (void)_sendAccessoryCurrentLocationsForCmd:(id)cmd reason:(int64_t)reason locator:(id)locator accessoryIdentifier:(id)identifier;
- (void)_sendTrackedLocations;
- (void)_showAlertAfterUnlock:(id)unlock;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerLocate

- (void)handleCommand
{
  v3 = qword_100312B58;
  provider = [(FMDCommandHandler *)self provider];
  v4 = +[FMDSystemConfig sharedInstance];
  isLocationServicesCapable = [v4 isLocationServicesCapable];

  v6 = +[FMDSystemConfig sharedInstance];
  canHandleLocates = [v6 canHandleLocates];

  v8 = qword_100312B68;
  v9 = @"Ignored Request - Location Services Not Enabled";
  if (canHandleLocates)
  {
    v9 = 0;
    v8 = v3;
  }

  v10 = isLocationServicesCapable == 0;
  if (isLocationServicesCapable)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"Ignored Request - Device Not Capable of Location Services";
  }

  if (v10)
  {
    v8 = qword_100312B60;
  }

  v100 = v8;
  if (v8 == qword_100312B58)
  {
    commandParams = [(FMDCommandHandler *)self commandParams];
    val = [(FMDCommandHandlerLocate *)self createLocatorWithParams:commandParams];

    standardLocator = [provider standardLocator];
    if (standardLocator)
    {
      standardLocator2 = [provider standardLocator];
      locatorRunning = [standardLocator2 locatorRunning];

      if (locatorRunning)
      {
        standardLocator3 = [provider standardLocator];
        [standardLocator3 desiredAccuracy];
        v18 = v17;
        [val desiredAccuracy];
        v20 = v18 > v19;

        oslog = sub_100002880();
        v21 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          if (v21)
          {
            standardLocator4 = [provider standardLocator];
            [standardLocator4 desiredAccuracy];
            v65 = v64;
            [val desiredAccuracy];
            *buf = 134218240;
            *&buf[4] = v65;
            *&buf[12] = 2048;
            *&buf[14] = v66;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Current locate command is already looking for the same/better accuracy. Ignoring new locate - current=%fm,new=%fm", buf, 0x16u);
          }

          goto LABEL_48;
        }

        if (v21)
        {
          standardLocator5 = [provider standardLocator];
          [standardLocator5 desiredAccuracy];
          v24 = v23;
          [val desiredAccuracy];
          *buf = 134218240;
          *&buf[4] = v24;
          *&buf[12] = 2048;
          *&buf[14] = v25;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "New locate command asks for a better accuracy than the current locate. Stopping current locate - current=%fm,new=%fm", buf, 0x16u);
        }
      }
    }

    standardLocator6 = [provider standardLocator];

    if (standardLocator6)
    {
      standardLocator7 = [provider standardLocator];
      [standardLocator7 stopLocator];

      [provider setStandardLocator:0];
    }

    if (+[FMDPreferencesMgr simulateLocateNotification])
    {
      v28 = sub_100002880();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Simulating locate notification...", buf, 2u);
      }

      commandParams2 = [(FMDCommandHandler *)self commandParams];
      v30 = [commandParams2 mutableCopy];

      [v30 setObject:@"Find My iPhone" forKeyedSubscript:@"title"];
      [v30 setObject:@"This device's location was accessed using Find My iPhone" forKeyedSubscript:@"text"];
      [v30 setObject:@"OK" forKeyedSubscript:@"okButtonTitle"];
      v31 = [v30 copy];
      [(FMDCommandHandler *)self setCommandParams:v31];
    }

    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v94 = [commandParams3 objectForKeyedSubscript:@"text"];

    if (v94 && +[FMDPreferencesMgr locateNotificationsEnabled])
    {
      osloga = objc_alloc_init(FMAlert);
      [osloga setCategory:3];
      [osloga setMsgText:v94];
      commandParams4 = [(FMDCommandHandler *)self commandParams];
      v34 = [commandParams4 objectForKeyedSubscript:@"title"];
      [osloga setMsgTitle:v34];

      [osloga setShowMsgInLockScreen:1];
      [osloga setDismissMsgOnUnlock:0];
      [osloga setDismissMsgOnLock:0];
      commandParams5 = [(FMDCommandHandler *)self commandParams];
      v36 = [commandParams5 objectForKeyedSubscript:@"okButtonTitle"];
      [osloga setDefaultButtonTitle:v36];
    }

    else
    {
      osloga = 0;
    }

    v127 = @"id";
    commandID = [(FMDCommandHandler *)self commandID];
    v128 = commandID;
    v38 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];

    commandParams6 = [(FMDCommandHandler *)self commandParams];
    v40 = [commandParams6 objectForKey:@"udid"];
    fm_nullToNil = [v40 fm_nullToNil];

    if (fm_nullToNil)
    {
      v41 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      [(FMDCommandHandlerLocate *)self setAccessoryIdentifier:v41];
    }

    v42 = sub_100002880();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate Will send accessory locations.", buf, 2u);
    }

    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v97 = [(FMDCommandHandlerLocate *)self createLocatorWithParams:commandParams7];

    commandParams8 = [(FMDCommandHandler *)self commandParams];
    v93 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:commandParams8];

    [v97 setLocatorPublisher:v93];
    accessoryIdentifier = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    [(FMDCommandHandlerLocate *)self _sendAccessoryCurrentLocationsForCmd:v38 reason:1 locator:v97 accessoryIdentifier:accessoryIdentifier];

    commandParams9 = [(FMDCommandHandler *)self commandParams];
    v95 = [commandParams9 objectForKey:@"scanDurationInSeconds"];

    accessoryRegistry = [provider accessoryRegistry];
    accessoryIdentifier2 = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    v49 = [accessoryRegistry accessoryForIdentifier:accessoryIdentifier2];

    accessoryIdentifier3 = [v49 accessoryIdentifier];
    stringValue = [accessoryIdentifier3 stringValue];

    [v95 doubleValue];
    if (v51 <= 0.0)
    {
      v57 = 0;
      v58 = 0;
      v90 = 0;
      v59 = 0;
LABEL_46:
      newDiscovery = 0;
LABEL_47:
      v67 = provider;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v126 = 0;
      commandParams10 = [(FMDCommandHandler *)self commandParams];
      v69 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:commandParams10];

      objc_initWeak(&location, val);
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1001BF95C;
      v112[3] = &unk_1002D0D68;
      selfCopy = self;
      v112[4] = selfCopy;
      v70 = v59;
      v113 = v70;
      v88 = v38;
      v114 = v88;
      v71 = v49;
      v115 = v71;
      v72 = v57;
      v116 = v72;
      v73 = stringValue;
      v117 = v73;
      v74 = v58;
      v118 = v74;
      v75 = newDiscovery;
      v119 = v75;
      v76 = v67;
      v120 = v76;
      objc_copyWeak(&v123, &location);
      v122 = buf;
      oslog = osloga;
      v121 = oslog;
      [v69 startPublishingWithBlock:v112];
      [val setLocatorPublisher:v69];
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_1001BFF24;
      v103[3] = &unk_1002D0D90;
      v77 = v76;
      v104 = v77;
      v92 = v70;
      v105 = v92;
      v78 = v71;
      v106 = v78;
      v79 = v72;
      v107 = v79;
      v80 = v73;
      v108 = v80;
      v81 = v74;
      v109 = v81;
      v82 = v75;
      v110 = v82;
      v83 = v69;
      v111 = v83;
      [val setStoppedLocatorBlock:v103];
      [v77 setStandardLocator:val];
      [val startLocator];

      objc_destroyWeak(&v123);
      objc_destroyWeak(&location);

      _Block_object_dispose(buf, 8);
LABEL_48:

      v11 = @"OK";
      goto LABEL_49;
    }

    if ([v49 category] != 3)
    {
      v60 = sub_100002880();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerLocate starting BLE discovery.", buf, 2u);
      }

      bluetoothManager = [provider bluetoothManager];
      newDiscovery = [bluetoothManager newDiscovery];

      [v95 doubleValue];
      [newDiscovery startDiscoveryForDuration:?];
      if (newDiscovery)
      {
        v59 = +[NSDate date];
        v57 = 0;
        v58 = 0;
        v90 = 0;
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v90 = 0;
        v59 = 0;
      }

      goto LABEL_47;
    }

    v52 = v49;
    if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = +[FMDExtConfigurationRegistry sharedInstance];
      accessoryType = [v52 accessoryType];
      v55 = [v53 configForAccessoryType:accessoryType];

      v90 = [v55 flavorForFeature:@"availability"];
      accessoryRegistry2 = [provider accessoryRegistry];
      v57 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v90 withDelegate:accessoryRegistry2];

      v58 = [v55 infoForFeature:@"availability"];
      [v95 doubleValue];
      [v57 startDiscoveryForAccessory:stringValue duration:v58 info:&stru_1002D0D18 withCompletion:?];

      if (v57)
      {
        v59 = +[NSDate date];
LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
      v90 = 0;
      v58 = 0;
      v57 = 0;
    }

    v59 = 0;
    goto LABEL_45;
  }

LABEL_49:
  commandParams11 = [(FMDCommandHandler *)self commandParams];
  v85 = [commandParams11 objectForKeyedSubscript:@"includeTrackingInfo"];

  if (v85 && [v85 BOOLValue])
  {
    [(FMDCommandHandlerLocate *)self _sendTrackedLocations];
  }

  [(FMDCommandHandlerLocate *)self _notifyAboutLocatingState];
  v86 = +[NSMutableDictionary dictionary];
  v87 = [NSNumber numberWithInteger:v100];
  [v86 setObject:v87 forKeyedSubscript:@"status"];

  if (v11)
  {
    [v86 setObject:v11 forKeyedSubscript:@"message"];
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v86];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v6 intValue];

  v8 = [ackDataForCommand objectForKeyedSubscript:@"message"];
  commandParams = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v10)
  {
    v25 = intValue;
    v24 = [NSURL URLWithString:v10];
    v12 = [FMDActingRequestDecorator alloc];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001C0434;
    v31[3] = &unk_1002CD580;
    v31[4] = self;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001C04DC;
    v29[3] = &unk_1002CDF18;
    v29[4] = self;
    v13 = provider;
    v30 = v13;
    v14 = [(FMDActingRequestDecorator *)v12 initWithDeviceContextGenerator:v31 deviceInfoGenerator:v29 serverContextGenerator:0 requestHeaderGenerator:0];
    v15 = v8;
    v16 = [FMDRequestAckLocate alloc];
    [v13 account];
    v17 = v10;
    v18 = ackDataForCommand;
    v20 = v19 = provider;
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v22 = [(FMDRequestAckLocate *)v16 initWithAccount:v20 locateCommand:commandParams2 ackURL:v24 cmdStatusCode:v25 cmdStatusMessage:v15];

    provider = v19;
    ackDataForCommand = v18;
    v10 = v17;
    [(FMDRequest *)v22 setDecorator:v14];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001C05F0;
    v27[3] = &unk_1002CD1D0;
    v28 = completionCopy;
    [(FMDRequest *)v22 setCompletionHandler:v27];
    [v13 enqueueRequest:v22];

    v8 = v15;
    v23 = v24;
  }

  else
  {
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Not acking the locate command because there is no ack URL", buf, 2u);
    }
  }
}

- (void)_sendAccessoryCurrentLocationsForCmd:(id)cmd reason:(int64_t)reason locator:(id)locator accessoryIdentifier:(id)identifier
{
  cmdCopy = cmd;
  locatorCopy = locator;
  identifierCopy = identifier;
  provider = [(FMDCommandHandler *)self provider];
  v14 = [cmdCopy objectForKeyedSubscript:@"locationValidityDuration"];
  v15 = [cmdCopy objectForKeyedSubscript:@"id"];
  v16 = provider;
  accessoryRegistry = [provider accessoryRegistry];
  v18 = accessoryRegistry;
  if (!identifierCopy)
  {
    v46 = v14;
    v47 = locatorCopy;
    v48 = cmdCopy;
    allAccessories = [accessoryRegistry allAccessories];

    v26 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = allAccessories;
    v28 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v55;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v54 + 1) + 8 * i);
          v33 = sub_100002880();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate fetching historical location for %@.", buf, 0xCu);
          }

          accessoryLocationStore = [v16 accessoryLocationStore];
          v35 = [accessoryLocationStore historicalLocationForAccessory:v32];

          if (v35)
          {
            v36 = +[NSMutableDictionary dictionary];
            dictionaryValue = [v35 dictionaryValue];
            [v36 addEntriesFromDictionary:dictionaryValue];

            [v26 addObject:v36];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      v38 = [FMDActingRequestDecorator alloc];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1001C1A48;
      v52[3] = &unk_1002CD580;
      v53 = v15;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001C1ABC;
      v50[3] = &unk_1002CD580;
      v39 = v16;
      v51 = v39;
      v40 = [(FMDActingRequestDecorator *)v38 initWithDeviceContextGenerator:v52 deviceInfoGenerator:v50 serverContextGenerator:0 requestHeaderGenerator:0];
      v41 = [FMDRequestAccessoryLocations alloc];
      account = [v39 account];
      v43 = [(FMDRequestAccessoryLocations *)v41 initWithAccount:account accessoryLocations:v26];

      [(FMDRequest *)v43 setDecorator:v40];
      ct_green_tea_logger_create_static();
      v44 = getCTGreenTeaOsLogHandle();
      v45 = v44;
      identifierCopy = 0;
      locatorCopy = v47;
      v14 = v46;
      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
      }

      [v39 enqueueRequest:v43];
      cmdCopy = v48;
    }

    else
    {
      locatorCopy = v47;
      cmdCopy = v48;
      v14 = v46;
      identifierCopy = 0;
    }

    goto LABEL_23;
  }

  v19 = [accessoryRegistry accessoryForIdentifier:identifierCopy];

  obj = v19;
  if ([v19 connectionState] == 1)
  {
    v20 = [FMDActingRequestDecorator alloc];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1001C1528;
    v67[3] = &unk_1002CD580;
    v68 = v15;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1001C159C;
    v64[3] = &unk_1002CDF18;
    v21 = v16;
    v65 = v21;
    selfCopy = self;
    v22 = [(FMDActingRequestDecorator *)v20 initWithDeviceContextGenerator:v67 deviceInfoGenerator:v64 serverContextGenerator:0 requestHeaderGenerator:0];
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = obj;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate requesting location for %@.", buf, 0xCu);
    }

    accessoryLocationStore2 = [v21 accessoryLocationStore];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1001C165C;
    v58[3] = &unk_1002D0DF8;
    v59 = v21;
    reasonCopy = reason;
    v60 = v14;
    v61 = v22;
    v62 = identifierCopy;
    v25 = v22;
    [accessoryLocationStore2 locationForAccessory:obj locator:locatorCopy completion:v58];

    v26 = v68;
LABEL_23:
  }
}

- (void)_sendTrackedLocations
{
  provider = [(FMDCommandHandler *)self provider];
  locationTracker = [provider locationTracker];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C1BE0;
  v5[3] = &unk_1002D0E20;
  v6 = provider;
  v4 = provider;
  [locationTracker actOnTrackedLocationsUsingBlock:v5];
}

- (void)_showAlertAfterUnlock:(id)unlock
{
  unlockCopy = unlock;
  provider = [(FMDCommandHandler *)self provider];
  [provider setPendingLocateAlert:unlockCopy];
}

- (id)createLocatorWithParams:(id)params
{
  paramsCopy = params;
  provider = [(FMDCommandHandler *)self provider];
  v6 = [FMDLocator alloc];
  newLocationManager = [provider newLocationManager];
  v8 = [(FMDLocator *)v6 initWithLocationManager:newLocationManager];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDCommandHandler *)self fm_logID];
    serviceName = [provider serviceName];
    v18 = 138412546;
    v19 = fm_logID;
    v20 = 2112;
    v21 = serviceName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created %@ for service %@", &v18, 0x16u);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [paramsCopy objectForKeyedSubscript:@"locationTimeout"];
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    [(FMDLocator *)v8 setDuration:?];
  }

  v15 = [paramsCopy objectForKeyedSubscript:@"desiredAccuracy"];

  if (v15)
  {
    [v15 doubleValue];
    [(FMDLocator *)v8 setDesiredAccuracy:?];
  }

  v16 = v8;
  objc_autoreleasePoolPop(v12);

  return v16;
}

- (id)locationPublisherWithParams:(id)params
{
  paramsCopy = params;
  v4 = objc_alloc_init(FMDConservativeLocatorPublisher);
  v5 = [[FMCompareLocatorPublisher alloc] initWithPrimaryPublisher:v4 compareToPublishers:&__NSArray0__struct];
  v6 = [paramsCopy objectForKeyedSubscript:@"startThreshold"];
  if (v6)
  {
    [(FMCompareLocatorPublisher *)v5 setStartThreshold:v6];
  }

  v7 = [paramsCopy objectForKeyedSubscript:@"endThreshold"];

  if (v7)
  {
    [(FMCompareLocatorPublisher *)v5 setEndThreshold:v7];
  }

  v8 = [paramsCopy objectForKeyedSubscript:@"decayFactor"];

  if (v8)
  {
    [(FMCompareLocatorPublisher *)v5 setDecayFactor:v8];
  }

  v9 = [paramsCopy objectForKeyedSubscript:@"locationValidityDuration"];

  if (v9)
  {
    [(FMCompareLocatorPublisher *)v5 setCachedLocationValidityTimeInterval:v9];
  }

  return v5;
}

- (void)_notifyAboutLocatingState
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = kFMIPLocatableStateReportedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

@end