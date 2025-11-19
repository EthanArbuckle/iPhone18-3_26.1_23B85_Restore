@interface CDProviderViewService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CDProviderViewService)init;
- (void)activateWithCompletionHandler:(id)a3;
- (void)confirm;
- (void)deactivateWithError:(id)a3;
- (void)invalidate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setActionHandler:(id)a3;
- (void)shareCompleted;
- (void)shareFailedWithError:(id)a3;
- (void)storeAuthenticationFailedWithError:(id)a3;
- (void)storeAuthenticationFinishedWithResult:(id)a3;
- (void)webAuthenticationFailedWithError:(id)a3;
- (void)webAuthenticationFinishedWithCallbackURL:(id)a3;
@end

@implementation CDProviderViewService

- (CDProviderViewService)init
{
  v7.receiver = self;
  v7.super_class = CDProviderViewService;
  v2 = [(CDProviderViewService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v4;
  }

  return v3;
}

- (void)setActionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000FCB8;
    v9[3] = &unk_10008A650;
    v9[4] = self;
    v10 = v4;
    v6 = objc_retainBlock(v9);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v6;

    v8 = v10;
  }

  else
  {
    v8 = self->_actionHandler;
    self->_actionHandler = 0;
  }
}

- (void)activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(BSAtomicSignal *)self->_activateCalledSignal signal];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FDA4;
  v7[3] = &unk_100089D58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006308C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = a3;
  v4 = cps_daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "View service activated: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = cps_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "View service deactivated: %@", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006343C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = cps_daemon_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100063704(v6, v7, v9);
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063440;
    block[3] = &unk_10008A030;
    block[4] = self;
    v14 = v7;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "View service invalidated: %@", buf, 0xCu);
    }

    v11 = self->_dispatchQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006348C;
    v12[3] = &unk_100089E20;
    v12[4] = self;
    dispatch_async(v11, v12);
  }
}

- (void)confirm
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010314;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)deactivateWithError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006352C;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)webAuthenticationFinishedWithCallbackURL:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063578;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)webAuthenticationFailedWithError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000635DC;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)shareCompleted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006363C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)shareFailedWithError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063640;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)storeAuthenticationFinishedWithResult:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000106E8;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)storeAuthenticationFailedWithError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000107E8;
  v7[3] = &unk_10008A030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  [(NSXPCConnection *)v6 setExportedObject:self];
  +[CPSViewServiceInterface presenterInterface];
  objc_claimAutoreleasedReturnValue();
  [sub_100010AB0() setExportedInterface:?];

  +[CPSViewServiceInterface presentingInterface];
  objc_claimAutoreleasedReturnValue();
  [sub_100010AB0() setRemoteObjectInterface:?];

  [(NSXPCConnection *)v6 resume];
  viewServiceConnection = self->_viewServiceConnection;
  self->_viewServiceConnection = v6;

  v8 = sub_100063200(&self->super.isa);
  [v8 establishConnection];

  return 1;
}

@end