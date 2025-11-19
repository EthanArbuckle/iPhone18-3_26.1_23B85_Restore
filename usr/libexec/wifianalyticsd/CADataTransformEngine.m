@interface CADataTransformEngine
- (BOOL)transformAndSubmitDNSMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5;
- (BOOL)transformAndSubmitDPSMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5;
- (BOOL)transformAndSubmitSWMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5;
- (CADataTransformEngine)init;
- (double)computePercentage:(unint64_t)a3 denomenator:(unint64_t)a4;
- (id)aggregateFailureSnapshot:(id)a3;
- (id)getAggregateFailureSnapshotFromDPSR:(id)a3;
- (unint64_t)compareValues:(unint64_t)a3 second:(unint64_t)a4;
- (void)computeAggregateTxCompletionStatus:(id)a3 source:(id)a4;
- (void)computeDPSRecoveryIndex:(id)a3 timestamps:(id)a4 andReply:(id)a5;
- (void)findTxCompletionFailureWithMaxCount:(id)a3 andReply:(id)a4;
@end

@implementation CADataTransformEngine

- (CADataTransformEngine)init
{
  v8.receiver = self;
  v8.super_class = CADataTransformEngine;
  v2 = [(CADataTransformEngine *)&v8 init];
  v3 = +[RecommendationPreferences sharedObject];
  preferences = v2->_preferences;
  v2->_preferences = v3;

  if (!v2->_preferences)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "[CADataTransformEngine init]";
      v11 = 1024;
      v12 = 80;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error RecommendationPreferences init", buf, 0x12u);
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "[CADataTransformEngine init]";
      v11 = 1024;
      v12 = 85;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error initializing CADataTransformEngine", buf, 0x12u);
    }

    return 0;
  }

  return v2;
}

- (void)computeAggregateTxCompletionStatus:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setSuccess:{objc_msgSend(v6, "success") + objc_msgSend(v5, "success")}];
  [v6 setDropped:{objc_msgSend(v6, "dropped") + objc_msgSend(v5, "dropped")}];
  [v6 setNoBuf:{objc_msgSend(v6, "noBuf") + objc_msgSend(v5, "noBuf")}];
  [v6 setNoResources:{objc_msgSend(v6, "noResources") + objc_msgSend(v5, "noResources")}];
  [v6 setNoAck:{objc_msgSend(v6, "noAck") + objc_msgSend(v5, "noAck")}];
  [v6 setChipModeError:{objc_msgSend(v6, "chipModeError") + objc_msgSend(v5, "chipModeError")}];
  [v6 setExpired:{objc_msgSend(v6, "expired") + objc_msgSend(v5, "expired")}];
  [v6 setTxFailure:{objc_msgSend(v6, "txFailure") + objc_msgSend(v5, "txFailure")}];
  [v6 setFirmwareFreePacket:{objc_msgSend(v6, "firmwareFreePacket") + objc_msgSend(v5, "firmwareFreePacket")}];
  [v6 setMaxRetries:{objc_msgSend(v6, "maxRetries") + objc_msgSend(v5, "maxRetries")}];
  LODWORD(a3) = [v5 forceLifetimeExp];

  [v6 setForceLifetimeExp:{objc_msgSend(v6, "forceLifetimeExp") + a3}];
}

- (id)aggregateFailureSnapshot:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v8 = [v4 txCompletionSnapshotVI];

        v9 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        v14 = "[CADataTransformEngine aggregateFailureSnapshot:]";
        v15 = 1024;
        v16 = 134;
        v17 = 2112;
        v18 = v8;
        v10 = v9;
        v11 = "%{public}s::%d:DPS: VI-Snapshot: %@\n";
      }

      else
      {
        v8 = [v4 txCompletionSnapshotVO];

        v9 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        v14 = "[CADataTransformEngine aggregateFailureSnapshot:]";
        v15 = 1024;
        v16 = 138;
        v17 = 2112;
        v18 = v8;
        v10 = v9;
        v11 = "%{public}s::%d:DPS: VO-Snapshot: %@\n";
      }
    }

    else if (v5)
    {
      v8 = [v4 txCompletionSnapshotBK];

      v9 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136446722;
      v14 = "[CADataTransformEngine aggregateFailureSnapshot:]";
      v15 = 1024;
      v16 = 130;
      v17 = 2112;
      v18 = v8;
      v10 = v9;
      v11 = "%{public}s::%d:DPS: BK-Snapshot: %@\n";
    }

    else
    {
      v8 = [v4 txCompletionSnapshotBE];

      v9 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136446722;
      v14 = "[CADataTransformEngine aggregateFailureSnapshot:]";
      v15 = 1024;
      v16 = 126;
      v17 = 2112;
      v18 = v8;
      v10 = v9;
      v11 = "%{public}s::%d:DPS: BE-Snapshot: %@\n";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x1Cu);
