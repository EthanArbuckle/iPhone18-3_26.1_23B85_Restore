@interface ActiveWatchManager
- (ActiveWatchManager)initWithDelegate:(id)delegate activeDevice:(id)device;
- (ActiveWatchManagerDelegate)delegate;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (unsigned)wristState;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)invalidate;
- (void)pipe:(id)pipe didConnectToPeer:(id)peer;
- (void)pipe:(id)pipe didDisconnectFromPeer:(id)peer;
- (void)watchDidChangeWristState:(unsigned __int8)state;
@end

@implementation ActiveWatchManager

- (ActiveWatchManager)initWithDelegate:(id)delegate activeDevice:(id)device
{
  delegateCopy = delegate;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = ActiveWatchManager;
  v8 = [(ActiveWatchManager *)&v20 init];
  if (v8)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uUIDString = [deviceCopy UUIDString];
      *buf = 134218242;
      v22 = v8;
      v23 = 2112;
      v24 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Initializing (%p); Active device: (%@)", buf, 0x16u);
    }

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_deviceID, device);
    v12 = [CBCentralManager alloc];
    v13 = +[MagicSwitchEnabler sharedInstance];
    workQueue = [v13 workQueue];
    v15 = [v12 initWithDelegate:v8 queue:workQueue];
    centralManager = v8->_centralManager;
    v8->_centralManager = v15;

    v17 = [[BTPipeManager alloc] initWithDelegate:v8 isServer:0];
    pipeManager = v8->_pipeManager;
    v8->_pipeManager = v17;
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(ActiveWatchManager *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = ActiveWatchManager;
  [(ActiveWatchManager *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Invalidating (%p)", &v7, 0xCu);
    }

    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    if ([(ActiveWatchManager *)self isConnecting]|| [(ActiveWatchManager *)self isConnected])
    {
      [(ActiveWatchManager *)self disconnect];
    }

    [(MessageManager *)self->_messageManager invalidate];
    messageManager = self->_messageManager;
    self->_messageManager = 0;

    [(BTPipeManager *)self->_pipeManager invalidate];
    pipeManager = self->_pipeManager;
    self->_pipeManager = 0;

    [(CBCentralManager *)self->_centralManager setDelegate:0];
    centralManager = self->_centralManager;
    self->_centralManager = 0;
  }
}

- (BOOL)isConnected
{
  peripheral = self->_peripheral;
  if (peripheral)
  {
    LOBYTE(peripheral) = [(CBPeripheral *)peripheral state]== 2;
  }

  return peripheral;
}

- (unsigned)wristState
{
  isConnected = [(ActiveWatchManager *)self isConnected];
  if (isConnected)
  {
    LOBYTE(isConnected) = self->_wristState;
  }

  return isConnected;
}

- (BOOL)isConnecting
{
  peripheral = self->_peripheral;
  if (peripheral)
  {
    LOBYTE(peripheral) = [(CBPeripheral *)peripheral state]== 1;
  }

  return peripheral;
}

- (void)connect
{
  if ([(ActiveWatchManager *)self isConnecting])
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already connecting", &v19, 2u);
    }
  }

  if ([(ActiveWatchManager *)self isConnected])
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already connected", &v19, 2u);
    }
  }

  if ([(CBCentralManager *)self->_centralManager state]== 5)
  {
    if (self->_peripheral)
    {
      goto LABEL_13;
    }

    centralManager = self->_centralManager;
    deviceID = self->_deviceID;
    v6 = [NSArray arrayWithObjects:&deviceID count:1];
    v7 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v6];

    firstObject = [v7 firstObject];
    peripheral = self->_peripheral;
    self->_peripheral = firstObject;

    if (self->_peripheral)
    {
      v10 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_deviceID;
        v12 = v10;
        uUIDString = [(NSUUID *)v11 UUIDString];
        v19 = 138412290;
        v20 = uUIDString;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Successfully resolved active peripheral with identifier: (%@)", &v19, 0xCu);
      }
    }

    if (self->_peripheral)
    {
LABEL_13:
      v14 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_deviceID;
        v16 = v14;
        uUIDString2 = [(NSUUID *)v15 UUIDString];
        v19 = 138412290;
        v20 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Telling CoreBluetooth to connect to peripheral: (%@)", &v19, 0xCu);
      }

      [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];
    }

    else
    {
      v18 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Failed connecting for now: could not lookup peripheral", &v19, 2u);
      }
    }
  }
}

