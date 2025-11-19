@interface _DASDataCollectionTasks
+ (BOOL)convertBiomeStream:(id)a3 toKnowledgeStoreStream:(id)a4;
+ (BOOL)generateCRFile;
+ (BOOL)shouldExcludeEvent:(id)a3;
+ (char)writeExperiments:(id)a3 atFileName:(id)a4 withTask:(id)a5;
+ (double)computeUsageCorrelationBetweenAirPodsAMPStreamsWithStore:(id)a3;
+ (id)experimentsToWrite;
+ (id)fuzzedDateFromDate:(id)a3 forStreamName:(id)a4;
+ (id)handleForFilename:(id)a3;
+ (id)metadataWitDisallowedKeysRemoveForMedatata:(id)a3 forStreamName:(id)a4;
+ (id)processEvents:(id)a3;
+ (id)writeExperiment:(id)a3 withStreams:(id)a4 toFileHandle:(id)a5 withLastWrittenInfo:(id)a6;
+ (id)writeStream:(id)a3 toFileHandle:(id)a4 withEventPredicate:(id)a5 withStore:(id)a6;
+ (int)boundedDurationFromDuration:(double)a3;
+ (unint64_t)writeToFileWithContextDictionary:(id)a3;
+ (void)addCurrentStateToEvents:(id)a3 forEventStream:(id)a4;
+ (void)convertFocusModeStream:(id)a3 toKnowledgeStoreStream:(id)a4;
+ (void)deleteConvertedStreams;
+ (void)deleteEventsFromStream:(id)a3;
+ (void)extendJSONArrayWithAnotherArray:(id)a3 toFileHandler:(id)a4 isPreviouslyEmpty:(BOOL)a5;
+ (void)generateUsageVectorRepresentationWithStreamAUsage:(id)a3 streamBUsage:(id)a4 outputRepresentationA:(id)a5 outputRepresentationB:(id)a6;
+ (void)loadParameters;
+ (void)registerForDataCollectionTestNotification;
+ (void)replaceJSONDataWithNull:(id)a3 atWriteHandle:(id)a4;
+ (void)reportAnalyticsForActivity:(id)a3;
+ (void)reportBackgroundAppRefreshAnalytics:(id)a3;
+ (void)reportDataOnExperiments:(id)a3;
+ (void)reportWakeAnalytics:(id)a3;
+ (void)schedule;
+ (void)scheduleDASTelemetryActivities;
+ (void)submitSystemTask:(id)a3;
@end

@implementation _DASDataCollectionTasks

+ (void)loadParameters
{
  v2 = OSAGetDATaskingValue();
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 doubleValue];
      qword_10020A180 = v3;
    }
  }

  v4 = OSAGetDATaskingValue();
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      qword_10020A188 = v5;
    }
  }

  v6 = OSAGetDATaskingValue();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      qword_10020A190 = v7;
    }
  }

  v8 = OSAGetDATaskingValue();
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      qword_10020A198 = v9;
    }
  }

  v10 = OSAGetDATaskingValue();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dword_10020A1A0 = [v10 unsignedIntValue];
  }

  v43 = v8;
  v44 = v6;
  v45 = v4;
  v46 = v2;
  v11 = OSAGetDATaskingValue();
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      qword_10020A1A8 = [v11 integerValue];
    }
  }

  v42 = v11;
  v12 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
  v13 = [v12 name];
  v53[0] = v13;
  v53[1] = @"/dasd/focus";
  v54[0] = &off_1001CA150;
  v54[1] = &off_1001CA168;
  v14 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
  v15 = qword_10020B628;
  qword_10020B628 = v14;

  v16 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
  v17 = [v16 name];
  v51 = v17;
  v52 = &off_1001CA180;
  v18 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v19 = qword_10020B630;
  qword_10020B630 = v18;

  v20 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
  v21 = [v20 name];
  v49[0] = v21;
  v22 = +[_DKBluetoothMetadataKey name];
  v48[0] = v22;
  v23 = +[_DKBluetoothMetadataKey address];
  v48[1] = v23;
  v24 = +[_DKBluetoothMetadataKey isAppleAudioDevice];
  v48[2] = v24;
  v25 = [NSArray arrayWithObjects:v48 count:3];
  v49[1] = @"/clock/alarm";
  v50[0] = v25;
  v26 = +[_DKAlarmMetadataKey alarmID];
  v47[0] = v26;
  v27 = +[_DKAlarmMetadataKey isSleep];
  v47[1] = v27;
  v28 = [NSArray arrayWithObjects:v47 count:2];
  v50[1] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v30 = qword_10020B638;
  qword_10020B638 = v29;

  v31 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.datacollectiontasks"];
  v32 = [v31 objectForKey:@"dateOfChoosing"];
  v33 = v32;
  if (v32)
  {
    [v32 doubleValue];
    v34 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v35 = +[NSDate now];
    [v35 timeIntervalSinceDate:v34];
    v37 = v36;

    v39 = v43;
    v38 = v44;
    v40 = v10;
    if (v37 > 86400.0)
    {
      [v31 setObject:&off_1001CA198 forKey:@"chosenForSubmission"];
    }

    v41 = v45;
  }

  else
  {
    [v31 setObject:&off_1001CA198 forKey:@"chosenForSubmission"];
    v38 = v44;
    v41 = v45;
    v40 = v10;
    v39 = v43;
  }
}

+ (id)handleForFilename:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if (([v4 fileExistsAtPath:v3] & 1) != 0 || (v5 = 0, objc_msgSend(v4, "createFileAtPath:contents:attributes:", v3, 0, 0)))
  {
    v5 = [NSFileHandle fileHandleForUpdatingAtPath:v3];
    [v5 truncateFileAtOffset:0];
  }

  return v5;
}

+ (id)experimentsToWrite
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = qword_10020B640;
  qword_10020B640 = v2;

  [qword_10020B640 setObject:&off_1001CAEC8 forKeyedSubscript:@"dasdDataCollection"];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = qword_10020B648;
  qword_10020B648 = v4;

  v64 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v83[0] = v64;
  v62 = +[_DKSystemEventStreams deviceBatteryPercentageStream];
  v83[1] = v62;
  v60 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v83[2] = v60;
  v58 = +[_DKSystemEventStreams doNotDisturbStream];
  v83[3] = v58;
  v6 = [_DKEventStream eventStreamWithName:@"/charging/smartTopOffCheckpoint"];
  v83[4] = v6;
  v7 = [_DKEventStream eventStreamWithName:@"/charging/accessoryChargingEvents"];
  v83[5] = v7;
  v8 = [_DKEventStream eventStreamWithName:@"/clock/alarm"];
  v83[6] = v8;
  v9 = +[_DKSystemEventStreams deviceLowPowerModeStream];
  v83[7] = v9;
  v10 = +[_DKSystemEventStreams deviceIsLockedImputedStream];
  v83[8] = v10;
  v11 = +[_DKSystemEventStreams defaultPairedDeviceNearbyStream];
  v83[9] = v11;
  v12 = +[_DKSystemEventStreams motionStream];
  v83[10] = v12;
  v13 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
  v83[11] = v13;
  v14 = [NSArray arrayWithObjects:v83 count:12];
  [qword_10020B648 setObject:v14 forKeyedSubscript:@"dasdDataCollection"];

  v52 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.datacollectiontasks"];
  v15 = [v52 integerForKey:@"chosenForSubmission"];
  if (v15 == 2)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125288();
    }

    goto LABEL_19;
  }

  if (v15 == 1)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_1001252C4();
    }

    if (byte_10020B658 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v15)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
    {
      sub_100125300();
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (+[_DASConfig isInternalBuild])
  {
    v16 = 7;
  }

  else
  {
    v16 = dword_10020A1A0;
  }

  v17 = arc4random_uniform(v16);
  if (v17 == 1)
  {
    v18 = &off_1001CA1B0;
  }

  else
  {
    v18 = &off_1001CA1C8;
  }

  [v52 setObject:v18 forKey:@"chosenForSubmission"];
  +[NSDate timeIntervalSinceReferenceDate];
  v19 = [NSNumber numberWithDouble:?];
  [v52 setObject:v19 forKey:@"dateOfChoosing"];

LABEL_20:
  if (byte_10020B658)
  {
LABEL_21:
    v20 = qword_10020B650;
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Forcing device to be picked for data collection", buf, 2u);
    }

    goto LABEL_24;
  }

  if (v17 == 1)
  {
LABEL_24:
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000975DC;
    v74[3] = &unk_1001B7630;
    v74[4] = a1;
    [qword_10020B640 enumerateKeysAndObjectsUsingBlock:v74];
    v63 = 1;
    goto LABEL_25;
  }

  v63 = 0;
