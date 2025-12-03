@interface CBMetricsDaemon
+ (id)sharedCBMetricsDaemon;
- (CBMetricsDaemon)init;
- (id)description;
- (void)_reportAggressiveScanMetricEvents;
- (void)_reportAuthTagType:(unsigned __int8)type authTagStatus:(unsigned __int8)status integrityTagStatus:(unsigned __int8)tagStatus resolutionWindow:(char)window;
- (void)_reportEvents;
- (void)_scheduleReport;
- (void)_setupAggressiveScanMetricExportTimer;
- (void)_setupMetricExportTimer;
- (void)_startIfNeeded;
- (void)_whbMetricExportTimerFired;
- (void)reportAggressiveScan:(id)scan action:(id)action;
- (void)reportAuthTagType:(unsigned __int8)type authTagStatus:(unsigned __int8)status integrityTagStatus:(unsigned __int8)tagStatus resolutionWindow:(char)window;
- (void)reportCBDiscovery:(id)discovery daemonCnx:(id)cnx action:(id)action;
- (void)reportRSSIMetric:(id)metric;
- (void)reportWhbMetric:(id)metric;
- (void)reportxpcCBAdvertiserUpdate:(id)update;
@end

@implementation CBMetricsDaemon

+ (id)sharedCBMetricsDaemon
{
  if (qword_100B552E8 != -1)
  {
    sub_100806964();
  }

  v3 = qword_100B552E0;

  return v3;
}

- (void)_startIfNeeded
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_startCalled)
  {
    self->_startCalled = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113C60;
    block[3] = &unk_100ADF820;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_setupAggressiveScanMetricExportTimer
{
  v3 = self->_aggrScanMetricExportTimer;
  if (!v3)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    aggrScanMetricExportTimer = self->_aggrScanMetricExportTimer;
    self->_aggrScanMetricExportTimer = v4;

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100114D58;
    v6[3] = &unk_100AE0B60;
    v3 = v4;
    v7 = v3;
    selfCopy = self;
    dispatch_source_set_event_handler(v3, v6);
    CUDispatchTimerSet();
    dispatch_activate(v3);
    if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (CBMetricsDaemon)init
{
  v10.receiver = self;
  v10.super_class = CBMetricsDaemon;
  v2 = [(CBMetricsDaemon *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("CBMetrics", v5);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v6;

    v8 = v3;
  }

  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  v5 = [objc_opt_class() description];
  v3 = NSPrintF_safe();

  return v3;
}

- (void)_reportEvents
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  self->_scheduledReport = 0;
  v3 = self->_discoveryEventsArray;
  discoveryEventsArray = self->_discoveryEventsArray;
  self->_discoveryEventsArray = 0;

  discoveryEventsDroppedReported = self->_discoveryEventsDroppedReported;
  discoveryEventsDroppedTotal = self->_discoveryEventsDroppedTotal;
  self->_discoveryEventsDroppedReported = discoveryEventsDroppedTotal;
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(NSMutableArray *)v3 count];
  if (&_PLLogRegisteredEvent && v5)
  {
    v27 = objc_alloc_init(NSMutableArray);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v3;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v6)
    {
      v26 = *v30;
      do
      {
        v28 = v6;
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v35[0] = @"actn";
          action = [v8 action];
          v10 = action;
          if (action)
          {
            v11 = action;
          }

          else
          {
            v11 = &stru_100B0F9E0;
          }

          v36[0] = v11;
          v35[1] = @"apID";
          appID = [v8 appID];
          v13 = appID;
          if (appID)
          {
            v14 = appID;
          }

          else
          {
            v14 = &stru_100B0F9E0;
          }

          v36[1] = v14;
          v35[2] = @"cid";
          v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 clientID]);
          v36[2] = v15;
          v35[3] = @"dsFl";
          v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 discoveryFlags]);
          v36[3] = v16;
          v35[4] = @"pid";
          v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
          v36[4] = v17;
          v35[5] = @"scnR";
          v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 scanRate]);
          v36[5] = v18;
          v35[6] = @"timS";
          [v8 timestamp];
          v19 = [NSNumber numberWithDouble:?];
          v36[6] = v19;
          v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];

          [v27 addObject:v20];
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v6);
    }

    v33[0] = @"dscE";
    v33[1] = @"drpE";
    v34[0] = v27;
    discoveryEventsDroppedReported = [NSNumber numberWithUnsignedLongLong:discoveryEventsDroppedTotal - discoveryEventsDroppedReported];
    v34[1] = discoveryEventsDroppedReported;
    v22 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

    if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    PLLogRegisteredEvent();
  }
}

