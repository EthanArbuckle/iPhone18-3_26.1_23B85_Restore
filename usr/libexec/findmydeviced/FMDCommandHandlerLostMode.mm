@interface FMDCommandHandlerLostMode
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerLostMode

- (void)handleCommand
{
  v85 = qword_100312AF8;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"ownerNbr"];

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams2 objectForKeyedSubscript:@"ftCapable"];
  bOOLValue = [v6 BOOLValue];

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v9 = [commandParams3 objectForKeyedSubscript:@"text"];

  commandParams4 = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams4 objectForKeyedSubscript:@"trackingStatus"];
  intValue = [v11 intValue];

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v14 = [commandParams5 objectForKeyedSubscript:@"emailUpdates"];
  bOOLValue2 = [v14 BOOLValue];

  commandParams6 = [(FMDCommandHandler *)self commandParams];
  v17 = [commandParams6 objectForKeyedSubscript:@"lostModeEnabled"];
  bOOLValue3 = [v17 BOOLValue];

  provider = [(FMDCommandHandler *)self provider];
  if (bOOLValue3)
  {
    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v21 = [commandParams7 objectForKeyedSubscript:@"passcode"];

    if (v21)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1002296E0(v21, v22);
      }
    }

    if ([provider setPasscodeLock:v21 statusCode:&v85])
    {
      v81 = intValue;
      v83 = bOOLValue;
      v23 = +[NSMutableDictionary dictionary];
      commandParams8 = [(FMDCommandHandler *)self commandParams];
      v25 = [commandParams8 objectForKeyedSubscript:@"loc.timeout"];
      [v23 fm_safelyMapKey:@"timeout" toObject:v25];

      commandParams9 = [(FMDCommandHandler *)self commandParams];
      v27 = [commandParams9 objectForKeyedSubscript:@"loc.startThreshold"];
      [v23 fm_safelyMapKey:@"startThreshold" toObject:v27];

      commandParams10 = [(FMDCommandHandler *)self commandParams];
      v29 = [commandParams10 objectForKeyedSubscript:@"loc.endThreshold"];
      [v23 fm_safelyMapKey:@"endThreshold" toObject:v29];

      commandParams11 = [(FMDCommandHandler *)self commandParams];
      v31 = [commandParams11 objectForKeyedSubscript:@"loc.decayFactor"];
      [v23 fm_safelyMapKey:@"decayFactor" toObject:v31];

      commandParams12 = [(FMDCommandHandler *)self commandParams];
      v33 = [commandParams12 objectForKeyedSubscript:@"loc.desiredAccuracy"];
      [v23 fm_safelyMapKey:@"desiredAccuracy" toObject:v33];

      commandParams13 = [(FMDCommandHandler *)self commandParams];
      v35 = [commandParams13 objectForKeyedSubscript:@"loc.validityDuration"];
      [v23 fm_safelyMapKey:@"validityDuration" toObject:v35];

      commandParams14 = [(FMDCommandHandler *)self commandParams];
      v37 = [commandParams14 objectForKeyedSubscript:@"track.minSLCThresholdInMeters"];

      v80 = bOOLValue2;
      v82 = v37;
      if (v37)
      {
        [v37 doubleValue];
        v39 = v38;
      }

      else
      {
        v39 = 400.0;
      }

      commandParams15 = [(FMDCommandHandler *)self commandParams];
      v43 = [commandParams15 objectForKeyedSubscript:@"track.maxTrackedLocationsCount"];
      intValue2 = [v43 intValue];

      commandParams16 = [(FMDCommandHandler *)self commandParams];
      v45 = [commandParams16 objectForKeyedSubscript:@"track.locCacheDurationInSecs"];
      [v45 doubleValue];
      v47 = v46;

      commandParams17 = [(FMDCommandHandler *)self commandParams];
      v49 = [commandParams17 objectForKeyedSubscript:@"track.maxCallbackTimeInSecs"];
      [v49 doubleValue];
      v51 = v50;

      commandParams18 = [(FMDCommandHandler *)self commandParams];
      v53 = [commandParams18 objectForKeyedSubscript:@"track.minDistanceThresholdInMeters"];
      [v53 doubleValue];
      v55 = v54;

      commandParams19 = [(FMDCommandHandler *)self commandParams];
      v57 = [commandParams19 objectForKeyedSubscript:@"track.minTimeBetweenLocationsInSecs"];
      [v57 doubleValue];
      v59 = v58;

      commandParams20 = [(FMDCommandHandler *)self commandParams];
      v61 = [commandParams20 objectForKeyedSubscript:@"track.minCallbackTimeInSecs"];
      [v61 doubleValue];
      v63 = v62;

      commandParams21 = [(FMDCommandHandler *)self commandParams];
      v65 = [commandParams21 objectForKeyedSubscript:@"enableLocationServices"];
      bOOLValue4 = [v65 BOOLValue];

      v67 = +[FMDLostModeManager sharedInstance];
      lostModeEnabled = [v67 lostModeEnabled];

      v69 = 0;
      if (lostModeEnabled)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        if (bOOLValue4)
        {
          v70 = +[CLLocationManager locationServicesEnabled];
          if ((v70 & 1) == 0)
          {
            v71 = sub_100002880();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Location services is off. Reporting to the server that we will turn it on", buf, 2u);
            }
          }

          v41 = v70 ^ 1;
          if (([CLLocationManager isStatusBarIconEnabledForLocationEntityClass:4]& 1) != 0)
          {
            v69 = 0;
          }

          else
          {
            v72 = sub_100002880();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Turning on status bar icon since its off & the lost command asks us to turn on location services", buf, 2u);
            }

            v69 = 1;
            [CLLocationManager setStatusBarIconEnabled:1 forLocationEntityClass:4];
          }
        }
      }

      v73 = +[FMDLostModeManager sharedInstance];
      [v73 enableLostModeWithMessage:v9 ownerNumber:v4 facetimeCapable:v83 enableLocationServices:bOOLValue4 turnOffStatusBarIconAfterLostMode:v69];

      locationTracker = [provider locationTracker];

      if (locationTracker)
      {
        locationTracker2 = [provider locationTracker];
        [locationTracker2 updateLocationTrackingInfoWithTrackingStatus:v81 minSLCAccuracyThreshold:v23 locateParams:v80 trackNotifyEnabled:intValue2 maxLocations:v39 keepAlive:v47 periodicCheckInterval:v51 minDistanceBetweenLocations:v55 minTimeBetweenLocations:v59 minTimeBetweenServerCalls:v63];
      }
    }

    else
    {
      v23 = sub_100002880();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Lock failed. Ignoring the lost mode command.", buf, 2u);
      }

      v41 = 0;
    }
  }

  else
  {
    v40 = sub_100002880();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Lost mode cannot be disabled from the server. There seems to be some bug in the server. Not honouring this lost mode command", buf, 2u);
    }

    v41 = 0;
    v85 = qword_100312AE8;
  }

  [provider registerDeviceWithCause:@"LostModeCommand" force:0];
  v76 = +[NSMutableDictionary dictionary];
  v77 = v76;
  if (v41)
  {
    [v76 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesStateChanged"];
  }

  v78 = [NSNumber numberWithInteger:v85];
  [v77 setObject:v78 forKeyedSubscript:@"status"];

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v77];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v6 intValue];

  v8 = [ackDataForCommand objectForKeyedSubscript:@"locationServicesStateChanged"];
  bOOLValue = [v8 BOOLValue];

  commandParams = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v11)
  {
    v13 = intValue;
    v14 = [NSURL URLWithString:v11];
    v15 = [FMDRequestAckLost alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v17 = [(FMDRequestAckLost *)v15 initWithProvider:provider lostCommand:commandParams2 cmdStatusCode:v13 locationServicesStateChanged:bOOLValue ackURL:v14];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100167044;
    v19[3] = &unk_1002CD1D0;
    v20 = completionCopy;
    [(FMDRequest *)v17 setCompletionHandler:v19];
    [provider enqueueRequest:v17];
  }

  else
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not acking the lost command because there is no ack URL", v18, 2u);
    }
  }
}

@end