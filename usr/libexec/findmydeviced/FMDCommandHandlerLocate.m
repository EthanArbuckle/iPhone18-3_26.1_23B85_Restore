@interface FMDCommandHandlerLocate
- (id)createLocatorWithParams:(id)a3;
- (id)locationPublisherWithParams:(id)a3;
- (void)_notifyAboutLocatingState;
- (void)_sendAccessoryCurrentLocationsForCmd:(id)a3 reason:(int64_t)a4 locator:(id)a5 accessoryIdentifier:(id)a6;
- (void)_sendTrackedLocations;
- (void)_showAlertAfterUnlock:(id)a3;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation FMDCommandHandlerLocate

- (void)handleCommand
{
  v3 = qword_100312B58;
  v102 = [(FMDCommandHandler *)self provider];
  v4 = +[FMDSystemConfig sharedInstance];
  v5 = [v4 isLocationServicesCapable];

  v6 = +[FMDSystemConfig sharedInstance];
  v7 = [v6 canHandleLocates];

  v8 = qword_100312B68;
  v9 = @"Ignored Request - Location Services Not Enabled";
  if (v7)
  {
    v9 = 0;
    v8 = v3;
  }

  v10 = v5 == 0;
  if (v5)
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
    v12 = [(FMDCommandHandler *)self commandParams];
    val = [(FMDCommandHandlerLocate *)self createLocatorWithParams:v12];

    v13 = [v102 standardLocator];
    if (v13)
    {
      v14 = [v102 standardLocator];
      v15 = [v14 locatorRunning];

      if (v15)
      {
        v16 = [v102 standardLocator];
        [v16 desiredAccuracy];
        v18 = v17;
        [val desiredAccuracy];
        v20 = v18 > v19;

        oslog = sub_100002880();
        v21 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          if (v21)
          {
            v63 = [v102 standardLocator];
            [v63 desiredAccuracy];
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
          v22 = [v102 standardLocator];
          [v22 desiredAccuracy];
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

    v26 = [v102 standardLocator];

    if (v26)
    {
      v27 = [v102 standardLocator];
      [v27 stopLocator];

      [v102 setStandardLocator:0];
    }

    if (+[FMDPreferencesMgr simulateLocateNotification])
    {
      v28 = sub_100002880();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Simulating locate notification...", buf, 2u);
      }

      v29 = [(FMDCommandHandler *)self commandParams];
      v30 = [v29 mutableCopy];

      [v30 setObject:@"Find My iPhone" forKeyedSubscript:@"title"];
      [v30 setObject:@"This device's location was accessed using Find My iPhone" forKeyedSubscript:@"text"];
      [v30 setObject:@"OK" forKeyedSubscript:@"okButtonTitle"];
      v31 = [v30 copy];
      [(FMDCommandHandler *)self setCommandParams:v31];
    }

    v32 = [(FMDCommandHandler *)self commandParams];
    v94 = [v32 objectForKeyedSubscript:@"text"];

    if (v94 && +[FMDPreferencesMgr locateNotificationsEnabled])
    {
      osloga = objc_alloc_init(FMAlert);
      [osloga setCategory:3];
      [osloga setMsgText:v94];
      v33 = [(FMDCommandHandler *)self commandParams];
      v34 = [v33 objectForKeyedSubscript:@"title"];
      [osloga setMsgTitle:v34];

      [osloga setShowMsgInLockScreen:1];
      [osloga setDismissMsgOnUnlock:0];
      [osloga setDismissMsgOnLock:0];
      v35 = [(FMDCommandHandler *)self commandParams];
      v36 = [v35 objectForKeyedSubscript:@"okButtonTitle"];
      [osloga setDefaultButtonTitle:v36];
    }

    else
    {
      osloga = 0;
    }

    v127 = @"id";
    v37 = [(FMDCommandHandler *)self commandID];
    v128 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];

    v39 = [(FMDCommandHandler *)self commandParams];
    v40 = [v39 objectForKey:@"udid"];
    v96 = [v40 fm_nullToNil];

    if (v96)
    {
      v41 = [[FMDAccessoryIdentifier alloc] initWithString:v96];
      [(FMDCommandHandlerLocate *)self setAccessoryIdentifier:v41];
    }

    v42 = sub_100002880();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate Will send accessory locations.", buf, 2u);
    }

    v43 = [(FMDCommandHandler *)self commandParams];
    v97 = [(FMDCommandHandlerLocate *)self createLocatorWithParams:v43];

    v44 = [(FMDCommandHandler *)self commandParams];
    v93 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:v44];

    [v97 setLocatorPublisher:v93];
    v45 = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    [(FMDCommandHandlerLocate *)self _sendAccessoryCurrentLocationsForCmd:v38 reason:1 locator:v97 accessoryIdentifier:v45];

    v46 = [(FMDCommandHandler *)self commandParams];
    v95 = [v46 objectForKey:@"scanDurationInSeconds"];

    v47 = [v102 accessoryRegistry];
    v48 = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    v49 = [v47 accessoryForIdentifier:v48];

    v50 = [v49 accessoryIdentifier];
    v91 = [v50 stringValue];

    [v95 doubleValue];
    if (v51 <= 0.0)
    {
      v57 = 0;
      v58 = 0;
      v90 = 0;
      v59 = 0;
LABEL_46:
      v62 = 0;
LABEL_47:
      v67 = v102;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v126 = 0;
      v68 = [(FMDCommandHandler *)self commandParams];
      v69 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:v68];

      objc_initWeak(&location, val);
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1001BF95C;
      v112[3] = &unk_1002D0D68;
      v89 = self;
      v112[4] = v89;
      v70 = v59;
      v113 = v70;
      v88 = v38;
      v114 = v88;
      v71 = v49;
      v115 = v71;
      v72 = v57;
      v116 = v72;
      v73 = v91;
      v117 = v73;
      v74 = v58;
      v118 = v74;
      v75 = v62;
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

      v61 = [v102 bluetoothManager];
      v62 = [v61 newDiscovery];

      [v95 doubleValue];
      [v62 startDiscoveryForDuration:?];
      if (v62)
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
      v54 = [v52 accessoryType];
      v55 = [v53 configForAccessoryType:v54];

      v90 = [v55 flavorForFeature:@"availability"];
      v56 = [v102 accessoryRegistry];
      v57 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v90 withDelegate:v56];

      v58 = [v55 infoForFeature:@"availability"];
      [v95 doubleValue];
      [v57 startDiscoveryForAccessory:v91 duration:v58 info:&stru_1002D0D18 withCompletion:?];

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
  v84 = [(FMDCommandHandler *)self commandParams];
  v85 = [v84 objectForKeyedSubscript:@"includeTrackingInfo"];

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

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [v5 objectForKeyedSubscript:@"status"];
  v7 = [v6 intValue];

  v8 = [v5 objectForKeyedSubscript:@"message"];
  v9 = [(FMDCommandHandler *)self commandParams];
  v10 = [v9 objectForKeyedSubscript:@"ackURL"];

  v11 = [(FMDCommandHandler *)self provider];
  if (v10)
  {
    v25 = v7;
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
    v13 = v11;
    v30 = v13;
    v14 = [(FMDActingRequestDecorator *)v12 initWithDeviceContextGenerator:v31 deviceInfoGenerator:v29 serverContextGenerator:0 requestHeaderGenerator:0];
    v15 = v8;
    v16 = [FMDRequestAckLocate alloc];
    [v13 account];
    v17 = v10;
    v18 = v5;
    v20 = v19 = v11;
    v21 = [(FMDCommandHandler *)self commandParams];
    v22 = [(FMDRequestAckLocate *)v16 initWithAccount:v20 locateCommand:v21 ackURL:v24 cmdStatusCode:v25 cmdStatusMessage:v15];

    v11 = v19;
    v5 = v18;
    v10 = v17;
    [(FMDRequest *)v22 setDecorator:v14];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001C05F0;
    v27[3] = &unk_1002CD1D0;
    v28 = v4;
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

- (void)_sendAccessoryCurrentLocationsForCmd:(id)a3 reason:(int64_t)a4 locator:(id)a5 accessoryIdentifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(FMDCommandHandler *)self provider];
  v14 = [v10 objectForKeyedSubscript:@"locationValidityDuration"];
  v15 = [v10 objectForKeyedSubscript:@"id"];
  v16 = v13;
  v17 = [v13 accessoryRegistry];
  v18 = v17;
  if (!v12)
  {
    v46 = v14;
    v47 = v11;
    v48 = v10;
    v27 = [v17 allAccessories];

    v26 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v27;
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

          v34 = [v16 accessoryLocationStore];
          v35 = [v34 historicalLocationForAccessory:v32];

          if (v35)
          {
            v36 = +[NSMutableDictionary dictionary];
            v37 = [v35 dictionaryValue];
            [v36 addEntriesFromDictionary:v37];

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
      v42 = [v39 account];
      v43 = [(FMDRequestAccessoryLocations *)v41 initWithAccount:v42 accessoryLocations:v26];

      [(FMDRequest *)v43 setDecorator:v40];
      ct_green_tea_logger_create_static();
      v44 = getCTGreenTeaOsLogHandle();
      v45 = v44;
      v12 = 0;
      v11 = v47;
      v14 = v46;
      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
      }

      [v39 enqueueRequest:v43];
      v10 = v48;
    }

    else
    {
      v11 = v47;
      v10 = v48;
      v14 = v46;
      v12 = 0;
    }

    goto LABEL_23;
  }

  v19 = [v17 accessoryForIdentifier:v12];

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
    v66 = self;
    v22 = [(FMDActingRequestDecorator *)v20 initWithDeviceContextGenerator:v67 deviceInfoGenerator:v64 serverContextGenerator:0 requestHeaderGenerator:0];
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = obj;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate requesting location for %@.", buf, 0xCu);
    }

    v24 = [v21 accessoryLocationStore];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1001C165C;
    v58[3] = &unk_1002D0DF8;
    v59 = v21;
    v63 = a4;
    v60 = v14;
    v61 = v22;
    v62 = v12;
    v25 = v22;
    [v24 locationForAccessory:obj locator:v11 completion:v58];

    v26 = v68;