LABEL_25:
  v54 = objc_alloc_init(NSMutableDictionary);
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_10012533C();
  }

  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_1001253BC();
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = qword_10020B648;
  v56 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v56)
  {
    v55 = *v71;
    do
    {
      v21 = 0;
      do
      {
        if (*v71 != v55)
        {
          v22 = v21;
          objc_enumerationMutation(obj);
          v21 = v22;
        }

        v57 = v21;
        v59 = *(*(&v70 + 1) + 8 * v21);
        v23 = [qword_10020B648 objectForKey:?];
        v24 = objc_alloc_init(NSMutableArray);
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = v23;
        v25 = [v65 countByEnumeratingWithState:&v66 objects:v81 count:16];
        if (v25)
        {
          v26 = *v67;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v67 != v26)
              {
                objc_enumerationMutation(v65);
              }

              v28 = *(*(&v66 + 1) + 8 * i);
              v29 = qword_10020B630;
              v30 = [v28 name];
              v31 = [v29 objectForKeyedSubscript:v30];

              if (v31)
              {
                v32 = arc4random_uniform([v31 unsignedIntValue]);
                if ([v31 integerValue] >= 2 && v32 == 1)
                {
                  if (byte_10020B658 == 1)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v34 = [v31 integerValue];
                  if ((byte_10020B658 & 1) == 0)
                  {
                    if (v34 != 1)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_53;
                  }

LABEL_51:
                  v38 = qword_10020B650;
                  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO))
                  {
                    v39 = v38;
                    v40 = [v28 name];
                    *buf = 138412290;
                    v76 = v40;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Forcing stream collection %@", buf, 0xCu);
                  }
                }

LABEL_53:
                v41 = [v28 name];
                v42 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
                v43 = [v42 name];
                v44 = [v41 isEqualToString:v43];

                if (v44 && (v45 = objc_opt_class(), +[_DKKnowledgeStore knowledgeStore](_DKKnowledgeStore, "knowledgeStore"), v46 = objc_claimAutoreleasedReturnValue(), [v45 computeUsageCorrelationBetweenAirPodsAMPStreamsWithStore:v46], v48 = v47, v46, v48 > *&qword_10020A190))
                {
                  v49 = qword_10020B650;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v50 = [v28 name];
                    sub_100125430(v50, v79, &v80, v49);
                  }
                }

                else
                {
                  [v24 addObject:v28];
                  v35 = qword_10020B650;
                  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_49;
                  }
                }

                goto LABEL_60;
              }

              if (v63)
              {
                [v24 addObject:v28];
                v35 = qword_10020B650;
                if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
                {
LABEL_49:
                  v36 = v35;
                  v37 = [v28 name];
                  *buf = 138412546;
                  v76 = v37;
                  v77 = 2112;
                  v78 = v59;
                  _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "experimentsToWrite: Added stream: %@ to experiment %@", buf, 0x16u);
                }
              }

LABEL_60:
            }

            v25 = [v65 countByEnumeratingWithState:&v66 objects:v81 count:16];
          }

          while (v25);
        }

        if ([v24 count])
        {
          [v54 setObject:v24 forKeyedSubscript:v59];
        }

        v21 = v57 + 1;
      }

      while ((v57 + 1) != v56);
      v56 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v56);
  }

  return v54;
}

+ (char)writeExperiments:(id)a3 atFileName:(id)a4 withTask:(id)a5
{
  v65 = a3;
  v8 = a4;
  v66 = a5;
  v71 = a1;
  v63 = v8;
  v75 = [a1 handleForFilename:v8];
  if (v75)
  {
    v62 = [@"[" dataUsingEncoding:4];
    [v75 writeData:v62];
    v61 = [@"{" dataUsingEncoding:4];
    [v75 writeData:v61];
    v67 = [@" "];
    v95[4] = &v96;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100098318;
    v95[3] = &unk_1001B5798;
    [v66 setExpirationHandler:v95];
    v64 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.datacollectiontasks"];
    v9 = [v64 objectForKey:@"lastWritten"];
    v10 = [v9 mutableCopy];
    v11 = qword_10020B660;
    qword_10020B660 = v10;

    v12 = qword_10020B660;
    v13 = qword_10020B650;
    v14 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        *buf = 138412290;
        v107 = qword_10020B660;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Last written info found: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Last written info not found, proceeding", buf, 2u);
      }

      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = qword_10020B660;
      qword_10020B660 = v15;
    }

    v72 = +[NSMutableArray array];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v65;
    v17 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
    if (v17)
    {
      v78 = 0;
      v69 = *v92;
      *&v18 = 138412546;
      v60 = v18;
      while (2)
      {
        v68 = v17;
        for (i = 0; i != v68; i = i + 1)
        {
          if (*v92 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v91 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v21 = [obj objectForKeyedSubscript:v20];
          v22 = [v71 writeExperiment:v20 withStreams:v21 toFileHandle:v75 withLastWrittenInfo:qword_10020B660];

          [v72 addObjectsFromArray:v22];
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v87 objects:v110 count:16];
          if (v24)
          {
            v25 = *v88;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v88 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v87 + 1) + 8 * j);
                v28 = [v27 objectForKeyedSubscript:{@"writeState", v60}];
                if (v28)
                {
                  v29 = [v27 objectForKeyedSubscript:@"writeState"];
                  v30 = [v29 unsignedIntValue] == 0;

                  if (v30)
                  {

                    v32 = +[NSDate date];
                    [qword_10020B660 setObject:v32 forKeyedSubscript:v20];
                    v33 = qword_10020B650;
                    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v60;
                      v107 = v20;
                      v108 = 2112;
                      v109 = qword_10020B660;
                      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Wrote experiment %@, updating lastWrittenInfo : %@", buf, 0x16u);
                    }

                    if ((v78 & 0x8000000000000000) == 0)
                    {
                      [v75 writeData:v67];
                    }

                    ++v78;
                    goto LABEL_32;
                  }
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v87 objects:v110 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          v31 = qword_10020B650;
          if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v107 = v20;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Couldn't write experiment %@", buf, 0xCu);
          }

LABEL_32:

          objc_autoreleasePoolPop(context);
          if (*(v97 + 24) == 1)
          {
            if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
            {
              sub_1001254FC();
            }

            goto LABEL_38;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_38:

      if ((v97[3] & 1) == 0 && v78)
      {
        [v71 replaceJSONDataWithNull:v67 atWriteHandle:v75];
        v34 = [@"} "];
        [v75 writeData:v34];
        obja = v34;
        v35 = [NSJSONSerialization dataWithJSONObject:&off_1001CAEF0 options:0 error:0];
        [v75 writeData:v35];
        v70 = v35;
        contexta = [@"]" dataUsingEncoding:4];
        [v75 writeData:contexta];
        v36 = [@"\n" dataUsingEncoding:4];
        [v75 writeData:v36];

        [v75 closeFile];
        [v64 setObject:&off_1001CA198 forKey:@"chosenForSubmission"];
        v37 = objc_opt_class();
        v104 = @"context";
        v105 = v72;
        v38 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v39 = [v37 writeToFileWithContextDictionary:v38];

        v40 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG);
        if ((v39 & 0xFFFFFFFFFFFFFFFELL) == 0x50)
        {
          if (v40)
          {
            sub_100125574();
          }

          if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
          {
            sub_1001255B0();
          }

          [v64 setObject:qword_10020B660 forKey:{@"lastWritten", v60}];
          v41 = qword_10020B650;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v64 objectForKey:@"lastWritten"];
            sub_100125630(v42, buf, v41);
          }
        }

        else
        {
          if (v40)
          {
            sub_100125538();
          }

          LOBYTE(v78) = 0;
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v43 = v72;
        v44 = [v43 countByEnumeratingWithState:&v83 objects:v103 count:16];
        if (v44)
        {
          v45 = *v84;
          do
          {
            for (k = 0; k != v44; k = k + 1)
            {
              if (*v84 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = *(*(&v83 + 1) + 8 * k);
              v48 = [v47 valueForKey:{@"writeState", v60}];
              v49 = [v48 integerValue] == 0;

              if (v49)
              {
                v50 = [NSNumber numberWithUnsignedInteger:v39];
                [v47 setObject:v50 forKeyedSubscript:@"writeState"];
              }
            }

            v44 = [v43 countByEnumeratingWithState:&v83 objects:v103 count:16];
          }

          while (v44);
        }

        v51 = +[NSMutableDictionary dictionary];
        [v51 setObject:@"METAINFO" forKeyedSubscript:@"streamName"];
        [v51 setObject:@"METAINFO" forKeyedSubscript:@"experimentName"];
        v52 = [NSNumber numberWithUnsignedInteger:v39];
        [v51 setObject:v52 forKeyedSubscript:@"writeState"];

        [v43 addObject:v51];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v53 = v43;
        v54 = [v53 countByEnumeratingWithState:&v79 objects:v102 count:16];
        if (v54)
        {
          v55 = *v80;
          do
          {
            for (m = 0; m != v54; m = m + 1)
            {
              if (*v80 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v79 + 1) + 8 * m);
              v58 = qword_10020B650;
              if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEFAULT))
              {
                *v100 = 138412290;
                v101 = v57;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "sending stream analytics to CA: %@", v100, 0xCu);
              }

              AnalyticsSendEventLazy();
            }

            v54 = [v53 countByEnumeratingWithState:&v79 objects:v102 count:16];
          }

          while (v54);
        }

