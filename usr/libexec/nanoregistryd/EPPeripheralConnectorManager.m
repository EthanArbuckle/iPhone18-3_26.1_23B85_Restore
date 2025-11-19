@interface EPPeripheralConnectorManager
+ (id)stringForEPPeripheralConnectorState:(unint64_t)a3;
- (EPPeripheralConnectorManager)initWithUuid:(id)a3;
- (void)cancelPeripheralConnection:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4;
- (void)clearConnectPersistenceTimer;
- (void)createResource;
- (void)destroyResource;
- (void)peripheralWasInvalidated;
- (void)setConnectPersistenceTimer;
- (void)update;
@end

@implementation EPPeripheralConnectorManager

- (EPPeripheralConnectorManager)initWithUuid:(id)a3
{
  v5 = a3;
  v6 = +[EPFactory queue];
  v7 = [(EPResourceManager *)self initWithQueue:v6];

  if (v7)
  {
    keyExistsAndHasValidFormat = 0;
    objc_storeStrong(&v7->_uuid, a3);
    v8 = CFPreferencesGetAppIntegerValue(@"connectPersistenceTimerDurationMilliseconds", @"com.apple.NanoRegistry", &keyExistsAndHasValidFormat) / 1000.0;
    if (!keyExistsAndHasValidFormat)
    {
      v8 = 1.0;
    }

    v7->_connectPersistenceTimerDuration = v8;
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(NSUUID *)v7->_uuid UUIDString];
        connectPersistenceTimerDuration = v7->_connectPersistenceTimerDuration;
        *buf = 134218498;
        v17 = v7;
        v18 = 2112;
        v19 = v12;
        v20 = 2048;
        v21 = connectPersistenceTimerDuration;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Managing BT peripheral %@ connect persistence timer %1.2f", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (void)peripheralWasInvalidated
{
  self->_state = 0;
  v3 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097A18;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)createResource
{
  [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
  v3.receiver = self;
  v3.super_class = EPPeripheralConnectorManager;
  [(EPResourceManager *)&v3 createResource];
  [(EPPeripheralConnectorManager *)self update];
}

- (void)destroyResource
{
  [(EPPeripheralConnectorManager *)self setConnectPersistenceTimer];
  v3.receiver = self;
  v3.super_class = EPPeripheralConnectorManager;
  [(EPResourceManager *)&v3 destroyResource];
  [(EPPeripheralConnectorManager *)self update];
}

- (void)setConnectPersistenceTimer
{
  forceDisconnect = self->_forceDisconnect;
  v4 = sub_1000A98C0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (forceDisconnect)
  {
    if (v5)
    {
      v6 = sub_1000A98C0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: No more demand for connection. _forceDisconnect set. Skipping setting timer.", buf, 0xCu);
      }
    }

    [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
    v7 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100097DB0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    if (v5)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        connectPersistenceTimerDuration = self->_connectPersistenceTimerDuration;
        *buf = 134218240;
        v18 = self;
        v19 = 2048;
        v20 = connectPersistenceTimerDuration;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: No more demand for connection. Starting connection persistence timer %1.0f seconds.", buf, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self clearConnectPersistenceTimer];
    v10 = +[EPFactory queue];
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);

    v12 = dispatch_time(0, (self->_connectPersistenceTimerDuration * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097DB8;
    v15[3] = &unk_100175660;
    v15[4] = self;
    dispatch_source_set_event_handler(v11, v15);
    dispatch_resume(v11);
    connectPersistenceTimer = self->_connectPersistenceTimer;
    self->_connectPersistenceTimer = v11;
    v14 = v11;
  }
}

- (void)clearConnectPersistenceTimer
{
  if (self->_connectPersistenceTimer)
  {
    v3 = sub_1000A98C0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A98C0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Clearing persistence timer!", &v7, 0xCu);
      }
    }

    dispatch_source_cancel(self->_connectPersistenceTimer);
    connectPersistenceTimer = self->_connectPersistenceTimer;
    self->_connectPersistenceTimer = 0;
  }
}

+ (id)stringForEPPeripheralConnectorState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"EPPeripheralConnectorState unknown";
  }

  else
  {
    return *(&off_100178748 + a3);
  }
}

