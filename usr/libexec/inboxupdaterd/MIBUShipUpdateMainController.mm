@interface MIBUShipUpdateMainController
+ (id)sharedInstance;
- (BOOL)_acquirePowerAssertion;
- (BOOL)isCommandAllowed:(id)allowed;
- (MIBUDeviceStatus)deviceStatus;
- (MIBUShipUpdateMainController)init;
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
- (void)didConnect;
- (void)didDisconnect;
- (void)didHandleCommand:(id)command withError:(id)error;
- (void)didInit;
- (void)didInvalidate;
- (void)handleIdleTimer:(id)timer;
- (void)operationFinishedWithError:(id)error;
- (void)start:(id *)start;
@end

@implementation MIBUShipUpdateMainController

- (MIBUShipUpdateMainController)init
{
  v11.receiver = self;
  v11.super_class = MIBUShipUpdateMainController;
  v2 = [(MIBUShipUpdateMainController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUShipUpdateMainController *)v2 setState:0];
    [(MIBUShipUpdateMainController *)v3 setOperation:0];
    [(MIBUShipUpdateMainController *)v3 setNfcController:0];
    [(MIBUShipUpdateMainController *)v3 setIdleTimer:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("IdleTimeoutTask", v4);
    [(MIBUShipUpdateMainController *)v3 setIdleTimeoutTaskQueue:v5];

    v6 = [[MIBUBTController alloc] initWithDelegate:v3];
    [(MIBUShipUpdateMainController *)v3 setBtController:v6];

    v7 = +[MIBUDeviceController sharedInstance];
    [(MIBUShipUpdateMainController *)v3 setDeviceDelegate:v7];

    v8 = +[MIBUOperationFactory sharedInstance];
    [(MIBUShipUpdateMainController *)v3 setOperationFactory:v8];

    _getStateTransitionTable = [(MIBUShipUpdateMainController *)v3 _getStateTransitionTable];
    [(MIBUShipUpdateMainController *)v3 setStateTransitionTable:_getStateTransitionTable];

    [(MIBUShipUpdateMainController *)v3 setTransaction:0];
    [(MIBUShipUpdateMainController *)v3 setPowerAssertionID:0];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000B8418 != -1)
  {
    sub_10005E414();
  }

  v3 = qword_1000B8420;

  return v3;
}

- (void)start:(id *)start
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003006C;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = start;
  if (qword_1000B8428 != -1)
  {
    dispatch_once(&qword_1000B8428, v3);
  }
}

- (void)cleanup:(id *)cleanup
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MIBUShipUpdateMainController *)selfCopy state]!= 5)
  {
    [(MIBUShipUpdateMainController *)selfCopy _transitionToState:5 error:cleanup];
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005E428();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "main controller cleaned up", v6, 2u);
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
    sub_10005E43C();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operation = [(MIBUShipUpdateMainController *)selfCopy operation];
    v8 = 138543618;
    v9 = operation;
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ finished with error: %{public}@", &v8, 0x16u);
  }

  if ([(MIBUShipUpdateMainController *)selfCopy state]== 2)
  {
    [(MIBUShipUpdateMainController *)selfCopy _transitionToState:3 error:0];
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
    sub_10005E450();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Idle timer fired!", buf, 2u);
  }

  [(MIBUShipUpdateMainController *)selfCopy _stopIdleTimer];
  intValue = [userInfo intValue];
  if ([(MIBUShipUpdateMainController *)selfCopy state]!= intValue)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E464();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      state = [(MIBUShipUpdateMainController *)selfCopy state];
      intValue2 = [userInfo intValue];
      *buf = 134218240;
      v17 = state;
      v18 = 1024;
      v19 = intValue2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current state %lu != launch state %d, device is not idle", buf, 0x12u);
    }

    goto LABEL_13;
  }

  if ([userInfo unsignedIntValue] == 1 || objc_msgSend(userInfo, "unsignedIntValue") == 3)
  {
    idleTimeoutTaskQueue = [(MIBUShipUpdateMainController *)selfCopy idleTimeoutTaskQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000306FC;
    v13[3] = &unk_100099480;
    v14 = userInfo;
    v15 = selfCopy;
    dispatch_async(idleTimeoutTaskQueue, v13);

    v10 = v14;
LABEL_13:
  }

  objc_sync_exit(selfCopy);
}

- (void)didInit
{
  v2 = +[MIBUDataCollector sharedInstance];
  [v2 addKeyEvent:@"SSUBluetoothInit"];
}

