@interface NRCoreAnalyticsReporter
+ (void)reportAbortPairingClient:(id)a3 reason:(id)a4;
+ (void)reportDeviceIsPairedTelemetry:(id)a3;
+ (void)reportDeviceSwitchTelemetryWithCollectionHistory:(id)a3;
+ (void)reportMigrationWithDeviceHistory:(id)a3 andError:(id)a4;
+ (void)reportNetworkRelayPairingResultWithAuthMethod:(unint64_t)a3 resultError:(id)a4 timeElapsed:(double)a5;
+ (void)reportPairingFailureWithReportString:(id)a3;
+ (void)reportPairingSuccess;
+ (void)reportUnpairReason:(unint64_t)a3;
+ (void)reportXPCReconnectSuccess;
+ (void)sendEvent:(id)a3;
+ (void)sendReport:(id)a3 withEvent:(id)a4;
@end

@implementation NRCoreAnalyticsReporter

+ (void)sendReport:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100100C74(v5, v9);
      }
    }
  }

  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] Sending Event: %@ - %@", &v13, 0x16u);
    }
  }

  AnalyticsSendEvent();
}

+ (void)sendEvent:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100100CEC(v6);
      }
    }
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] Sending Event: %@", &v10, 0xCu);
    }
  }

  AnalyticsSendEvent();
}

+ (void)reportUnpairReason:(unint64_t)a3
{
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[NRCoreAnalyticsReporter reportUnpairReason:]";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s: Reason: %lu", buf, 0x16u);
    }
  }

  v15[0] = @"eventType";
  v8 = [@"com.apple.bluetoothregistry." stringByAppendingString:@"unpair"];
  v15[1] = @"errorReason";
  v16[0] = v8;
  v9 = qword_1001B38A0;
  if (!qword_1001B38A0)
  {
    v17[0] = &off_100186DF0;
    v17[1] = &off_100186E08;
    *buf = @"unpairReasonBluetooth";
    *&buf[8] = @"unpairReasonOther";
    v17[2] = &off_100186E20;
    *&buf[16] = @"unpairReasonRestoredFromBackup";
    v10 = [NSDictionary dictionaryWithObjects:buf forKeys:v17 count:3];
    v11 = qword_1001B38A0;
    qword_1001B38A0 = v10;

    v9 = qword_1001B38A0;
  }

  v12 = [NSNumber numberWithInteger:a3];
  v13 = [v9 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = [NSString stringWithFormat:@"missingUnpairReason%ld", a3];
  }

  v16[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  [a1 sendEvent:v14];
}

+ (void)reportAbortPairingClient:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "+[NRCoreAnalyticsReporter reportAbortPairingClient:reason:]";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s: Client: %@; Reason: %@", buf, 0x20u);
    }
  }

  v11 = [v6 lastPathComponent];
  v12 = [NSString stringWithFormat:@"%@", v7];
  v13 = [NSString stringWithFormat:@"pairingAborted.%@.%@", v11, v12];

  v16[0] = @"eventType";
  v14 = [@"com.apple.bluetoothregistry." stringByAppendingString:@"pairFailure"];
  v16[1] = @"errorReason";
  v17[0] = v14;
  v17[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  [a1 sendEvent:v15];
}

+ (void)reportXPCReconnectSuccess
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "+[NRCoreAnalyticsReporter reportXPCReconnectSuccess]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s", buf, 0xCu);
    }
  }

  v6 = [@"com.apple.bluetoothregistry." stringByAppendingString:{@"pairFailure", @"eventType"}];
  v8[1] = @"errorReason";
  v9[0] = v6;
  v9[1] = @"xpcReconnectSuccess";
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [a1 sendEvent:v7];
}

+ (void)reportPairingSuccess
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "+[NRCoreAnalyticsReporter reportPairingSuccess]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s", buf, 0xCu);
    }
  }

  v6 = [@"com.apple.bluetoothregistry." stringByAppendingString:{@"pairSuccess", @"eventType"}];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [a1 sendEvent:v7];
}

+ (void)reportPairingFailureWithReportString:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "+[NRCoreAnalyticsReporter reportPairingFailureWithReportString:]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s: %@", buf, 0x16u);
    }
  }

  v8 = [@"com.apple.bluetoothregistry." stringByAppendingString:{@"pairFailure", @"eventType"}];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [v9 mutableCopy];

  if (v4)
  {
    [v10 setObject:v4 forKeyedSubscript:@"errorReason"];
  }

  [a1 sendEvent:v10];
}

