@interface NEAgentAppPushExtension
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (void)didReceiveIncomingCallWithUserInfo:(id)info;
- (void)didReceivePushToTalkMessageWithUserInfo:(id)info;
- (void)didReceiveUnmatchEthernet;
- (void)handleAppsUninstalled:(id)uninstalled;
- (void)handleAppsUpdateBegins:(id)begins;
- (void)handleAppsUpdateEnding:(id)ending;
- (void)handleAppsUpdateEnds:(id)ends;
- (void)sendExtensionFailed;
- (void)sendOutgoingCallMessage:(id)message andMessageID:(id)d;
- (void)sendTimerEvent;
- (void)setProviderConfiguration:(id)configuration;
- (void)startConnectionWithProviderConfig:(id)config;
@end

@implementation NEAgentAppPushExtension

- (void)sendExtensionFailed
{
  managerObjectFactory = [(NEAgentAppPushExtension *)self managerObjectFactory];
  managerObject = [managerObjectFactory managerObject];

  [managerObject sendExtensionFailed];
}

- (void)sendTimerEvent
{
  sessionContext = [(NEAgentAppPushExtension *)self sessionContext];
  [sessionContext sendTimerEvent];
}

- (void)sendOutgoingCallMessage:(id)message andMessageID:(id)d
{
  dCopy = d;
  messageCopy = message;
  sessionContext = [(NEAgentAppPushExtension *)self sessionContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006028;
  v10[3] = &unk_1000EADC0;
  v10[4] = self;
  v11 = dCopy;
  v9 = dCopy;
  [sessionContext sendOutgoingCallMessage:messageCopy completionHandler:v10];
}

- (void)setProviderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sessionContext = [(NEAgentAppPushExtension *)self sessionContext];
  [sessionContext setProviderConfiguration:configurationCopy];
}

- (void)startConnectionWithProviderConfig:(id)config
{
  configCopy = config;
  sessionContext = [(NEAgentAppPushExtension *)self sessionContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006420;
  v6[3] = &unk_1000EB068;
  v6[4] = self;
  [sessionContext startConnectionWithProviderConfig:configCopy completionHandler:v6];
}

- (void)didReceiveUnmatchEthernet
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ received request to stop provider for ethernet", &v6, 0xCu);
  }

  if (self)
  {
    managerObjectFactory = [(NEAgentAppPushExtension *)self managerObjectFactory];
    managerObject = [managerObjectFactory managerObject];

    [managerObject unmatchEthernet];
  }
}

- (void)didReceivePushToTalkMessageWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ received PushToTalk message with user info %@", &v9, 0x16u);
  }

  if (self)
  {
    v6 = infoCopy;
    managerObjectFactory = [(NEAgentAppPushExtension *)self managerObjectFactory];
    managerObject = [managerObjectFactory managerObject];

    [managerObject reportPushToTalkMessage:v6];
  }
}

- (void)didReceiveIncomingCallWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ received incoming call with user info %@", &v9, 0x16u);
  }

  if (self)
  {
    v6 = infoCopy;
    managerObjectFactory = [(NEAgentAppPushExtension *)self managerObjectFactory];
    managerObject = [managerObjectFactory managerObject];

    [managerObject reportIncomingCall:v6];
  }
}

- (void)handleAppsUpdateEnds:(id)ends
{
  endsCopy = ends;
  extensionIdentifier = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (extensionIdentifier)
  {
    v6 = extensionIdentifier;
    extensionIdentifier2 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [endsCopy containsObject:extensionIdentifier2];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        extensionIdentifier3 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        selfCopy = self;
        v13 = 2112;
        v14 = extensionIdentifier3;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ update for extension [%@] completed", &v11, 0x16u);
      }

      sub_10000699C(self, 2);
    }
  }
}

- (void)handleAppsUpdateEnding:(id)ending
{
  endingCopy = ending;
  extensionIdentifier = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (extensionIdentifier)
  {
    v6 = extensionIdentifier;
    extensionIdentifier2 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [endingCopy containsObject:extensionIdentifier2];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        extensionIdentifier3 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        selfCopy = self;
        v13 = 2112;
        v14 = extensionIdentifier3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ update for extension [%@] is in progress", &v11, 0x16u);
      }

      sub_10000699C(self, 1);
    }
  }
}

- (void)handleAppsUpdateBegins:(id)begins
{
  beginsCopy = begins;
  extensionIdentifier = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (extensionIdentifier)
  {
    v6 = extensionIdentifier;
    extensionIdentifier2 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [beginsCopy containsObject:extensionIdentifier2];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        extensionIdentifier3 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        selfCopy = self;
        v13 = 2112;
        v14 = extensionIdentifier3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ update for extension [%@] started", &v11, 0x16u);
      }

      sub_10000699C(self, 1);
    }
  }
}

- (void)handleAppsUninstalled:(id)uninstalled
{
  uninstalledCopy = uninstalled;
  extensionIdentifier = [(NEAgentAppPushExtension *)self extensionIdentifier];
  if (extensionIdentifier)
  {
    v6 = extensionIdentifier;
    extensionIdentifier2 = [(NEAgentAppPushExtension *)self extensionIdentifier];
    v8 = [uninstalledCopy containsObject:extensionIdentifier2];

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        extensionIdentifier3 = [(NEAgentAppPushExtension *)self extensionIdentifier];
        v11 = 138412546;
        selfCopy = self;
        v13 = 2112;
        v14 = extensionIdentifier3;
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