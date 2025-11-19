@interface MIBUShipUpdateMainController
+ (id)sharedInstance;
- (BOOL)_acquirePowerAssertion;
- (BOOL)isCommandAllowed:(id)a3;
- (MIBUDeviceStatus)deviceStatus;
- (MIBUShipUpdateMainController)init;
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
- (void)didConnect;
- (void)didDisconnect;
- (void)didHandleCommand:(id)a3 withError:(id)a4;
- (void)didInit;
- (void)didInvalidate;
- (void)handleIdleTimer:(id)a3;
- (void)operationFinishedWithError:(id)a3;
- (void)start:(id *)a3;
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

    v9 = [(MIBUShipUpdateMainController *)v3 _getStateTransitionTable];
    [(MIBUShipUpdateMainController *)v3 setStateTransitionTable:v9];

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

- (void)start:(id *)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003006C;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = a3;
  if (qword_1000B8428 != -1)
  {
    dispatch_once(&qword_1000B8428, v3);
  }
}

- (void)cleanup:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(MIBUShipUpdateMainController *)v4 state]!= 5)
  {
    [(MIBUShipUpdateMainController *)v4 _transitionToState:5 error:a3];
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

  objc_sync_exit(v4);
}

- (void)operationFinishedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005E43C();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MIBUShipUpdateMainController *)v5 operation];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ finished with error: %{public}@", &v8, 0x16u);
  }

  if ([(MIBUShipUpdateMainController *)v5 state]== 2)
  {
    [(MIBUShipUpdateMainController *)v5 _transitionToState:3 error:0];
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
    sub_10005E450();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Idle timer fired!", buf, 2u);
  }

  [(MIBUShipUpdateMainController *)v5 _stopIdleTimer];
  v8 = [v6 intValue];
  if ([(MIBUShipUpdateMainController *)v5 state]!= v8)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E464();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MIBUShipUpdateMainController *)v5 state];
      v12 = [v6 intValue];
      *buf = 134218240;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current state %lu != launch state %d, device is not idle", buf, 0x12u);
    }

    goto LABEL_13;
  }

  if ([v6 unsignedIntValue] == 1 || objc_msgSend(v6, "unsignedIntValue") == 3)
  {
    v9 = [(MIBUShipUpdateMainController *)v5 idleTimeoutTaskQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000306FC;
    v13[3] = &unk_100099480;
    v14 = v6;
    v15 = v5;
    dispatch_async(v9, v13);

    v10 = v14;
LABEL_13:
  }

  objc_sync_exit(v5);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MIBUDeviceStatus);
  [(MIBUDeviceStatus *)v3 setState:[(MIBUShipUpdateMainController *)v2 state]];
  v4 = [(MIBUShipUpdateMainController *)v2 deviceDelegate];
  v5 = [v4 getBatteryLevel];
  [(MIBUDeviceStatus *)v3 setBatteryLevel:v5];

  v6 = [(MIBUShipUpdateMainController *)v2 deviceDelegate];
  v7 = [v6 thermalDetails];
  [(MIBUDeviceStatus *)v3 setThermalDetails:v7];

  v8 = [(MIBUShipUpdateMainController *)v2 deviceDelegate];
  v9 = [v8 batteryDetails];
  [(MIBUDeviceStatus *)v3 setBatteryDetails:v9];

  v10 = [(MIBUShipUpdateMainController *)v2 operation];

  if (v10)
  {
    v11 = [(MIBUShipUpdateMainController *)v2 operation];
    -[MIBUDeviceStatus setOperation:](v3, "setOperation:", [v11 opCode]);

    v12 = [(MIBUShipUpdateMainController *)v2 operation];
    v13 = [v12 error];
    [(MIBUDeviceStatus *)v3 setOperationError:v13];

    v14 = [(MIBUShipUpdateMainController *)v2 operation];
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

- (BOOL)isCommandAllowed:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13[0] = &off_1000A83E8;
  v13[1] = &off_1000A8400;
  v14[0] = &__NSArray0__struct;
  v14[1] = &off_1000A9B60;
  v13[2] = &off_1000A84C0;
  v13[3] = &off_1000A84D8;
  v14[2] = &off_1000A9B78;
  v14[3] = &off_1000A9B90;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v7 = [NSNumber numberWithUnsignedInteger:[(MIBUShipUpdateMainController *)v5 state]];
  v8 = [v6 objectForKey:v7];

  v9 = [v8 containsObject:v4];
  if ((v9 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005E500();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005E528(v4, v12, [(MIBUShipUpdateMainController *)v5 state], v10);
    }
  }

  objc_sync_exit(v5);
  return v9;
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
    sub_10005E580(v8, v7, v9);
    goto LABEL_24;
  }

  v10 = [(MIBUShipUpdateMainController *)v8 state];
  if (v10 == 1)
  {
    if (v9)
    {
      if (v9 == 14)
      {
        v16 = [(MIBUShipUpdateMainController *)v8 operationFactory];
        v17 = [v16 buildOperationFromCode:4 andDelegate:v8];
        [(MIBUShipUpdateMainController *)v8 setOperation:v17];

        v18 = [(MIBUShipUpdateMainController *)v8 operation];
        v19 = [v6 payload];
        v20 = [v19 objectForKey:@"HostPort"];
        [v18 setHostPort:v20];

        v21 = [v6 payload];
        v22 = [v21 objectForKey:@"GroupAddress"];
        [v18 setGroupAddress:v22];

        v23 = [v6 payload];
        v24 = [v23 objectForKey:@"GroupPort"];
        [v18 setGroupPort:v24];

        v25 = [v6 payload];
        v26 = [v25 objectForKey:@"InterfaceName"];
        [v18 setInterfaceName:v26];

        v27 = [v6 payload];
        v28 = [v27 objectForKey:@"ServiceName"];
        [v18 setServiceName:v28];

        v29 = [v6 payload];
        v30 = [v29 objectForKey:@"RQBasicParameters"];
        [v18 setRqBasicParameters:v30];

        v31 = [v6 payload];
        v32 = [v31 objectForKey:@"RQExtendedParameters"];
        [v18 setRqExtendedParameters:v32];

        v33 = [v6 payload];
        v34 = [v33 objectForKey:@"RQThreshold"];
        [v18 setRqThreshold:v34];

        v35 = [v6 payload];
        v36 = [v35 objectForKey:@"TCPAddress"];
        [v18 setTcpAddress:v36];

        v37 = [v6 payload];
        v38 = [v37 objectForKey:@"TCPPort"];
        [v18 setTcpPort:v38];

        v39 = [v6 payload];
        v40 = [v39 objectForKey:@"TCPPingInterval"];
        [v18 setTcpPingInterval:v40];

        v41 = [v6 payload];
        v42 = [v41 objectForKey:@"OperationTimeout"];
        [v18 setOperationTimeout:v42];

        v43 = [v6 payload];
        v44 = [v43 objectForKey:@"EnableRateAdapter"];

        if (v44)
        {
          v45 = [v6 payload];
          v46 = [v45 objectForKey:@"EnableRateAdapter"];
          [v18 setEnableRateAdapter:{objc_msgSend(v46, "BOOLValue")}];
        }

        v47 = [v6 payload];
        v48 = [v47 objectForKey:@"CountryCode"];
        [v18 setCountryCode:v48];

        v49 = [v6 payload];
        v50 = [v49 objectForKey:@"ChannelName"];
        [v18 setChannelName:v50];

        v51 = [v6 payload];
        v52 = [v51 objectForKey:@"Band"];
        [v18 setBand:v52];

        v53 = [v6 payload];
        v54 = [v53 objectForKey:@"Bandwidth"];
        [v18 setBandwidth:v54];

        v55 = [v6 payload];
        v56 = [v55 objectForKey:@"WiFiSSID"];
        [v18 setWifiSSID:v56];

        v57 = [v6 payload];
        v58 = [v57 objectForKey:@"WiFiChannel"];
        [v18 setWifiChannel:v58];

        v11 = 2;
        goto LABEL_23;
      }

      if (v9 == 13)
      {
        [(MIBUShipUpdateMainController *)v8 _stopIdleTimer];
        v12 = [v6 payload];
        v13 = [v12 objectForKey:@"TimeStamp"];

        [(MIBUShipUpdateMainController *)v8 _setSystemTime:v13];
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_10005E67C();
      }

      v14 = qword_1000B84A0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v59 = 138412802;
        v60 = v8;
        v61 = 2048;
        v62 = v9;
        v63 = 2048;
        v64 = [(MIBUShipUpdateMainController *)v8 state];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Received command %ld at state %ld; resetting idle timer...", &v59, 0x20u);
      }

      [(MIBUShipUpdateMainController *)v8 _startIdleTimerForState:[(MIBUShipUpdateMainController *)v8 state]];
    }
  }

  else if (v10 == 3)
  {
    if (v9 == 12)
    {
      v11 = 1;
LABEL_23:
      [(MIBUShipUpdateMainController *)v8 _transitionToState:v11 error:0];
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
      v60 = v8;
      v61 = 2048;
      v62 = v9;
      v63 = 2048;
      v64 = [(MIBUShipUpdateMainController *)v8 state];
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@: Nothing to do for cmd %lu at state %lu", &v59, 0x20u);
    }
  }

