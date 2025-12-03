@interface CADataTransformEngine
- (BOOL)transformAndSubmitDNSMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps;
- (BOOL)transformAndSubmitDPSMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps;
- (BOOL)transformAndSubmitSWMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps;
- (CADataTransformEngine)init;
- (double)computePercentage:(unint64_t)percentage denomenator:(unint64_t)denomenator;
- (id)aggregateFailureSnapshot:(id)snapshot;
- (id)getAggregateFailureSnapshotFromDPSR:(id)r;
- (unint64_t)compareValues:(unint64_t)values second:(unint64_t)second;
- (void)computeAggregateTxCompletionStatus:(id)status source:(id)source;
- (void)computeDPSRecoveryIndex:(id)index timestamps:(id)timestamps andReply:(id)reply;
- (void)findTxCompletionFailureWithMaxCount:(id)count andReply:(id)reply;
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

- (void)computeAggregateTxCompletionStatus:(id)status source:(id)source
{
  sourceCopy = source;
  statusCopy = status;
  [statusCopy setSuccess:{objc_msgSend(statusCopy, "success") + objc_msgSend(sourceCopy, "success")}];
  [statusCopy setDropped:{objc_msgSend(statusCopy, "dropped") + objc_msgSend(sourceCopy, "dropped")}];
  [statusCopy setNoBuf:{objc_msgSend(statusCopy, "noBuf") + objc_msgSend(sourceCopy, "noBuf")}];
  [statusCopy setNoResources:{objc_msgSend(statusCopy, "noResources") + objc_msgSend(sourceCopy, "noResources")}];
  [statusCopy setNoAck:{objc_msgSend(statusCopy, "noAck") + objc_msgSend(sourceCopy, "noAck")}];
  [statusCopy setChipModeError:{objc_msgSend(statusCopy, "chipModeError") + objc_msgSend(sourceCopy, "chipModeError")}];
  [statusCopy setExpired:{objc_msgSend(statusCopy, "expired") + objc_msgSend(sourceCopy, "expired")}];
  [statusCopy setTxFailure:{objc_msgSend(statusCopy, "txFailure") + objc_msgSend(sourceCopy, "txFailure")}];
  [statusCopy setFirmwareFreePacket:{objc_msgSend(statusCopy, "firmwareFreePacket") + objc_msgSend(sourceCopy, "firmwareFreePacket")}];
  [statusCopy setMaxRetries:{objc_msgSend(statusCopy, "maxRetries") + objc_msgSend(sourceCopy, "maxRetries")}];
  LODWORD(status) = [sourceCopy forceLifetimeExp];

  [statusCopy setForceLifetimeExp:{objc_msgSend(statusCopy, "forceLifetimeExp") + status}];
}

- (id)aggregateFailureSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        txCompletionSnapshotVI = [snapshotCopy txCompletionSnapshotVI];

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
        v18 = txCompletionSnapshotVI;
        v10 = v9;
        v11 = "%{public}s::%d:DPS: VI-Snapshot: %@\n";
      }

      else
      {
        txCompletionSnapshotVI = [snapshotCopy txCompletionSnapshotVO];

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
        v18 = txCompletionSnapshotVI;
        v10 = v9;
        v11 = "%{public}s::%d:DPS: VO-Snapshot: %@\n";
      }
    }

    else if (v5)
    {
      txCompletionSnapshotVI = [snapshotCopy txCompletionSnapshotBK];

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
      v18 = txCompletionSnapshotVI;
      v10 = v9;
      v11 = "%{public}s::%d:DPS: BK-Snapshot: %@\n";
    }

    else
    {
      txCompletionSnapshotVI = [snapshotCopy txCompletionSnapshotBE];

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
      v18 = txCompletionSnapshotVI;
      v10 = v9;
      v11 = "%{public}s::%d:DPS: BE-Snapshot: %@\n";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x1Cu);
LABEL_14:
    v7 = txCompletionSnapshotVI;

    if (txCompletionSnapshotVI)
    {
      if (v6)
      {
        [(CADataTransformEngine *)self computeAggregateTxCompletionStatus:v6 source:txCompletionSnapshotVI];
      }

      else
      {
        v6 = [txCompletionSnapshotVI copy];
      }
    }

    ++v5;
  }

  while (v5 != 4);

  return v6;
}

- (id)getAggregateFailureSnapshotFromDPSR:(id)r
{
  v4 = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:r];
  v5 = v4;
  if (v4)
  {
    snapshot = [v4 snapshot];
    if (snapshot)
    {
      v7 = snapshot;
      v8 = [(CADataTransformEngine *)self aggregateFailureSnapshot:snapshot];
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

- (void)findTxCompletionFailureWithMaxCount:(id)count andReply:(id)reply
{
  countCopy = count;
  replyCopy = reply;
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
          expired = [countCopy expired];
        }

        else
        {
          expired = [countCopy txFailure];
        }
      }

      else
      {
        switch(i)
        {
          case 8:
            expired = [countCopy firmwareFreePacket];
            break;
          case 9:
            expired = [countCopy maxRetries];
            break;
          case 10:
            expired = [countCopy forceLifetimeExp];
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
        expired = [countCopy dropped];
      }

      else
      {
        if (i != 2)
        {
          goto LABEL_28;
        }

        expired = [countCopy noBuf];
      }
    }

    else if (i == 3)
    {
      expired = [countCopy noResources];
    }

    else if (i == 4)
    {
      expired = [countCopy noAck];
    }

    else
    {
      expired = [countCopy chipModeError];
    }

    v13 = v10 >= expired;
    if (v10 <= expired)
    {
      v10 = expired;
    }

    if (!v13)
    {
      v9 = i;
    }

    v14 = @"1";
    if (!expired)
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

  replyCopy[2](replyCopy, v9, v10, v8);
}