LABEL_14:
    v7 = v8;

    if (v8)
    {
      if (v6)
      {
        [(CADataTransformEngine *)self computeAggregateTxCompletionStatus:v6 source:v8];
      }

      else
      {
        v6 = [v8 copy];
      }
    }

    ++v5;
  }

  while (v5 != 4);

  return v6;
}

- (id)getAggregateFailureSnapshotFromDPSR:(id)a3
{
  v4 = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 snapshot];
    if (v6)
    {
      v7 = v6;
      v8 = [(CADataTransformEngine *)self aggregateFailureSnapshot:v6];
      goto LABEL_10;
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "[CADataTransformEngine getAggregateFailureSnapshotFromDPSR:]";
      v13 = 1024;
      v14 = 166;
      v9 = "%{public}s::%d:Error creating ";
      goto LABEL_8;
    }
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "[CADataTransformEngine getAggregateFailureSnapshotFromDPSR:]";
      v13 = 1024;
      v14 = 160;
      v9 = "%{public}s::%d:Error creating DPS data";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, &v11, 0x12u);
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)findTxCompletionFailureWithMaxCount:(id)a3 andReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableString string];
  v8 = +[NSMutableString string];
  v9 = 0;
  v10 = 0;
  for (i = 1; i != 11; ++i)
  {
    if (i > 5)
    {
      if (i <= 7)
      {
        if (i == 6)
        {
          v12 = [v5 expired];
        }

        else
        {
          v12 = [v5 txFailure];
        }
      }

      else
      {
        switch(i)
        {
          case 8:
            v12 = [v5 firmwareFreePacket];
            break;
          case 9:
            v12 = [v5 maxRetries];
            break;
          case 10:
            v12 = [v5 forceLifetimeExp];
            break;
          default:
            goto LABEL_28;
        }
      }
    }

    else if (i <= 2)
    {
      if (i == 1)
      {
        v12 = [v5 dropped];
      }

      else
      {
        if (i != 2)
        {
          goto LABEL_28;
        }

        v12 = [v5 noBuf];
      }
    }

    else if (i == 3)
    {
      v12 = [v5 noResources];
    }

    else if (i == 4)
    {
      v12 = [v5 noAck];
    }

    else
    {
      v12 = [v5 chipModeError];
    }

    v13 = v10 >= v12;
    if (v10 <= v12)
    {
      v10 = v12;
    }

    if (!v13)
    {
      v9 = i;
    }

    v14 = @"1";
    if (!v12)
    {
LABEL_28:
      v14 = @"0";
    }

    [v7 insertString:v14 atIndex:0];
  }

  v15 = [v7 length];
  if (v15)
  {
    v16 = v15 - 1;
    do
    {
      v17 = [v7 substringWithRange:{v16, 1}];
      [v8 appendString:v17];

      --v16;
    }

    while (v16 != -1);
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446722;
    v20 = "[CADataTransformEngine findTxCompletionFailureWithMaxCount:andReply:]";
    v21 = 1024;
    v22 = 235;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:txStatusString: %@", &v19, 0x1Cu);
  }

  v6[2](v6, v9, v10, v8);
}

- (void)computeDPSRecoveryIndex:(id)a3 timestamps:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v43 = a4;
  v42 = a5;
  v39 = self;
  v9 = [(RecommendationPreferences *)self->_preferences dps_interrogation_sample_count];
  v40 = [v8 dpsCounterSamplesCount];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = v8;
    v38 = v9;
    while (1)
    {
      v14 = v11;
      v11 = [v8 dpsCounterSampleAtIndex:v10];

      if (!v11)
      {
        break;
      }

      v15 = [v11 peerStats];

      if (!v15)
      {
        v12 = 0;
        break;
      }

      v12 = v15;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v16 = [v15 acCompletions];
      v17 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v49;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v49 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v48 + 1) + 8 * i);
            if ([v21 ac] && objc_msgSend(v21, "durSinceLastSuccessfulComp") / 0x3E8 < v13 + 8)
            {
              v22 = v13 + 5;
              v23 = 1;
              goto LABEL_17;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v10 = ++v13;
      v9 = v38;
      v8 = v41;
      if (v38 <= v13)
      {
        goto LABEL_20;
      }
    }

    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_38;
  }

  v12 = 0;
  v11 = 0;
