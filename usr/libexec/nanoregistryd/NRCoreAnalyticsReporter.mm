@interface NRCoreAnalyticsReporter
+ (void)reportAbortPairingClient:(id)client reason:(id)reason;
+ (void)reportDeviceIsPairedTelemetry:(id)telemetry;
+ (void)reportDeviceSwitchTelemetryWithCollectionHistory:(id)history;
+ (void)reportMigrationWithDeviceHistory:(id)history andError:(id)error;
+ (void)reportNetworkRelayPairingResultWithAuthMethod:(unint64_t)method resultError:(id)error timeElapsed:(double)elapsed;
+ (void)reportPairingFailureWithReportString:(id)string;
+ (void)reportPairingSuccess;
+ (void)reportUnpairReason:(unint64_t)reason;
+ (void)reportXPCReconnectSuccess;
+ (void)sendEvent:(id)event;
+ (void)sendReport:(id)report withEvent:(id)event;
@end

@implementation NRCoreAnalyticsReporter

+ (void)sendReport:(id)report withEvent:(id)event
{
  reportCopy = report;
  eventCopy = event;
  if (!eventCopy)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100100C74(reportCopy, v9);
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
      v14 = reportCopy;
      v15 = 2112;
      v16 = eventCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] Sending Event: %@ - %@", &v13, 0x16u);
    }
  }

  AnalyticsSendEvent();
}

+ (void)sendEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
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
      v11 = eventCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] Sending Event: %@", &v10, 0xCu);
    }
  }

  AnalyticsSendEvent();
}

+ (void)reportUnpairReason:(unint64_t)reason
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
      *&buf[14] = reason;
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

  v12 = [NSNumber numberWithInteger:reason];
  reason = [v9 objectForKeyedSubscript:v12];

  if (!reason)
  {
    reason = [NSString stringWithFormat:@"missingUnpairReason%ld", reason];
  }

  v16[1] = reason;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  [self sendEvent:v14];
}

+ (void)reportAbortPairingClient:(id)client reason:(id)reason
{
  clientCopy = client;
  reasonCopy = reason;
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
      v21 = clientCopy;
      v22 = 2112;
      v23 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s: Client: %@; Reason: %@", buf, 0x20u);
    }
  }

  lastPathComponent = [clientCopy lastPathComponent];
  reasonCopy = [NSString stringWithFormat:@"%@", reasonCopy];
  v13 = [NSString stringWithFormat:@"pairingAborted.%@.%@", lastPathComponent, reasonCopy];

  v16[0] = @"eventType";
  v14 = [@"com.apple.bluetoothregistry." stringByAppendingString:@"pairFailure"];
  v16[1] = @"errorReason";
  v17[0] = v14;
  v17[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  [self sendEvent:v15];
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

  [self sendEvent:v7];
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

  [self sendEvent:v7];
}

+ (void)reportPairingFailureWithReportString:(id)string
{
  stringCopy = string;
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
      v16 = stringCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NRCoreAnalyticsReporter] %s: %@", buf, 0x16u);
    }
  }

  v8 = [@"com.apple.bluetoothregistry." stringByAppendingString:{@"pairFailure", @"eventType"}];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [v9 mutableCopy];

  if (stringCopy)
  {
    [v10 setObject:stringCopy forKeyedSubscript:@"errorReason"];
  }

  [self sendEvent:v10];
}

+ (void)reportDeviceSwitchTelemetryWithCollectionHistory:(id)history
{
  historyCopy = history;
  v5 = _NRIsAutomated();
  [historyCopy deviceCollection];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v52 = v58 = 0u;
  allPairingIDs = [v52 allPairingIDs];
  v53 = [allPairingIDs countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v53)
  {
    v40 = v5;
    selfCopy = self;
    v42 = historyCopy;
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
    obj = allPairingIDs;
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
        value = [v14 value];

        v16 = [v13 objectForKeyedSubscript:v49];
        value2 = [v16 value];

        if (!value2 || [value2 BOOLValue])
        {
          v18 = [v13 objectForKeyedSubscript:v48];
          [v18 value];
          v19 = v54 = v7;

          v20 = [v13 objectForKeyedSubscript:v47];
          value3 = [v20 value];

          v22 = value;
          v23 = [v13 objectForKeyedSubscript:v46];
          value4 = [v23 value];

          v25 = [v13 objectForKeyedSubscript:v45];
          value5 = [v25 value];

          [value4 timeIntervalSinceDate:value5];
          v11 = v27;

          v8 = v22;
          v9 = value3;
          v10 = v19;
          v7 = v54;
        }

        if (value && [value BOOLValue])
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
      historyCopy = v42;
      if (v9)
      {
        v28 = [v52 count];
        switchIndex = [v42 switchIndex];
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
        v35 = [NSNumber numberWithUnsignedInt:switchIndex];
        v60[7] = v35;
        v59[8] = @"preSwitchDwellTimeSeconds";
        v36 = [NSNumber numberWithDouble:v11];
        v60[8] = v36;
        v37 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:9];

        historyCopy = v42;
        [selfCopy sendReport:@"com.apple.nanoregistry.switch-report" withEvent:v37];
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      historyCopy = v42;
    }

    self = selfCopy;
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
      sub_100100D30(self, v37);
    }

    goto LABEL_26;
  }

LABEL_27:
}

