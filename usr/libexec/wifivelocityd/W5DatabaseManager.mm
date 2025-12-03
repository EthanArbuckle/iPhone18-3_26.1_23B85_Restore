@interface W5DatabaseManager
+ (id)sharedObject;
- (W5DatabaseManager)init;
- (id)_getWADeviceAnalyticsClient;
- (id)fetchLastHourFaults;
- (id)fetchLastHourLinkTests;
- (id)fetchLastHourRecoveries;
- (id)performFetch:(id)fetch;
- (void)dealloc;
- (void)performFetchAndReply:(id)reply reply:(id)a4;
- (void)remoteStoreUpdate:(id)update;
- (void)setUpdatedFaultsCallback:(id)callback;
- (void)setUpdatedLinkTestsCallback:(id)callback;
- (void)setUpdatedRecoveriesCallback:(id)callback;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5DatabaseManager

+ (id)sharedObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008376C;
  block[3] = &unk_1000E13E8;
  block[4] = self;
  if (qword_100106C78 != -1)
  {
    dispatch_once(&qword_100106C78, block);
  }

  v2 = qword_100106C70;

  return v2;
}

- (W5DatabaseManager)init
{
  v12.receiver = self;
  v12.super_class = W5DatabaseManager;
  v2 = [(W5DatabaseManager *)&v12 init];
  if (v2 && (v3 = dispatch_queue_create("com.apple.wifivelocity.dbquery", 0), queue = v2->_queue, v2->_queue = v3, queue, v2->_queue))
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"Fault"];
    fetchLastHourFaultsDict = v2->_fetchLastHourFaultsDict;
    v2->_fetchLastHourFaultsDict = v5;

    [(NSFetchRequest *)v2->_fetchLastHourFaultsDict setResultType:2];
    v7 = [NSFetchRequest fetchRequestWithEntityName:@"LinkTest"];
    fetchLastHourLinkTestsDict = v2->_fetchLastHourLinkTestsDict;
    v2->_fetchLastHourLinkTestsDict = v7;

    [(NSFetchRequest *)v2->_fetchLastHourLinkTestsDict setResultType:2];
    v9 = [NSFetchRequest fetchRequestWithEntityName:@"Recovery"];
    fetchLastHourRecoveriesDict = v2->_fetchLastHourRecoveriesDict;
    v2->_fetchLastHourRecoveriesDict = v9;

    [(NSFetchRequest *)v2->_fetchLastHourRecoveriesDict setResultType:2];
  }

  else
  {

    return 0;
  }

  return v2;
}

- (id)_getWADeviceAnalyticsClient
{
  if (!self->_deviceAnalyticsClient && sub_100083904())
  {
    sharedDeviceAnalyticsClient = [sub_100083904() sharedDeviceAnalyticsClient];
    deviceAnalyticsClient = self->_deviceAnalyticsClient;
    self->_deviceAnalyticsClient = sharedDeviceAnalyticsClient;
  }

  v5 = self->_deviceAnalyticsClient;

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(WADeviceAnalyticsClient *)self->_deviceAnalyticsClient managedObjectContextResetAndRelease:1];
  deviceAnalyticsClient = self->_deviceAnalyticsClient;
  self->_deviceAnalyticsClient = 0;

  v5.receiver = self;
  v5.super_class = W5DatabaseManager;
  [(W5DatabaseManager *)&v5 dealloc];
}

