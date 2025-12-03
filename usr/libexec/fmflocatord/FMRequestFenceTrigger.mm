@interface FMRequestFenceTrigger
- (BOOL)canReplace:(id)replace;
- (BOOL)canRequestBeRetriedNow;
- (FMRequestFenceTrigger)initWithProvider:(id)provider triggeredLocation:(id)location fence:(id)fence validityDuration:(double)duration triggerURL:(id)l;
- (id)requestBody;
- (void)deinitializeRequest;
@end

@implementation FMRequestFenceTrigger

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestFenceTrigger;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestFenceTrigger *)self setTriggeredLocation:0];
  [(FMRequestFenceTrigger *)self setFence:0];
  [(FMRequestFenceTrigger *)self setTriggerURL:0];
  [(FMRequestFenceTrigger *)self setTriggerTimestamp:0];
}

- (FMRequestFenceTrigger)initWithProvider:(id)provider triggeredLocation:(id)location fence:(id)fence validityDuration:(double)duration triggerURL:(id)l
{
  locationCopy = location;
  fenceCopy = fence;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = FMRequestFenceTrigger;
  v15 = [(FMRequest *)&v19 initWithProvider:provider];
  v16 = v15;
  if (v15)
  {
    [(FMRequestFenceTrigger *)v15 setTriggeredLocation:locationCopy];
    [(FMRequestFenceTrigger *)v16 setFence:fenceCopy];
    [(FMRequestFenceTrigger *)v16 setTriggerURL:lCopy];
    lastTriggerTimestamp = [fenceCopy lastTriggerTimestamp];
    [(FMRequestFenceTrigger *)v16 setTriggerTimestamp:lastTriggerTimestamp];

    -[FMRequestFenceTrigger setTriggerType:](v16, "setTriggerType:", [fenceCopy lastTrigger]);
    [(FMRequestFenceTrigger *)v16 setValidityDuration:duration];
  }

  return v16;
}

