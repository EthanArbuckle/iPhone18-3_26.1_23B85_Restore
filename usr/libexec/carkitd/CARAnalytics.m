@interface CARAnalytics
+ (BOOL)shouldRecordAnalyticsEvents;
+ (id)sharedInstance;
+ (int64_t)calendarUnitsOfType:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5;
- (CARAnalytics)init;
- (id)_CARCoreAnalyticsEventNameForEvent:(unint64_t)a3;
- (void)DNDEndedWithTrigger:(int)a3 vehicleHints:(unint64_t)a4 context:(id)a5;
- (void)DNDStartedWithTrigger:(int)a3 vehicleHints:(unint64_t)a4;
- (void)_prepareConnectionTTRDraftWithConnectionSession:(id)a3 withAdditionalDescription:(id)a4 completionHandler:(id)a5;
- (void)_sendAnalyticsErrorWithDouble:(double)a3 endDate:(double)a4 errorCategory:(id)a5;
- (void)_sendAnalyticsErrorWithNSDate:(id)a3 endDate:(id)a4 errorCategory:(id)a5;
- (void)_wiredReconnectEnded;
- (void)_wirelessReconnectEnded;
- (void)navigationOwnershipEndedWithMaximumConcurrentCount:(unint64_t)a3;
- (void)reconnectEndedOnTransport:(unint64_t)a3;
- (void)sendEvent:(unint64_t)a3 withDictionary:(id)a4;
- (void)sendPreviousSessionData:(id)a3;
- (void)userCreatedWirelessPairingWithSource:(id)a3 payload:(id)a4;
- (void)userIndicatedNotDrivingWithReason:(id)a3;
- (void)wiredSessionEnded;
- (void)wirelessReconnectCancelled;
- (void)wirelessReconnectStarted;
- (void)wirelessSessionEndedWithPayload:(id)a3;
@end

@implementation CARAnalytics

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FC88;
  block[3] = &unk_1000DD698;
  block[4] = a1;
  if (qword_100108030 != -1)
  {
    dispatch_once(&qword_100108030, block);
  }

  v2 = qword_100108028;

  return v2;
}

- (CARAnalytics)init
{
  v3.receiver = self;
  v3.super_class = CARAnalytics;
  result = [(CARAnalytics *)&v3 init];
  if (result)
  {
    result->_driveStartTimeInterval = 0.0;
  }

  return result;
}

