@interface HRCAnalyticsReporter
- (BOOL)improveHealthAndActivityAllowed;
- (HRCAnalyticsReporter)init;
- (id).cxx_construct;
- (id)_handleAgcOpc:(id)a3 side:(id)a4;
- (id)_handleAnalyticsSubpacket:(id)a3 data:(id)a4 expectedFields:()vector<hrc_bud_analytics:(std::allocator<hrc_bud_analytics::HRMetricID>> *)a5 :HRMetricID;
- (id)_handleDriverStats:(id)a3 side:(id)a4;
- (id)_handlePalMetric:(id)a3 side:(id)a4;
- (id)_handlePreprocessorFoms:(id)a3 side:(id)a4;
- (id)_handleScanMitigation:(id)a3 side:(id)a4;
- (id)_handleSessionMetrics:(id)a3 side:(id)a4;
- (id)_handleSolisMetric:(id)a3 side:(id)a4;
- (id)_handleSystemMetrics:(id)a3;
- (id)_handleWxHealthMerged:(id)a3;
- (id)_initWithOutputTarget:(id)a3 dispatchQueue:(id)a4 budAnalyticsWaitTime:(duration<long)long;
- (id)_updateForIHA:(id)a3 side:(id)a4;
- (id)defaultAlgsAnalytics;
- (id)defaultBudAnalytics;
- (id)defaultHostAnalytics;
- (optional<HKWorkoutActivityType>)activityType;
- (optional<HKWorkoutSessionLocationType>)locationType;
- (optional<std::chrono::time_point<std::chrono::steady_clock,)aacpStreamingStartTime;
- (optional<std::chrono::time_point<std::chrono::steady_clock,)bleStreamingStartTime;
- (optional<std::chrono::time_point<std::chrono::steady_clock,)firstPublishedHeartRateTime;
- (void)_finalizeComputation;
- (void)_handleAACPSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)_handleAlgsAnalytics:(id)a3;
- (void)_handleB498Analytics:(id)a3;
- (void)_handleB788Analytics:(id)a3;
- (void)_handleBLESourceUpdate:(const HRCSourceUpdate *)a3;
- (void)_handleBudAnalytics:(id)a3 expectedFields:()vector<hrc_bud_analytics:(std::allocator<hrc_bud_analytics::HRMetricID>> *)a4 :HRMetricID;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)_handleStreamingModeOnAt:(int64_t)a3;
- (void)_handleStreamingModeUpdate:(unint64_t)a3 steadyClockDurationCount:(int64_t)a4;
- (void)_handleSysdiagnoseTrigger;
- (void)_heartRatePublishedFromSource:(unsigned __int8)a3 steadyClockDurationCount:(int64_t)a4;
- (void)_resetState;
- (void)_saveHostAnalyticsAtTimestamp:()time_point<std:(std:()std:(1000000000>>>)a3 :ratio<1 :chrono::duration<long)long :chrono::steady_clock;
- (void)_sendHostAnalytics:(id)a3 withAlgAnalytics:(id)a4;
- (void)_updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4;
- (void)finalizeComputation;
- (void)handleAlgsAnalytics:(id)a3;
- (void)handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)handleStreamingModeUpdate:(unint64_t)a3 steadyClockDurationCount:(int64_t)a4;
- (void)handleSysdiagnoseTrigger;
- (void)heartRatePublishedFromSource:(unsigned __int8)a3 steadyClockDurationCount:(int64_t)a4;
- (void)setImproveHealthAndActivityAllowed:(BOOL)a3;
- (void)updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4;
@end

@implementation HRCAnalyticsReporter

- (void)handleAlgsAnalytics:(id)a3
{
  v4 = a3;
  v5 = [(HRCAnalyticsReporter *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100009FEC;
  v9[3] = &unk_100040A78;
  v6 = self;
  v7 = v4;
  v8 = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v5, v9);
}

- (void)_handleAlgsAnalytics:(id)a3
{
  v4 = a3;
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 mutableCopy];
  v7 = [v6 allKeys];
  if (![(HRCAnalyticsReporter *)self _improveHealthAndActivityAllowed])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v6 setObject:&off_1000431E0 forKeyedSubscript:{*(*(&v13 + 1) + 8 * v11), v13}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v12 = sub_10000132C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saving algs analytics %{public}@", buf, 0xCu);
  }

  [(HRCAnalyticsReporter *)self setPendingAlgsAnalytics:v6];
}

- (id)defaultAlgsAnalytics
{
  v2 = objc_opt_new();

  return v2;
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3321888768;
  v16[2] = sub_10000AC78;
  v16[3] = &unk_100040AA8;
  v6 = self;
  v7 = a3->var0;
  var1 = a3->var1;
  v9 = a3->var2;
  v10 = a3->var3;
  v11 = *&a3->var4;
  v17 = v6;
  v18 = v7;
  v19 = var1;
  v20 = v9;
  v12 = v10;
  v21 = v12;
  v22 = v11;
  v13 = v9;
  v14 = v7;
  v15 = v6;
  dispatch_async(v5, v16);
}