LABEL_20:
  if (v40 <= v9)
  {
    v22 = 0;
    v23 = 0;
    v25 = 1;
LABEL_38:
    v24 = v43;
    goto LABEL_42;
  }

  v26 = [v8 dpsCounterSamples];
  v27 = [v26 lastObject];

  v24 = v43;
  if (!v27)
  {
    v11 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  v28 = [v27 peerStats];

  if (!v28)
  {
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_41;
  }

  v29 = [v43 objectForKeyedSubscript:@"start"];
  if (!v29 || (v30 = v29, [v43 objectForKeyedSubscript:@"end"], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, !v31))
  {
    v22 = 0;
    v23 = 0;
    v25 = 1;
LABEL_40:
    v12 = v28;
LABEL_41:
    v11 = v27;
    goto LABEL_42;
  }

  v32 = [v43 objectForKeyedSubscript:@"start"];
  v33 = [v43 objectForKeyedSubscript:@"end"];
  v34 = [(CADataTransformEngine *)v39 computeDifferenceBetweenDates:v32 end:v33];

  if (v34 <= v9 || v34 > [(RecommendationPreferences *)v39->_preferences dps_report_sent_after])
  {
    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_40;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = [v28 acCompletions];
  v22 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v22)
  {
    v41 = v8;
    v35 = *v45;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v16);
        }

        v37 = *(*(&v44 + 1) + 8 * j);
        if ([v37 ac] && v34 + 8 > objc_msgSend(v37, "durSinceLastSuccessfulComp") / 0x3E8uLL)
        {
          v22 = (v34 + 5);
          v23 = 1;
          goto LABEL_44;
        }
      }

      v22 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_44:
    v12 = v28;
    v11 = v27;
LABEL_17:
    v8 = v41;
    v24 = v43;
  }

  else
  {
    v23 = 0;
    v12 = v28;
    v11 = v27;
  }

  v25 = 1;
LABEL_42:
  v42[2](v42, v23, v22, v25);
}

- (unint64_t)compareValues:(unint64_t)a3 second:(unint64_t)a4
{
  if (a4 <= a3)
  {
    return a4 != a3;
  }

  else
  {
    return 2;
  }
}

- (double)computePercentage:(unint64_t)a3 denomenator:(unint64_t)a4
{
  if (a4)
  {
    return a3 / a4 * 100.0;
  }

  else
  {
    return 0.0;
  }
}

- (BOOL)transformAndSubmitDPSMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = v8;
  v12 = v7;
  v13 = v9;
  v14 = AnalyticsSendEventLazy();
  v15 = WALogCategoryDefaultHandle();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]";
      v23 = 1024;
      v24 = 502;
      v17 = "%{public}s::%d:Submitted DPS metric (CA)";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v22 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]";
    v23 = 1024;
    v24 = 500;
    v17 = "%{public}s::%d:Failed sending DPS metric (CA)";
    v18 = v16;
    v19 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  return v14;
}

- (BOOL)transformAndSubmitDNSMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = v8;
  v12 = v7;
  v13 = v9;
  v14 = AnalyticsSendEventLazy();
  v15 = WALogCategoryDefaultHandle();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]";
      v23 = 1024;
      v24 = 847;
      v17 = "%{public}s::%d:Submitted DNS metric (CA)";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v22 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]";
    v23 = 1024;
    v24 = 845;
    v17 = "%{public}s::%d:Failed sending DNS metric (CA)";
    v18 = v16;
    v19 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  return v14;
}

- (BOOL)transformAndSubmitSWMessageToCA:(id)a3 additionalInfo:(id)a4 timestamps:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = v8;
  v12 = v7;
  v13 = AnalyticsSendEventLazy();
  v14 = WALogCategoryDefaultHandle();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]";
      v22 = 1024;
      v23 = 1098;
      v16 = "%{public}s::%d:Submitted SW metric (CA)";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v21 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]";
    v22 = 1024;
    v23 = 1096;
    v16 = "%{public}s::%d:Failed sending SW metric (CA)";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

@end