LABEL_76:
        _Block_object_dispose(&v96, 8);

        goto LABEL_77;
      }
    }

    else
    {
    }

    [v75 truncateFileAtOffset:{0, v60}];
    [v75 closeFile];
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125680();
    }

    if ((v97[3] & 1) == 0)
    {
      [v64 setObject:&off_1001CA198 forKey:@"chosenForSubmission"];
    }

    LOBYTE(v78) = 0;
    goto LABEL_76;
  }

  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
  {
    sub_1001256BC();
  }

  LOBYTE(v78) = 0;
LABEL_77:

  return v78;
}

+ (id)writeExperiment:(id)a3 withStreams:(id)a4 toFileHandle:(id)a5 withLastWrittenInfo:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v81 = +[_DKKnowledgeStore knowledgeStore];
  v13 = objc_autoreleasePoolPush();
  v84 = +[NSMutableArray array];
  v82 = [_DKQuery predicateForEventsWithMinimumDuration:0.0];
  v83 = v9;
  v14 = [v12 objectForKeyedSubscript:v9];
  v15 = v14;
  v72 = v13;
  if (byte_10020B658 == 1)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_1001257A0();
    }
  }

  else if (v14)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_1001256F8();
    }

    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:v15];
    if (v17 >= (86400 * qword_10020A1A8))
    {
      v18 = [_DKQuery predicateForEventsWithStartDateAfter:v15];
      v105[0] = v18;
      v105[1] = v82;
      v19 = [NSArray arrayWithObjects:v105 count:2];
      v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v19];

      v21 = &qword_10020B000;
      v82 = v20;
      v13 = v72;
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125764();
    }

    v52 = v84;
    v60 = v84;
    goto LABEL_61;
  }

  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100125810();
  }

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
  v104 = v22;
  v23 = [NSArray arrayWithObjects:&v104 count:1];
  v16 = [_DKEventQuery eventQueryWithPredicate:v82 eventStreams:v10 offset:0 limit:1 sortDescriptors:v23];

  v93 = 0;
  v19 = [v81 executeQuery:v16 error:&v93];
  v15 = v93;
  if (v15 || ![v19 count])
  {
    v24 = qword_10020B650;
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
    {
      v63 = v24;
      v64 = [v19 count];
      *buf = 138412802;
      v95 = v16;
      v96 = 2112;
      v97 = v15;
      v98 = 2048;
      v99 = v64;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "writeExperiment: query for oldest event %@ failed with err: %@ and event count %lu", buf, 0x20u);
    }
  }

  else
  {
    v54 = v19;
    v55 = [v19 firstObject];
    v56 = [v55 startDate];
    [v56 timeIntervalSinceNow];
    v58 = v57;

    if (*&qword_10020A180 * 24.0 * 3600.0 < -v58)
    {
      v19 = v54;
      v13 = v72;
      if (byte_10020B658 != 1)
      {
        v18 = v16;
        v16 = 0;
        v15 = 0;
        v21 = &qword_10020B000;
        goto LABEL_19;
      }

LABEL_16:
      v21 = &qword_10020B000;
      if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
      {
        sub_100125934();
      }

      v18 = v16;
      v16 = v15;
      v15 = 0;
LABEL_19:

      v16 = [NSString stringWithFormat:@"%@:{", v83];
      v66 = [v16 dataUsingEncoding:4];
      [v11 writeData:?];
      v76 = [@" "];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v25 = v10;
      v26 = [v25 countByEnumeratingWithState:&v85 objects:v102 count:16];
      if (v26)
      {
        v27 = v26;
        v67 = v16;
        v68 = v12;
        v65 = v15;
        v70 = v10;
        v77 = 0;
        v28 = *v86;
        v73 = v11;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v86 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v85 + 1) + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v32 = [a1 writeStream:v30 toFileHandle:v11 withEventPredicate:v82 withStore:v81];
            [v32 setObject:v83 forKeyedSubscript:@"experimentName"];
            v33 = v21[202];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              log = v33;
              v74 = [v30 name];
              v39 = [v32 objectForKeyedSubscript:@"writeState"];
              v40 = [v32 objectForKeyedSubscript:@"numberOfWrittenEvents"];
              *buf = 138413058;
              v95 = v83;
              v96 = 2112;
              v97 = v74;
              v98 = 2112;
              v99 = v39;
              v100 = 2112;
              v101 = v40;
              _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "writeExperiment: %@ : stream %@ written status: %@ written events: %@", buf, 0x2Au);

              v11 = v73;
            }

            [v84 addObject:v32];
            v34 = [v32 objectForKeyedSubscript:@"writeState"];
            v35 = [v34 unsignedIntValue];

            if (v35)
            {
              v21 = &qword_10020B000;
              v36 = qword_10020B650;
              if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
              {
                v37 = v36;
                v38 = [v30 name];
                *buf = 138412546;
                v95 = v83;
                v96 = 2112;
                v97 = v38;
                _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "writeExperiment: %@ : stream %@ wasn't written", buf, 0x16u);

                v21 = &qword_10020B000;
              }
            }

            else
            {
              v21 = &qword_10020B000;
              if (v77 == -1)
              {
                v77 = 0;
              }

              else
              {
                ++v77;
                [v11 writeData:v76];
              }
            }

            objc_autoreleasePoolPop(v31);
          }

          v27 = [v25 countByEnumeratingWithState:&v85 objects:v102 count:16];
        }

        while (v27);

        v12 = v68;
        v10 = v70;
        v13 = v72;
        v15 = v65;
        v16 = v67;
        if (v77)
        {
          [a1 replaceJSONDataWithNull:v76 atWriteHandle:v11];
          v41 = [@"}" dataUsingEncoding:4];
          [v11 writeData:v41];
          if (os_log_type_enabled(v21[202], OS_LOG_TYPE_DEBUG))
          {
            sub_100125970();
          }

          v42 = v66;
LABEL_57:
          v52 = v84;
          v59 = v84;

          goto LABEL_61;
        }
      }

      else
      {
      }

      v42 = v66;
      [a1 replaceJSONDataWithNull:v66 atWriteHandle:v11];
      if (os_log_type_enabled(v21[202], OS_LOG_TYPE_DEBUG))
      {
        sub_1001259E4();
      }

      goto LABEL_57;
    }

    v62 = qword_10020B650;
    v19 = v54;
    v13 = v72;
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125880(v62, v19);
    }
  }

  if (byte_10020B658)
  {
    goto LABEL_16;
  }

  v78 = v19;
  v69 = v12;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v71 = v10;
  obja = v10;
  v43 = [obja countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v90;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v90 != v45)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v89 + 1) + 8 * j);
        v48 = +[NSMutableDictionary dictionary];
        [v48 setObject:v83 forKeyedSubscript:@"experimentName"];
        v49 = [v47 name];
        [v48 setObject:v49 forKeyedSubscript:@"streamName"];

        v50 = [NSNumber numberWithBool:0];
        [v48 setObject:v50 forKeyedSubscript:@"enoughHistory"];

        v51 = &off_1001CA1F8;
        if (!v15)
        {
          if ([v78 count])
          {
            v51 = &off_1001CA210;
          }

          else
          {
            v51 = &off_1001CA1F8;
          }
        }

        [v48 setObject:v51 forKeyedSubscript:@"writeState"];
        [v48 setObject:&off_1001CA228 forKeyedSubscript:@"numberOfWrittenEvents"];
        [v84 addObject:v48];
      }

      v44 = [obja countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v44);
  }

  v52 = v84;
  v53 = v84;

  v12 = v69;
  v10 = v71;
  v13 = v72;