- (void)handleStreamingModeUpdate:(unint64_t)a3 steadyClockDurationCount:(int64_t)a4
{
  v7 = [(HRCAnalyticsReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10000ADE8;
  block[3] = &unk_100040AD8;
  v8 = self;
  v10 = v8;
  v11 = a3;
  v12 = a4;
  dispatch_async(v7, block);
}

- (void)heartRatePublishedFromSource:(unsigned __int8)a3 steadyClockDurationCount:(int64_t)a4
{
  v7 = [(HRCAnalyticsReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10000AEF4;
  block[3] = &unk_100040B08;
  v8 = self;
  v10 = v8;
  v11 = a3;
  v12 = a4;
  dispatch_async(v7, block);
}

- (void)updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4
{
  v7 = [(HRCAnalyticsReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10000B000;
  block[3] = &unk_100040B38;
  v8 = self;
  v10 = v8;
  v11 = a3;
  v12 = a4;
  dispatch_async(v7, block);
}

- (void)handleSysdiagnoseTrigger
{
  v3 = [(HRCAnalyticsReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10000B0F4;
  block[3] = &unk_100040B68;
  v4 = self;
  v6 = v4;
  dispatch_async(v3, block);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  var4 = a3->var4;
  if (var4 == 1)
  {

    [(HRCAnalyticsReporter *)self _handleAACPSourceUpdate:a3];
  }

  else if (var4 == 3)
  {

    [(HRCAnalyticsReporter *)self _handleBLESourceUpdate:a3];
  }
}

- (void)_handleAACPSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  if (!a3->var5)
  {
    [(HRCAnalyticsReporter *)self setAacpConnected:0];
    [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
    if ((v9 & 1) == 0)
    {
      return;
    }

    var1 = a3->var1;
    v11 = [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
    if ((v12 & 1) == 0)
    {
      sub_10000BDC8();
    }

    [(HRCAnalyticsReporter *)self setAacpStreamingDuration:[(HRCAnalyticsReporter *)self aacpStreamingDuration]+ var1 - v11];
    v7 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  if (![(HRCAnalyticsReporter *)self aacpConnected])
  {
    [(HRCAnalyticsReporter *)self setNumAacpConnects:[(HRCAnalyticsReporter *)self numAacpConnects]+ 1];
  }

  [(HRCAnalyticsReporter *)self setAacpConnected:1];
  [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
  if ((v6 & 1) == 0)
  {
    v7 = a3->var1;
    v8 = 1;
LABEL_9:

    [(HRCAnalyticsReporter *)self setAacpStreamingStartTime:v7, v8];
  }
}

- (void)_handleBLESourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  LODWORD(v5) = a3->var5;
  [(HRCAnalyticsReporter *)self bleStreamingStartTime];
  if (v5)
  {
    if (v6)
    {
      return;
    }

    var1 = a3->var1;
    v8 = 1;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      return;
    }

    v9 = a3->var1;
    v10 = [(HRCAnalyticsReporter *)self bleStreamingStartTime];
    if ((v11 & 1) == 0)
    {
      sub_10000BDC8();
    }

    [(HRCAnalyticsReporter *)self setBleStreamingDuration:[(HRCAnalyticsReporter *)self bleStreamingDuration]+ v9 - v10];
    var1 = 0;
    v8 = 0;
  }

  [(HRCAnalyticsReporter *)self setBleStreamingStartTime:var1, v8];
}

- (void)_handleStreamingModeUpdate:(unint64_t)a3 steadyClockDurationCount:(int64_t)a4
{
  v7 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v7);

  if ([(HRCAnalyticsReporter *)self streamingMode]!= a3)
  {
    if (![(HRCAnalyticsReporter *)self streamingMode])
    {
      [(HRCAnalyticsReporter *)self _handleStreamingModeOnAt:a4];
    }

    [(HRCAnalyticsReporter *)self setStreamingMode:a3];
    if (!a3)
    {

      [(HRCAnalyticsReporter *)self _saveHostAnalyticsAtTimestamp:a4];
    }
  }
}

- (void)_handleStreamingModeOnAt:(int64_t)a3
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  [(HRCAnalyticsReporter *)self setStreamingModeStartTime:a3];
  [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
  LOBYTE(a3) = v6;
  v7 = self;
  v8 = v7;
  if (a3)
  {
    v9 = [(HRCAnalyticsReporter *)v7 streamingModeStartTime];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  [(HRCAnalyticsReporter *)v8 setAacpStreamingStartTime:v9, v10];

  [(HRCAnalyticsReporter *)v8 bleStreamingStartTime];
  v12 = v11;
  v13 = v8;
  v14 = v13;
  if (v12)
  {
    v15 = [(HRCAnalyticsReporter *)v13 streamingModeStartTime];
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  [(HRCAnalyticsReporter *)v14 setBleStreamingStartTime:v15, v16];

  [(HRCAnalyticsReporter *)v14 setAacpStreamingDuration:0];
  [(HRCAnalyticsReporter *)v14 setBleStreamingDuration:0];
  v17 = [(HRCAnalyticsReporter *)v14 aacpConnected];

  [(HRCAnalyticsReporter *)v14 setNumAacpConnects:v17];
}

- (void)_heartRatePublishedFromSource:(unsigned __int8)a3 steadyClockDurationCount:(int64_t)a4
{
  v5 = a3;
  v7 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v5 != 3)
  {
    [(HRCAnalyticsReporter *)self firstPublishedHeartRateTime];
    if ((v8 & 1) == 0)
    {

      [(HRCAnalyticsReporter *)self setFirstPublishedHeartRateTime:a4, 1];
    }
  }
}

- (void)_updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4
{
  v7 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v7);

  if (a3)
  {
    [(HRCAnalyticsReporter *)self setActivityType:a3, 1];

    [(HRCAnalyticsReporter *)self setLocationType:a4, 1];
  }
}

- (void)_handleSysdiagnoseTrigger
{
  v3 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HRCAnalyticsReporter *)self streamingMode])
  {
    v4 = sub_10000132C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "system log collection triggered", v5, 2u);
    }

    [(HRCAnalyticsReporter *)self setSysdiagnoseTriggered:1];
  }
}

- (void)_saveHostAnalyticsAtTimestamp:()time_point<std:(std:()std:(1000000000>>>)a3 :ratio<1 :chrono::duration<long)long :chrono::steady_clock
{
  v5 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HRCAnalyticsReporter *)self pendingHostAnalytics];

  if (v6)
  {
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000BE14(a3.__d_.__rep_, v7);
    }

    [(HRCAnalyticsReporter *)self _resetState];
    return;
  }

  [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
  if (v8)
  {
    v9 = [(HRCAnalyticsReporter *)self aacpStreamingStartTime];
    if ((v10 & 1) == 0)
    {
      goto LABEL_43;
    }

    [(HRCAnalyticsReporter *)self setAacpStreamingDuration:[(HRCAnalyticsReporter *)self aacpStreamingDuration]+ a3.__d_.__rep_ - v9];
  }

  [(HRCAnalyticsReporter *)self bleStreamingStartTime];
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = [(HRCAnalyticsReporter *)self bleStreamingStartTime];
  if ((v13 & 1) == 0)
  {
LABEL_43:
    sub_10000BDC8();
  }

  [(HRCAnalyticsReporter *)self setBleStreamingDuration:[(HRCAnalyticsReporter *)self bleStreamingDuration]+ a3.__d_.__rep_ - v12];
LABEL_11:
  v14 = self;
  [(HRCAnalyticsReporter *)v14 firstPublishedHeartRateTime];
  if (v15)
  {
    v16 = [(HRCAnalyticsReporter *)v14 firstPublishedHeartRateTime];
    if (v17)
    {
      if (v16 < [(HRCAnalyticsReporter *)v14 streamingModeStartTime])
      {
        goto LABEL_14;
      }

      v19 = [(HRCAnalyticsReporter *)v14 firstPublishedHeartRateTime];
      if (v20)
      {
        v18 = (v19 - [(HRCAnalyticsReporter *)v14 streamingModeStartTime]) / 1000000000;
        goto LABEL_17;
      }
    }

    sub_10000BDC8();
  }

LABEL_14:
  v18 = -1;
LABEL_17:

  v53[0] = @"duration_streaming_seconds";
  v45 = [NSNumber numberWithLongLong:(a3.__d_.__rep_ - [(HRCAnalyticsReporter *)v14 streamingModeStartTime]) / 1000000000];
  v54[0] = v45;
  v53[1] = @"duration_aacp_streaming_seconds";
  v44 = [NSNumber numberWithLongLong:[(HRCAnalyticsReporter *)v14 aacpStreamingDuration]/ 1000000000];
  v54[1] = v44;
  v53[2] = @"duration_ble_streaming_seconds";
  v21 = [NSNumber numberWithLongLong:[(HRCAnalyticsReporter *)v14 bleStreamingDuration]/ 1000000000];
  v54[2] = v21;
  v53[3] = @"num_airpod_connects";
  v22 = [NSNumber numberWithUnsignedLongLong:[(HRCAnalyticsReporter *)v14 numAacpConnects]];
  v54[3] = v22;
  v53[4] = @"num_secs_first_hr_to_hk";
  v23 = [NSNumber numberWithLongLong:v18];
  v54[4] = v23;
  v53[5] = @"workout_type";
  [(HRCAnalyticsReporter *)v14 activityType];
  v25 = v24;
  if (v24)
  {
    v26 = [(HRCAnalyticsReporter *)v14 activityType];
    if ((v27 & 1) == 0)
    {
      sub_10000BDC8();
    }

    v28 = [NSNumber numberWithUnsignedInteger:v26];
  }

  else
  {
    v28 = &off_1000431F8;
  }

  v54[5] = v28;
  v53[6] = @"location_type";
  [(HRCAnalyticsReporter *)v14 locationType];
  v30 = v29;
  if (v29)
  {
    v31 = [(HRCAnalyticsReporter *)v14 locationType];
    if ((v32 & 1) == 0)
    {
      sub_10000BDC8();
    }

    v33 = [NSNumber numberWithInteger:v31];
  }

  else
  {
    v33 = &off_100043210;
  }

  v54[6] = v33;
  v53[7] = @"sysdiagnose_triggered";
  v34 = [NSNumber numberWithBool:[(HRCAnalyticsReporter *)v14 sysdiagnoseTriggered]];
  v54[7] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:8];

  if (v30)
  {
  }

  if (v25)
  {
  }

  [(HRCAnalyticsReporter *)v14 _resetState];
  v36 = [v35 mutableCopy];
  if (![(HRCAnalyticsReporter *)v14 _improveHealthAndActivityAllowed])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = [&off_1000437C0 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v37)
    {
      v38 = *v47;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(&off_1000437C0);
          }

          v40 = *(*(&v46 + 1) + 8 * i);
          v41 = [v36 objectForKeyedSubscript:v40];
          v42 = v41 == 0;

          if (!v42)
          {
            [v36 setObject:&off_100043228 forKeyedSubscript:v40];
          }
        }

        v37 = [&off_1000437C0 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v37);
    }
  }

  v43 = sub_10000132C();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v51 = v36;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Saving analytics %{sensitive}@", buf, 0xCu);
  }

  [(HRCAnalyticsReporter *)v14 setPendingHostAnalytics:v36];
}

