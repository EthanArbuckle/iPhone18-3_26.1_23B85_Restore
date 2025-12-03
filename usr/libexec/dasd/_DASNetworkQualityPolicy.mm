@interface _DASNetworkQualityPolicy
+ (id)policyInstance;
+ (int64_t)currentNetworkQualityWithContext:(id)context interface:(int64_t *)interface;
- (BOOL)inDiscountedHoursAtDate:(id)date;
- (BOOL)inLowCongestionHoursAtDate:(id)date;
- (BOOL)isiCloudKeychainActivity:(id)activity;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (BOOL)unconstrainedNetworkAvailableForActivity:(id)activity withContext:(id)context withRationale:(id)rationale;
- (NSDictionary)discountedHours;
- (NSDictionary)lowCongestionHours;
- (_DASNetworkQualityPolicy)init;
- (double)predictedScoreForActivity:(id)activity atDate:(id)date;
- (double)scoreWithInexpensiveCellForActivity:(id)activity networkQuality:(int64_t)quality interface:(int64_t)interface radioHot:(BOOL)hot;
- (id)initializeCoreTelephonyClient;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
- (int)transferSizeIndex:(unint64_t)index;
- (int64_t)companionMinimumQualityForActivity:(id)activity interface:(int64_t)interface loiStatus:(int64_t)status;
- (void)clearOffPeakDiscountedHours;
- (void)loadCTInformationWithSDM:(BOOL)m;
- (void)parseCTCongestionHoursDictionary:(id)dictionary atDate:(id)date;
- (void)preferredDataSimChanged:(id)changed;
- (void)registerForPredictionChanges;
- (void)setDiscountedHours:(id)hours;
- (void)setLowCongestionHours:(id)hours;
- (void)updatePNWStatus:(BOOL)status;
- (void)updateSystemConstraintsWithContext:(id)context;
@end

@implementation _DASNetworkQualityPolicy

+ (id)policyInstance
{
  if (qword_10020B348 != -1)
  {
    sub_1001209F8();
  }

  v3 = qword_10020B350;

  return v3;
}

- (id)initializeTriggers
{
  v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_wifiStatus];
  v9 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_wiredStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_cellStatus];
  v15[0] = @"identifier";
  v15[1] = @"predicate";
  v16[0] = @"com.apple.duetactivityscheduler.nwstatus.wifi";
  v16[1] = v10;
  v15[2] = @"deviceSet";
  v15[3] = @"mustWake";
  v16[2] = &off_1001C9A78;
  v16[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v17[0] = v4;
  v13[0] = @"identifier";
  v13[1] = @"predicate";
  v14[0] = @"com.apple.duetactivityscheduler.nwstatus.wired";
  v14[1] = v9;
  v13[2] = @"deviceSet";
  v13[3] = @"mustWake";
  v14[2] = &off_1001C9A78;
  v14[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v17[1] = v5;
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.duetactivityscheduler.nwstatus.cell";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C9A78;
  v12[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v17[2] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:3];

  return v7;
}

- (void)registerForPredictionChanges
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_wifiStatus];

  v5 = +[_CDNetworkContext predictionKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_storeStrong(&self->_wifiPredictionTimeline, v6);
  v7 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10012078C();
  }

  [(_DASPredictionManager *)self->_predictionManager setObject:v6 forKeyedSubscript:@"wifiPredictions"];
  v8 = +[_DASPLLogger sharedInstance];
  [v8 recordPrediction:v6 key:@"wiFiAssociatedPrediction" valueMultiplier:1];

  v9 = +[_CDClientContext userContext];
  v10 = [v9 objectForKeyedSubscript:self->_cellStatus];

  v11 = +[_CDNetworkContext predictionKey];
  v12 = [v10 objectForKeyedSubscript:v11];

  objc_storeStrong(&self->_cellPredictionTimeline, v12);
  v13 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100120800();
  }

  [(_DASPredictionManager *)self->_predictionManager setObject:v12 forKeyedSubscript:@"cellPredictions"];
  v14 = +[_DASPLLogger sharedInstance];
  [v14 recordPrediction:v12 key:@"cellQualityPrediction" valueMultiplier:1];

  v15 = +[_CDContextPredictionQueries keyPathForWiFiQualityPrediction];
  v16 = [_CDContextualPredicate predicateForChangeAtKeyPath:v15];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100064664;
  v25[3] = &unk_1001B6B50;
  v25[4] = self;
  v26 = v15;
  v17 = v15;
  v18 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.duetactivityscheduler.wifiqualityprediction" contextualPredicate:v16 callback:v25];

  [(_CDContext *)self->_userContext registerCallback:v18];
  v19 = +[_CDContextPredictionQueries keyPathForCellQualityPrediction];
  v20 = [_CDContextualPredicate predicateForChangeAtKeyPath:v19];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100064774;
  v23[3] = &unk_1001B6B50;
  v23[4] = self;
  v24 = v19;
  v21 = v19;
  v22 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.duetactivityscheduler.cellqualityprediction" contextualPredicate:v20 callback:v23];

  [(_CDContext *)self->_userContext registerCallback:v22];
}

