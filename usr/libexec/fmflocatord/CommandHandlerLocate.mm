@interface CommandHandlerLocate
- (id)_checkForLocateParamOverrides:(id)overrides;
- (id)createLocatorWithParams:(id)params;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation CommandHandlerLocate

- (void)handleCommand
{
  provider = [(CommandHandler *)self provider];
  locServicesCapable = [provider locServicesCapable];
  isProviderEnabledForLocations = [provider isProviderEnabledForLocations];
  if (locServicesCapable)
  {
    v6 = @"Ignored Request - Location Services Not Enabled";
  }

  else
  {
    v6 = @"Ignored Request - Device Not Capable of Location Services";
  }

  v7 = 405;
  if (locServicesCapable && isProviderEnabledForLocations)
  {
    commandParams = [(CommandHandler *)self commandParams];
    v9 = [(CommandHandlerLocate *)self createLocatorWithParams:commandParams];

    standardLocator = [provider standardLocator];
    if (standardLocator)
    {
      v11 = standardLocator;
      standardLocator2 = [provider standardLocator];
      locatorRunning = [standardLocator2 locatorRunning];

      if (locatorRunning)
      {
        standardLocator3 = [provider standardLocator];
        [standardLocator3 desiredAccuracy];
        v16 = v15;
        [v9 desiredAccuracy];
        v18 = v17;

        v19 = sub_100002830();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (v16 <= v18)
        {
          if (v20)
          {
            standardLocator4 = [provider standardLocator];
            [standardLocator4 desiredAccuracy];
            v35 = v34;
            [v9 desiredAccuracy];
            *buf = 134218240;
            v45 = v35;
            v46 = 2048;
            v47 = v36;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Current locate command is already looking for the same/better accuracy. Ignoring new locate - current=%fm,new=%fm", buf, 0x16u);
          }

          goto LABEL_15;
        }

        if (v20)
        {
          standardLocator5 = [provider standardLocator];
          [standardLocator5 desiredAccuracy];
          v23 = v22;
          [v9 desiredAccuracy];
          *buf = 134218240;
          v45 = v23;
          v46 = 2048;
          v47 = v24;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "New locate command asks for a better accuracy than the current locate. Stopping current locate - current=%fm,new=%fm", buf, 0x16u);
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

    v42 = @"id";
    commandID = [(CommandHandler *)self commandID];
    v43 = commandID;
    v28 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000143DC;
    v39[3] = &unk_10005D770;
    v29 = provider;
    v40 = v29;
    v41 = v28;
    v19 = v28;
    [v9 setReceivedLocationBlock:v39];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000143FC;
    v37[3] = &unk_10005D2B0;
    v30 = v29;
    v38 = v30;
    [v9 setStoppedLocatorBlock:v37];
    [v30 setStandardLocator:v9];
    [v9 startLocator];

LABEL_15:
    v6 = @"OK";
    v7 = 200;
  }

  v31 = +[NSMutableDictionary dictionary];
  v32 = [NSNumber numberWithInt:v7];
  [v31 setObject:v32 forKeyedSubscript:@"status"];

  [v31 setObject:v6 forKeyedSubscript:@"message"];
  [(CommandHandler *)self didHandleCommandWithAckData:v31];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(CommandHandler *)self ackDataForCommand];
  v5 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v5 intValue];

  v7 = [ackDataForCommand objectForKeyedSubscript:@"message"];
  provider = [(CommandHandler *)self provider];
  commandParams = [(CommandHandler *)self commandParams];
  [provider ackLocateCommand:commandParams withStatusCode:intValue andStatusMessage:v7 withCompletion:completionCopy];
}

- (id)_checkForLocateParamOverrides:(id)overrides
{
  overridesCopy = overrides;
  stringByExpandingTildeInPath = [@"/var/mobile/Library/Application Support/FMFLocator/locateOverrides.json" stringByExpandingTildeInPath];
  v5 = overridesCopy;
  if (stringByExpandingTildeInPath)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:stringByExpandingTildeInPath];

    v5 = overridesCopy;
    if (v7)
    {
      v8 = sub_100002830();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000372BC(v8);
      }

      v9 = +[NSFileManager defaultManager];
      v10 = [v9 contentsAtPath:stringByExpandingTildeInPath];

      v22 = 0;
      v11 = [NSJSONSerialization JSONObjectWithData:v10 options:1 error:&v22];
      v12 = v22;
      v5 = [overridesCopy mutableCopy];
      keyEnumerator = [v11 keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      if (nextObject)
      {
        v16 = nextObject;
        *&v15 = 138412546;
        v21 = v15;
        do
        {
          v17 = [v11 objectForKeyedSubscript:{v16, v21}];
          v18 = sub_100002830();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v24 = v16;
            v25 = 2112;
            v26 = v17;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Locate Param Overridden: %@=%@", buf, 0x16u);
          }

          [v5 setValue:v17 forKey:v16];
          nextObject2 = [keyEnumerator nextObject];

          v16 = nextObject2;
        }

        while (nextObject2);
      }
    }
  }

  return v5;
}

- (id)createLocatorWithParams:(id)params
{
  paramsCopy = params;
  provider = [(CommandHandler *)self provider];
  v6 = [Locator alloc];
  newLocationManager = [provider newLocationManager];
  v8 = [(Locator *)v6 initWithLocationManager:newLocationManager];

  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(CommandHandlerLocate *)self fm_logID];
    serviceName = [provider serviceName];
    v23 = 138412546;
    v24 = fm_logID;
    v25 = 2112;
    v26 = serviceName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Created %@ for service %@", &v23, 0x16u);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(CommandHandlerLocate *)self _checkForLocateParamOverrides:paramsCopy];
  v14 = [v13 objectForKeyedSubscript:@"locationTimeout"];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    [(Locator *)v8 setDuration:?];
  }

  v16 = [v13 objectForKeyedSubscript:@"startThreshold"];

  if (v16)
  {
    [v16 doubleValue];
    [(Locator *)v8 setStartThreshold:?];
  }

  v17 = [v13 objectForKeyedSubscript:@"endThreshold"];

  if (v17)
  {
    [v17 doubleValue];
    [(Locator *)v8 setEndThreshold:?];
  }

  v18 = [v13 objectForKeyedSubscript:@"decayFactor"];

  if (v18)
  {
    [v18 doubleValue];
    [(Locator *)v8 setDecayFactor:?];
  }

  v19 = [v13 objectForKeyedSubscript:@"desiredAccuracy"];

  if (v19)
  {
    [v19 doubleValue];
    [(Locator *)v8 setDesiredAccuracy:?];
  }

  v20 = [v13 objectForKeyedSubscript:@"locationValidityDuration"];

  if (v20)
  {
    [v20 doubleValue];
    [(Locator *)v8 setCachedLocValidityDuration:?];
  }

  v21 = v8;
  objc_autoreleasePoolPop(v12);

  return v21;
}

@end