- (void)DNDStartedWithTrigger:(int)a3 vehicleHints:(unint64_t)a4
{
  if ([(CARAnalytics *)self isCurrentlyDriving])
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not recording start event - we were already driving?", v13, 2u);
    }

    goto LABEL_25;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_driveStartTimeInterval = v8;
  self->_isCurrentlyDriving = 1;
  if (a4)
  {
    v9 = +[NSMutableArray array];
    v10 = v9;
    if (a4)
    {
      [v9 addObject:@"Motion"];
      if ((a4 & 2) == 0)
      {
LABEL_7:
        if ((a4 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_7;
    }

    [v10 addObject:@"GPS"];
    if ((a4 & 4) == 0)
    {
LABEL_8:
      if ((a4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v10 addObject:@"Baseband"];
    if ((a4 & 8) == 0)
    {
LABEL_9:
      if ((a4 & 0x10) == 0)
      {
LABEL_11:
        if ([v10 count])
        {
          v7 = [v10 componentsJoinedByString:@""];;
        }

        else
        {
          v7 = @"None";
        }

        goto LABEL_21;
      }

LABEL_10:
      [v10 addObject:@"Bluetooth"];
      goto LABEL_11;
    }

LABEL_17:
    [v10 addObject:@"Wi-Fi"];
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = @"None";
LABEL_21:
  v14[0] = @"Trigger";
  if ((a3 - 1) > 5)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = *(&off_1000E0088 + (a3 - 1));
  }

  v14[1] = @"Hints";
  v15[0] = v11;
  v15[1] = v7;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(CARAnalytics *)self sendEvent:0 withDictionary:v12];

LABEL_25:
}

- (void)DNDEndedWithTrigger:(int)a3 vehicleHints:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  if ([(CARAnalytics *)self isCurrentlyDriving])
  {
    if (!a4)
    {
      v11 = @"None";
LABEL_22:
      self->_isCurrentlyDriving = 0;
      [(CARAnalytics *)self driveStartTimeInterval];
      v13 = 0.0;
      if (v14 >= 1.0)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v16 = v15;
        [(CARAnalytics *)self driveStartTimeInterval];
        v13 = v16 - v17;
      }

      [(CARAnalytics *)self setDriveStartTimeInterval:0.0];
      v18 = +[NSMutableDictionary dictionary];
      v19 = v18;
      if ((a3 - 1) > 5)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = *(&off_1000E0088 + (a3 - 1));
      }

      [v18 setObject:v20 forKeyedSubscript:@"Trigger"];
      v21 = [NSNumber numberWithDouble:v13];
      [v19 setObject:v21 forKeyedSubscript:@"Duration"];

      [v19 setObject:v11 forKeyedSubscript:@"Hints"];
      if (v8)
      {
        [v19 setObject:v8 forKeyedSubscript:@"Context"];
      }

      [(CARAnalytics *)self sendEvent:1 withDictionary:v19];

      goto LABEL_30;
    }

    v9 = +[NSMutableArray array];
    v10 = v9;
    if (a4)
    {
      [v9 addObject:@"Motion"];
      if ((a4 & 2) == 0)
      {
LABEL_5:
        if ((a4 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_5;
    }

    [v10 addObject:@"GPS"];
    if ((a4 & 4) == 0)
    {
LABEL_6:
      if ((a4 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v10 addObject:@"Baseband"];
    if ((a4 & 8) == 0)
    {
LABEL_7:
      if ((a4 & 0x10) == 0)
      {
LABEL_9:
        if ([v10 count])
        {
          v11 = [v10 componentsJoinedByString:@""];;
        }

        else
        {
          v11 = @"None";
        }

        goto LABEL_22;
      }

LABEL_8:
      [v10 addObject:@"Bluetooth"];
      goto LABEL_9;
    }

LABEL_18:
    [v10 addObject:@"Wi-Fi"];
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = CarDNDWDLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not recording end event - we weren't driving?", v22, 2u);
  }

LABEL_30:
}

- (void)wirelessReconnectStarted
{
  v3 = [(CARAnalytics *)self wirelessReconnectStartDate];

  if (v3)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignoring wireless reconnect start; already started.", buf, 2u);
    }
  }

  else
  {
    v7 = +[NSDate date];
    [(CARAnalytics *)self setWirelessReconnectStartDate:v7];
    v5 = [CARConnectionEvent eventWithName:CARCarKitAttemptingConnectionEvent type:4 date:v7 payload:0];
    connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
    if (connectionTimeServiceAgent)
    {
      [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent recordConnectionEvent:v5 completion:&stru_1000DFF28];
    }
  }
}

- (void)wirelessReconnectCancelled
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resetting wireless reconnect timestamp.", v4, 2u);
  }

  [(CARAnalytics *)self setWirelessReconnectStartDate:0];
  [(CARAnalytics *)self setWirelessReconnectEndDate:0];
  [(CARAnalytics *)self setAirplayScreenDisplayingTimes:0];
}

- (void)_wirelessReconnectEnded
{
  v3 = [(CARAnalytics *)self wirelessReconnectEndDate];

  if (v3)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignoring wireless reconnect end; already ended.", &v13, 2u);
    }
  }

  else
  {
    v4 = +[NSDate date];
    [(CARAnalytics *)self setWirelessReconnectEndDate:v4];
    v5 = +[NSDate date];
    v6 = [(CARAnalytics *)self wirelessReconnectStartDate];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithDouble:v8];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless reconnect ended. Observed reconnection time: %@", &v13, 0xCu);
    }

    v11 = [CARConnectionEvent eventWithName:CARCarKitConnectionSessionEndEvent type:4 date:v4 payload:0];
    connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
    if (connectionTimeServiceAgent)
    {
      [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent recordConnectionEvent:v11 completion:&stru_1000DFF48];
    }

    [(CARAnalytics *)self setAirplayScreenDisplayingTimes:0];
  }
}