+ (void)reportDeviceSwitchTelemetryWithCollectionHistory:(id)a3
{
  v4 = a3;
  v5 = _NRIsAutomated();
  [v4 deviceCollection];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v52 = v58 = 0u;
  v6 = [v52 allPairingIDs];
  v53 = [v6 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v53)
  {
    v40 = v5;
    v41 = a1;
    v42 = v4;
    v44 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v50 = NRDevicePropertyIsAltAccount;
    v51 = *v56;
    v48 = NRDevicePropertySystemBuildVersion;
    v49 = NRDevicePropertyIsActive;
    v46 = NRDevicePropertyLastActiveDate;
    v47 = NRDevicePropertyHWModelString;
    v11 = 0.0;
    v45 = NRDevicePropertyLastInactiveDate;
    obj = v6;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v56 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v52 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * i)];
        v14 = [v13 objectForKeyedSubscript:v50];
        v15 = [v14 value];

        v16 = [v13 objectForKeyedSubscript:v49];
        v17 = [v16 value];

        if (!v17 || [v17 BOOLValue])
        {
          v18 = [v13 objectForKeyedSubscript:v48];
          [v18 value];
          v19 = v54 = v7;

          v20 = [v13 objectForKeyedSubscript:v47];
          v21 = [v20 value];

          v22 = v15;
          v23 = [v13 objectForKeyedSubscript:v46];
          v24 = [v23 value];

          v25 = [v13 objectForKeyedSubscript:v45];
          v26 = [v25 value];

          [v24 timeIntervalSinceDate:v26];
          v11 = v27;

          v8 = v22;
          v9 = v21;
          v10 = v19;
          v7 = v54;
        }

        if (v15 && [v15 BOOLValue])
        {
          ++v44;
        }

        else
        {
          ++v7;
        }
      }

      v53 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v53);

    if (v10)
    {
      v4 = v42;
      if (v9)
      {
        v28 = [v52 count];
        v29 = [v42 switchIndex];
        v59[0] = @"isAutomated";
        v30 = [NSNumber numberWithBool:v40];
        v60[0] = v30;
        v60[1] = v10;
        v59[1] = @"toWatchBuild";
        v59[2] = @"toWatchHW";
        v31 = &off_100186DC0;
        if (v8)
        {
          v31 = v8;
        }

        v60[2] = v9;
        v60[3] = v31;
        v59[3] = @"toWatchPairingType";
        v59[4] = @"totalPairedDeviceCount";
        v32 = [NSNumber numberWithUnsignedInt:v28];
        v60[4] = v32;
        v59[5] = @"tinkerPairedDeviceCount";
        v33 = [NSNumber numberWithUnsignedInteger:v44];
        v60[5] = v33;
        v59[6] = @"classicPairedDeviceCount";
        v34 = [NSNumber numberWithUnsignedInteger:v7];
        v60[6] = v34;
        v59[7] = @"switchCounter";
        v35 = [NSNumber numberWithUnsignedInt:v29];
        v60[7] = v35;
        v59[8] = @"preSwitchDwellTimeSeconds";
        v36 = [NSNumber numberWithDouble:v11];
        v60[8] = v36;
        v37 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:9];

        v4 = v42;
        [v41 sendReport:@"com.apple.nanoregistry.switch-report" withEvent:v37];
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v4 = v42;
    }

    a1 = v41;
  }

  else
  {

    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v38 = nr_framework_log();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

  if (v39)
  {
    v37 = nr_framework_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100100D30(a1, v37);
    }

    goto LABEL_26;
  }

LABEL_27:
}