- (void)update
{
  v3 = [objc_opt_class() stringForEPPeripheralConnectorState:self->_state];
  v4 = sub_1000A98C0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000A98C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      captivePeripheral = self->_captivePeripheral;
      v8 = [EPCentralManagerManager stringForCBPeripheralState:[(CBPeripheral *)captivePeripheral state]];
      v9 = [(EPResourceManager *)self needsResource];
      connectPersistenceTimer = self->_connectPersistenceTimer;
      v11 = "NO";
      *buf = 134219266;
      v62 = self;
      if (v9)
      {
        v11 = "YES";
      }

      v63 = 2112;
      v64 = v3;
      v12 = connectPersistenceTimer == 0;
      v65 = 2048;
      v13 = "NOT SET";
      v66 = captivePeripheral;
      if (!v12)
      {
        v13 = "RUNNING";
      }

      v67 = 2112;
      v68 = v8;
      v69 = 2080;
      v70 = v11;
      v71 = 2080;
      v72 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: state machine state: %@ peripheral[%p] CBPeripheralState: %@ connectionNeeded: %s connectionTimer: %s", buf, 0x3Eu);
    }
  }

  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      [(EPResourceManager *)self setAvailability:0 withError:0];
      if (![(EPPeripheralConnectorManager *)self needsResourceWithExpiry]|| [(EPResource *)self->_central availability]!= 1 || [(CBPeripheral *)self->_captivePeripheral state]== CBPeripheralStateDisconnected)
      {
        self->_state = 0;
        v31 = +[EPFactory queue];
        v16 = v31;
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100098994;
        v57[3] = &unk_100175660;
        v57[4] = self;
        v32 = v57;
        goto LABEL_41;
      }

      if ([(CBPeripheral *)self->_captivePeripheral state]== 2)
      {
        v33 = sub_1000A98C0();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

        if (v34)
        {
          v35 = sub_1000A98C0();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [(CBPeripheral *)self->_captivePeripheral identifier];
            v37 = [v36 UUIDString];
            *buf = 134218242;
            v62 = self;
            v63 = 2112;
            v64 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: peripheral %@ has become connected", buf, 0x16u);
          }
        }

        self->_state = 3;
        v31 = +[EPFactory queue];
        v16 = v31;
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_10009899C;
        v56[3] = &unk_100175660;
        v56[4] = self;
        v32 = v56;
        goto LABEL_41;
      }
    }

    else if (state == 3)
    {
      if (![(EPPeripheralConnectorManager *)self needsResourceWithExpiry]|| [(EPResource *)self->_central availability]!= 1)
      {
        self->_state = 0;
        v31 = +[EPFactory queue];
        v16 = v31;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000989A4;
        block[3] = &unk_100175660;
        block[4] = self;
        v32 = block;
        goto LABEL_41;
      }

      if ([(CBPeripheral *)self->_captivePeripheral state]!= 2)
      {
        v42 = sub_1000A98C0();
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

        if (v43)
        {
          v44 = sub_1000A98C0();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [(CBPeripheral *)self->_captivePeripheral identifier];
            v46 = [v45 UUIDString];
            *buf = 134218242;
            v62 = self;
            v63 = 2112;
            v64 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: peripheral %@ has become disconnected", buf, 0x16u);
          }
        }

        [(EPResourceManager *)self setAvailability:0 withError:0];
        self->_state = 0;
        v31 = +[EPFactory queue];
        v16 = v31;
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1000989AC;
        v54[3] = &unk_100175660;
        v54[4] = self;
        v32 = v54;
        goto LABEL_41;
      }

      [(EPResourceManager *)self setAvailability:1 withError:0];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(EPResourceManager *)self setAvailability:0 withError:0];
      if ([(EPResource *)self->_central availability]== 1 && [(EPPeripheralConnectorManager *)self needsResourceWithExpiry])
      {
        v15 = [(EPDiscoverer *)self->_discoverer devices];
        v16 = [v15 objectForKeyedSubscript:self->_uuid];

        if (v16)
        {
          v17 = [v16 peer];
          v18 = self->_captivePeripheral;
          self->_captivePeripheral = v17;

          discoverer = self->_discoverer;
          self->_discoverer = 0;
        }

        if (self->_captivePeripheral && [(EPResource *)self->_central availability]== 1)
        {
          v47 = sub_1000A98C0();
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

          if (v48)
          {
            v49 = sub_1000A98C0();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [(CBPeripheral *)self->_captivePeripheral identifier];
              v50 = [v53 UUIDString];
              *buf = 134218242;
              v62 = self;
              v63 = 2112;
              v64 = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Calling CoreBluetooth CBCentralManager connectPeripheral:options: %@", buf, 0x16u);
            }
          }

          v51 = [(EPCentralManager *)self->_central manager];
          [v51 connectPeripheral:self->_captivePeripheral options:0];

          self->_state = 2;
          v52 = +[EPFactory queue];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10009898C;
          v58[3] = &unk_100175660;
          v58[4] = self;
          dispatch_async(v52, v58);
        }

        goto LABEL_42;
      }

      self->_state = 0;
      v31 = +[EPFactory queue];
      v16 = v31;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100098984;
      v59[3] = &unk_100175660;
      v59[4] = self;
      v32 = v59;
