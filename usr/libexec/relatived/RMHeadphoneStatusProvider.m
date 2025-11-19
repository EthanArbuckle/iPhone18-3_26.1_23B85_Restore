@interface RMHeadphoneStatusProvider
- (id)startProducingDataWithCallback:(id)a3;
- (void)notifyClientWithStatusConnected:(BOOL)a3;
- (void)notifyConnectedToClient;
- (void)notifyDisconnectedToClient;
- (void)onActiveAudioRouteChanged:(id)a3;
- (void)startMonitoringActiveAudioRoute;
- (void)stopMonitoringActiveAudioRoute;
- (void)stopProducingData;
- (void)updateActivityForCurrentRoute;
@end

@implementation RMHeadphoneStatusProvider

- (id)startProducingDataWithCallback:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(RMHeadphoneStatusProvider *)self setAudioAccessoryManager:v5];

  +[CMAudioAccessoryManager _isAvailable];
  [(RMHeadphoneStatusProvider *)self setCallbackBlock:v4];

  if ([(RMHeadphoneStatusProvider *)self requireActivity])
  {
    [(RMHeadphoneStatusProvider *)self startMonitoringActiveAudioRoute];
    [(RMHeadphoneStatusProvider *)self updateActivityForCurrentRoute];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003F84;
  v9[3] = &unk_100024BB0;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  v7 = [(RMHeadphoneStatusProvider *)self audioAccessoryManager];
  [v7 startStatusUpdatesWithHandler:v6];

  return 0;
}

- (void)stopProducingData
{
  if ([(RMHeadphoneStatusProvider *)self requireActivity])
  {
    [(RMHeadphoneStatusProvider *)self stopMonitoringActiveAudioRoute];
  }

  v3 = [(RMHeadphoneStatusProvider *)self audioAccessoryManager];
  [v3 stopStatusUpdates];

  [(RMHeadphoneStatusProvider *)self setAudioAccessoryManager:0];
}

- (void)notifyDisconnectedToClient
{
  if (qword_10002C0C8 != -1)
  {
    sub_100012384();
  }

  v3 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[RMHeadphoneStatusProvider] About to notify disconnected to client.", v4, 2u);
  }

  [(RMHeadphoneStatusProvider *)self notifyClientWithStatusConnected:0];
}

- (void)notifyConnectedToClient
{
  if (qword_10002C0C8 != -1)
  {
    sub_100012384();
  }

  v3 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[RMHeadphoneStatusProvider] About to notify connected to client.", v4, 2u);
  }

  [(RMHeadphoneStatusProvider *)self notifyClientWithStatusConnected:1];
}

- (void)notifyClientWithStatusConnected:(BOOL)a3
{
  v3 = a3;
  v19 = kCMHeadphoneMotionManagerEventTypeKey;
  v5 = &kCMHeadphoneMotionManagerEventTypeConnect;
  if (!a3)
  {
    v5 = &kCMHeadphoneMotionManagerEventTypeDisconnect;
  }

  v20 = *v5;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
  if (v7)
  {
    if ([(RMHeadphoneStatusProvider *)self requireActivity]&& ![(RMHeadphoneStatusProvider *)self activitySupported]&& v3)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100012398();
      }

      v8 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "[RMHeadphoneStatusProvider] Dropping connect event due to no activity support.";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 2;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
      }
    }

    else
    {
      v13 = [(RMHeadphoneStatusProvider *)self receiverQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004394;
      v15[3] = &unk_1000248A8;
      v15[4] = self;
      v16 = v7;
      dispatch_async(v13, v15);
    }
  }

  else
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100012398();
    }

    v14 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v6;
      v9 = "[RMHeadphoneStatusProvider] Failed to serialize event NSDictionary object: %{public}@";
      v10 = v14;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_16;
    }
  }
}

- (void)startMonitoringActiveAudioRoute
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"onActiveAudioRouteChanged:" name:@"RMAudioDeviceChangeCompletedNotification" object:0];
}

- (void)stopMonitoringActiveAudioRoute
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"RMAudioDeviceChangeCompletedNotification" object:0];
}

- (void)onActiveAudioRouteChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"RMAudioDeviceChangeCompletedRouteIDKey"];

  if (v7)
  {
    v8 = [(RMHeadphoneStatusProvider *)v5 activeAudioRouteDeviceID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100012384();
      }

      v10 = qword_10002C0D0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(RMHeadphoneStatusProvider *)v5 activeAudioRouteDeviceID];
        v13 = 138478083;
        v14 = v7;
        v15 = 2113;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[RMHeadphoneStatusProvider] New audio route: %{private}@ (old route: %{private}@). Starting activity check.", &v13, 0x16u);
      }

      [(RMHeadphoneStatusProvider *)v5 setActiveAudioRouteDeviceID:v7];
      [(RMHeadphoneStatusProvider *)v5 updateActivityForCurrentRoute];
    }
  }

  else
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100012384();
    }

    v12 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[RMHeadphoneStatusProvider] Speaker route. Resetting activity support.", &v13, 2u);
    }

    [(RMHeadphoneStatusProvider *)v5 setActivitySupported:0];
    [(RMHeadphoneStatusProvider *)v5 setActiveAudioRouteDeviceID:0];
  }

  objc_sync_exit(v5);
}

- (void)updateActivityForCurrentRoute
{
  v3 = [(RMHeadphoneStatusProvider *)self audioAccessoryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004764;
  v4[3] = &unk_100024BD8;
  v4[4] = self;
  [v3 startActivityUpdatesWithHandler:v4];
}

@end