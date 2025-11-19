@interface MIBUMainController
+ (id)sharedInstance;
- (BOOL)_acquirePowerAssertion;
- (BOOL)isCommandAllowed:(id)a3;
- (MIBUDeviceStatus)deviceStatus;
- (MIBUMainController)init;
- (MIBUNetworkInfo)networkInfo;
- (id)_getStateTransitionTable;
- (void)_acquireTransaction;
- (void)_releasePowerAssertion;
- (void)_releaseTransaction;
- (void)_setSystemTime:(id)a3;
- (void)_start:(id *)a3;
- (void)_startIdleTimerForState:(unint64_t)a3;
- (void)_stopIdleTimer;
- (void)_transitionToState:(unint64_t)a3 error:(id *)a4;
- (void)cleanup:(id *)a3;
- (void)didHandleCommand:(id)a3 withError:(id)a4;
- (void)didStopHeartbeat;
- (void)forceTerminate:(id *)a3;
- (void)handleIdleTimer:(id)a3;
- (void)nfcActivityDidTimeout;
- (void)operationFinishedWithError:(id)a3;
- (void)start:(id *)a3;
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
      v5 = [v4 nfcIdleTime];

      if (v5)
      {
        v6 = +[MIBUTestPreferences sharedInstance];
        v7 = [v6 nfcIdleTime];
        [v7 doubleValue];
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

    v12 = [(MIBUMainController *)v3 nfcController];
    [v12 addObserver:v3];

    v13 = +[MIBUDeviceController sharedInstance];
    [(MIBUMainController *)v3 setDeviceDelegate:v13];

    v14 = +[MIBUOperationFactory sharedInstance];
    [(MIBUMainController *)v3 setOperationFactory:v14];

    v15 = [(MIBUMainController *)v3 _getStateTransitionTable];
    [(MIBUMainController *)v3 setStateTransitionTable:v15];

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

- (void)start:(id *)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100024480;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = a3;
  if (qword_1000B83F0 != -1)
  {
    dispatch_once(&qword_1000B83F0, v3);
  }
}

- (void)cleanup:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(MIBUMainController *)v4 state]== 5)
  {
    if (![(MIBUMainController *)v4 disableCarrierMode])
    {
      v5 = [(MIBUMainController *)v4 deviceDelegate];
      [v5 disableCarrierMode];

      [(MIBUMainController *)v4 setDisableCarrierMode:1];
    }
  }

  else
  {
    [(MIBUMainController *)v4 setDisableCarrierMode:1];
    [(MIBUMainController *)v4 _transitionToState:5 error:a3];
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

  objc_sync_exit(v4);
}

- (void)forceTerminate:(id *)a3
{
  v5 = [(MIBUMainController *)self nfcController];
  v11 = 0;
  [v5 forceTerminateSession:&v11];
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
  if (a3)
  {
    if (v6)
    {
      v8 = v6;
    }

    *a3 = v8;
  }
}

- (MIBUDeviceStatus)deviceStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MIBUDeviceStatus);
  [(MIBUDeviceStatus *)v3 setState:[(MIBUMainController *)v2 state]];
  v4 = [(MIBUMainController *)v2 deviceDelegate];
  v5 = [v4 getBatteryLevel];
  [(MIBUDeviceStatus *)v3 setBatteryLevel:v5];

  v6 = [(MIBUMainController *)v2 deviceDelegate];
  v7 = [v6 thermalDetails];
  [(MIBUDeviceStatus *)v3 setThermalDetails:v7];

  v8 = [(MIBUMainController *)v2 deviceDelegate];
  v9 = [v8 batteryDetails];
  [(MIBUDeviceStatus *)v3 setBatteryDetails:v9];

  v10 = [(MIBUMainController *)v2 operation];

  if (v10)
  {
    v11 = [(MIBUMainController *)v2 operation];
    -[MIBUDeviceStatus setOperation:](v3, "setOperation:", [v11 opCode]);

    v12 = [(MIBUMainController *)v2 operation];
    v13 = [v12 error];
    [(MIBUDeviceStatus *)v3 setOperationError:v13];

    v14 = [(MIBUMainController *)v2 operation];
    v15 = [v14 details];
    [(MIBUDeviceStatus *)v3 setOperationDetails:v15];
  }

  else
  {
    [(MIBUDeviceStatus *)v3 setOperation:0];
    [(MIBUDeviceStatus *)v3 setOperationError:0];
    [(MIBUDeviceStatus *)v3 setOperationDetails:0];
  }

  objc_sync_exit(v2);

  return v3;
}

