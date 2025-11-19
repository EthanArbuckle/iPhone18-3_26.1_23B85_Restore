@interface CDD
+ (CDD)sharedInstance;
- (BOOL)isClassCLocked;
- (BOOL)isLocked;
- (BOOL)readConfigParamsFromPlist;
- (BOOL)saveForecast:(id)a3 queryParameters:(id *)a4 deviceIdentifier:(id)a5 error:(id *)a6;
- (CDD)init;
- (id)computeDatabaseAge;
- (id)histogramOfCountsFromForecast:(id)a3;
- (id)knowledgeStore;
- (id)pmfOverHourOfDayWithParams:(id *)a3;
- (id)retrieveHistogram;
- (unint64_t)calculateActualStartEpoch:(unint64_t)a3 endepoch:(unint64_t)a4 recurrenceInterval:(unint64_t)a5;
- (void)classCAndPasscodeCheck;
- (void)dumpAll;
- (void)loadParamsFromDict:(id)a3 userDefaults:(id)a4;
- (void)saveRemoteInBedTimes:(id)a3;
- (void)setDatabaseAge:(id)a3;
- (void)setDefaultConfigParams;
- (void)setupCommunicator;
@end

@implementation CDD

- (BOOL)isLocked
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  else
  {
    v4 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No response from MobileGestalt.", v6, 2u);
    }
  }

  return v3 == kCFBooleanTrue;
}

+ (CDD)sharedInstance
{
  if (qword_100044648 != -1)
  {
    sub_100023234();
  }

  v3 = qword_100044640;

  return v3;
}

- (CDD)init
{
  v3 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CDDinit", " enableTelemetry=YES ", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = CDD;
  v4 = [(CDD *)&v23 init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.coreduetdLogQueue", v6);
    logQueue = v4->logQueue;
    v4->logQueue = v7;

    v9 = objc_alloc_init(CDDConfig);
    config = v4->config;
    v4->config = v9;

    if (![(CDD *)v4 readConfigParamsFromPlist])
    {
      [(CDD *)v4 setDefaultConfigParams];
    }

    if (objc_opt_class())
    {
      v11 = [[CDDCommunicator alloc] initWithCDDinstance:v4];
      p_super = &v4->communicator->super;
      v4->communicator = v11;
    }

    else
    {
      p_super = +[_CDLogging admissionCheckChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_100023248(p_super);
      }
    }

    [(CDD *)v4 classCAndPasscodeCheck];
    v13 = [[CDDPrivacyMonitor alloc] initWithCDDinstance:v4];
    privacyMonitor = v4->privacyMonitor;
    v4->privacyMonitor = v13;

    v15 = [[CDDWatchUpdateController alloc] initWithCDDinstance:v4];
    watchUpdate = v4->watchUpdate;
    v4->watchUpdate = v15;

    if (!v4->privacyMonitor)
    {
      v17 = +[_CDLogging admissionCheckChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10002328C(v17);
      }
    }

    v18 = [(CDD *)v4 config];
    v19 = [(CDD *)v4 computeDatabaseAge];
    [v18 setAgeOfDatabase:v19];

    [(CDD *)v4 setupCommunicator];
    [(CDD *)v4 dumpAll];
    objc_autoreleasePoolPop(v5);
  }

  v20 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Done with CDD init.", buf, 2u);
  }

  v21 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CDDinit", &unk_10003467D, buf, 2u);
  }

  return v4;
}

- (void)classCAndPasscodeCheck
{
  if (!MKBDeviceFormattedForContentProtection())
  {
    v5 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(out_token[0]) = 0;
      v6 = "Device is not formatted for content protection. Not checking for Class C lock state.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, out_token, 2u);
    }

LABEL_11:

    self->classCLocked = 0;
    goto LABEL_12;
  }

  if (![(CDD *)self isClassCLocked])
  {
    v5 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(out_token[0]) = 0;
      v6 = "Device is already Class-C-unlocked...";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  out_token[0] = 0;
  v3 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device is Class-C-locked. Setting handler for first unlock...", buf, 2u);
  }

  logQueue = self->logQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001F100;
  handler[3] = &unk_10003D3D8;
  handler[4] = self;
  v11 = 0;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", out_token, logQueue, handler);
  self->classCLocked = [(CDD *)self isClassCLocked];
