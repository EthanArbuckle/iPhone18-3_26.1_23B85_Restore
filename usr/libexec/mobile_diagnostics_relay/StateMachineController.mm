@interface StateMachineController
+ (id)sharedInstance;
- (StateMachineController)init;
- (void)gracefulExit;
- (void)handleButtonWakeupEvent;
- (void)handleIOMatchEvent:(id)a3;
- (void)handleMigrationStartedEvent;
- (void)handleMigrationTransferCompletedEvent;
- (void)handleParingSuccessEvent;
- (void)handleRemoteDeviceAttachEvent;
- (void)handleRemoteDeviceDetachEvent;
- (void)handleStoreServiceDetectedEvent;
- (void)handleTimerTimeoutEvent;
- (void)listeningForHIDParingEvent;
- (void)listeningForNFCParingEvent;
- (void)registerSignalHandle;
- (void)runBroadcastingMigrationStatusAction;
- (void)runCleanupBlock;
- (void)runInactiveAction;
- (void)runListeningForMigrationNotifAction;
- (void)runListeningForParingEventAction;
- (void)runListeningForWakeupEventAction;
- (void)runScanningStoreServiceAction;
- (void)runWaitingForMigrationDidFinishAction;
- (void)setCleanupBlock:(id)a3;
- (void)startRemoteDeviceDiscovery;
- (void)transitionToState:(int64_t)a3;
- (void)triggerSuccessFeedback;
@end

@implementation StateMachineController