+ (void)reportDeviceIsPairedTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v5 = _NRIsAutomated();
  paired = [telemetryCopy paired];
  activeDevice = [telemetryCopy activeDevice];

  v8 = [activeDevice objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
  value = [v8 value];

  v10 = [activeDevice objectForKeyedSubscript:NRDevicePropertyHWModelString];
  value2 = [v10 value];

  if (![(__CFString *)value length])
  {

    value = @"none";
  }

  if (![(__CFString *)value2 length])
  {

    value2 = @"none";
  }

  v15[0] = @"isAutomated";
  v12 = [NSNumber numberWithBool:v5];
  v16[0] = v12;
  v15[1] = @"isPaired";
  v13 = [NSNumber numberWithBool:paired];
  v16[1] = v13;
  v16[2] = value;
  v15[2] = @"watchBuild";
  v15[3] = @"watchHW";
  v16[3] = value2;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

  [self sendReport:@"com.apple.nanoregistry.isPaired" withEvent:v14];
}

+ (void)reportMigrationWithDeviceHistory:(id)history andError:(id)error
{
  errorCopy = error;
  historyCopy = history;
  deviceCollection = [historyCopy deviceCollection];
  activeDevice = [deviceCollection activeDevice];

  v9 = +[NRDataCollector sharedInstance];
  v61 = _NRIsAutomated();
  deviceCollection2 = [historyCopy deviceCollection];
  v62 = [deviceCollection2 count];

  switchIndex = [historyCopy switchIndex];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
  if (activeDevice)
  {
    v14 = [activeDevice objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
    value = [v14 value];

    v15 = [activeDevice objectForKeyedSubscript:NRDevicePropertyHWModelString];
    value2 = [v15 value];

    v17 = [activeDevice objectForKeyedSubscript:NRDevicePropertyBuildType];
    value3 = [v17 value];

    v19 = [activeDevice objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
    [v19 value];
    v20 = v58 = switchIndex;
    v21 = v9;
    v22 = v12;
    integerValue = [v20 integerValue];

    v24 = [activeDevice objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
    value4 = [v24 value];
    integerValue2 = [value4 integerValue];

    v27 = value;
    if (!value)
    {
      v27 = @"Nil";
    }

    v68[0] = @"watchBuild";
    v68[1] = @"watchHW";
    if (value2)
    {
      v28 = value2;
    }

    else
    {
      v28 = @"Nil";
    }

    v69[0] = v27;
    v69[1] = v28;
    if (value3)
    {
      v29 = value3;
    }

    else
    {
      v29 = @"Nil";
    }

    v69[2] = v29;
    v68[2] = @"watchBuildtype";
    v68[3] = @"watchMaxPairingVersion";
    v30 = integerValue;
    v12 = v22;
    v9 = v21;
    v13 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
    v31 = [NSNumber numberWithInteger:v30];
    v69[3] = v31;
    v68[4] = @"watchPairingType";
    v32 = [NSNumber numberWithInteger:integerValue2];
    v69[4] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:5];
    [v12 addEntriesFromDictionary:v33];

    switchIndex = v58;
  }

  domain = [errorCopy domain];
  code = [errorCopy code];

  if (errorCopy)
  {
    v66[0] = @"hasError";
    v36 = [NSNumber numberWithBool:1];
    v37 = v36;
    v38 = @"Nil";
    if (domain)
    {
      v38 = domain;
    }

    v67[0] = v36;
    v67[1] = v38;
    v66[1] = @"errorDomain";
    v66[2] = @"errorCode";
    v39 = [NSNumber numberWithInteger:code];
    v67[2] = v39;
    v40 = [v13[127] dictionaryWithObjects:v67 forKeys:v66 count:3];
    [v12 addEntriesFromDictionary:v40];
  }

  v41 = switchIndex;
  v42 = [v9 getValueForKey:@"btPairingRetryCount"];
  v43 = v12;
  intValue = [v42 intValue];

  v45 = [v9 getValueForKey:@"migrationAttemptCounter"];
  intValue2 = [v45 intValue];

  v47 = +[NRConnectivityPublisher sharedConnectivityPublisher];
  dropoutCounter = [v47 dropoutCounter];
  [v9 getValueForKey:@"migrationIDSDisconnectCount"];
  v49 = v60 = domain;
  v50 = dropoutCounter - [v49 intValue];

  [v9 setValue:&off_100186DD8 forKey:@"migrationIDSDisconnectCount"];
  v64[0] = @"isAutomated";
  v51 = [NSNumber numberWithBool:v61];
  v65[0] = v51;
  v64[1] = @"bluetoothRetryCount";
  v52 = [NSNumber numberWithInteger:intValue];
  v65[1] = v52;
  v64[2] = @"attemptCount";
  v53 = [NSNumber numberWithInteger:intValue2];
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

  [self sendReport:@"com.apple.nanoregistry.migration-report" withEvent:v43];
}

+ (void)reportNetworkRelayPairingResultWithAuthMethod:(unint64_t)method resultError:(id)error timeElapsed:(double)elapsed
{
  errorCopy = error;
  v8 = _NRIsAutomated();
  v9 = [NSMutableDictionary alloc];
  v10 = [NSNumber numberWithBool:v8];
  v11 = [NSNumber numberWithUnsignedInteger:method];
  v12 = [NSNumber numberWithBool:errorCopy != 0];
  v13 = [NSNumber numberWithDouble:elapsed];
  v14 = [v9 initWithObjectsAndKeys:{v10, @"isAutomated", v11, @"authMethod", v12, @"hasError", v13, @"duration", 0}];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v16 = -[errorCopy code];
    if (domain)
    {
      v17 = domain;
    }

    else
    {
      v17 = @"Nil";
    }

    [v14 setObject:v17 forKeyedSubscript:@"errorDomain"];
    v18 = [NSNumber numberWithInteger:v16];
    [v14 setObject:v18 forKeyedSubscript:@"errorCode"];
  }

  [self sendReport:@"com.apple.nanoregistry.networkrelaypairing-report" withEvent:v14];
}

@end