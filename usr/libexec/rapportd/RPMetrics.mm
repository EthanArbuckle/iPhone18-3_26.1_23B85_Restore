@interface RPMetrics
+ (id)sharedMetrics;
- (RPMetrics)init;
- (void)_activate;
- (void)_reportMetrics;
- (void)activate;
- (void)logAWDLBrowseClient:(id)client;
- (void)logNeedsAWDLAdvertisementClient:(id)client actionType:(unsigned __int8)type bluetoothType:(unsigned __int8)bluetoothType;
- (void)logReceivedMessageType:(int)type identifier:(id)identifier options:(id)options appID:(id)d ctx:(id *)ctx;
@end

@implementation RPMetrics

+ (id)sharedMetrics
{
  if (qword_1001D6308 != -1)
  {
    sub_10011DDBC();
  }

  v3 = qword_1001D6300;

  return v3;
}

- (RPMetrics)init
{
  v21.receiver = self;
  v21.super_class = RPMetrics;
  v2 = [(RPMetrics *)&v21 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = objc_alloc_init(NSMutableDictionary);
    awdlBrowseMetrics = v3->_awdlBrowseMetrics;
    v3->_awdlBrowseMetrics = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    needsAWDLAdvertisementMetrics = v3->_needsAWDLAdvertisementMetrics;
    v3->_needsAWDLAdvertisementMetrics = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("RPMetrics", v9);
    reportQueue = v3->_reportQueue;
    v3->_reportQueue = v10;

    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_reportQueue);
    reportTimer = v3->_reportTimer;
    v3->_reportTimer = v12;

    v14 = v3->_reportTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000793AC;
    handler[3] = &unk_1001AA970;
    v15 = v3;
    v20 = v15;
    dispatch_source_set_event_handler(v14, handler);
    v16 = v3->_reportTimer;
    CUDispatchTimerSet();
    dispatch_resume(v3->_reportTimer);
    v17 = v15;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079430;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D4158 <= 30 && (dword_1001D4158 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DDD0();
  }
}

- (void)logAWDLBrowseClient:(id)client
{
  clientCopy = client;
  reportQueue = self->_reportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079578;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(reportQueue, v7);
}

- (void)logNeedsAWDLAdvertisementClient:(id)client actionType:(unsigned __int8)type bluetoothType:(unsigned __int8)bluetoothType
{
  bluetoothTypeCopy = bluetoothType;
  typeCopy = type;
  clientCopy = client;
  v9 = clientCopy;
  if (clientCopy && typeCopy && bluetoothTypeCopy)
  {
    reportQueue = self->_reportQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000796EC;
    block[3] = &unk_1001AD6E8;
    v14 = typeCopy;
    v15 = bluetoothTypeCopy;
    v12 = clientCopy;
    selfCopy = self;
    dispatch_async(reportQueue, block);
  }
}

- (void)logReceivedMessageType:(int)type identifier:(id)identifier options:(id)options appID:(id)d ctx:(id *)ctx
{
  identifierCopy = identifier;
  optionsCopy = options;
  dCopy = d;
  var1 = ctx->var1;
  v16 = CFDictionaryGetInt64() + var1;
  ctx->var1 = v16;
  v17 = ctx->var2 + 1;
  ctx->var2 = v17;
  Current = CFAbsoluteTimeGetCurrent();
  var0 = ctx->var0;
  if (Current - ctx->var0 >= 60.0)
  {
    ctx->var0 = Current;
    ctx->var1 = 0;
    ctx->var2 = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100079968;
    block[3] = &unk_1001AD710;
    block[4] = self;
    typeCopy = type;
    v22 = identifierCopy;
    v23 = optionsCopy;
    v24 = dCopy;
    v25 = var0;
    v26 = Current;
    v27 = v16;
    v28 = v17;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_reportMetrics
{
  if (self->_sendReport)
  {
    selfCopy = self;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [(NSMutableDictionary *)self->_awdlBrowseMetrics allKeys];
    v4 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          v40[0] = @"browseCount";
          v9 = [(NSMutableDictionary *)selfCopy->_awdlBrowseMetrics objectForKey:v8];
          v40[1] = @"client";
          v41[0] = v9;
          v41[1] = v8;
          v10 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

          CUMetricsLog();
        }

        v5 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v5);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(NSMutableDictionary *)selfCopy->_needsAWDLAdvertisementMetrics allKeys];
    v28 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v28)
    {
      v27 = *v30;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * j);
          v13 = [v12 componentsSeparatedByString:{@", "}];
          v37[0] = @"advCount";
          v14 = [(NSMutableDictionary *)selfCopy->_needsAWDLAdvertisementMetrics objectForKey:v12];
          v38[0] = v14;
          v37[1] = @"actionType";
          v15 = selfCopy;
          v16 = [v13 objectAtIndexedSubscript:0];
          v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue]);
          v38[1] = v17;
          v37[2] = @"bluetoothType";
          v18 = [v13 objectAtIndexedSubscript:1];
          v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 intValue]);
          v38[2] = v19;
          v37[3] = @"client";
          v20 = [v13 objectAtIndexedSubscript:2];
          v38[3] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];

          selfCopy = v15;
          CUMetricsLog();
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v28);
    }

    v22 = +[NSMutableDictionary dictionary];
    awdlBrowseMetrics = selfCopy->_awdlBrowseMetrics;
    selfCopy->_awdlBrowseMetrics = v22;

    v24 = +[NSMutableDictionary dictionary];
    needsAWDLAdvertisementMetrics = selfCopy->_needsAWDLAdvertisementMetrics;
    selfCopy->_needsAWDLAdvertisementMetrics = v24;

    selfCopy->_sendReport = 0;
  }
}

@end