LABEL_12:
  out_token[0] = 0;
  v7 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting handler for lock status changes...", buf, 2u);
  }

  v8 = self->logQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001C14;
  v9[3] = &unk_10003CC60;
  v9[4] = self;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", out_token, v8, v9);
  self->passcodeLocked = [(CDD *)self isLocked];
}

- (id)knowledgeStore
{
  v2 = +[CDKnowledgeDaemon defaultDaemon];
  v3 = [v2 storage];

  return v3;
}

- (void)setupCommunicator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F26C;
  block[3] = &unk_10003CA78;
  block[4] = self;
  if (qword_100044650 != -1)
  {
    dispatch_once(&qword_100044650, block);
  }
}

- (BOOL)isClassCLocked
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    return 0;
  }

  v3 = MGCopyAnswer();
  v2 = v3 == kCFBooleanTrue;
  if (v3)
  {
    CFRelease(v3);
  }

  else
  {
    v4 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No response from MobileGestalt.", v6, 2u);
    }
  }

  return v2;
}

- (unint64_t)calculateActualStartEpoch:(unint64_t)a3 endepoch:(unint64_t)a4 recurrenceInterval:(unint64_t)a5
{
  v8 = [(CDD *)self config];
  v9 = [v8 ageOfDatabase];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v11 - a3 >= 0x15181 && a4 > v11 && a4 > a3 && v11 >= a3)
  {
    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = 86400;
    }

    if ((a4 - v11) >> 7 > 0xD2E || (v11 = a4 - 432000, a4 - 432000 >= a3))
    {
      a3 += (v11 - a3) / v15 * v15;
    }
  }

  return a3;
}

