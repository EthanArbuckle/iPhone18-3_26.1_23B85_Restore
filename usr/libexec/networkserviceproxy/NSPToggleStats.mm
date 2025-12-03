@interface NSPToggleStats
- (NSPToggleStats)init;
- (id)analyticsDict;
- (void)addNetworkStatsToToggleStatsDict:(id)dict networkStats:(id)stats;
- (void)resetStats;
- (void)sendToggleOffStats;
- (void)sendToggleOnStats;
@end

@implementation NSPToggleStats

- (void)resetStats
{
  [(NSPToggleStats *)self setConfigOutageCount:0];
  [(NSPToggleStats *)self setTokenOutageCount:0];
  [(NSPToggleStats *)self setNetworkOutageCount:0];
  [(NSPToggleStats *)self setProxyOutageCount:0];
  [(NSPToggleStats *)self setOdohOutageCount:0];
  [(NSPToggleStats *)self setSystemIncompatibleCount:0];
  [(NSPToggleStats *)self setFraudAlertCount:0];
  [(NSPToggleStats *)self setOdohAuthFailureCount:0];
  [(NSPToggleStats *)self setOdohBadMessageCount:0];
  primaryPathStatistics = [(NSPToggleStats *)self primaryPathStatistics];
  if (primaryPathStatistics)
  {
    primaryPathStatistics[6] = 0u;
    primaryPathStatistics[7] = 0u;
    primaryPathStatistics[4] = 0u;
    primaryPathStatistics[5] = 0u;
    primaryPathStatistics[2] = 0u;
    primaryPathStatistics[3] = 0u;
    primaryPathStatistics[1] = 0u;
  }

  fallbackPathStatistics = [(NSPToggleStats *)self fallbackPathStatistics];
  if (fallbackPathStatistics)
  {
    fallbackPathStatistics[6] = 0u;
    fallbackPathStatistics[7] = 0u;
    fallbackPathStatistics[4] = 0u;
    fallbackPathStatistics[5] = 0u;
    fallbackPathStatistics[2] = 0u;
    fallbackPathStatistics[3] = 0u;
    fallbackPathStatistics[1] = 0u;
  }
}