- (void)disconnect
{
  if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not connected or connecting", &v16, 2u);
    }
  }

  if (!self->_peripheral)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No peripheral", &v16, 2u);
    }
  }

  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    deviceID = self->_deviceID;
    v7 = v5;
    uUIDString = [(NSUUID *)deviceID UUIDString];
    v16 = 138412290;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Disconnecting from %@", &v16, 0xCu);
  }

  isConnected = [(ActiveWatchManager *)self isConnected];
  if (self->_peripheral)
  {
    v10 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      peripheral = self->_peripheral;
      v12 = v10;
      identifier = [(CBPeripheral *)peripheral identifier];
      uUIDString2 = [identifier UUIDString];
      v16 = 138412290;
      v17 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Telling CoreBluetooth to cancel connection to peripheral %@", &v16, 0xCu);
    }

    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:self->_peripheral];
  }

  if (isConnected)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained activeWatchDidChangeConnectionState];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (self->_centralManager != stateCopy)
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unknown central", &v12, 2u);
    }
  }

  state = [(CBCentralManager *)stateCopy state];
  v7 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = sub_100000EE8(state);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central state changed (%@)", &v12, 0xCu);
  }

  if (state == 5)
  {
    if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
    {
      [(ActiveWatchManager *)self connect];
    }
  }

  else
  {
    if (state <= 3)
    {
      peripheral = self->_peripheral;
      self->_peripheral = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained activeWatchDidChangeConnectionState];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (self->_centralManager != managerCopy)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown central", &v15, 2u);
    }
  }

  if (self->_peripheral != peripheralCopy)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unknown peripheral", &v15, 2u);
    }
  }

  v10 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    identifier = [(CBPeripheral *)peripheralCopy identifier];
    uUIDString = [identifier UUIDString];
    v15 = 138412290;
    v16 = uUIDString;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central did connect peripheral (%@)", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained activeWatchDidChangeConnectionState];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self->_centralManager != managerCopy)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown central", &v18, 2u);
    }
  }

  if (self->_peripheral != peripheralCopy)
  {
    v12 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown peripheral", &v18, 2u);
    }
  }

  v13 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [(CBPeripheral *)peripheralCopy identifier];
    uUIDString = [identifier UUIDString];
    localizedDescription = [errorCopy localizedDescription];
    v18 = 138412546;
    v19 = uUIDString;
    v20 = 2112;
    v21 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central did fail to connect peripheral (%@) with error (%@)", &v18, 0x16u);
  }

  if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
  {
    [(ActiveWatchManager *)self connect];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self->_centralManager != managerCopy)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown central", &v19, 2u);
    }
  }

  if (self->_peripheral != peripheralCopy)
  {
    v12 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown peripheral", &v19, 2u);
    }
  }

  v13 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [(CBPeripheral *)peripheralCopy identifier];
    uUIDString = [identifier UUIDString];
    localizedDescription = [errorCopy localizedDescription];
    v19 = 138412546;
    v20 = uUIDString;
    v21 = 2112;
    v22 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central manager did disconnect peripheral (%@) error (%@)", &v19, 0x16u);
  }

  if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
  {
    [(ActiveWatchManager *)self connect];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained activeWatchDidChangeConnectionState];
}

- (void)pipe:(id)pipe didConnectToPeer:(id)peer
{
  pipeCopy = pipe;
  peerCopy = peer;
  if ([peerCopy isEqual:self->_deviceID])
  {
    if (self->_messageManager)
    {
      v8 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Already has a message manager", &v14, 2u);
      }
    }

    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uUIDString = [peerCopy UUIDString];
      v14 = 138412290;
      v15 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Pipe did connect active Watch: (%@)", &v14, 0xCu);
    }

    v12 = [[MessageManager alloc] initWithDelegate:self pipe:pipeCopy];
    messageManager = self->_messageManager;
    self->_messageManager = v12;
  }
}

- (void)pipe:(id)pipe didDisconnectFromPeer:(id)peer
{
  peerCopy = peer;
  if ([peerCopy isEqual:self->_deviceID])
  {
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      uUIDString = [peerCopy UUIDString];
      v10 = 138412290;
      v11 = uUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Pipe did disconnect peer: (%@)", &v10, 0xCu);
    }

    [(MessageManager *)self->_messageManager invalidate];
    messageManager = self->_messageManager;
    self->_messageManager = 0;
  }
}

- (void)watchDidChangeWristState:(unsigned __int8)state
{
  stateCopy = state;
  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Active device has new wrist state: (%d)", v9, 8u);
  }

  wristState = self->_wristState;
  if (!self->_hasReceivedWristState || wristState != stateCopy)
  {
    self->_wristState = stateCopy;
    self->_hasReceivedWristState = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained activeWatchDidChangeWristStateWithPreviousWristState:wristState];
  }
}

- (ActiveWatchManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end