- (id)pmfOverHourOfDayWithParams:(id *)a3
{
  var3 = a3->var3;
  var5 = a3->var5;
  if (!var5)
  {
    a3->var5 = 86400;
    var5 = 86400;
  }

  if (!a3->var6)
  {
    a3->var6 = 86400;
  }

  v7 = [(CDD *)self calculateActualStartEpoch:var3 endepoch:a3->var4 recurrenceInterval:var5];
  v8 = os_transaction_create();
  v9 = objc_autoreleasePoolPush();
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  v12 = 0;
  if (!a3->var13)
  {
    v116 = v7;
    v107 = v8;
    v108 = self;
    v109 = a3;
    xdict = v10;
    v106 = v9;
    var4 = a3->var4;
    var7 = a3->var7;
    v15 = objc_alloc_init(NSMutableArray);
    v16 = objc_alloc_init(NSMutableArray);
    v17 = +[NSTimeZone systemTimeZone];
    v18 = [NSNumber numberWithUnsignedLongLong:var3];
    [v18 doubleValue];
    v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v114 = v17;
    v105 = v19;
    v20 = [v17 secondsFromGMTForDate:v19] + var3;
    bzero(__b, 0x300uLL);
    for (i = 0; i != 96; ++i)
    {
      v22 = objc_alloc_init(NSMutableSet);
      [v15 insertObject:v22 atIndex:i];

      v23 = objc_alloc_init(NSMutableSet);
      [v16 insertObject:v23 atIndex:i];
    }

    v115 = v15;
    v118 = v16;
    if (v109->var8 == 20499)
    {
      v112 = v20;
      v24 = v116;
      v25 = [NSNumber numberWithUnsignedLongLong:v116];
      [v25 doubleValue];
      v26 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

      v27 = [NSNumber numberWithUnsignedLongLong:var4];
      [v27 doubleValue];
      v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

      v102 = v28;
      v103 = v26;
      v29 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:v26 to:v28];
      if (v109->var14 && v109->var2)
      {
        v30 = [NSString stringWithUTF8String:?];
        v31 = [_DKQuery predicateForEventsWithStringValue:v30];
      }

      else
      {
        v30 = +[_DKApplicationMetadataKey extensionHostIdentifier];
        v32 = [_DKQuery predicateForObjectsWithMetadataKey:v30];
        v31 = [NSCompoundPredicate notPredicateWithSubpredicate:v32];
      }

      v100 = v31;
      v101 = v29;
      v132[0] = v29;
      v132[1] = v31;
      v33 = [NSArray arrayWithObjects:v132 count:2];
      v34 = [NSCompoundPredicate andPredicateWithSubpredicates:v33];

      v35 = +[_DKSystemEventStreams appInFocusStream];
      v131 = v35;
      v36 = [NSArray arrayWithObjects:&v131 count:1];
      v37 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
      v130 = v37;
      v38 = [NSArray arrayWithObjects:&v130 count:1];
      v99 = v34;
      v39 = [_DKEventQuery eventQueryWithPredicate:v34 eventStreams:v36 offset:0 limit:var7 sortDescriptors:v38];

      v40 = [NSString stringWithUTF8String:"CDD.m"];
      v41 = [v40 stringByAppendingFormat:@":%d", 498];
      [v39 setClientName:v41];

      [v39 setTracker:&stru_10003D418];
      v42 = [(CDD *)self knowledgeStore];
      v43 = [v42 executeQuery:v39 error:0];

      value = [v43 count];
      if (v43)
      {
        v97 = v43;
        v98 = v39;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        obj = v43;
        v44 = [obj countByEnumeratingWithState:&v124 objects:v129 count:16];
        if (v44)
        {
          v45 = v44;
          v113 = v112 % 0x15180;
          v46 = *v125;
          do
          {
            for (j = 0; j != v45; j = j + 1)
            {
              if (*v125 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v48 = *(*(&v124 + 1) + 8 * j);
              v49 = [v48 stringValue];

              if (v49)
              {
                v50 = [v48 startDate];
                v51 = [v114 secondsFromGMTForDate:v50];
                v52 = [v48 startDate];
                [v52 timeIntervalSinceReferenceDate];
                v53 = [NSNumber numberWithDouble:?];
                v54 = (v51 + [v53 integerValue]) % 0x15180;

                v55 = v54 - v113;
                if (v54 < v113)
                {
                  v55 = v54 - v113 + 86400;
                }

                v56 = v55;
                v57 = [v48 startDate];
                [v57 timeIntervalSinceReferenceDate];
                v58 = [NSNumber numberWithDouble:?];
                v59 = ([v58 unsignedIntegerValue] - v116) / 0x15180uLL;

                v60 = [v115 objectAtIndex:v56 / 0x384];
                v61 = [v118 objectAtIndex:v56 / 0x384];
                v62 = [v48 stringValue];
                [v60 addObject:v62];

                v63 = [v48 stringValue];
                v64 = [NSString stringWithFormat:@"%s%03llu", "XQW90", v59];
                v65 = [v63 stringByAppendingString:v64];
                [v61 addObject:v65];
              }
            }

            v45 = [obj countByEnumeratingWithState:&v124 objects:v129 count:16];
          }

          while (v45);
        }

        v24 = v116;
        v43 = v97;
        v39 = v98;
      }
    }

    else
    {
      value = 0;
      v24 = v116;
    }

    v67 = v109->var5;
    var6 = v109->var6;
    v68 = v109->var4;
    v69 = v115;
    if (v67 == 86400 && var6 == 86400)
    {
      v70 = (v68 - v24) / 0x15180;
      if (!((v68 - v24) % 0x15180))
      {
        v77 = 0;
        v78 = vdupq_n_s64(v70);
        do
        {
          *&__b[v77] = v78;
          v77 += 2;
        }

        while (v77 != 96);
LABEL_50:
        for (k = 0; k != 96; ++k)
        {
          v80 = xpc_dictionary_create(0, 0, 0);
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v117 = [v69 objectAtIndex:k];
          v81 = [v117 countByEnumeratingWithState:&v120 objects:v128 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v121;
            do
            {
              for (m = 0; m != v82; m = m + 1)
              {
                if (*v121 != v83)
                {
                  objc_enumerationMutation(v117);
                }

                v85 = *(*(&v120 + 1) + 8 * m);
                v86 = [v118 objectAtIndex:k];
                v119[0] = _NSConcreteStackBlock;
                v119[1] = 3221225472;
                v119[2] = sub_10001FF5C;
                v119[3] = &unk_10003D440;
                v119[4] = v85;
                v87 = [v86 objectsPassingTest:v119];
                v88 = [v87 count];

                v89 = __b[k];
                v90 = [v85 UTF8String];
                if (v89)
                {
                  v91 = v88 / v89;
                }

                else
                {
                  v91 = 0.0;
                }

                xpc_dictionary_set_double(v80, v90, v91);
              }

              v82 = [v117 countByEnumeratingWithState:&v120 objects:v128 count:16];
            }

            while (v82);
          }

          xpc_dictionary_set_value(xdict, off_10003D460[k], v80);
          v69 = v115;
        }

        v11 = xdict;
        xpc_dictionary_set_uint64(xdict, "itemsInForecast", value);
        v92 = [(CDD *)v108 config];
        v93 = [v92 ageOfDatabase];
        [v93 timeIntervalSinceReferenceDate];
        v95 = v94;

        xpc_dictionary_set_uint64(xdict, "databaseEpochSeconds", v95);
        v12 = xdict;

        v9 = v106;
        v8 = v107;
        goto LABEL_63;
      }

      if (v68 == -1025)
      {
        memset_pattern16(__b, &unk_100032AF0, 0x300uLL);
        goto LABEL_50;
      }
    }

    if (v68 > v24)
    {
      v71 = 0;
      v72 = &v24[var6];
      if (v67 > var6)
      {
        var6 = v109->var5;
      }

      v73 = v24;
      do
      {
        ++__b[v71];
        v74 = (v24 + 900) >= v72;
        v75 = &v73[var6];
        if ((v24 + 900) < v72)
        {
          v24 += 900;
        }

        else
        {
          v73 += var6;
          v24 = v75;
        }

        if (v74)
        {
          v72 += var6;
        }

        if (v74)
        {
          v76 = var6 / 0x384;
        }

        else
        {
          v76 = 1;
        }

        v71 = (v76 + v71) % 96;
      }

      while (v24 < v68);
    }

    goto LABEL_50;
  }

LABEL_63:

  objc_autoreleasePoolPop(v9);

  return v12;
}

