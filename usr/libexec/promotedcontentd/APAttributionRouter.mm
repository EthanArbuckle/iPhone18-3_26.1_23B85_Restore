@interface APAttributionRouter
- (APAttributionRouter)initWithDevicePipelinesAttribution:(id)attribution;
- (id)actionReceiverForConnection:(id)connection;
@end

@implementation APAttributionRouter

- (APAttributionRouter)initWithDevicePipelinesAttribution:(id)attribution
{
  attributionCopy = attribution;
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

    objc_storeStrong(&v6->_attribution, attribution);
    [APXPCListenerManager addDelegate:v6];
  }

  return v6;
}

- (id)actionReceiverForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [APAttributionReceiver alloc];
  attribution = [(APAttributionRouter *)self attribution];
  v7 = [(APAttributionReceiver *)v5 initWithConnection:connectionCopy devicePipelinesAttribution:attribution];

  return v7;
}

@end