- (void)didConnect
{
  v2 = +[MIBUDataCollector sharedInstance];
  [v2 addKeyEvent:@"SSUBluetoothStart"];
}

- (void)didDisconnect
{
  v2 = +[MIBUDataCollector sharedInstance];
  [v2 addKeyEvent:@"SSUBluetoothEnd"];
}

- (void)didInvalidate
{
  v2 = +[MIBUDataCollector sharedInstance];
  [v2 addKeyEvent:@"SSUBluetoothInvalidate"];
}

- (MIBUDeviceStatus)deviceStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MIBUDeviceStatus);
  [(MIBUDeviceStatus *)v3 setState:[(MIBUShipUpdateMainController *)selfCopy state]];
  deviceDelegate = [(MIBUShipUpdateMainController *)selfCopy deviceDelegate];
  getBatteryLevel = [deviceDelegate getBatteryLevel];
  [(MIBUDeviceStatus *)v3 setBatteryLevel:getBatteryLevel];

  deviceDelegate2 = [(MIBUShipUpdateMainController *)selfCopy deviceDelegate];
  thermalDetails = [deviceDelegate2 thermalDetails];
  [(MIBUDeviceStatus *)v3 setThermalDetails:thermalDetails];

  deviceDelegate3 = [(MIBUShipUpdateMainController *)selfCopy deviceDelegate];
  batteryDetails = [deviceDelegate3 batteryDetails];
  [(MIBUDeviceStatus *)v3 setBatteryDetails:batteryDetails];

  operation = [(MIBUShipUpdateMainController *)selfCopy operation];

  if (operation)
  {
    operation2 = [(MIBUShipUpdateMainController *)selfCopy operation];
    -[MIBUDeviceStatus setOperation:](v3, "setOperation:", [operation2 opCode]);

    operation3 = [(MIBUShipUpdateMainController *)selfCopy operation];
    error = [operation3 error];
    [(MIBUDeviceStatus *)v3 setOperationError:error];

    operation4 = [(MIBUShipUpdateMainController *)selfCopy operation];
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

- (BOOL)isCommandAllowed:(id)allowed
{
  allowedCopy = allowed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13[0] = &off_1000A83E8;
  v13[1] = &off_1000A8400;
  v14[0] = &__NSArray0__struct;
  v14[1] = &off_1000A9B60;
  v13[2] = &off_1000A84C0;
  v13[3] = &off_1000A84D8;
  v14[2] = &off_1000A9B78;
  v14[3] = &off_1000A9B90;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v7 = [NSNumber numberWithUnsignedInteger:[(MIBUShipUpdateMainController *)selfCopy state]];
  v8 = [v6 objectForKey:v7];

  v9 = [v8 containsObject:allowedCopy];
  if ((v9 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E500();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005E528(allowedCopy, v12, [(MIBUShipUpdateMainController *)selfCopy state], v10);
    }
  }

  objc_sync_exit(selfCopy);
  return v9;
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
    sub_10005E580(selfCopy, errorCopy, code);
    goto LABEL_24;
  }

  state = [(MIBUShipUpdateMainController *)selfCopy state];
  if (state == 1)
  {
    if (code)
    {
      if (code == 14)
      {
        operationFactory = [(MIBUShipUpdateMainController *)selfCopy operationFactory];
        v17 = [operationFactory buildOperationFromCode:4 andDelegate:selfCopy];
        [(MIBUShipUpdateMainController *)selfCopy setOperation:v17];

        operation = [(MIBUShipUpdateMainController *)selfCopy operation];
        payload = [commandCopy payload];
        v20 = [payload objectForKey:@"HostPort"];
        [operation setHostPort:v20];

        payload2 = [commandCopy payload];
        v22 = [payload2 objectForKey:@"GroupAddress"];
        [operation setGroupAddress:v22];

        payload3 = [commandCopy payload];
        v24 = [payload3 objectForKey:@"GroupPort"];
        [operation setGroupPort:v24];

        payload4 = [commandCopy payload];
        v26 = [payload4 objectForKey:@"InterfaceName"];
        [operation setInterfaceName:v26];

        payload5 = [commandCopy payload];
        v28 = [payload5 objectForKey:@"ServiceName"];
        [operation setServiceName:v28];

        payload6 = [commandCopy payload];
        v30 = [payload6 objectForKey:@"RQBasicParameters"];
        [operation setRqBasicParameters:v30];

        payload7 = [commandCopy payload];
        v32 = [payload7 objectForKey:@"RQExtendedParameters"];
        [operation setRqExtendedParameters:v32];

        payload8 = [commandCopy payload];
        v34 = [payload8 objectForKey:@"RQThreshold"];
        [operation setRqThreshold:v34];

        payload9 = [commandCopy payload];
        v36 = [payload9 objectForKey:@"TCPAddress"];
        [operation setTcpAddress:v36];

        payload10 = [commandCopy payload];
        v38 = [payload10 objectForKey:@"TCPPort"];
        [operation setTcpPort:v38];

        payload11 = [commandCopy payload];
        v40 = [payload11 objectForKey:@"TCPPingInterval"];
        [operation setTcpPingInterval:v40];

        payload12 = [commandCopy payload];
        v42 = [payload12 objectForKey:@"OperationTimeout"];
        [operation setOperationTimeout:v42];

        payload13 = [commandCopy payload];
        v44 = [payload13 objectForKey:@"EnableRateAdapter"];

        if (v44)
        {
          payload14 = [commandCopy payload];
          v46 = [payload14 objectForKey:@"EnableRateAdapter"];
          [operation setEnableRateAdapter:{objc_msgSend(v46, "BOOLValue")}];
        }

        payload15 = [commandCopy payload];
        v48 = [payload15 objectForKey:@"CountryCode"];
        [operation setCountryCode:v48];

        payload16 = [commandCopy payload];
        v50 = [payload16 objectForKey:@"ChannelName"];
        [operation setChannelName:v50];

        payload17 = [commandCopy payload];
        v52 = [payload17 objectForKey:@"Band"];
        [operation setBand:v52];

        payload18 = [commandCopy payload];
        v54 = [payload18 objectForKey:@"Bandwidth"];
        [operation setBandwidth:v54];

        payload19 = [commandCopy payload];
        v56 = [payload19 objectForKey:@"WiFiSSID"];
        [operation setWifiSSID:v56];

        payload20 = [commandCopy payload];
        v58 = [payload20 objectForKey:@"WiFiChannel"];
        [operation setWifiChannel:v58];

        v11 = 2;
        goto LABEL_23;
      }

      if (code == 13)
      {
        [(MIBUShipUpdateMainController *)selfCopy _stopIdleTimer];
        payload21 = [commandCopy payload];
        v13 = [payload21 objectForKey:@"TimeStamp"];

        [(MIBUShipUpdateMainController *)selfCopy _setSystemTime:v13];
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E67C();
      }

      v14 = qword_1000B84A0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v59 = 138412802;
        v60 = selfCopy;
        v61 = 2048;
        v62 = code;
        v63 = 2048;
        state2 = [(MIBUShipUpdateMainController *)selfCopy state];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Received command %ld at state %ld; resetting idle timer...", &v59, 0x20u);
      }

      [(MIBUShipUpdateMainController *)selfCopy _startIdleTimerForState:[(MIBUShipUpdateMainController *)selfCopy state]];
    }
  }

  else if (state == 3)
  {
    if (code == 12)
    {
      v11 = 1;
LABEL_23:
      [(MIBUShipUpdateMainController *)selfCopy _transitionToState:v11 error:0];
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E690();
    }

    v15 = qword_1000B84A0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v59 = 138412802;
      v60 = selfCopy;
      v61 = 2048;
      v62 = code;
      v63 = 2048;
      state2 = [(MIBUShipUpdateMainController *)selfCopy state];
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@: Nothing to do for cmd %lu at state %lu", &v59, 0x20u);
    }
  }

