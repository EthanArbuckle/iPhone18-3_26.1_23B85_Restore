@interface ActiveWatchManager
- (ActiveWatchManager)initWithDelegate:(id)a3 activeDevice:(id)a4;
- (ActiveWatchManagerDelegate)delegate;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (unsigned)wristState;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)invalidate;
- (void)pipe:(id)a3 didConnectToPeer:(id)a4;
- (void)pipe:(id)a3 didDisconnectFromPeer:(id)a4;
- (void)watchDidChangeWristState:(unsigned __int8)a3;
@end

@implementation ActiveWatchManager

- (ActiveWatchManager)initWithDelegate:(id)a3 activeDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ActiveWatchManager;
  v8 = [(ActiveWatchManager *)&v20 init];
  if (v8)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v7 UUIDString];
      *buf = 134218242;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Initializing (%p); Active device: (%@)", buf, 0x16u);
    }

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_deviceID, a4);
    v12 = [CBCentralManager alloc];
    v13 = +[MagicSwitchEnabler sharedInstance];
    v14 = [v13 workQueue];
    v15 = [v12 initWithDelegate:v8 queue:v14];
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
      v8 = self;
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
  v3 = [(ActiveWatchManager *)self isConnected];
  if (v3)
  {
    LOBYTE(v3) = self->_wristState;
  }

  return v3;
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

    v8 = [v7 firstObject];
    peripheral = self->_peripheral;
    self->_peripheral = v8;

    if (self->_peripheral)
    {
      v10 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_deviceID;
        v12 = v10;
        v13 = [(NSUUID *)v11 UUIDString];
        v19 = 138412290;
        v20 = v13;
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
        v17 = [(NSUUID *)v15 UUIDString];
        v19 = 138412290;
        v20 = v17;
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
    v8 = [(NSUUID *)deviceID UUIDString];
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Disconnecting from %@", &v16, 0xCu);
  }

  v9 = [(ActiveWatchManager *)self isConnected];
  if (self->_peripheral)
  {
    v10 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      peripheral = self->_peripheral;
      v12 = v10;
      v13 = [(CBPeripheral *)peripheral identifier];
      v14 = [v13 UUIDString];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Telling CoreBluetooth to cancel connection to peripheral %@", &v16, 0xCu);
    }

    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:self->_peripheral];
  }

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained activeWatchDidChangeConnectionState];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  if (self->_centralManager != v4)
  {
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unknown central", &v12, 2u);
    }
  }

  v6 = [(CBCentralManager *)v4 state];
  v7 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = sub_100000EE8(v6);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central state changed (%@)", &v12, 0xCu);
  }

  if (v6 == 5)
  {
    if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
    {
      [(ActiveWatchManager *)self connect];
    }
  }

  else
  {
    if (v6 <= 3)
    {
      peripheral = self->_peripheral;
      self->_peripheral = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained activeWatchDidChangeConnectionState];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_centralManager != v6)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown central", &v15, 2u);
    }
  }

  if (self->_peripheral != v7)
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
    v12 = [(CBPeripheral *)v7 identifier];
    v13 = [v12 UUIDString];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central did connect peripheral (%@)", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained activeWatchDidChangeConnectionState];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_centralManager != v8)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown central", &v18, 2u);
    }
  }

  if (self->_peripheral != v9)
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
    v15 = [(CBPeripheral *)v9 identifier];
    v16 = [v15 UUIDString];
    v17 = [v10 localizedDescription];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central did fail to connect peripheral (%@) with error (%@)", &v18, 0x16u);
  }

  if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
  {
    [(ActiveWatchManager *)self connect];
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_centralManager != v8)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown central", &v19, 2u);
    }
  }

  if (self->_peripheral != v9)
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
    v15 = [(CBPeripheral *)v9 identifier];
    v16 = [v15 UUIDString];
    v17 = [v10 localizedDescription];
    v19 = 138412546;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Central manager did disconnect peripheral (%@) error (%@)", &v19, 0x16u);
  }

  if (![(ActiveWatchManager *)self isConnecting]&& ![(ActiveWatchManager *)self isConnected])
  {
    [(ActiveWatchManager *)self connect];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained activeWatchDidChangeConnectionState];
}

- (void)pipe:(id)a3 didConnectToPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:self->_deviceID])
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
      v11 = [v7 UUIDString];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Pipe did connect active Watch: (%@)", &v14, 0xCu);
    }

    v12 = [[MessageManager alloc] initWithDelegate:self pipe:v6];
    messageManager = self->_messageManager;
    self->_messageManager = v12;
  }
}

- (void)pipe:(id)a3 didDisconnectFromPeer:(id)a4
{
  v5 = a4;
  if ([v5 isEqual:self->_deviceID])
  {
    v6 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 UUIDString];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Pipe did disconnect peer: (%@)", &v10, 0xCu);
    }

    [(MessageManager *)self->_messageManager invalidate];
    messageManager = self->_messageManager;
    self->_messageManager = 0;
  }
}

- (void)watchDidChangeWristState:(unsigned __int8)a3
{
  v3 = a3;
  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ActiveWatchManager --- Active device has new wrist state: (%d)", v9, 8u);
  }

  wristState = self->_wristState;
  if (!self->_hasReceivedWristState || wristState != v3)
  {
    self->_wristState = v3;
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