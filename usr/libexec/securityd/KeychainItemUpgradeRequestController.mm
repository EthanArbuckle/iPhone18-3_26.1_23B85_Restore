@interface KeychainItemUpgradeRequestController
- (KeychainItemUpgradeRequestController)initWithLockStateTracker:(id)tracker;
- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags;
- (void)triggerKeychainItemUpdateRPC:(id)c;
@end

@implementation KeychainItemUpgradeRequestController

- (void)triggerKeychainItemUpdateRPC:(id)c
{
  cCopy = c;
  stateMachine = [(KeychainItemUpgradeRequestController *)self stateMachine];
  [stateMachine startOperation];

  lockStateTracker = [(KeychainItemUpgradeRequestController *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(KeychainItemUpgradeRequestController *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v8 = [OctagonStateTransitionOperation named:@"upgrade-persistent-ref" entering:@"upgrade_persistent_ref"];
  v15 = @"nothing_to_do";
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [NSSet setWithArray:v9];

  v11 = [OctagonStateTransitionRequest alloc];
  queue = [(KeychainItemUpgradeRequestController *)self queue];
  v13 = [(OctagonStateTransitionRequest *)v11 init:@"request-item-upgrade" sourceStates:v10 serialQueue:queue transitionOp:v8];

  stateMachine2 = [(KeychainItemUpgradeRequestController *)self stateMachine];
  [stateMachine2 handleExternalRequest:v13 startTimeout:10000000000];

  cCopy[2](cCopy, 0);
}

- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags
{
  transitionCopy = transition;
  flagsCopy = flags;
  pendingFlagsCopy = pendingFlags;
  queue = [(KeychainItemUpgradeRequestController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([transitionCopy isEqualToString:@"wait_for_unlock"])
  {
    v12 = sub_100006274("keychainitemupgrade");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "waiting for unlock before continuing with state machine", &buf, 2u);
    }

    v13 = [OctagonStateTransitionOperation named:@"wait-for-unlock" entering:@"nothing_to_do"];
    lockStateTracker = [(KeychainItemUpgradeRequestController *)self lockStateTracker];
    unlockDependency = [(OctagonPendingFlag *)lockStateTracker unlockDependency];
    [v13 addNullableDependency:unlockDependency];

LABEL_5:
    goto LABEL_29;
  }

  if ([transitionCopy isEqualToString:@"upgrade_persistent_ref"])
  {
    v16 = sub_100006274("keychainitemupgrade");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "upgrading persistent refs", &buf, 2u);
    }

    cf = 0;
    v36[0] = 0;
    v34 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v36[1] = v36;
    v36[2] = 0x2000000000;
    v37 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v43 = sub_100183FAC;
    v44 = &unk_1003424D0;
    v45 = v36;
    v46 = &v38;
    v47 = &v34;
    p_cf = &cf;
    sub_100008A70(1, 1, 0, &v37, &buf);
    _Block_object_dispose(v36, 8);
    v17 = *(v39 + 24);
    _Block_object_dispose(&v38, 8);
    lockStateTracker2 = [(KeychainItemUpgradeRequestController *)self lockStateTracker];
    v19 = [lockStateTracker2 isLockedError:cf];

    if (v19)
    {
      lockStateTracker = [[OctagonPendingFlag alloc] initWithFlag:@"schedule_pref_upgrade" conditions:1];
      [pendingFlagsCopy _onqueueHandlePendingFlagLater:lockStateTracker];
      v13 = [OctagonStateTransitionOperation named:@"after-upgrade--attempt-wait-for-unlock" entering:@"wait_for_unlock"];
      v20 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v20);
      }

      goto LABEL_5;
    }

    v23 = v34;
    if (v34 == 1 && !cf)
    {
      goto LABEL_21;
    }

    v27 = cf == 0;
    v28 = sub_100006274("keychainitemupgrade");
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (!v23 || (v27 & v17 & 1) != 0)
    {
      if (v29)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "finished upgrading items!", &buf, 2u);
      }

      v31 = @"nothing-to-do";
      v32 = @"nothing_to_do";
    }

    else
    {
      if (v29)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "hit an error, triggering CKKSNFS: %@", &buf, 0xCu);
      }

      persistentReferenceUpgrader = [(KeychainItemUpgradeRequestController *)self persistentReferenceUpgrader];
      [persistentReferenceUpgrader trigger];

      v31 = @"wait-for-trigger";
      v32 = @"wait_for_trigger";
    }

    v13 = [OctagonStateTransitionOperation named:v31 entering:v32];
    v33 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v33);
    }
  }

  else
  {
    if ([transitionCopy isEqualToString:@"wait_for_trigger"])
    {
      v21 = sub_100006274("keychainitemupgrade");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "waiting for trigger to occur", &buf, 2u);
      }

      if ([flagsCopy _onqueueContains:@"schedule_pref_upgrade"])
      {
        [flagsCopy _onqueueRemoveFlag:@"schedule_pref_upgrade"];
        v22 = sub_100006274("keychainitemupgrade");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "handling persistent ref flag, attempting to upgrade next batch", &buf, 2u);
        }

