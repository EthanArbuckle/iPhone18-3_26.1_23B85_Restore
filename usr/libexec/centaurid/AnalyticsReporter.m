@interface AnalyticsReporter
- (AnalyticsReporter)initWithDelegate:(id)a3;
- (void)reportBootPerformanceStats:(id)a3 mode:(id)a4;
- (void)reportCrashlogProcessedFromSubsystem:(id)a3 hostReason:(id)a4 firmwareReason:(id)a5;
- (void)reportEndToEndRecoveryTime:(unint64_t)a3;
- (void)reportFLROutcome:(id)a3 forSubsystem:(id)a4;
- (void)reportFatalError:(id)a3;
- (void)reportOTAPowerTableEvaluationOutcome:(id)a3 reason:(id)a4 attempts:(unint64_t)a5 assetVersionsUnderEvaluation:(id)a6 previousKnownGoodAssetVersions:(id)a7;
- (void)reportPMUError:(id)a3;
- (void)sendEvent:(id)a3 payload:(id)a4;
@end

@implementation AnalyticsReporter

- (AnalyticsReporter)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AnalyticsReporter;
  v5 = [(AnalyticsReporter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)sendEvent:(id)a3 payload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)reportBootPerformanceStats:(id)a3 mode:(id)a4
{
  v17 = self;
  v5 = a3;
  v6 = a4;
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
  v18 = v6;
  [v8 setObject:v6 forKey:@"bootMode"];
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
        v15 = [v5 objectForKeyedSubscript:{v14, v17}];
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

  [(AnalyticsReporter *)v17 sendEvent:@"com.apple.ConnectivityDaemon.BootPerformanceStats" payload:v8];
}

- (void)reportCrashlogProcessedFromSubsystem:(id)a3 hostReason:(id)a4 firmwareReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = @"subsystem";
  v11 = v8;
  if (!v8)
  {
    v11 = +[NSNull null];
  }

  v16[0] = v11;
  v15[1] = @"hostReason";
  v12 = v9;
  if (!v9)
  {
    v12 = +[NSNull null];
  }

  v16[1] = v12;
  v15[2] = @"firmwareReason";
  v13 = v10;
  if (!v10)
  {
    v13 = +[NSNull null];
  }

  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.CrashlogProcessed" payload:v14];

  if (v10)
  {
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
}

- (void)reportEndToEndRecoveryTime:(unint64_t)a3
{
  v6 = @"milliseconds";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.EndToEndRecoveryTime" payload:v5];
}

- (void)reportFatalError:(id)a3
{
  v4 = a3;
  v7 = @"reason";
  v5 = v4;
  if (!v4)
  {
    v5 = +[NSNull null];
  }

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.FatalError" payload:v6];

  if (!v4)
  {
  }
}

- (void)reportFLROutcome:(id)a3 forSubsystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = @"outcome";
  v8 = v6;
  if (!v6)
  {
    v8 = +[NSNull null];
  }

  v11[1] = @"subsystem";
  v12[0] = v8;
  v9 = v7;
  if (!v7)
  {
    v9 = +[NSNull null];
  }

  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.FunctionLevelResetOutcome" payload:v10];

  if (!v7)
  {

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_7:
}

- (void)reportOTAPowerTableEvaluationOutcome:(id)a3 reason:(id)a4 attempts:(unint64_t)a5 assetVersionsUnderEvaluation:(id)a6 previousKnownGoodAssetVersions:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v34[0] = @"outcome";
  v15 = v11;
  v32 = v11;
  if (!v11)
  {
    v15 = +[NSNull null];
  }

  v29 = v15;
  v35[0] = v15;
  v34[1] = @"reason";
  v16 = v12;
  if (!v12)
  {
    v16 = +[NSNull null];
  }

  v28 = v16;
  v35[1] = v16;
  v34[2] = @"attempts";
  v30 = [NSNumber numberWithUnsignedInteger:a5];
  v35[2] = v30;
  v34[3] = @"wifiAssetVersion";
  v17 = [v13 objectAtIndexedSubscript:0];
  v18 = v17;
  if (!v17)
  {
    v17 = +[NSNull null];
  }

  v27 = v17;
  v35[3] = v17;
  v34[4] = @"btAssetVersion";
  v33 = v13;
  v19 = [v13 objectAtIndexedSubscript:1];
  v20 = v19;
  if (!v19)
  {
    v20 = +[NSNull null];
  }

  v35[4] = v20;
  v34[5] = @"previousKnownGoodWifiAssetVersion";
  v21 = [v14 objectAtIndexedSubscript:0];
  v22 = v21;
  if (!v21)
  {
    v22 = +[NSNull null];
  }

  v35[5] = v22;
  v34[6] = @"previousKnownGoodBTAssetVersion";
  v23 = v14;
  v24 = [v14 objectAtIndexedSubscript:1];
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

  if (!v12)
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

- (void)reportPMUError:(id)a3
{
  v4 = a3;
  v7 = @"faultInfo";
  v5 = v4;
  if (!v4)
  {
    v5 = +[NSNull null];
  }

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(AnalyticsReporter *)self sendEvent:@"com.apple.ConnectivityDaemon.PMUError" payload:v6];

  if (!v4)
  {
  }
}

@end