- (StateMachineController)init
{
  v15.receiver = self;
  v15.super_class = StateMachineController;
  v2 = [(MDRBaseObject *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_isRunning = 0;
    idleTimer = v2->_idleTimer;
    v2->_idleTimer = 0;

    v3->_currentState = 0;
    transaction = v3->_transaction;
    v3->_transaction = 0;

    cleanupBlock = v3->_cleanupBlock;
    v3->_cleanupBlock = 0;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.MDR.transitionQ", v7);
    transitionQ = v3->_transitionQ;
    v3->_transitionQ = v8;

    v10 = dispatch_queue_create("com.apple.MDR.callbackQ", v7);
    callbackQ = v3->_callbackQ;
    v3->_callbackQ = v10;

    signalSource = v3->_signalSource;
    v3->_signalSource = 0;

    v13 = v3;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100026510 != -1)
  {
    sub_100013748();
  }

  v3 = qword_100026508;

  return v3;
}

- (void)handleIOMatchEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [NSString stringWithFormat:@"Handle IO event: %@", v4];
  v7 = [(MDRBaseObject *)v5 logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v5->_isRunning)
  {
    v8 = [NSString stringWithFormat:@"Controller is already running, ignore it"];
    v9 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v10 = +[DeviceUtility sharedInstance];
  v11 = [v10 isBuddySetupDone];

  v12 = +[MDRStateRecorder sharedInstance];
  v13 = [v12 returnSavedState];

  if (v11)
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  v15 = sub_100008DF8(v13);
  v16 = [NSString stringWithFormat:@"Buddy Setup Done: %s. My state is <%@>", v14, v15];

  v17 = [(MDRBaseObject *)v5 logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v13 == 6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  if (v18 == 1)
  {
    v19 = [NSString stringWithFormat:@"Not my business, exiting"];
    v20 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [(StateMachineController *)v5 gracefulExit];
    v5->_isRunning = 1;
    goto LABEL_25;
  }

  v5->_isRunning = 1;
  if (v13 != 6)
  {
LABEL_25:
    [(StateMachineController *)v5 registerSignalHandle];
    [(StateMachineController *)v5 startRemoteDeviceDiscovery];
    goto LABEL_26;
  }

  v21 = +[DeviceUtility sharedInstance];
  v22 = [v21 isMigrationDone];

  v23 = "NO";
  if (v22)
  {
    v23 = "YES";
  }

  v24 = [NSString stringWithFormat:@"Migration Done: %s", v23];
  v25 = [(MDRBaseObject *)v5 logger];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  transitionQ = v5->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000943C;
  block[3] = &unk_1000208A8;
  block[4] = v5;
  dispatch_async(transitionQ, block);
LABEL_26:
  objc_sync_exit(v5);
}

- (void)registerSignalHandle
{
  v3 = dispatch_get_global_queue(2, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3);
  signalSource = self->_signalSource;
  self->_signalSource = v4;

  v6 = self->_signalSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100009524;
  handler[3] = &unk_1000208A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  signal(15, 1);
  dispatch_resume(self->_signalSource);
}

- (void)startRemoteDeviceDiscovery
{
  v3 = dispatch_queue_create("com.apple.MDR.NCM-deviceQ", 0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100009A54;
  v24 = sub_100009A64;
  v25 = 0;
  v4 = +[DeviceUtility sharedInstance];
  v5 = [v4 getLocalProductType];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100009A54;
  v18[4] = sub_100009A64;
  v19 = 0;
  v6 = [NSString stringWithFormat:@"My ProductType is %@", v5];
  v7 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v8 = [NSString stringWithFormat:@"Start to browsing remote device ..."];
  v9 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v10 = +[DeviceUtility sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100009A6C;
  v17[3] = &unk_1000208A8;
  v17[4] = self;
  v11 = [v10 createOneshotTimer:120 callback:v17];
  v12 = v21[5];
  v21[5] = v11;

  v13 = dispatch_get_global_queue(2, 0);
  v15 = v3;
  v16 = v5;
  started = remote_device_start_browsing();

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)handleRemoteDeviceAttachEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A288;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)handleRemoteDeviceDetachEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A65C;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)handleTimerTimeoutEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8A8;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)transitionToState:(int64_t)a3
{
  if (!self->_transaction)
  {
    v5 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v5;
  }

  currentState = self->_currentState;
  if (a3 && currentState == a3)
  {
    v8 = sub_100008DF8(a3);
    v9 = [NSString stringWithFormat:@"Staying in state <%@>", v8];

    v10 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = sub_100008DF8(currentState);
    v12 = sub_100008DF8(a3);
    v13 = [NSString stringWithFormat:@">>> Transitioning from <%@> to <%@>", v11, v12];

    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    self->_currentState = a3;
    v15 = +[MDRStateRecorder sharedInstance];
    [v15 recordState:self->_currentState];

    if (self->_idleTimer)
    {
      v16 = +[DeviceUtility sharedInstance];
      [v16 cancelTimer:self->_idleTimer];

      idleTimer = self->_idleTimer;
      self->_idleTimer = 0;
    }

    v18 = self->_currentState;
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          [(StateMachineController *)self runListeningForWakeupEventAction];
        }

        else if (v18 == 2)
        {
          [(StateMachineController *)self runScanningStoreServiceAction];
        }
      }

      else
      {
        [(StateMachineController *)self runInactiveAction];
      }
    }

    else if (v18 > 4)
    {
      if (v18 == 5)
      {
        [(StateMachineController *)self runBroadcastingMigrationStatusAction];
      }

      else if (v18 == 6)
      {
        [(StateMachineController *)self runWaitingForMigrationDidFinishAction];
      }
    }

    else if (v18 == 3)
    {
      [(StateMachineController *)self runListeningForParingEventAction];
    }

    else
    {
      [(StateMachineController *)self runListeningForMigrationNotifAction];
    }
  }
}

