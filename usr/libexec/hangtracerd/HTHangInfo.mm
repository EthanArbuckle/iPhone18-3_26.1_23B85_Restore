@interface HTHangInfo
+ (double)getHangWaitTimeout;
+ (id)allHangs;
+ (id)firstHang;
+ (void)addHang:(id)hang;
+ (void)cleanupAllHangs;
- (HTHangInfo)initWithPid:(int)pid threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceID:(unint64_t)iD hangSubtype:(int64_t)subtype isFirstPartyApp:(BOOL)self0 isThirdPartyDevSupportModeHang:(BOOL)self1 displayedInHUD:(BOOL)self2 serviceName:(id)self3 reason:(id)self4 processName:(id)self5 processPath:(id)self6 userActionData:(id)self7 recentStateInfo:(id)self8;
- (NSDictionary)infoDict;
- (NSString)hangDescription;
@end

@implementation HTHangInfo

+ (id)allHangs
{
  v2 = [qword_1000679B0 copy];

  return v2;
}

- (NSString)hangDescription
{
  processName = self->_processName;
  v4 = sub_1000043DC(self->_hangSubType);
  [(HTHangInfo *)self hangDurationMS];
  v6 = [NSString stringWithFormat:@"%@, %@, %.0fms", processName, v4, v5];

  return v6;
}

+ (void)addHang:(id)hang
{
  hangCopy = hang;
  if (qword_1000679A8 != -1)
  {
    sub_100031604();
  }

  if (![qword_1000679B0 count])
  {
    v4 = objc_alloc_init(NSUUID);
    uUIDString = [v4 UUIDString];
    v6 = qword_1000679B8;
    qword_1000679B8 = uUIDString;
  }

  startTime = [hangCopy startTime];
  if (startTime < qword_1000679C0)
  {
    qword_1000679C0 = [hangCopy startTime];
  }

  endTime = [hangCopy endTime];
  if (endTime > qword_1000679A0)
  {
    qword_1000679A0 = [hangCopy endTime];
  }

  reportedTime = [hangCopy reportedTime];
  if (reportedTime > qword_1000679C8)
  {
    qword_1000679C8 = [hangCopy reportedTime];
  }

  v10 = [qword_1000679B0 indexOfObject:hangCopy inSortedRange:0 options:objc_msgSend(qword_1000679B0 usingComparator:{"count"), 1024, &stru_1000551C8}];
  [qword_1000679B0 insertObject:hangCopy atIndex:v10];
  v11 = sub_100003824();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    hangDescription = [hangCopy hangDescription];
    v13 = 138543362;
    v14 = hangDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ added to tailspin capture", &v13, 0xCu);
  }
}

+ (id)firstHang
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = qword_1000679B0;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 = *(*(&v10 + 1) + 8 * v6);

        startTime = [v4 startTime];
        if (startTime == qword_1000679C0)
        {
          v3 = v4;
          v4 = v2;
          v2 = v3;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

LABEL_11:
  }

  return v3;
}

+ (void)cleanupAllHangs
{
  [qword_1000679B0 removeAllObjects];
  qword_1000679A0 = 0;
  qword_1000679C0 = -1;
  qword_1000679C8 = 0;
  if (qword_100067998)
  {
    dispatch_source_cancel(qword_100067998);
    sub_100004420(@"Check for Pending Hangs");
    v2 = qword_100067998;
    qword_100067998 = 0;

    byte_100067D7C = 0;
  }

  v3 = qword_1000679B8;
  if (qword_1000679B8)
  {
    qword_1000679B8 = 0;
  }
}

