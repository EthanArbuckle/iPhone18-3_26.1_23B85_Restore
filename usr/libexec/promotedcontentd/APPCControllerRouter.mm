@interface APPCControllerRouter
- (APPCControllerRouter)initWithIdentifierProviderFactory:(id)factory;
- (id)actionReceiverForConnection:(id)connection;
@end

@implementation APPCControllerRouter

- (APPCControllerRouter)initWithIdentifierProviderFactory:(id)factory
{
  factoryCopy = factory;
  v11.receiver = self;
  v11.super_class = APPCControllerRouter;
  v6 = [(APPCControllerRouter *)&v11 init];
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      *buf = 138477827;
      v13 = v8;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing listener for PCController", buf, 0xCu);
    }

    objc_storeStrong(&v6->_providerFactory, factory);
    [APXPCListenerManager addDelegate:v6];
  }

  return v6;
}

- (id)actionReceiverForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    bundleID = [connectionCopy bundleID];
    v11 = 136643587;
    v12 = "[APPCControllerRouter actionReceiverForConnection:]";
    v13 = 2050;
    selfCopy = self;
    v15 = 2050;
    v16 = connectionCopy;
    v17 = 2114;
    v18 = bundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{sensitive}s: controller router %{public}p connection %{public}p bundleID is %{public}@", &v11, 0x2Au);
  }

  v7 = [APPCControllerReceiver alloc];
  providerFactory = [(APPCControllerRouter *)self providerFactory];
  v9 = sub_1003967E4(&v7->super.isa, connectionCopy, providerFactory);

  return v9;
}

@end