- (NSPToggleStats)init
{
  v8.receiver = self;
  v8.super_class = NSPToggleStats;
  v2 = [(NSPToggleStats *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    primaryPathStatistics = v2->_primaryPathStatistics;
    v2->_primaryPathStatistics = v3;

    v5 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    fallbackPathStatistics = v2->_fallbackPathStatistics;
    v2->_fallbackPathStatistics = v5;
  }

  return v2;
}

- (void)addNetworkStatsToToggleStatsDict:(id)dict networkStats:(id)stats
{
  dictCopy = dict;
  statsCopy = stats;
  v8 = statsCopy;
  if (!dictCopy)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v42 = "[NSPToggleStats addNetworkStatsToToggleStatsDict:networkStats:]";
    v40 = "%s called with null toggleStatsDict";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, v40, buf, 0xCu);
    goto LABEL_9;
  }

  if (!statsCopy)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v42 = "[NSPToggleStats addNetworkStatsToToggleStatsDict:networkStats:]";
    v40 = "%s called with null networkStats";
    goto LABEL_14;
  }

  primaryPathStatistics = [(NSPToggleStats *)self primaryPathStatistics];

  if (primaryPathStatistics == v8)
  {
    v11 = @"PrimaryPath";
  }

  else
  {
    fallbackPathStatistics = [(NSPToggleStats *)self fallbackPathStatistics];

    if (fallbackPathStatistics == v8)
    {
      v11 = @"FallbackPath";
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = [NSString stringWithFormat:@"%@%@", v11, @"ProxyConnectionSuccessCount"];
  v13 = [NSNumber numberWithUnsignedInteger:v8[2]];
  [dictCopy setObject:v13 forKeyedSubscript:v12];

  v14 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionTimeoutCount"];

  v15 = [NSNumber numberWithUnsignedInteger:v8[3]];
  [dictCopy setObject:v15 forKeyedSubscript:v14];

  v16 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionRefusedCount"];

  v17 = [NSNumber numberWithUnsignedInteger:v8[4]];
  [dictCopy setObject:v17 forKeyedSubscript:v16];

  v18 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionHostDownCount"];

  v19 = [NSNumber numberWithUnsignedInteger:v8[5]];
  [dictCopy setObject:v19 forKeyedSubscript:v18];

  v20 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionHostUnreachableCount"];

  v21 = [NSNumber numberWithUnsignedInteger:v8[6]];
  [dictCopy setObject:v21 forKeyedSubscript:v20];

  v22 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionErrorCount"];

  v23 = [NSNumber numberWithUnsignedInteger:v8[7]];
  [dictCopy setObject:v23 forKeyedSubscript:v22];

  v24 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionDNSTimeoutCount"];

  v25 = [NSNumber numberWithUnsignedInteger:v8[8]];
  [dictCopy setObject:v25 forKeyedSubscript:v24];

  v26 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionDNSBlockedCount"];

  v27 = [NSNumber numberWithUnsignedInteger:v8[9]];
  [dictCopy setObject:v27 forKeyedSubscript:v26];

  v28 = [NSString stringWithFormat:@"%@%@", v11, @"IngressProxyConnectionCertErrorCount"];

  v29 = [NSNumber numberWithUnsignedInteger:v8[10]];
  [dictCopy setObject:v29 forKeyedSubscript:v28];

  v30 = [NSString stringWithFormat:@"%@%@", v11, @"EgressProxyConnectionErrorCount"];

  v31 = [NSNumber numberWithUnsignedInteger:v8[11]];
  [dictCopy setObject:v31 forKeyedSubscript:v30];

  v32 = [NSString stringWithFormat:@"%@%@", v11, @"OriginProxyConnectionErrorCount"];

  v33 = [NSNumber numberWithUnsignedInteger:v8[12]];
  [dictCopy setObject:v33 forKeyedSubscript:v32];

  v34 = [NSString stringWithFormat:@"%@%@", v11, @"EgressProxyUnavailableErrorCount"];

  v35 = [NSNumber numberWithUnsignedInteger:v8[13]];
  [dictCopy setObject:v35 forKeyedSubscript:v34];

  v36 = [NSString stringWithFormat:@"%@%@", v11, @"IncompleteHandshakeStallCount"];

  v37 = [NSNumber numberWithUnsignedInteger:v8[14]];
  [dictCopy setObject:v37 forKeyedSubscript:v36];

  v38 = [NSString stringWithFormat:@"%@%@", v11, @"PostHandShakeStallCount"];

  v39 = [NSNumber numberWithUnsignedInteger:v8[15]];
  [dictCopy setObject:v39 forKeyedSubscript:v38];

LABEL_9:
}

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(NSPToggleStats *)self toggleState]];
  [v3 setObject:v4 forKeyedSubscript:@"ToggleState"];

  v5 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self configOutageCount]];
  [v3 setObject:v5 forKeyedSubscript:@"ConfigOutageCount"];

  v6 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self tokenOutageCount]];
  [v3 setObject:v6 forKeyedSubscript:@"TokenOutageCount"];

  v7 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self networkOutageCount]];
  [v3 setObject:v7 forKeyedSubscript:@"NetworkOutageCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self proxyOutageCount]];
  [v3 setObject:v8 forKeyedSubscript:@"ProxyOutageCount"];

  v9 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self odohOutageCount]];
  [v3 setObject:v9 forKeyedSubscript:@"ODoHOutageCount"];

  v10 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self systemIncompatibleCount]];
  [v3 setObject:v10 forKeyedSubscript:@"SystemIncompatibleCount"];

  v11 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self fraudAlertCount]];
  [v3 setObject:v11 forKeyedSubscript:@"FraudAlertCount"];

  v12 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self odohAuthFailureCount]];
  [v3 setObject:v12 forKeyedSubscript:@"ODoHAuthFailureCount"];

  v13 = [NSNumber numberWithUnsignedInteger:[(NSPToggleStats *)self odohBadMessageCount]];
  [v3 setObject:v13 forKeyedSubscript:@"ODoHBadMessageCount"];

  primaryPathStatistics = [(NSPToggleStats *)self primaryPathStatistics];
  [(NSPToggleStats *)self addNetworkStatsToToggleStatsDict:v3 networkStats:primaryPathStatistics];

  fallbackPathStatistics = [(NSPToggleStats *)self fallbackPathStatistics];
  [(NSPToggleStats *)self addNetworkStatsToToggleStatsDict:v3 networkStats:fallbackPathStatistics];

  return v3;
}

- (void)sendToggleOnStats
{
  [(NSPToggleStats *)self setToggleState:1];

  [(NSPProxyAnalytics *)self sendAnalytics];
}

- (void)sendToggleOffStats
{
  [(NSPToggleStats *)self setToggleState:0];

  [(NSPProxyAnalytics *)self sendAnalytics];
}

@end