- (void)computeDPSRecoveryIndex:(id)index timestamps:(id)timestamps andReply:(id)reply
{
  indexCopy = index;
  timestampsCopy = timestamps;
  replyCopy = reply;
  selfCopy = self;
  dps_interrogation_sample_count = [(RecommendationPreferences *)self->_preferences dps_interrogation_sample_count];
  dpsCounterSamplesCount = [indexCopy dpsCounterSamplesCount];
  if (dps_interrogation_sample_count)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = indexCopy;
    v38 = dps_interrogation_sample_count;
    while (1)
    {
      v14 = v11;
      v11 = [indexCopy dpsCounterSampleAtIndex:v10];

      if (!v11)
      {
        break;
      }

      peerStats = [v11 peerStats];

      if (!peerStats)
      {
        v12 = 0;
        break;
      }

      v12 = peerStats;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      acCompletions = [peerStats acCompletions];
      v17 = [acCompletions countByEnumeratingWithState:&v48 objects:v53 count:16];
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
              objc_enumerationMutation(acCompletions);
            }

            v21 = *(*(&v48 + 1) + 8 * i);
            if ([v21 ac] && objc_msgSend(v21, "durSinceLastSuccessfulComp") / 0x3E8 < v13 + 8)
            {
              v22 = v13 + 5;
              v23 = 1;
              goto LABEL_17;
            }
          }

          v18 = [acCompletions countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v10 = ++v13;
      dps_interrogation_sample_count = v38;
      indexCopy = v41;
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
  if (dpsCounterSamplesCount <= dps_interrogation_sample_count)
  {
    v22 = 0;
    v23 = 0;
    v25 = 1;
LABEL_38:
    v24 = timestampsCopy;
    goto LABEL_42;
  }

  dpsCounterSamples = [indexCopy dpsCounterSamples];
  lastObject = [dpsCounterSamples lastObject];

  v24 = timestampsCopy;
  if (!lastObject)
  {
    v11 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  peerStats2 = [lastObject peerStats];

  if (!peerStats2)
  {
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_41;
  }

  v29 = [timestampsCopy objectForKeyedSubscript:@"start"];
  if (!v29 || (v30 = v29, [timestampsCopy objectForKeyedSubscript:@"end"], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, !v31))
  {
    v22 = 0;
    v23 = 0;
    v25 = 1;
LABEL_40:
    v12 = peerStats2;
LABEL_41:
    v11 = lastObject;
    goto LABEL_42;
  }

  v32 = [timestampsCopy objectForKeyedSubscript:@"start"];
  v33 = [timestampsCopy objectForKeyedSubscript:@"end"];
  v34 = [(CADataTransformEngine *)selfCopy computeDifferenceBetweenDates:v32 end:v33];

  if (v34 <= dps_interrogation_sample_count || v34 > [(RecommendationPreferences *)selfCopy->_preferences dps_report_sent_after])
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
  acCompletions = [peerStats2 acCompletions];
  v22 = [acCompletions countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v22)
  {
    v41 = indexCopy;
    v35 = *v45;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(acCompletions);
        }

        v37 = *(*(&v44 + 1) + 8 * j);
        if ([v37 ac] && v34 + 8 > objc_msgSend(v37, "durSinceLastSuccessfulComp") / 0x3E8uLL)
        {
          v22 = (v34 + 5);
          v23 = 1;
          goto LABEL_44;
        }
      }

      v22 = [acCompletions countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_44:
    v12 = peerStats2;
    v11 = lastObject;
LABEL_17:
    indexCopy = v41;
    v24 = timestampsCopy;
  }

  else
  {
    v23 = 0;
    v12 = peerStats2;
    v11 = lastObject;
  }

  v25 = 1;
LABEL_42:
  replyCopy[2](replyCopy, v23, v22, v25);
}

- (unint64_t)compareValues:(unint64_t)values second:(unint64_t)second
{
  if (second <= values)
  {
    return second != values;
  }

  else
  {
    return 2;
  }
}

- (double)computePercentage:(unint64_t)percentage denomenator:(unint64_t)denomenator
{
  if (denomenator)
  {
    return percentage / denomenator * 100.0;
  }

  else
  {
    return 0.0;
  }
}

- (BOOL)transformAndSubmitDPSMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps
{
  aCopy = a;
  infoCopy = info;
  timestampsCopy = timestamps;
  v10 = objc_autoreleasePoolPush();
  v11 = infoCopy;
  v12 = aCopy;
  v13 = timestampsCopy;
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

- (BOOL)transformAndSubmitDNSMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps
{
  aCopy = a;
  infoCopy = info;
  timestampsCopy = timestamps;
  v10 = objc_autoreleasePoolPush();
  v11 = infoCopy;
  v12 = aCopy;
  v13 = timestampsCopy;
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

- (BOOL)transformAndSubmitSWMessageToCA:(id)a additionalInfo:(id)info timestamps:(id)timestamps
{
  aCopy = a;
  infoCopy = info;
  timestampsCopy = timestamps;
  v10 = objc_autoreleasePoolPush();
  v11 = infoCopy;
  v12 = aCopy;
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