LABEL_61:

  objc_autoreleasePoolPop(v13);

  return v52;
}

+ (void)addCurrentStateToEvents:(id)a3 forEventStream:(id)a4
{
  v32 = a3;
  v5 = a4;
  v6 = +[_CDClientContext userContext];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[_CDContextQueries keyPathForInUseStatus];
  v9 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v10 = [v9 name];
  [v7 setObject:v8 forKeyedSubscript:v10];

  v11 = +[_CDContextQueries keyPathForPluginStatus];
  v12 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v13 = [v12 name];
  [v7 setObject:v11 forKeyedSubscript:v13];

  v14 = +[_CDContextQueries keyPathForBatteryLevel];
  v15 = +[_DKSystemEventStreams deviceBatteryPercentageStream];
  v16 = [v15 name];
  [v7 setObject:v14 forKeyedSubscript:v16];

  v17 = +[_CDContextQueries keyPathForDoNotDisturbStatus];
  v18 = +[_DKSystemEventStreams doNotDisturbStream];
  v19 = [v18 name];
  [v7 setObject:v17 forKeyedSubscript:v19];

  v20 = [_CDContextualKeyPath keyPathWithKey:@"/charging/topOffCheckpoint"];
  [v7 setObject:v20 forKeyedSubscript:@"/charging/smartTopOffCheckpoint"];

  v21 = [v5 name];
  v22 = [v7 objectForKeyedSubscript:v21];

  if (v22)
  {
    v23 = [v5 name];
    v24 = [v7 objectForKeyedSubscript:v23];

    v25 = +[NSDate date];
    v26 = [v32 lastObject];
    v27 = v26;
    if (v26)
    {
      [v26 endDate];
    }

    else
    {
      [v25 dateByAddingTimeInterval:-2592000.0];
    }
    v28 = ;
    v29 = [v6 objectForKeyedSubscript:v24];
    v30 = [v29 integerValue];

    v31 = [_DKEvent eventWithStream:v5 startDate:v28 endDate:v25 categoryIntegerValue:v30 metadata:0];
    if (v31)
    {
      [v32 addObject:v31];
    }
  }
}

+ (id)writeStream:(id)a3 toFileHandle:(id)a4 withEventPredicate:(id)a5 withStore:(id)a6
{
  v9 = a3;
  v67 = a4;
  v10 = a5;
  v64 = a6;
  v11 = +[NSMutableDictionary dictionary];
  v12 = [v9 name];
  [v11 setObject:v12 forKeyedSubscript:@"streamName"];

  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enoughHistory"];
  [v11 setObject:&off_1001CA240 forKeyedSubscript:@"writeState"];
  [v11 setObject:&off_1001CA228 forKeyedSubscript:@"numberOfWrittenEvents"];
  v13 = [v9 name];
  v14 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v15 = [v14 name];
  v16 = [v13 isEqualToString:v15];

  if (v16)
  {
    v17 = [NSPredicate predicateWithFormat:@"value.integerValue != 0"];
    v89[0] = v17;
    v89[1] = v10;
    v18 = [NSArray arrayWithObjects:v89 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125D04();
    }

LABEL_16:

    goto LABEL_17;
  }

  v20 = [v9 name];
  v21 = +[_DKSystemEventStreams deviceIsLockedImputedStream];
  v22 = [v21 name];
  v23 = [v20 isEqualToString:v22];

  if (v23)
  {
    v17 = [NSPredicate predicateWithFormat:@"value.integerValue != 0"];
    v88[0] = v17;
    v88[1] = v10;
    v24 = [NSArray arrayWithObjects:v88 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125C58();
    }

    goto LABEL_16;
  }

  v25 = [v9 name];
  v26 = +[_DKSystemEventStreams deviceLowPowerModeStream];
  v27 = [v26 name];
  v28 = [v25 isEqualToString:v27];

  if (v28)
  {
    v17 = [NSPredicate predicateWithFormat:@"value.integerValue != 0"];
    v87[0] = v17;
    v87[1] = v10;
    v29 = [NSArray arrayWithObjects:v87 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v29];

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125BAC();
    }

    goto LABEL_16;
  }

  v30 = [v9 name];
  v31 = +[_DKSystemEventStreams defaultPairedDeviceNearbyStream];
  v32 = [v31 name];
  v33 = [v30 isEqualToString:v32];

  if (v33)
  {
    v17 = [NSPredicate predicateWithFormat:@"value.integerValue != 1"];
    v86[0] = v17;
    v86[1] = v10;
    v34 = [NSArray arrayWithObjects:v86 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125B00();
    }

    goto LABEL_16;
  }

  v35 = [v9 name];
  v36 = +[_DKSystemEventStreams motionStream];
  v37 = [v36 name];
  v38 = [v35 isEqualToString:v37];

  if (v38)
  {
    v17 = [NSPredicate predicateWithFormat:@"value.integerValue != 1"];
    v85[0] = v17;
    v85[1] = v10;
    v39 = [NSArray arrayWithObjects:v85 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v39];

    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125A54();
    }

    goto LABEL_16;
  }

  v19 = v10;
LABEL_17:
  context = objc_autoreleasePoolPush();
  v40 = [v9 name];
  v66 = [NSString stringWithFormat:@"%@:[]", v40];

  v41 = [v66 dataUsingEncoding:4];
  [v67 writeData:v41];
  v42 = [BMDKEventStream alloc];
  v43 = [v9 name];
  v44 = [v42 initWithDKStreamIdentifier:v43 contentProtection:NSFileProtectionCompleteUntilFirstUserAuthentication];

  v45 = [v44 publisherFromStartTime:0.0];
  v46 = [v45 mapWithTransform:&stru_1001B7670];

  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100099A54;
  v82[3] = &unk_1001B7698;
  v47 = v19;
  v83 = v47;
  v48 = [v46 filterWithIsIncluded:v82];

  v49 = [BPSCountWindowAssigner alloc];
  v50 = [[BPSAggregator alloc] initWithAccumulator:&__NSArray0__struct closure:&stru_1001B76D8];
  v51 = [v49 initWithCapacity:128 aggregator:v50];
  v52 = [v48 windowWithAssigner:v51];
  v53 = [v52 mapWithTransform:&stru_1001B7718];

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100099A74;
  v68[3] = &unk_1001B7760;
  v72 = &v78;
  v73 = a1;
  v71 = &v74;
  v54 = v67;
  v69 = v54;
  v55 = v9;
  v70 = v55;
  v56 = [v53 sinkWithCompletion:&stru_1001B7738 receiveInput:v68];
  v57 = [NSNumber numberWithUnsignedLongLong:v79[3]];
  [v11 setObject:v57 forKeyedSubscript:@"numberOfWrittenEvents"];

  if (v79[3])
  {
    v58 = qword_10020B650;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v59 = [NSNumber numberWithUnsignedLongLong:v79[3]];
      v60 = [v55 name];
      sub_100125DB0(v59, v60, v84);
    }

    [v11 setObject:&off_1001CA258 forKeyedSubscript:@"writeState"];
  }

  else
  {
    if (v75[3])
    {
      [v11 setObject:&off_1001CA270 forKeyedSubscript:@"writeState"];
    }

    [a1 replaceJSONDataWithNull:v41 atWriteHandle:v54];
  }

  v61 = v11;

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  objc_autoreleasePoolPop(context);

  return v61;
}

+ (void)replaceJSONDataWithNull:(id)a3 atWriteHandle:(id)a4
{
  v5 = a4;
  v6 = [a3 length];
  v7 = +[NSMutableData data];
  v10 = 0;
  if (v6)
  {
    v8 = v6;
    do
    {
      [v7 appendBytes:&v10 length:1];
      --v8;
    }

    while (v8);
  }

  v9 = ([v5 offsetInFile] - v6);
  [v5 seekToFileOffset:v9];
  [v5 writeData:v7];
  [v5 seekToFileOffset:v9];
}

