@interface NESMIKEv2VPNSession
- (BOOL)initializePlugins;
- (BOOL)prepareConfigurationForStart;
- (int)getVirtualInterfaceMTU:(id)a3;
- (void)createConnectParametersWithStartMessage:(id)a3;
@end

@implementation NESMIKEv2VPNSession

- (int)getVirtualInterfaceMTU:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self protocol];
  if ([v5 mtu] >= 0x3E8 && objc_msgSend(v5, "mtu") < 0x5DD)
  {
    v8 = [v5 mtu];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 mtu];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "requested mtu size out of range %lu", &v10, 0xCu);
    }

    v7 = [v4 MTU];
    v8 = [v7 intValue];
  }

  return v8;
}

- (BOOL)prepareConfigurationForStart
{
  if ([(NESMVPNSession *)self parentType]!= 1)
  {
    return 1;
  }

  v3 = [(NESMVPNSession *)self parent];
  v4 = [(NESMVPNSession *)self interfaceName];
  v5 = sub_10000A780(v3, v4);
  v6 = [(NESMSession *)self configuration];
  v7 = [v6 alwaysOnVPN];
  [v7 setActiveInterfaceProtocolKey:v5];

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(NESMSession *)self configuration];
    v15 = [v14 alwaysOnVPN];
    v16 = [v15 activeInterfaceProtocolKey];
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: prepareConfigurationForStart: activeInterfaceProtocolKey %@", &v17, 0x16u);
  }

  v9 = [(NESMSession *)self configuration];
  v10 = [v9 alwaysOnVPN];
  v11 = [v10 activeInterfaceProtocolKey];
  v12 = v11 != 0;

  return v12;
}

- (void)createConnectParametersWithStartMessage:(id)a3
{
  v4 = a3;
  v5 = [(NESMVPNSession *)self protocol];
  if ([(NESMVPNSession *)self sessionType]== 3)
  {
    if (![v5 natKeepAliveOffloadEnable])
    {
      [v5 setNatKeepAliveOffloadEnable:2];
    }

    buf[0] = 0;
    v29 = 0;
    v6 = [(NESMVPNSession *)self interfaceName];
    [v6 UTF8String];
    NEGetInterfaceType();

    if (![v5 natKeepAliveOffloadInterval] || objc_msgSend(v5, "natKeepAliveOffloadInterval") == 110)
    {
      v7 = [(NESMVPNSession *)self parent];
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 356);
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

      [v5 setNatKeepAliveOffloadInterval:v10];
    }

    [v5 setDisableMOBIKERetryOnWake:1];
  }

  if ([(NESMVPNSession *)self parentType]== 2)
  {
    v11 = [(NESMVPNSession *)self parent];
    v12 = self;
    v14 = v12;
    if (v11)
    {
      if (v12)
      {
        v15 = [objc_getProperty(v11 v13];
        v17 = v15;
        if (v15)
        {
          Property = objc_getProperty(v15, v16, 24, 1);
        }

        else
        {
          Property = 0;
        }

        v20 = objc_getProperty(v11, v19, 360, 1);
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

        [v5 setDisableInitialContact:v26];
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
  [(NESMVPNSession *)&v28 createConnectParametersWithStartMessage:v4];
}

- (BOOL)initializePlugins
{
  v3 = [(NESMVPNSession *)self primaryTunnelPlugin];

  if (v3)
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
      v10 = [(NESMSession *)self queue];
      v11 = [(NEVPNTunnelPlugin *)v9 initWithAgent:v8 delegateQueue:v10 andDelegate:self];
      [(NESMVPNSession *)self setPrimaryTunnelPlugin:v11];
    }

    v12 = [(NESMVPNSession *)self extensibleSSOProvider];

    if (v12)
    {
      v13 = [(NESMVPNSession *)self extensibleSSOProvider];
      v25 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

      v15 = [NEAgent alloc];
      v16 = [(NESMVPNSession *)self pluginType];
      v17 = [(NESMSession *)self uid];
      v18 = [(NEAgent *)v15 initWithPluginType:v16 pluginVersion:0 pluginClass:8 pluginInfo:v14 userID:v17];

      v19 = [NEVPNAuthenticationPlugin alloc];
      v20 = [(NESMSession *)self queue];
      v21 = [(NEPlugin *)v19 initWithAgent:v18 delegateQueue:v20 andDelegate:self];
      [(NESMVPNSession *)self setAuthenticationPlugin:v21];
    }

    v22 = [(NESMVPNSession *)self primaryTunnelPlugin];
    v4 = v22 != 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = self;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: No UID available, cannot create plugin", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end