- (void)_resetState
{
  [(HRCAnalyticsReporter *)self setFirstPublishedHeartRateTime:0, 0];
  [(HRCAnalyticsReporter *)self setActivityType:0, 0];
  [(HRCAnalyticsReporter *)self setLocationType:0, 0];
  [(HRCAnalyticsReporter *)self setNumAacpConnects:0];

  [(HRCAnalyticsReporter *)self setSysdiagnoseTriggered:0];
}

- (id)defaultBudAnalytics
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000C04C;
  v12 = sub_10000C05C;
  v13 = objc_opt_new();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C064;
  v7[3] = &unk_100040BA0;
  v7[4] = &v8;
  v2 = objc_retainBlock(v7);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C18C;
  v6[3] = &unk_100040BA0;
  v6[4] = &v8;
  v3 = objc_retainBlock(v6);
  [qword_100048870 enumerateObjectsUsingBlock:v2];
  [qword_100048860 enumerateObjectsUsingBlock:v2];
  [qword_100048878 enumerateObjectsUsingBlock:v3];
  [qword_100048868 enumerateObjectsUsingBlock:v3];
  v4 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)handleAnalyticsReport:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v6 = a4;
  switch(v4)
  {
    case 2:
      v10 = [(HRCAnalyticsReporter *)self queue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000C444;
      v11[3] = &unk_100040BC8;
      v11[4] = self;
      v12 = v6;
      dispatch_async(v10, v11);

      v9 = v12;
      goto LABEL_9;
    case 1:
      v8 = [(HRCAnalyticsReporter *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000C438;
      block[3] = &unk_100040BC8;
      block[4] = self;
      v14 = v6;
      dispatch_async(v8, block);

      v9 = v14;
LABEL_9:

      break;
    case 0:
      v7 = sub_10000132C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10000FD8C();
      }

      break;
  }
}

- (void)_handleB498Analytics:(id)a3
{
  v4 = a3;
  if ((atomic_load_explicit(&qword_1000488A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000488A8))
  {
    v8 = 67305985;
    v9 = 10;
    qword_100048898 = 0;
    unk_1000488A0 = 0;
    qword_100048890 = 0;
    sub_10000FB88(&qword_100048890, &v8, v10, 5);
    __cxa_atexit(sub_10000C598, &qword_100048890, &_mh_execute_header);
    __cxa_guard_release(&qword_1000488A8);
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10000FCF4(&__p, qword_100048890, qword_100048898, qword_100048898 - qword_100048890);
  [(HRCAnalyticsReporter *)self _handleBudAnalytics:v4 expectedFields:&__p];
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)_handleB788Analytics:(id)a3
{
  v4 = a3;
  if ((atomic_load_explicit(&qword_1000488C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000488C8))
  {
    v8 = 0x807060504030201;
    v9 = 9;
    qword_1000488B8 = 0;
    unk_1000488C0 = 0;
    qword_1000488B0 = 0;
    sub_10000FB88(&qword_1000488B0, &v8, v10, 9);
    __cxa_atexit(sub_10000C598, &qword_1000488B0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000488C8);
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10000FCF4(&__p, qword_1000488B0, qword_1000488B8, qword_1000488B8 - qword_1000488B0);
  [(HRCAnalyticsReporter *)self _handleBudAnalytics:v4 expectedFields:&__p];
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)_handleBudAnalytics:(id)a3 expectedFields:()vector<hrc_bud_analytics:(std::allocator<hrc_bud_analytics::HRMetricID>> *)a4 :HRMetricID
{
  v7 = a3;
  v8 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([v7 length] > 4)
  {
    [v7 getBytes:v31 length:5];
    if (v31[0] == 1)
    {
      v26 = [(HRCAnalyticsReporter *)self defaultBudAnalytics];
      v11 = sub_10000132C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10000FE4C(v31, v11);
      }

      if (v32)
      {
        v13 = 0;
        v14 = 5;
        *&v12 = 138543362;
        v25 = v12;
        while (1)
        {
          v15 = v14 + 4;
          if ([v7 length] < v14 + 4)
          {
            v24 = sub_10000132C();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          [v7 getBytes:&v30 range:{v14, 4}];
          v16 = [v7 length];
          if (v16 < v15 + HIBYTE(v30))
          {
            break;
          }

          v17 = [v7 subdataWithRange:v14 + 4];
          v18 = sub_10000132C();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            *v34 = BYTE2(v30);
            *&v34[4] = 256;
            v34[6] = v30;
            *&v34[7] = 1024;
            v35 = HIBYTE(v30);
            v36 = 256;
            v37 = BYTE1(v30);
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Subpacket ver:%d id:%d size:%d side:%d", buf, 0x14u);
          }

          v19 = HIBYTE(v30);
          v20 = v30;
          v28 = 0;
          v29 = 0;
          __p = 0;
          sub_10000FCF4(&__p, a4->var0, a4->var1, a4->var1 - a4->var0);
          v4 = v4 & 0xFFFFFFFF00000000 | v20;
          v21 = [(HRCAnalyticsReporter *)self _handleAnalyticsSubpacket:v4 data:v17 expectedFields:&__p];
          if (__p)
          {
            v28 = __p;
            operator delete(__p);
          }

          v22 = sub_10000132C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            *v34 = v21;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "SubPacket:%{public}@", buf, 0xCu);
          }

          [v26 addEntriesFromDictionary:v21];
          v14 = v15 + v19;
          if (++v13 >= v32)
          {
            goto LABEL_22;
          }
        }

        v24 = sub_10000132C();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }

LABEL_28:
        sub_10000FEE4();
LABEL_29:

        v9 = v26;
      }

      else
      {
LABEL_22:
        v23 = sub_10000132C();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          *v34 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Setting bud analytics %{sensitive}@", buf, 0xCu);
        }

        v9 = v26;
        [(HRCAnalyticsReporter *)self setPendingBudAnalytics:v26];
      }
    }

    else
    {
      v9 = sub_10000132C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        sub_10000FDC0(v31, v9);
        goto LABEL_21;
      }
    }
  }

  else
  {
    v9 = sub_10000132C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      sub_10000FF18();
LABEL_21:
      v9 = v10;
    }
  }
}

