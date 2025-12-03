@interface BTPipeManager
- (BTPipeManager)initWithDelegate:(id)delegate isServer:(BOOL)server;
- (BTPipeManagerDelegate)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)registerEndpoint;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
@end

@implementation BTPipeManager

- (BTPipeManager)initWithDelegate:(id)delegate isServer:(BOOL)server
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = BTPipeManager;
  v7 = [(BTPipeManager *)&v17 init];
  if (v7)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Initializing (%p)", buf, 0xCu);
    }

    v7->_isServer = server;
    v9 = objc_opt_new();
    pipes = v7->_pipes;
    v7->_pipes = v9;

    objc_storeWeak(&v7->_delegate, delegateCopy);
    v11 = [CBScalablePipeManager alloc];
    v12 = +[MagicSwitchEnabler sharedInstance];
    workQueue = [v12 workQueue];
    v14 = [v11 initWithDelegate:v7 queue:workQueue];
    pipeManager = v7->_pipeManager;
    v7->_pipeManager = v14;
  }

  return v7;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(BTPipeManager *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = BTPipeManager;
  [(BTPipeManager *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Invalidating (%p)", &v6, 0xCu);
    }

    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    if (self->_pipeRegistered)
    {
      v4 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy = @"com.apple.qs.ms";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Telling CoreBluetooth to unregister endpoint (%@)", &v6, 0xCu);
      }

      [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:@"com.apple.qs.ms"];
    }

    [(CBScalablePipeManager *)self->_pipeManager setDelegate:0];
    pipeManager = self->_pipeManager;
    self->_pipeManager = 0;
  }
}

- (void)registerEndpoint
{
  v3 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.qs.ms";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Telling CoreBluetooth to register endpoint (%@)", &v4, 0xCu);
  }

  self->_pipeRegistered = 1;
  [(CBScalablePipeManager *)self->_pipeManager registerEndpoint:@"com.apple.qs.ms" type:self->_isServer priority:1];
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  if (([(CBScalablePipeManager *)self->_pipeManager isEqual:state]& 1) == 0)
  {
    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unexpected pipe manager", buf, 2u);
    }
  }

  state = [(CBScalablePipeManager *)self->_pipeManager state];
  v6 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = sub_100000EE8(state);
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Pipe manager did update state (%@)", buf, 0xCu);
  }

  if (state < 4)
  {
    *&self->_pipeRegistered = 0;
    if ([(NSMutableDictionary *)self->_pipes count])
    {
      v9 = qword_100021420;
      if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
      {
        pipes = self->_pipes;
        *buf = 138412290;
        v25 = pipes;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Notifying delegate all pipes disconnected for pipes: (%@)", buf, 0xCu);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = self->_pipes;
      v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            v17 = [(NSMutableDictionary *)self->_pipes objectForKeyedSubscript:v16, v19];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained pipe:v17 didDisconnectFromPeer:v16];
          }

          v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      [(NSMutableDictionary *)self->_pipes removeAllObjects];
    }
  }

  else
  {
    if (!self->_pipeRegistered)
    {
      [(BTPipeManager *)self registerEndpoint];
    }

    if (state == 5)
    {
      self->_isPoweredOn = 1;
    }
  }
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  endpointCopy = endpoint;
  errorCopy = error;
  if (([(CBScalablePipeManager *)self->_pipeManager isEqual:manager]& 1) == 0)
  {
    v10 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unexpected pipe manager", &v13, 2u);
    }
  }

  if (([endpointCopy isEqualToString:@"com.apple.qs.ms"] & 1) == 0)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unexpected endpoint identifier", &v13, 2u);
    }
  }

  v12 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = endpointCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Pipe did register endpoint: (%@); error: %@", &v13, 0x16u);
  }
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (([(CBScalablePipeManager *)self->_pipeManager isEqual:manager]& 1) == 0)
  {
    v7 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected pipe manager", &v10, 2u);
    }
  }

  if (([endpointCopy isEqualToString:@"com.apple.qs.ms"] & 1) == 0)
  {
    v8 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unexpected endpoint identifier", &v10, 2u);
    }
  }

  v9 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Pipe did unregister endpoint: (%@)", &v10, 0xCu);
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  connectCopy = connect;
  if (([(CBScalablePipeManager *)self->_pipeManager isEqual:manager]& 1) == 0)
  {
    v7 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected pipe manager", &v18, 2u);
    }
  }

  name = [connectCopy name];
  if (([name isEqualToString:@"com.apple.qs.ms"] & 1) == 0)
  {
    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unexpected endpoint identifier", &v18, 2u);
    }
  }

  peer = [connectCopy peer];
  if (!peer)
  {
    v11 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "peer is nil", &v18, 2u);
    }
  }

  identifier = [peer identifier];
  if (!identifier)
  {
    v13 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "pipe UUID is nil", &v18, 2u);
    }
  }

  v14 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    uUIDString = [identifier UUIDString];
    v18 = 138412546;
    v19 = connectCopy;
    v20 = 2112;
    v21 = uUIDString;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Pipe did connect: (%@); peer: (%@)", &v18, 0x16u);
  }

  [(NSMutableDictionary *)self->_pipes setObject:connectCopy forKeyedSubscript:identifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pipe:connectCopy didConnectToPeer:identifier];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  disconnectCopy = disconnect;
  errorCopy = error;
  if (([(CBScalablePipeManager *)self->_pipeManager isEqual:manager]& 1) == 0)
  {
    v10 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unexpected pipe manager", &v21, 2u);
    }
  }

  name = [disconnectCopy name];
  if (([name isEqualToString:@"com.apple.qs.ms"] & 1) == 0)
  {
    v12 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unexpected endpoint identifier", &v21, 2u);
    }
  }

  peer = [disconnectCopy peer];
  if (!peer)
  {
    v14 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "peer is nil", &v21, 2u);
    }
  }

  identifier = [peer identifier];
  if (!identifier)
  {
    v16 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "peerID is nil", &v21, 2u);
    }
  }

  v17 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    uUIDString = [identifier UUIDString];
    v21 = 138412802;
    v22 = disconnectCopy;
    v23 = 2112;
    v24 = uUIDString;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTPipeManager --- Pipe did disconnect: (%@); peer: (%@); error: (%@)", &v21, 0x20u);
  }

  [(NSMutableDictionary *)self->_pipes setObject:0 forKeyedSubscript:identifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pipe:disconnectCopy didDisconnectFromPeer:identifier];
}

- (BTPipeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end