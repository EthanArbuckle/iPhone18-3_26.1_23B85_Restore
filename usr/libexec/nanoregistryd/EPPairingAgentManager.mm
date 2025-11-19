@interface EPPairingAgentManager
+ (id)stringFromCBManagerState:(int64_t)a3;
- (EPPairingAgentManager)init;
- (id)newAgentWithDelegate:(id)a3 fromCentral:(BOOL)a4;
- (id)newCentralManagerWithDelegate:(id)a3;
- (id)newPeripheralManagerWithDelegate:(id)a3;
- (void)createResource;
- (void)destroyResource;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)resetStashVariables;
- (void)update;
@end

@implementation EPPairingAgentManager

- (EPPairingAgentManager)init
{
  v3 = +[EPFactory queue];
  v6.receiver = self;
  v6.super_class = EPPairingAgentManager;
  v4 = [(EPResourceManager *)&v6 initWithQueue:v3];

  return v4;
}

- (id)newAgentWithDelegate:(id)a3 fromCentral:(BOOL)a4
{
  self->_fromCentral = a4;
  v5 = [(EPResourceManager *)self newResourceWithDelegate:a3];
  if (!self->_fromCentral && self->_stashedPeer)
  {
    v6 = sub_1000A98C0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found stashed peer, retrying", v11, 2u);
      }
    }

    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    [(EPPairingAgentManager *)self pairingAgent:self->_agent peerDidRequestPairing:self->_stashedPeer type:self->_stashedType passkey:self->_stashedPassKey];
    [(EPPairingAgentManager *)self resetStashVariables];
  }

  return v5;
}

- (id)newCentralManagerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = +[EPFactory sharedFactory];
  v5 = [v4 newCentralManagerWithDelegate:v3];

  return v5;
}

- (id)newPeripheralManagerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = +[EPFactory sharedFactory];
  v5 = [v4 newPeripheralManagerWithDelegate:v3];

  return v5;
}

- (void)createResource
{
  v6.receiver = self;
  v6.super_class = EPPairingAgentManager;
  [(EPResourceManager *)&v6 createResource];
  if (*&self->_peripheralManagerForAgent == 0)
  {
    if (self->_fromCentral)
    {
      v3 = [(EPPairingAgentManager *)self newCentralManagerWithDelegate:self];
      centralManagerForAgent = self->_centralManagerForAgent;
      self->_centralManagerForAgent = v3;
    }

    else
    {
      v5 = [(EPPairingAgentManager *)self newPeripheralManagerWithDelegate:self];
      centralManagerForAgent = self->_peripheralManagerForAgent;
      self->_peripheralManagerForAgent = v5;
    }
  }
}

- (void)destroyResource
{
  v10.receiver = self;
  v10.super_class = EPPairingAgentManager;
  [(EPResourceManager *)&v10 destroyResource];
  if (self->_agent)
  {
    v3 = sub_1000A98C0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A98C0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dellocating sharedPairingAgent", v9, 2u);
      }
    }

    agent = self->_agent;
    self->_agent = 0;
  }

  centralManagerForAgent = self->_centralManagerForAgent;
  self->_centralManagerForAgent = 0;

  peripheralManagerForAgent = self->_peripheralManagerForAgent;
  self->_peripheralManagerForAgent = 0;
}

- (void)update
{
  peripheralManagerForAgent = self->_peripheralManagerForAgent;
  if (!peripheralManagerForAgent)
  {
    peripheralManagerForAgent = self->_centralManagerForAgent;
  }

  v4 = peripheralManagerForAgent;
  if ([v4 availability] != 1)
  {
    if ([v4 availability] == 2)
    {
      v8 = [v4 error];
      [(EPResourceManager *)self setAvailability:2 withError:v8];

      if (!self->_agent)
      {
        goto LABEL_26;
      }

      v9 = sub_1000A98C0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 0;
          v12 = &v22;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dellocating sharedPairingAgent", v12, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      [(EPResourceManager *)self setAvailability:0 withError:0];
      if (!self->_agent)
      {
        goto LABEL_26;
      }

      v13 = sub_1000A98C0();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0;
          v12 = &v21;
          goto LABEL_16;
        }

LABEL_17:
      }
    }

    agent = self->_agent;
    self->_agent = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (!self->_agent)
  {
    v5 = [(EPPeripheralManager *)self->_peripheralManagerForAgent manager];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(EPCentralManager *)self->_centralManagerForAgent manager];
    }

    agent = v7;

    v16 = sub_1000A98C0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = sub_1000A98C0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Retrieving sharedPairingAgent", buf, 2u);
      }
    }

    v19 = [(CBPairingAgent *)agent sharedPairingAgent];
    v20 = self->_agent;
    self->_agent = v19;

    [(CBPairingAgent *)self->_agent setDelegate:self];
    [(EPResourceManager *)self setAvailability:1 withError:0];
    goto LABEL_25;
  }

LABEL_26:
}

+ (id)stringFromCBManagerState:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return @"CBManagerStateUnknown";
  }

  else
  {
    return *(&off_100179D28 + a3 - 1);
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v5 = a4;
  v6 = sub_1000A98C0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000A98C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v10 = [v9 UUIDString];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidUnpair:%@ received", buf, 0xCu);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EF978;
  v12[3] = &unk_100175998;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v12];
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v5 = a4;
  v6 = sub_1000A98C0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000A98C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v10 = [v9 UUIDString];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidCompletePairing:%@ received", buf, 0xCu);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EFAF8;
  v12[3] = &unk_100175998;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v12];
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_1000A98C0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000A98C0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 identifier];
      v13 = [v12 UUIDString];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidFailToCompletePairing:%@ received", buf, 0xCu);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000EFC9C;
  v16[3] = &unk_1001759C0;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v14 = v8;
  v15 = v7;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v16];
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_1000A98C0();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = sub_1000A98C0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 identifier];
      v17 = [v16 UUIDString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CoreBluetooth pairingAgent:peerDidRequestPairing:%@ received", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x2020000000;
  v37 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000F0060;
  v30[3] = &unk_100179D08;
  p_buf = &buf;
  v30[4] = self;
  v18 = v11;
  v31 = v18;
  v34 = a5;
  v19 = v12;
  v32 = v19;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v30];
  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v20 = sub_1000A98C0();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = sub_1000A98C0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to handle pairing request.  Stashing to try again later", &v29, 2u);
      }
    }

    objc_storeStrong(&self->_stashedPeer, a4);
    self->_stashedType = a5;
    objc_storeStrong(&self->_stashedPassKey, a6);
    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    objc_initWeak(&v29, self);
    v24 = +[EPFactory queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000F00F0;
    v27[3] = &unk_100175EB8;
    objc_copyWeak(&v28, &v29);
    v25 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.migration.missedbtrequest" delay:1 gracePeriod:v24 waking:v27 handlerQueue:60.0 handlerBlock:0.0];
    v26 = self->_timer;
    self->_timer = v25;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v29);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)resetStashVariables
{
  stashedPeer = self->_stashedPeer;
  self->_stashedPeer = 0;

  stashedPassKey = self->_stashedPassKey;
  self->_stashedPassKey = 0;

  self->_stashedType = 0;
}

@end