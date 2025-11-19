@interface CKKSAccountStateTracker
+ (id)getCircleStatus;
+ (void)fetchCirclePeerID:(id)a3;
- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)checkForAllDeliveries;
- (id)descriptionInternal:(id)a3;
- (id)init:(id)a3 nsnotificationCenterClass:(Class)a4;
- (id)notifyCKAccountStatusChange:(id)a3;
- (id)notifyCircleChange:(id)a3;
- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)a3;
- (void)_onqueueDeliverCloudKitStateChanges:(id)a3 dispatchGroup:(id)a4;
- (void)_onqueueDeliverCurrentCloudKitState:(id)a3 listenerQueue:(id)a4 oldStatus:(id)a5 group:(id)a6;
- (void)_onqueueUpdateAccountState:(id)a3 deliveredSemaphore:(id)a4;
- (void)_onqueueUpdateAccountState:(id)a3 dispatchGroup:(id)a4;
- (void)_onqueueUpdateCKDeviceID:(id)a3;
- (void)_onqueueUpdateCirclePeerID:(id)a3;
- (void)dealloc;
- (void)notifyCircleStatusChangeAndWaitForSignal;
- (void)performInitialDispatches;
- (void)recheckCKAccountStatus;
- (void)setCDPCapableiCloudAccountStatus:(int64_t)a3;
- (void)triggerOctagonStatusFetch;
@end

@implementation CKKSAccountStateTracker

- (void)setCDPCapableiCloudAccountStatus:(int64_t)a3
{
  [(CKKSAccountStateTracker *)self setCdpCapableiCloudAccountStatus:?];
  if (a3)
  {
    v7 = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountInitialized];
    [v7 fulfill];
  }

  else
  {
    v5 = [CKKSCondition alloc];
    v7 = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountInitialized];
    v6 = [(CKKSCondition *)v5 initToChain:?];
    [(CKKSAccountStateTracker *)self setCdpCapableiCloudAccountInitialized:v6];
  }
}

- (void)triggerOctagonStatusFetch
{
  objc_initWeak(&location, self);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000A5D3C;
  v10[4] = sub_1000A5D4C;
  v11 = 0;
  v3 = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5D54;
  block[3] = &unk_100344E90;
  block[4] = self;
  block[5] = v10;
  dispatch_sync(v3, block);

  v4 = objc_alloc_init(OTOperationConfiguration);
  [v4 setTimeoutWaitForCKAccount:100000000];
  v5 = +[OTManager manager];
  v6 = objc_alloc_init(OTControlArguments);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A5DEC;
  v7[3] = &unk_100336528;
  objc_copyWeak(&v8, &location);
  v7[4] = v10;
  [v5 fetchTrustStatus:v6 configuration:v4 reply:v7];

  objc_destroyWeak(&v8);
  _Block_object_dispose(v10, 8);

  objc_destroyWeak(&location);
}

- (id)checkForAllDeliveries
{
  v3 = dispatch_group_create();
  if (v3)
  {
    v4 = [(CKKSAccountStateTracker *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A62C8;
    v9[3] = &unk_100343E38;
    v9[4] = self;
    v5 = v3;
    v10 = v5;
    dispatch_sync(v4, v9);

    v6 = v5;
  }

  else
  {
    v7 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to get dispatch group.", buf, 2u);
    }
  }

  return v3;
}

- (void)notifyCircleStatusChangeAndWaitForSignal
{
  v2 = [(CKKSAccountStateTracker *)self notifyCircleChange:0];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)a3
{
  v4 = [(CKKSAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = dispatch_time(0, a3);
  LOBYTE(a3) = dispatch_semaphore_wait(v4, v5) == 0;

  return a3;
}

- (void)recheckCKAccountStatus
{
  v2 = [(CKKSAccountStateTracker *)self fetchCKAccountStatusScheduler];
  [v2 trigger];
}

- (void)_onqueueDeliverCurrentCloudKitState:(id)a3 listenerQueue:(id)a4 oldStatus:(id)a5 group:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v14);

  objc_initWeak(&location, v13);
  if (v13)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A6778;
    v15[3] = &unk_100345310;
    objc_copyWeak(&v18, &location);
    v16 = v11;
    v17 = self;
    dispatch_group_async(v12, v10, v15);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)_onqueueDeliverCloudKitStateChanges:(id)a3 dispatchGroup:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CKKSAccountStateTracker *)self ckChangeListeners];
  v9 = [v8 keyEnumerator];

  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = [(CKKSAccountStateTracker *)self ckChangeListeners];
      v13 = [v12 objectForKey:v11];

      [(CKKSAccountStateTracker *)self _onqueueDeliverCurrentCloudKitState:v13 listenerQueue:v11 oldStatus:v15 group:v6];
      v14 = [v9 nextObject];

      v11 = v14;
    }

    while (v14);
  }
}

