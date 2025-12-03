@interface RMUserInteractionMonitorAttentionAwareness
- (RMUserInteractionMonitorAttentionAwareness)init;
- (void)startUserInteractionUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopUserInteractionUpdates;
@end

@implementation RMUserInteractionMonitorAttentionAwareness

- (RMUserInteractionMonitorAttentionAwareness)init
{
  v15.receiver = self;
  v15.super_class = RMUserInteractionMonitorAttentionAwareness;
  v2 = [(RMUserInteractionMonitorAttentionAwareness *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setIdentifier:@"com.apple.relatived"];
    [v3 setEventMask:4094];
    [v3 setAttentionLostTimeout:0.1];
    v4 = objc_opt_new();
    [(RMUserInteractionMonitorAttentionAwareness *)v2 setAttentionAwarenessClient:v4];

    attentionAwarenessClient = [(RMUserInteractionMonitorAttentionAwareness *)v2 attentionAwarenessClient];
    v14 = 0;
    v6 = [attentionAwarenessClient setConfiguration:v3 shouldReset:0 error:&v14];
    v7 = v14;

    if (v6)
    {
      objc_initWeak(location, v2);
      attentionAwarenessClient2 = [(RMUserInteractionMonitorAttentionAwareness *)v2 attentionAwarenessClient];
      v9 = &_dispatch_main_q;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100001810;
      v12[3] = &unk_1000247D0;
      objc_copyWeak(&v13, location);
      [attentionAwarenessClient2 setEventHandlerWithQueue:&_dispatch_main_q block:v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      if (qword_10002C0C8 != -1)
      {
        sub_10000F9B8();
      }

      v10 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[RMUserInteractionMonitorAttentionAwareness] Error setting attention awareness config: %{public}@", location, 0xCu);
      }

      [(RMUserInteractionMonitorAttentionAwareness *)v2 setAttentionAwarenessClient:0];
    }
  }

  return v2;
}

- (void)startUserInteractionUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = RMUserInteractionMonitorAttentionAwareness;
  [(RMUserInteractionMonitor *)&v9 startUserInteractionUpdatesToQueue:queue withHandler:handler];
  attentionAwarenessClient = [(RMUserInteractionMonitorAttentionAwareness *)self attentionAwarenessClient];

  if (attentionAwarenessClient)
  {
    if (qword_10002C0C8 != -1)
    {
      sub_10000F9B8();
    }

    v6 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RMUserInteractionMonitorAttentionAwareness] Starting user interaction monitoring", v8, 2u);
    }

    attentionAwarenessClient2 = [(RMUserInteractionMonitorAttentionAwareness *)self attentionAwarenessClient];
    [attentionAwarenessClient2 resumeWithError:0];
  }
}

- (void)stopUserInteractionUpdates
{
  v7.receiver = self;
  v7.super_class = RMUserInteractionMonitorAttentionAwareness;
  [(RMUserInteractionMonitor *)&v7 stopUserInteractionUpdates];
  attentionAwarenessClient = [(RMUserInteractionMonitorAttentionAwareness *)self attentionAwarenessClient];

  if (attentionAwarenessClient)
  {
    if (qword_10002C0C8 != -1)
    {
      sub_10000F9B8();
    }

    v4 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RMUserInteractionMonitorAttentionAwareness] Stopping user interaction monitoring", v6, 2u);
    }

    attentionAwarenessClient2 = [(RMUserInteractionMonitorAttentionAwareness *)self attentionAwarenessClient];
    [attentionAwarenessClient2 suspendWithError:0];
  }
}

@end