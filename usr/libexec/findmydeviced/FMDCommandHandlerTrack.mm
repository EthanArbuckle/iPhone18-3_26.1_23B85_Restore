@interface FMDCommandHandlerTrack
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerTrack

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"trackingStatus"];
  intValue = [v4 intValue];

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v7 = [commandParams2 objectForKeyedSubscript:@"track.sendTrackedLocationsOnChange"];
  bOOLValue = [v7 BOOLValue];

  v51 = +[NSMutableDictionary dictionary];
  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams3 objectForKeyedSubscript:@"loc.timeout"];
  [v51 fm_safelyMapKey:@"timeout" toObject:v10];

  commandParams4 = [(FMDCommandHandler *)self commandParams];
  v12 = [commandParams4 objectForKeyedSubscript:@"loc.startThreshold"];
  [v51 fm_safelyMapKey:@"startThreshold" toObject:v12];

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v14 = [commandParams5 objectForKeyedSubscript:@"loc.endThreshold"];
  [v51 fm_safelyMapKey:@"endThreshold" toObject:v14];

  commandParams6 = [(FMDCommandHandler *)self commandParams];
  v16 = [commandParams6 objectForKeyedSubscript:@"loc.decayFactor"];
  [v51 fm_safelyMapKey:@"decayFactor" toObject:v16];

  commandParams7 = [(FMDCommandHandler *)self commandParams];
  v18 = [commandParams7 objectForKeyedSubscript:@"loc.desiredAccuracy"];
  [v51 fm_safelyMapKey:@"desiredAccuracy" toObject:v18];

  commandParams8 = [(FMDCommandHandler *)self commandParams];
  v20 = [commandParams8 objectForKeyedSubscript:@"loc.validityDuration"];
  [v51 fm_safelyMapKey:@"validityDuration" toObject:v20];

  commandParams9 = [(FMDCommandHandler *)self commandParams];
  v22 = [commandParams9 objectForKeyedSubscript:@"track.minSLCThresholdInMeters"];

  if (v22)
  {
    [v22 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 400.0;
  }

  commandParams10 = [(FMDCommandHandler *)self commandParams];
  v26 = [commandParams10 objectForKeyedSubscript:@"track.maxTrackedLocationsCount"];
  intValue2 = [v26 intValue];

  commandParams11 = [(FMDCommandHandler *)self commandParams];
  v29 = [commandParams11 objectForKeyedSubscript:@"track.locCacheDurationInSecs"];
  [v29 doubleValue];
  v31 = v30;

  commandParams12 = [(FMDCommandHandler *)self commandParams];
  v33 = [commandParams12 objectForKeyedSubscript:@"track.maxCallbackTimeInSecs"];
  [v33 doubleValue];
  v35 = v34;

  commandParams13 = [(FMDCommandHandler *)self commandParams];
  v37 = [commandParams13 objectForKeyedSubscript:@"track.minDistanceThresholdInMeters"];
  [v37 doubleValue];
  v39 = v38;

  commandParams14 = [(FMDCommandHandler *)self commandParams];
  v41 = [commandParams14 objectForKeyedSubscript:@"track.minTimeBetweenLocationsInSecs"];
  [v41 doubleValue];
  v43 = v42;

  commandParams15 = [(FMDCommandHandler *)self commandParams];
  v45 = [commandParams15 objectForKeyedSubscript:@"track.minCallbackTimeInSecs"];
  [v45 doubleValue];
  v47 = v46;

  provider = [(FMDCommandHandler *)self provider];
  locationTracker = [provider locationTracker];

  if (locationTracker)
  {
    locationTracker2 = [provider locationTracker];
    [locationTracker2 updateLocationTrackingInfoWithTrackingStatus:intValue minSLCAccuracyThreshold:v51 locateParams:bOOLValue trackNotifyEnabled:intValue2 maxLocations:v24 keepAlive:v31 periodicCheckInterval:v35 minDistanceBetweenLocations:v39 minTimeBetweenLocations:v43 minTimeBetweenServerCalls:v47];
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [FMDRequestAckTrack alloc];
    account = [provider account];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v12 = [(FMDRequestAckTrack *)v9 initWithAccount:account trackCommand:commandParams2 ackURL:v8];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100129774;
    v14[3] = &unk_1002CD1D0;
    v15 = completionCopy;
    [(FMDRequest *)v12 setCompletionHandler:v14];
    [provider enqueueRequest:v12];
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