LABEL_24:
  objc_sync_exit(v8);
}

- (void)_start:(id *)a3
{
  self->_running = 1;
  v5 = [(MIBUShipUpdateMainController *)self operationFactory];
  v6 = [v5 buildCurrentOperationWithDelegate:self];
  [(MIBUShipUpdateMainController *)self setOperation:v6];

  v7 = [(MIBUShipUpdateMainController *)self operation];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(MIBUShipUpdateMainController *)self _transitionToState:v8 error:a3];
}

- (void)_transitionToState:(unint64_t)a3 error:(id *)a4
{
  if ([(MIBUShipUpdateMainController *)self state])
  {
    v7 = [(MIBUShipUpdateMainController *)self stateTransitionTable];
    v8 = [NSNumber numberWithUnsignedInteger:[(MIBUShipUpdateMainController *)self state]];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedInteger:a3];
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
    v68 = v14;
    v69 = 2048;
    v70 = [(MIBUShipUpdateMainController *)self state];
    v71 = 2048;
    v72 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: changing device state from %lu to %lu", buf, 0x20u);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v31 = [(MIBUShipUpdateMainController *)self btController];
      v65 = 0;
      [v31 reset:&v65];
      v32 = v65;

      v33 = [(MIBUShipUpdateMainController *)self btController];
      v64 = v32;
      [v33 start:&v64];
      v22 = v64;

      v34 = [(MIBUShipUpdateMainController *)self operation];
      if (v34)
      {
        v35 = v34;
        v36 = [(MIBUShipUpdateMainController *)self operation];
        v37 = [v36 error];

        if (v37)
        {
          v29 = self;
          v30 = 3;
LABEL_29:
          [(MIBUShipUpdateMainController *)v29 _startIdleTimerForState:v30];
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
        v40 = [v39 enterLPMAfterUpdateComplete];

        if (v40)
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

          v42 = [(MIBUShipUpdateMainController *)self deviceDelegate];
          v43 = [v42 shutdownInLPM];

          if (v43)
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

      v52 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [v52 setShelfLifeMode];

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

      v24 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [v24 shutdown];
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_18;
      }

      [(MIBUShipUpdateMainController *)self _stopIdleTimer];
      v19 = [(MIBUShipUpdateMainController *)self operation];

      if (v19)
      {
        v20 = [(MIBUShipUpdateMainController *)self operation];
        [v20 terminateNow];

        [(MIBUShipUpdateMainController *)self setOperation:0];
      }

      [(MIBUShipUpdateMainController *)self _releaseTransaction];
      [(MIBUShipUpdateMainController *)self _releasePowerAssertion];
      v21 = [(MIBUShipUpdateMainController *)self btController];
      v63 = 0;
      [v21 terminate:&v63];
      v22 = v63;

      v23 = [(MIBUShipUpdateMainController *)self deviceDelegate];
      [v23 removePowerLog];

      v24 = +[MIBUDataCollector sharedInstance];
      [v24 clear];
    }

    goto LABEL_51;
  }

  if (a3 == 1)
  {
    v26 = [(MIBUShipUpdateMainController *)self operation];

    if (v26)
    {
      v27 = [(MIBUShipUpdateMainController *)self operation];
      [v27 terminateNow];

      [(MIBUShipUpdateMainController *)self setOperation:0];
    }

    [(MIBUShipUpdateMainController *)self _acquireTransaction];
    v28 = [(MIBUShipUpdateMainController *)self btController];
    v66 = 0;
    [v28 start:&v66];
    v22 = v66;

    v29 = self;
    v30 = 1;
    goto LABEL_29;
  }

  if (a3 != 2)
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
  v16 = [(MIBUShipUpdateMainController *)self btController];
  [v16 setShouldCloseSession:1];

  [(MIBUShipUpdateMainController *)self _acquirePowerAssertion];
  v17 = +[MIBUDataCollector sharedInstance];
  [v17 start];

  v18 = [(MIBUShipUpdateMainController *)self operation];
  [v18 resume];

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
    v58 = [(MIBUShipUpdateMainController *)self state];
    *buf = 138543874;
    v68 = v56;
    v69 = 2048;
    v70 = v58;
    v71 = 2048;
    v72 = a3;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: state changed from %lu to %lu", buf, 0x20u);
  }

  [(MIBUShipUpdateMainController *)self setState:a3];
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
      v62 = [(MIBUShipUpdateMainController *)self state];
      *buf = 134218498;
      v68 = a3;
      v69 = 2048;
      v70 = v62;
      v71 = 2114;
      v72 = v22;
      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Failed to transition to state: %ld; current device state is: %ld; error: %{public}@", buf, 0x20u);
    }
  }

LABEL_60:
  if (a4)
  {
    v60 = v22;
    *a4 = v22;
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

- (void)_startIdleTimerForState:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100032500;
  v3[3] = &unk_10009C198;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_stopIdleTimer
{
  v3 = [(MIBUShipUpdateMainController *)self idleTimer];

  if (v3)
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

    v5 = [(MIBUShipUpdateMainController *)self idleTimer];
    [v5 invalidate];

    [(MIBUShipUpdateMainController *)self setIdleTimer:0];
  }
}

- (void)_acquireTransaction
{
  v3 = [(MIBUShipUpdateMainController *)self transaction];

  if (!v3)
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
      v7 = [(MIBUShipUpdateMainController *)self powerAssertionID];
      v9[0] = 67109120;
      v9[1] = v7;
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

- (void)_setSystemTime:(id)a3
{
  v4 = a3;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005EC10();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v17 = 134217984;
    v18 = [v4 longValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting system time stamp: %lu", &v17, 0xCu);
  }

  v7 = [(MIBUShipUpdateMainController *)self deviceDelegate];
  v8 = [v7 setSystemTime:{objc_msgSend(v4, "longValue")}];

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