- (_DASNetworkQualityPolicy)init
{
  v32.receiver = self;
  v32.super_class = _DASNetworkQualityPolicy;
  v2 = [(_DASNetworkQualityPolicy *)&v32 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Network Quality Policy";

    v5 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
    wifiStatus = v3->_wifiStatus;
    v3->_wifiStatus = v5;

    v7 = +[_DASNetworkEvaluationMonitor sharedInstance];
    networkEvaluator = v3->_networkEvaluator;
    v3->_networkEvaluator = v7;

    v9 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v9;

    v11 = +[_CDClientContext userContext];
    userContext = v3->_userContext;
    v3->_userContext = v11;

    v13 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
    wiredStatus = v3->_wiredStatus;
    v3->_wiredStatus = v13;

    v15 = +[_CDNetworkContext keyPathForCellConnectionStatus];
    cellStatus = v3->_cellStatus;
    v3->_cellStatus = v15;

    initializeTriggers = [(_DASNetworkQualityPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    [(_DASNetworkQualityPolicy *)v3 clearOffPeakDiscountedHours];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.dasd.networkqualitypolicy.telephony", v19);
    telephonyQueue = v3->_telephonyQueue;
    v3->_telephonyQueue = v20;

    initializeCoreTelephonyClient = [(_DASNetworkQualityPolicy *)v3 initializeCoreTelephonyClient];
    v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_telephonyQueue);
    refreshHoursTimer = v3->_refreshHoursTimer;
    v3->_refreshHoursTimer = v23;

    v25 = v3->_refreshHoursTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100064AC4;
    handler[3] = &unk_1001B5668;
    v26 = v3;
    v31 = v26;
    dispatch_source_set_event_handler(v25, handler);
    v27 = v3->_refreshHoursTimer;
    v28 = dispatch_walltime(0, 21600000000000);
    dispatch_source_set_timer(v27, v28, 0x13A52453C000uLL, 0x3B9ACA00uLL);
    dispatch_activate(v3->_refreshHoursTimer);
    [(_DASNetworkQualityPolicy *)v26 loadCTInformationWithSDM:1];
  }

  return v3;
}

- (void)clearOffPeakDiscountedHours
{
  [(_DASNetworkQualityPolicy *)self setLowCongestionHours:&__NSDictionary0__struct];

  [(_DASNetworkQualityPolicy *)self setDiscountedHours:&__NSDictionary0__struct];
}

- (void)parseCTCongestionHoursDictionary:(id)dictionary atDate:(id)date
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  if (!qword_10020B340)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = qword_10020B340;
    qword_10020B340 = v8;
  }

  v10 = +[NSDate distantFuture];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"ExpirationDate"];
  if (v11)
  {
    v12 = objc_alloc_init(NSISO8601DateFormatter);
    v13 = [v12 dateFromString:v11];
    v14 = v13;
    if (v13)
    {
      v15 = dateCopy;
      v16 = v13;

      v17 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Expiration Date is %@", buf, 0xCu);
      }

      v10 = v16;
      dateCopy = v15;
    }
  }

  [v10 timeIntervalSinceDate:dateCopy];
  if (v18 >= 0.0)
  {
    v69 = v10;
    selfCopy = self;
    v71 = v11;
    v75 = [qword_10020B340 components:540 fromDate:dateCopy];
    v72 = dictionaryCopy;
    v73 = [dictionaryCopy objectForKeyedSubscript:@"TimeWindows"];
    v20 = +[NSMutableDictionary dictionary];
    v74 = +[NSMutableDictionary dictionary];
    v80 = objc_alloc_init(NSDateFormatter);
    [v80 setDateFormat:@"HH:mm:SS"];
    v21 = 0;
    v78 = v20;
    v77 = dateCopy;
    do
    {
      v76 = v21;
      v22 = (v21 + [v75 weekday] - 1) % 7;
      v23 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
      v24 = [v73 objectForKeyedSubscript:v23];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v24;
      v85 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v85)
      {
        v83 = v22;
        v84 = *v88;
        do
        {
          for (i = 0; i != v85; i = i + 1)
          {
            if (*v88 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v87 + 1) + 8 * i);
            v27 = [v26 objectForKeyedSubscript:@"WindowType"];
            v28 = [v26 objectForKeyedSubscript:@"StartTime"];
            v29 = [v26 objectForKeyedSubscript:@"EndTime"];
            v30 = v29;
            if (v28)
            {
              v31 = v29 == 0;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              v32 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                [&off_1001CAD98 objectAtIndexedSubscript:v22];
                v33 = v20;
                v34 = dateCopy;
                v36 = v35 = v27;
                *buf = 138412802;
                v92 = v36;
                v93 = 2112;
                v94 = v28;
                v95 = 2112;
                v96 = v30;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Error reading times for %@ (%@-%@)", buf, 0x20u);

                v27 = v35;
                dateCopy = v34;
                v20 = v33;
                v22 = v83;
              }
            }

            else
            {
              v86 = v27;
              v37 = [v80 dateFromString:v28];
              v38 = [v80 dateFromString:v30];
              v39 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
              v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
              if (v37)
              {
                v41 = v38 == 0;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                if (v40)
                {
                  v42 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
                  *buf = 138412802;
                  v92 = v42;
                  v93 = 2112;
                  v94 = v28;
                  v95 = 2112;
                  v96 = v30;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Error parsing times for %@ (%@-%@)", buf, 0x20u);
                }

                v32 = v37;
                v27 = v86;
              }

              else
              {
                if (v40)
                {
                  v43 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
                  *buf = 138413058;
                  v92 = v86;
                  v93 = 2112;
                  v94 = v28;
                  v95 = 2112;
                  v96 = v30;
                  v97 = 2112;
                  v98 = v43;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@ hours are %@-%@ for %@", buf, 0x2Au);
                }

                v39 = [v75 copy];
                -[NSObject setDay:](v39, "setDay:", [v75 day] + v76);
                -[NSObject setHour:](v39, "setHour:", [qword_10020B340 component:32 fromDate:v37]);
                -[NSObject setMinute:](v39, "setMinute:", [qword_10020B340 component:64 fromDate:v37]);
                -[NSObject setSecond:](v39, "setSecond:", [qword_10020B340 component:128 fromDate:v37]);
                v32 = [qword_10020B340 dateFromComponents:v39];

                -[NSObject setHour:](v39, "setHour:", [qword_10020B340 component:32 fromDate:v38]);
                -[NSObject setMinute:](v39, "setMinute:", [qword_10020B340 component:64 fromDate:v38]);
                -[NSObject setSecond:](v39, "setSecond:", [qword_10020B340 component:128 fromDate:v38]);
                v44 = [qword_10020B340 dateFromComponents:v39];

                [v44 timeIntervalSinceDate:v32];
                if (v45 >= 0.0)
                {
                  v38 = v44;
                }

                else
                {
                  v38 = [v44 dateByAddingTimeInterval:86400.0];
                }

                [v38 timeIntervalSinceDate:v32];
                v47 = round(v46 * 0.5);
                if (v47 > 10800.0)
                {
                  v47 = 10800.0;
                }

                v48 = [v32 dateByAddingTimeInterval:arc4random_uniform(fmax(v47, 0.0))];
                [dateCopy timeIntervalSinceDate:v38];
                v50 = v49;
                v51 = [NSDateInterval alloc];
                v52 = v51;
                v79 = v48;
                if (v50 <= 0.0)
                {
                  v82 = [v51 initWithStartDate:v48 endDate:v38];
                }

                else
                {
                  [v48 dateByAddingTimeInterval:604800.0];
                  v54 = v53 = dateCopy;
                  v55 = [v38 dateByAddingTimeInterval:604800.0];
                  v82 = [v52 initWithStartDate:v54 endDate:v55];

                  dateCopy = v53;
                }

                v27 = v86;
                v20 = v78;
                if (([v86 isEqualToString:@"OffPeak"] & 1) != 0 || objc_msgSend(v86, "isEqualToString:", @"DiscountedRateAndOffPeak"))
                {
                  v56 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  v57 = [v78 objectForKeyedSubscript:v56];

                  if (!v57)
                  {
                    v57 = +[NSMutableArray array];
                  }

                  [v57 addObject:v82];
                  v58 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  [v78 setObject:v57 forKeyedSubscript:v58];

                  v20 = v78;
                  dateCopy = v77;
                  v27 = v86;
                }

                if (([v27 isEqualToString:@"DiscountedRate"] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", @"DiscountedRateAndOffPeak"))
                {
                  v59 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  v60 = [v74 objectForKeyedSubscript:v59];

                  if (!v60)
                  {
                    v60 = +[NSMutableArray array];
                  }

                  [v60 addObject:v82];
                  v61 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  [v74 setObject:v60 forKeyedSubscript:v61];

                  v20 = v78;
                  dateCopy = v77;
                  v27 = v86;
                }

                v22 = v83;
              }
            }
          }

          v85 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
        }

        while (v85);
      }

      v21 = v76 + 1;
    }

    while (v76 != 6);
    v62 = [v20 copy];
    [(_DASNetworkQualityPolicy *)selfCopy setLowCongestionHours:v62];

    v63 = [v74 copy];
    [(_DASNetworkQualityPolicy *)selfCopy setDiscountedHours:v63];

    v64 = [dateCopy dateByAddingTimeInterval:21600.0];
    v10 = v69;
    v65 = [v69 earlierDate:v64];

    refreshHoursTimer = selfCopy->_refreshHoursTimer;
    [v65 timeIntervalSinceDate:dateCopy];
    v68 = dispatch_walltime(0, (v67 * 1000000000.0 + 1.0e10));
    dispatch_source_set_timer(refreshHoursTimer, v68, 0x13A52453C000uLL, 0x2540BE400uLL);

    v11 = v71;
    dictionaryCopy = v72;
  }

  else
  {
    v19 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Expiration Date in the past (%@). Exiting", buf, 0xCu);
    }

    [(_DASNetworkQualityPolicy *)self clearOffPeakDiscountedHours];
  }
}

