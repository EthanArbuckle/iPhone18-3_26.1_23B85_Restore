@interface MonitoredFence
+ (id)createScheduleWithDictionary:(id)dictionary;
- (BOOL)isAllowedAtLocation:(id)location;
- (BOOL)isValidTrigger:(int64_t)trigger;
- (BOOL)shouldTrigger:(int64_t)trigger forLocation:(id)location atDate:(id)date reason:(id *)reason;
- (BOOL)shouldUseIDSTrigger;
- (MonitoredFence)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionary;
- (id)description;
@end

@implementation MonitoredFence

- (MonitoredFence)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(MonitoredFence *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fenceId"];
    if (v6)
    {
      [(MonitoredFence *)v5 setFenceId:v6];
    }

    else
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"id"];
      [(MonitoredFence *)v5 setFenceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
      integerValue = sub_100014ADC(v9);
    }

    else
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"triggerType"];
      integerValue = [v9 integerValue];
    }

    [(MonitoredFence *)v5 setTriggerType:integerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"triggerURL"];
    [(MonitoredFence *)v5 setTriggerURL:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
    [v12 doubleValue];
    [(MonitoredFence *)v5 setLatitude:?];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
    [v13 doubleValue];
    [(MonitoredFence *)v5 setLongitude:?];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
    [v14 doubleValue];
    [(MonitoredFence *)v5 setRadius:?];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"fenceContext"];
    [(MonitoredFence *)v5 setContextDict:v15];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"lastTrigger"];
    -[MonitoredFence setLastTrigger:](v5, "setLastTrigger:", [v16 integerValue]);

    v17 = [dictionaryCopy objectForKeyedSubscript:@"lastTriggerTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"lastTriggerTimestamp"];
      [(MonitoredFence *)v5 setLastTriggerTimestamp:v18];
    }

    else
    {
      [(MonitoredFence *)v5 setLastTriggerTimestamp:0];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordName"];
    [(MonitoredFence *)v5 setCkRecordName:v19];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
    [(MonitoredFence *)v5 setCkRecordZoneOwnerName:v20];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    [(MonitoredFence *)v5 setType:v21];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"acceptanceStatus"];
    [(MonitoredFence *)v5 setAcceptanceStatus:v22];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"onetimeonly"];
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
    v26 = [dictionaryCopy objectForKeyedSubscript:@"fenceTimeRange"];
    fm_nullToNil = [v26 fm_nullToNil];

    v28 = [objc_opt_class() createScheduleWithDictionary:fm_nullToNil];
    [(MonitoredFence *)v5 setSchedule:v28];
  }

  return v5;
}

+ (id)createScheduleWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v4 = [[_TtC11fmflocatord11FMLSchedule alloc] initWithDictionary:dictionaryCopy];
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
  fenceId = [(MonitoredFence *)self fenceId];
  [v3 setObject:fenceId forKeyedSubscript:@"id"];

  v5 = [NSNumber numberWithInteger:[(MonitoredFence *)self triggerType]];
  [v3 setObject:v5 forKeyedSubscript:@"triggerType"];

  triggerURL = [(MonitoredFence *)self triggerURL];
  [v3 setObject:triggerURL forKeyedSubscript:@"triggerURL"];

  [(MonitoredFence *)self latitude];
  v7 = [NSNumber numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"latitude"];

  [(MonitoredFence *)self longitude];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"longitude"];

  [(MonitoredFence *)self radius];
  v9 = [NSNumber numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"radius"];

  contextDict = [(MonitoredFence *)self contextDict];
  [v3 setObject:contextDict forKeyedSubscript:@"fenceContext"];

  v11 = [NSNumber numberWithInteger:[(MonitoredFence *)self lastTrigger]];
  [v3 setObject:v11 forKeyedSubscript:@"lastTrigger"];

  lastTriggerTimestamp = [(MonitoredFence *)self lastTriggerTimestamp];
  [v3 setObject:lastTriggerTimestamp forKeyedSubscript:@"lastTriggerTimestamp"];

  schedule = [(MonitoredFence *)self schedule];
  dictionary = [schedule dictionary];
  [v3 setObject:dictionary forKeyedSubscript:@"fenceTimeRange"];

  v15 = [NSNumber numberWithInt:[(MonitoredFence *)self isRecurring]^ 1];
  [v3 setObject:v15 forKeyedSubscript:@"onetimeonly"];

  ckRecordName = [(MonitoredFence *)self ckRecordName];
  [v3 setObject:ckRecordName forKeyedSubscript:@"ckRecordName"];

  ckRecordZoneOwnerName = [(MonitoredFence *)self ckRecordZoneOwnerName];
  [v3 setObject:ckRecordZoneOwnerName forKeyedSubscript:@"ckRecordZoneOwnerName"];

  acceptanceStatus = [(MonitoredFence *)self acceptanceStatus];
  [v3 setObject:acceptanceStatus forKeyedSubscript:@"acceptanceStatus"];

  type = [(MonitoredFence *)self type];
  [v3 setObject:type forKeyedSubscript:@"type"];

  return v3;
}

