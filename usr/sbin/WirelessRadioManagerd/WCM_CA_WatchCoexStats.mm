@interface WCM_CA_WatchCoexStats
+ (id)singleton;
- (WCM_CA_WatchCoexStats)init;
- (id)findBTAFHEntry:(id)a3 issueType:(id)a4;
- (id)findBTEntry:(id)a3 issueType:(id)a4 hasIssue:(BOOL)a5;
- (id)findWiFiEntry:(id)a3 issueType:(id)a4 hasIssue:(BOOL)a5;
- (void)resetFastChargingFreqDurationStats;
- (void)startFastChargingDurationTimer;
- (void)submitBTAFHStats;
- (void)submitBTAGCStats;
- (void)submitFastChargingDurationStats;
- (void)submitFastChargingFreqStats;
- (void)submitTxBlankingStats;
- (void)submitWiFiAGCStats;
- (void)updateCABTAFHIssue:(id)a3 issueType:(id)a4;
- (void)updateCABTPreferredMap:(id)a3;
@end

@implementation WCM_CA_WatchCoexStats

+ (id)singleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081460;
  block[3] = &unk_10023DD00;
  block[4] = a1;
  if (qword_1002B7E50 != -1)
  {
    dispatch_once(&qword_1002B7E50, block);
  }

  v2 = qword_1002B7E48;

  return v2;
}

- (WCM_CA_WatchCoexStats)init
{
  v38.receiver = self;
  v38.super_class = WCM_CA_WatchCoexStats;
  v2 = [(WCM_CA_WatchCoexStats *)&v38 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    v9 = objc_alloc_init(NSString);
    v10 = *(v2 + 9);
    *(v2 + 9) = v9;

    v11 = objc_alloc_init(NSString);
    v12 = *(v2 + 10);
    *(v2 + 10) = v11;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 11) = v13;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 12) = v14;
    v15 = [NSMutableDictionary dictionaryWithDictionary:&off_10028D8C8];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = objc_alloc_init(NSMutableArray);
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 21) = v19;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 22) = v20;
    *(v2 + 4) = 0;
    v2[10] = 0;
    *(v2 + 20) = 0;
    *(v2 + 12) = 0;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 13) = v21;
    v22 = objc_alloc_init(NSObject);
    v23 = *(v2 + 14);
    *(v2 + 14) = v22;

    v24 = objc_alloc_init(NSObject);
    v25 = *(v2 + 15);
    *(v2 + 15) = v24;

    v26 = objc_alloc_init(NSObject);
    v27 = *(v2 + 16);
    *(v2 + 16) = v26;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 17) = v28;
    v29 = objc_alloc_init(NSObject);
    v30 = *(v2 + 18);
    *(v2 + 18) = v29;

    v31 = objc_alloc_init(NSObject);
    v32 = *(v2 + 23);
    *(v2 + 23) = v31;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 19) = v33;
    v34 = objc_alloc_init(NSObject);
    v35 = *(v2 + 20);
    *(v2 + 20) = v34;

    v36 = *(v2 + 25);
    *(v2 + 25) = 0;
  }

  return v2;
}

