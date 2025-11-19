@interface NDChronoKitLauncher
+ (id)sharedLauncher;
- (BOOL)wakeUpExtension:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5 wakeRequirement:(int64_t)a6;
- (NDChronoKitLauncher)init;
- (void)_onqueue_removePendingLaunchForBundleID:(id)a3 sessionID:(id)a4;
- (void)_onqueue_wakeUpExtension:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5 wakeRequirement:(int64_t)a6;
- (void)addObserver:(id)a3 forExtension:(id)a4;
- (void)removeObserver:(id)a3 forExtension:(id)a4;
- (void)removePendingLaunchForBundleID:(id)a3 sessionID:(id)a4;
- (void)startMonitoringBundleID:(id)a3;
- (void)stopMonitoringBundleID:(id)a3;
@end

@implementation NDChronoKitLauncher

+ (id)sharedLauncher
{
  if (qword_1000EB208 != -1)
  {
    dispatch_once(&qword_1000EB208, &stru_1000D61C8);
  }

  v3 = qword_1000EB200;

  return v3;
}

- (void)_onqueue_removePendingLaunchForBundleID:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v6];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing wake request for independent extension %{public}@ for session %@", &v14, 0x16u);
    }

    [v9 invalidate];
    v11 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v6];
    [v11 removeObjectForKey:v7];

    v12 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v6];
    v13 = [v12 count] == 0;

    if (v13)
    {
      [(NSMutableDictionary *)self->_pendingLaunches removeObjectForKey:v6];
    }
  }
}

- (void)removePendingLaunchForBundleID:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076080;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_onqueue_wakeUpExtension:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5 wakeRequirement:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    v33 = 1024;
    v34 = a6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Issuing wake request for independent extension %{public}@ for session %@ with uuid %{public}@ and requirement %d", buf, 0x26u);
  }

  v14 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v10];
  v15 = [v14 objectForKeyedSubscript:v11];
  v16 = v15 == 0;

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Wake request already exists for independent extension %{public}@ for session %@ with uuid %{public}@", buf, 0x20u);
  }

  if (a6 == 2)
  {
    [(NDChronoKitLauncher *)self _onqueue_removePendingLaunchForBundleID:v10 sessionID:v11];
LABEL_8:
    v18 = 0;
    if (&CHSNSURLSessiondServiceInfoKeySessionIdentifier && &CHSNSURLSessiondServiceInfoKeyIsHighPriority)
    {
      v19 = [NSNumber numberWithBool:a6 == 2, CHSNSURLSessiondServiceInfoKeySessionIdentifier, CHSNSURLSessiondServiceInfoKeyIsHighPriority, v11];
      v26[1] = v19;
      v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:&v25 count:2];
    }

    v20 = [(CHSNSURLSessiondService *)self->_service URLSessionDidCompleteForExtensionWithBundleIdentifier:v10 info:v18];
    v21 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v10];
    v22 = v21 == 0;

    if (v22)
    {
      v23 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_pendingLaunches setObject:v23 forKeyedSubscript:v10];
    }

    v24 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:v10];
    [v24 setObject:v20 forKeyedSubscript:v11];
  }
}

- (BOOL)wakeUpExtension:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5 wakeRequirement:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000764B0;
  block[3] = &unk_1000D61F0;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);

  return 1;
}

- (void)stopMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007655C;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)startMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076600;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)a3 forExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007671C;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)a3 forExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076850;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (NDChronoKitLauncher)init
{
  v16.receiver = self;
  v16.super_class = NDChronoKitLauncher;
  v2 = [(NDChronoKitLauncher *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(CHSNSURLSessiondService);
    service = v2->_service;
    v2->_service = v3;

    v5 = +[NSMutableDictionary dictionary];
    pendingLaunches = v2->_pendingLaunches;
    v2->_pendingLaunches = v5;

    v7 = +[NSMutableDictionary dictionary];
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = +[NSMutableSet set];
    monitoredBundleIDs = v2->_monitoredBundleIDs;
    v2->_monitoredBundleIDs = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.nsurlsessiond.NDExtension-queue", v12);
    queue = v2->_queue;
    v2->_queue = v13;
  }

  return v2;
}

@end