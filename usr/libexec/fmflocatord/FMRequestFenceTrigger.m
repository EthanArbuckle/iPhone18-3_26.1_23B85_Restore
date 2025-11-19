@interface FMRequestFenceTrigger
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (FMRequestFenceTrigger)initWithProvider:(id)a3 triggeredLocation:(id)a4 fence:(id)a5 validityDuration:(double)a6 triggerURL:(id)a7;
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

- (FMRequestFenceTrigger)initWithProvider:(id)a3 triggeredLocation:(id)a4 fence:(id)a5 validityDuration:(double)a6 triggerURL:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = FMRequestFenceTrigger;
  v15 = [(FMRequest *)&v19 initWithProvider:a3];
  v16 = v15;
  if (v15)
  {
    [(FMRequestFenceTrigger *)v15 setTriggeredLocation:v12];
    [(FMRequestFenceTrigger *)v16 setFence:v13];
    [(FMRequestFenceTrigger *)v16 setTriggerURL:v14];
    v17 = [v13 lastTriggerTimestamp];
    [(FMRequestFenceTrigger *)v16 setTriggerTimestamp:v17];

    -[FMRequestFenceTrigger setTriggerType:](v16, "setTriggerType:", [v13 lastTrigger]);
    [(FMRequestFenceTrigger *)v16 setValidityDuration:a6];
  }

  return v16;
}

- (id)requestBody
{
  v54.receiver = self;
  v54.super_class = FMRequestFenceTrigger;
  v3 = [(FMRequest *)&v54 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];
  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];

  v6 = [(FMRequest *)self provider];
  v7 = [v6 fullDeviceInfo];
  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];

  v8 = [(FMRequestFenceTrigger *)self triggeredLocation];

  if (v8)
  {
    v9 = [(FMRequestFenceTrigger *)self triggeredLocation];
    v10 = [v9 timestamp];
    v11 = [v10 stringValueForServer];

    v12 = +[NSMutableDictionary dictionary];
    v13 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v13 coordinate];
    v14 = [NSNumber numberWithDouble:?];
    [v12 setObject:v14 forKeyedSubscript:@"latitude"];

    v15 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v15 coordinate];
    v17 = [NSNumber numberWithDouble:v16];
    [v12 setObject:v17 forKeyedSubscript:@"longitude"];

    v18 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v18 horizontalAccuracy];
    v19 = [NSNumber numberWithDouble:?];
    [v12 setObject:v19 forKeyedSubscript:@"horizontalAccuracy"];

    v20 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v20 altitude];
    v21 = [NSNumber numberWithDouble:?];
    [v12 setObject:v21 forKeyedSubscript:@"alt"];

    v22 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v22 verticalAccuracy];
    v23 = [NSNumber numberWithDouble:?];
    [v12 setObject:v23 forKeyedSubscript:@"vertAcc"];

    v24 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v24 speed];
    v25 = [NSNumber numberWithDouble:?];
    [v12 setObject:v25 forKeyedSubscript:@"speed"];

    v26 = [(FMRequestFenceTrigger *)self triggeredLocation];
    [v26 course];
    v27 = [NSNumber numberWithDouble:?];
    [v12 setObject:v27 forKeyedSubscript:@"course"];

    v28 = [(FMRequestFenceTrigger *)self triggeredLocation];
    v29 = [v28 floor];

    if (v29)
    {
      v30 = [(FMRequestFenceTrigger *)self triggeredLocation];
      v31 = [v30 floor];
      v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 level]);
      [v12 setObject:v32 forKeyedSubscript:@"floorLevel"];
    }

    [v12 fm_safelyMapKey:@"timestamp" toObject:v11];
  }

  else
  {
    v56[0] = @"latitude";
    v11 = [(FMRequestFenceTrigger *)self fence];
    [v11 latitude];
    v33 = [NSNumber numberWithDouble:?];
    v57[0] = v33;
    v56[1] = @"longitude";
    v34 = [(FMRequestFenceTrigger *)self fence];
    [v34 longitude];
    v35 = [NSNumber numberWithDouble:?];
    v57[1] = v35;
    v56[2] = @"horizontalAccuracy";
    v36 = [(FMRequestFenceTrigger *)self fence];
    [v36 radius];
    v37 = [NSNumber numberWithDouble:?];
    v57[2] = v37;
    v12 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  }

  v38 = [(FMRequestFenceTrigger *)self triggerType];
  v39 = @"scheduled";
  if (v38 == 1)
  {
    v39 = @"exit";
  }

  if (!v38)
  {
    v39 = @"enter";
  }

  v40 = v39;
  v41 = [(FMRequestFenceTrigger *)self fence];
  v42 = [v41 fenceId];
  v43 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"location", v40, @"trigger", v42, @"id", 0];

  v44 = [(FMRequestFenceTrigger *)self triggerTimestamp];

  if (v44)
  {
    v45 = [(FMRequestFenceTrigger *)self triggerTimestamp];
    v46 = [v45 stringValueForServer];

    [v43 setObject:v46 forKeyedSubscript:@"triggerTimestamp"];
  }

  if ([(FMRequestFenceTrigger *)self triggerType]== 2 || [(FMRequestFenceTrigger *)self triggerType]== 3)
  {
    v47 = sub_100014AB8([(FMRequestFenceTrigger *)self triggerType]);
    [v43 setObject:v47 forKeyedSubscript:@"status"];
  }

  v48 = [(FMRequestFenceTrigger *)self fence];
  v49 = [v48 contextDict];

  if (v49)
  {
    v50 = [(FMRequestFenceTrigger *)self fence];
    v51 = [v50 contextDict];
    [v43 setObject:v51 forKeyedSubscript:@"fenceContext"];
  }

  v55 = v43;
  v52 = [NSArray arrayWithObjects:&v55 count:1];
  [v3 setObject:v52 forKeyedSubscript:@"fences"];

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  v3 = [(FMRequestFenceTrigger *)self triggerTimestamp];
  [(FMRequestFenceTrigger *)self validityDuration];
  v4 = [v3 dateByAddingTimeInterval:?];

  v5 = +[NSDate date];
  if ([v5 compare:v4] == 1 || (+[FMFFencesMgr sharedInstance](FMFFencesMgr, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), -[FMRequestFenceTrigger fence](self, "fence"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isFenceBeingMonitored:", v7), v7, v6, !v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FMRequestFenceTrigger;
    v9 = [(FMRequest *)&v11 canRequestBeRetriedNow];
  }

  return v9;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FMRequest *)self delegate];
      v7 = [v5 delegate];
      if (v6 == v7)
      {
        v9 = [(FMRequestFenceTrigger *)self fence];
        v10 = [v9 fenceId];
        v11 = [v5 fence];
        v12 = [v11 fenceId];
        v8 = [v10 isEqualToString:v12];
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