- (id)_handleAnalyticsSubpacket:(id)a3 data:(id)a4 expectedFields:()vector<hrc_bud_analytics:(std::allocator<hrc_bud_analytics::HRMetricID>> *)a5 :HRMetricID
{
  v6 = *&a3.var0;
  v8 = a4;
  v9 = [(HRCAnalyticsReporter *)self queue];
  dispatch_assert_queue_V2(v9);
  v10 = v6;
  v11 = HIBYTE(v6);

  v12 = &stru_100042498;
  if (v11 == 2)
  {
    v12 = @"_right";
  }

  if (v11 == 1)
  {
    v13 = @"_left";
  }

  else
  {
    v13 = v12;
  }

  var0 = a5->var0;
  var1 = a5->var1;
  if (a5->var0 != var1)
  {
    while (*var0 != v10)
    {
      if (++var0 == var1)
      {
        var0 = a5->var1;
        break;
      }
    }
  }

  if (var0 == var1)
  {
    v17 = sub_10000132C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      v20 = 0;
      goto LABEL_36;
    }

    *buf = 16908544;
    v25 = v10;
    v18 = "Skipping unknown analytics subpacket ID %{public}u";
    v19 = buf;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 5u);
    goto LABEL_20;
  }

  if (v10 <= 5)
  {
    if (v10 <= 3)
    {
      if (v10 == 1)
      {
        v16 = [(HRCAnalyticsReporter *)self _handleSessionMetrics:v8 side:v13];
        goto LABEL_35;
      }

      if (v10 == 2)
      {
        v16 = [(HRCAnalyticsReporter *)self _handleSystemMetrics:v8, v13];
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (v10 == 4)
    {
      [(HRCAnalyticsReporter *)self _handleWxHealthMerged:v8, v13];
    }

    else
    {
      [(HRCAnalyticsReporter *)self _handleAgcOpc:v8 side:v13];
    }

    v16 = LABEL_27:;
    goto LABEL_35;
  }

  if (v10 <= 7)
  {
    if (v10 == 6)
    {
      [(HRCAnalyticsReporter *)self _handlePreprocessorFoms:v8 side:v13];
    }

    else
    {
      [(HRCAnalyticsReporter *)self _handleDriverStats:v8 side:v13];
    }

    goto LABEL_27;
  }

  if (v10 == 8)
  {
    v16 = [(HRCAnalyticsReporter *)self _handlePalMetric:v8 side:v13];
    goto LABEL_35;
  }

  if (v10 == 9)
  {
    v16 = [(HRCAnalyticsReporter *)self _handleScanMitigation:v8 side:v13];
    goto LABEL_35;
  }

  if (v10 != 10)
  {
LABEL_39:
    v17 = sub_10000132C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v22 = 16777472;
    v23 = v10;
    v18 = "Unhandled metric ID %u";
    v19 = &v22;
    goto LABEL_19;
  }

  v16 = [(HRCAnalyticsReporter *)self _handleSolisMetric:v8 side:v13];
LABEL_35:
  v20 = v16;
LABEL_36:

  return v20;
}

- (id)_handleWxHealthMerged:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 0x3E)
  {
    v6 = objc_opt_new();
    [v4 getBytes:v43 length:62];
    v7 = [NSNumber numberWithInt:v43[0]];
    [v6 setObject:v7 forKeyedSubscript:@"bud_duration_seconds_left"];

    v8 = [NSNumber numberWithInt:v43[1]];
    [v6 setObject:v8 forKeyedSubscript:@"bud_duration_seconds_right"];

    v9 = [NSNumber numberWithInt:v43[2]];
    [v6 setObject:v9 forKeyedSubscript:@"bud_duration_seconds_dual"];

    v10 = [NSNumber numberWithChar:v44];
    [v6 setObject:v10 forKeyedSubscript:@"bud_no_report_left"];

    v11 = [NSNumber numberWithChar:v45];
    [v6 setObject:v11 forKeyedSubscript:@"bud_no_report_right"];

    v12 = [NSNumber numberWithChar:v46];
    [v6 setObject:v12 forKeyedSubscript:@"bud_no_report_dual"];

    v13 = [NSNumber numberWithChar:v47];
    [v6 setObject:v13 forKeyedSubscript:@"bud_no_report_30_left"];

    v14 = [NSNumber numberWithChar:v48];
    [v6 setObject:v14 forKeyedSubscript:@"bud_no_report_30_right"];

    v15 = [NSNumber numberWithChar:v49];
    [v6 setObject:v15 forKeyedSubscript:@"bud_no_report_30_dual"];

    v16 = [NSNumber numberWithChar:v50];
    [v6 setObject:v16 forKeyedSubscript:@"bud_no_report_90_left"];

    v17 = [NSNumber numberWithChar:v51];
    [v6 setObject:v17 forKeyedSubscript:@"bud_no_report_90_right"];

    v18 = [NSNumber numberWithChar:v52];
    [v6 setObject:v18 forKeyedSubscript:@"bud_no_report_90_dual"];

    v19 = [NSNumber numberWithChar:v53];
    [v6 setObject:v19 forKeyedSubscript:@"bud_no_report_180_left"];

    v20 = [NSNumber numberWithChar:v54];
    [v6 setObject:v20 forKeyedSubscript:@"bud_no_report_180_right"];

    v21 = [NSNumber numberWithChar:v55];
    [v6 setObject:v21 forKeyedSubscript:@"bud_no_report_180_dual"];

    v22 = [NSNumber numberWithChar:v56];
    [v6 setObject:v22 forKeyedSubscript:@"bud_no_report_300_left"];

    v23 = [NSNumber numberWithChar:v57];
    [v6 setObject:v23 forKeyedSubscript:@"bud_no_report_300_right"];

    v24 = [NSNumber numberWithChar:v58];
    [v6 setObject:v24 forKeyedSubscript:@"bud_no_report_300_dual"];

    v25 = [NSNumber numberWithInt:v59];
    [v6 setObject:v25 forKeyedSubscript:@"bud_seconds_to_first_confident_hr_left"];

    v26 = [NSNumber numberWithInt:v60];
    [v6 setObject:v26 forKeyedSubscript:@"bud_seconds_to_first_confident_hr_right"];

    v27 = [NSNumber numberWithInt:v61];
    [v6 setObject:v27 forKeyedSubscript:@"bud_seconds_to_first_confident_hr_dual"];

    v28 = [NSNumber numberWithChar:v62];
    [v6 setObject:v28 forKeyedSubscript:@"bud_dropped_reads_percentage_left"];

    v29 = [NSNumber numberWithChar:v63];
    [v6 setObject:v29 forKeyedSubscript:@"bud_dropped_reads_percentage_right"];

    v30 = [NSNumber numberWithChar:v64];
    [v6 setObject:v30 forKeyedSubscript:@"bud_saturated_reads_percentage_left"];

    v31 = [NSNumber numberWithChar:v65];
    [v6 setObject:v31 forKeyedSubscript:@"bud_saturated_reads_percentage_right"];

    v32 = [NSNumber numberWithChar:v66];
    [v6 setObject:v32 forKeyedSubscript:@"bud_ear_R_selection_pct"];

    v33 = [NSNumber numberWithInt:v67];
    [v6 setObject:v33 forKeyedSubscript:@"bud_mean_time_between_time_outs"];

    v34 = [NSNumber numberWithInt:v68];
    [v6 setObject:v34 forKeyedSubscript:@"bud_mean_time_between_bud_mode_changes"];

    v35 = [NSNumber numberWithInt:v69];
    [v6 setObject:v35 forKeyedSubscript:@"bud_mean_time_between_channel_switches"];

    v36 = [NSNumber numberWithShort:v70];
    [v6 setObject:v36 forKeyedSubscript:@"bud_mean_hr_jump_after_selection"];

    v37 = [NSNumber numberWithShort:v71];
    [v6 setObject:v37 forKeyedSubscript:@"bud_max_hr_jump_after_selection"];

    v38 = [NSNumber numberWithShort:v72];
    [v6 setObject:v38 forKeyedSubscript:@"bud_mean_avg_confidence_diff"];

    if ([v4 length] >= 0x40)
    {
      [v4 getBytes:v42 length:64];
      v39 = [NSNumber numberWithChar:v42[62]];
      [v6 setObject:v39 forKeyedSubscript:@"bud_withheld_hrs_percentage_left"];

      v40 = [NSNumber numberWithChar:v42[63]];
      [v6 setObject:v40 forKeyedSubscript:@"bud_withheld_hrs_percentage_right"];
    }

    v5 = [(HRCAnalyticsReporter *)self _updateForIHA:v6 side:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_handleSessionMetrics:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 8)
  {
    v10 = objc_opt_new();
    [v6 getBytes:v20 length:8];
    v11 = [NSNumber numberWithChar:v20[0]];
    v12 = sub_10000D7DC(@"battery_start_of_session", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithChar:v20[1]];
    v14 = sub_10000D7DC(@"battery_end_of_session", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithShort:v21];
    v16 = sub_10000D7DC(@"mlb_temp_start_of_session", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSNumber numberWithUnsignedInt:v22];
    v18 = sub_10000D7DC(@"bud_mileage", v7);
    [v10 setObject:v17 forKeyedSubscript:v18];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_handleSystemMetrics:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 8)
  {
    v6 = objc_opt_new();
    [v4 getBytes:&v26 length:8];
    v7 = [NSNumber numberWithUnsignedShort:v26];
    [v6 setObject:v7 forKeyedSubscript:@"product_id"];

    v8 = [NSNumber numberWithUnsignedInt:v27];
    [v6 setObject:v8 forKeyedSubscript:@"sw_version_ext"];

    v9 = [NSNumber numberWithUnsignedShort:v28];
    [v6 setObject:v9 forKeyedSubscript:@"hw_version"];

    if ([v4 length] >= 0x44)
    {
      [v4 getBytes:v29 length:68];
      v23 = v31;
      v25 = 20;
      *v22 = v30;
      v24 = 0;
      v21 = 20;
      *v18 = v32;
      v19 = v33;
      v20 = 0;
      v17 = 20;
      *__p = v34;
      v15 = v35;
      v16 = 0;
      v10 = [NSString stringWithUTF8String:v22];
      [v6 setObject:v10 forKeyedSubscript:@"serial_number_left"];

      v11 = [NSString stringWithUTF8String:v18];
      [v6 setObject:v11 forKeyedSubscript:@"serial_number_right"];

      v12 = [NSString stringWithUTF8String:__p];
      [v6 setObject:v12 forKeyedSubscript:@"serial_number_system"];

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v18[0]);
      }

      if (v25 < 0)
      {
        operator delete(v22[0]);
      }
    }

    v5 = [(HRCAnalyticsReporter *)self _updateForIHA:v6 side:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_handleAgcOpc:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 5)
  {
    v10 = objc_opt_new();
    [v6 getBytes:v18 length:5];
    v11 = [NSNumber numberWithUnsignedShort:v18[0]];
    v12 = sub_10000D7DC(@"a_agcopc_N_reruns", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithUnsignedShort:v18[1]];
    v14 = sub_10000D7DC(@"a_agcopc_rerun_time_diff_mean", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithUnsignedChar:v19];
    v16 = sub_10000D7DC(@"a_agcopc_N_retries_mean", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_handleScanMitigation:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] >= 9)
  {
    v9 = objc_opt_new();
    [v6 getBytes:v17 length:9];
    v10 = [NSNumber numberWithUnsignedInt:v17[0]];
    v11 = sub_10000D7DC(@"a_kdb_timing_coex_error_count", v7);
    [v9 setObject:v10 forKeyedSubscript:v11];

    v12 = [NSNumber numberWithUnsignedInt:v17[1]];
    v13 = sub_10000D7DC(@"a_pcontroller_error_count", v7);
    [v9 setObject:v12 forKeyedSubscript:v13];

    v14 = [NSNumber numberWithUnsignedChar:v18];
    v15 = sub_10000D7DC(@"a_kdb_stop_while_running", v7);
    [v9 setObject:v14 forKeyedSubscript:v15];

    v8 = [(HRCAnalyticsReporter *)self _updateForIHA:v9 side:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_handlePreprocessorFoms:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 0x3C)
  {
    v10 = objc_opt_new();
    [v6 getBytes:&v54 length:60];
    v11 = [NSNumber numberWithUnsignedChar:v54];
    v12 = sub_10000D7DC(@"a_signal_fom_trigger", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithUnsignedInt:v55];
    v14 = sub_10000D7DC(@"a_signal_fom_PI", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithUnsignedShort:v56];
    v16 = sub_10000D7DC(@"a_signal_fom_session_length_s", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSNumber numberWithUnsignedShort:v57];
    v18 = sub_10000D7DC(@"a_signal_fom_win_start_s", v7);
    [v10 setObject:v17 forKeyedSubscript:v18];

    v19 = [NSNumber numberWithUnsignedShort:v58];
    v20 = sub_10000D7DC(@"a_signal_fom_win_length_s", v7);
    [v10 setObject:v19 forKeyedSubscript:v20];

    v21 = [NSNumber numberWithUnsignedChar:v59];
    v22 = sub_10000D7DC(@"a_signal_fom_iled", v7);
    [v10 setObject:v21 forKeyedSubscript:v22];

    v23 = [NSNumber numberWithUnsignedChar:v60];
    v24 = sub_10000D7DC(@"a_signal_fom_tia", v7);
    [v10 setObject:v23 forKeyedSubscript:v24];

    v25 = [NSNumber numberWithUnsignedInt:v61];
    v26 = sub_10000D7DC(@"a_signal_fom_dac_current", v7);
    [v10 setObject:v25 forKeyedSubscript:v26];

    v27 = [NSNumber numberWithUnsignedChar:v62];
    v28 = sub_10000D7DC(@"a_signal_fom_fs", v7);
    [v10 setObject:v27 forKeyedSubscript:v28];

    v29 = [NSNumber numberWithUnsignedInt:v63];
    v30 = sub_10000D7DC(@"a_signal_fom_mav_max", v7);
    [v10 setObject:v29 forKeyedSubscript:v30];

    v31 = [NSNumber numberWithUnsignedInt:v64];
    v32 = sub_10000D7DC(@"a_signal_fom_mav_mean", v7);
    [v10 setObject:v31 forKeyedSubscript:v32];

    v33 = [NSNumber numberWithUnsignedChar:v65];
    v34 = sub_10000D7DC(@"a_signal_fom_is_sat", v7);
    [v10 setObject:v33 forKeyedSubscript:v34];

    v35 = [NSNumber numberWithInt:v66];
    v36 = sub_10000D7DC(@"a_signal_fom_ACM_idc_mean", v7);
    [v10 setObject:v35 forKeyedSubscript:v36];

    v37 = [NSNumber numberWithUnsignedInt:v67];
    v38 = sub_10000D7DC(@"a_signal_fom_ACM_idc_rms", v7);
    [v10 setObject:v37 forKeyedSubscript:v38];

    v39 = [NSNumber numberWithUnsignedInt:v68];
    v40 = sub_10000D7DC(@"a_signal_fom_ACM_idc_max", v7);
    [v10 setObject:v39 forKeyedSubscript:v40];

    v41 = [NSNumber numberWithInt:v69];
    v42 = sub_10000D7DC(@"a_signal_fom_AACM_ambient_mean", v7);
    [v10 setObject:v41 forKeyedSubscript:v42];

    v43 = [NSNumber numberWithUnsignedInt:v70];
    v44 = sub_10000D7DC(@"a_signal_fom_AACM_ambient_rms", v7);
    [v10 setObject:v43 forKeyedSubscript:v44];

    v45 = [NSNumber numberWithUnsignedInt:v71];
    v46 = sub_10000D7DC(@"a_signal_fom_AACM_ambient_max", v7);
    [v10 setObject:v45 forKeyedSubscript:v46];

    v47 = [NSNumber numberWithInt:v72];
    v48 = sub_10000D7DC(@"a_signal_fom_ambient_mean", v7);
    [v10 setObject:v47 forKeyedSubscript:v48];

    v49 = [NSNumber numberWithUnsignedInt:v73];
    v50 = sub_10000D7DC(@"a_signal_fom_ambient_noise", v7);
    [v10 setObject:v49 forKeyedSubscript:v50];

    v51 = [NSNumber numberWithUnsignedChar:v74];
    v52 = sub_10000D7DC(@"a_signal_fom_session_sat_per", v7);
    [v10 setObject:v51 forKeyedSubscript:v52];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_handleDriverStats:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 8)
  {
    v10 = objc_opt_new();
    [v6 getBytes:v28 length:8];
    v11 = [NSNumber numberWithUnsignedChar:v28[0]];
    v12 = sub_10000D7DC(@"a_driver_scan_timeout", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithUnsignedChar:v28[1]];
    v14 = sub_10000D7DC(@"a_driver_intracomm_comm_error_count", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithUnsignedChar:v28[2]];
    v16 = sub_10000D7DC(@"a_driver_hal_queue_overflow_count", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSNumber numberWithUnsignedChar:v28[3]];
    v18 = sub_10000D7DC(@"a_driver_hal_queue_watermark", v7);
    [v10 setObject:v17 forKeyedSubscript:v18];

    v19 = [NSNumber numberWithUnsignedChar:v28[4]];
    v20 = sub_10000D7DC(@"a_driver_accel_too_old_count", v7);
    [v10 setObject:v19 forKeyedSubscript:v20];

    v21 = [NSNumber numberWithUnsignedChar:v28[5]];
    v22 = sub_10000D7DC(@"a_driver_accel_too_new_count", v7);
    [v10 setObject:v21 forKeyedSubscript:v22];

    v23 = [NSNumber numberWithUnsignedChar:v28[6]];
    v24 = sub_10000D7DC(@"a_driver_accel_interp_error_count", v7);
    [v10 setObject:v23 forKeyedSubscript:v24];

    v25 = [NSNumber numberWithUnsignedChar:v28[7]];
    v26 = sub_10000D7DC(@"a_driver_stats_reserved", v7);
    [v10 setObject:v25 forKeyedSubscript:v26];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_handlePalMetric:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 6)
  {
    v10 = objc_opt_new();
    [v6 getBytes:v24 length:6];
    v11 = [NSNumber numberWithUnsignedChar:v24[0]];
    v12 = sub_10000D7DC(@"a_pal_event_queue_overrun_count", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithUnsignedChar:v24[1]];
    v14 = sub_10000D7DC(@"a_pal_event_queue_watermark", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithUnsignedChar:v24[2]];
    v16 = sub_10000D7DC(@"a_pal_scm_i2_c_error_count", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSNumber numberWithUnsignedChar:v24[3]];
    v18 = sub_10000D7DC(@"a_pal_scm_error_count", v7);
    [v10 setObject:v17 forKeyedSubscript:v18];

    v19 = [NSNumber numberWithUnsignedChar:v24[4]];
    v20 = sub_10000D7DC(@"a_pal_scm_reset_count", v7);
    [v10 setObject:v19 forKeyedSubscript:v20];

    v21 = [NSNumber numberWithUnsignedChar:v24[5]];
    v22 = sub_10000D7DC(@"a_pal_stats_reserved", v7);
    [v10 setObject:v21 forKeyedSubscript:v22];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_handleSolisMetric:(id)a3 side:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8 >= 0x48)
  {
    v10 = objc_opt_new();
    [v6 getBytes:v82 length:72];
    v11 = [NSNumber numberWithUnsignedChar:v82[0]];
    v12 = sub_10000D7DC(@"s_event_queue_watermark", v7);
    [v10 setObject:v11 forKeyedSubscript:v12];

    v13 = [NSNumber numberWithUnsignedChar:v82[1]];
    v14 = sub_10000D7DC(@"s_watchdog_count", v7);
    [v10 setObject:v13 forKeyedSubscript:v14];

    v15 = [NSNumber numberWithUnsignedChar:v82[2]];
    v16 = sub_10000D7DC(@"s_scm_i2c_error_count", v7);
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSNumber numberWithUnsignedChar:v82[3]];
    v18 = sub_10000D7DC(@"s_scm_error_count", v7);
    [v10 setObject:v17 forKeyedSubscript:v18];

    v19 = [NSNumber numberWithUnsignedChar:v82[4]];
    v20 = sub_10000D7DC(@"s_scm_reset_count", v7);
    [v10 setObject:v19 forKeyedSubscript:v20];

    v21 = [NSNumber numberWithUnsignedChar:v82[5]];
    v22 = sub_10000D7DC(@"s_preproc_event_queue_watermark", v7);
    [v10 setObject:v21 forKeyedSubscript:v22];

    v23 = [NSNumber numberWithUnsignedChar:v82[6]];
    v24 = sub_10000D7DC(@"s_hal_queue_watermark", v7);
    [v10 setObject:v23 forKeyedSubscript:v24];

    v25 = [NSNumber numberWithUnsignedChar:v82[7]];
    v26 = sub_10000D7DC(@"s_accel_too_old_count", v7);
    [v10 setObject:v25 forKeyedSubscript:v26];

    v27 = [NSNumber numberWithUnsignedChar:v82[8]];
    v28 = sub_10000D7DC(@"s_accel_too_new_count", v7);
    [v10 setObject:v27 forKeyedSubscript:v28];

    v29 = [NSNumber numberWithUnsignedChar:v82[9]];
    v30 = sub_10000D7DC(@"s_accel_interp_error_count", v7);
    [v10 setObject:v29 forKeyedSubscript:v30];

    v31 = [NSNumber numberWithUnsignedInt:v83];
    v32 = sub_10000D7DC(@"s_PI_window", v7);
    [v10 setObject:v31 forKeyedSubscript:v32];

    v33 = [NSNumber numberWithUnsignedInt:v84];
    v34 = sub_10000D7DC(@"s_dc_mean_window", v7);
    [v10 setObject:v33 forKeyedSubscript:v34];

    v35 = [NSNumber numberWithUnsignedShort:v85];
    v36 = sub_10000D7DC(@"s_time_into_session", v7);
    [v10 setObject:v35 forKeyedSubscript:v36];

    v37 = [NSNumber numberWithUnsignedInt:v86];
    v38 = sub_10000D7DC(@"s_MAV_max_window", v7);
    [v10 setObject:v37 forKeyedSubscript:v38];

    v39 = [NSNumber numberWithUnsignedInt:v87];
    v40 = sub_10000D7DC(@"s_MAV_mean_window", v7);
    [v10 setObject:v39 forKeyedSubscript:v40];

    v41 = [NSNumber numberWithUnsignedChar:v88];
    v42 = sub_10000D7DC(@"s_led_current_window", v7);
    [v10 setObject:v41 forKeyedSubscript:v42];

    v43 = [NSNumber numberWithUnsignedChar:v89];
    v44 = sub_10000D7DC(@"s_tia_gain_window", v7);
    [v10 setObject:v43 forKeyedSubscript:v44];

    v45 = [NSNumber numberWithUnsignedInt:v90];
    v46 = sub_10000D7DC(@"s_accel_rms_session", v7);
    [v10 setObject:v45 forKeyedSubscript:v46];

    v47 = [NSNumber numberWithUnsignedInt:v91];
    v48 = sub_10000D7DC(@"s_dc_mean_session", v7);
    [v10 setObject:v47 forKeyedSubscript:v48];

    v49 = [NSNumber numberWithUnsignedInt:v92];
    v50 = sub_10000D7DC(@"s_dc_min_session", v7);
    [v10 setObject:v49 forKeyedSubscript:v50];

    v51 = [NSNumber numberWithUnsignedInt:v93];
    v52 = sub_10000D7DC(@"s_dc_max_session", v7);
    [v10 setObject:v51 forKeyedSubscript:v52];

    v53 = [NSNumber numberWithUnsignedInt:v94];
    v54 = sub_10000D7DC(@"s_ambient_mean_session", v7);
    [v10 setObject:v53 forKeyedSubscript:v54];

    v55 = [NSNumber numberWithUnsignedInt:v95];
    v56 = sub_10000D7DC(@"s_ambient_min_session", v7);
    [v10 setObject:v55 forKeyedSubscript:v56];

    v57 = [NSNumber numberWithUnsignedInt:v96];
    v58 = sub_10000D7DC(@"s_ambient_max_session", v7);
    [v10 setObject:v57 forKeyedSubscript:v58];

    v59 = [NSNumber numberWithUnsignedChar:v97];
    v60 = sub_10000D7DC(@"s_percentage_saturated_session", v7);
    [v10 setObject:v59 forKeyedSubscript:v60];

    v61 = [NSNumber numberWithUnsignedChar:v98];
    v62 = sub_10000D7DC(@"s_agc_led_current_starting", v7);
    [v10 setObject:v61 forKeyedSubscript:v62];

    v63 = [NSNumber numberWithUnsignedChar:v99];
    v64 = sub_10000D7DC(@"s_agc_tia_gain_starting", v7);
    [v10 setObject:v63 forKeyedSubscript:v64];

    v65 = [NSNumber numberWithUnsignedChar:v100];
    v66 = sub_10000D7DC(@"s_agc_led_current_most_frequent", v7);
    [v10 setObject:v65 forKeyedSubscript:v66];

    v67 = [NSNumber numberWithUnsignedChar:v101];
    v68 = sub_10000D7DC(@"s_agc_tia_gain_most_frequent", v7);
    [v10 setObject:v67 forKeyedSubscript:v68];

    v69 = [NSNumber numberWithUnsignedChar:v102];
    v70 = sub_10000D7DC(@"s_agc_led_current_second_most_frequent", v7);
    [v10 setObject:v69 forKeyedSubscript:v70];

    v71 = [NSNumber numberWithUnsignedChar:v103];
    v72 = sub_10000D7DC(@"s_agc_tia_gain_second_most_frequent", v7);
    [v10 setObject:v71 forKeyedSubscript:v72];

    v73 = [NSNumber numberWithUnsignedChar:v104];
    v74 = sub_10000D7DC(@"s_agc_led_current_adjustments", v7);
    [v10 setObject:v73 forKeyedSubscript:v74];

    v75 = [NSNumber numberWithUnsignedChar:v105];
    v76 = sub_10000D7DC(@"s_agc_tia_gain_adjustments", v7);
    [v10 setObject:v75 forKeyedSubscript:v76];

    v77 = [NSNumber numberWithUnsignedChar:v106];
    v78 = sub_10000D7DC(@"s_agc_fail_safe_triggered", v7);
    [v10 setObject:v77 forKeyedSubscript:v78];

    v79 = [NSNumber numberWithUnsignedInt:v107];
    v80 = sub_10000D7DC(@"s_reserved", v7);
    [v10 setObject:v79 forKeyedSubscript:v80];

    v9 = [(HRCAnalyticsReporter *)self _updateForIHA:v10 side:v7];
  }

  return v9;
}

