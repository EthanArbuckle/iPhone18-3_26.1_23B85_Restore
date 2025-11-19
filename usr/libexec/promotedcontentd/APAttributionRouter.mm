@interface APAttributionRouter
- (APAttributionRouter)initWithDevicePipelinesAttribution:(id)a3;
- (id)actionReceiverForConnection:(id)a3;
@end

@implementation APAttributionRouter

- (APAttributionRouter)initWithDevicePipelinesAttribution:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = APAttributionRouter;
  v6 = [(APAttributionRouter *)&v11 init];
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      *buf = 138477827;
      v13 = v8;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{private}@] Initializing listener for Attribution", buf, 0xCu);
    }

    objc_storeStrong(&v6->_attribution, a3);
    [APXPCListenerManager addDelegate:v6];
  }

  return v6;
}

- (id)actionReceiverForConnection:(id)a3
{
  v4 = a3;
  v5 = [APAttributionReceiver alloc];
  v6 = [(APAttributionRouter *)self attribution];
  v7 = [(APAttributionReceiver *)v5 initWithConnection:v4 devicePipelinesAttribution:v6];

  return v7;
}

@end