- (void)saveRemoteInBedTimes:(id)a3
{
  v4 = a3;
  if ([v4 count] == 2)
  {
    v5 = +[_DKSystemEventStreams remoteDeviceInBedTimesStream];
    v6 = [v4 firstObject];
    v7 = [v4 lastObject];
    v8 = [_DKEvent eventWithStream:v5 startDate:v6 endDate:v7 categoryIntegerValue:1 metadata:0];

    v9 = [(CDD *)self knowledgeStore];
    v18 = v8;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = 0;
    LODWORD(v7) = [v9 saveObjects:v10 error:&v13];
    v11 = v13;

    if (!v7 || v11)
    {
      v12 = +[_CDLogging admissionCheckChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to save event: %@, Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not enough dates for expected in bed times", buf, 2u);
    }
  }
}

- (id)histogramOfCountsFromForecast:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020330;
  v4 = v8[3] = &unk_10003D790;
  v9 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];

  v5 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Counts are: %@", buf, 0xCu);
  }

  v6 = [v4 copy];

  return v6;
}

- (id)retrieveHistogram
{
  v3 = [NSDateInterval alloc];
  v4 = +[NSDate distantPast];
  v5 = +[NSDate distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = +[_DKSystemEventStreams pairedDeviceForecastStream];
  v8 = [NSPredicate predicateWithValue:1];
  v9 = [_DKHistogramQuery histogramQueryForStream:v7 interval:v6 withPredicate:v8];

  [v9 setIncludeLocalResults:0];
  [v9 setIncludeRemoteResults:1];
  [v9 setRemoteHistogramLimit:1];
  v10 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Query is: %@", &v14, 0xCu);
  }

  v11 = [(CDD *)self knowledgeStore];
  v12 = [v11 executeQuery:v9 error:0];

  return v12;
}

