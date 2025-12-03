@interface CKKSAccountStateTracker
+ (id)getCircleStatus;
+ (void)fetchCirclePeerID:(id)d;
- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)wait;
- (NSString)debugDescription;
- (NSString)description;
- (id)checkForAllDeliveries;
- (id)descriptionInternal:(id)internal;
- (id)init:(id)init nsnotificationCenterClass:(Class)class;
- (id)notifyCKAccountStatusChange:(id)change;
- (id)notifyCircleChange:(id)change;
- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)change;
- (void)_onqueueDeliverCloudKitStateChanges:(id)changes dispatchGroup:(id)group;
- (void)_onqueueDeliverCurrentCloudKitState:(id)state listenerQueue:(id)queue oldStatus:(id)status group:(id)group;
- (void)_onqueueUpdateAccountState:(id)state deliveredSemaphore:(id)semaphore;
- (void)_onqueueUpdateAccountState:(id)state dispatchGroup:(id)group;
- (void)_onqueueUpdateCKDeviceID:(id)d;
- (void)_onqueueUpdateCirclePeerID:(id)d;
- (void)dealloc;
- (void)notifyCircleStatusChangeAndWaitForSignal;
- (void)performInitialDispatches;
- (void)recheckCKAccountStatus;
- (void)setCDPCapableiCloudAccountStatus:(int64_t)status;
- (void)triggerOctagonStatusFetch;
@end

@implementation CKKSAccountStateTracker