- (NSDictionary)infoDict
{
  v3 = +[HTPrefs sharedPrefs];
  enablementPrefix = [v3 enablementPrefix];
  if (enablementPrefix)
  {
    v5 = +[HTPrefs sharedPrefs];
    enablementPrefix2 = [v5 enablementPrefix];
  }

  else
  {
    enablementPrefix2 = &stru_100057080;
  }

  if (!self->_userActionData || (v7 = [[NSString alloc] initWithBytes:-[NSData bytes](self->_userActionData length:"bytes") encoding:{-[NSData length](self->_userActionData, "length"), 4}]) == 0)
  {
    v7 = +[NSNull null];
  }

  v33[0] = @"Reason";
  v33[1] = @"ServiceName";
  serviceName = self->_serviceName;
  v34[0] = self->_reason;
  v34[1] = serviceName;
  v34[2] = self->_processPath;
  v33[2] = @"ProcessPath";
  v33[3] = @"PID";
  v30 = [NSNumber numberWithInt:self->_pid];
  v34[3] = v30;
  v33[4] = @"ThreadID";
  v29 = [NSNumber numberWithLongLong:self->_tid];
  v34[4] = v29;
  v33[5] = @"StartTime";
  v28 = [NSNumber numberWithLongLong:self->_startTime];
  v34[5] = v28;
  v33[6] = @"EndTime";
  v27 = [NSNumber numberWithLongLong:self->_endTime];
  v34[6] = v27;
  v33[7] = @"ReportedTime";
  v26 = [NSNumber numberWithLongLong:self->_reportedTime];
  v34[7] = v26;
  v33[8] = @"HangType";
  v25 = [NSNumber numberWithInteger:self->_hangSubType];
  v34[8] = v25;
  v33[9] = @"DisplayData";
  v24 = +[HTProcessInfo displayStateArray];
  v34[9] = v24;
  v33[10] = @"NetworkState";
  v9 = +[HTNetworkInfo networkStateForTailSpin];
  v10 = v9;
  if (!v9)
  {
    v9 = +[NSNull null];
  }

  v23 = v9;
  v34[10] = v9;
  v34[11] = qword_1000679B8;
  v33[11] = @"HangUUID";
  v33[12] = @"HangNotificationUUID";
  v34[12] = self->_hangUUID;
  v33[13] = @"CreatedAt";
  v11 = +[NSDate now];
  [v11 timeIntervalSinceReferenceDate];
  v13 = [NSString stringWithFormat:@"%.0f", v12];
  v34[13] = v13;
  v34[14] = v7;
  v31 = v7;
  v32 = enablementPrefix2;
  v33[14] = @"UserAction";
  v33[15] = @"EnablementType";
  v34[15] = enablementPrefix2;
  v33[16] = @"DisplayedInHUD";
  v14 = [NSNumber numberWithBool:self->_displayedInHUD];
  v34[16] = v14;
  v33[17] = @"IsThirdPartyDevSupportModeHang";
  v15 = [NSNumber numberWithBool:self->_isThirdPartyDevSupportModeHang];
  v34[17] = v15;
  v33[18] = @"StateInfo";
  recentStateInfo = self->_recentStateInfo;
  v17 = recentStateInfo;
  if (!recentStateInfo)
  {
    v17 = +[NSNull null];
  }

  v34[18] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:19];
  v19 = [NSMutableDictionary dictionaryWithDictionary:v18];

  if (!recentStateInfo)
  {
  }

  if (!v10)
  {
  }

  if (sub_10001AEA0(self->_serviceName) == 1)
  {
    v20 = +[HTProcessInfo recentAppsDict];
    [v19 setObject:v20 forKeyedSubscript:@"RecentAppsDict"];
  }

  if (self->_hangSubType == 5)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:self->_blownFenceID];
    [v19 setObject:v21 forKeyedSubscript:@"CAFenceId"];
  }

  return v19;
}

- (HTHangInfo)initWithPid:(int)pid threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceID:(unint64_t)iD hangSubtype:(int64_t)subtype isFirstPartyApp:(BOOL)self0 isThirdPartyDevSupportModeHang:(BOOL)self1 displayedInHUD:(BOOL)self2 serviceName:(id)self3 reason:(id)self4 processName:(id)self5 processPath:(id)self6 userActionData:(id)self7 recentStateInfo:(id)self8
{
  nameCopy = name;
  reasonCopy = reason;
  processNameCopy = processName;
  pathCopy = path;
  dataCopy = data;
  infoCopy = info;
  v50.receiver = self;
  v50.super_class = HTHangInfo;
  v28 = [(HTHangInfo *)&v50 init];
  if (v28)
  {
    v46 = infoCopy;
    endTimeCopy = endTime;
    v30 = objc_alloc_init(NSUUID);
    uUIDString = [v30 UUIDString];
    hangUUID = v28->_hangUUID;
    v28->_hangUUID = uUIDString;

    v28->_pid = pid;
    v28->_tid = d;
    v28->_startTime = time;
    v28->_endTime = endTimeCopy;
    v28->_reportedTime = reportedTime;
    v28->_blownFenceID = iD;
    v28->_hangSubType = subtype;
    v28->_isFirstPartyApp = app;
    v28->_isThirdPartyDevSupportModeHang = hang;
    infoCopy = v46;
    v28->_displayedInHUD = uD;
    v33 = [nameCopy copy];
    serviceName = v28->_serviceName;
    v28->_serviceName = v33;

    v35 = [reasonCopy copy];
    reason = v28->_reason;
    v28->_reason = v35;

    v37 = [processNameCopy copy];
    processName = v28->_processName;
    v28->_processName = v37;

    v39 = [pathCopy copy];
    processPath = v28->_processPath;
    v28->_processPath = v39;

    v41 = [dataCopy copy];
    userActionData = v28->_userActionData;
    v28->_userActionData = v41;

    v43 = [v46 copy];
    recentStateInfo = v28->_recentStateInfo;
    v28->_recentStateInfo = v43;
  }

  return v28;
}