- (void)_onqueueUpdateAccountState:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v10 = [v9 isEqual:v6];

  if (v10)
  {
    v11 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(CKKSAccountStateTracker *)self container];
      v13 = [v12 options];
      v14 = [v13 accountOverrideInfo];
      v15 = [v14 altDSID];
      v27 = 138412546;
      v28 = v15;
      v29 = 2112;
      v30 = v6;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "received another notification of CK Account State(altDSID: %@) %@", &v27, 0x16u);
    }

    goto LABEL_12;
  }

  v16 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v11 = v16;
  if (v6 && !v16)
  {
    goto LABEL_8;
  }

  v17 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v18 = v17;
  if (v17 == v6)
  {

LABEL_12:
    goto LABEL_13;
  }

  v19 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v20 = [v19 isEqual:v6];

  if ((v20 & 1) == 0)
  {
LABEL_8:
    v21 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CKKSAccountStateTracker *)self container];
      v23 = [v22 options];
      v24 = [v23 accountOverrideInfo];
      v25 = [v24 altDSID];
      v27 = 138412546;
      v28 = v25;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "moving to CK Account info(altDSID: %@): %@", &v27, 0x16u);
    }

    v11 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
    [(CKKSAccountStateTracker *)self setCurrentCKAccountInfo:v6];
    v26 = [(CKKSAccountStateTracker *)self ckAccountInfoInitialized];
    [v26 fulfill];

    [(CKKSAccountStateTracker *)self _onqueueUpdateCKDeviceID:v6];
    [(CKKSAccountStateTracker *)self _onqueueDeliverCloudKitStateChanges:v11 dispatchGroup:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_onqueueUpdateAccountState:(id)a3 deliveredSemaphore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = dispatch_group_create();
  if (v9)
  {
    [(CKKSAccountStateTracker *)self _onqueueUpdateAccountState:v6 dispatchGroup:v9];
    v10 = [(CKKSAccountStateTracker *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A6D20;
    block[3] = &unk_100346018;
    v13 = v7;
    dispatch_group_notify(v9, v10, block);
  }

  else
  {
    v11 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to get dispatch group.", buf, 2u);
    }

    dispatch_semaphore_signal(v7);
  }
}

- (void)_onqueueUpdateCirclePeerID:(id)a3
{
  v4 = a3;
  v5 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  if ([v4 status])
  {
    v6 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "out of circle(%@): resetting peer ID", buf, 0xCu);
    }

    [(CKKSAccountStateTracker *)self setAccountCirclePeerID:0];
    [(CKKSAccountStateTracker *)self setAccountCirclePeerIDError:0];
    v7 = objc_alloc_init(CKKSCondition);
    [(CKKSAccountStateTracker *)self setAccountCirclePeerIDInitialized:v7];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A6EF8;
    v8[3] = &unk_100337A80;
    objc_copyWeak(&v9, &location);
    [CKKSAccountStateTracker fetchCirclePeerID:v8];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (id)notifyCircleChange:(id)a3
{
  v4 = dispatch_semaphore_create(0);
  v5 = +[CKKSAccountStateTracker getCircleStatus];
  v6 = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A72EC;
  block[3] = &unk_100343C28;
  block[4] = self;
  v13 = v5;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  dispatch_sync(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)_onqueueUpdateCKDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  if ([v4 accountStatus] == 1)
  {
    v6 = [(CKKSAccountStateTracker *)self container];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A759C;
    v8[3] = &unk_100337A80;
    objc_copyWeak(&v9, &location);
    [v6 fetchCurrentDeviceIDWithCompletionHandler:v8];

    objc_destroyWeak(&v9);
  }

  else
  {
    [(CKKSAccountStateTracker *)self setCkdeviceID:0];
    [(CKKSAccountStateTracker *)self setCkdeviceIDError:0];
    v7 = objc_alloc_init(CKKSCondition);
    [(CKKSAccountStateTracker *)self setCkdeviceIDInitialized:v7];
  }

  objc_destroyWeak(&location);
}

- (id)notifyCKAccountStatusChange:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A7A00;
  v11[3] = &unk_1003364B0;
  objc_copyWeak(&v13, &location);
  v6 = v5;
  v12 = v6;
  v7 = objc_retainBlock(v11);
  v8 = [(CKKSAccountStateTracker *)self container];
  [v8 accountInfoWithCompletionHandler:v7];

  v9 = v6;
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7E10;
  block[3] = &unk_100343C28;
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

- (NSString)debugDescription
{
  v6.receiver = self;
  v6.super_class = CKKSAccountStateTracker;
  v3 = [(CKKSAccountStateTracker *)&v6 description];
  v4 = [(CKKSAccountStateTracker *)self descriptionInternal:v3];

  return v4;
}

- (NSString)description
{
  v3 = [objc_opt_class() description];
  v4 = [(CKKSAccountStateTracker *)self descriptionInternal:v3];

  return v4;
}

- (id)descriptionInternal:(id)a3
{
  v4 = a3;
  v5 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v6 = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountStatus];
  v7 = @"available";
  if (v6 == 3)
  {
    v7 = @"no account";
  }

  if (!v6)
  {
    v7 = @"unknown";
  }

  v8 = [NSString stringWithFormat:@"<%@: %@, cdp capable: %@>", v4, v5, v7];

  return v8;
}

