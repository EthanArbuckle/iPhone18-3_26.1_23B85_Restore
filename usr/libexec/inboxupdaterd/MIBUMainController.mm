@interface MIBUMainController
+ (id)sharedInstance;
- (BOOL)_acquirePowerAssertion;
- (BOOL)isCommandAllowed:(id)allowed;
- (MIBUDeviceStatus)deviceStatus;
- (MIBUMainController)init;
- (MIBUNetworkInfo)networkInfo;
- (id)_getStateTransitionTable;
- (void)_acquireTransaction;
- (void)_releasePowerAssertion;
- (void)_releaseTransaction;
- (void)_setSystemTime:(id)time;
- (void)_start:(id *)_start;
- (void)_startIdleTimerForState:(unint64_t)state;
- (void)_stopIdleTimer;
- (void)_transitionToState:(unint64_t)state error:(id *)error;
- (void)cleanup:(id *)cleanup;
- (void)didHandleCommand:(id)command withError:(id)error;
- (void)didStopHeartbeat;
- (void)forceTerminate:(id *)terminate;
- (void)handleIdleTimer:(id)timer;
- (void)nfcActivityDidTimeout;
- (void)operationFinishedWithError:(id)error;
- (void)start:(id *)start;
@end

@implementation MIBUMainController

- (MIBUMainController)init
{
  v17.receiver = self;
  v17.super_class = MIBUMainController;
  v2 = [(MIBUMainController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUMainController *)v2 setState:0];
    [(MIBUMainController *)v3 setOperation:0];
    [(MIBUMainController *)v3 setIdleTimer:0];
    [(MIBUMainController *)v3 setIdleTimeInterval:300.0];
    if (os_variant_has_internal_content())
    {
      v4 = +[MIBUTestPreferences sharedInstance];
      nfcIdleTime = [v4 nfcIdleTime];

      if (nfcIdleTime)
      {
        v6 = +[MIBUTestPreferences sharedInstance];
        nfcIdleTime2 = [v6 nfcIdleTime];
        [nfcIdleTime2 doubleValue];
        [(MIBUMainController *)v3 setIdleTimeInterval:?];

        if (qword_1000B84A8[0] != -1)
        {
          sub_10005B778();
        }

        v8 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          [(MIBUMainController *)v3 idleTimeInterval];
          *buf = 134217984;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overrding NFC Idle time to %lf", buf, 0xCu);
        }
      }
    }

    v11 = [[MIBUNFCController alloc] initWithDelegate:v3];
    [(MIBUMainController *)v3 setNfcController:v11];

    nfcController = [(MIBUMainController *)v3 nfcController];
    [nfcController addObserver:v3];

    v13 = +[MIBUDeviceController sharedInstance];
    [(MIBUMainController *)v3 setDeviceDelegate:v13];

    v14 = +[MIBUOperationFactory sharedInstance];
    [(MIBUMainController *)v3 setOperationFactory:v14];

    _getStateTransitionTable = [(MIBUMainController *)v3 _getStateTransitionTable];
    [(MIBUMainController *)v3 setStateTransitionTable:_getStateTransitionTable];

    [(MIBUMainController *)v3 setShutDownReady:0];
    [(MIBUMainController *)v3 setDisableCarrierMode:1];
    [(MIBUMainController *)v3 setTransaction:0];
    [(MIBUMainController *)v3 setPowerAssertionID:0];
    v3->_running = 0;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000B83E0 != -1)
  {
    sub_10005B7A0();
  }

  v3 = qword_1000B83E8;

  return v3;
}

- (void)start:(id *)start
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100024480;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = start;
  if (qword_1000B83F0 != -1)
  {
    dispatch_once(&qword_1000B83F0, v3);
  }
}

- (void)cleanup:(id *)cleanup
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MIBUMainController *)selfCopy state]== 5)
  {
    if (![(MIBUMainController *)selfCopy disableCarrierMode])
    {
      deviceDelegate = [(MIBUMainController *)selfCopy deviceDelegate];
      [deviceDelegate disableCarrierMode];

      [(MIBUMainController *)selfCopy setDisableCarrierMode:1];
    }
  }

  else
  {
    [(MIBUMainController *)selfCopy setDisableCarrierMode:1];
    [(MIBUMainController *)selfCopy _transitionToState:5 error:cleanup];
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B7B4();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "main controller cleaned up", v7, 2u);
  }

  objc_sync_exit(selfCopy);
}