- (void)runListeningForWakeupEventAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runListeningForWakeupEventAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[DeviceUtility sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000AFC8;
  v18[3] = &unk_1000208A8;
  v18[4] = self;
  v6 = [v5 createOneshotTimer:120 callback:v18];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B0A0;
  block[3] = &unk_1000208A8;
  v7 = v6;
  v17 = v7;
  v8 = dispatch_block_create(0, block);
  [(StateMachineController *)self setCleanupBlock:v8];

  v9 = +[HIDEventMonitor sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B114;
  v15[3] = &unk_100020BF8;
  v15[4] = self;
  v10 = [v9 registerWakeupEventCallback:v15];

  if ((v10 & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"FATAL! Can't register wakeup event callback, exiting"];
    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100013838();
    }

    exit(1);
  }

  v11 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runListeningForWakeupEventAction]"];
  v12 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)handleButtonWakeupEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B304;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)runScanningStoreServiceAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runScanningStoreServiceAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[DeviceUtility sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B6F0;
  v15[3] = &unk_1000208A8;
  v15[4] = self;
  v6 = [v5 createOneshotTimer:120 callback:v15];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B7C8;
  block[3] = &unk_1000208A8;
  v7 = v6;
  v14 = v7;
  v8 = dispatch_block_create(0, block);
  [(StateMachineController *)self setCleanupBlock:v8];

  v9 = +[ServiceScanner sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B83C;
  v12[3] = &unk_100020C48;
  v12[4] = self;
  [v9 registerServiceDetectCallback:v12];

  v10 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runScanningStoreServiceAction]"];
  v11 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)handleStoreServiceDetectedEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BA54;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)runListeningForParingEventAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runListeningForParingEventAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[MDRStateRecorder sharedInstance];
  v6 = [v5 returnSavedParingVersion];

  if (v6 == 2)
  {
    [(StateMachineController *)self listeningForNFCParingEvent];
  }

  else
  {
    [(StateMachineController *)self listeningForHIDParingEvent];
  }

  v7 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runListeningForParingEventAction]"];
  v8 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)listeningForHIDParingEvent
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController listeningForHIDParingEvent]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[DeviceUtility sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BFB8;
  v18[3] = &unk_1000208A8;
  v18[4] = self;
  v6 = [v5 createOneshotTimer:120 callback:v18];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C090;
  block[3] = &unk_1000208A8;
  v7 = v6;
  v17 = v7;
  v8 = dispatch_block_create(0, block);
  [(StateMachineController *)self setCleanupBlock:v8];

  v9 = +[HIDEventMonitor sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C120;
  v15[3] = &unk_100020C70;
  v15[4] = self;
  v10 = [v9 registerParingEventCallback:v15];

  if ((v10 & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"FATAL! Can't register paring event callback, exiting"];
    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000138AC();
    }

    exit(1);
  }

  v11 = [NSString stringWithFormat:@"%s exits", "[StateMachineController listeningForHIDParingEvent]"];
  v12 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)listeningForNFCParingEvent
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController listeningForNFCParingEvent]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[DeviceUtility sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C6D0;
  v18[3] = &unk_1000208A8;
  v18[4] = self;
  v6 = [v5 createOneshotTimer:120 callback:v18];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C7A8;
  block[3] = &unk_1000208A8;
  v7 = v6;
  v17 = v7;
  v8 = dispatch_block_create(0, block);
  [(StateMachineController *)self setCleanupBlock:v8];

  v9 = +[NFCTagReader sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C838;
  v15[3] = &unk_100020C70;
  v15[4] = self;
  v10 = [v9 registerReadTagCallback:v15];

  if ((v10 & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"FATAL! Can't register paring event callback, exiting"];
    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100013920();
    }

    exit(1);
  }

  v11 = [NSString stringWithFormat:@"%s exits", "[StateMachineController listeningForNFCParingEvent]"];
  v12 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)handleParingSuccessEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CBE4;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)runListeningForMigrationNotifAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runListeningForMigrationNotifAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[NotificationListener sharedInstance];
  v6 = kMBTargetDeviceTransferProgressNotification;
  v7 = [v5 stateForNotification:kMBTargetDeviceTransferProgressNotification];

  v8 = [NSString stringWithFormat:@"Current DataMigration Percentage is %lld", v7];
  v9 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if ((v7 - 2) > 0x62)
  {
    v10 = dispatch_block_create(0, &stru_100020C90);
    [(StateMachineController *)self setCleanupBlock:v10];

    v11 = +[NotificationListener sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000D0A0;
    v17[3] = &unk_100020CE0;
    v17[4] = self;
    v12 = [v11 registerForNotification:v6 callback:v17];

    if ((v12 & 1) == 0)
    {
      v15 = [NSString stringWithFormat:@"FATAL! Can't register notification, exiting"];
      v16 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100013994();
      }

      exit(1);
    }

    v13 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runListeningForMigrationNotifAction]"];
    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1000137D0();
    }
  }

  else
  {
    [(StateMachineController *)self handleMigrationStartedEvent];
  }
}