- (id)_updateForIHA:(id)a3 side:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (![(HRCAnalyticsReporter *)self _improveHealthAndActivityAllowed])
  {
    v7 = &qword_100048860;
    if (v6)
    {
      v7 = &qword_100048868;
    }

    v8 = *v7;
    v22 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v21;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = v13;
          v15 = v13;
          if (v6)
          {
            v16 = [v13 substringToIndex:{objc_msgSend(v13, "length") - objc_msgSend(v6, "length")}];

            v15 = v16;
          }

          if ([v8 containsObject:{v15, v21}])
          {
            v17 = v15;
            v18 = @"Hidden";
            if (([qword_100048888 containsObject:v17] & 1) == 0)
            {
              if ([qword_100048880 containsObject:v17])
              {
                v18 = &off_100043288;
              }

              else
              {
                v18 = &off_100043258;
              }
            }

            v19 = v18;
            [v22 setObject:v19 forKeyedSubscript:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v9 addEntriesFromDictionary:v22];
  }

  return v21;
}

- (id)_initWithOutputTarget:(id)a3 dispatchQueue:(id)a4 budAnalyticsWaitTime:(duration<long)long
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = HRCAnalyticsReporter;
  v10 = [(HRCAnalyticsReporter *)&v15 init];
  outputTarget = v10->_outputTarget;
  v10->_outputTarget = v8;
  v12 = v8;

  queue = v10->_queue;
  v10->_queue = v9;

  v10->_budAnalyticsWaitTime = a5;
  return v10;
}