- (void)startFastChargingDurationTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000816F4;
  block[3] = &unk_10023F488;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)findWiFiEntry:(id)a3 issueType:(id)a4 hasIssue:(BOOL)a5
{
  v24 = a5;
  v7 = a3;
  v26 = a4;
  v8 = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  if (v8 && (v9 = v8, -[WCM_CA_WatchCoexStats wrmWiFiAGCCAStats](self, "wrmWiFiAGCCAStats"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"IssueBand"];
          v18 = [v16 objectForKeyedSubscript:@"IssueType"];
          v19 = [v16 objectForKeyedSubscript:@"HasIssue"];
          v20 = [v19 BOOLValue];

          if ([v17 isEqualToString:v7])
          {
            if ([v18 isEqualToString:v26] && v20 == v24)
            {
              v22 = v16;

              goto LABEL_18;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)findBTEntry:(id)a3 issueType:(id)a4 hasIssue:(BOOL)a5
{
  v24 = a5;
  v7 = a3;
  v26 = a4;
  v8 = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  if (v8 && (v9 = v8, -[WCM_CA_WatchCoexStats wrmBTAGCCAStats](self, "wrmBTAGCCAStats"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"IssueBand"];
          v18 = [v16 objectForKeyedSubscript:@"IssueType"];
          v19 = [v16 objectForKeyedSubscript:@"HasIssue"];
          v20 = [v19 BOOLValue];

          if ([v17 isEqualToString:v7])
          {
            if ([v18 isEqualToString:v26] && v20 == v24)
            {
              v22 = v16;

              goto LABEL_18;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)findBTAFHEntry:(id)a3 issueType:(id)a4
{
  v6 = a3;
  v19 = a4;
  v7 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  if (v7)
  {
    v8 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
    v9 = [v8 count];

    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:@"IssueBand"];
            v17 = [v15 objectForKeyedSubscript:@"IssueType"];
            if ([v16 isEqualToString:v6] && (objc_msgSend(v17, "isEqualToString:", v19) & 1) != 0)
            {
              v7 = v15;

              goto LABEL_15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_15:
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)submitTxBlankingStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectTxBlankingFreqStats];
  objc_sync_enter(obj);
  [WCM_Logging logLevel:3 message:@"TxBlankingCADebug_ submitTxBlankingStats"];
  v2 = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
  v3 = [NSArray arrayWithArray:v2];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v3;
  v4 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v18 = *v22;
    do
    {
      v19 = v4;
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v20 = [v6 objectForKeyedSubscript:@"Band"];
        v7 = [v6 objectForKeyedSubscript:@"totalCount"];
        v8 = [v6 objectForKeyedSubscript:@"txCount"];
        v9 = [v6 objectForKeyedSubscript:@"spmiEnableCount"];
        v10 = [v6 objectForKeyedSubscript:@"wci2EnableCount"];
        v11 = [v6 objectForKeyedSubscript:@"spmiRequestCount"];
        v12 = [v6 objectForKeyedSubscript:@"wci2RequestCount"];
        v13 = [v6 objectForKeyedSubscript:@"blankCount"];
        [WCM_Logging logLevel:3 message:@"TxBlankingCADebug_ submitTxBlankingStats Band: %@, totalCount: %@, txCount: %@, spmiEnableCount: %@, wci2EnableCount: %@, spmiRequestCount: %@, wci2RequestCount: %@, blankCount: %@", v20, v7, v8, v9, v10, v11, v12, v13];

        AnalyticsSendEventLazy();
      }

      v4 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v14 = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
  [v14 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)submitFastChargingFreqStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingFreqStats];
  objc_sync_enter(obj);
  v3 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v4 = [v3 objectForKeyedSubscript:@"EnableCount"];
  v5 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v6 = [v5 objectForKeyedSubscript:@"DisableCount"];
  v7 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v8 = [v7 objectForKeyedSubscript:@"LowBandDisableCount"];
  v9 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v10 = [v9 objectForKeyedSubscript:@"NonLowBandDisableCount"];
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingFreqStats EnableCount = %@, DisableCount = %@, LowBandDisableCount = %@, NonLowBandDisableCount = %@", v4, v6, v8, v10];

  AnalyticsSendEventLazy();
  v11 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [v11 setObject:&off_1002707A0 forKeyedSubscript:@"DisableCount"];

  v12 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [v12 setObject:&off_1002707A0 forKeyedSubscript:@"EnableCount"];

  v13 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [v13 setObject:&off_1002707A0 forKeyedSubscript:@"LowBandDisableCount"];

  v14 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [v14 setObject:&off_1002707A0 forKeyedSubscript:@"NonLowBandDisableCount"];

  objc_sync_exit(obj);
}

- (void)resetFastChargingFreqDurationStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingDurationStats];
  objc_sync_enter(obj);
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ Reset stats"];
  [(WCM_CA_WatchCoexStats *)self setTotalDuration:0];
  [(WCM_CA_WatchCoexStats *)self setDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setLowBandDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setNoneLowBandDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setCellPowerOn:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [(WCM_CA_WatchCoexStats *)self setPreviousFastChargingDurationCAStartTime:?];
  objc_sync_exit(obj);
}

- (void)submitFastChargingDurationStats
{
  v3 = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingDurationStats];
  objc_sync_enter(v3);
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingDurationStats totalDuration = %d, disableDuration = %d, lowBandDisableDuration = %d, noneLowBandDisableDuration = %d, fastChargingHasRecord = %d", [(WCM_CA_WatchCoexStats *)self totalDuration], [(WCM_CA_WatchCoexStats *)self disableDuration], [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self fastChargingHasRecord]];
  if ([(WCM_CA_WatchCoexStats *)self fastChargingHasRecord])
  {
    [(WCM_CA_WatchCoexStats *)self updateFastChargingFreqDurationIsEnable:[(WCM_CA_WatchCoexStats *)self fastChargingIsEnabled] isLowBandDisable:[(WCM_CA_WatchCoexStats *)self fastChargingIsLowBandDisabled]];
    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v5 = 0.0;
    }

    else
    {
      v4 = [(WCM_CA_WatchCoexStats *)self disableDuration];
      v5 = ((100 * v4) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v7 = 0.0;
    }

    else
    {
      v6 = [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration];
      v7 = ((100 * v6) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v9 = 0.0;
    }

    else
    {
      v8 = [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration];
      v9 = ((100 * v8) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingDurationStats disableDurationPercent=%f lowBandDisableDurationPercent=%f noneLowBandDurationPercent=%f TotalDuration: %d", *&v5, *&v7, *&v9, [(WCM_CA_WatchCoexStats *)self totalDuration]];
    AnalyticsSendEventLazy();
  }

  [(WCM_CA_WatchCoexStats *)self resetFastChargingFreqDurationStats];
  objc_sync_exit(v3);
}

- (void)submitWiFiAGCStats
{
  v3 = [(WCM_CA_WatchCoexStats *)self lockObjectWifiAGCStats];
  objc_sync_enter(v3);
  [WCM_Logging logLevel:2 message:@"submitWifiAGCStats"];
  v4 = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  v5 = [NSArray arrayWithArray:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  [v10 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)submitBTAGCStats
{
  v3 = [(WCM_CA_WatchCoexStats *)self lockObjectBTAGCStats];
  objc_sync_enter(v3);
  [WCM_Logging logLevel:2 message:@"submitBtAGCStats"];
  v4 = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  v5 = [NSArray arrayWithArray:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  [v10 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)submitBTAFHStats
{
  v3 = [(WCM_CA_WatchCoexStats *)self lockObjectBTAFHStats];
  objc_sync_enter(v3);
  [WCM_Logging logLevel:2 message:@"submitAFHStats"];
  v4 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  v5 = [NSArray arrayWithArray:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  [v10 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)updateCABTAFHIssue:(id)a3 issueType:(id)a4
{
  if (a3)
  {
    v6 = a4;
    [(WCM_CA_WatchCoexStats *)self setBtAFHIssueBand:a3];
    [(WCM_CA_WatchCoexStats *)self setBtAFHIssueType:v6];
  }
}

- (void)updateCABTPreferredMap:(id)a3
{
  v44 = a3;
  [WCM_Logging logLevel:2 message:@"updateCABTAGCStats"];
  v4 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
  if (v4)
  {
    v5 = v4;
    v6 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
    v7 = [v6 isEqualToString:&stru_100255120];

    if ((v7 & 1) == 0)
    {
      v8 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
      if (v8)
      {
        v9 = v8;
        v10 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
        v11 = [v10 isEqualToString:&stru_100255120];

        if (v44)
        {
          if ((v11 & 1) == 0)
          {
            v12 = sub_100084C18(v44);
            if (v12 >= 21)
            {
              if (v12 >= 0x28)
              {
                v16 = 0;
                v13 = 0;
                if (v12 >= 0x3C)
                {
                  v14 = 0;
                  v15 = v12 < 0x4F;
                  v43 = v12 > 0x4E;
                }

                else
                {
                  v15 = 0;
                  v43 = 0;
                  v14 = 1;
                }
              }

              else
              {
                v16 = 0;
                v14 = 0;
                v15 = 0;
                v43 = 0;
                v13 = 1;
              }
            }

            else
            {
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v43 = 0;
              v16 = 1;
            }

            v17 = [(WCM_CA_WatchCoexStats *)self lockObjectBTAFHStats];
            objc_sync_enter(v17);
            v18 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
            v19 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
            v20 = [(WCM_CA_WatchCoexStats *)self findBTAFHEntry:v18 issueType:v19];

            if (v20)
            {
              v21 = [v20 objectForKeyedSubscript:@"count"];
              v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 intValue] + 1);
              [v20 setObject:v22 forKeyedSubscript:@"count"];

              v23 = [v20 objectForKeyedSubscript:@"AFH_0_20"];
              v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 intValue] + v16);
              [v20 setObject:v24 forKeyedSubscript:@"AFH_0_20"];

              v25 = [v20 objectForKeyedSubscript:@"AFH_21_40"];
              v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 intValue] + v13);
              [v20 setObject:v26 forKeyedSubscript:@"AFH_21_40"];

              v27 = [v20 objectForKeyedSubscript:@"AFH_41_60"];
              v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 intValue] + v14);
              [v20 setObject:v28 forKeyedSubscript:@"AFH_41_60"];

              v29 = [v20 objectForKeyedSubscript:@"AFH_61_79"];
              v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v29 intValue] + v15);
              [v20 setObject:v30 forKeyedSubscript:@"AFH_61_79"];

              v31 = [v20 objectForKeyedSubscript:@"AFH_ALL"];
              v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 intValue] + v43);
              [v20 setObject:v32 forKeyedSubscript:@"AFH_ALL"];
            }

            else
            {
              v31 = objc_alloc_init(NSMutableDictionary);
              v33 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
              [v31 setObject:v33 forKeyedSubscript:@"IssueBand"];

              v34 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
              [v31 setObject:v34 forKeyedSubscript:@"IssueType"];

              [v31 setObject:&off_1002707B8 forKeyedSubscript:@"count"];
              v35 = [NSNumber numberWithInt:v16];
              [v31 setObject:v35 forKeyedSubscript:@"AFH_0_20"];

              v36 = [NSNumber numberWithInt:v13];
              [v31 setObject:v36 forKeyedSubscript:@"AFH_21_40"];

              v37 = [NSNumber numberWithInt:v14];
              [v31 setObject:v37 forKeyedSubscript:@"AFH_41_60"];

              v38 = [NSNumber numberWithInt:v15];
              [v31 setObject:v38 forKeyedSubscript:@"AFH_61_79"];

              v39 = [NSNumber numberWithInt:v43];
              [v31 setObject:v39 forKeyedSubscript:@"AFH_ALL"];

              v32 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
              [v32 addObject:v31];
            }

            objc_sync_exit(v17);
            +[NSDate timeIntervalSinceReferenceDate];
            v41 = v40;
            [(WCM_CA_WatchCoexStats *)self previousBTAFHStartTime];
            if (v41 - v42 > 300.0)
            {
              [(WCM_CA_WatchCoexStats *)self submitBTAFHStats];
              [(WCM_CA_WatchCoexStats *)self setPreviousBTAFHStartTime:v41];
            }
          }
        }
      }
    }
  }
}

@end