- (id)initializeCoreTelephonyClient
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (!coreTelephonyClient)
  {
    v4 = [[CoreTelephonyClient alloc] initWithQueue:self->_telephonyQueue];
    v5 = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v4;

    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
    coreTelephonyClient = self->_coreTelephonyClient;
  }

  return coreTelephonyClient;
}

- (void)loadCTInformationWithSDM:(BOOL)m
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065720;
  v4[3] = &unk_1001B6BA0;
  v4[4] = self;
  mCopy = m;
  [(CoreTelephonyClient *)coreTelephonyClient getPreferredDataSubscriptionContext:v4];
}

- (void)updatePNWStatus:(BOOL)status
{
  if (status)
  {
    objc_initWeak(&location, self);
    coreTelephonyClient = self->_coreTelephonyClient;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100065BD0;
    v5[3] = &unk_1001B6BC8;
    objc_copyWeak(&v6, &location);
    [(CoreTelephonyClient *)coreTelephonyClient isPrivateNetworkSIM:0 completion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_privateNetworkCellConnection = 0;
  }
}

- (BOOL)inLowCongestionHoursAtDate:(id)date
{
  dateCopy = date;
  v5 = qword_10020B340;
  if (!qword_10020B340)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = qword_10020B340;
    qword_10020B340 = v6;

    v5 = qword_10020B340;
  }

  v8 = [v5 component:512 fromDate:dateCopy];
  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v10 = (v9 + v10 + 7) % 7;
    lowCongestionHours = [(_DASNetworkQualityPolicy *)self lowCongestionHours];
    v14 = [NSNumber numberWithInteger:v10 + 1];
    v15 = [lowCongestionHours objectForKeyedSubscript:v14];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v23 + 1) + 8 * i) containsDate:dateCopy])
          {

            v21 = 1;
            goto LABEL_15;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
    v21 = 0;
    v9 = -1;
  }

  while ((v12 & 1) != 0);
