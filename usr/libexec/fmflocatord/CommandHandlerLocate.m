@interface CommandHandlerLocate
- (id)_checkForLocateParamOverrides:(id)a3;
- (id)createLocatorWithParams:(id)a3;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation CommandHandlerLocate

- (void)handleCommand
{
  v3 = [(CommandHandler *)self provider];
  v4 = [v3 locServicesCapable];
  v5 = [v3 isProviderEnabledForLocations];
  if (v4)
  {
    v6 = @"Ignored Request - Location Services Not Enabled";
  }

  else
  {
    v6 = @"Ignored Request - Device Not Capable of Location Services";
  }

  v7 = 405;
  if (v4 && v5)
  {
    v8 = [(CommandHandler *)self commandParams];
    v9 = [(CommandHandlerLocate *)self createLocatorWithParams:v8];

    v10 = [v3 standardLocator];
    if (v10)
    {
      v11 = v10;
      v12 = [v3 standardLocator];
      v13 = [v12 locatorRunning];

      if (v13)
      {
        v14 = [v3 standardLocator];
        [v14 desiredAccuracy];
        v16 = v15;
        [v9 desiredAccuracy];
        v18 = v17;

        v19 = sub_100002830();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (v16 <= v18)
        {
          if (v20)
          {
            v33 = [v3 standardLocator];
            [v33 desiredAccuracy];
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
          v21 = [v3 standardLocator];
          [v21 desiredAccuracy];
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

    v25 = [v3 standardLocator];

    if (v25)
    {
      v26 = [v3 standardLocator];
      [v26 stopLocator];

      [v3 setStandardLocator:0];
    }

    v42 = @"id";
    v27 = [(CommandHandler *)self commandID];
    v43 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000143DC;
    v39[3] = &unk_10005D770;
    v29 = v3;
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

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v10 = [(CommandHandler *)self ackDataForCommand];
  v5 = [v10 objectForKeyedSubscript:@"status"];
  v6 = [v5 intValue];

  v7 = [v10 objectForKeyedSubscript:@"message"];
  v8 = [(CommandHandler *)self provider];
  v9 = [(CommandHandler *)self commandParams];
  [v8 ackLocateCommand:v9 withStatusCode:v6 andStatusMessage:v7 withCompletion:v4];
}

- (id)_checkForLocateParamOverrides:(id)a3
{
  v3 = a3;
  v4 = [@"/var/mobile/Library/Application Support/FMFLocator/locateOverrides.json" stringByExpandingTildeInPath];
  v5 = v3;
  if (v4)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v4];

    v5 = v3;
    if (v7)
    {
      v8 = sub_100002830();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000372BC(v8);
      }

      v9 = +[NSFileManager defaultManager];
      v10 = [v9 contentsAtPath:v4];

      v22 = 0;
      v11 = [NSJSONSerialization JSONObjectWithData:v10 options:1 error:&v22];
      v12 = v22;
      v5 = [v3 mutableCopy];
      v13 = [v11 keyEnumerator];
      v14 = [v13 nextObject];
      if (v14)
      {
        v16 = v14;
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
          v19 = [v13 nextObject];

          v16 = v19;
        }

        while (v19);
      }
    }
  }

  return v5;
}

- (id)createLocatorWithParams:(id)a3
{
  v4 = a3;
  v5 = [(CommandHandler *)self provider];
  v6 = [Locator alloc];
  v7 = [v5 newLocationManager];
  v8 = [(Locator *)v6 initWithLocationManager:v7];

  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(CommandHandlerLocate *)self fm_logID];
    v11 = [v5 serviceName];
    v23 = 138412546;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Created %@ for service %@", &v23, 0x16u);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(CommandHandlerLocate *)self _checkForLocateParamOverrides:v4];
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