- (id)requestBody
{
  v54.receiver = self;
  v54.super_class = FMRequestFenceTrigger;
  requestBody = [(FMRequest *)&v54 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];
  [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];

  provider2 = [(FMRequest *)self provider];
  fullDeviceInfo = [provider2 fullDeviceInfo];
  [requestBody setObject:fullDeviceInfo forKeyedSubscript:@"deviceInfo"];

  triggeredLocation = [(FMRequestFenceTrigger *)self triggeredLocation];

  if (triggeredLocation)
  {
    triggeredLocation2 = [(FMRequestFenceTrigger *)self triggeredLocation];
    timestamp = [triggeredLocation2 timestamp];
    stringValueForServer = [timestamp stringValueForServer];

    v12 = +[NSMutableDictionary dictionary];
    triggeredLocation3 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation3 coordinate];
    v14 = [NSNumber numberWithDouble:?];
    [v12 setObject:v14 forKeyedSubscript:@"latitude"];

    triggeredLocation4 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation4 coordinate];
    v17 = [NSNumber numberWithDouble:v16];
    [v12 setObject:v17 forKeyedSubscript:@"longitude"];

    triggeredLocation5 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation5 horizontalAccuracy];
    v19 = [NSNumber numberWithDouble:?];
    [v12 setObject:v19 forKeyedSubscript:@"horizontalAccuracy"];

    triggeredLocation6 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation6 altitude];
    v21 = [NSNumber numberWithDouble:?];
    [v12 setObject:v21 forKeyedSubscript:@"alt"];

    triggeredLocation7 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation7 verticalAccuracy];
    v23 = [NSNumber numberWithDouble:?];
    [v12 setObject:v23 forKeyedSubscript:@"vertAcc"];

    triggeredLocation8 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation8 speed];
    v25 = [NSNumber numberWithDouble:?];
    [v12 setObject:v25 forKeyedSubscript:@"speed"];

    triggeredLocation9 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [triggeredLocation9 course];
    v27 = [NSNumber numberWithDouble:?];
    [v12 setObject:v27 forKeyedSubscript:@"course"];

    triggeredLocation10 = [(FMRequestFenceTrigger *)self triggeredLocation];
    floor = [triggeredLocation10 floor];

    if (floor)
    {
      triggeredLocation11 = [(FMRequestFenceTrigger *)self triggeredLocation];
      floor2 = [triggeredLocation11 floor];
      v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [floor2 level]);
      [v12 setObject:v32 forKeyedSubscript:@"floorLevel"];
    }

    [v12 fm_safelyMapKey:@"timestamp" toObject:stringValueForServer];
  }

  else
  {
    v56[0] = @"latitude";
    stringValueForServer = [(FMRequestFenceTrigger *)self fence];
    [stringValueForServer latitude];
    v33 = [NSNumber numberWithDouble:?];
    v57[0] = v33;
    v56[1] = @"longitude";
    fence = [(FMRequestFenceTrigger *)self fence];
    [fence longitude];
    v35 = [NSNumber numberWithDouble:?];
    v57[1] = v35;
    v56[2] = @"horizontalAccuracy";
    fence2 = [(FMRequestFenceTrigger *)self fence];
    [fence2 radius];
    v37 = [NSNumber numberWithDouble:?];
    v57[2] = v37;
    v12 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  }

  triggerType = [(FMRequestFenceTrigger *)self triggerType];
  v39 = @"scheduled";
  if (triggerType == 1)
  {
    v39 = @"exit";
  }

  if (!triggerType)
  {
    v39 = @"enter";
  }

  v40 = v39;
  fence3 = [(FMRequestFenceTrigger *)self fence];
  fenceId = [fence3 fenceId];
  v43 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"location", v40, @"trigger", fenceId, @"id", 0];

  triggerTimestamp = [(FMRequestFenceTrigger *)self triggerTimestamp];

  if (triggerTimestamp)
  {
    triggerTimestamp2 = [(FMRequestFenceTrigger *)self triggerTimestamp];
    stringValueForServer2 = [triggerTimestamp2 stringValueForServer];

    [v43 setObject:stringValueForServer2 forKeyedSubscript:@"triggerTimestamp"];
  }

  if ([(FMRequestFenceTrigger *)self triggerType]== 2 || [(FMRequestFenceTrigger *)self triggerType]== 3)
  {
    v47 = sub_100014AB8([(FMRequestFenceTrigger *)self triggerType]);
    [v43 setObject:v47 forKeyedSubscript:@"status"];
  }

  fence4 = [(FMRequestFenceTrigger *)self fence];
  contextDict = [fence4 contextDict];

  if (contextDict)
  {
    fence5 = [(FMRequestFenceTrigger *)self fence];
    contextDict2 = [fence5 contextDict];
    [v43 setObject:contextDict2 forKeyedSubscript:@"fenceContext"];
  }

  v55 = v43;
  v52 = [NSArray arrayWithObjects:&v55 count:1];
  [requestBody setObject:v52 forKeyedSubscript:@"fences"];

  return requestBody;
}

- (BOOL)canRequestBeRetriedNow
{
  triggerTimestamp = [(FMRequestFenceTrigger *)self triggerTimestamp];
  [(FMRequestFenceTrigger *)self validityDuration];
  v4 = [triggerTimestamp dateByAddingTimeInterval:?];

  v5 = +[NSDate date];
  if ([v5 compare:v4] == 1 || (+[FMFFencesMgr sharedInstance](FMFFencesMgr, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), -[FMRequestFenceTrigger fence](self, "fence"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isFenceBeingMonitored:", v7), v7, v6, !v8))
  {
    canRequestBeRetriedNow = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FMRequestFenceTrigger;
    canRequestBeRetriedNow = [(FMRequest *)&v11 canRequestBeRetriedNow];
  }

  return canRequestBeRetriedNow;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(FMRequest *)self delegate];
      delegate2 = [v5 delegate];
      if (delegate == delegate2)
      {
        fence = [(FMRequestFenceTrigger *)self fence];
        fenceId = [fence fenceId];
        fence2 = [v5 fence];
        fenceId2 = [fence2 fenceId];
        v8 = [fenceId isEqualToString:fenceId2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end