LABEL_24:
  objc_sync_exit(selfCopy);
}

- (void)_start:(id *)_start
{
  self->_running = 1;
  operationFactory = [(MIBUShipUpdateMainController *)self operationFactory];
  v6 = [operationFactory buildCurrentOperationWithDelegate:self];
  [(MIBUShipUpdateMainController *)self setOperation:v6];

  operation = [(MIBUShipUpdateMainController *)self operation];

  if (operation)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(MIBUShipUpdateMainController *)self _transitionToState:v8 error:_start];
}

- (void)_transitionToState:(unint64_t)state error:(id *)error
{
  if ([(MIBUShipUpdateMainController *)self state])
  {
    stateTransitionTable = [(MIBUShipUpdateMainController *)self stateTransitionTable];
    v8 = [NSNumber numberWithUnsignedInteger:[(MIBUShipUpdateMainController *)self state]];
    v9 = [stateTransitionTable objectForKey:v8];

    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedInteger:state];
      v11 = [v9 containsObject:v10];

      if (v11)
      {

        goto LABEL_5;
      }

      sub_10005E6A4(self);
    }

    else
    {
      sub_10005E784(self);
    }

    v22 = 0;
    goto LABEL_60;
  }

LABEL_5:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005E864();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = v14;
    *buf = 138543874;
    stateCopy3 = v14;
    v69 = 2048;
    state = [(MIBUShipUpdateMainController *)self state];
    v71 = 2048;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: changing device state from %lu to %lu", buf, 0x20u);
  }

  if (state > 2)
  {
    if (state == 3)
    {
      btController = [(MIBUShipUpdateMainController *)self btController];
      v65 = 0;
      [btController reset:&v65];
      v32 = v65;

      btController2 = [(MIBUShipUpdateMainController *)self btController];
      v64 = v32;
      [btController2 start:&v64];
      v22 = v64;

      operation = [(MIBUShipUpdateMainController *)self operation];
      if (operation)
      {
        v35 = operation;
        operation2 = [(MIBUShipUpdateMainController *)self operation];
        error = [operation2 error];

        if (error)
        {
          selfCopy2 = self;
          v30 = 3;
LABEL_29:
          [(MIBUShipUpdateMainController *)selfCopy2 _startIdleTimerForState:v30];
          goto LABEL_51;
        }
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E878();
      }

      v38 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Operation is successful.", buf, 2u);
      }

      if (os_variant_has_internal_content())
      {
        v39 = +[MIBUTestPreferences sharedInstance];
        enterLPMAfterUpdateComplete = [v39 enterLPMAfterUpdateComplete];

        if (enterLPMAfterUpdateComplete)
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_10005E8A0();
          }

          v41 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Putting device to low power mode per configuration.", buf, 2u);
          }

          deviceDelegate = [(MIBUShipUpdateMainController *)self deviceDelegate];
          shutdownInLPM = [deviceDelegate shutdownInLPM];

          if (shutdownInLPM)
          {
            goto LABEL_51;
          }

          if (qword_1000B84A8[0] != -1)
          {
            sub_10005E8C8();
          }

          v44 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
          {
            sub_10005E8F0(v44, v45, v46, v47, v48, v49, v50, v51);
          }
        }
      }

      deviceDelegate2 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [deviceDelegate2 setShelfLifeMode];

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E928();
      }

      v53 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Shutting down device (no longer wakeable).", buf, 2u);
      }

      deviceDelegate3 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [deviceDelegate3 shutdown];
    }

    else
    {
      if (state != 5)
      {
        goto LABEL_18;
      }

      [(MIBUShipUpdateMainController *)self _stopIdleTimer];
      operation3 = [(MIBUShipUpdateMainController *)self operation];

      if (operation3)
      {
        operation4 = [(MIBUShipUpdateMainController *)self operation];
        [operation4 terminateNow];

        [(MIBUShipUpdateMainController *)self setOperation:0];
      }

      [(MIBUShipUpdateMainController *)self _releaseTransaction];
      [(MIBUShipUpdateMainController *)self _releasePowerAssertion];
      btController3 = [(MIBUShipUpdateMainController *)self btController];
      v63 = 0;
      [btController3 terminate:&v63];
      v22 = v63;

      deviceDelegate4 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [deviceDelegate4 removePowerLog];

      deviceDelegate3 = +[MIBUDataCollector sharedInstance];
      [deviceDelegate3 clear];
    }

    goto LABEL_51;
  }

  if (state == 1)
  {
    operation5 = [(MIBUShipUpdateMainController *)self operation];

    if (operation5)
    {
      operation6 = [(MIBUShipUpdateMainController *)self operation];
      [operation6 terminateNow];

      [(MIBUShipUpdateMainController *)self setOperation:0];
    }

    [(MIBUShipUpdateMainController *)self _acquireTransaction];
    btController4 = [(MIBUShipUpdateMainController *)self btController];
    v66 = 0;
    [btController4 start:&v66];
    v22 = v66;

    selfCopy2 = self;
    v30 = 1;
    goto LABEL_29;
  }

  if (state != 2)
  {
LABEL_18:
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E950();
    }

    v25 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005BC1C(v25, self);
    }

    goto LABEL_22;
  }

  [(MIBUShipUpdateMainController *)self _stopIdleTimer];
  btController5 = [(MIBUShipUpdateMainController *)self btController];
  [btController5 setShouldCloseSession:1];

  [(MIBUShipUpdateMainController *)self _acquirePowerAssertion];
  v17 = +[MIBUDataCollector sharedInstance];
  [v17 start];

  operation7 = [(MIBUShipUpdateMainController *)self operation];
  [operation7 resume];