- (MIBUNetworkInfo)networkInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[MIBUNetworkInfo queryNetworkInfo];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isCommandAllowed:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15[0] = &off_1000A81C0;
  v15[1] = &off_1000A81D8;
  v16[0] = &__NSArray0__struct;
  v16[1] = &off_1000A9AD0;
  v15[2] = &off_1000A82C8;
  v16[2] = &off_1000A9AE8;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  if ([(MIBUMainController *)v5 state]== 2)
  {
    v7 = [(MIBUMainController *)v5 operation];
    v8 = [v7 isCommandAllowed:v4];

    if (v8)
    {
LABEL_3:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInteger:[(MIBUMainController *)v5 state]];
    v11 = [v6 objectForKey:v10];

    LOBYTE(v10) = [v11 containsObject:v4];
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
    sub_10005B818(v4, v14, [(MIBUMainController *)v5 state], v12);
  }

  v9 = 0;
LABEL_10:

  objc_sync_exit(v5);
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

  v4 = self;
  objc_sync_enter(v4);
  if ([(MIBUMainController *)v4 state]== 5 || [(MIBUMainController *)v4 state]== 4)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B884();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MIBUMainController *)v4 state];
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device already in state: %lu. No additional handling required", &v7, 0xCu);
    }
  }

  else
  {
    [(MIBUMainController *)v4 setShutDownReady:1];
    [(MIBUMainController *)v4 _transitionToState:5 error:0];
  }

  objc_sync_exit(v4);
}

- (void)didHandleCommand:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 code];
  if (v7)
  {
    goto LABEL_28;
  }

  v10 = v9;
  v11 = [(MIBUMainController *)v8 state];
  if (v11 == 1)
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
          v21 = v8;
          v22 = 2048;
          v23 = v10;
          v24 = 2048;
          v25 = [(MIBUMainController *)v8 state];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: Received command %ld at state %ld; resetting idle timer...", &v20, 0x20u);
        }

        [(MIBUMainController *)v8 _startIdleTimerForState:[(MIBUMainController *)v8 state]];
        goto LABEL_28;
      }

      [(MIBUMainController *)v8 _stopIdleTimer];
      v17 = [v6 payload];
      v13 = [v17 objectForKey:@"TimeStamp"];

      [(MIBUMainController *)v8 _setSystemTime:v13];
      v14 = [(MIBUMainController *)v8 operationFactory];
      v15 = [v14 buildOperationFromCode:2 andDelegate:v8];
      [(MIBUMainController *)v8 setOperation:v15];
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

      [(MIBUMainController *)v8 _stopIdleTimer];
      v12 = [v6 payload];
      v13 = [v12 objectForKey:@"TimeStamp"];

      [(MIBUMainController *)v8 _setSystemTime:v13];
      v14 = [(MIBUMainController *)v8 operationFactory];
      v15 = [v14 buildOperationFromCode:1 andDelegate:v8];
      [(MIBUMainController *)v8 setOperation:v15];
    }

    v18 = 2;
LABEL_27:
    [(MIBUMainController *)v8 _transitionToState:v18 error:0];
    goto LABEL_28;
  }

  if (v11 == 3)
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
    v21 = v8;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = [(MIBUMainController *)v8 state];
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: Nothing to do for cmd %lu at state %lu", &v20, 0x20u);
  }

LABEL_28:
  objc_sync_exit(v8);
}

- (void)didStopHeartbeat
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(MIBUMainController *)v2 state]== 4)
  {
    [(MIBUMainController *)v2 _transitionToState:5 error:0];
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
      sub_10005B8E8(v4, [(MIBUMainController *)v2 state], v3);
    }
  }

  objc_sync_exit(v2);
}

- (void)operationFinishedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B930();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MIBUMainController *)v5 operation];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ finished with error: %{public}@", &v8, 0x16u);
  }

  if ([(MIBUMainController *)v5 state]== 2)
  {
    [(MIBUMainController *)v5 _transitionToState:3 error:0];
  }

  objc_sync_exit(v5);
}

- (void)handleIdleTimer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 userInfo];
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

  [(MIBUMainController *)v5 _stopIdleTimer];
  v8 = [v6 intValue];
  if ([(MIBUMainController *)v5 state]!= v8)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B958();
    }

    v12 = qword_1000B84A0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MIBUMainController *)v5 state];
      v14 = [v6 intValue];
      *buf = 134218240;
      *v22 = v13;
      *&v22[8] = 1024;
      *&v22[10] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current state %lu != launch state %d, device is not idle", buf, 0x12u);
    }

    goto LABEL_17;
  }

  if ([v6 unsignedIntValue] == 3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B9F8();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 intValue];
      *buf = 67109376;
      *v22 = v10;
      *&v22[4] = 2048;
      *&v22[6] = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out in state %d, moving to state %lu", buf, 0x12u);
    }

    v11 = [(MIBUMainController *)v5 nfcController];
    [v11 terminate:0];

    [(MIBUMainController *)v5 _transitionToState:1 error:0];
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  if ([(MIBUMainController *)v5 state]== 5)
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
    v18 = [v6 intValue];
    *buf = 67109120;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cleaning up after idling in state: %d...", buf, 8u);
  }

  v20 = 0;
  [(MIBUMainController *)v5 _transitionToState:5 error:&v20];
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

    -[MIBUMainController _startIdleTimerForState:](v5, "_startIdleTimerForState:", [v6 intValue]);
  }