LABEL_15:

  return v21;
}

- (BOOL)inDiscountedHoursAtDate:(id)date
{
  dateCopy = date;
  v5 = qword_10020B340;
  if (!qword_10020B340)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = qword_10020B340;
    qword_10020B340 = v6;

    v5 = qword_10020B340;
  }

  v8 = [v5 component:512 fromDate:dateCopy];
  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v10 = (v9 + v10 + 7) % 7;
    discountedHours = [(_DASNetworkQualityPolicy *)self discountedHours];
    v14 = [NSNumber numberWithInteger:v10 + 1];
    v15 = [discountedHours objectForKeyedSubscript:v14];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v23 + 1) + 8 * i) containsDate:dateCopy])
          {

            v21 = 1;
            goto LABEL_15;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
    v21 = 0;
    v9 = -1;
  }

  while ((v12 & 1) != 0);
LABEL_15:

  return v21;
}

+ (int64_t)currentNetworkQualityWithContext:(id)context interface:(int64_t *)interface
{
  contextCopy = context;
  v6 = [_CDNetworkContext wiredQuality:contextCopy];
  if (v6 < 1)
  {
    v9 = [_CDNetworkContext wifiQuality:contextCopy];
    if (v9)
    {
      v7 = v9;
      if (interface)
      {
        v8 = [_CDNetworkContext wifiInterfaceClass:contextCopy];
        goto LABEL_7;
      }
    }

    else
    {
      if (interface)
      {
        *interface = [_CDNetworkContext cellInterfaceClass:contextCopy];
      }

      v7 = [_CDNetworkContext cellQuality:contextCopy];
    }
  }

  else
  {
    v7 = v6;
    if (interface)
    {
      v8 = [_CDNetworkContext wiredInterfaceClass:contextCopy];
LABEL_7:
      *interface = v8;
    }
  }

  return v7;
}