LABEL_22:
  v22 = 0;
LABEL_51:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005E978();
  }

  v54 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v55 = v54;
    v56 = objc_opt_class();
    v57 = v56;
    state2 = [(MIBUShipUpdateMainController *)self state];
    *buf = 138543874;
    stateCopy3 = v56;
    v69 = 2048;
    state = state2;
    v71 = 2048;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: state changed from %lu to %lu", buf, 0x20u);
  }

  [(MIBUShipUpdateMainController *)self setState:state];
  if (v22)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E9A0();
    }

    v59 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      v61 = v59;
      state3 = [(MIBUShipUpdateMainController *)self state];
      *buf = 134218498;
      stateCopy3 = state;
      v69 = 2048;
      state = state3;
      v71 = 2114;
      stateCopy2 = v22;
      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Failed to transition to state: %ld; current device state is: %ld; error: %{public}@", buf, 0x20u);
    }
  }

LABEL_60:
  if (error)
  {
    v60 = v22;
    *error = v22;
  }
}

- (id)_getStateTransitionTable
{
  v4[0] = &off_1000A83E8;
  v4[1] = &off_1000A8400;
  v5[0] = &__NSArray0__struct;
  v5[1] = &off_1000A9BA8;
  v4[2] = &off_1000A84C0;
  v4[3] = &off_1000A84D8;
  v5[2] = &off_1000A9BC0;
  v5[3] = &off_1000A9BD8;
  v4[4] = &off_1000A84F0;
  v5[4] = &__NSArray0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (void)_startIdleTimerForState:(unint64_t)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100032500;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = state;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_stopIdleTimer
{
  idleTimer = [(MIBUShipUpdateMainController *)self idleTimer];

  if (idleTimer)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E9DC();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Idle Timer...", v6, 2u);
    }

    idleTimer2 = [(MIBUShipUpdateMainController *)self idleTimer];
    [idleTimer2 invalidate];

    [(MIBUShipUpdateMainController *)self setIdleTimer:0];
  }
}