LABEL_18:

  objc_sync_exit(v5);
}

- (void)_start:(id *)a3
{
  self->_running = 1;
  v5 = [(MIBUMainController *)self operationFactory];
  v6 = [v5 buildCurrentOperationWithDelegate:self];
  [(MIBUMainController *)self setOperation:v6];

  v7 = [(MIBUMainController *)self operation];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(MIBUMainController *)self _transitionToState:v8 error:a3];
}

- (void)_transitionToState:(unint64_t)a3 error:(id *)a4
{
  if ([(MIBUMainController *)self state])
  {
    v7 = [(MIBUMainController *)self stateTransitionTable];
    v8 = [NSNumber numberWithUnsignedInteger:[(MIBUMainController *)self state]];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedInteger:a3];
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
    v43 = v14;
    v44 = 2048;
    v45 = [(MIBUMainController *)self state];
    v46 = 2048;
    v47 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: changing device state from %lu to %lu", buf, 0x20u);
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v26 = [(MIBUMainController *)self operation];

      if (v26)
      {
        v27 = [(MIBUMainController *)self operation];
        [v27 terminateNow];

        [(MIBUMainController *)self setOperation:0];
      }

      [(MIBUMainController *)self _acquireTransaction];
      v28 = [(MIBUMainController *)self nfcController];
      v41 = 0;
      [v28 start:&v41];
      v20 = v41;

      [(MIBUMainController *)self _startIdleTimerForState:1];
      v23 = [(MIBUMainController *)self deviceDelegate];
      [v23 enableCarrierMode];
LABEL_27:

      goto LABEL_33;
    }

    if (a3 != 2)
    {
      goto LABEL_28;
    }

    [(MIBUMainController *)self _stopIdleTimer];
    [(MIBUMainController *)self _acquirePowerAssertion];
    [(MIBUMainController *)self setDisableCarrierMode:0];
    v24 = [(MIBUMainController *)self operation];
    [v24 resume];

    goto LABEL_32;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        [(MIBUMainController *)self _stopIdleTimer];
        v16 = [(MIBUMainController *)self operation];

        if (v16)
        {
          v17 = [(MIBUMainController *)self operation];
          [v17 terminateNow];

          [(MIBUMainController *)self setOperation:0];
        }

        [(MIBUMainController *)self _releaseTransaction];
        [(MIBUMainController *)self _releasePowerAssertion];
        if ([(MIBUMainController *)self disableCarrierMode])
        {
          v18 = [(MIBUMainController *)self deviceDelegate];
          [v18 disableCarrierMode];
        }

        v19 = [(MIBUMainController *)self nfcController];
        v39 = 0;
        [v19 terminate:&v39];
        v20 = v39;

        if (![(MIBUMainController *)self shutDownReady])
        {
          goto LABEL_33;
        }

        v21 = [(MIBUMainController *)self deviceDelegate];
        [v21 removePowerLog];

        v22 = [(MIBUMainController *)self deviceDelegate];
        [v22 setShelfLifeMode];

        v23 = [(MIBUMainController *)self deviceDelegate];
        [v23 shutdown];
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

  v25 = [(MIBUMainController *)self nfcController];
  v40 = 0;
  [v25 start:&v40];
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
    v34 = [(MIBUMainController *)self state];
    *buf = 138543874;
    v43 = v32;
    v44 = 2048;
    v45 = v34;
    v46 = 2048;
    v47 = a3;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: state changed from %lu to %lu", buf, 0x20u);
  }

  [(MIBUMainController *)self setState:a3];
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
      v38 = [(MIBUMainController *)self state];
      *buf = 134218498;
      v43 = a3;
      v44 = 2048;
      v45 = v38;
      v46 = 2114;
      v47 = v20;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to transition to state: %ld; current device state is: %ld; error: %{public}@", buf, 0x20u);
    }
  }

LABEL_42:
  if (a4)
  {
    v36 = v20;
    *a4 = v20;
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

- (void)_startIdleTimerForState:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100026734;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_stopIdleTimer
{
  v3 = [(MIBUMainController *)self idleTimer];

  if (v3)
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

    v5 = [(MIBUMainController *)self idleTimer];
    [v5 invalidate];

    [(MIBUMainController *)self setIdleTimer:0];
  }
}

- (void)_acquireTransaction
{
  v3 = [(MIBUMainController *)self transaction];

  if (!v3)
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
      v7 = [(MIBUMainController *)self powerAssertionID];
      v9[0] = 67109120;
      v9[1] = v7;
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

- (void)_setSystemTime:(id)a3
{
  v4 = a3;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BF50();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v17 = 134217984;
    v18 = [v4 longValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting system time stamp: %lu", &v17, 0xCu);
  }

  v7 = [(MIBUMainController *)self deviceDelegate];
  v8 = [v7 setSystemTime:{objc_msgSend(v4, "longValue")}];

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