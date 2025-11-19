@interface MonitoredFence
+ (id)createScheduleWithDictionary:(id)a3;
- (BOOL)isAllowedAtLocation:(id)a3;
- (BOOL)isValidTrigger:(int64_t)a3;
- (BOOL)shouldTrigger:(int64_t)a3 forLocation:(id)a4 atDate:(id)a5 reason:(id *)a6;
- (BOOL)shouldUseIDSTrigger;
- (MonitoredFence)initWithDictionary:(id)a3;
- (NSDictionary)dictionary;
- (id)description;
@end

@implementation MonitoredFence

- (MonitoredFence)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MonitoredFence *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fenceId"];
    if (v6)
    {
      [(MonitoredFence *)v5 setFenceId:v6];
    }

    else
    {
      v7 = [v4 objectForKeyedSubscript:@"id"];
      [(MonitoredFence *)v5 setFenceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"trigger"];
    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"trigger"];
      v10 = sub_100014ADC(v9);
    }

    else
    {
      v9 = [v4 objectForKeyedSubscript:@"triggerType"];
      v10 = [v9 integerValue];
    }

    [(MonitoredFence *)v5 setTriggerType:v10];

    v11 = [v4 objectForKeyedSubscript:@"triggerURL"];
    [(MonitoredFence *)v5 setTriggerURL:v11];

    v12 = [v4 objectForKeyedSubscript:@"latitude"];
    [v12 doubleValue];
    [(MonitoredFence *)v5 setLatitude:?];

    v13 = [v4 objectForKeyedSubscript:@"longitude"];
    [v13 doubleValue];
    [(MonitoredFence *)v5 setLongitude:?];

    v14 = [v4 objectForKeyedSubscript:@"radius"];
    [v14 doubleValue];
    [(MonitoredFence *)v5 setRadius:?];

    v15 = [v4 objectForKeyedSubscript:@"fenceContext"];
    [(MonitoredFence *)v5 setContextDict:v15];

    v16 = [v4 objectForKeyedSubscript:@"lastTrigger"];
    -[MonitoredFence setLastTrigger:](v5, "setLastTrigger:", [v16 integerValue]);

    v17 = [v4 objectForKeyedSubscript:@"lastTriggerTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v4 objectForKeyedSubscript:@"lastTriggerTimestamp"];
      [(MonitoredFence *)v5 setLastTriggerTimestamp:v18];
    }

    else
    {
      [(MonitoredFence *)v5 setLastTriggerTimestamp:0];
    }

    v19 = [v4 objectForKeyedSubscript:@"ckRecordName"];
    [(MonitoredFence *)v5 setCkRecordName:v19];

    v20 = [v4 objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
    [(MonitoredFence *)v5 setCkRecordZoneOwnerName:v20];

    v21 = [v4 objectForKeyedSubscript:@"type"];
    [(MonitoredFence *)v5 setType:v21];

    v22 = [v4 objectForKeyedSubscript:@"acceptanceStatus"];
    [(MonitoredFence *)v5 setAcceptanceStatus:v22];

    v23 = [v4 objectForKeyedSubscript:@"onetimeonly"];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 BOOLValue] ^ 1;
    }

    else
    {
      v25 = 0;
    }

    [(MonitoredFence *)v5 setRecurring:v25];
    v26 = [v4 objectForKeyedSubscript:@"fenceTimeRange"];
    v27 = [v26 fm_nullToNil];

    v28 = [objc_opt_class() createScheduleWithDictionary:v27];
    [(MonitoredFence *)v5 setSchedule:v28];
  }

  return v5;
}

+ (id)createScheduleWithDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[_TtC11fmflocatord11FMLSchedule alloc] initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)dictionary
{
  v3 = objc_opt_new();
  v4 = [(MonitoredFence *)self fenceId];
  [v3 setObject:v4 forKeyedSubscript:@"id"];

  v5 = [NSNumber numberWithInteger:[(MonitoredFence *)self triggerType]];
  [v3 setObject:v5 forKeyedSubscript:@"triggerType"];

  v6 = [(MonitoredFence *)self triggerURL];
  [v3 setObject:v6 forKeyedSubscript:@"triggerURL"];

  [(MonitoredFence *)self latitude];
  v7 = [NSNumber numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"latitude"];

  [(MonitoredFence *)self longitude];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"longitude"];

  [(MonitoredFence *)self radius];
  v9 = [NSNumber numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"radius"];

  v10 = [(MonitoredFence *)self contextDict];
  [v3 setObject:v10 forKeyedSubscript:@"fenceContext"];

  v11 = [NSNumber numberWithInteger:[(MonitoredFence *)self lastTrigger]];
  [v3 setObject:v11 forKeyedSubscript:@"lastTrigger"];

  v12 = [(MonitoredFence *)self lastTriggerTimestamp];
  [v3 setObject:v12 forKeyedSubscript:@"lastTriggerTimestamp"];

  v13 = [(MonitoredFence *)self schedule];
  v14 = [v13 dictionary];
  [v3 setObject:v14 forKeyedSubscript:@"fenceTimeRange"];

  v15 = [NSNumber numberWithInt:[(MonitoredFence *)self isRecurring]^ 1];
  [v3 setObject:v15 forKeyedSubscript:@"onetimeonly"];

  v16 = [(MonitoredFence *)self ckRecordName];
  [v3 setObject:v16 forKeyedSubscript:@"ckRecordName"];

  v17 = [(MonitoredFence *)self ckRecordZoneOwnerName];
  [v3 setObject:v17 forKeyedSubscript:@"ckRecordZoneOwnerName"];

  v18 = [(MonitoredFence *)self acceptanceStatus];
  [v3 setObject:v18 forKeyedSubscript:@"acceptanceStatus"];

  v19 = [(MonitoredFence *)self type];
  [v3 setObject:v19 forKeyedSubscript:@"type"];

  return v3;
}

