@interface KTAccountStateTracker
- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)checkForAllDeliveries;
- (id)descriptionInternal:(id)a3;
- (id)init:(id)a3 nsnotificationCenterClass:(Class)a4;
- (id)notifyCKAccountStatusChange:(id)a3;
- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)a3;
- (void)_onqueueDeliverCloudKitStateChanges:(id)a3 dispatchGroup:(id)a4;
- (void)_onqueueDeliverCurrentCloudKitState:(id)a3 listenerQueue:(id)a4 oldStatus:(id)a5 group:(id)a6;
- (void)_onqueueUpdateAccountState:(id)a3 deliveredSemaphore:(id)a4;
- (void)_onqueueUpdateAccountState:(id)a3 dispatchGroup:(id)a4;
- (void)dealloc;
- (void)performInitialDispatches;
- (void)recheckCKAccountStatus;
@end

@implementation KTAccountStateTracker

- (id)init:(id)a3 nsnotificationCenterClass:(Class)a4
{
  v7 = a3;
  v28.receiver = self;
  v28.super_class = KTAccountStateTracker;
  v8 = [(KTAccountStateTracker *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nsnotificationCenterClass, a4);
    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    ckChangeListeners = v9->_ckChangeListeners;
    v9->_ckChangeListeners = v10;

    currentCKAccountInfo = v9->_currentCKAccountInfo;
    v9->_currentCKAccountInfo = 0;

    v13 = objc_alloc_init(KTCondition);
    ckAccountInfoInitialized = v9->_ckAccountInfoInitialized;
    v9->_ckAccountInfoInitialized = v13;

    objc_storeStrong(&v9->_container, a3);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("ck-account-state", v15);
    queue = v9->_queue;
    v9->_queue = v16;

    *&v9->_firstCKAccountFetch = 0;
    v9->_reloadLock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(KTCondition);
    finishedInitialDispatches = v9->_finishedInitialDispatches;
    v9->_finishedInitialDispatches = v18;

    v20 = [(objc_class *)[(KTAccountStateTracker *)v9 nsnotificationCenterClass] defaultCenter];
    if (qword_10039C9C0 != -1)
    {
      sub_10025C550();
    }

    v21 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Registering with notification center %@", buf, 0xCu);
    }

    [v20 addObserver:v9 selector:"notifyCKAccountStatusChange:" name:CKAccountChangedNotification object:0];
    objc_initWeak(buf, v9);
    v22 = [KTNearFutureScheduler alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001D062C;
    v26[3] = &unk_1003175E0;
    objc_copyWeak(&v27, buf);
    v23 = [(KTNearFutureScheduler *)v22 initWithName:@"ckstatus-refetch" initialDelay:5000000000 exponentialBackoff:600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v26 block:1.1];
    fetchCKAccountStatusScheduler = v9->_fetchCKAccountStatusScheduler;
    v9->_fetchCKAccountStatusScheduler = v23;

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)performInitialDispatches
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(KTAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = [(KTAccountStateTracker *)self finishedInitialDispatches];
  [v5 fulfill];

  objc_autoreleasePoolPop(v3);
}

- (void)dealloc
{
  v3 = [(objc_class *)[(KTAccountStateTracker *)self nsnotificationCenterClass] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = KTAccountStateTracker;
  [(KTAccountStateTracker *)&v4 dealloc];
}

- (id)descriptionInternal:(id)a3
{
  v4 = a3;
  v5 = [(KTAccountStateTracker *)self currentCKAccountInfo];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (NSString)description
{
  v3 = [objc_opt_class() description];
  v4 = [(KTAccountStateTracker *)self descriptionInternal:v3];

  return v4;
}

- (NSString)debugDescription
{
  v6.receiver = self;
  v6.super_class = KTAccountStateTracker;
  v3 = [(KTAccountStateTracker *)&v6 description];
  v4 = [(KTAccountStateTracker *)self descriptionInternal:v3];

  return v4;
}

- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(KTAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D09BC;
  block[3] = &unk_10031E018;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)notifyCKAccountStatusChange:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D1014;
  v16[3] = &unk_1003279F8;
  objc_copyWeak(&v18, &location);
  v6 = v5;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  os_unfair_lock_lock(&self->_reloadLock);
  v8 = [(KTAccountStateTracker *)self forceReload];
  [(KTAccountStateTracker *)self setForceReload:0];
  os_unfair_lock_unlock(&self->_reloadLock);
  v9 = [(KTAccountStateTracker *)self container];
  if (v8)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001D13F4;
    v12[3] = &unk_100327A40;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    [v9 reloadAccountWithCompletionHandler:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    [v9 accountInfoWithCompletionHandler:v7];
  }

  v10 = v6;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_onqueueUpdateAccountState:(id)a3 deliveredSemaphore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = dispatch_group_create();
  if (v9)
  {
    [(KTAccountStateTracker *)self _onqueueUpdateAccountState:v6 dispatchGroup:v9];
    v10 = [(KTAccountStateTracker *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D1768;
    block[3] = &unk_100316FE0;
    v13 = v7;
    dispatch_group_notify(v9, v10, block);
  }

  else
  {
    if (qword_10039C9C0 != -1)
    {
      sub_10025C618();
    }

    v11 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unable to get dispatch group.", buf, 2u);
    }

    dispatch_semaphore_signal(v7);
  }
}

- (void)_onqueueUpdateAccountState:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(KTAccountStateTracker *)self currentCKAccountInfo];
  v10 = [v9 isEqual:v6];

  if (!v10)
  {
    v17 = [(KTAccountStateTracker *)self currentCKAccountInfo];
    v18 = v17;
    if (!v6 || v17)
    {
      v19 = [(KTAccountStateTracker *)self currentCKAccountInfo];
      v20 = v19;
      if (v19 == v6)
      {

LABEL_16:
        goto LABEL_17;
      }

      v21 = [(KTAccountStateTracker *)self currentCKAccountInfo];
      v22 = [v21 isEqual:v6];

      if (v22)
      {
        goto LABEL_17;
      }
    }

    if (qword_10039C9C0 != -1)
    {
      sub_10025C62C();
    }

    v23 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = [(KTAccountStateTracker *)self container];
      v26 = [v25 options];
      v27 = [v26 accountOverrideInfo];
      v28 = [v27 accountID];
      v30 = 138412546;
      v31 = v28;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "moving to CK Account info(altDSID: %@): %@", &v30, 0x16u);
    }

    v18 = [(KTAccountStateTracker *)self currentCKAccountInfo];
    [(KTAccountStateTracker *)self setCurrentCKAccountInfo:v6];
    v29 = [(KTAccountStateTracker *)self ckAccountInfoInitialized];
    [v29 fulfill];

    [(KTAccountStateTracker *)self _onqueueDeliverCloudKitStateChanges:v18 dispatchGroup:v7];
    goto LABEL_16;
  }

  if (qword_10039C9C0 != -1)
  {
    sub_10025C640();
  }

  v11 = qword_10039C9C8;
  if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [(KTAccountStateTracker *)self container];
    v14 = [v13 options];
    v15 = [v14 accountOverrideInfo];
    v16 = [v15 accountID];
    v30 = 138412546;
    v31 = v16;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "received another notification of CK Account State(altDSID: %@) %@", &v30, 0x16u);
  }

