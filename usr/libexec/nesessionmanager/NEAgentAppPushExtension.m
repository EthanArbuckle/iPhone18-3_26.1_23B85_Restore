@interface NEAgentAppPushExtension
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (void)didReceiveIncomingCallWithUserInfo:(id)a3;
- (void)didReceivePushToTalkMessageWithUserInfo:(id)a3;
- (void)didReceiveUnmatchEthernet;
- (void)handleAppsUninstalled:(id)a3;
- (void)handleAppsUpdateBegins:(id)a3;
- (void)handleAppsUpdateEnding:(id)a3;
- (void)handleAppsUpdateEnds:(id)a3;
- (void)sendExtensionFailed;
- (void)sendOutgoingCallMessage:(id)a3 andMessageID:(id)a4;
- (void)sendTimerEvent;
- (void)setProviderConfiguration:(id)a3;
- (void)startConnectionWithProviderConfig:(id)a3;
@end

@implementation NEAgentAppPushExtension

- (void)sendExtensionFailed
{
  v2 = [(NEAgentAppPushExtension *)self managerObjectFactory];
  v3 = [v2 managerObject];

  [v3 sendExtensionFailed];
}

- (void)sendTimerEvent
{
  v2 = [(NEAgentAppPushExtension *)self sessionContext];
  [v2 sendTimerEvent];
}

- (void)sendOutgoingCallMessage:(id)a3 andMessageID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEAgentAppPushExtension *)self sessionContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006028;
  v10[3] = &unk_1000EADC0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 sendOutgoingCallMessage:v7 completionHandler:v10];
}

- (void)setProviderConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self sessionContext];
  [v5 setProviderConfiguration:v4];
}

- (void)startConnectionWithProviderConfig:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self sessionContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006420;
  v6[3] = &unk_1000EB068;
  v6[4] = self;
  [v5 startConnectionWithProviderConfig:v4 completionHandler:v6];
}

- (void)didReceiveUnmatchEthernet
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ received request to stop provider for ethernet", &v6, 0xCu);
  }

  if (self)
  {
    v4 = [(NEAgentAppPushExtension *)self managerObjectFactory];
    v5 = [v4 managerObject];

    [v5 unmatchEthernet];
  }
}

- (void)didReceivePushToTalkMessageWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ received PushToTalk message with user info %@", &v9, 0x16u);
  }

  if (self)
  {
    v6 = v4;
    v7 = [(NEAgentAppPushExtension *)self managerObjectFactory];
    v8 = [v7 managerObject];

    [v8 reportPushToTalkMessage:v6];
  }
}

- (void)didReceiveIncomingCallWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ received incoming call with user info %@", &v9, 0x16u);
  }

  if (self)
  {
    v6 = v4;
    v7 = [(NEAgentAppPushExtension *)self managerObjectFactory];
    v8 = [v7 managerObject];

    [v8 reportIncomingCall:v6];
  }
}

- (void)handleAppsUpdateEnds:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ update for extension [%@] completed", &v11, 0x16u);
      }

      sub_10000699C(self, 2);
    }
  }
}

- (void)handleAppsUpdateEnding:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ update for extension [%@] is in progress", &v11, 0x16u);
      }

      sub_10000699C(self, 1);
    }
  }
}

- (void)handleAppsUpdateBegins:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ update for extension [%@] started", &v11, 0x16u);
      }

      sub_10000699C(self, 1);
    }
  }
}

- (void)handleAppsUninstalled:(id)a3
{
  v4 = a3;
  v5 = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ extension [%@] was uninstalled", &v11, 0x16u);
      }

      sub_10000699C(self, 0);
    }
  }
}

- (NSXPCInterface)driverInterface
{
  if (qword_1000FD500 != -1)
  {
    dispatch_once(&qword_1000FD500, &stru_1000E9688);
  }

  v3 = qword_1000FD4F8;

  return v3;
}

- (NSXPCInterface)managerInterface
{
  if (qword_1000FD4F0 != -1)
  {
    dispatch_once(&qword_1000FD4F0, &stru_1000E9668);
  }

  v3 = qword_1000FD4E8;

  return v3;
}

@end