- (HRCAnalyticsReporter)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("com.apple.heartratecoordinator.analyticsreporter", v4);
  v6 = objc_opt_new();
  v7 = [(HRCAnalyticsReporter *)self _initWithOutputTarget:v6 dispatchQueue:v5 budAnalyticsWaitTime:10];

  return v7;
}

- (void)finalizeComputation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AC34;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setImproveHealthAndActivityAllowed:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001ACB4;
  v4[3] = &unk_100040868;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (BOOL)improveHealthAndActivityAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AD70;
  v5[3] = &unk_1000407F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_finalizeComputation
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_analyticsInFlight)
  {
    v3 = sub_10000132C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Analytics currently in flight. Not sending again", buf, 2u);
    }

    pendingHostAnalytics = self->_pendingHostAnalytics;
    self->_pendingHostAnalytics = 0;

    pendingAlgsAnalytics = self->_pendingAlgsAnalytics;
    self->_pendingAlgsAnalytics = 0;
  }

  else
  {
    self->_analyticsInFlight = 1;
    v6 = sub_10000132C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Workout ended. Holding transaction while preparing to send analytics", buf, 2u);
    }

    v7 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v7;

    rep = self->_budAnalyticsWaitTime.__rep_;
    v10 = self->_pendingHostAnalytics;
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [(HRCAnalyticsReporter *)self defaultHostAnalytics];
    }

    v12 = v11;
    v13 = self->_pendingAlgsAnalytics;
    if (v13)
    {
      goto LABEL_14;
    }

    v14 = sub_10000132C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10001B39C(v14);
    }

    v13 = self->_pendingAlgsAnalytics;
    if (v13)
    {
LABEL_14:
      v15 = v13;
    }

    else
    {
      v15 = [(HRCAnalyticsReporter *)self defaultAlgsAnalytics];
    }

    v16 = v15;
    v17 = dispatch_time(0, 1000000000 * rep);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B02C;
    block[3] = &unk_100040F70;
    block[4] = self;
    v23 = v12;
    v24 = v16;
    v19 = v16;
    pendingAlgsAnalytics = v12;
    dispatch_after(v17, queue, block);
    v20 = self->_pendingHostAnalytics;
    self->_pendingHostAnalytics = 0;

    v21 = self->_pendingAlgsAnalytics;
    self->_pendingAlgsAnalytics = 0;
  }
}