- (void)handleMigrationStartedEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D294;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)runBroadcastingMigrationStatusAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runBroadcastingMigrationStatusAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[MDRStateRecorder sharedInstance];
  v6 = [v5 returnSavedDeviceID];

  if (!v6)
  {
    v7 = [NSString stringWithFormat:@"Should not happen. Can't read device identifier"];
    v8 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013A08();
    }

    [(StateMachineController *)self gracefulExit];
  }

  v9 = +[NotificationListener sharedInstance];
  v10 = kMBTargetDeviceTransferProgressNotification;
  v11 = [v9 stateForNotification:kMBTargetDeviceTransferProgressNotification];

  if ((v11 - 101) > 0xFFFFFFFFFFFFFF9CLL)
  {
    if (v11 == 100)
    {
      [(StateMachineController *)self handleMigrationTransferCompletedEvent];
      goto LABEL_20;
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Should not happen. Invalid DataMigration Percentage %lld", v11];
    v13 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100013A08();
    }

    [(StateMachineController *)self gracefulExit];
  }

  v14 = +[NotificationListener sharedInstance];
  v15 = kMBTargetDeviceTransferMinutesRemainingNotification;
  v16 = [v14 stateForNotification:kMBTargetDeviceTransferMinutesRemainingNotification];

  v17 = [NSString stringWithFormat:@"Current DataMigration Percentage is %lld, MinsRemaining is %lld", v11, v16];
  v18 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
  }

  v19 = dispatch_block_create(0, &stru_100020D00);
  [(StateMachineController *)self setCleanupBlock:v19];

  v20 = +[MigrationBroadcaster sharedInstance];
  [v20 setIdentifier:v6];

  v21 = +[MigrationBroadcaster sharedInstance];
  [v21 setMigrationPercentage:v11 minsRemaining:v16 didFinish:0];

  v22 = +[MigrationBroadcaster sharedInstance];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000DA68;
  v34[3] = &unk_100020BF8;
  v34[4] = self;
  [v22 startAdvertising:v34];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x2020000000;
  v37 = v16;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = v11;
  v23 = +[NotificationListener sharedInstance];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000DB34;
  v32[3] = &unk_100020D50;
  v32[4] = self;
  v32[5] = &buf;
  v32[6] = v33;
  v24 = [v23 registerForNotification:v15 callback:v32];

  if ((v24 & 1) == 0)
  {
    v29 = [NSString stringWithFormat:@"FATAL! Can't register notification, exiting"];
    v30 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100013A08();
    }

LABEL_25:

    exit(1);
  }

  v25 = +[NotificationListener sharedInstance];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000DD04;
  v31[3] = &unk_100020D50;
  v31[4] = self;
  v31[5] = v33;
  v31[6] = &buf;
  v26 = [v25 registerForNotification:v10 callback:v31];

  if ((v26 & 1) == 0)
  {
    v29 = [NSString stringWithFormat:@"FATAL! Can't register notification, exiting"];
    v30 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100013A08();
    }

    goto LABEL_25;
  }

  v27 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runBroadcastingMigrationStatusAction]"];
  v28 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&buf, 8);
LABEL_20:
}

- (void)handleMigrationTransferCompletedEvent
{
  transitionQ = self->_transitionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF6C;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(transitionQ, block);
}

- (void)runWaitingForMigrationDidFinishAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runWaitingForMigrationDidFinishAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v5 = +[MDRStateRecorder sharedInstance];
  v6 = [v5 returnSavedTimestamp];

  if (v6)
  {
    v7 = +[NSDate date];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;
    if (v8 > 86400.0)
    {
      v10 = [NSString stringWithFormat:@"Record is expired, timeval: %.2f seconds", *&v8];
      v11 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100013A7C();
      }

      [(StateMachineController *)self gracefulExit];
    }

    v12 = [NSString stringWithFormat:@"It takes %.2f seconds to be here after reboot", *&v9];
    v13 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v14 = +[MDRStateRecorder sharedInstance];
    v15 = [v14 returnSavedDeviceID];

    if (!v15)
    {
      v16 = [NSString stringWithFormat:@"Should not happen. Can't read device identifier"];
      v17 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100013A7C();
      }

      [(StateMachineController *)self gracefulExit];
    }

    v18 = dispatch_semaphore_create(0);
    v19 = +[NotificationListener sharedInstance];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10000E8E4;
    v50[3] = &unk_100020D78;
    v50[4] = self;
    v20 = v18;
    v51 = v20;
    [v19 registerForNotification:@"com.apple.datamigrator.migrationDidFinish" callback:v50];

    v21 = dispatch_time(0, 600000000000);
    if (dispatch_semaphore_wait(v20, v21))
    {
      v22 = +[DeviceUtility sharedInstance];
      v23 = [v22 isMigrationDone];

      if (!v23)
      {
        v28 = [NSString stringWithFormat:@"Timeout waiting for migrationDidFinish"];
        v29 = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100013A7C();
        }

        [(StateMachineController *)self gracefulExit];
        goto LABEL_27;
      }

      v24 = [NSString stringWithFormat:@"(OK) Migration is done"];
      v25 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v24;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v24 = [NSString stringWithFormat:@"(OK) Received notification migrationDidFinish"];
      v25 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v24;
        goto LABEL_22;
      }
    }