- (void)forceTerminate:(id *)terminate
{
  nfcController = [(MIBUMainController *)self nfcController];
  v11 = 0;
  [nfcController forceTerminateSession:&v11];
  v6 = v11;

  if (v6)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B7C8();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NFC controller terminate with force failed with error: %{public}@", buf, 0xCu);
    }
  }

  v10 = 0;
  [(MIBUMainController *)self cleanup:&v10];
  v8 = v10;
  v9 = v8;
  if (terminate)
  {
    if (v6)
    {
      v8 = v6;
    }

    *terminate = v8;
  }
}

- (MIBUDeviceStatus)deviceStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MIBUDeviceStatus);
  [(MIBUDeviceStatus *)v3 setState:[(MIBUMainController *)selfCopy state]];
  deviceDelegate = [(MIBUMainController *)selfCopy deviceDelegate];
  getBatteryLevel = [deviceDelegate getBatteryLevel];
  [(MIBUDeviceStatus *)v3 setBatteryLevel:getBatteryLevel];

  deviceDelegate2 = [(MIBUMainController *)selfCopy deviceDelegate];
  thermalDetails = [deviceDelegate2 thermalDetails];
  [(MIBUDeviceStatus *)v3 setThermalDetails:thermalDetails];

  deviceDelegate3 = [(MIBUMainController *)selfCopy deviceDelegate];
  batteryDetails = [deviceDelegate3 batteryDetails];
  [(MIBUDeviceStatus *)v3 setBatteryDetails:batteryDetails];

  operation = [(MIBUMainController *)selfCopy operation];

  if (operation)
  {
    operation2 = [(MIBUMainController *)selfCopy operation];
    -[MIBUDeviceStatus setOperation:](v3, "setOperation:", [operation2 opCode]);

    operation3 = [(MIBUMainController *)selfCopy operation];
    error = [operation3 error];
    [(MIBUDeviceStatus *)v3 setOperationError:error];

    operation4 = [(MIBUMainController *)selfCopy operation];
    details = [operation4 details];
    [(MIBUDeviceStatus *)v3 setOperationDetails:details];
  }

  else
  {
    [(MIBUDeviceStatus *)v3 setOperation:0];
    [(MIBUDeviceStatus *)v3 setOperationError:0];
    [(MIBUDeviceStatus *)v3 setOperationDetails:0];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (MIBUNetworkInfo)networkInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[MIBUNetworkInfo queryNetworkInfo];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isCommandAllowed:(id)allowed
{
  allowedCopy = allowed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15[0] = &off_1000A81C0;
  v15[1] = &off_1000A81D8;
  v16[0] = &__NSArray0__struct;
  v16[1] = &off_1000A9AD0;
  v15[2] = &off_1000A82C8;
  v16[2] = &off_1000A9AE8;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  if ([(MIBUMainController *)selfCopy state]== 2)
  {
    operation = [(MIBUMainController *)selfCopy operation];
    v8 = [operation isCommandAllowed:allowedCopy];

    if (v8)
    {
LABEL_3:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInteger:[(MIBUMainController *)selfCopy state]];
    v11 = [v6 objectForKey:v10];

    LOBYTE(v10) = [v11 containsObject:allowedCopy];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B7F0();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10005B818(allowedCopy, v14, [(MIBUMainController *)selfCopy state], v12);
  }

  v9 = 0;
LABEL_10:

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)nfcActivityDidTimeout
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B870();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling nfcActivity timeout", &v7, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MIBUMainController *)selfCopy state]== 5 || [(MIBUMainController *)selfCopy state]== 4)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B884();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      state = [(MIBUMainController *)selfCopy state];
      v7 = 134217984;
      v8 = state;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device already in state: %lu. No additional handling required", &v7, 0xCu);
    }
  }

  else
  {
    [(MIBUMainController *)selfCopy setShutDownReady:1];
    [(MIBUMainController *)selfCopy _transitionToState:5 error:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)didHandleCommand:(id)command withError:(id)error
{
  commandCopy = command;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  code = [commandCopy code];
  if (errorCopy)
  {
    goto LABEL_28;
  }

  v10 = code;
  state = [(MIBUMainController *)selfCopy state];
  if (state == 1)
  {
    if (v10 > 6)
    {
      if (v10 == 7)
      {
        v18 = 4;
        goto LABEL_27;
      }

      if (v10 != 11)
      {
LABEL_20:
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005B8AC();
        }

        v19 = qword_1000B84A0;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412802;
          v21 = selfCopy;
          v22 = 2048;
          v23 = v10;
          v24 = 2048;
          state2 = [(MIBUMainController *)selfCopy state];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: Received command %ld at state %ld; resetting idle timer...", &v20, 0x20u);
        }

        [(MIBUMainController *)selfCopy _startIdleTimerForState:[(MIBUMainController *)selfCopy state]];
        goto LABEL_28;
      }

      [(MIBUMainController *)selfCopy _stopIdleTimer];
      payload = [commandCopy payload];
      v13 = [payload objectForKey:@"TimeStamp"];

      [(MIBUMainController *)selfCopy _setSystemTime:v13];
      operationFactory = [(MIBUMainController *)selfCopy operationFactory];
      v15 = [operationFactory buildOperationFromCode:2 andDelegate:selfCopy];
      [(MIBUMainController *)selfCopy setOperation:v15];
    }

    else
    {
      if (!v10)
      {
        goto LABEL_28;
      }

      if (v10 != 2)
      {
        goto LABEL_20;
      }

      [(MIBUMainController *)selfCopy _stopIdleTimer];
      payload2 = [commandCopy payload];
      v13 = [payload2 objectForKey:@"TimeStamp"];

      [(MIBUMainController *)selfCopy _setSystemTime:v13];
      operationFactory = [(MIBUMainController *)selfCopy operationFactory];
      v15 = [operationFactory buildOperationFromCode:1 andDelegate:selfCopy];
      [(MIBUMainController *)selfCopy setOperation:v15];
    }

    v18 = 2;
LABEL_27:
    [(MIBUMainController *)selfCopy _transitionToState:v18 error:0];
    goto LABEL_28;
  }

  if (state == 3)
  {
    if (v10 != 3)
    {
      if (v10 != 6)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v18 = 1;
    goto LABEL_27;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B8C0();
  }

  v16 = qword_1000B84A0;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412802;
    v21 = selfCopy;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    state2 = [(MIBUMainController *)selfCopy state];
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: Nothing to do for cmd %lu at state %lu", &v20, 0x20u);
  }