- (void)_scheduleReport
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_scheduledReport)
  {
    self->_scheduledReport = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113C58;
    block[3] = &unk_100ADF820;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)reportAuthTagType:(unsigned __int8)type authTagStatus:(unsigned __int8)status integrityTagStatus:(unsigned __int8)tagStatus resolutionWindow:(char)window
{
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113F50;
  v7[3] = &unk_100ADF920;
  v7[4] = self;
  typeCopy = type;
  statusCopy = status;
  tagStatusCopy = tagStatus;
  windowCopy = window;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportAuthTagType:(unsigned __int8)type authTagStatus:(unsigned __int8)status integrityTagStatus:(unsigned __int8)tagStatus resolutionWindow:(char)window
{
  windowCopy = window;
  tagStatusCopy = tagStatus;
  statusCopy = status;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  Current = CFAbsoluteTimeGetCurrent();
  v20 = -1.0;
  v19 = -1.0;
  v18 = -1;
  if (([gCBDaemonServer prefSystemReferenceTimeDisabled] & 1) != 0 || !TMGetReferenceTime())
  {
    v10 = -1.0;
    if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      sub_100806978();
    }
  }

  else
  {
    v11 = v20;
    v10 = v20 - Current;
    if (dword_100B50C70 > 20)
    {
      goto LABEL_11;
    }

    if (dword_100B50C70 != -1)
    {
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      v11 = v20;
LABEL_9:
      v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:v11];
      v13 = [v12 description];
      [v13 UTF8String];
      LogPrintF_safe();
    }
  }

LABEL_11:
  v17 = 0;
  v16 = 0;
  v15[0] = v10;
  v15[1] = v19;
  v15[2] = v18;
  if (tagStatusCopy == 1)
  {
    WORD1(v16) = 1;
    switch(windowCopy)
    {
      case -1:
        WORD1(v17) = 1;
        break;
      case 1:
        WORD2(v17) = 1;
        break;
      case 0:
        LOWORD(v17) = 1;
        break;
    }
  }

  else if (statusCopy == 5)
  {
    HIWORD(v16) = 1;
  }

  else if (statusCopy == 1)
  {
    WORD2(v16) = 1;
  }

  LOWORD(v16) = 1;
  v14 = sub_10000F034();
  (*(*v14 + 32))(v14, v15);
}

- (void)reportCBDiscovery:(id)discovery daemonCnx:(id)cnx action:(id)action
{
  discoveryCopy = discovery;
  cnxCopy = cnx;
  actionCopy = action;
  v11 = objc_alloc_init(CBMetricsDiscoveryEvent);
  [(CBMetricsDiscoveryEvent *)v11 setAction:actionCopy];
  appID = [cnxCopy appID];
  [(CBMetricsDiscoveryEvent *)v11 setAppID:appID];

  -[CBMetricsDiscoveryEvent setClientID:](v11, "setClientID:", [discoveryCopy clientID]);
  -[CBMetricsDiscoveryEvent setDiscoveryFlags:](v11, "setDiscoveryFlags:", [discoveryCopy discoveryFlags]);
  -[CBMetricsDiscoveryEvent setPid:](v11, "setPid:", [cnxCopy pid]);
  -[CBMetricsDiscoveryEvent setScanRate:](v11, "setScanRate:", [discoveryCopy bleScanRate]);
  [(CBMetricsDiscoveryEvent *)v11 setTimestamp:CFAbsoluteTimeGetCurrent()];
  os_unfair_lock_lock(&self->_lock);
  ++self->_discoveryEventsTotal;
  v13 = [(NSMutableArray *)self->_discoveryEventsArray count];
  discoveryEventsDroppedTotal = self->_discoveryEventsDroppedTotal;
  if (v13 < 0x96)
  {
    discoveryEventsArray = self->_discoveryEventsArray;
    if (!discoveryEventsArray)
    {
      v17 = objc_alloc_init(NSMutableArray);
      v18 = self->_discoveryEventsArray;
      self->_discoveryEventsArray = v17;

      discoveryEventsArray = self->_discoveryEventsArray;
    }

    [(NSMutableArray *)discoveryEventsArray addObject:v11];
    if (v13 < 0x64)
    {
      [(CBMetricsDaemon *)self _startIfNeeded];
    }

    else
    {
      [(CBMetricsDaemon *)self _scheduleReport];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      appID2 = [cnxCopy appID];
      v25 = v13;
      v26 = discoveryEventsDroppedTotal;
      v23 = [cnxCopy pid];
      clientID = [discoveryCopy clientID];
      v21 = appID2;
      v22 = actionCopy;
      LogPrintF_safe();
    }

    if ([actionCopy isEqual:{@"strt", v21, v22, v23, clientID, v25, v26}])
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011454C;
      block[3] = &unk_100ADF820;
      block[4] = v11;
      dispatch_async(dispatchQueue, block);
    }
  }

  else
  {
    self->_discoveryEventsDroppedTotal = discoveryEventsDroppedTotal + 1;
    os_unfair_lock_unlock(&self->_lock);
    if (__ROR8__(0x8F5C28F5C28F5C29 * discoveryEventsDroppedTotal, 1) <= 0x51EB851EB851EB8uLL && dword_100B50C70 <= 30 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      appID3 = [(CBMetricsDiscoveryEvent *)v11 appID];
      [(CBMetricsDiscoveryEvent *)v11 pid];
      [(CBMetricsDiscoveryEvent *)v11 clientID];
      LogPrintF_safe();
    }
  }
}