+ (double)getHangWaitTimeout
{
  v2 = mach_absolute_time();
  v3 = [HTProcessInfo getEarliestPendingHangStartTime:v2];
  if (v3 >= qword_1000679C0)
  {
    v4 = qword_1000679C0;
  }

  else
  {
    v4 = v3;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = qword_1000679C0;
  }

  if (qword_1000679C0)
  {
    v6 = qword_1000679C8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = sub_100003824();
    v8 = 0.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100031774(v7);
    }
  }

  else
  {
    v9 = v3;
    if (v2 >= v5)
    {
      if (v2 >= qword_1000679C8)
      {
        if (v2 >= v3)
        {
          v10 = sub_1000024F8(v2 - v5);
          v11 = sub_1000024F8(v2 - qword_1000679C8);
          v12 = +[HTPrefs sharedPrefs];
          hangWaitTimeoutDurationMSec = [v12 hangWaitTimeoutDurationMSec];

          v14 = 0.0;
          v15 = 0.0;
          if (v10 < hangWaitTimeoutDurationMSec)
          {
            v16 = +[HTPrefs sharedPrefs];
            v15 = [v16 hangWaitTimeoutDurationMSec] - v10;
          }

          v17 = 0.0;
          if (v9)
          {
            v17 = sub_1000024F8(v2 - v9);
            if (v15 + v17 >= 500.0)
            {
              v14 = v15;
            }

            else
            {
              v14 = 0.0;
            }
          }

          v18 = 0.0;
          v19 = 0.0;
          if (qword_1000679A0 > v2)
          {
            v19 = sub_1000024F8(qword_1000679A0 - v2);
          }

          v20 = +[HTPrefs sharedPrefs];
          consecutiveHangWaitTimeoutDurationMSec = [v20 consecutiveHangWaitTimeoutDurationMSec];

          if (v11 < consecutiveHangWaitTimeoutDurationMSec)
          {
            v22 = +[HTPrefs sharedPrefs];
            consecutiveHangWaitTimeoutDurationMSec2 = [v22 consecutiveHangWaitTimeoutDurationMSec];

            if (v15 >= 250.0)
            {
              if (consecutiveHangWaitTimeoutDurationMSec2 - v11 <= v15 + -250.0)
              {
                v18 = consecutiveHangWaitTimeoutDurationMSec2 - v11;
              }

              else
              {
                v18 = v15 + -250.0;
              }
            }
          }

          if (v14 >= v19)
          {
            v24 = v14;
          }

          else
          {
            v24 = v19;
          }

          if (v24 < v18)
          {
            v24 = v18;
          }

          if (v24 <= v15)
          {
            v8 = v24;
          }

          else
          {
            v8 = v15;
          }

          v7 = sub_100003824();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 134219776;
            v27 = v8;
            v28 = 2048;
            v29 = v10;
            v30 = 2048;
            v31 = v17;
            v32 = 2048;
            v33 = v11;
            v34 = 2048;
            v35 = v15;
            v36 = 2048;
            v37 = v14;
            v38 = 2048;
            v39 = v19;
            v40 = 2048;
            v41 = v18;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getHangWaitTimeout: waitTimeMS=%.0fms, timeSinceEarliestHangStartMS=%.0fms, timeSinceEarliestPendingHangStartMS=%.0fms, timeSinceLastHangReportedMS=%.0fms, maxRemainingWaitTimeMS=%.0fms, timeToWaitForPendingHangsMs=%.0fms, timeToWaitForHangsThatEndsInTheFutureMS=%.0fms, timeToWaitForConsecutiveHangsMS=%.0fms", &v26, 0x52u);
          }
        }

        else
        {
          v7 = sub_100003824();
          v8 = 0.0;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
          {
            sub_100031618();
          }
        }
      }

      else
      {
        v7 = sub_100003824();
        v8 = 0.0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100031680(v2, v7);
        }
      }
    }

    else
    {
      v7 = sub_100003824();
      v8 = 0.0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10003170C();
      }
    }
  }

  return v8;
}

@end