@interface FMDCommandHandlerTrack
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation FMDCommandHandlerTrack

- (void)handleCommand
{
  v3 = [(FMDCommandHandler *)self commandParams];
  v4 = [v3 objectForKeyedSubscript:@"trackingStatus"];
  v5 = [v4 intValue];

  v6 = [(FMDCommandHandler *)self commandParams];
  v7 = [v6 objectForKeyedSubscript:@"track.sendTrackedLocationsOnChange"];
  v8 = [v7 BOOLValue];

  v51 = +[NSMutableDictionary dictionary];
  v9 = [(FMDCommandHandler *)self commandParams];
  v10 = [v9 objectForKeyedSubscript:@"loc.timeout"];
  [v51 fm_safelyMapKey:@"timeout" toObject:v10];

  v11 = [(FMDCommandHandler *)self commandParams];
  v12 = [v11 objectForKeyedSubscript:@"loc.startThreshold"];
  [v51 fm_safelyMapKey:@"startThreshold" toObject:v12];

  v13 = [(FMDCommandHandler *)self commandParams];
  v14 = [v13 objectForKeyedSubscript:@"loc.endThreshold"];
  [v51 fm_safelyMapKey:@"endThreshold" toObject:v14];

  v15 = [(FMDCommandHandler *)self commandParams];
  v16 = [v15 objectForKeyedSubscript:@"loc.decayFactor"];
  [v51 fm_safelyMapKey:@"decayFactor" toObject:v16];

  v17 = [(FMDCommandHandler *)self commandParams];
  v18 = [v17 objectForKeyedSubscript:@"loc.desiredAccuracy"];
  [v51 fm_safelyMapKey:@"desiredAccuracy" toObject:v18];

  v19 = [(FMDCommandHandler *)self commandParams];
  v20 = [v19 objectForKeyedSubscript:@"loc.validityDuration"];
  [v51 fm_safelyMapKey:@"validityDuration" toObject:v20];

  v21 = [(FMDCommandHandler *)self commandParams];
  v22 = [v21 objectForKeyedSubscript:@"track.minSLCThresholdInMeters"];

  if (v22)
  {
    [v22 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 400.0;
  }

  v25 = [(FMDCommandHandler *)self commandParams];
  v26 = [v25 objectForKeyedSubscript:@"track.maxTrackedLocationsCount"];
  v27 = [v26 intValue];

  v28 = [(FMDCommandHandler *)self commandParams];
  v29 = [v28 objectForKeyedSubscript:@"track.locCacheDurationInSecs"];
  [v29 doubleValue];
  v31 = v30;

  v32 = [(FMDCommandHandler *)self commandParams];
  v33 = [v32 objectForKeyedSubscript:@"track.maxCallbackTimeInSecs"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [(FMDCommandHandler *)self commandParams];
  v37 = [v36 objectForKeyedSubscript:@"track.minDistanceThresholdInMeters"];
  [v37 doubleValue];
  v39 = v38;

  v40 = [(FMDCommandHandler *)self commandParams];
  v41 = [v40 objectForKeyedSubscript:@"track.minTimeBetweenLocationsInSecs"];
  [v41 doubleValue];
  v43 = v42;

  v44 = [(FMDCommandHandler *)self commandParams];
  v45 = [v44 objectForKeyedSubscript:@"track.minCallbackTimeInSecs"];
  [v45 doubleValue];
  v47 = v46;

  v48 = [(FMDCommandHandler *)self provider];
  v49 = [v48 locationTracker];

  if (v49)
  {
    v50 = [v48 locationTracker];
    [v50 updateLocationTrackingInfoWithTrackingStatus:v5 minSLCAccuracyThreshold:v51 locateParams:v8 trackNotifyEnabled:v27 maxLocations:v24 keepAlive:v31 periodicCheckInterval:v35 minDistanceBetweenLocations:v39 minTimeBetweenLocations:v43 minTimeBetweenServerCalls:v47];
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
}

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self commandParams];
  v6 = [v5 objectForKeyedSubscript:@"ackURL"];

  v7 = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [FMDRequestAckTrack alloc];
    v10 = [v7 account];
    v11 = [(FMDCommandHandler *)self commandParams];
    v12 = [(FMDRequestAckTrack *)v9 initWithAccount:v10 trackCommand:v11 ackURL:v8];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100129774;
    v14[3] = &unk_1002CD1D0;
    v15 = v4;
    [(FMDRequest *)v12 setCompletionHandler:v14];
    [v7 enqueueRequest:v12];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the track command because there is no ack URL", v13, 2u);
    }
  }
}

@end