@interface NESMIKEv2VPNSession
- (BOOL)initializePlugins;
- (BOOL)prepareConfigurationForStart;
- (int)getVirtualInterfaceMTU:(id)u;
- (void)createConnectParametersWithStartMessage:(id)message;
@end

@implementation NESMIKEv2VPNSession

- (int)getVirtualInterfaceMTU:(id)u
{
  uCopy = u;
  protocol = [(NESMVPNSession *)self protocol];
  if ([protocol mtu] >= 0x3E8 && objc_msgSend(protocol, "mtu") < 0x5DD)
  {
    intValue = [protocol mtu];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [protocol mtu];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "requested mtu size out of range %lu", &v10, 0xCu);
    }

    v7 = [uCopy MTU];
    intValue = [v7 intValue];
  }

  return intValue;
}

- (BOOL)prepareConfigurationForStart
{
  if ([(NESMVPNSession *)self parentType]!= 1)
  {
    return 1;
  }

  parent = [(NESMVPNSession *)self parent];
  interfaceName = [(NESMVPNSession *)self interfaceName];
  v5 = sub_10000A780(parent, interfaceName);
  configuration = [(NESMSession *)self configuration];
  alwaysOnVPN = [configuration alwaysOnVPN];
  [alwaysOnVPN setActiveInterfaceProtocolKey:v5];

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    configuration2 = [(NESMSession *)self configuration];
    alwaysOnVPN2 = [configuration2 alwaysOnVPN];
    activeInterfaceProtocolKey = [alwaysOnVPN2 activeInterfaceProtocolKey];
    v17 = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = activeInterfaceProtocolKey;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: prepareConfigurationForStart: activeInterfaceProtocolKey %@", &v17, 0x16u);
  }

  configuration3 = [(NESMSession *)self configuration];
  alwaysOnVPN3 = [configuration3 alwaysOnVPN];
  activeInterfaceProtocolKey2 = [alwaysOnVPN3 activeInterfaceProtocolKey];
  v12 = activeInterfaceProtocolKey2 != 0;

  return v12;
}

- (void)createConnectParametersWithStartMessage:(id)message
{
  messageCopy = message;
  protocol = [(NESMVPNSession *)self protocol];
  if ([(NESMVPNSession *)self sessionType]== 3)
  {
    if (![protocol natKeepAliveOffloadEnable])
    {
      [protocol setNatKeepAliveOffloadEnable:2];
    }

    buf[0] = 0;
    v29 = 0;
    interfaceName = [(NESMVPNSession *)self interfaceName];
    [interfaceName UTF8String];
    NEGetInterfaceType();

    if (![protocol natKeepAliveOffloadInterval] || objc_msgSend(protocol, "natKeepAliveOffloadInterval") == 110)
    {
      parent = [(NESMVPNSession *)self parent];
      v8 = parent;
      if (parent)
      {
        v9 = *(parent + 356);
      }

      else
      {
        v9 = 0;
      }

      if (v9 <= 0x6E)
      {
        v10 = 110;
      }

      else
      {
        v10 = v9;
      }

      [protocol setNatKeepAliveOffloadInterval:v10];
    }

    [protocol setDisableMOBIKERetryOnWake:1];
  }

  if ([(NESMVPNSession *)self parentType]== 2)
  {
    parent2 = [(NESMVPNSession *)self parent];
    selfCopy = self;
    v14 = selfCopy;
    if (parent2)
    {
      if (selfCopy)
      {
        v15 = [objc_getProperty(parent2 v13];
        v17 = v15;
        if (v15)
        {
          Property = objc_getProperty(v15, v16, 24, 1);
        }

        else
        {
          Property = 0;
        }

        v20 = objc_getProperty(parent2, v19, 360, 1);
        if (Property == v14)
        {
          v25 = [v20 objectAtIndexedSubscript:1];
          if (v25)
          {
            v22 = v25[2];
          }

          else
          {
            v22 = 0;
          }

          v23 = ne_log_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 67109120;
          LODWORD(v31) = v22;
          v24 = "shouldDisableInitialContactForSession fallback session status %d";
        }

        else
        {
          v21 = [v20 objectAtIndexedSubscript:0];
          if (v21)
          {
            v22 = v21[2];
          }

          else
          {
            v22 = 0;
          }

          v23 = ne_log_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 67109120;
          LODWORD(v31) = v22;
          v24 = "shouldDisableInitialContactForSession primary session status %d";
        }

        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 8u);
LABEL_28:

        v26 = v22 > 1;
LABEL_29:

        [protocol setDisableInitialContact:v26];
        goto LABEL_30;
      }

      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "[NESMIKEv2VPNFallbackSession shouldDisableInitialContactForSession:]";
        _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
      }
    }

    v26 = 0;
    goto LABEL_29;
  }

LABEL_30:
  v28.receiver = self;
  v28.super_class = NESMIKEv2VPNSession;
  [(NESMVPNSession *)&v28 createConnectParametersWithStartMessage:messageCopy];
}

- (BOOL)initializePlugins
{
  primaryTunnelPlugin = [(NESMVPNSession *)self primaryTunnelPlugin];

  if (primaryTunnelPlugin)
  {
    return 1;
  }

  v5 = [(NESMSession *)self uid];

  if (v5)
  {
    v6 = [NEAgent alloc];
    v7 = [(NESMSession *)self uid];
    v8 = [(NEAgent *)v6 initWithPluginType:@"com.apple.NetworkExtension.IKEv2Provider" pluginVersion:1 pluginClass:5 pluginInfo:&off_1000EE530 userID:v7];

    if (v8)
    {
      v9 = [NEVPNTunnelPlugin alloc];
      queue = [(NESMSession *)self queue];
      v11 = [(NEVPNTunnelPlugin *)v9 initWithAgent:v8 delegateQueue:queue andDelegate:self];
      [(NESMVPNSession *)self setPrimaryTunnelPlugin:v11];
    }

    extensibleSSOProvider = [(NESMVPNSession *)self extensibleSSOProvider];

    if (extensibleSSOProvider)
    {
      extensibleSSOProvider2 = [(NESMVPNSession *)self extensibleSSOProvider];
      v25 = extensibleSSOProvider2;
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

      v15 = [NEAgent alloc];
      pluginType = [(NESMVPNSession *)self pluginType];
      v17 = [(NESMSession *)self uid];
      v18 = [(NEAgent *)v15 initWithPluginType:pluginType pluginVersion:0 pluginClass:8 pluginInfo:v14 userID:v17];

      v19 = [NEVPNAuthenticationPlugin alloc];
      queue2 = [(NESMSession *)self queue];
      v21 = [(NEPlugin *)v19 initWithAgent:v18 delegateQueue:queue2 andDelegate:self];
      [(NESMVPNSession *)self setAuthenticationPlugin:v21];
    }

    primaryTunnelPlugin2 = [(NESMVPNSession *)self primaryTunnelPlugin];
    v4 = primaryTunnelPlugin2 != 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: No UID available, cannot create plugin", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end