- (void)dealloc
{
  v3 = [(objc_class *)[(CKKSAccountStateTracker *)self nsnotificationCenterClass] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKKSAccountStateTracker;
  [(CKKSAccountStateTracker *)&v4 dealloc];
}

- (void)performInitialDispatches
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CKKSAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = [(CKKSAccountStateTracker *)self notifyCircleChange:0];
  v6 = [(CKKSAccountStateTracker *)self finishedInitialDispatches];
  [v6 fulfill];

  objc_autoreleasePoolPop(v3);
}

- (id)init:(id)a3 nsnotificationCenterClass:(Class)a4
{
  v7 = a3;
  v43.receiver = self;
  v43.super_class = CKKSAccountStateTracker;
  v8 = [(CKKSAccountStateTracker *)&v43 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nsnotificationCenterClass, a4);
    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    ckChangeListeners = v9->_ckChangeListeners;
    v9->_ckChangeListeners = v10;

    currentCKAccountInfo = v9->_currentCKAccountInfo;
    v9->_currentCKAccountInfo = 0;

    v13 = objc_alloc_init(CKKSCondition);
    ckAccountInfoInitialized = v9->_ckAccountInfoInitialized;
    v9->_ckAccountInfoInitialized = v13;

    v15 = [[SOSAccountStatus alloc] init:0xFFFFFFFFLL error:0];
    currentCircleStatus = v9->_currentCircleStatus;
    v9->_currentCircleStatus = v15;

    objc_storeStrong(&v9->_container, a3);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("ck-account-state", v17);
    queue = v9->_queue;
    v9->_queue = v18;

    v9->_firstCKAccountFetch = 0;
    v20 = objc_alloc_init(CKKSCondition);
    finishedInitialDispatches = v9->_finishedInitialDispatches;
    v9->_finishedInitialDispatches = v20;

    v22 = objc_alloc_init(CKKSCondition);
    ckdeviceIDInitialized = v9->_ckdeviceIDInitialized;
    v9->_ckdeviceIDInitialized = v22;

    v24 = objc_alloc_init(CKKSCondition);
    octagonInformationInitialized = v9->_octagonInformationInitialized;
    v9->_octagonInformationInitialized = v24;

    v9->_cdpCapableiCloudAccountStatus = 0;
    v26 = objc_alloc_init(CKKSCondition);
    cdpCapableiCloudAccountInitialized = v9->_cdpCapableiCloudAccountInitialized;
    v9->_cdpCapableiCloudAccountInitialized = v26;

    v28 = [(objc_class *)[(CKKSAccountStateTracker *)v9 nsnotificationCenterClass] defaultCenter];
    v29 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v28;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Registering with notification center %@", location, 0xCu);
    }

    [v28 addObserver:v9 selector:"notifyCKAccountStatusChange:" name:CKAccountChangedNotification object:0];
    objc_initWeak(location, v9);
    if ([OTSOSActualAdapter sosEnabled]_0())
    {
      out_token = 0;
      v30 = kSOSCCCircleChangedNotification;
      v31 = dispatch_get_global_queue(17, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000A882C;
      handler[3] = &unk_100344A08;
      objc_copyWeak(&v41, location);
      notify_register_dispatch(v30, &out_token, v31, handler);

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A8878;
      block[3] = &unk_1003452E8;
      objc_copyWeak(&v39, location);
      dispatch_async(v31, block);

      objc_destroyWeak(&v39);
      objc_destroyWeak(&v41);
    }

    v32 = [CKKSNearFutureScheduler alloc];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000A88D8;
    v36[3] = &unk_1003452E8;
    objc_copyWeak(&v37, location);
    v33 = [(CKKSNearFutureScheduler *)v32 initWithName:@"ckstatus-refetch" initialDelay:5000000000 exponentialBackoff:600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v36 block:1.1];
    fetchCKAccountStatusScheduler = v9->_fetchCKAccountStatusScheduler;
    v9->_fetchCKAccountStatusScheduler = v33;

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }

  return v9;
}

+ (id)getCircleStatus
{
  v2 = [[SOSAccountStatus alloc] init:SOSCCThisDeviceIsInCircle() error:0];

  return v2;
}

+ (void)fetchCirclePeerID:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8D84;
  block[3] = &unk_1003364D8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

@end