- (void)_wiredReconnectEnded
{
  v3 = CARCarKitConnectionSessionEndEvent;
  v4 = +[NSDate date];
  v6 = [CARConnectionEvent eventWithName:v3 type:4 date:v4 payload:0];

  connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
  if (connectionTimeServiceAgent)
  {
    [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent recordConnectionEvent:v6 completion:&stru_1000DFF68];
  }

  [(CARAnalytics *)self setAirplayScreenDisplayingTimes:0];
}

- (void)reconnectEndedOnTransport:(unint64_t)a3
{
  if (a3 == 3)
  {
    [(CARAnalytics *)self _wirelessReconnectEnded];
  }

  else
  {
    [(CARAnalytics *)self _wiredReconnectEnded];
  }
}

- (void)wirelessSessionEndedWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(CARAnalytics *)self wirelessReconnectStartDate];

  if (!v5)
  {
    v8 = CarGeneralLogging();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(location[0]) = 0;
    v18 = "No available wireless reconnect start time.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v18, location, 2u);
    goto LABEL_13;
  }

  v6 = [(CARAnalytics *)self wirelessReconnectEndDate];

  if (!v6)
  {
    v8 = CarGeneralLogging();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(location[0]) = 0;
    v18 = "No available wireless reconnect end time.";
    goto LABEL_12;
  }

  v7 = [(CARAnalytics *)self airplayScreenDisplayingTimes];
  v8 = [v7 copy];

  v9 = [(CARAnalytics *)self wirelessReconnectEndDate];
  v10 = [(CARAnalytics *)self wirelessReconnectStartDate];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  [(CARAnalytics *)self wirelessReconnectCancelled];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v4];
  v14 = [NSNumber numberWithDouble:v12];
  [v13 setObject:v14 forKeyedSubscript:@"reconnectionTime"];

  v15 = [(CARAnalytics *)self wifiChannel];

  if (v15)
  {
    v16 = [(CARAnalytics *)self wifiChannel];
    [v13 setObject:v16 forKeyedSubscript:@"wifiChannel"];
  }

  if (self->_connectionTimeServiceAgent)
  {
    objc_initWeak(location, self);
    connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100070D04;
    v19[3] = &unk_1000E0020;
    objc_copyWeak(&v22, location);
    v20 = v13;
    v21 = v8;
    [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent fetchConnectionSessions:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

LABEL_13:
}

- (void)wiredSessionEnded
{
  objc_initWeak(&location, self);
  connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100072E04;
  v4[3] = &unk_1000E0048;
  objc_copyWeak(&v5, &location);
  [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent fetchConnectionSessions:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_sendAnalyticsErrorWithNSDate:(id)a3 endDate:(id)a4 errorCategory:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CarGeneralLogging();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v7 && v8)
  {
    if (v11)
    {
      sub_100089AB8();
    }
  }

  else if (v7)
  {
    if (v11)
    {
      sub_100089A48();
    }
  }

  else if (v11)
  {
    sub_1000899D8();
  }
}

- (void)_sendAnalyticsErrorWithDouble:(double)a3 endDate:(double)a4 errorCategory:(id)a5
{
  v7 = a5;
  v8 = CarGeneralLogging();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (a3 == 0.0 || a4 == 0.0)
  {
    if (a3 == 0.0)
    {
      if (v9)
      {
        sub_1000899D8();
      }
    }

    else if (v9)
    {
      sub_100089A48();
    }
  }

  else if (v9)
  {
    sub_100089AB8();
  }
}

- (void)sendPreviousSessionData:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 2)
  {
    objc_initWeak(&location, self);
    connectionTimeServiceAgent = self->_connectionTimeServiceAgent;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100074818;
    v6[3] = &unk_1000E0048;
    objc_copyWeak(&v7, &location);
    [(CARConnectionTimeServiceAgent *)connectionTimeServiceAgent fetchPreviousSessionConnectionDataWithReply:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)userCreatedWirelessPairingWithSource:(id)a3 payload:(id)a4
{
  v6 = a3;
  v14 = [NSMutableDictionary dictionaryWithDictionary:a4];
  [v14 setObject:v6 forKeyedSubscript:@"source"];

  if (self->_connectionTimeServiceAgent)
  {
    v7 = CARCarKitWirelessPairingCreatedEvent;
    v8 = +[NSDate date];
    v9 = [v14 copy];
    v10 = [CARConnectionEvent eventWithName:v7 type:4 date:v8 payload:v9];

    [(CARConnectionTimeServiceAgent *)self->_connectionTimeServiceAgent recordConnectionEvent:v10 completion:&stru_1000E0068];
  }

  if ([(CARAnalytics *)self carKeyPairingResult])
  {
    v11 = [(CARAnalytics *)self carKeyPairingResult];
    if (v11 > 4)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = *(&off_1000E0128 + v11);
    }
  }

  else
  {
    v12 = @"undefined";
  }

  [v14 setObject:v12 forKeyedSubscript:@"carKeyPairingResult"];
  v13 = +[CARAnalytics sharedInstance];
  [v13 setCarKeyPairingResult:0];

  [(CARAnalytics *)self sendEvent:6 withDictionary:v14];
}