- (void)setCDPCapableiCloudAccountStatus:(int64_t)status
{
  [(CKKSAccountStateTracker *)self setCdpCapableiCloudAccountStatus:?];
  if (status)
  {
    cdpCapableiCloudAccountInitialized = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountInitialized];
    [cdpCapableiCloudAccountInitialized fulfill];
  }

  else
  {
    v5 = [CKKSCondition alloc];
    cdpCapableiCloudAccountInitialized = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountInitialized];
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
  queue = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5D54;
  block[3] = &unk_100344E90;
  block[4] = self;
  block[5] = v10;
  dispatch_sync(queue, block);

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
    queue = [(CKKSAccountStateTracker *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A62C8;
    v9[3] = &unk_100343E38;
    v9[4] = self;
    v5 = v3;
    v10 = v5;
    dispatch_sync(queue, v9);

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

- (BOOL)notifyCKAccountStatusChangeAndWait:(unint64_t)wait
{
  v4 = [(CKKSAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = dispatch_time(0, wait);
  LOBYTE(wait) = dispatch_semaphore_wait(v4, v5) == 0;

  return wait;
}

- (void)recheckCKAccountStatus
{
  fetchCKAccountStatusScheduler = [(CKKSAccountStateTracker *)self fetchCKAccountStatusScheduler];
  [fetchCKAccountStatusScheduler trigger];
}

- (void)_onqueueDeliverCurrentCloudKitState:(id)state listenerQueue:(id)queue oldStatus:(id)status group:(id)group
{
  queueCopy = queue;
  statusCopy = status;
  groupCopy = group;
  stateCopy = state;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, stateCopy);
  if (stateCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A6778;
    v15[3] = &unk_100345310;
    objc_copyWeak(&v18, &location);
    v16 = statusCopy;
    selfCopy = self;
    dispatch_group_async(groupCopy, queueCopy, v15);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)_onqueueDeliverCloudKitStateChanges:(id)changes dispatchGroup:(id)group
{
  changesCopy = changes;
  groupCopy = group;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  ckChangeListeners = [(CKKSAccountStateTracker *)self ckChangeListeners];
  keyEnumerator = [ckChangeListeners keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    do
    {
      ckChangeListeners2 = [(CKKSAccountStateTracker *)self ckChangeListeners];
      v13 = [ckChangeListeners2 objectForKey:v11];

      [(CKKSAccountStateTracker *)self _onqueueDeliverCurrentCloudKitState:v13 listenerQueue:v11 oldStatus:changesCopy group:groupCopy];
      nextObject2 = [keyEnumerator nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)_onqueueUpdateAccountState:(id)state dispatchGroup:(id)group
{
  stateCopy = state;
  groupCopy = group;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  currentCKAccountInfo = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v10 = [currentCKAccountInfo isEqual:stateCopy];

  if (v10)
  {
    currentCKAccountInfo5 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(currentCKAccountInfo5, OS_LOG_TYPE_DEBUG))
    {
      container = [(CKKSAccountStateTracker *)self container];
      options = [container options];
      accountOverrideInfo = [options accountOverrideInfo];
      altDSID = [accountOverrideInfo altDSID];
      v27 = 138412546;
      v28 = altDSID;
      v29 = 2112;
      v30 = stateCopy;
      _os_log_debug_impl(&_mh_execute_header, currentCKAccountInfo5, OS_LOG_TYPE_DEBUG, "received another notification of CK Account State(altDSID: %@) %@", &v27, 0x16u);
    }

    goto LABEL_12;
  }

  currentCKAccountInfo2 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  currentCKAccountInfo5 = currentCKAccountInfo2;
  if (stateCopy && !currentCKAccountInfo2)
  {
    goto LABEL_8;
  }

  currentCKAccountInfo3 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v18 = currentCKAccountInfo3;
  if (currentCKAccountInfo3 == stateCopy)
  {

LABEL_12:
    goto LABEL_13;
  }

  currentCKAccountInfo4 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  v20 = [currentCKAccountInfo4 isEqual:stateCopy];

  if ((v20 & 1) == 0)
  {
LABEL_8:
    v21 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      container2 = [(CKKSAccountStateTracker *)self container];
      options2 = [container2 options];
      accountOverrideInfo2 = [options2 accountOverrideInfo];
      altDSID2 = [accountOverrideInfo2 altDSID];
      v27 = 138412546;
      v28 = altDSID2;
      v29 = 2112;
      v30 = stateCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "moving to CK Account info(altDSID: %@): %@", &v27, 0x16u);
    }

    currentCKAccountInfo5 = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
    [(CKKSAccountStateTracker *)self setCurrentCKAccountInfo:stateCopy];
    ckAccountInfoInitialized = [(CKKSAccountStateTracker *)self ckAccountInfoInitialized];
    [ckAccountInfoInitialized fulfill];

    [(CKKSAccountStateTracker *)self _onqueueUpdateCKDeviceID:stateCopy];
    [(CKKSAccountStateTracker *)self _onqueueDeliverCloudKitStateChanges:currentCKAccountInfo5 dispatchGroup:groupCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_onqueueUpdateAccountState:(id)state deliveredSemaphore:(id)semaphore
{
  stateCopy = state;
  semaphoreCopy = semaphore;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = dispatch_group_create();
  if (v9)
  {
    [(CKKSAccountStateTracker *)self _onqueueUpdateAccountState:stateCopy dispatchGroup:v9];
    queue2 = [(CKKSAccountStateTracker *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A6D20;
    block[3] = &unk_100346018;
    v13 = semaphoreCopy;
    dispatch_group_notify(v9, queue2, block);
  }

  else
  {
    v11 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to get dispatch group.", buf, 2u);
    }

    dispatch_semaphore_signal(semaphoreCopy);
  }
}

- (void)_onqueueUpdateCirclePeerID:(id)d
{
  dCopy = d;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([dCopy status])
  {
    v6 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = dCopy;
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

- (id)notifyCircleChange:(id)change
{
  v4 = dispatch_semaphore_create(0);
  v5 = +[CKKSAccountStateTracker getCircleStatus];
  queue = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A72EC;
  block[3] = &unk_100343C28;
  block[4] = self;
  v13 = v5;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  dispatch_sync(queue, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)_onqueueUpdateCKDeviceID:(id)d
{
  dCopy = d;
  queue = [(CKKSAccountStateTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([dCopy accountStatus] == 1)
  {
    container = [(CKKSAccountStateTracker *)self container];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A759C;
    v8[3] = &unk_100337A80;
    objc_copyWeak(&v9, &location);
    [container fetchCurrentDeviceIDWithCompletionHandler:v8];

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

- (id)notifyCKAccountStatusChange:(id)change
{
  changeCopy = change;
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
  container = [(CKKSAccountStateTracker *)self container];
  [container accountInfoWithCompletionHandler:v7];

  v9 = v6;
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

- (id)registerForNotificationsOfCloudKitAccountStatusChange:(id)change
{
  changeCopy = change;
  v5 = dispatch_semaphore_create(0);
  queue = [(CKKSAccountStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7E10;
  block[3] = &unk_100343C28;
  block[4] = self;
  v13 = changeCopy;
  v7 = v5;
  v14 = v7;
  v8 = changeCopy;
  dispatch_async(queue, block);

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

- (id)descriptionInternal:(id)internal
{
  internalCopy = internal;
  currentCKAccountInfo = [(CKKSAccountStateTracker *)self currentCKAccountInfo];
  cdpCapableiCloudAccountStatus = [(CKKSAccountStateTracker *)self cdpCapableiCloudAccountStatus];
  v7 = @"available";
  if (cdpCapableiCloudAccountStatus == 3)
  {
    v7 = @"no account";
  }

  if (!cdpCapableiCloudAccountStatus)
  {
    v7 = @"unknown";
  }

  v8 = [NSString stringWithFormat:@"<%@: %@, cdp capable: %@>", internalCopy, currentCKAccountInfo, v7];

  return v8;
}

- (void)dealloc
{
  defaultCenter = [(objc_class *)[(CKKSAccountStateTracker *)self nsnotificationCenterClass] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKKSAccountStateTracker;
  [(CKKSAccountStateTracker *)&v4 dealloc];
}

- (void)performInitialDispatches
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CKKSAccountStateTracker *)self notifyCKAccountStatusChange:0];
  v5 = [(CKKSAccountStateTracker *)self notifyCircleChange:0];
  finishedInitialDispatches = [(CKKSAccountStateTracker *)self finishedInitialDispatches];
  [finishedInitialDispatches fulfill];

  objc_autoreleasePoolPop(v3);
}

- (id)init:(id)init nsnotificationCenterClass:(Class)class
{
  initCopy = init;
  v43.receiver = self;
  v43.super_class = CKKSAccountStateTracker;
  v8 = [(CKKSAccountStateTracker *)&v43 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nsnotificationCenterClass, class);
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

    objc_storeStrong(&v9->_container, init);
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

    defaultCenter = [(objc_class *)[(CKKSAccountStateTracker *)v9 nsnotificationCenterClass] defaultCenter];
    v29 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = defaultCenter;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Registering with notification center %@", location, 0xCu);
    }

    [defaultCenter addObserver:v9 selector:"notifyCKAccountStatusChange:" name:CKAccountChangedNotification object:0];
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

+ (void)fetchCirclePeerID:(id)d
{
  dCopy = d;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8D84;
  block[3] = &unk_1003364D8;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_async(v4, block);
}

@end