LABEL_41:
      dispatch_async(v31, v32);
LABEL_42:
    }
  }

  else
  {
    v20 = [(EPPeripheralConnectorManager *)self needsResourceWithExpiry];
    v21 = self->_captivePeripheral;
    if (v20)
    {
      self->_captivePeripheral = 0;

      objc_storeStrong(&self->me, self);
      if (!self->_discoverer)
      {
        v22 = +[EPFactory sharedFactory];
        [v22 setDiscovererShouldScanForProximity:0];

        v23 = +[EPFactory sharedFactory];
        v24 = [v23 newDiscovererWithDelegate:self];
        v25 = self->_discoverer;
        self->_discoverer = v24;
      }

      central = self->_central;
      if (!central)
      {
        v27 = +[EPFactory sharedFactory];
        v28 = [v27 agentManager];
        v29 = [v28 newCentralManagerWithDelegate:self];
        v30 = self->_central;
        self->_central = v29;

        central = self->_central;
      }

      if ([(EPResource *)central availability]== 1)
      {
        self->_state = 1;
        v31 = +[EPFactory queue];
        v16 = v31;
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_10009897C;
        v60[3] = &unk_100175660;
        v60[4] = self;
        v32 = v60;
        goto LABEL_41;
      }
    }

    else
    {
      if ([(CBPeripheral *)v21 state]== 2 || [(CBPeripheral *)self->_captivePeripheral state]== 1)
      {
        [(EPPeripheralConnectorManager *)self cancelPeripheralConnection:self->_captivePeripheral];
      }

      [(EPResourceManager *)self setAvailability:0 withError:0];
      v38 = self->_central;
      self->_central = 0;

      v39 = self->_discoverer;
      self->_discoverer = 0;

      v40 = self->_captivePeripheral;
      self->_captivePeripheral = 0;

      me = self->me;
      self->me = 0;
    }
  }

  self->_lastState = state;
}

- (void)cancelPeripheralConnection:(id)a3
{
  v4 = a3;
  if ([(EPResource *)self->_central availability]== 1)
  {
    v5 = sub_1000A98C0();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = sub_1000A98C0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_forceDisconnect)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        *buf = 134218242;
        v15 = self;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Calling CoreBluetooth CBCentralManager cancelPeripheralConnection:force:%@", buf, 0x16u);
      }
    }

    v9 = [(EPCentralManager *)self->_central manager];
    v10 = [NSNumber numberWithBool:self->_forceDisconnect, CBCancelPeripheralConnectionOptionForce];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v9 cancelPeripheralConnection:v4 options:v11];
  }

  self->_forceDisconnect = 0;
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = [a4 identifier];
  v6 = [v5 isEqual:self->_uuid];

  if (v6)
  {
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NSUUID *)self->_uuid UUIDString];
        v11 = 134218242;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didConnectPeripheral: for peripheral %@", &v11, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v6 = [a4 identifier];
  v7 = [v6 isEqual:self->_uuid];

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NSUUID *)self->_uuid UUIDString];
        v12 = 134218242;
        v13 = self;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didDisconnectPeripheral: for peripheral %@", &v12, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4
{
  v5 = [a4 identifier];
  v6 = [v5 isEqual:self->_uuid];

  if (v6)
  {
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NSUUID *)self->_uuid UUIDString];
        v11 = 134218242;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: received centralManager:didUpdatePeripheralConnectionState: for peripheral %@", &v11, 0x16u);
      }
    }

    [(EPPeripheralConnectorManager *)self update];
  }
}

@end