- (void)_acquireTransaction
{
  transaction = [(MIBUShipUpdateMainController *)self transaction];

  if (!transaction)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E9F0();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring transaction...", v6, 2u);
    }

    v5 = os_transaction_create();
    [(MIBUShipUpdateMainController *)self setTransaction:v5];
  }
}

- (void)_releaseTransaction
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005EA04();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing transaction...", v4, 2u);
  }

  [(MIBUShipUpdateMainController *)self setTransaction:0];
}

- (BOOL)_acquirePowerAssertion
{
  if ([(MIBUShipUpdateMainController *)self powerAssertionID])
  {
    return 1;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005EA18();
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
      sub_10005EB04();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      powerAssertionID = [(MIBUShipUpdateMainController *)self powerAssertionID];
      v9[0] = 67109120;
      v9[1] = powerAssertionID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Acquired power assertion ID: %u", v9, 8u);
    }

    return 1;
  }

  sub_10005EA2C(qword_1000B84A8[0] == -1, v4, self);
  return 0;
}

- (void)_releasePowerAssertion
{
  if ([(MIBUShipUpdateMainController *)self powerAssertionID])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005EB2C();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v6[0] = 67109120;
      v6[1] = [(MIBUShipUpdateMainController *)self powerAssertionID];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing power assertion ID: %u ...", v6, 8u);
    }

    v5 = IOPMAssertionRelease([(MIBUShipUpdateMainController *)self powerAssertionID]);
    [(MIBUShipUpdateMainController *)self setPowerAssertionID:0];
    if (v5)
    {
      sub_10005EB40(v5);
    }
  }
}

- (void)_setSystemTime:(id)time
{
  timeCopy = time;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005EC10();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v17 = 134217984;
    longValue = [timeCopy longValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting system time stamp: %lu", &v17, 0xCu);
  }

  deviceDelegate = [(MIBUShipUpdateMainController *)self deviceDelegate];
  v8 = [deviceDelegate setSystemTime:{objc_msgSend(timeCopy, "longValue")}];

  if ((v8 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005EC24();
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005BF8C(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

@end