- (void)reportAggressiveScan:(id)scan action:(id)action
{
  scanCopy = scan;
  actionCopy = action;
  appID = [scanCopy appID];
  if (appID)
  {
    appID2 = [scanCopy appID];
  }

  else
  {
    appID2 = @"unknown";
  }

  v10 = [scanCopy description];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000421E4;
  v26 = sub_100042584;
  v27 = objc_alloc_init(CBMetricsAggressiveScanEvent);
  v11 = [actionCopy isEqual:@"agsN"];
  [v23[5] setScanScreenOnCount:v11];
  v12 = [actionCopy isEqual:@"agsF"];
  [v23[5] setScanScreenOffCount:v12];
  bleScanRate = [scanCopy bleScanRate];
  [v23[5] setScanRateScreenOn:bleScanRate];
  bleScanRateScreenOff = [scanCopy bleScanRateScreenOff];
  [v23[5] setScanRateScreenOff:bleScanRateScreenOff];
  discoveryFlags = [scanCopy discoveryFlags];
  [v23[5] setDiscoveryFlags:discoveryFlags];
  [v23[5] setDiscoveryTypes:0];
  [v23[5] discoveryTypesPtr];
  [scanCopy discoveryTypesInternalPtr];
  CBDiscoveryTypesAddTypes();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001149E4;
  block[3] = &unk_100AE0B38;
  block[4] = self;
  block[5] = appID2;
  v20 = v10;
  v21 = &v22;
  v19 = actionCopy;
  v17 = actionCopy;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(&v22, 8);
}

- (void)_reportAggressiveScanMetricEvents
{
  if (&_PLLogRegisteredEvent && self->_aggrScanMetricDict)
  {
    v3 = objc_alloc_init(NSMutableArray);
    aggrScanMetricDict = self->_aggrScanMetricDict;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100114F80;
    v7[3] = &unk_100AE0B88;
    v7[4] = v3;
    [(NSMutableDictionary *)aggrScanMetricDict enumerateKeysAndObjectsUsingBlock:v7];
    v8 = @"agsE";
    v9 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      [v3 count];
      LogPrintF_safe();
    }

    PLLogRegisteredEvent();
  }

  v6 = self->_aggrScanMetricDict;
  self->_aggrScanMetricDict = 0;
}

- (void)reportxpcCBAdvertiserUpdate:(id)update
{
  updateCopy = update;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115394;
  block[3] = &unk_100ADF820;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)reportRSSIMetric:(id)metric
{
  metricCopy = metric;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001154C0;
  v7[3] = &unk_100AE0B60;
  v8 = metricCopy;
  selfCopy = self;
  v6 = metricCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_setupMetricExportTimer
{
  v3 = self->_whbMetricExportTimer;
  if (!v3)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    whbMetricExportTimer = self->_whbMetricExportTimer;
    self->_whbMetricExportTimer = v4;

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100115678;
    v6[3] = &unk_100AE0B60;
    v3 = v4;
    v7 = v3;
    selfCopy = self;
    dispatch_source_set_event_handler(v3, v6);
    CUDispatchTimerSet();
    dispatch_activate(self->_whbMetricExportTimer);
    if (dword_100B50C70 <= 30 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_whbMetricExportTimerFired
{
  if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
  {
    sub_100806A38();
  }

  numRssiBucketChanges = self->_numRssiBucketChanges;
  v5 = self->_numRssiNoBucketChanges + numRssiBucketChanges;
  if (v5)
  {
    *&v2 = (numRssiBucketChanges / v5) * 100.0;
  }

  else
  {
    v2 = 0.0;
  }

  v12[0] = @"CBWHBMetricsKeyEventType";
  v12[1] = @"CBWHBMetricsKeyRSSIChangePercent";
  v13[0] = @"RSSILevelEvent";
  v6 = [NSNumber numberWithFloat:v2];
  v13[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  v8 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v8 reportWhbMetric:v7];

  self->_numRssiNoBucketChanges = 0;
  self->_numRssiBucketChanges = 0;
  whbMetricExportTimer = self->_whbMetricExportTimer;
  if (whbMetricExportTimer)
  {
    v10 = whbMetricExportTimer;
    dispatch_source_cancel(v10);
    v11 = self->_whbMetricExportTimer;
    self->_whbMetricExportTimer = 0;
  }
}

- (void)reportWhbMetric:(id)metric
{
  metricCopy = metric;
  if (dword_100B50C70 <= 20 && (dword_100B50C70 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSObjectOneLine();
    LogPrintF_safe();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115954;
  block[3] = &unk_100ADF820;
  v9 = metricCopy;
  v6 = metricCopy;
  dispatch_async(dispatchQueue, block);
}

@end