- (void)_sendHostAnalytics:(id)a3 withAlgAnalytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  pendingBudAnalytics = self->_pendingBudAnalytics;
  if (pendingBudAnalytics)
  {
    v9 = [(NSDictionary *)pendingBudAnalytics mutableCopy];
    v10 = self->_pendingBudAnalytics;
    self->_pendingBudAnalytics = 0;

    v11 = v9;
  }

  else
  {
    v11 = [(HRCAnalyticsReporter *)self defaultBudAnalytics];
  }

  [v11 addEntriesFromDictionary:v6];
  [v11 addEntriesFromDictionary:v7];
  [(HRCAnalyticsReporterOutputTarget *)self->_outputTarget reportEventWithName:@"com.apple.hrc.streaming_session.stats" content:v11];
  self->_analyticsInFlight = 0;
  transaction = self->_transaction;
  self->_transaction = 0;

  v13 = sub_10000132C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sent analytics and released transaction", v14, 2u);
  }
}

- (id)defaultHostAnalytics
{
  v2 = objc_opt_new();

  return v2;
}

- (optional<std::chrono::time_point<std::chrono::steady_clock,)aacpStreamingStartTime
{
  v2 = *&self->_aacpStreamingStartTime.__engaged_;
  rep = self->_aacpStreamingStartTime.var0.__val_.__d_.__rep_;
  result.__engaged_ = v2;
  result.var0 = rep;
  return result;
}