LABEL_28:
  objc_sync_exit(selfCopy);
}

- (void)didStopHeartbeat
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MIBUMainController *)selfCopy state]== 4)
  {
    [(MIBUMainController *)selfCopy _transitionToState:5 error:0];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B8D4();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10005B8E8(v4, [(MIBUMainController *)selfCopy state], v3);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)operationFinishedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B930();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operation = [(MIBUMainController *)selfCopy operation];
    v8 = 138543618;
    v9 = operation;
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ finished with error: %{public}@", &v8, 0x16u);
  }

  if ([(MIBUMainController *)selfCopy state]== 2)
  {
    [(MIBUMainController *)selfCopy _transitionToState:3 error:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)handleIdleTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userInfo = [timerCopy userInfo];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B944();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Idle timer fired!", buf, 2u);
  }

  [(MIBUMainController *)selfCopy _stopIdleTimer];
  intValue = [userInfo intValue];
  if ([(MIBUMainController *)selfCopy state]!= intValue)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B958();
    }

    v12 = qword_1000B84A0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      state = [(MIBUMainController *)selfCopy state];
      intValue2 = [userInfo intValue];
      *buf = 134218240;
      *v22 = state;
      *&v22[8] = 1024;
      *&v22[10] = intValue2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current state %lu != launch state %d, device is not idle", buf, 0x12u);
    }

    goto LABEL_17;
  }

  if ([userInfo unsignedIntValue] == 3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B9F8();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      intValue3 = [userInfo intValue];
      *buf = 67109376;
      *v22 = intValue3;
      *&v22[4] = 2048;
      *&v22[6] = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out in state %d, moving to state %lu", buf, 0x12u);
    }

    nfcController = [(MIBUMainController *)selfCopy nfcController];
    [nfcController terminate:0];

    [(MIBUMainController *)selfCopy _transitionToState:1 error:0];
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  if ([(MIBUMainController *)selfCopy state]== 5)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B9D0();
    }

    v16 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v22 = 5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device already in cleanup state: %lu, no cleanup", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B980();
  }

  v17 = qword_1000B84A0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    intValue4 = [userInfo intValue];
    *buf = 67109120;
    *v22 = intValue4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cleaning up after idling in state: %d...", buf, 8u);
  }

  v20 = 0;
  [(MIBUMainController *)selfCopy _transitionToState:5 error:&v20];
  v15 = v20;
  if (v15)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B9A8();
    }

    v19 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v22 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to cleanup device with error: %{public}@; restarting timer", buf, 0xCu);
    }

    -[MIBUMainController _startIdleTimerForState:](selfCopy, "_startIdleTimerForState:", [userInfo intValue]);
  }

