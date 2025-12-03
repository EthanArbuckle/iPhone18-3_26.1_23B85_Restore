@interface NRBluetoothPairingManager
- (NRBluetoothPairingManager)init;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheralManagerDidUpdateState:(id)state;
@end

@implementation NRBluetoothPairingManager

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v19 = 694;
    v20 = unpairCopy;
    v17 = "";
    v18 = "[NRBluetoothPairingManager pairingAgent:peerDidUnpair:]";
    _NRLogWithArgs();
  }

  v7 = [(CBPairingAgent *)agentCopy delegate:v17];
  if (self)
  {
    pairingAgent = self->_pairingAgent;
  }

  else
  {
    pairingAgent = 0;
  }

  v9 = pairingAgent;
  if (v9 == agentCopy && v7 && self && (v10 = self->_activePairer) != 0)
  {
    v11 = v7[9];
    activePairer = self->_activePairer;

    if (v11 == activePairer)
    {
      if (self->_isUnpairing)
      {
        identifier = [unpairCopy identifier];
        sub_10001F9C4(self, 1, identifier);

        v14 = objc_opt_self();
        v15 = v14;
        if (v14)
        {
          v16 = *(v14 + 56);
          *(v14 + 56) = 0;
        }
      }

      else
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs();
        }
      }
    }
  }

  else
  {
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v22 = pairingCopy;
    v23 = errorCopy;
    v21 = 680;
    v19 = "";
    v20 = "[NRBluetoothPairingManager pairingAgent:peerDidFailToCompletePairing:error:]";
    _NRLogWithArgs();
  }

  v10 = [(CBPairingAgent *)agentCopy delegate:v19];
  if (self)
  {
    pairingAgent = self->_pairingAgent;
  }

  else
  {
    pairingAgent = 0;
  }

  identifier = pairingAgent;
  if (identifier == agentCopy)
  {
    if (v10)
    {
      if (self)
      {
        v13 = self->_activePairer;
        if (v13)
        {
          v14 = v10[9];
          activePairer = self->_activePairer;

          if (v14 != activePairer)
          {
            goto LABEL_18;
          }

          v16 = objc_opt_self();
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 56);
            *(v16 + 56) = 0;
          }

          identifier = [pairingCopy identifier];
          sub_10001F9C4(self, 0, identifier);
        }
      }
    }
  }

LABEL_18:
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v17 = 661;
    v18 = pairingCopy;
    v15 = "";
    v16 = "[NRBluetoothPairingManager pairingAgent:peerDidCompletePairing:]";
    _NRLogWithArgs();
  }

  v7 = [(CBPairingAgent *)agentCopy delegate:v15];
  if (self)
  {
    pairingAgent = self->_pairingAgent;
  }

  else
  {
    pairingAgent = 0;
  }

  v9 = pairingAgent;
  if (v9 == agentCopy && v7 && self && (v10 = self->_activePairer) != 0)
  {
    v11 = v7[9];
    activePairer = self->_activePairer;

    if (v11 == activePairer)
    {
      if (self->_isPairing)
      {
        identifier = [pairingCopy identifier];
        pairedPeerBluetoothUUID = self->_pairedPeerBluetoothUUID;
        self->_pairedPeerBluetoothUUID = identifier;

        sub_10001F9C4(self, 1, self->_pairedPeerBluetoothUUID);
      }

      else
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs();
        }
      }
    }
  }

  else
  {
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v26 = 624;
    typeCopy2 = type;
    v24 = "";
    v25 = "[NRBluetoothPairingManager pairingAgent:peerDidRequestPairing:type:passkey:]";
    _NRLogWithArgs();
  }

  if (self && self->_centralManager)
  {
    if (self->_pairingAgent != agentCopy)
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        _NRLogWithArgs();
      }

      goto LABEL_40;
    }

    if (type)
    {
      if (type == 5)
      {
        identifier = [pairingCopy identifier];
        v14 = sub_100168BE8(NRDLocalDevice, identifier, 0);

        if (v14)
        {
          ephemeralBluetoothOutOfBandKey = v14->_ephemeralBluetoothOutOfBandKey;
        }

        else
        {
          ephemeralBluetoothOutOfBandKey = 0;
        }

        v16 = ephemeralBluetoothOutOfBandKey;

        if (v16)
        {
          v28 = CBPairingAgentPairingDataOOBTKKey;
          if (v14)
          {
            v17 = v14->_ephemeralBluetoothOutOfBandKey;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          v29 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          [(CBPairingAgent *)agentCopy respondToPairingRequest:pairingCopy type:5 accept:1 data:v19];
        }

        else
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_39;
          }

          v18 = sub_100020970();
          _NRLogWithArgs();
        }

LABEL_39:
        goto LABEL_40;
      }
    }

    else if (_NRIsAppleInternal())
    {
      v20 = agentCopy;
      v21 = pairingCopy;
      typeCopy3 = 0;
      v23 = 1;
LABEL_33:
      [(CBPairingAgent *)v20 respondToPairingRequest:v21 type:typeCopy3 accept:v23 data:0, v24, v25, v26, typeCopy2];
      goto LABEL_40;
    }

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v26 = 651;
      typeCopy2 = type;
      v24 = "";
      v25 = "[NRBluetoothPairingManager pairingAgent:peerDidRequestPairing:type:passkey:]";
      _NRLogWithArgs();
    }

    v20 = agentCopy;
    v21 = pairingCopy;
    typeCopy3 = type;
    v23 = 0;
    goto LABEL_33;
  }

