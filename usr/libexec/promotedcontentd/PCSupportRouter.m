@interface PCSupportRouter
- (PCSupportRouter)init;
- (id)actionReceiverForConnection:(id)a3;
@end

@implementation PCSupportRouter

- (PCSupportRouter)init
{
  v7.receiver = self;
  v7.super_class = PCSupportRouter;
  v2 = [(PCSupportRouter *)&v7 init];
  if (v2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      *buf = 138477827;
      v9 = v4;
      v5 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{private}@] Initializing listener for PromotedContentSupport ", buf, 0xCu);
    }

    [APXPCListenerManager addDelegate:v2];
  }

  return v2;
}

- (id)actionReceiverForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 hasEntitlement:@"com.apple.developer.healthkit"];
  v5 = [v3 hasEntitlement:@"com.apple.developer.homekit"];
  if ((v4 & 1) != 0 || v5)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Apps using HealthKit or HomeKit are not permitted to use PromotedContent segment APIs. This request will be ignored.", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [[PCSupportReceiver alloc] initWithConnection:v3];
  }

  return v6;
}

@end