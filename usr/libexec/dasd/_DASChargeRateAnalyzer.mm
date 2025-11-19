@interface _DASChargeRateAnalyzer
- (NSMutableDictionary)analyticsStatus;
- (_DASChargeRateAnalyzer)initWithQueueLimit:(unint64_t)a3 reader:(id)a4 monitoringInterval:(unint64_t)a5 analyzeToMonitorRatio:(unint64_t)a6;
- (double)getReferenceChargeRateForContext:(id)a3 reader:(id)a4;
- (void)analyzeValues:(id)a3 currentContext:(id)a4;
- (void)recordValue;
- (void)start;
- (void)stop;
@end

@implementation _DASChargeRateAnalyzer

- (_DASChargeRateAnalyzer)initWithQueueLimit:(unint64_t)a3 reader:(id)a4 monitoringInterval:(unint64_t)a5 analyzeToMonitorRatio:(unint64_t)a6
{
  v11 = a4;
  v26.receiver = self;
  v26.super_class = _DASChargeRateAnalyzer;
  v12 = [(_DASChargeRateAnalyzer *)&v26 init];
  if (v12)
  {
    v13 = [[_DASSignalQueue alloc] initWithCount:a3];
    chargeRateQueue = v12->_chargeRateQueue;
    v12->_chargeRateQueue = v13;

    objc_storeStrong(&v12->_analyzerName, off_100209C88);
    v15 = +[_CDClientContext userContext];
    context = v12->_context;
    v12->_context = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.das.clas.chargeRateQueue", v17);
    executionQueue = v12->_executionQueue;
    v12->_executionQueue = v18;

    objc_storeStrong(&v12->_reader, a4);
    v12->_monitorInterval = a5;
    v12->_analyzeToMonitorRatio = a6;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100029C00;
    v24[3] = &unk_1001B5668;
    v20 = v12;
    v25 = v20;
    v21 = [_DASTimer timerWithCallback:v24];
    monitoringTimer = v20->_monitoringTimer;
    v20->_monitoringTimer = v21;
  }

  return v12;
}

- (void)start
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029D18;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)stop
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029DBC;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)recordValue
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029E44;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (double)getReferenceChargeRateForContext:(id)a3 reader:(id)a4
{
  v4 = a3;
  v5 = +[_CDContextQueries keyPathForBatteryLevel];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  v8 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v9 = [v4 objectForKeyedSubscript:v8];

  if ([_DASRequiresPluggedInPolicy isWirelessCharger:v9])
  {
    v10 = 0.75;
    if (v7 >= 50)
    {
      v10 = 0.375;
      if (v7 >= 0x3C)
      {
        if (v7 >= 0x50)
        {
          if (v7 < 0x5A)
          {
            v10 = 0.15;
            goto LABEL_18;
          }

          v11 = v7 >= 0x5F;
          v12 = 0.1125;
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    if (v7 < 50)
    {
      v10 = 0.9;
      goto LABEL_18;
    }

    v10 = 0.75;
    if (v7 >= 0x3C)
    {
      v10 = 0.375;
      if (v7 >= 0x50)
      {
        if (v7 >= 0x5A)
        {
          v11 = v7 >= 0x5F;
          v12 = 0.15;
LABEL_15:
          if (v11)
          {
            v10 = 0.0;
          }

          else
          {
            v10 = v12;
          }

          goto LABEL_18;
        }

LABEL_12:
        v10 = 0.225;
      }
    }
  }

LABEL_18:

  return v10;
}

- (NSMutableDictionary)analyticsStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10002A0EC;
  v10 = sub_10002A0FC;
  v11 = 0;
  executionQueue = self->_executionQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A104;
  v5[3] = &unk_1001B5708;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(executionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)analyzeValues:(id)a3 currentContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A214;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(executionQueue, block);
}

@end