LABEL_40:
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (self)
  {
    v5 = self->_peripheralManager;
    if (v5)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == stateCopy && self->_isPairing)
      {
        if ([(CBPeripheralManager *)stateCopy state]== 5)
        {
          v7 = self->_pairingAgent;
          if (v7)
          {
          }

          else if (self->_isPeripheralRole)
          {
            v9 = self->_peripheralManager;
            sharedPairingAgent = [(CBPeripheralManager *)v9 sharedPairingAgent];
            pairingAgent = self->_pairingAgent;
            self->_pairingAgent = sharedPairingAgent;

            [(CBPairingAgent *)self->_pairingAgent setDelegate:self];
          }

          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            _NRLogWithArgs();
          }

          v12 = self->_peripheralManager;
          v21 = CBAdvertisementDataServiceUUIDsKey;
          v13 = v12;
          v14 = [CBUUID UUIDWithString:@"fd74"];
          v20 = v14;
          v15 = [NSArray arrayWithObjects:&v20 count:1];
          v22 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [(CBPeripheralManager *)v13 startAdvertising:v16];

          sub_1000218D4(self);
        }

        else
        {
          if (self->_isPeripheralRole)
          {
            [(CBPairingAgent *)self->_pairingAgent setDelegate:0];
            v8 = self->_pairingAgent;
            self->_pairingAgent = 0;
          }

          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            v19 = 615;
            v17 = "";
            v18 = "[NRBluetoothPairingManager peripheralManagerDidUpdateState:]";
            _NRLogWithArgs();
          }

          [(CBPeripheralManager *)self->_peripheralManager stopAdvertising:v17];
        }
      }
    }
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    v10 = self->_centralManager;
    if (v10)
    {
      centralManager = self->_centralManager;

      if (centralManager == managerCopy)
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          v15 = 546;
          v16 = peripheralCopy;
          v13 = "";
          v14 = "[NRBluetoothPairingManager centralManager:didDisconnectPeripheral:error:]";
          _NRLogWithArgs();
        }

        [(NSMutableSet *)self->_peripherals removeObject:peripheralCopy, v13, v14, v15, v16];
        sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
        if (([sharedPairingAgent isPeerPaired:peripheralCopy] & 1) == 0)
        {
          [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
        }
      }
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    v10 = self->_centralManager;
    if (v10)
    {
      centralManager = self->_centralManager;

      if (centralManager == managerCopy)
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs();
        }

        if (self->_peripheralReconnectCounter > 4)
        {
          identifier = [peripheralCopy identifier];
          sub_10001F9C4(self, 0, identifier);
        }

        else
        {
          [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
          ++self->_peripheralReconnectCounter;
        }
      }
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (self)
  {
    v8 = self->_centralManager;
    if (v8)
    {
      centralManager = self->_centralManager;

      if (centralManager == managerCopy)
      {
        [(NSMutableSet *)self->_peripherals addObject:peripheralCopy];
        [(CBCentralManager *)self->_centralManager stopScan];
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          v20 = 492;
          v21 = peripheralCopy;
          v18 = "";
          v19 = "[NRBluetoothPairingManager centralManager:didConnectPeripheral:]";
          _NRLogWithArgs();
        }

        v10 = self->_centralManager;
        sharedPairingAgent = [(CBCentralManager *)v10 sharedPairingAgent];

        identifier = [peripheralCopy identifier];
        v13 = sub_10001FEDC(self, identifier);

        if (v13)
        {
          v14 = v13[3];
          if (v14 == 5 || !v14 && (_NRIsAppleInternal() & 1) != 0)
          {
            v15 = v14 == 5;
            [sharedPairingAgent setOOBPairingEnabled:v15 forPeer:{peripheralCopy, v18, v19, v20, v21}];
            objc_storeStrong(&self->_pairingAgent, sharedPairingAgent);
            [sharedPairingAgent setDelegate:self];
            v23[0] = CBPairingOptionsUseMITMAuthentication;
            v16 = [NSNumber numberWithBool:v15];
            v23[1] = CBPairingOptionsDistributeIRK;
            v24[0] = v16;
            v24[1] = &__kCFBooleanTrue;
            v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
            [sharedPairingAgent pairPeer:peripheralCopy options:v17];

            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            if (!_NRLogIsLevelEnabled())
            {
              goto LABEL_31;
            }

            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }
          }

          else
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            if (!_NRLogIsLevelEnabled())
            {
              goto LABEL_31;
            }

            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            v22 = v13[3];
          }
        }

        else
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_31;
          }

          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }
        }

        _NRLogWithArgs();