+ (void)extendJSONArrayWithAnotherArray:(id)a3 toFileHandler:(id)a4 isPreviouslyEmpty:(BOOL)a5
{
  v11 = a4;
  v7 = a3;
  v8 = [@" "];
  [v11 seekToFileOffset:{objc_msgSend(v11, "offsetInFile") - 1}];
  v9 = [v11 readDataOfLength:1];
  [v11 seekToFileOffset:{objc_msgSend(v11, "offsetInFile") - 1}];
  if (!a5)
  {
    [v11 writeData:v8];
  }

  v10 = [v7 subdataWithRange:{1, objc_msgSend(v7, "length") - 2}];

  [v11 writeData:v10];
  [v11 writeData:v9];
}

+ (id)fuzzedDateFromDate:(id)a3 forStreamName:(id)a4
{
  v5 = a3;
  v6 = [qword_10020B628 objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = *&qword_10020A188;
  }

  [v5 timeIntervalSince1970];
  v11 = [NSDate dateWithTimeIntervalSince1970:v9 * floor(v10 / v9)];

  return v11;
}

+ (id)metadataWitDisallowedKeysRemoveForMedatata:(id)a3 forStreamName:(id)a4
{
  v5 = a3;
  v6 = [qword_10020B638 objectForKeyedSubscript:a4];
  if ([v6 count])
  {
    v7 = [v5 mutableCopy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeObjectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = [v7 copy];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

+ (BOOL)shouldExcludeEvent:(id)a3
{
  v3 = a3;
  if ([v3 integerValue] == 8)
  {
    v4 = [v3 stream];
    v5 = +[_DKSystemEventStreams deviceActivityLevelStream];
    if ([v4 isEqual:v5])
    {
      v6 = [v3 endDate];
      v7 = [v3 startDate];
      [v6 timeIntervalSinceDate:v7];
      v9 = v8;

      if (v9 <= 1.0)
      {
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v11 = [v3 stream];
  v12 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
  if ([v11 isEqual:v12])
  {
    v13 = [v3 metadata];
    v14 = +[_DKBluetoothMetadataKey isAppleAudioDevice];
    v15 = [v13 objectForKeyedSubscript:v14];
    v10 = [v15 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_10:
  return v10;
}

+ (id)processEvents:(id)a3
{
  v3 = a3;
  v62 = objc_alloc_init(NSMutableArray);
  if (!+[_DASConfig isInternalBuild])
  {
    goto LABEL_13;
  }

  v4 = [v3 firstObject];
  v5 = [v4 stream];
  v6 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [v3 sortUsingComparator:&stru_1001B77A0];
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v10)
    {
      v11 = *v73;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v73 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v72 + 1) + 8 * i);
          v14 = objc_opt_new();
          v15 = [v13 startDate];
          v16 = [v13 endDate];
          v17 = [v14 initWithStartDate:v15 endDate:v16];

          [v8 addObject:v17];
        }

        v10 = [v9 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v10);
    }

    v77 = 0;
    v78 = &v77;
    v79 = 0x2050000000;
    v18 = qword_10020B668;
    v80 = qword_10020B668;
    if (!qword_10020B668)
    {
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_10009E7B8;
      v76[3] = &unk_1001B5798;
      v76[4] = &v77;
      sub_10009E7B8(v76);
      v18 = v78[3];
    }

    v19 = v18;
    _Block_object_dispose(&v77, 8);
    v60 = [v18 loIAtBeginningAndEndOfIntervals:v8];
  }

  else
  {
LABEL_13:
    v60 = 0;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v3;
  v65 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (v65)
  {
    v61 = 0;
    v64 = *v69;
    do
    {
      for (j = 0; j != v65; j = j + 1)
      {
        if (*v69 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v68 + 1) + 8 * j);
        v22 = objc_autoreleasePoolPush();
        if (([objc_opt_class() shouldExcludeEvent:v21] & 1) == 0)
        {
          v23 = [v21 stream];
          v67 = [v23 name];

          v24 = objc_opt_class();
          v25 = [v21 startDate];
          v66 = [v24 fuzzedDateFromDate:v25 forStreamName:v67];

          v26 = objc_opt_class();
          v27 = [v21 endDate];
          v28 = [v26 fuzzedDateFromDate:v27 forStreamName:v67];

          v81[0] = @"start";
          v29 = [v21 timeZone];
          [v66 timeIntervalSince1970WithTimeZoneOffset:{objc_msgSend(v29, "secondsFromGMT")}];
          v30 = [NSNumber numberWithDouble:?];
          v82[0] = v30;
          v81[1] = @"end";
          v31 = [v21 timeZone];
          [v28 timeIntervalSince1970WithTimeZoneOffset:{objc_msgSend(v31, "secondsFromGMT")}];
          v32 = [NSNumber numberWithDouble:?];
          v81[2] = @"stream";
          v82[1] = v32;
          v82[2] = v67;
          v33 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
          v34 = [v33 mutableCopy];

          v35 = [v21 stream];
          v36 = +[_DKSystemEventStreams nextEventForTopOffProtectionStream];
          LODWORD(v30) = [v35 isEqual:v36];

          if (v30)
          {
            [v21 doubleValue];
            v38 = v37;
            v39 = [v21 timeZone];
            v40 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v38 + [v39 secondsFromGMT]);
            [v34 setObject:v40 forKeyedSubscript:@"value"];
          }

          else
          {
            v41 = [v21 stream];
            v42 = +[_DKSystemEventStreams nextEventForTopOffProtectionStream];
            v43 = [v41 isEqual:v42];

            if (v43)
            {
              [v21 doubleValue];
              [NSNumber numberWithDouble:?];
            }

            else
            {
              +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue]);
            }
            v44 = ;
            [v34 setObject:v44 forKeyedSubscript:@"value"];

            v45 = [v21 metadata];

            if (v45)
            {
              v46 = objc_opt_class();
              v47 = [v21 metadata];
              v48 = [v46 metadataWitDisallowedKeysRemoveForMedatata:v47 forStreamName:v67];

              if (!+[_DASConfig isInternalBuild])
              {
                goto LABEL_30;
              }

              v49 = [obj firstObject];
              v50 = [v49 stream];
              v51 = +[_DKSystemEventStreams deviceIsPluggedInStream];
              v52 = [v50 isEqual:v51];

              if (v52)
              {
                v53 = [v48 mutableCopy];
                v54 = [v60 objectAtIndexedSubscript:v61];

                if (v54)
                {
                  v55 = [v60 objectAtIndexedSubscript:v61];
                  v56 = [v55 objectForKeyedSubscript:@"loi"];
                  [v53 setObject:v56 forKeyedSubscript:@"loi"];
                }

                else
                {
                  [v53 setObject:&stru_1001BA3C0 forKeyedSubscript:@"loi"];
                }

                v57 = v53;

                ++v61;
                v48 = v57;
              }

              else
              {
LABEL_30:
                v57 = 0;
              }

              [v34 addEntriesFromDictionary:v48];
            }

            [v62 addObject:v34];
          }
        }

        objc_autoreleasePoolPop(v22);
      }

      v65 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v65);
  }

  v58 = qword_10020B650;
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100125ED8(v58, v62);
  }

  return v62;
}

+ (unint64_t)writeToFileWithContextDictionary:(id)a3
{
  v3 = a3;
  v4 = +[_DASTrialManager sharedInstance];
  v5 = [v4 factorWithName:off_10020A178];
  v6 = v5;
  if (v5 && ([v5 doubleValue], v7 > 0.0) && (objc_msgSend(v6, "doubleValue"), v8 < 100.0))
  {
    [v6 doubleValue];
    v10 = v9;
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125F6C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125FF0();
    }

    v10 = 10;
  }

  v11 = arc4random_uniform(v10);
  if (byte_10020B658 == 1)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100126120();
    }

    if (byte_10020B658)
    {
      v12 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v16 = DRSubmitLog();
    v12 = 0;
    if (!v16)
    {
      v17 = qword_10020B650;
      if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
      {
        sub_10012615C(v17, v12);
      }

      v15 = 85;
      goto LABEL_28;
    }

LABEL_22:
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_1001261F8();
    }

    v15 = 80;
LABEL_28:

    goto LABEL_29;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_10012606C();
  }

  v13 = [objc_opt_class() generateCRFile];
  v14 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v14)
    {
      sub_1001260E4();
    }

    v15 = 81;
  }

  else
  {
    if (v14)
    {
      sub_1001260A8();
    }

    v15 = 86;
  }

LABEL_29:

  return v15;
}