- (BOOL)saveForecast:(id)a3 queryParameters:(id *)a4 deviceIdentifier:(id)a5 error:(id *)a6
{
  v7 = a3;
  v8 = os_transaction_create();
  v9 = [(CDD *)self histogramOfCountsFromForecast:v7];

  v10 = [[_DKHistogram alloc] initWithHistogram:v9];
  v11 = +[_DKSystemEventStreams pairedDeviceForecastStream];
  [v10 setStream:v11];

  v12 = +[NSDate date];
  v13 = [NSDateInterval alloc];
  v14 = [v12 dateByAddingTimeInterval:-86400.0];
  v15 = [v13 initWithStartDate:v14 endDate:v12];
  [v10 setInterval:v15];

  v16 = [(CDD *)self retrieveHistogram];
  v17 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrieved histogram: %@", buf, 0xCu);
  }

  v18 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Replacing with: %@", buf, 0xCu);
  }

  v19 = +[CDKnowledgeDaemon defaultDaemon];
  v20 = [v19 storage];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100020888;
  v25[3] = &unk_10003D7B8;
  v26 = v8;
  v27 = v10;
  v28 = v16;
  v21 = v16;
  v22 = v10;
  v23 = v8;
  [v20 saveHistogram:v22 responseQueue:0 withCompletion:v25];

  return 1;
}

- (id)computeDatabaseAge
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v6 = +[_DKSystemEventStreams deviceBatteryPercentageStream];
  v23 = v6;
  v7 = [NSArray arrayWithObjects:&v23 count:1];
  v22 = v5;
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  v9 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:v7 offset:0 limit:1 sortDescriptors:v8];

  v10 = [NSString stringWithUTF8String:"CDD.m"];
  v11 = [v10 stringByAppendingFormat:@":%d", 710];
  [v9 setClientName:v11];

  [v9 setTracker:&stru_10003D7D8];
  v12 = [(CDD *)self knowledgeStore];
  v21 = 0;
  v13 = [v12 executeQuery:v9 error:&v21];
  v14 = v21;

  if (v14 || ([v13 firstObject], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
  {
    v19 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100023348(v14, v13, v19);
    }

    v18 = +[NSDate date];
  }

  else
  {
    v17 = [v13 firstObject];
    v18 = [v17 startDate];
  }

  objc_autoreleasePoolPop(v4);

  return v18;
}

- (void)setDatabaseAge:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CDD *)self config];
    [v5 setAgeOfDatabase:v4];
  }
}

- (void)dumpAll
{
  v3 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "--------------", &v22, 2u);
  }

  v4 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "coreduetd: Dump.", &v22, 2u);
  }

  v5 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, &unk_10003467D, &v22, 2u);
  }

  v6 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "\tCurrent config parameters:", &v22, 2u);
  }

  v7 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(CDD *)self config];
    v9 = [v8 verbose];
    v22 = 67109120;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "\t\tverbose: %d", &v22, 8u);
  }

  v10 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, &unk_10003467D, &v22, 2u);
  }

  v11 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "\tCurrent CDDCommunicator parameters:", &v22, 2u);
  }

  v12 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(CDD *)self config];
    v14 = [v13 commEnabled];
    v22 = 67109120;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "\t\tcommEnabled: %d\n", &v22, 8u);
  }

  v15 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [(CDD *)self config];
    v17 = [v16 commMinClientGranularity];
    v22 = 67109120;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "\t\tcommMinClientGranularity: %d\n", &v22, 8u);
  }

  v18 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(CDD *)self config];
    v20 = [v19 commSyncBoundarySeconds];
    v22 = 67109120;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "\t\tcommSyncBoundarySeconds: %d\n", &v22, 8u);
  }

  v21 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "--------------", &v22, 2u);
  }
}