LABEL_21:
        v13 = [OctagonStateTransitionOperation named:@"upgrade-persistent-refs" entering:@"upgrade_persistent_ref"];
        goto LABEL_29;
      }
    }

    else if ([transitionCopy isEqualToString:@"nothing_to_do"])
    {
      persistentReferenceUpgrader2 = [(KeychainItemUpgradeRequestController *)self persistentReferenceUpgrader];
      [persistentReferenceUpgrader2 cancel];

      if ([flagsCopy _onqueueContains:@"schedule_pref_upgrade"])
      {
        [flagsCopy _onqueueRemoveFlag:@"schedule_pref_upgrade"];
      }

      v25 = sub_100006274("keychainitemupgrade");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "nothing to do", &buf, 2u);
      }
    }

    v13 = 0;
  }

LABEL_29:

  return v13;
}

- (KeychainItemUpgradeRequestController)initWithLockStateTracker:(id)tracker
{
  trackerCopy = tracker;
  v23.receiver = self;
  v23.super_class = KeychainItemUpgradeRequestController;
  v6 = [(KeychainItemUpgradeRequestController *)&v23 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("KeychainItemUpgradeControllerQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_lockStateTracker, tracker);
    v10 = [OctagonStateMachine alloc];
    v25[0] = @"nothing_to_do";
    v25[1] = @"wait_for_unlock";
    v26[0] = &off_1003650E0;
    v26[1] = &off_1003650F8;
    v25[2] = @"upgrade_persistent_ref";
    v25[3] = @"wait_for_trigger";
    v26[2] = &off_100365110;
    v26[3] = &off_100365128;
    v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v24 = @"schedule_pref_upgrade";
    v12 = [NSArray arrayWithObjects:&v24 count:1];
    v13 = [NSSet setWithArray:v12];
    v14 = [(OctagonStateMachine *)v10 initWithName:@"keychainitemupgrade" states:v11 flags:v13 initialState:@"upgrade_persistent_ref" queue:v6->_queue stateEngine:v6 unexpectedStateErrorDomain:@"com.apple.security.keychainitemupgrade.state" lockStateTracker:trackerCopy reachabilityTracker:0];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v14;

    v16 = [CKKSNearFutureScheduler alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001F779C;
    v20[3] = &unk_1003452E8;
    objc_copyWeak(&v21, &location);
    v17 = [(CKKSNearFutureScheduler *)v16 initWithName:@"persistent-ref-upgrader" initialDelay:5000000000 exponentialBackoff:300000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v20 block:2.0];
    persistentReferenceUpgrader = v6->_persistentReferenceUpgrader;
    v6->_persistentReferenceUpgrader = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

@end