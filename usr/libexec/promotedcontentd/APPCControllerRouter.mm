@interface APPCControllerRouter
- (APPCControllerRouter)initWithIdentifierProviderFactory:(id)a3;
- (id)actionReceiverForConnection:(id)a3;
@end

@implementation APPCControllerRouter

- (APPCControllerRouter)initWithIdentifierProviderFactory:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_providerFactory, a3);
    [APXPCListenerManager addDelegate:v6];
  }

  return v6;
}

- (id)actionReceiverForConnection:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 bundleID];
    v11 = 136643587;
    v12 = "[APPCControllerRouter actionReceiverForConnection:]";
    v13 = 2050;
    v14 = self;
    v15 = 2050;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{sensitive}s: controller router %{public}p connection %{public}p bundleID is %{public}@", &v11, 0x2Au);
  }

  v7 = [APPCControllerReceiver alloc];
  v8 = [(APPCControllerRouter *)self providerFactory];
  v9 = sub_1003967E4(&v7->super.isa, v4, v8);

  return v9;
}

@end