- (void)updateSystemConstraintsWithContext:(id)context
{
  contextCopy = context;
  v4 = [_CDNetworkContext wiredQuality:contextCopy];
  v5 = [_CDNetworkContext wifiQuality:contextCopy];
  v6 = [_CDNetworkContext cellQuality:contextCopy];

  v9 = +[_DASDaemon sharedInstance];
  if (v5 > 20 || v4 >= 21)
  {
    [v9 removeConstraint:16 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
    [v9 removeConstraint:16 forSchedulingPriority:_DASSchedulingPriorityUtility];
    v8 = _DASSchedulingPriorityMaintenance;
LABEL_7:
    [v9 removeConstraint:32 forSchedulingPriority:v8];
    [v9 removeConstraint:32 forSchedulingPriority:_DASSchedulingPriorityUtility];
    goto LABEL_9;
  }

  [v9 addConstraint:16 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  [v9 addConstraint:16 forSchedulingPriority:_DASSchedulingPriorityUtility];
  v8 = _DASSchedulingPriorityMaintenance;
  if (v6 >= 21)
  {
    goto LABEL_7;
  }

  [v9 addConstraint:32 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  [v9 addConstraint:32 forSchedulingPriority:_DASSchedulingPriorityUtility];
LABEL_9:
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  v8 = [_CDNetworkContext wiredQuality:stateCopy];
  v9 = [_CDNetworkContext wifiQuality:stateCopy];
  v10 = [_CDNetworkContext cellQuality:stateCopy];
  v11 = [_CDNetworkContext cellInterfaceUp:stateCopy];
  v12 = v9 > 0 || v10 < 1;
  v13 = !v12 && ((byte_10020B358 & 1) != 0 || byte_10020B359 != 1);
  [(_DASNetworkQualityPolicy *)self updatePNWStatus:v13];
  byte_10020B359 = v10 > 0;
  byte_10020B358 = v9 > 0;
  [(_DASNetworkQualityPolicy *)self updateSystemConstraintsWithContext:stateCopy];
  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.wired"])
  {
    v14 = v8 < 21;
LABEL_16:
    v16 = v14;
    goto LABEL_27;
  }

  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.wifi"])
  {
    v15 = +[_DASPLLogger sharedInstance];
    [v15 reportNewStatus:v9 > 20 forTrigger:off_10020ACD8];

    v14 = v8 > 20 || v9 < 21;
    goto LABEL_16;
  }

  v17 = [triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.cell"];
  v18 = (v10 < 21) | v11 ^ 1;
  if (v9 > 20)
  {
    v18 = 1;
  }

  if (v8 <= 20)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (v17)
  {
    v16 = v19;
  }

  else
  {
    v16 = 0;
  }

LABEL_27:

  return v16 & 1;
}

- (int64_t)companionMinimumQualityForActivity:(id)activity interface:(int64_t)interface loiStatus:(int64_t)status
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority >= _DASSchedulingPriorityUserInitiated)
  {
    v10 = 20;
  }

  else
  {
    deferred = [activityCopy deferred];
    v10 = 20;
    if (interface != 3 && (deferred & 1) == 0)
    {
      if (interface == 1)
      {
        startBefore = [activityCopy startBefore];
        [startBefore timeIntervalSinceNow];
        if (v12 < 0.0)
        {

LABEL_20:
          v10 = 50;
          goto LABEL_26;
        }

        requestsImmediateRuntime = [activityCopy requestsImmediateRuntime];

        if (requestsImmediateRuntime)
        {
          goto LABEL_20;
        }

        transferSize = [activityCopy transferSize];
        transferSize2 = transferSize;
        if (status == 1 && transferSize < _DASActivityTransferSizeLarge)
        {
          goto LABEL_20;
        }
      }

      else
      {
        transferSize2 = [activityCopy transferSize];
      }

      schedulingPriority2 = [activityCopy schedulingPriority];
      if (schedulingPriority2 > _DASSchedulingPriorityMaintenance || ([activityCopy launchReason], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", _DASLaunchReasonBackgroundRemoteNotification), v15, (v16 & 1) != 0))
      {
LABEL_11:
        schedulingPriority3 = [activityCopy schedulingPriority];
        if (schedulingPriority3 > _DASSchedulingPriorityUtility || (interface != 2 || transferSize2 < _DASActivityTransferSizeLarge) && (interface != 1 || transferSize2 < _DASActivityTransferSizeVeryLarge))
        {
          goto LABEL_20;
        }

LABEL_25:
        v10 = 100;
        goto LABEL_26;
      }

      noTransferSizeSpecified = [activityCopy noTransferSizeSpecified];
      v10 = 100;
      if (interface != 2 && (noTransferSizeSpecified & 1) == 0)
      {
        if (interface == 1 && transferSize2 > _DASActivityTransferSizeLarge)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_26:

  return v10;
}

- (int)transferSizeIndex:(unint64_t)index
{
  if (_DASActivityTransferSizeVerySmall >= index)
  {
    return 0;
  }

  if (_DASActivityTransferSizeSmall >= index)
  {
    return 1;
  }

  if (_DASActivityTransferSizeModerate >= index)
  {
    return 2;
  }

  if (_DASActivityTransferSizeLarge >= index)
  {
    return 3;
  }

  if (_DASActivityTransferSizeVeryLarge >= index)
  {
    return 4;
  }

  return 5;
}

- (double)scoreWithInexpensiveCellForActivity:(id)activity networkQuality:(int64_t)quality interface:(int64_t)interface radioHot:(BOOL)hot
{
  result = 0.0;
  if (quality >= 50)
  {
    hotCopy = hot;
    v11 = -[_DASNetworkQualityPolicy transferSizeIndex:](self, "transferSizeIndex:", [activity transferSize]);
    v12 = v11;
    if (interface == 1)
    {
      v13 = quality != 100;
      v14 = &unk_100158AD8 + 16 * v11;
    }

    else
    {
      if (+[_DASNetworkEvaluationMonitor inexpensivePathAvailable])
      {
        v15 = (&unk_100158BF8 + 64 * v12 + 32 * [(_DASNetworkQualityPolicy *)self smartDataModeEnabled]+ 16 * hotCopy + 8 * (quality != 100));
        return *v15;
      }

      v13 = quality != 100;
      v14 = &unk_100158B38 + 32 * v12 + 16 * hotCopy;
    }

    v15 = &v14[8 * v13];
    return *v15;
  }

  return result;
}

- (BOOL)isiCloudKeychainActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requiresNetwork])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    relatedApplications = [activityCopy relatedApplications];
    v5 = [relatedApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(relatedApplications);
          }

          lowercaseString = [*(*(&v13 + 1) + 8 * i) lowercaseString];
          if ([lowercaseString containsString:@"securityd"])
          {

LABEL_15:
            v11 = 1;
            goto LABEL_16;
          }

          v10 = [lowercaseString containsString:@"trustedpeershelper"];

          if (v10)
          {
            goto LABEL_15;
          }
        }

        v6 = [relatedApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
        v11 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)unconstrainedNetworkAvailableForActivity:(id)activity withContext:(id)context withRationale:(id)rationale
{
  activityCopy = activity;
  contextCopy = context;
  rationaleCopy = rationale;
  v11 = +[_DASNetworkEvaluationMonitor sharedInstance];
  v12 = [v11 isUnconstrainedPathAvailableForActivity:activityCopy];

  if (v12)
  {
    goto LABEL_9;
  }

  if ([activityCopy requiresUnconstrainedNetworking])
  {
    v13 = @"requiresUnconstrainedNetworking == YES";
LABEL_15:
    v21 = [NSPredicate predicateWithFormat:v13];
    [rationaleCopy addRationaleWithCondition:v21];

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if ([(_DASNetworkQualityPolicy *)self isiCloudKeychainActivity:activityCopy])
  {
    v14 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 67109120;
      LODWORD(v35) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "iCloudKeychainActivity=%u", &v34, 8u);
    }

    v15 = @"isiCloudKeychainActivity == YES";
LABEL_8:
    v16 = [NSPredicate predicateWithFormat:v15];
    [rationaleCopy addRationaleWithCondition:v16];

LABEL_9:
    v17 = 1;
    goto LABEL_17;
  }

  if ([_DASPhotosPolicy isiCPLActivity:activityCopy])
  {
    v18 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v19 = [contextCopy objectForKeyedSubscript:v18];
    unsignedIntegerValue = [v19 unsignedIntegerValue];

    if ((unsignedIntegerValue & 0x10) != 0)
    {
      v23 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "shouldOverrideLDM == YES", &v34, 2u);
      }

      v15 = @"shouldOverrideLDM == YES";
      goto LABEL_8;
    }
  }

  if (([activityCopy requestsApplicationLaunch] & 1) != 0 || objc_msgSend(activityCopy, "requestsExtensionLaunch"))
  {
    v13 = @"requestsLaunch == YES";
    goto LABEL_15;
  }

  startBefore = [activityCopy startBefore];
  startAfter = [activityCopy startAfter];
  [startBefore timeIntervalSinceDate:startAfter];
  v27 = v26;

  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  startAfter2 = [activityCopy startAfter];
  [startAfter2 timeIntervalSinceNow];
  v30 = -v29;

  v31 = v30 / v27;
  if (v31 < 0.9)
  {
    goto LABEL_16;
  }

  v32 = [NSPredicate predicateWithFormat:@"isNearingDeadline == YES"];
  [rationaleCopy addRationaleWithCondition:v32];

  v33 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 134217984;
    v35 = v31 * 100.0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "isNearingDeadline == YES (%2.0f%% complete)", &v34, 0xCu);
  }

  v17 = 1;
  [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.ldm.nearingDeadline" byCount:1];
LABEL_17:

  return v17;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676C8;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  stateCopy = state;
  v67 = stateCopy;
  if (qword_10020B360 != -1)
  {
    dispatch_once(&qword_10020B360, block);
  }

  v8 = [[_DASNetworkQualityPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([activityCopy isUpload])
  {
    uploadSize = [activityCopy uploadSize];
  }

  else
  {
    uploadSize = [activityCopy downloadSize];
  }

  [(_DASNetworkQualityPolicyResponseRationale *)v8 setActivityTransferSize:uploadSize];
  activityTransferSize = [(_DASNetworkQualityPolicyResponseRationale *)v8 activityTransferSize];
  if (!activityTransferSize)
  {
    activityTransferSize = [activityCopy transferSize];
  }

  [(_DASNetworkQualityPolicyResponseRationale *)v8 setActivityTransferSize:activityTransferSize];
  v11 = objc_autoreleasePoolPush();
  v12 = [(_DASNetworkEvaluationMonitor *)self->_networkEvaluator isNetworkPathAvailableForActivity:activityCopy];
  objc_autoreleasePoolPop(v11);
  if ((v12 & 1) == 0)
  {
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"networkPathAvailability" withRequiredValue:1.0 withCurrentValue:0.0];
    requiresInexpensiveNetworking = [activityCopy requiresInexpensiveNetworking];
    responseOptions = [(_DASPolicyResponseRationale *)v8 responseOptions];
    v28 = 256;
    if (!requiresInexpensiveNetworking)
    {
      v28 = 1;
    }

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:responseOptions | v28];
    goto LABEL_18;
  }

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority < _DASSchedulingPriorityUtility && ([activityCopy deferred] & 1) == 0 && !-[_DASNetworkQualityPolicy unconstrainedNetworkAvailableForActivity:withContext:withRationale:](self, "unconstrainedNetworkAvailableForActivity:withContext:withRationale:", activityCopy, stateCopy, v8))
  {
    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"unconstrainedNetworkAvailable" withRequiredValue:1.0 withCurrentValue:0.0];
