@interface NDChronoKitLauncher
+ (id)sharedLauncher;
- (BOOL)wakeUpExtension:(id)extension forSession:(id)session withSessionUUID:(id)d wakeRequirement:(int64_t)requirement;
- (NDChronoKitLauncher)init;
- (void)_onqueue_removePendingLaunchForBundleID:(id)d sessionID:(id)iD;
- (void)_onqueue_wakeUpExtension:(id)extension forSession:(id)session withSessionUUID:(id)d wakeRequirement:(int64_t)requirement;
- (void)addObserver:(id)observer forExtension:(id)extension;
- (void)removeObserver:(id)observer forExtension:(id)extension;
- (void)removePendingLaunchForBundleID:(id)d sessionID:(id)iD;
- (void)startMonitoringBundleID:(id)d;
- (void)stopMonitoringBundleID:(id)d;
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

- (void)_onqueue_removePendingLaunchForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:dCopy];
  v9 = [v8 objectForKeyedSubscript:iDCopy];

  if (v9)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = dCopy;
      v16 = 2112;
      v17 = iDCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing wake request for independent extension %{public}@ for session %@", &v14, 0x16u);
    }

    [v9 invalidate];
    v11 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:dCopy];
    [v11 removeObjectForKey:iDCopy];

    v12 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:dCopy];
    v13 = [v12 count] == 0;

    if (v13)
    {
      [(NSMutableDictionary *)self->_pendingLaunches removeObjectForKey:dCopy];
    }
  }
}

- (void)removePendingLaunchForBundleID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076080;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_onqueue_wakeUpExtension:(id)extension forSession:(id)session withSessionUUID:(id)d wakeRequirement:(int64_t)requirement
{
  extensionCopy = extension;
  sessionCopy = session;
  dCopy = d;
  v13 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v28 = extensionCopy;
    v29 = 2112;
    v30 = sessionCopy;
    v31 = 2114;
    v32 = dCopy;
    v33 = 1024;
    requirementCopy = requirement;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Issuing wake request for independent extension %{public}@ for session %@ with uuid %{public}@ and requirement %d", buf, 0x26u);
  }

  v14 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:extensionCopy];
  v15 = [v14 objectForKeyedSubscript:sessionCopy];
  v16 = v15 == 0;

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v28 = extensionCopy;
    v29 = 2112;
    v30 = sessionCopy;
    v31 = 2114;
    v32 = dCopy;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Wake request already exists for independent extension %{public}@ for session %@ with uuid %{public}@", buf, 0x20u);
  }

  if (requirement == 2)
  {
    [(NDChronoKitLauncher *)self _onqueue_removePendingLaunchForBundleID:extensionCopy sessionID:sessionCopy];
LABEL_8:
    v18 = 0;
    if (&CHSNSURLSessiondServiceInfoKeySessionIdentifier && &CHSNSURLSessiondServiceInfoKeyIsHighPriority)
    {
      sessionCopy = [NSNumber numberWithBool:requirement == 2, CHSNSURLSessiondServiceInfoKeySessionIdentifier, CHSNSURLSessiondServiceInfoKeyIsHighPriority, sessionCopy];
      v26[1] = sessionCopy;
      v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:&v25 count:2];
    }

    v20 = [(CHSNSURLSessiondService *)self->_service URLSessionDidCompleteForExtensionWithBundleIdentifier:extensionCopy info:v18];
    v21 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:extensionCopy];
    v22 = v21 == 0;

    if (v22)
    {
      v23 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_pendingLaunches setObject:v23 forKeyedSubscript:extensionCopy];
    }

    v24 = [(NSMutableDictionary *)self->_pendingLaunches objectForKeyedSubscript:extensionCopy];
    [v24 setObject:v20 forKeyedSubscript:sessionCopy];
  }
}

- (BOOL)wakeUpExtension:(id)extension forSession:(id)session withSessionUUID:(id)d wakeRequirement:(int64_t)requirement
{
  extensionCopy = extension;
  sessionCopy = session;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000764B0;
  block[3] = &unk_1000D61F0;
  block[4] = self;
  v19 = extensionCopy;
  v20 = sessionCopy;
  v21 = dCopy;
  requirementCopy = requirement;
  v14 = dCopy;
  v15 = sessionCopy;
  v16 = extensionCopy;
  dispatch_async(queue, block);

  return 1;
}

- (void)stopMonitoringBundleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007655C;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)startMonitoringBundleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076600;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer forExtension:(id)extension
{
  observerCopy = observer;
  extensionCopy = extension;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007671C;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = extensionCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = extensionCopy;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)observer forExtension:(id)extension
{
  observerCopy = observer;
  extensionCopy = extension;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076850;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = extensionCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = extensionCopy;
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