LABEL_17:
}

- (void)_onqueueDeliverCloudKitStateChanges:(id)a3 dispatchGroup:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(KTAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(KTAccountStateTracker *)self ckChangeListeners];
  v9 = [v8 keyEnumerator];

  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = [(KTAccountStateTracker *)self ckChangeListeners];
      v13 = [v12 objectForKey:v11];

      [(KTAccountStateTracker *)self _onqueueDeliverCurrentCloudKitState:v13 listenerQueue:v11 oldStatus:v15 group:v6];
      v14 = [v9 nextObject];

      v11 = v14;
    }

    while (v14);
  }
}

- (void)_onqueueDeliverCurrentCloudKitState:(id)a3 listenerQueue:(id)a4 oldStatus:(id)a5 group:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(KTAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v14);

  objc_initWeak(&location, v13);
  if (v13)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001D1D18;
    v15[3] = &unk_1003174D8;
    objc_copyWeak(&v18, &location);
    v16 = v11;
    v17 = self;
    dispatch_group_async(v12, v10, v15);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)recheckCKAccountStatus
{
  os_unfair_lock_lock(&self->_reloadLock);
  [(KTAccountStateTracker *)self setForceReload:1];
  os_unfair_lock_unlock(&self->_reloadLock);
  v3 = [(KTAccountStateTracker *)self fetchCKAccountStatusScheduler];
  [v3 trigger];
}

- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)a3
{
  v4 = [(KTAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = dispatch_time(0, a3);
  LOBYTE(a3) = dispatch_semaphore_wait(v4, v5) == 0;

  return a3;
}

- (id)checkForAllDeliveries
{
  v3 = dispatch_group_create();
  if (v3)
  {
    v4 = [(KTAccountStateTracker *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D1FC4;
    v9[3] = &unk_1003180E0;
    v9[4] = self;
    v5 = v3;
    v10 = v5;
    dispatch_sync(v4, v9);

    v6 = v5;
  }

  else
  {
    if (qword_10039C9C0 != -1)
    {
      sub_10025C654();
    }

    v7 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Unable to get dispatch group.", buf, 2u);
    }
  }

  return v3;
}

@end