LABEL_18:
    v24 = 0x384uLL;
    v25 = 100;
    goto LABEL_30;
  }

  userInfo = [activityCopy userInfo];
  v15 = [userInfo objectForKeyedSubscript:_DASCTSMailFetchKey];
  if ([v15 BOOLValue])
  {
    v16 = +[NSDate date];
    startBefore = [activityCopy startBefore];
    [v16 timeIntervalSinceDate:startBefore];
    v19 = v18;
    startBefore2 = [activityCopy startBefore];
    startAfter = [activityCopy startAfter];
    [startBefore2 timeIntervalSinceDate:startAfter];
    v23 = v22;

    if (v19 > v23)
    {
      v24 = 0x384uLL;
      v25 = 67;
LABEL_30:
      v34 = [_DASPolicyResponse policyResponseWithDecision:v25 validityDuration:v8 rationale:v24];
      goto LABEL_31;
    }
  }

  else
  {
  }

  schedulingPriority2 = [activityCopy schedulingPriority];
  if (schedulingPriority2 >= _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_25;
  }

  launchReason = [activityCopy launchReason];
  if ([launchReason isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
  {
    submitDate = [activityCopy submitDate];
    [submitDate timeIntervalSinceNow];
    v33 = v32;

    if (v33 < 0.0)
    {
      v33 = -v33;
    }

    if (v33 < 60.0)
    {
LABEL_25:
      v24 = 0x384uLL;
LABEL_29:
      v25 = 0;
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ([_CDNetworkContext wiredQuality:stateCopy]>= 1)
  {
    v24 = 86400.0;
    goto LABEL_29;
  }

  v36 = [_CDNetworkContext wifiQuality:stateCopy];
  v37 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v38 = [stateCopy objectForKeyedSubscript:v37];

  v39 = +[_CDNetworkContext loiKey];
  v63 = v38;
  v40 = [v38 objectForKeyedSubscript:v39];
  integerValue = [v40 integerValue];

  v42 = [(_DASNetworkQualityPolicy *)self minimumQualityForActivity:activityCopy interface:1 interfaceSubtype:0 loiStatus:integerValue];
  v43 = +[_CDContextQueries keyPathForPluginStatus];
  v44 = [stateCopy objectForKeyedSubscript:v43];
  bOOLValue = [v44 BOOLValue];

  v65 = 1;
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setWifiLQMObserved:v36];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setWifiLQMRequired:v42];
  [(_DASNetworkQualityPolicy *)self scoreForActivity:activityCopy networkQuality:v36 interface:1 interfaceSubtype:0 pluginStatus:bOOLValue radioHot:0 linkAvailable:&v65 loiStatus:integerValue];
  v47 = v46;
  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"wifiQuality" withRequiredValue:v42 withCurrentValue:v36];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setInterfaceType:@"wifi"];
  if (v47 > 0.0)
  {
    goto LABEL_36;
  }

  if ([_DASPhotosPolicy isiCPLActivity:activityCopy])
  {
    v49 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v50 = [stateCopy objectForKeyedSubscript:v49];
    unsignedIntegerValue = [v50 unsignedIntegerValue];

    if ((unsignedIntegerValue & 2) != 0)
    {
      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"photosOverrideEnergy" withRequiredValue:1.0 withCurrentValue:1.0];
      v59 = 0x384uLL;
      v60 = 0;
LABEL_52:
      v48 = [_DASPolicyResponse policyResponseWithDecision:v60 validityDuration:v8 rationale:v59];
      goto LABEL_53;
    }
  }

  v52 = [_CDNetworkContext cellQuality:stateCopy];
  v53 = [(_DASNetworkQualityPolicy *)self minimumQualityForActivity:activityCopy interface:2 interfaceSubtype:0 loiStatus:0];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setCellLQMObserved:v52];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setCellLQMRequired:v53];
  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"cellQuality" withRequiredValue:v53 withCurrentValue:v52];
  v54 = [_CDNetworkContext cellInterfaceUp:stateCopy];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setInterfaceType:@"cell"];
  v64 = 1;
  [(_DASNetworkQualityPolicy *)self scoreForActivity:activityCopy networkQuality:v52 interface:2 interfaceSubtype:0 pluginStatus:bOOLValue radioHot:v54 linkAvailable:&v64 loiStatus:0];
  if (v55 <= 0.0)
  {
    if ((v65 & 1) != 0 || v64 == 1 && ([activityCopy requiresInexpensiveNetworking] & 1) == 0)
    {
      v61 = 4;
    }

    else
    {
      v61 = 8;
    }

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| v61];
    v59 = 0x384uLL;
    v60 = 33;
    goto LABEL_52;
  }

  v47 = v55;
  if ([activityCopy uploadSize])
  {
    v56 = [_CDNetworkContext cellUploadCost:stateCopy];
    v57 = v56;
    if (v56 == 2)
    {
      v58 = 0.5;
      goto LABEL_55;
    }

    if (v56 == 3)
    {
      v58 = 0.1;
LABEL_55:
      v47 = v47 * v58;
      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 0x10];
      v62 = [NSPredicate predicateWithFormat:@"powerCost == %ld", v57];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v62];
    }
  }

