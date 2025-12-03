@interface _DASBatteryTemperatureAnalyzer
- (NSMutableDictionary)analyticsStatus;
- (_DASBatteryTemperatureAnalyzer)initWithQueueLimit:(unint64_t)limit reader:(id)reader monitoringInterval:(unint64_t)interval analyzeToMonitorRatio:(unint64_t)ratio;
- (double)getReferenceTemperatureForContext:(id)context reader:(id)reader;
- (void)analyzeValues:(id)values currentContext:(id)context;
- (void)recordValue;
- (void)start;
- (void)stop;
@end

@implementation _DASBatteryTemperatureAnalyzer

- (_DASBatteryTemperatureAnalyzer)initWithQueueLimit:(unint64_t)limit reader:(id)reader monitoringInterval:(unint64_t)interval analyzeToMonitorRatio:(unint64_t)ratio
{
  readerCopy = reader;
  v26.receiver = self;
  v26.super_class = _DASBatteryTemperatureAnalyzer;
  v12 = [(_DASBatteryTemperatureAnalyzer *)&v26 init];
  if (v12)
  {
    v13 = [[_DASSignalQueue alloc] initWithCount:limit];
    batterytemperatureQueue = v12->_batterytemperatureQueue;
    v12->_batterytemperatureQueue = v13;

    v15 = +[_CDClientContext userContext];
    context = v12->_context;
    v12->_context = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.das.clas.batteryTemperatureQueue", v17);
    executionQueue = v12->_executionQueue;
    v12->_executionQueue = v18;

    objc_storeStrong(&v12->_reader, reader);
    v12->_monitorInterval = interval;
    v12->_analyzeToMonitorRatio = ratio;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000288D8;
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
  block[2] = sub_1000289F0;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)stop
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028A94;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)recordValue
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028B1C;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (double)getReferenceTemperatureForContext:(id)context reader:(id)reader
{
  contextCopy = context;
  v5 = +[_CDContextQueries keyPathForBatteryLevel];
  v6 = [contextCopy objectForKeyedSubscript:v5];

  integerValue = [v6 integerValue];
  if (integerValue >= 60)
  {
    return (8.14409 / (pow(integerValue / 77.02316, 45.64696) + 1.0) + 34.17899 + -1.0) * 100.0;
  }

  else
  {
    return 10000.0;
  }
}

- (NSMutableDictionary)analyticsStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100028D40;
  v10 = sub_100028D50;
  v11 = 0;
  executionQueue = self->_executionQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028D58;
  v5[3] = &unk_1001B5708;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(executionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)analyzeValues:(id)values currentContext:(id)context
{
  valuesCopy = values;
  contextCopy = context;
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028E68;
  block[3] = &unk_1001B56B8;
  v12 = valuesCopy;
  selfCopy = self;
  v14 = contextCopy;
  v9 = contextCopy;
  v10 = valuesCopy;
  dispatch_sync(executionQueue, block);
}

@end