+ (void)reportDeviceIsPairedTelemetry:(id)a3
{
  v4 = a3;
  v5 = _NRIsAutomated();
  v6 = [v4 paired];
  v7 = [v4 activeDevice];

  v8 = [v7 objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
  v9 = [v8 value];

  v10 = [v7 objectForKeyedSubscript:NRDevicePropertyHWModelString];
  v11 = [v10 value];

  if (![(__CFString *)v9 length])
  {

    v9 = @"none";
  }

  if (![(__CFString *)v11 length])
  {

    v11 = @"none";
  }

  v15[0] = @"isAutomated";
  v12 = [NSNumber numberWithBool:v5];
  v16[0] = v12;
  v15[1] = @"isPaired";
  v13 = [NSNumber numberWithBool:v6];
  v16[1] = v13;
  v16[2] = v9;
  v15[2] = @"watchBuild";
  v15[3] = @"watchHW";
  v16[3] = v11;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

  [a1 sendReport:@"com.apple.nanoregistry.isPaired" withEvent:v14];
}

+ (void)reportMigrationWithDeviceHistory:(id)a3 andError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 deviceCollection];
  v8 = [v7 activeDevice];

  v9 = +[NRDataCollector sharedInstance];
  v61 = _NRIsAutomated();
  v10 = [v6 deviceCollection];
  v62 = [v10 count];

  v11 = [v6 switchIndex];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
  if (v8)
  {
    v14 = [v8 objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
    v59 = [v14 value];

    v15 = [v8 objectForKeyedSubscript:NRDevicePropertyHWModelString];
    v16 = [v15 value];

    v17 = [v8 objectForKeyedSubscript:NRDevicePropertyBuildType];
    v18 = [v17 value];

    v19 = [v8 objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
    [v19 value];
    v20 = v58 = v11;
    v21 = v9;
    v22 = v12;
    v23 = [v20 integerValue];

    v24 = [v8 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
    v25 = [v24 value];
    v26 = [v25 integerValue];

    v27 = v59;
    if (!v59)
    {
      v27 = @"Nil";
    }

    v68[0] = @"watchBuild";
    v68[1] = @"watchHW";
    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = @"Nil";
    }

    v69[0] = v27;
    v69[1] = v28;
    if (v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = @"Nil";
    }

    v69[2] = v29;
    v68[2] = @"watchBuildtype";
    v68[3] = @"watchMaxPairingVersion";
    v30 = v23;
    v12 = v22;
    v9 = v21;
    v13 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
    v31 = [NSNumber numberWithInteger:v30];
    v69[3] = v31;
    v68[4] = @"watchPairingType";
    v32 = [NSNumber numberWithInteger:v26];
    v69[4] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:5];
    [v12 addEntriesFromDictionary:v33];

    v11 = v58;
  }

  v34 = [v5 domain];
  v35 = [v5 code];

  if (v5)
  {
    v66[0] = @"hasError";
    v36 = [NSNumber numberWithBool:1];
    v37 = v36;
    v38 = @"Nil";
    if (v34)
    {
      v38 = v34;
    }

    v67[0] = v36;
    v67[1] = v38;
    v66[1] = @"errorDomain";
    v66[2] = @"errorCode";
    v39 = [NSNumber numberWithInteger:v35];
    v67[2] = v39;
    v40 = [v13[127] dictionaryWithObjects:v67 forKeys:v66 count:3];
    [v12 addEntriesFromDictionary:v40];
  }

  v41 = v11;
  v42 = [v9 getValueForKey:@"btPairingRetryCount"];
  v43 = v12;
  v44 = [v42 intValue];

  v45 = [v9 getValueForKey:@"migrationAttemptCounter"];
  v46 = [v45 intValue];

  v47 = +[NRConnectivityPublisher sharedConnectivityPublisher];
  v48 = [v47 dropoutCounter];
  [v9 getValueForKey:@"migrationIDSDisconnectCount"];
  v49 = v60 = v34;
  v50 = v48 - [v49 intValue];

  [v9 setValue:&off_100186DD8 forKey:@"migrationIDSDisconnectCount"];
  v64[0] = @"isAutomated";
  v51 = [NSNumber numberWithBool:v61];
  v65[0] = v51;
  v64[1] = @"bluetoothRetryCount";
  v52 = [NSNumber numberWithInteger:v44];
  v65[1] = v52;
  v64[2] = @"attemptCount";
  v53 = [NSNumber numberWithInteger:v46];
  v65[2] = v53;
  v64[3] = @"lossOfIDSConnectivityCount";
  v54 = [NSNumber numberWithInteger:v50];
  v65[3] = v54;
  v64[4] = @"switchCounter";
  v55 = [NSNumber numberWithInteger:v41];
  v65[4] = v55;
  v64[5] = @"totalPairedDeviceCount";
  v56 = [NSNumber numberWithInteger:v62];
  v65[5] = v56;
  v57 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:6];
  [v43 addEntriesFromDictionary:v57];

  [a1 sendReport:@"com.apple.nanoregistry.migration-report" withEvent:v43];
}

+ (void)reportNetworkRelayPairingResultWithAuthMethod:(unint64_t)a3 resultError:(id)a4 timeElapsed:(double)a5
{
  v19 = a4;
  v8 = _NRIsAutomated();
  v9 = [NSMutableDictionary alloc];
  v10 = [NSNumber numberWithBool:v8];
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [NSNumber numberWithBool:v19 != 0];
  v13 = [NSNumber numberWithDouble:a5];
  v14 = [v9 initWithObjectsAndKeys:{v10, @"isAutomated", v11, @"authMethod", v12, @"hasError", v13, @"duration", 0}];

  if (v19)
  {
    v15 = [v19 domain];
    v16 = -[v19 code];
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"Nil";
    }

    [v14 setObject:v17 forKeyedSubscript:@"errorDomain"];
    v18 = [NSNumber numberWithInteger:v16];
    [v14 setObject:v18 forKeyedSubscript:@"errorCode"];
  }

  [a1 sendReport:@"com.apple.nanoregistry.networkrelaypairing-report" withEvent:v14];
}

@end