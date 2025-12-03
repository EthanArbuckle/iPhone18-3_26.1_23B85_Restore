@interface AnalyticsReporter
- (AnalyticsReporter)initWithDelegate:(id)delegate;
- (void)reportBootPerformanceStats:(id)stats mode:(id)mode;
- (void)reportCrashlogProcessedFromSubsystem:(id)subsystem hostReason:(id)reason firmwareReason:(id)firmwareReason;
- (void)reportEndToEndRecoveryTime:(unint64_t)time;
- (void)reportFLROutcome:(id)outcome forSubsystem:(id)subsystem;
- (void)reportFatalError:(id)error;
- (void)reportOTAPowerTableEvaluationOutcome:(id)outcome reason:(id)reason attempts:(unint64_t)attempts assetVersionsUnderEvaluation:(id)evaluation previousKnownGoodAssetVersions:(id)versions;
- (void)reportPMUError:(id)error;
- (void)sendEvent:(id)event payload:(id)payload;
@end

@implementation AnalyticsReporter

- (AnalyticsReporter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = AnalyticsReporter;
  v5 = [(AnalyticsReporter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)sendEvent:(id)event payload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (void)reportBootPerformanceStats:(id)stats mode:(id)mode
{
  selfCopy = self;
  statsCopy = stats;
  modeCopy = mode;
  v24[0] = @"prepareChipForResetDuration";
  v24[1] = @"crashlogCollectionDuration";
  v24[2] = @"coreDumpCollectionDuration";
  v24[3] = @"prepareForResetDuration";
  v24[4] = @"resetPortDisableDuration";
  v24[5] = @"resetDuration";
  v24[6] = @"romPortEnableDuration";
  v24[7] = @"romSendImageDuration";
  v24[8] = @"reenumerationPortDisableDuration";
  v24[9] = @"reenumerationPortEnableDuration";
  v24[10] = @"secondarySendImageDuration";
  v24[11] = @"memswapHandoffDuration";
  v24[12] = @"romInterfaceOpenDuration";
  v24[13] = @"secondaryInterfaceOpenDuration";
  v24[14] = @"osInterfaceOpenDuration";
  v24[15] = @"pingDuration";
  v24[16] = @"bootStageOSDuration0";
  v24[17] = @"bootStageOSDuration1";
  v24[18] = @"bootStageOSDuration2";
  v24[19] = @"firmwareROMDuration";
  v24[20] = @"firmwarePTMDuration";
  v24[21] = @"firmwareFDRCalDuration";
  v24[22] = @"firmwareBTTotalDuration";
  v24[23] = @"firmwareWiFiTotalDuration";
  v24[24] = @"firmwareFLRSetupDuration";
  v7 = [NSArray arrayWithObjects:v24 count:25];
  v8 = objc_alloc_init(NSMutableDictionary);
  v18 = modeCopy;
  [v8 setObject:modeCopy forKey:@"bootMode"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [statsCopy objectForKeyedSubscript:{v14, selfCopy}];
        if (v15)
        {
          [v8 setObject:v15 forKey:v14];
        }

        else
        {
          v16 = +[NSNull null];
          [v8 setObject:v16 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(AnalyticsReporter *)selfCopy sendEvent:@"com.apple.ConnectivityDaemon.BootPerformanceStats" payload:v8];
}

- (void)reportCrashlogProcessedFromSubsystem:(id)subsystem hostReason:(id)reason firmwareReason:(id)firmwareReason
{
  subsystemCopy = subsystem;
  reasonCopy = reason;
  firmwareReasonCopy = firmwareReason;
  v15[0] = @"subsystem";
  v11 = subsystemCopy;
  if (!subsystemCopy)
  {
    v11 = +[NSNull null];
  }

  v16[0] = v11;
  v15[1] = @"hostReason";
  v12 = reasonCopy;
  if (!reasonCopy)
  {
    v12 = +[NSNull null];
  }

  v16[1] = v12;
  v15[2] = @"firmwareReason";
  v13 = firmwareReasonCopy;
  if (!firmwareReasonCopy)
  {
    v13 = +[NSNull null];
  }

  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.CrashlogProcessed" payload:v14];

  if (firmwareReasonCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (subsystemCopy)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!reasonCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!subsystemCopy)
  {
    goto LABEL_13;
  }

LABEL_10:
}

- (void)reportEndToEndRecoveryTime:(unint64_t)time
{
  v6 = @"milliseconds";
  v4 = [NSNumber numberWithUnsignedInteger:time];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.EndToEndRecoveryTime" payload:v5];
}

- (void)reportFatalError:(id)error
{
  errorCopy = error;
  v7 = @"reason";
  v5 = errorCopy;
  if (!errorCopy)
  {
    v5 = +[NSNull null];
  }

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.FatalError" payload:v6];

  if (!errorCopy)
  {
  }
}

- (void)reportFLROutcome:(id)outcome forSubsystem:(id)subsystem
{
  outcomeCopy = outcome;
  subsystemCopy = subsystem;
  v11[0] = @"outcome";
  v8 = outcomeCopy;
  if (!outcomeCopy)
  {
    v8 = +[NSNull null];
  }

  v11[1] = @"subsystem";
  v12[0] = v8;
  v9 = subsystemCopy;
  if (!subsystemCopy)
  {
    v9 = +[NSNull null];
  }

  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.FunctionLevelResetOutcome" payload:v10];

  if (!subsystemCopy)
  {

    if (outcomeCopy)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!outcomeCopy)
  {
    goto LABEL_9;
  }

LABEL_7:
}

- (void)reportOTAPowerTableEvaluationOutcome:(id)outcome reason:(id)reason attempts:(unint64_t)attempts assetVersionsUnderEvaluation:(id)evaluation previousKnownGoodAssetVersions:(id)versions
{
  outcomeCopy = outcome;
  reasonCopy = reason;
  evaluationCopy = evaluation;
  versionsCopy = versions;
  v34[0] = @"outcome";
  v15 = outcomeCopy;
  v32 = outcomeCopy;
  if (!outcomeCopy)
  {
    v15 = +[NSNull null];
  }

  v29 = v15;
  v35[0] = v15;
  v34[1] = @"reason";
  v16 = reasonCopy;
  if (!reasonCopy)
  {
    v16 = +[NSNull null];
  }

  v28 = v16;
  v35[1] = v16;
  v34[2] = @"attempts";
  v30 = [NSNumber numberWithUnsignedInteger:attempts];
  v35[2] = v30;
  v34[3] = @"wifiAssetVersion";
  v17 = [evaluationCopy objectAtIndexedSubscript:0];
  v18 = v17;
  if (!v17)
  {
    v17 = +[NSNull null];
  }

  v27 = v17;
  v35[3] = v17;
  v34[4] = @"btAssetVersion";
  v33 = evaluationCopy;
  v19 = [evaluationCopy objectAtIndexedSubscript:1];
  v20 = v19;
  if (!v19)
  {
    v20 = +[NSNull null];
  }

  v35[4] = v20;
  v34[5] = @"previousKnownGoodWifiAssetVersion";
  v21 = [versionsCopy objectAtIndexedSubscript:0];
  v22 = v21;
  if (!v21)
  {
    v22 = +[NSNull null];
  }

  v35[5] = v22;
  v34[6] = @"previousKnownGoodBTAssetVersion";
  v23 = versionsCopy;
  v24 = [versionsCopy objectAtIndexedSubscript:1];
  v25 = v24;
  if (!v24)
  {
    v25 = +[NSNull null];
  }

  v35[6] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:7];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.OTAPowerTableEvaluationOutcome" payload:v26];

  if (!v24)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  if (!v18)
  {
  }

  if (!reasonCopy)
  {

    if (v32)
    {
      goto LABEL_23;
    }

LABEL_25:

    goto LABEL_23;
  }

  if (!v32)
  {
    goto LABEL_25;
  }

LABEL_23:
}

- (void)reportPMUError:(id)error
{
  errorCopy = error;
  v7 = @"faultInfo";
  v5 = errorCopy;
  if (!errorCopy)
  {
    v5 = +[NSNull null];
  }

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.PMUError" payload:v6];

  if (!errorCopy)
  {
  }
}

@end