LABEL_31:
      }
    }
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v18 = 471;
    v19 = peripheralCopy;
    v16 = "";
    v17 = "[NRBluetoothPairingManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:]";
    _NRLogWithArgs();
  }

  identifier = [peripheralCopy identifier];
  v14 = sub_10001FEDC(self, identifier);

  if (v14)
  {
    if (self)
    {
      [(NSMutableSet *)self->_peripherals addObject:peripheralCopy];
      centralManager = self->_centralManager;
    }

    else
    {
      [0 addObject:peripheralCopy];
      centralManager = 0;
    }

    [(CBCentralManager *)centralManager connectPeripheral:peripheralCopy options:0];
  }

  else
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      _NRLogWithArgs();
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (self)
  {
    v5 = self->_centralManager;
    if (v5)
    {
      centralManager = self->_centralManager;

      if (centralManager == stateCopy && (self->_isPairing || self->_isUnpairing))
      {
        state = [(CBCentralManager *)stateCopy state];
        if (state == 5)
        {
          if (self->_isUnpairing)
          {
            sub_1000209C4(self);
          }

          else
          {
            v8 = [CBUUID UUIDWithString:@"fd74"];
            v9 = v8;
            if (!self->_isPeripheralRole)
            {
              v10 = self->_centralManager;
              v13 = v8;
              v11 = v10;
              v12 = [NSArray arrayWithObjects:&v13 count:1];
              [(CBCentralManager *)v11 scanForPeripheralsWithServices:v12 options:0];

              if (qword_100228EF8 != -1)
              {
                dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228EF8 != -1)
                {
                  dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                }

                _NRLogWithArgs();
              }

              sub_1000218D4(self);
            }
          }
        }

        else if (state <= 3)
        {
          sub_100020CD4(self);
        }
      }
    }
  }
}

- (NRBluetoothPairingManager)init
{
  v14.receiver = self;
  v14.super_class = NRBluetoothPairingManager;
  v2 = [(NRBluetoothPairingManager *)&v14 init];
  if (!v2)
  {
    v9 = sub_100020970();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_100020970();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "[NRBluetoothPairingManager init]";
    sub_100020970();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100003490();
  queue = v3->_queue;
  v3->_queue = v4;

  v6 = objc_alloc_init(NSMutableArray);
  enqueuedPairers = v3->_enqueuedPairers;
  v3->_enqueuedPairers = v6;

  return v3;
}

@end