LABEL_27:
    v30 = dispatch_semaphore_create(0);
    v31 = +[MigrationBroadcaster sharedInstance];
    [v31 setIdentifier:v15];

    v32 = +[MigrationBroadcaster sharedInstance];
    [v32 setMigrationPercentage:100 minsRemaining:0 didFinish:1];

    v33 = +[MigrationBroadcaster sharedInstance];
    v45 = _NSConcreteStackBlock;
    v46 = 3221225472;
    v47 = sub_10000E9CC;
    v48 = &unk_100020BF8;
    v34 = v30;
    v49 = v34;
    [v33 startAdvertising:&v45];

    v35 = dispatch_time(0, 100000000000);
    if (dispatch_semaphore_wait(v34, v35))
    {
      v36 = [NSString stringWithFormat:@"Timeout waiting for advertising start, exiting"];
      v37 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100013A7C();
      }

      [(StateMachineController *)self gracefulExit];
    }

    v38 = [NSString stringWithFormat:@"(OK) Start advertising migrationDidFinish"];
    v39 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    sleep(0x3Cu);
    v40 = +[MigrationBroadcaster sharedInstance];
    [v40 stopAdvertising];

    v41 = [NSString stringWithFormat:@"Advertising migrationDidFinish completed, exiting"];
    v42 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [(StateMachineController *)self gracefulExit];
    v43 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runWaitingForMigrationDidFinishAction]", v45, v46, v47, v48];
    v44 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_1000137D0();
    }

    goto LABEL_38;
  }

  v26 = +[MDRStateRecorder sharedInstance];
  v27 = +[NSDate date];
  [v26 recordTimestamp:v27];

  v7 = [NSString stringWithFormat:@"Nothing to do before reboot, return"];
  v15 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

LABEL_38:
}

- (void)runInactiveAction
{
  v3 = [NSString stringWithFormat:@"%s enter", "[StateMachineController runInactiveAction]"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  [(StateMachineController *)self runCleanupBlock];
  v5 = +[MDRStateRecorder sharedInstance];
  [v5 deleteAllRecords];

  if (!self->_idleTimer)
  {
    v6 = +[DeviceUtility sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000EB70;
    v11[3] = &unk_1000208A8;
    v11[4] = self;
    v7 = [v6 createOneshotTimer:600 callback:v11];
    idleTimer = self->_idleTimer;
    self->_idleTimer = v7;
  }

  v9 = [NSString stringWithFormat:@"%s exits", "[StateMachineController runInactiveAction]"];
  v10 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

- (void)gracefulExit
{
  [(StateMachineController *)self transitionToState:0];
  v3 = [NSString stringWithFormat:@"Daemon will exit soon"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  exit(0);
}

- (void)setCleanupBlock:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = objc_retainBlock(v4);

  cleanupBlock = obj->_cleanupBlock;
  obj->_cleanupBlock = v5;

  objc_sync_exit(obj);
}

- (void)runCleanupBlock
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  cleanupBlock = obj->_cleanupBlock;
  if (cleanupBlock)
  {
    cleanupBlock[2]();
    v4 = obj->_cleanupBlock;
    obj->_cleanupBlock = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)triggerSuccessFeedback
{
  v2 = +[HapticPlayer sharedInstance];
  [v2 playHapticForDuration:1.0];
}

@end