- (void)userIndicatedNotDrivingWithReason:(id)a3
{
  v6 = @"Reason";
  v7 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [(CARAnalytics *)self sendEvent:4 withDictionary:v5];
}

- (void)navigationOwnershipEndedWithMaximumConcurrentCount:(unint64_t)a3
{
  v6 = @"ownerCount";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(CARAnalytics *)self sendEvent:5 withDictionary:v5];
}

- (void)sendEvent:(unint64_t)a3 withDictionary:(id)a4
{
  v6 = a4;
  if ([objc_opt_class() shouldRecordAnalyticsEvents])
  {
    v7 = [(CARAnalytics *)self _CARCoreAnalyticsEventNameForEvent:a3];
    v8 = CarDNDWDLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100089BAC();
    }

    AnalyticsSendEvent();
  }
}

- (id)_CARCoreAnalyticsEventNameForEvent:(unint64_t)a3
{
  if (a3 >= 0xA)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100089C20(a3);
    }

    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"com.apple.carexperience.%@", *(&off_1000E0150 + a3)];
  }

  return v4;
}

+ (int64_t)calendarUnitsOfType:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[NSCalendar currentCalendar];
  v19 = 0;
  [v9 rangeOfUnit:a3 startDate:&v19 interval:0 forDate:v8];

  v10 = v19;
  v18 = 0;
  [v9 rangeOfUnit:a3 startDate:&v18 interval:0 forDate:v7];

  v11 = v18;
  v12 = [v9 components:a3 fromDate:v10 toDate:v11 options:0];
  v13 = v12;
  switch(a3)
  {
    case 0x10uLL:
      v14 = [v12 day];
      goto LABEL_7;
    case 0x40uLL:
      v14 = [v12 minute];
      goto LABEL_7;
    case 0x80uLL:
      v14 = [v12 second];
LABEL_7:
      v15 = v14;
      goto LABEL_11;
  }

  v16 = CarGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100089CB0(a3);
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v15;
}

+ (BOOL)shouldRecordAnalyticsEvents
{
  v2 = CRIsTestContext();
  if (v2)
  {
    v3 = CarDNDWDLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not recording events due to testing context.", v5, 2u);
    }
  }

  return v2 ^ 1;
}

- (void)_prepareConnectionTTRDraftWithConnectionSession:(id)a3 withAdditionalDescription:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CRDiagnosticsService sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100075134;
  v12[3] = &unk_1000DD960;
  v13 = v7;
  v11 = v7;
  [v10 collectDiagnosticsWithSession:v9 displayReason:@"CarPlay connection took longer than expected. Gathering diagnostics" additionalDescription:v8 attachmentURLs:0 completionHandler:v12];
}

@end