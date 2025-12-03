@interface CDServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CDServiceListener)init;
- (CDServiceListenerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_activated;
- (void)_connectionInvalidated:(id)invalidated;
- (void)_invalidated;
- (void)_languageNotificationEnsureStarted;
- (void)_languageNotificationEnsureStopped;
- (void)activate;
- (void)invalidate;
@end

@implementation CDServiceListener

- (CDServiceListener)init
{
  v5.receiver = self;
  v5.super_class = CDServiceListener;
  v2 = [(CDServiceListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
    v3->_languageNotificationToken = -1;
  }

  return v3;
}

- (void)activate
{
  v3 = cps_service_listener_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100065174(v3);
  }

  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020E88;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  v3 = cps_service_listener_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000651B8(v3);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020F40;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = cps_service_listener_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "activated", v6, 2u);
  }

  [(CDServiceListener *)self _languageNotificationEnsureStarted];
  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.companiond.xpc"];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener _setQueue:self->_dispatchQueue];
  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    v3 = cps_service_listener_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidated", v5, 2u);
    }

    [(CDServiceListener *)self _languageNotificationEnsureStopped];
    [(NSXPCListener *)self->_listener invalidate];
    listener = self->_listener;
    self->_listener = 0;

    objc_storeWeak(&self->_delegate, 0);
    self->_invalidateDone = 1;
  }
}

- (void)_connectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceListener:self connectionInvalidated:invalidatedCopy];
}

- (void)_languageNotificationEnsureStarted
{
  if (self->_languageNotificationToken == -1)
  {
    notify_register_dispatch("AppleLanguagePreferencesChangedNotification", &self->_languageNotificationToken, self->_dispatchQueue, &stru_10008A8C0);
  }
}

- (void)_languageNotificationEnsureStopped
{
  languageNotificationToken = self->_languageNotificationToken;
  if (languageNotificationToken != -1)
  {
    notify_cancel(languageNotificationToken);
    self->_languageNotificationToken = -1;
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000212C4;
  v5 = v8[3] = &unk_10008A030;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];

  v6 = v5;
  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CDServiceListener *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CDServiceListener *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  dispatchQueue = self->_dispatchQueue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(dispatchQueue);
  v7 = [[CDServiceConnection alloc] initWithConnection:connectionCopy];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v8 = +[CPSAuthenticationServiceInterface daemonInterface];
  [connectionCopy setExportedInterface:v8];

  v9 = +[CPSAuthenticationServiceInterface clientInterface];
  [connectionCopy setRemoteObjectInterface:v9];

  [connectionCopy setExportedObject:v7];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000214F4;
  v16 = &unk_10008A030;
  selfCopy = self;
  v18 = v7;
  v10 = v7;
  [connectionCopy setInvalidationHandler:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceListener:self willAcceptConnection:{v10, v13, v14, v15, v16, selfCopy}];

  [connectionCopy resume];
  return 1;
}

- (CDServiceListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end