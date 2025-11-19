@interface FMDCommandHandlerLostMode
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation FMDCommandHandlerLostMode

- (void)handleCommand
{
  v85 = qword_100312AF8;
  v3 = [(FMDCommandHandler *)self commandParams];
  v4 = [v3 objectForKeyedSubscript:@"ownerNbr"];

  v5 = [(FMDCommandHandler *)self commandParams];
  v6 = [v5 objectForKeyedSubscript:@"ftCapable"];
  v7 = [v6 BOOLValue];

  v8 = [(FMDCommandHandler *)self commandParams];
  v9 = [v8 objectForKeyedSubscript:@"text"];

  v10 = [(FMDCommandHandler *)self commandParams];
  v11 = [v10 objectForKeyedSubscript:@"trackingStatus"];
  v12 = [v11 intValue];

  v13 = [(FMDCommandHandler *)self commandParams];
  v14 = [v13 objectForKeyedSubscript:@"emailUpdates"];
  v15 = [v14 BOOLValue];

  v16 = [(FMDCommandHandler *)self commandParams];
  v17 = [v16 objectForKeyedSubscript:@"lostModeEnabled"];
  v18 = [v17 BOOLValue];

  v19 = [(FMDCommandHandler *)self provider];
  if (v18)
  {
    v20 = [(FMDCommandHandler *)self commandParams];
    v21 = [v20 objectForKeyedSubscript:@"passcode"];

    if (v21)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1002296E0(v21, v22);
      }
    }

    if ([v19 setPasscodeLock:v21 statusCode:&v85])
    {
      v81 = v12;
      v83 = v7;
      v23 = +[NSMutableDictionary dictionary];
      v24 = [(FMDCommandHandler *)self commandParams];
      v25 = [v24 objectForKeyedSubscript:@"loc.timeout"];
      [v23 fm_safelyMapKey:@"timeout" toObject:v25];

      v26 = [(FMDCommandHandler *)self commandParams];
      v27 = [v26 objectForKeyedSubscript:@"loc.startThreshold"];
      [v23 fm_safelyMapKey:@"startThreshold" toObject:v27];

      v28 = [(FMDCommandHandler *)self commandParams];
      v29 = [v28 objectForKeyedSubscript:@"loc.endThreshold"];
      [v23 fm_safelyMapKey:@"endThreshold" toObject:v29];

      v30 = [(FMDCommandHandler *)self commandParams];
      v31 = [v30 objectForKeyedSubscript:@"loc.decayFactor"];
      [v23 fm_safelyMapKey:@"decayFactor" toObject:v31];

      v32 = [(FMDCommandHandler *)self commandParams];
      v33 = [v32 objectForKeyedSubscript:@"loc.desiredAccuracy"];
      [v23 fm_safelyMapKey:@"desiredAccuracy" toObject:v33];

      v34 = [(FMDCommandHandler *)self commandParams];
      v35 = [v34 objectForKeyedSubscript:@"loc.validityDuration"];
      [v23 fm_safelyMapKey:@"validityDuration" toObject:v35];

      v36 = [(FMDCommandHandler *)self commandParams];
      v37 = [v36 objectForKeyedSubscript:@"track.minSLCThresholdInMeters"];

      v80 = v15;
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

      v42 = [(FMDCommandHandler *)self commandParams];
      v43 = [v42 objectForKeyedSubscript:@"track.maxTrackedLocationsCount"];
      v79 = [v43 intValue];

      v44 = [(FMDCommandHandler *)self commandParams];
      v45 = [v44 objectForKeyedSubscript:@"track.locCacheDurationInSecs"];
      [v45 doubleValue];
      v47 = v46;

      v48 = [(FMDCommandHandler *)self commandParams];
      v49 = [v48 objectForKeyedSubscript:@"track.maxCallbackTimeInSecs"];
      [v49 doubleValue];
      v51 = v50;

      v52 = [(FMDCommandHandler *)self commandParams];
      v53 = [v52 objectForKeyedSubscript:@"track.minDistanceThresholdInMeters"];
      [v53 doubleValue];
      v55 = v54;

      v56 = [(FMDCommandHandler *)self commandParams];
      v57 = [v56 objectForKeyedSubscript:@"track.minTimeBetweenLocationsInSecs"];
      [v57 doubleValue];
      v59 = v58;

      v60 = [(FMDCommandHandler *)self commandParams];
      v61 = [v60 objectForKeyedSubscript:@"track.minCallbackTimeInSecs"];
      [v61 doubleValue];
      v63 = v62;

      v64 = [(FMDCommandHandler *)self commandParams];
      v65 = [v64 objectForKeyedSubscript:@"enableLocationServices"];
      v66 = [v65 BOOLValue];

      v67 = +[FMDLostModeManager sharedInstance];
      v68 = [v67 lostModeEnabled];

      v69 = 0;
      if (v68)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        if (v66)
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
      [v73 enableLostModeWithMessage:v9 ownerNumber:v4 facetimeCapable:v83 enableLocationServices:v66 turnOffStatusBarIconAfterLostMode:v69];

      v74 = [v19 locationTracker];

      if (v74)
      {
        v75 = [v19 locationTracker];
        [v75 updateLocationTrackingInfoWithTrackingStatus:v81 minSLCAccuracyThreshold:v23 locateParams:v80 trackNotifyEnabled:v79 maxLocations:v39 keepAlive:v47 periodicCheckInterval:v51 minDistanceBetweenLocations:v55 minTimeBetweenLocations:v59 minTimeBetweenServerCalls:v63];
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

  [v19 registerDeviceWithCause:@"LostModeCommand" force:0];
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

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [v5 objectForKeyedSubscript:@"status"];
  v7 = [v6 intValue];

  v8 = [v5 objectForKeyedSubscript:@"locationServicesStateChanged"];
  v9 = [v8 BOOLValue];

  v10 = [(FMDCommandHandler *)self commandParams];
  v11 = [v10 objectForKeyedSubscript:@"ackURL"];

  v12 = [(FMDCommandHandler *)self provider];
  if (v11)
  {
    v13 = v7;
    v14 = [NSURL URLWithString:v11];
    v15 = [FMDRequestAckLost alloc];
    v16 = [(FMDCommandHandler *)self commandParams];
    v17 = [(FMDRequestAckLost *)v15 initWithProvider:v12 lostCommand:v16 cmdStatusCode:v13 locationServicesStateChanged:v9 ackURL:v14];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100167044;
    v19[3] = &unk_1002CD1D0;
    v20 = v4;
    [(FMDRequest *)v17 setCompletionHandler:v19];
    [v12 enqueueRequest:v17];
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