- (void)remoteStoreUpdate:(id)update
{
  updateCopy = update;
  NSLog(@"Got NSNotification %@", updateCopy);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100083D80;
  v33 = sub_100083D90;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100083D80;
  v27 = sub_100083D90;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100083D80;
  v21 = sub_100083D90;
  v22 = 0;
  fetchLastHourFaults = [(W5DatabaseManager *)self fetchLastHourFaults];
  v6 = v30[5];
  v30[5] = fetchLastHourFaults;

  fetchLastHourLinkTests = [(W5DatabaseManager *)self fetchLastHourLinkTests];
  v8 = v24[5];
  v24[5] = fetchLastHourLinkTests;

  fetchLastHourRecoveries = [(W5DatabaseManager *)self fetchLastHourRecoveries];
  v10 = v18[5];
  v18[5] = fetchLastHourRecoveries;

  [(WADeviceAnalyticsClient *)self->_deviceAnalyticsClient managedObjectContextResetAndRelease:1];
  if (v30[5])
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083D98;
    block[3] = &unk_1000E1808;
    block[4] = self;
    block[5] = &v29;
    dispatch_async(v11, block);
  }

  if (v24[5])
  {
    v12 = dispatch_get_global_queue(0, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100083E98;
    v15[3] = &unk_1000E1808;
    v15[4] = self;
    v15[5] = &v23;
    dispatch_async(v12, v15);
  }

  if (v18[5])
  {
    v13 = dispatch_get_global_queue(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100083F98;
    v14[3] = &unk_1000E1808;
    v14[4] = self;
    v14[5] = &v17;
    dispatch_async(v13, v14);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

- (id)performFetch:(id)fetch
{
  fetchCopy = fetch;
  _getWADeviceAnalyticsClient = [(W5DatabaseManager *)self _getWADeviceAnalyticsClient];
  v11 = 0;
  v6 = [_getWADeviceAnalyticsClient performFetch:fetchCopy error:&v11];
  v7 = v11;

  if (v7)
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [fetchCopy description];
      v12 = 136315650;
      v13 = "[W5DatabaseManager performFetch:]";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v7;
      _os_log_send_and_compose_impl();
    }
  }

  return v6;
}

- (id)fetchLastHourFaults
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
  v4 = [NSPredicate predicateWithFormat:@"date >= %@", v3];
  [(NSFetchRequest *)self->_fetchLastHourFaultsDict setPredicate:v4];
  v5 = [(W5DatabaseManager *)self performFetch:self->_fetchLastHourFaultsDict];

  return v5;
}

- (id)fetchLastHourLinkTests
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
  v4 = [NSPredicate predicateWithFormat:@"date >= %@", v3];
  [(NSFetchRequest *)self->_fetchLastHourLinkTestsDict setPredicate:v4];
  v5 = [(W5DatabaseManager *)self performFetch:self->_fetchLastHourLinkTestsDict];

  return v5;
}

- (id)fetchLastHourRecoveries
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
  v4 = [NSPredicate predicateWithFormat:@"date >= %@", v3];
  [(NSFetchRequest *)self->_fetchLastHourRecoveriesDict setPredicate:v4];
  v5 = [(W5DatabaseManager *)self performFetch:self->_fetchLastHourRecoveriesDict];

  return v5;
}

- (void)performFetchAndReply:(id)reply reply:(id)a4
{
  v7 = a4;
  v6 = [(W5DatabaseManager *)self performFetch:reply];
  if (v7)
  {
    v7[2](v7, 0, v6);
  }
}

- (void)setUpdatedFaultsCallback:(id)callback
{
  callbackCopy = callback;
  if (dispatch_get_specific(&self->_queue))
  {
    updatedFaultsCallback = self->_updatedFaultsCallback;
    self->_updatedFaultsCallback = 0;

    v6 = objc_retainBlock(callbackCopy);
    v7 = self->_updatedFaultsCallback;
    self->_updatedFaultsCallback = v6;
  }

  else
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100084540;
    v9[3] = &unk_1000E31B0;
    v9[4] = self;
    v10 = callbackCopy;
    dispatch_sync(queue, v9);
    v7 = v10;
  }
}

- (void)setUpdatedLinkTestsCallback:(id)callback
{
  callbackCopy = callback;
  if (dispatch_get_specific(&self->_queue))
  {
    updatedLinkTestsCallback = self->_updatedLinkTestsCallback;
    self->_updatedLinkTestsCallback = 0;

    v6 = objc_retainBlock(callbackCopy);
    v7 = self->_updatedLinkTestsCallback;
    self->_updatedLinkTestsCallback = v6;
  }

  else
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100084674;
    v9[3] = &unk_1000E31B0;
    v9[4] = self;
    v10 = callbackCopy;
    dispatch_sync(queue, v9);
    v7 = v10;
  }
}

- (void)setUpdatedRecoveriesCallback:(id)callback
{
  callbackCopy = callback;
  if (dispatch_get_specific(&self->_queue))
  {
    updatedRecoveriesCallback = self->_updatedRecoveriesCallback;
    self->_updatedRecoveriesCallback = 0;

    v6 = objc_retainBlock(callbackCopy);
    v7 = self->_updatedRecoveriesCallback;
    self->_updatedRecoveriesCallback = v6;
  }

  else
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000847A8;
    v9[3] = &unk_1000E31B0;
    v9[4] = self;
    v10 = callbackCopy;
    dispatch_sync(queue, v9);
    v7 = v10;
  }
}

- (void)startEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084880;
  block[3] = &unk_1000E1270;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000849CC;
  block[3] = &unk_1000E1270;
  block[4] = self;
  dispatch_async(queue, block);
}

@end