@interface EPScalablePipeManager
- (CBScalablePipeManager)manager;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
@end

@implementation EPScalablePipeManager

- (CBScalablePipeManager)manager
{
  managerManager = [(EPScalablePipeManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = sub_1000A98C0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v12 = 138412802;
        v13 = v10;
        v14 = 2048;
        v15 = ownerDelegate;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManagerDidUpdateState: on %@[%p] state %@", &v12, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManagerDidUpdateState:stateCopy];
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412546;
        v15 = v13;
        v16 = 2048;
        v17 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:pipeDidConnect: on %@[%p]", &v14, 0x16u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy pipeDidConnect:connectCopy];
  }
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412802;
        v15 = v13;
        v16 = 2048;
        v17 = ownerDelegate;
        v18 = 2112;
        v19 = endpointCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:didUnregisterEndpoint: on %@[%p] endpoint %@", &v14, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy didUnregisterEndpoint:endpointCopy];
  }
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:pipeDidDisconnect: on %@[%p]", &v17, 0x16u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy pipeDidDisconnect:disconnectCopy error:errorCopy];
  }
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412802;
        v18 = v16;
        v19 = 2048;
        v20 = ownerDelegate;
        v21 = 2112;
        v22 = endpointCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling scalablePipeManager:didRegisterEndpoint: on %@[%p] endpoint %@", &v17, 0x20u);
      }
    }

    [ownerDelegate scalablePipeManager:managerCopy didRegisterEndpoint:endpointCopy error:errorCopy];
  }
}

@end