- (BOOL)readConfigParamsFromPlist
{
  v3 = +[CDDPaths CDDConfigurationBundlePath];
  v4 = [NSBundle bundleWithPath:v3];

  if ((v4 || (+[CDDPaths CDDConfigurationBundlePathDefault](CDDPaths, "CDDConfigurationBundlePathDefault"), v5 = objc_claimAutoreleasedReturnValue(), +[NSBundle bundleWithPath:](NSBundle, "bundleWithPath:", v5), v4 = objc_claimAutoreleasedReturnValue(), v5, v4)) && ([v4 objectForInfoDictionaryKey:@"CoreDuetDaemonConfigKeyString"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreDuet"];
    [(CDD *)self loadParamsFromDict:v7 userDefaults:v8];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setDefaultConfigParams
{
  v3 = [(CDD *)self config];
  [v3 setVerbose:0];

  v4 = [(CDD *)self config];
  [v4 setBatteryMonitorExchangeTimerDelta:900];

  v5 = [(CDD *)self config];
  [v5 setBatteryMonitorExchangeBattDelta:1];

  v6 = [(CDD *)self config];
  [v6 setCommEnabled:0];

  v7 = [(CDD *)self config];
  [v7 setCommMinClientGranularity:900];

  v8 = [(CDD *)self config];
  [v8 setCommSyncBoundarySeconds:86400];

  v10 = [(CDD *)self config];
  v9 = +[NSDate date];
  [v10 setAgeOfDatabase:v9];
}

- (void)loadParamsFromDict:(id)a3 userDefaults:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && ([v6 objectForKey:@"CDDVerboseKeyString"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 BOOLForKey:@"CDDVerboseKeyString"];
    v10 = [(CDD *)self config];
    [v10 setVerbose:v9];
  }

  else
  {
    v11 = [v23 valueForKey:@"CDDVerboseKeyString"];
    if (!v11)
    {
      goto LABEL_7;
    }

    v10 = v11;
    v12 = [(CDD *)self config];
    [v12 setVerbose:{objc_msgSend(v10, "BOOLValue")}];
  }

LABEL_7:
  v13 = [v23 valueForKey:@"CDDBatteryMonitorExchangeTimerDeltaString"];
  if (v13)
  {
    v14 = [(CDD *)self config];
    [v14 setBatteryMonitorExchangeTimerDelta:{objc_msgSend(v13, "intValue")}];
  }

  v15 = [v23 valueForKey:@"CDDBatteryMonitorExchangeBattDeltaString"];

  if (v15)
  {
    v16 = [(CDD *)self config];
    [v16 setBatteryMonitorExchangeBattDelta:{objc_msgSend(v15, "intValue")}];
  }

  v17 = [v23 valueForKey:@"CDDCEnabledString"];

  if (v17)
  {
    v18 = [(CDD *)self config];
    [v18 setCommEnabled:{objc_msgSend(v17, "BOOLValue")}];
  }

  v19 = [v23 valueForKey:@"CDDCMinClientGranularityString"];

  if (v19)
  {
    v20 = [(CDD *)self config];
    [v20 setCommMinClientGranularity:{objc_msgSend(v19, "intValue")}];
  }

  v21 = [v23 valueForKey:@"CDDCSyncBoundarySecondsString"];

  if (v21)
  {
    v22 = [(CDD *)self config];
    [v22 setCommSyncBoundarySeconds:{objc_msgSend(v21, "intValue")}];
  }
}

@end