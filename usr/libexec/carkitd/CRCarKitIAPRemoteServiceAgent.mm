@interface CRCarKitIAPRemoteServiceAgent
- (BOOL)_lock_wiredCarPlaySimulatorActive;
- (CRCarKitIAPRemoteServiceAgent)initWithDelegate:(id)delegate;
- (CRCarPlaySimulatorDelegate)delegate;
- (void)_cleanup;
- (void)_cleanupACCTransport;
- (void)_cleanupRemoteXPC;
- (void)_closeXPCConnection;
- (void)_handleLockdownConnection:(_lockdown_connection *)connection info:(__CFDictionary *)info;
- (void)_handleReads;
- (void)_handleReadsWithBlock:(id)block;
- (void)_sendData:(const char *)data length:(unint64_t)length;
- (void)_setupACCTransportClient;
- (void)_startListeners;
- (void)setLock_lockdownConnection:(_lockdown_connection *)connection;
@end

@implementation CRCarKitIAPRemoteServiceAgent

- (void)_handleReads
{
  bzero(v11, 0x400uLL);
  os_unfair_lock_lock(&self->_lock);
  [(CRCarKitIAPRemoteServiceAgent *)self lock_lockdownConnection];
  os_unfair_lock_unlock(&self->_lock);
  v3 = lockdown_recv();
  if (v3 < 0)
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100086938();
    }

    [(CRCarKitIAPRemoteServiceAgent *)self _cleanup];
  }

  else
  {
    v4 = [NSData dataWithBytes:v11 length:v3];
    sharedClient = [sub_100002980() sharedClient];
    endpointUUID = [(CRCarKitIAPRemoteServiceAgent *)self endpointUUID];
    [sharedClient processIncomingData:v4 forEndpointWithUUID:endpointUUID];

    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received bytes: %ld", &v9, 0xCu);
    }
  }
}

- (CRCarKitIAPRemoteServiceAgent)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CRCarKitIAPRemoteServiceAgent;
  v5 = [(CRCarKitIAPRemoteServiceAgent *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_create("com.apple.carkit.remote_xpc_handler_queue", 0);
    rxpcQueue = v6->_rxpcQueue;
    v6->_rxpcQueue = v7;

    v9 = dispatch_queue_create("com.apple.carkitd.receive", 0);
    lockdownQueue = v6->_lockdownQueue;
    v6->_lockdownQueue = v9;

    [(CRCarKitIAPRemoteServiceAgent *)v6 _startListeners];
  }

  return v6;
}

- (void)setLock_lockdownConnection:(_lockdown_connection *)connection
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_lockdownConnection = connection;
  _lock_wiredCarPlaySimulatorActive = [(CRCarKitIAPRemoteServiceAgent *)self _lock_wiredCarPlaySimulatorActive];
  delegate = [(CRCarKitIAPRemoteServiceAgent *)self delegate];
  [delegate setCarPlaySimulatorActive:_lock_wiredCarPlaySimulatorActive];

  delegate2 = [(CRCarKitIAPRemoteServiceAgent *)self delegate];
  [delegate2 setRemoteDeviceConnected:0];
}

- (BOOL)_lock_wiredCarPlaySimulatorActive
{
  result = [(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSocket]&& ([(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSource], v3 = os_unfair_lock_assert_owner(&self->_lock);
  return result;
}

- (void)_setupACCTransportClient
{
  [(CRCarKitIAPRemoteServiceAgent *)self _cleanupACCTransport];
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up transport for iAP data", buf, 2u);
  }

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000276C;
  v13[3] = &unk_1000DEA50;
  objc_copyWeak(&v14, buf);
  v4 = objc_retainBlock(v13);
  v5 = sub_100002980();
  sharedClient = [v5 sharedClient];
  v7 = [sharedClient createConnectionWithType:1 andIdentifier:0];
  [(CRCarKitIAPRemoteServiceAgent *)self setConnectionUUID:v7];

  sharedClient2 = [v5 sharedClient];
  connectionUUID = [(CRCarKitIAPRemoteServiceAgent *)self connectionUUID];
  v10 = [sharedClient2 createEndpointWithTransportType:8 andProtocol:4 andIdentifier:0 andDataOutHandler:v4 forConnectionWithUUID:connectionUUID publishConnection:1];
  [(CRCarKitIAPRemoteServiceAgent *)self setEndpointUUID:v10];

  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Finished setting up transport to send iAP data over", v12, 2u);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_handleLockdownConnection:(_lockdown_connection *)connection info:(__CFDictionary *)info
{
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting new lockdown connection", buf, 2u);
  }

  [(CRCarKitIAPRemoteServiceAgent *)self _setupACCTransportClient];
  os_unfair_lock_lock(&self->_lock);
  [(CRCarKitIAPRemoteServiceAgent *)self setLock_lockdownConnection:connection];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040660;
  v7[3] = &unk_1000DDA60;
  objc_copyWeak(&v8, buf);
  [(CRCarKitIAPRemoteServiceAgent *)self _handleReadsWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_startListeners
{
  objc_initWeak(&location, self);
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start Remote XPC listeners", buf, 2u);
  }

  v4 = &_dispatch_main_q;
  v13[1] = _NSConcreteStackBlock;
  v13[2] = 3221225472;
  v13[3] = sub_100040944;
  v13[4] = &unk_1000DEA78;
  v13[5] = self;
  objc_copyWeak(&v14, &location);
  remote_service_listen();

  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Start lockdown listeners", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100040C7C;
  v12[3] = &unk_1000DEAA0;
  objc_copyWeak(v13, &location);
  v6 = objc_retainBlock(v12);
  lockdownQueue = [(CRCarKitIAPRemoteServiceAgent *)self lockdownQueue];
  v8 = lockdown_checkin_xpc();

  if (v8)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000869AC();
    }

    rxpcListener = [(CRCarKitIAPRemoteServiceAgent *)self rxpcListener];

    if (!rxpcListener)
    {
      v11 = CarGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100086A20();
      }
    }
  }

  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_sendData:(const char *)data length:(unint64_t)length
{
  if ([(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSocket]< 1)
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(CRCarKitIAPRemoteServiceAgent *)self lock_lockdownConnection])
    {
      v7 = lockdown_send();
      os_unfair_lock_unlock(&self->_lock);
      if (v7 < 0)
      {
        v8 = CarGeneralLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100086A60();
        }

        [(CRCarKitIAPRemoteServiceAgent *)self _cleanup];
      }
    }

    else
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "lockdown connection does not exist", v10, 2u);
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else if ((write([(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSocket], data, length) & 0x80000000) != 0)
  {

    [(CRCarKitIAPRemoteServiceAgent *)self _cleanupRemoteXPC];
  }
}