- (optional<std::chrono::time_point<std::chrono::steady_clock,)bleStreamingStartTime
{
  v2 = *&self->_bleStreamingStartTime.__engaged_;
  rep = self->_bleStreamingStartTime.var0.__val_.__d_.__rep_;
  result.__engaged_ = v2;
  result.var0 = rep;
  return result;
}

- (optional<std::chrono::time_point<std::chrono::steady_clock,)firstPublishedHeartRateTime
{
  v2 = *&self->_firstPublishedHeartRateTime.__engaged_;
  rep = self->_firstPublishedHeartRateTime.var0.__val_.__d_.__rep_;
  result.__engaged_ = v2;
  result.var0 = rep;
  return result;
}

- (optional<HKWorkoutActivityType>)activityType
{
  v2 = *&self->_activityType.__engaged_;
  val = self->_activityType.var0.__val_;
  result.__engaged_ = v2;
  result.var0 = val;
  return result;
}

- (optional<HKWorkoutSessionLocationType>)locationType
{
  v2 = *&self->_locationType.__engaged_;
  val = self->_locationType.var0.__val_;
  result.__engaged_ = v2;
  result.var0 = val;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 120) = 0;
  *(self + 128) = 0;
  *(self + 136) = 0;
  *(self + 144) = 0;
  *(self + 152) = 0;
  *(self + 160) = 0;
  *(self + 168) = 0;
  *(self + 176) = 0;
  *(self + 184) = 0;
  *(self + 192) = 0;
  return self;
}

@end