+ (BOOL)generateCRFile
{
  memset(&v10, 0, sizeof(v10));
  if (stat([@"/var/mobile/Library/DuetActivityScheduler/dasd_data.json" UTF8String], &v10) || (st_size = v10.st_size, v10.st_size <= 0))
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100126334();
    }

    goto LABEL_9;
  }

  v3 = open([@"/var/mobile/Library/DuetActivityScheduler/dasd_data.json" UTF8String], 0);
  if (v3 < 0)
  {
LABEL_9:
    unlink([@"/var/mobile/Library/DuetActivityScheduler/dasd_data.json" UTF8String]);
LABEL_10:
    LOBYTE(v8) = 0;
    return v8;
  }

  v4 = v3;
  v5 = mmap(0, st_size, 1, 1, v3, 0);
  if (!v5)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_1001262B4();
    }

    close(v4);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = OSAWriteLogForSubmission();
  munmap(v6, st_size);
  close(v4);
  if ((v7 & 1) == 0)
  {
    v8 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG);
    if (!v8)
    {
      return v8;
    }

    sub_100126234();
    goto LABEL_10;
  }

  LOBYTE(v8) = 1;
  return v8;
}

+ (void)generateUsageVectorRepresentationWithStreamAUsage:(id)a3 streamBUsage:(id)a4 outputRepresentationA:(id)a5 outputRepresentationB:(id)a6
{
  v55 = a3;
  v9 = a4;
  v49 = a5;
  v10 = a6;
  v11 = +[NSDate distantPast];
  v52 = v9;
  if ([v55 count])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v56 = v10;
    while (v13 < [v9 count])
    {
      v51 = v14;
      v15 = [v55 objectAtIndexedSubscript:v12];
      v16 = [v9 objectAtIndexedSubscript:v13];
      v17 = [v15 startDate];
      v18 = [v16 startDate];
      v19 = [v17 earlierDate:v18];

      [v11 timeIntervalSinceDate:v19];
      v53 = v19;
      if (v20 < 0.0)
      {
        v21 = v19;

        v11 = v21;
      }

      v22 = [v15 endDate];
      v23 = [v16 endDate];
      v24 = [v22 earlierDate:v23];

      do
      {
        v25 = v11;
        if ([v15 containsDate:v11])
        {
          v26 = &off_1001CA1E0;
        }

        else
        {
          v26 = &off_1001CA228;
        }

        [v49 addObject:v26];
        if ([v16 containsDate:v11])
        {
          v27 = &off_1001CA1E0;
        }

        else
        {
          v27 = &off_1001CA228;
        }

        [v56 addObject:v27];
        v11 = [v11 dateByAddingTimeInterval:300.0];

        v28 = [v15 endDate];
        [v11 timeIntervalSinceDate:v28];
        v30 = v29;

        if (v30 >= 0.0)
        {
          ++v12;
        }

        v31 = [v16 endDate];
        [v11 timeIntervalSinceDate:v31];
        v33 = v32;

        if (v33 >= 0.0)
        {
          ++v13;
        }

        [v11 timeIntervalSinceDate:v24];
      }

      while (v34 < 0.0);

      v14 = v24;
      v9 = v52;
      v10 = v56;
      if (v12 >= [v55 count])
      {
        goto LABEL_22;
      }
    }

    v24 = v14;
  }

  else
  {
    v24 = 0;
    v13 = 0;
    v12 = 0;
  }

LABEL_22:
  if (v12 >= [v55 count])
  {
    v36 = v50;
  }

  else
  {
    v35 = v55;
    v36 = v50;
    do
    {
      v54 = v24;
      v37 = [v35 objectAtIndexedSubscript:v12];
      v38 = [v37 startDate];
      v39 = [v11 laterDate:v38];

      v57 = v37;
      v24 = [v37 endDate];

      v11 = v39;
      do
      {
        v40 = v11;
        [v50 addObject:&off_1001CA1E0];
        [v10 addObject:&off_1001CA228];
        v11 = [v11 dateByAddingTimeInterval:300.0];

        [v11 timeIntervalSinceDate:v24];
      }

      while (v41 < 0.0);
      ++v12;

      v42 = v12 >= [v55 count];
      v35 = v55;
    }

    while (!v42);
  }

  for (i = v52; v13 < [v52 count]; i = v52)
  {
    v58 = v24;
    v44 = [i objectAtIndexedSubscript:v13];
    v45 = [v44 startDate];
    v46 = [v11 laterDate:v45];

    v24 = [v44 endDate];

    v11 = v46;
    do
    {
      v47 = v11;
      [v36 addObject:&off_1001CA228];
      [v10 addObject:&off_1001CA1E0];
      v11 = [v11 dateByAddingTimeInterval:300.0];

      [v11 timeIntervalSinceDate:v24];
    }

    while (v48 < 0.0);
    ++v13;
  }
}

+ (void)convertFocusModeStream:(id)a3 toKnowledgeStoreStream:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BiomeLibrary();
  v32 = 0;
  v8 = [v7 streamWithIdentifier:v5 error:&v32];
  v9 = v32;

  if (!v8 || v9)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
    {
      sub_1001263B4();
    }
  }

  else
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    v10 = +[NSMutableArray array];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_10009B778;
    v29[4] = sub_10009B788;
    v30 = 0;
    v11 = [_DKEventStream eventStreamWithName:v6];
    v12 = +[_DKKnowledgeStore knowledgeStore];
    v13 = [v8 publisher];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009B790;
    v24[3] = &unk_1001B77E8;
    v25 = v12;
    v26 = v10;
    v27 = v5;
    v28 = v31;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009B810;
    v18[3] = &unk_1001B7810;
    v22 = v31;
    v23 = v29;
    v14 = v11;
    v19 = v14;
    v15 = v26;
    v20 = v15;
    v16 = v25;
    v21 = v16;
    v17 = [v13 sinkWithCompletion:v24 receiveInput:v18];

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
  }
}

+ (BOOL)convertBiomeStream:(id)a3 toKnowledgeStoreStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isEqualToString:@"UserFocusComputedMode"];
  if (v8)
  {
    [a1 deleteEventsFromStream:v7];
    [a1 convertFocusModeStream:v6 toKnowledgeStoreStream:v7];
  }

  return v8;
}

+ (void)deleteConvertedStreams
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009BB70;
  v2[3] = &unk_1001B7630;
  v2[4] = a1;
  [qword_10020B640 enumerateKeysAndObjectsUsingBlock:v2];
}

+ (void)deleteEventsFromStream:(id)a3
{
  v3 = a3;
  v12 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v4 = +[_DKKnowledgeStore knowledgeStore];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [NSPredicate predicateWithValue:1];
    v7 = [_DKEventStream eventStreamWithName:v3];
    v13 = v7;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = [_DKEventQuery eventQueryWithPredicate:v6 eventStreams:v8 offset:0 limit:32 sortDescriptors:0];

    v10 = [v4 executeQuery:v9 error:0];
    if (![v10 count])
    {
      break;
    }

    [v4 deleteObjects:v10 error:0];

    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v5);
  objc_autoreleasePoolPop(context);
}

+ (void)submitSystemTask:(id)a3
{
  v3 = a3;
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v3 identifier];
  v6 = [v4 taskRequestForIdentifier:v5];

  if (!v6)
  {
    v10 = +[BGSystemTaskScheduler sharedScheduler];
    v12 = 0;
    v11 = [v10 submitTaskRequest:v3 error:&v12];
    v8 = v12;

    if ((v11 & 1) == 0 && os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
    {
      sub_1001264AC();
    }

    goto LABEL_7;
  }

  v7 = qword_10020B650;
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v3 identifier];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ task request already exists, backing out of resubmission", buf, 0xCu);

LABEL_7:
  }
}

+ (void)registerForDataCollectionTestNotification
{
  if (+[_DASConfig isInternalBuild])
  {
    out_token = 0;
    v3 = dispatch_get_global_queue(0, 0);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10009BFCC;
    v4[3] = &unk_1001B7850;
    v4[4] = a1;
    notify_register_dispatch("com.apple.dasd.dataCollectionTasks.testModeRun", &out_token, v3, v4);
  }
}

+ (void)schedule
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C194;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  dispatch_async(v3, block);
}

+ (void)scheduleDASTelemetryActivities
{
  v2 = [_DASDataCollectionSUTask taskWithName:@"com.apple.dasd.dataCollectiontask.dummyAutoSU" intervalDuration:qword_10020B650 withLogger:900.0];
  v3 = +[_DASPolicyDataCollection sharedInstance];
  [v3 scheduleTelemetry];
}