LABEL_23:
  }
}

- (void)_sendTrackedLocations
{
  v2 = [(FMDCommandHandler *)self provider];
  v3 = [v2 locationTracker];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C1BE0;
  v5[3] = &unk_1002D0E20;
  v6 = v2;
  v4 = v2;
  [v3 actOnTrackedLocationsUsingBlock:v5];
}

- (void)_showAlertAfterUnlock:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self provider];
  [v5 setPendingLocateAlert:v4];
}

- (id)createLocatorWithParams:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self provider];
  v6 = [FMDLocator alloc];
  v7 = [v5 newLocationManager];
  v8 = [(FMDLocator *)v6 initWithLocationManager:v7];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FMDCommandHandler *)self fm_logID];
    v11 = [v5 serviceName];
    v18 = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created %@ for service %@", &v18, 0x16u);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [v4 objectForKeyedSubscript:@"locationTimeout"];
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    [(FMDLocator *)v8 setDuration:?];
  }

  v15 = [v4 objectForKeyedSubscript:@"desiredAccuracy"];

  if (v15)
  {
    [v15 doubleValue];
    [(FMDLocator *)v8 setDesiredAccuracy:?];
  }

  v16 = v8;
  objc_autoreleasePoolPop(v12);

  return v16;
}

- (id)locationPublisherWithParams:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FMDConservativeLocatorPublisher);
  v5 = [[FMCompareLocatorPublisher alloc] initWithPrimaryPublisher:v4 compareToPublishers:&__NSArray0__struct];
  v6 = [v3 objectForKeyedSubscript:@"startThreshold"];
  if (v6)
  {
    [(FMCompareLocatorPublisher *)v5 setStartThreshold:v6];
  }

  v7 = [v3 objectForKeyedSubscript:@"endThreshold"];

  if (v7)
  {
    [(FMCompareLocatorPublisher *)v5 setEndThreshold:v7];
  }

  v8 = [v3 objectForKeyedSubscript:@"decayFactor"];

  if (v8)
  {
    [(FMCompareLocatorPublisher *)v5 setDecayFactor:v8];
  }

  v9 = [v3 objectForKeyedSubscript:@"locationValidityDuration"];

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