LABEL_36:
  v48 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v47 rationale:0x384uLL];
LABEL_53:
  v34 = v48;

LABEL_31:

  return v34;
}

- (NSDictionary)lowCongestionHours
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_lowCongestionHours copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLowCongestionHours:(id)hours
{
  hoursCopy = hours;
  obj = self;
  objc_sync_enter(obj);
  lowCongestionHours = obj->_lowCongestionHours;
  obj->_lowCongestionHours = hoursCopy;

  objc_sync_exit(obj);
}

- (NSDictionary)discountedHours
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_discountedHours copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDiscountedHours:(id)hours
{
  hoursCopy = hours;
  obj = self;
  objc_sync_enter(obj);
  discountedHours = obj->_discountedHours;
  obj->_discountedHours = hoursCopy;

  objc_sync_exit(obj);
}

- (double)predictedScoreForActivity:(id)activity atDate:(id)date
{
  activityCopy = activity;
  dateCopy = date;
  wifiPredictionTimeline = [(_DASNetworkQualityPolicy *)self wifiPredictionTimeline];
  v9 = [wifiPredictionTimeline valueAtDate:dateCopy];
  integerValue = [v9 integerValue];

  v11 = [(_DASPredictionManager *)self->_predictionManager objectForKeyedSubscript:@"plugin"];
  v12 = [v11 valueAtDate:dateCopy];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
    v15 = v14 > 0.5;
  }

  else
  {
    v15 = 0;
  }

  [(_DASNetworkQualityPolicy *)self scoreForActivity:activityCopy networkQuality:integerValue interface:1 interfaceSubtype:0 pluginStatus:v15 radioHot:0 linkAvailable:0 loiStatus:0];
  v17 = v16;
  if (![activityCopy requiresInexpensiveNetworking] || (v18 = v17, -[_DASNetworkQualityPolicy inDiscountedHoursAtDate:](self, "inDiscountedHoursAtDate:", dateCopy)))
  {
    cellPredictionTimeline = [(_DASNetworkQualityPolicy *)self cellPredictionTimeline];
    v20 = [cellPredictionTimeline valueAtDate:dateCopy];
    integerValue2 = [v20 integerValue];

    if (v13)
    {
      [v13 doubleValue];
      v23 = v22 > 0.5;
    }

    else
    {
      v23 = 0;
    }

    [(_DASNetworkQualityPolicy *)self scoreForActivity:activityCopy networkQuality:integerValue2 interface:2 interfaceSubtype:0 pluginStatus:v23 radioHot:0 linkAvailable:0 loiStatus:0];
    v25 = v24;
    if (v24 <= 0.0 || (v18 = 1.0, ![(_DASNetworkQualityPolicy *)self inLowCongestionHoursAtDate:dateCopy]))
    {
      if (v17 >= v25)
      {
        v18 = v17;
      }

      else
      {
        v18 = v25;
      }
    }
  }

  return v18;
}

- (void)preferredDataSimChanged:(id)changed
{
  changedCopy = changed;
  v5 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [changedCopy uuid];
    v7 = 138412290;
    v8 = uuid;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preferred data SIM changed for context: %@", &v7, 0xCu);
  }

  [(_DASNetworkQualityPolicy *)self loadCTInformationWithSDM:1];
}

@end