+ (void)reportDataOnExperiments:(id)a3
{
  v4 = a3;
  v5 = qword_10020B650;
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "schedule: Running data collection background task", v16, 2u);
  }

  [objc_opt_class() loadParameters];
  v6 = [objc_opt_class() experimentsToWrite];
  v7 = [v6 count];
  v8 = qword_10020B650;
  v9 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *v16 = 138412290;
      *&v16[4] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "schedule: attempting to write experiments: %@", v16, 0xCu);
    }

    v10 = [a1 writeExperiments:v6 atFileName:@"/var/mobile/Library/DuetActivityScheduler/dasd_data.json" withTask:v4];
    v11 = qword_10020B650;
    v12 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO);
    if (v10 < 1)
    {
      if (v12)
      {
        *v16 = 0;
        v13 = "schedule: didn't write any experiment to crash reporter (CR)";
        v14 = v11;
        v15 = 2;
        goto LABEL_13;
      }
    }

    else if (v12)
    {
      *v16 = 134218242;
      *&v16[4] = v10;
      *&v16[12] = 2112;
      *&v16[14] = @"/var/mobile/Library/DuetActivityScheduler/dasd_data.json";
      v13 = "schedule: wrote %lld experiments to crash reporter (CR) and %@";
      v14 = v11;
      v15 = 22;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, v16, v15);
    }

    [a1 deleteConvertedStreams];
    goto LABEL_15;
  }

  if (v9)
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "schedule: no experiments to write post sampling", v16, 2u);
  }

LABEL_15:
}

+ (void)reportBackgroundAppRefreshAnalytics:(id)a3
{
  v17 = a3;
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100126670();
  }

  v3 = +[_DASBARMetricRecorder sharedInstance];
  v4 = [v3 fetchLatestBARMetric];

  v5 = [v4 objectForKeyedSubscript:@"BgRefreshSubmissionCount"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"BgRefreshSubmissionCount"];
  }

  else
  {
    v6 = &off_1001CA228;
  }

  v7 = [v4 objectForKeyedSubscript:@"BgRefreshCompletionCount"];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"BgRefreshCompletionCount"];
  }

  else
  {
    v8 = &off_1001CA228;
  }

  v9 = [v4 objectForKeyedSubscript:@"PushLaunchSubmissionCount"];
  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"PushLaunchSubmissionCount"];
  }

  else
  {
    v10 = &off_1001CA228;
  }

  v11 = [v4 objectForKeyedSubscript:@"PushLaunchCompletionCount"];
  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"PushLaunchCompletionCount"];
  }

  else
  {
    v12 = &off_1001CA228;
  }

  v22[0] = @"BgRefreshSubmissionCount";
  v22[1] = @"BgRefreshCompletionCount";
  v23[0] = v6;
  v23[1] = v8;
  v22[2] = @"PushLaunchSubmissionCount";
  v22[3] = @"PushLaunchCompletionCount";
  v23[2] = v10;
  v23[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v14 = qword_10020B650;
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "sending BackgroundAppRefreshActivity analytics to CA: %@", buf, 0xCu);
  }

  v19 = v13;
  v15 = v13;
  AnalyticsSendEventLazy();
  v16 = +[_DASBARMetricRecorder sharedInstance];
  [v16 resetBARMetric];
}

+ (void)reportWakeAnalytics:(id)a3
{
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_1001266AC();
  }

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.appResume"];
  [v3 BOOLForKey:@"BGAppKillDemo"];
  AnalyticsSendEventLazy();
}

+ (int)boundedDurationFromDuration:(double)a3
{
  if (a3 < 1.0)
  {
    return 0;
  }

  v4 = a3 / 60.0;
  if (v4 <= 5.0)
  {
    return 5;
  }

  if (v4 <= 15.0)
  {
    return 15;
  }

  if (v4 <= 30.0)
  {
    return 30;
  }

  if (v4 <= 60.0)
  {
    return 60;
  }

  if (v4 <= 120.0)
  {
    return 120;
  }

  if (v4 <= 240.0)
  {
    return 240;
  }

  if (v4 <= 480.0)
  {
    return 480;
  }

  if (v4 <= 720.0)
  {
    return 720;
  }

  if (v4 <= 1440.0)
  {
    return 1440;
  }

  if (v4 <= 2880.0)
  {
    return 2880;
  }

  if (v4 <= 10080.0)
  {
    return 10080;
  }

  return 20160;
}

+ (void)reportAnalyticsForActivity:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    context = v4;
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.dailyPeriodic"];
    v6 = +[NSDate now];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;

    v9 = [v5 objectForKey:v3];
    v11 = v9;
    if (v9)
    {
      [v9 doubleValue];
      v13 = floor((v8 - v12) / 3600.0);
      v10 = 2.0;
      if (v13 <= 2.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 4.0;
        if (v13 > 4.0)
        {
          v10 = 12.0;
          v15 = 18.0;
          v16 = 24.0;
          v17 = 30.0;
          v18 = 36.0;
          v19 = 48.0;
          v20 = 72.0;
          v21 = 96.0;
          if (v13 > 96.0)
          {
            v21 = 100.0;
          }

          if (v13 > 72.0)
          {
            v20 = v21;
          }

          if (v13 > 48.0)
          {
            v19 = v20;
          }

          if (v13 > 36.0)
          {
            v18 = v19;
          }

          if (v13 > 30.0)
          {
            v17 = v18;
          }

          if (v13 > 24.0)
          {
            v16 = v17;
          }

          if (v13 > 18.0)
          {
            v15 = v16;
          }

          if (v13 > 12.0)
          {
            v14 = v15;
          }

          else
          {
            v14 = 12.0;
          }
        }
      }
    }

    else
    {
      v14 = 0.0;
    }

    v22 = [NSNumber numberWithDouble:v8, v10];
    [v5 setObject:v22 forKey:v3];

    v23 = +[_CDClientContext userContext];
    v24 = +[_CDContextQueries keyPathForBatteryLevel];
    v25 = [v23 objectForKeyedSubscript:v24];

    v40 = v5;
    if (v25)
    {
      [v25 doubleValue];
      v27 = [NSNumber numberWithInt:10 * vcvtmd_s64_f64(v26 / 10.0)];
    }

    else
    {
      v27 = 0;
    }

    v28 = +[_CDContextQueries keyPathForPluginStatus];
    v29 = [v23 objectForKeyedSubscript:v28];

    v30 = [NSNumber numberWithInteger:[_CDNetworkContext wifiQuality:v23]];
    v31 = [NSNumber numberWithInteger:[_CDNetworkContext cellQuality:v23]];
    v45[0] = v3;
    v44[0] = @"Name";
    v44[1] = @"HoursSinceLastRun";
    if (v11)
    {
      v32 = [NSNumber numberWithDouble:v14];
    }

    else
    {
      v32 = &off_1001CA288;
    }

    if (v27)
    {
      v33 = v27;
    }

    else
    {
      v33 = &off_1001CA288;
    }

    v45[1] = v32;
    v45[2] = v33;
    v44[2] = @"BatteryLevel";
    v44[3] = @"PluginStatus";
    if (v29)
    {
      v34 = v29;
    }

    else
    {
      v34 = &off_1001CA288;
    }

    if (v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = &off_1001CA288;
    }

    v45[3] = v34;
    v45[4] = v35;
    v44[4] = @"WiFiQuality";
    v44[5] = @"CellQuality";
    if (v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = &off_1001CA288;
    }

    v45[5] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:6];
    if (v11)
    {
    }

    v38 = qword_10020B650;
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Reporting: %@", buf, 0xCu);
    }

    v39 = v37;
    AnalyticsSendEventLazy();

    v4 = context;
  }

  objc_autoreleasePoolPop(v4);
}