- (BOOL)shouldUseIDSTrigger
{
  if ([(MonitoredFence *)self isNotifyMeFence]&& ([(MonitoredFence *)self isRecurring]|| [(MonitoredFence *)self triggerType]== 3))
  {
    LOBYTE(isNotifyOthersFence) = 1;
  }

  else
  {
    isNotifyOthersFence = [(MonitoredFence *)self isNotifyOthersFence];
    if (isNotifyOthersFence)
    {
      LOBYTE(isNotifyOthersFence) = [(MonitoredFence *)self triggerType]== 3;
    }
  }

  return isNotifyOthersFence;
}

- (BOOL)shouldTrigger:(int64_t)trigger forLocation:(id)location atDate:(id)date reason:(id *)reason
{
  locationCopy = location;
  dateCopy = date;
  if ([(MonitoredFence *)self isValidTrigger:trigger])
  {
    if ([(MonitoredFence *)self isAllowedAtLocation:locationCopy])
    {
      if ([(MonitoredFence *)self lastTrigger]== trigger)
      {
        lastTriggerTimestamp = [(MonitoredFence *)self lastTriggerTimestamp];
        if (lastTriggerTimestamp)
        {
          v13 = lastTriggerTimestamp;
          lastTriggerTimestamp2 = [(MonitoredFence *)self lastTriggerTimestamp];
          [dateCopy timeIntervalSinceDate:lastTriggerTimestamp2];
          v16 = v15;

          if (v16 < 5.0)
          {
            if (reason)
            {
              lastTriggerTimestamp3 = [(MonitoredFence *)self lastTriggerTimestamp];
              *reason = [NSString stringWithFormat:@"date (%@) < lastTriggerTimestamp (%@) + 5s", dateCopy, lastTriggerTimestamp3];
            }

            goto LABEL_16;
          }
        }
      }

      v20 = +[SystemConfig sharedInstance];
      isFMFAppRemoved = [v20 isFMFAppRemoved];

      if (!isFMFAppRemoved)
      {
        v18 = 1;
        goto LABEL_18;
      }

      if (!reason)
      {
        goto LABEL_16;
      }

      v18 = 0;
      v19 = @"app is removed";
      goto LABEL_10;
    }

    if (reason)
    {
      [NSString stringWithFormat:@"not allowed at location: %@", locationCopy];
      *reason = v18 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_18;
  }

  if (!reason)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v19 = @"invalid trigger";
LABEL_10:
  *reason = v19;
LABEL_18:

  return v18;
}

- (id)description
{
  v25 = objc_opt_class();
  fenceId = [(MonitoredFence *)self fenceId];
  type = [(MonitoredFence *)self type];
  triggerType = [(MonitoredFence *)self triggerType];
  if ((triggerType - 1) > 2)
  {
    v5 = @"enter";
  }

  else
  {
    v5 = *(&off_10005D818 + triggerType - 1);
  }

  v24 = v5;
  contextDict = [(MonitoredFence *)self contextDict];
  [(MonitoredFence *)self latitude];
  v8 = v7;
  [(MonitoredFence *)self longitude];
  v10 = v9;
  [(MonitoredFence *)self radius];
  v12 = v11;
  schedule = [(MonitoredFence *)self schedule];
  isRecurring = [(MonitoredFence *)self isRecurring];
  triggerURL = [(MonitoredFence *)self triggerURL];
  lastTrigger = [(MonitoredFence *)self lastTrigger];
  if (lastTrigger > 3)
  {
    v17 = @"in";
  }

  else
  {
    v17 = *(&off_10005D830 + lastTrigger);
  }

  lastTriggerTimestamp = [(MonitoredFence *)self lastTriggerTimestamp];
  acceptanceStatus = [(MonitoredFence *)self acceptanceStatus];
  ckRecordName = [(MonitoredFence *)self ckRecordName];
  ckRecordZoneOwnerName = [(MonitoredFence *)self ckRecordZoneOwnerName];
  v22 = [NSString stringWithFormat:@"<%@ fenceId: %@, type: %@, triggerType: %@, contextDict: %@, latitude: %f, longitude: %f, radius: %f, schedule: %@, recurring: %d, triggerURL: %@, lastTrigger: %@, lastTriggerTimestamp: %@, acceptanceStatus: %@, ckRecordName: %@, ckRecordZoneOwnerName: %@>", v25, fenceId, type, v24, contextDict, v8, v10, v12, schedule, isRecurring, triggerURL, v17, lastTriggerTimestamp, acceptanceStatus, ckRecordName, ckRecordZoneOwnerName];

  return v22;
}

- (BOOL)isAllowedAtLocation:(id)location
{
  [location coordinate];

  return [_TtC11fmflocatord8FMLFence isAllowedAtLocation:?];
}

- (BOOL)isValidTrigger:(int64_t)trigger
{
  triggerType = [(MonitoredFence *)self triggerType];
  v5 = trigger < 2;
  v6 = (trigger & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (triggerType != 3)
  {
    v6 = trigger < 2;
  }

  if (triggerType != 2)
  {
    v5 = v6;
  }

  v7 = trigger == 0;
  v8 = trigger == 1;
  if (triggerType != 1)
  {
    v8 = v5;
  }

  if (triggerType)
  {
    v7 = v8;
  }

  if (triggerType <= 1)
  {
    return v7;
  }

  return v5;
}

@end