- (BOOL)shouldUseIDSTrigger
{
  if ([(MonitoredFence *)self isNotifyMeFence]&& ([(MonitoredFence *)self isRecurring]|| [(MonitoredFence *)self triggerType]== 3))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(MonitoredFence *)self isNotifyOthersFence];
    if (v3)
    {
      LOBYTE(v3) = [(MonitoredFence *)self triggerType]== 3;
    }
  }

  return v3;
}

- (BOOL)shouldTrigger:(int64_t)a3 forLocation:(id)a4 atDate:(id)a5 reason:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([(MonitoredFence *)self isValidTrigger:a3])
  {
    if ([(MonitoredFence *)self isAllowedAtLocation:v10])
    {
      if ([(MonitoredFence *)self lastTrigger]== a3)
      {
        v12 = [(MonitoredFence *)self lastTriggerTimestamp];
        if (v12)
        {
          v13 = v12;
          v14 = [(MonitoredFence *)self lastTriggerTimestamp];
          [v11 timeIntervalSinceDate:v14];
          v16 = v15;

          if (v16 < 5.0)
          {
            if (a6)
            {
              v17 = [(MonitoredFence *)self lastTriggerTimestamp];
              *a6 = [NSString stringWithFormat:@"date (%@) < lastTriggerTimestamp (%@) + 5s", v11, v17];
            }

            goto LABEL_16;
          }
        }
      }

      v20 = +[SystemConfig sharedInstance];
      v21 = [v20 isFMFAppRemoved];

      if (!v21)
      {
        v18 = 1;
        goto LABEL_18;
      }

      if (!a6)
      {
        goto LABEL_16;
      }

      v18 = 0;
      v19 = @"app is removed";
      goto LABEL_10;
    }

    if (a6)
    {
      [NSString stringWithFormat:@"not allowed at location: %@", v10];
      *a6 = v18 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_18;
  }

  if (!a6)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v19 = @"invalid trigger";
LABEL_10:
  *a6 = v19;
LABEL_18:

  return v18;
}

- (id)description
{
  v25 = objc_opt_class();
  v26 = [(MonitoredFence *)self fenceId];
  v3 = [(MonitoredFence *)self type];
  v4 = [(MonitoredFence *)self triggerType];
  if ((v4 - 1) > 2)
  {
    v5 = @"enter";
  }

  else
  {
    v5 = *(&off_10005D818 + v4 - 1);
  }

  v24 = v5;
  v6 = [(MonitoredFence *)self contextDict];
  [(MonitoredFence *)self latitude];
  v8 = v7;
  [(MonitoredFence *)self longitude];
  v10 = v9;
  [(MonitoredFence *)self radius];
  v12 = v11;
  v13 = [(MonitoredFence *)self schedule];
  v14 = [(MonitoredFence *)self isRecurring];
  v15 = [(MonitoredFence *)self triggerURL];
  v16 = [(MonitoredFence *)self lastTrigger];
  if (v16 > 3)
  {
    v17 = @"in";
  }

  else
  {
    v17 = *(&off_10005D830 + v16);
  }

  v18 = [(MonitoredFence *)self lastTriggerTimestamp];
  v19 = [(MonitoredFence *)self acceptanceStatus];
  v20 = [(MonitoredFence *)self ckRecordName];
  v21 = [(MonitoredFence *)self ckRecordZoneOwnerName];
  v22 = [NSString stringWithFormat:@"<%@ fenceId: %@, type: %@, triggerType: %@, contextDict: %@, latitude: %f, longitude: %f, radius: %f, schedule: %@, recurring: %d, triggerURL: %@, lastTrigger: %@, lastTriggerTimestamp: %@, acceptanceStatus: %@, ckRecordName: %@, ckRecordZoneOwnerName: %@>", v25, v26, v3, v24, v6, v8, v10, v12, v13, v14, v15, v17, v18, v19, v20, v21];

  return v22;
}

- (BOOL)isAllowedAtLocation:(id)a3
{
  [a3 coordinate];

  return [_TtC11fmflocatord8FMLFence isAllowedAtLocation:?];
}

- (BOOL)isValidTrigger:(int64_t)a3
{
  v4 = [(MonitoredFence *)self triggerType];
  v5 = a3 < 2;
  v6 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (v4 != 3)
  {
    v6 = a3 < 2;
  }

  if (v4 != 2)
  {
    v5 = v6;
  }

  v7 = a3 == 0;
  v8 = a3 == 1;
  if (v4 != 1)
  {
    v8 = v5;
  }

  if (v4)
  {
    v7 = v8;
  }

  if (v4 <= 1)
  {
    return v7;
  }

  return v5;
}

@end