LABEL_18:

  objc_sync_exit(selfCopy);
}

- (void)_start:(id *)_start
{
  self->_running = 1;
  operationFactory = [(MIBUMainController *)self operationFactory];
  v6 = [operationFactory buildCurrentOperationWithDelegate:self];
  [(MIBUMainController *)self setOperation:v6];

  operation = [(MIBUMainController *)self operation];

  if (operation)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(MIBUMainController *)self _transitionToState:v8 error:_start];
}

- (void)_transitionToState:(unint64_t)state error:(id *)error
{
  if ([(MIBUMainController *)self state])
  {
    stateTransitionTable = [(MIBUMainController *)self stateTransitionTable];
    v8 = [NSNumber numberWithUnsignedInteger:[(MIBUMainController *)self state]];
    v9 = [stateTransitionTable objectForKey:v8];

    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedInteger:state];
      v11 = [v9 containsObject:v10];

      if (v11)
      {

        goto LABEL_5;
      }

      sub_10005BA20(self);
    }

    else
    {
      sub_10005BB00(self);
    }

    v20 = 0;
    goto LABEL_42;
  }

LABEL_5:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BBE0();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = v14;
    *buf = 138543874;
    stateCopy3 = v14;
    v44 = 2048;
    state = [(MIBUMainController *)self state];
    v46 = 2048;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: changing device state from %lu to %lu", buf, 0x20u);
  }

  if (state <= 2)
  {
    if (state == 1)
    {
      operation = [(MIBUMainController *)self operation];

      if (operation)
      {
        operation2 = [(MIBUMainController *)self operation];
        [operation2 terminateNow];

        [(MIBUMainController *)self setOperation:0];
      }

      [(MIBUMainController *)self _acquireTransaction];
      nfcController = [(MIBUMainController *)self nfcController];
      v41 = 0;
      [nfcController start:&v41];
      v20 = v41;

      [(MIBUMainController *)self _startIdleTimerForState:1];
      deviceDelegate = [(MIBUMainController *)self deviceDelegate];
      [deviceDelegate enableCarrierMode];
LABEL_27:

      goto LABEL_33;
    }

    if (state != 2)
    {
      goto LABEL_28;
    }

    [(MIBUMainController *)self _stopIdleTimer];
    [(MIBUMainController *)self _acquirePowerAssertion];
    [(MIBUMainController *)self setDisableCarrierMode:0];
    operation3 = [(MIBUMainController *)self operation];
    [operation3 resume];

    goto LABEL_32;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      if (state == 5)
      {
        [(MIBUMainController *)self _stopIdleTimer];
        operation4 = [(MIBUMainController *)self operation];

        if (operation4)
        {
          operation5 = [(MIBUMainController *)self operation];
          [operation5 terminateNow];

          [(MIBUMainController *)self setOperation:0];
        }

        [(MIBUMainController *)self _releaseTransaction];
        [(MIBUMainController *)self _releasePowerAssertion];
        if ([(MIBUMainController *)self disableCarrierMode])
        {
          deviceDelegate2 = [(MIBUMainController *)self deviceDelegate];
          [deviceDelegate2 disableCarrierMode];
        }

        nfcController2 = [(MIBUMainController *)self nfcController];
        v39 = 0;
        [nfcController2 terminate:&v39];
        v20 = v39;

        if (![(MIBUMainController *)self shutDownReady])
        {
          goto LABEL_33;
        }

        deviceDelegate3 = [(MIBUMainController *)self deviceDelegate];
        [deviceDelegate3 removePowerLog];

        deviceDelegate4 = [(MIBUMainController *)self deviceDelegate];
        [deviceDelegate4 setShelfLifeMode];

        deviceDelegate = [(MIBUMainController *)self deviceDelegate];
        [deviceDelegate shutdown];
        goto LABEL_27;
      }

LABEL_28:
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005BBF4();
      }

      v29 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005BC1C(v29, self);
      }

      goto LABEL_32;
    }

    [(MIBUMainController *)self _stopIdleTimer];
    [(MIBUMainController *)self setShutDownReady:1];
    [(MIBUMainController *)self setDisableCarrierMode:1];
LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  nfcController3 = [(MIBUMainController *)self nfcController];
  v40 = 0;
  [nfcController3 start:&v40];
  v20 = v40;

  [(MIBUMainController *)self _startIdleTimerForState:3];
LABEL_33:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BCB8();
  }

  v30 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = objc_opt_class();
    v33 = v32;
    state2 = [(MIBUMainController *)self state];
    *buf = 138543874;
    stateCopy3 = v32;
    v44 = 2048;
    state = state2;
    v46 = 2048;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: state changed from %lu to %lu", buf, 0x20u);
  }

  [(MIBUMainController *)self setState:state];
  if (v20)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BCE0();
    }

    v35 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      v37 = v35;
      state3 = [(MIBUMainController *)self state];
      *buf = 134218498;
      stateCopy3 = state;
      v44 = 2048;
      state = state3;
      v46 = 2114;
      stateCopy2 = v20;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to transition to state: %ld; current device state is: %ld; error: %{public}@", buf, 0x20u);
    }
  }

LABEL_42:
  if (error)
  {
    v36 = v20;
    *error = v20;
  }
}

- (id)_getStateTransitionTable
{
  v4[0] = &off_1000A81C0;
  v4[1] = &off_1000A81D8;
  v5[0] = &__NSArray0__struct;
  v5[1] = &off_1000A9B00;
  v4[2] = &off_1000A82E0;
  v4[3] = &off_1000A82C8;
  v5[2] = &off_1000A9B18;
  v5[3] = &off_1000A9B30;
  v4[4] = &off_1000A8310;
  v4[5] = &off_1000A82F8;
  v5[4] = &off_1000A9B48;
  v5[5] = &__NSArray0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (void)_startIdleTimerForState:(unint64_t)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100026734;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = state;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_stopIdleTimer
{
  idleTimer = [(MIBUMainController *)self idleTimer];

  if (idleTimer)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BD1C();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Idle Timer...", v6, 2u);
    }

    idleTimer2 = [(MIBUMainController *)self idleTimer];
    [idleTimer2 invalidate];

    [(MIBUMainController *)self setIdleTimer:0];
  }
}

- (void)_acquireTransaction
{
  transaction = [(MIBUMainController *)self transaction];

  if (!transaction)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BD30();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring transaction...", v6, 2u);
    }

    v5 = os_transaction_create();
    [(MIBUMainController *)self setTransaction:v5];
  }
}

- (void)_releaseTransaction
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BD44();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing transaction...", v4, 2u);
  }

  [(MIBUMainController *)self setTransaction:0];
}

- (BOOL)_acquirePowerAssertion
{
  if ([(MIBUMainController *)self powerAssertionID])
  {
    return 1;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BD58();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Acquiring power assertion...", v9, 2u);
  }

  v4 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.inboxupdaterd", &self->_powerAssertionID);
  if (!v4)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BE44();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      powerAssertionID = [(MIBUMainController *)self powerAssertionID];
      v9[0] = 67109120;
      v9[1] = powerAssertionID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Acquired power assertion ID: %u", v9, 8u);
    }

    return 1;
  }

  sub_10005BD6C(qword_1000B84A8[0] == -1, v4, self);
  return 0;
}

- (void)_releasePowerAssertion
{
  if ([(MIBUMainController *)self powerAssertionID])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BE6C();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v6[0] = 67109120;
      v6[1] = [(MIBUMainController *)self powerAssertionID];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing power assertion ID: %u ...", v6, 8u);
    }

    v5 = IOPMAssertionRelease([(MIBUMainController *)self powerAssertionID]);
    [(MIBUMainController *)self setPowerAssertionID:0];
    if (v5)
    {
      sub_10005BE80(v5);
    }
  }
}

- (void)_setSystemTime:(id)time
{
  timeCopy = time;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BF50();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v17 = 134217984;
    longValue = [timeCopy longValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting system time stamp: %lu", &v17, 0xCu);
  }

  deviceDelegate = [(MIBUMainController *)self deviceDelegate];
  v8 = [deviceDelegate setSystemTime:{objc_msgSend(timeCopy, "longValue")}];

  if ((v8 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005BF64();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005BF8C(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

@end