- (void)_closeXPCConnection
{
  rxpcConnection = [(CRCarKitIAPRemoteServiceAgent *)self rxpcConnection];

  if (rxpcConnection)
  {
    rxpcConnection2 = [(CRCarKitIAPRemoteServiceAgent *)self rxpcConnection];
    xpc_remote_connection_cancel();

    [(CRCarKitIAPRemoteServiceAgent *)self setRxpcConnection:0];
  }
}

- (void)_handleReadsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  [(CRCarKitIAPRemoteServiceAgent *)self lock_lockdownConnection];
  socket = lockdown_get_socket();
  os_unfair_lock_unlock(&self->_lock);
  if ((socket & 0x80000000) != 0)
  {
    os_unfair_lock_lock(&self->_lock);
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100086AA0(self, v10);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    lockdownQueue = [(CRCarKitIAPRemoteServiceAgent *)self lockdownQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_read, socket, 0, lockdownQueue);
    [(CRCarKitIAPRemoteServiceAgent *)self setLockdownSource:v7];

    objc_initWeak(&location, self);
    lockdownSource = [(CRCarKitIAPRemoteServiceAgent *)self lockdownSource];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100041034;
    handler[3] = &unk_1000DDAD8;
    objc_copyWeak(&v13, &location);
    v12 = blockCopy;
    dispatch_source_set_event_handler(lockdownSource, handler);

    lockdownSource2 = [(CRCarKitIAPRemoteServiceAgent *)self lockdownSource];
    dispatch_resume(lockdownSource2);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_cleanup
{
  os_unfair_lock_lock(&self->_lock);
  lockdownSource = [(CRCarKitIAPRemoteServiceAgent *)self lockdownSource];

  if (lockdownSource)
  {
    lockdownSource2 = [(CRCarKitIAPRemoteServiceAgent *)self lockdownSource];
    dispatch_source_cancel(lockdownSource2);

    [(CRCarKitIAPRemoteServiceAgent *)self setLockdownSource:0];
  }

  [(CRCarKitIAPRemoteServiceAgent *)self lock_lockdownConnection];
  lockdown_disconnect();
  [(CRCarKitIAPRemoteServiceAgent *)self setLock_lockdownConnection:0];
  os_unfair_lock_unlock(&self->_lock);

  [(CRCarKitIAPRemoteServiceAgent *)self _cleanupACCTransport];
}

- (void)_cleanupRemoteXPC
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling Remote XPC connection and cleaning up ACC Transport", v5, 2u);
  }

  remoteXPCSource = [(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSource];
  dispatch_source_cancel(remoteXPCSource);

  [(CRCarKitIAPRemoteServiceAgent *)self setRemoteXPCSource:0];
  close([(CRCarKitIAPRemoteServiceAgent *)self remoteXPCSocket]);
  [(CRCarKitIAPRemoteServiceAgent *)self _cleanupACCTransport];
}

- (void)_cleanupACCTransport
{
  v3 = sub_100002980();
  endpointUUID = [(CRCarKitIAPRemoteServiceAgent *)self endpointUUID];

  if (endpointUUID)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID2 = [(CRCarKitIAPRemoteServiceAgent *)self endpointUUID];
      v18 = 138412290;
      v19 = endpointUUID2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying endpoint with UUID', %@", &v18, 0xCu);
    }

    sharedClient = [v3 sharedClient];
    endpointUUID3 = [(CRCarKitIAPRemoteServiceAgent *)self endpointUUID];
    [sharedClient destroyEndpointWithUUID:endpointUUID3];

    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID4 = [(CRCarKitIAPRemoteServiceAgent *)self endpointUUID];
      v11 = NSStringFromBOOL();
      v18 = 138412546;
      v19 = endpointUUID4;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Destroying endpoint with UUID', %@. Successful?: %@", &v18, 0x16u);
    }

    [(CRCarKitIAPRemoteServiceAgent *)self setEndpointUUID:0];
  }

  connectionUUID = [(CRCarKitIAPRemoteServiceAgent *)self connectionUUID];

  if (connectionUUID)
  {
    sharedClient2 = [v3 sharedClient];
    connectionUUID2 = [(CRCarKitIAPRemoteServiceAgent *)self connectionUUID];
    [sharedClient2 destroyConnectionWithUUID:connectionUUID2];

    v15 = CarGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      connectionUUID3 = [(CRCarKitIAPRemoteServiceAgent *)self connectionUUID];
      v17 = NSStringFromBOOL();
      v18 = 138412546;
      v19 = connectionUUID3;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Destroying connection with UUID', %@. Successful?: %@", &v18, 0x16u);
    }

    [(CRCarKitIAPRemoteServiceAgent *)self setConnectionUUID:0];
  }
}

- (CRCarPlaySimulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end