+ (double)computeUsageCorrelationBetweenAirPodsAMPStreamsWithStore:(id)a3
{
  v110 = a3;
  v111 = +[NSMutableArray array];
  v103 = +[NSMutableArray array];
  v109 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
  context = objc_autoreleasePoolPush();
  v3 = +[_DKNowPlayingMetadataKey playing];
  v4 = [_DKEventQuery predicateForObjectsWithMetadataKey:v3 andIntegerValue:1];
  v130[0] = v4;
  v5 = [_DKQuery predicateForEventsWithStringValue:@"com.apple.Music"];
  v129[0] = v5;
  v6 = [_DKQuery predicateForEventsWithStringValue:@"com.apple.tv"];
  v129[1] = v6;
  v7 = [NSArray arrayWithObjects:v129 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
  v130[1] = v8;
  v9 = [NSArray arrayWithObjects:v130 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = +[_DKSystemEventStreams nowPlayingStream];
  v128 = v11;
  v12 = [NSArray arrayWithObjects:&v128 count:1];
  v127 = v109;
  v13 = [NSArray arrayWithObjects:&v127 count:1];
  v112 = v10;
  v14 = [_DKEventQuery eventQueryWithPredicate:v10 eventStreams:v12 offset:0 limit:0 sortDescriptors:v13];

  [v14 setResultType:2];
  v121 = 0;
  v107 = v14;
  v15 = [v110 executeQuery:v14 error:&v121];
  v105 = v121;
  if (v105)
  {
    v16 = [_DASDaemonLogger logForCategory:@"dataCollection"];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001266E8();
    }
  }

  else if ([v15 count])
  {
    v17 = 0;
    do
    {
      v18 = [v15 objectAtIndexedSubscript:v17];
      v19 = [v18 startDate];
      [v19 timeIntervalSince1970];
      v21 = [NSDate dateWithTimeIntervalSince1970:floor(v20 / 300.0) * 300.0];

      v22 = [v15 objectAtIndexedSubscript:v17];
      v23 = [v22 endDate];
      [v23 timeIntervalSince1970];
      v25 = [NSDate dateWithTimeIntervalSince1970:floor(v24 / 300.0) * 300.0];

      if (++v17 < [v15 count])
      {
        while (1)
        {
          v26 = [v15 objectAtIndexedSubscript:v17];
          v27 = [v26 startDate];
          [v27 timeIntervalSince1970];
          v29 = [NSDate dateWithTimeIntervalSince1970:floor(v28 / 300.0) * 300.0];

          [v29 timeIntervalSinceDate:v25];
          if (v30 >= 5.0)
          {
            break;
          }

          v31 = [v15 objectAtIndexedSubscript:v17];
          v32 = [v31 endDate];
          [v32 timeIntervalSince1970];
          v34 = [NSDate dateWithTimeIntervalSince1970:floor(v33 / 300.0) * 300.0];

          ++v17;
          v25 = v34;
          if (v17 >= [v15 count])
          {
            goto LABEL_13;
          }
        }
      }

      v34 = v25;
LABEL_13:
      v35 = [[NSDateInterval alloc] initWithStartDate:v21 endDate:v34];
      [v111 addObject:v35];
    }

    while (v17 < [v15 count]);
  }

  objc_autoreleasePoolPop(context);
  if (v105)
  {
    v36 = 1.79769313e308;
    v37 = v103;
  }

  else
  {
    v38 = [_DASDaemonLogger logForCategory:@"dataCollection"];
    v37 = v103;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_100126758();
    }

    v39 = [v111 count];
    if (*&qword_10020A198 <= v39)
    {
      v102 = objc_autoreleasePoolPush();
      v104 = [_DKQuery predicateForEventsWithIntegerValue:1];
      v41 = +[NSMutableArray array];
      v42 = 0;
      contexta = 0;
      v113 = v41;
      do
      {
        v43 = +[_DKSystemEventStreams bluetoothIsConnectedStream];
        v126 = v43;
        v44 = [NSArray arrayWithObjects:&v126 count:1];
        v125 = v109;
        v45 = [NSArray arrayWithObjects:&v125 count:1];
        v46 = [_DKEventQuery eventQueryWithPredicate:v104 eventStreams:v44 offset:v42 limit:256 sortDescriptors:v45];

        v120 = 0;
        v47 = [v110 executeQuery:v46 error:&v120];
        v48 = v120;
        if (v48)
        {
          v99 = v48;
          v100 = [_DASDaemonLogger logForCategory:@"dataCollection"];
          v37 = v103;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            sub_1001266E8();
          }

          objc_autoreleasePoolPop(v102);
          v36 = 1.79769313e308;
          goto LABEL_62;
        }

        v106 = v46;
        v108 = v42;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v49 = v47;
        v50 = [v49 countByEnumeratingWithState:&v116 objects:v124 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v117;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v117 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v116 + 1) + 8 * i);
              v55 = [v54 metadata];
              v56 = +[_DKBluetoothMetadataKey isAppleAudioDevice];
              v57 = [v55 objectForKeyedSubscript:v56];
              v58 = [v57 BOOLValue];

              if (v58)
              {
                v59 = [v54 metadata];
                v60 = +[_DKBluetoothMetadataKey productID];
                v61 = [v59 objectForKeyedSubscript:v60];
                v62 = [v61 unsignedIntegerValue];

                if ((v62 - 8194) <= 0x26 && ((1 << (v62 - 2)) & 0x6452863001) != 0)
                {
                  v64 = [NSDateInterval alloc];
                  v65 = [v54 startDate];
                  [v65 timeIntervalSince1970];
                  v67 = [NSDate dateWithTimeIntervalSince1970:floor(v66 / 300.0) * 300.0];
                  v68 = [v54 endDate];
                  [v68 timeIntervalSince1970];
                  v70 = [NSDate dateWithTimeIntervalSince1970:floor(v69 / 300.0) * 300.0];
                  v71 = [v64 initWithStartDate:v67 endDate:v70];
                  [v113 addObject:v71];
                }

                contexta = 1;
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v116 objects:v124 count:16];
          }

          while (v51);
        }

        v72 = [v49 count];
        v42 = v108 + 256;
        v41 = v113;
      }

      while (v72 == 256);
      v37 = v103;
      if ([v113 count])
      {
        v73 = 0;
        do
        {
          v74 = [v113 objectAtIndexedSubscript:v73];
          v75 = [v74 startDate];
          [v75 timeIntervalSince1970];
          v77 = [NSDate dateWithTimeIntervalSince1970:floor(v76 / 300.0) * 300.0];

          v78 = [v113 objectAtIndexedSubscript:v73];
          v79 = [v78 endDate];
          [v79 timeIntervalSince1970];
          v81 = [NSDate dateWithTimeIntervalSince1970:floor(v80 / 300.0) * 300.0];

          if (++v73 < [v113 count])
          {
            while (1)
            {
              v82 = [v113 objectAtIndexedSubscript:v73];
              v83 = [v82 startDate];
              [v83 timeIntervalSince1970];
              v85 = [NSDate dateWithTimeIntervalSince1970:floor(v84 / 300.0) * 300.0];

              [v85 timeIntervalSinceDate:v81];
              if (v86 >= 5.0)
              {
                break;
              }

              v87 = [v113 objectAtIndexedSubscript:v73];
              v88 = [v87 endDate];
              [v88 timeIntervalSince1970];
              v90 = [NSDate dateWithTimeIntervalSince1970:floor(v89 / 300.0) * 300.0];

              ++v73;
              v81 = v90;
              if (v73 >= [v113 count])
              {
                goto LABEL_47;
              }
            }
          }

          v90 = v81;
LABEL_47:
          v91 = [[NSDateInterval alloc] initWithStartDate:v77 endDate:v90];
          [v103 addObject:v91];
        }

        while (v73 < [v113 count]);
      }

      objc_autoreleasePoolPop(v102);
      if ([v103 count])
      {
        v92 = [_DASDaemonLogger logForCategory:@"dataCollection"];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          sub_1001267C8();
        }

        v93 = +[NSMutableArray array];
        v94 = +[NSMutableArray array];
        [objc_opt_class() generateUsageVectorRepresentationWithStreamAUsage:v111 streamBUsage:v103 outputRepresentationA:v93 outputRepresentationB:v94];
        v36 = 1.0;
        if (([v93 isEqual:v94] & 1) == 0)
        {
          [v93 cooccurrencesWith:v94];
          v36 = v95;
          v96 = [_DASDaemonLogger logForCategory:@"dataCollection"];
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            sub_100126838();
          }

          v122 = @"Correlation";
          v97 = [NSNumber numberWithDouble:v36];
          v123 = v97;
          v98 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
          AnalyticsSendEvent();
        }
      }

      else if (contexta)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.79769313e308;
      }
    }

    else
    {
      v40 = [_DASDaemonLogger logForCategory:@"dataCollection", v39, *&qword_10020A198];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_1001268B0();
      }

      v36 = 0.0;
    }
  }

LABEL_62:

  return v36;
}

@end