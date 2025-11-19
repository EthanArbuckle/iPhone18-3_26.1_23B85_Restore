@interface NSPProxyPath
- (BOOL)isMultiHopRegistered;
- (BOOL)isSingleHopRegistered;
- (BOOL)matchEgress:(id)a3;
- (BOOL)matchIngress:(id)a3;
- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4;
- (NSPProxyPath)initWithCoder:(id)a3;
- (NSPProxyPath)initWithDelegate:(id)a3 ingressProxy:(id)a4 egressProxy:(id)a5 proxyPathWeight:(unint64_t)a6 allowFallback:(BOOL)a7 fallbackToQUIC:(BOOL)a8 forceFallback:(BOOL)a9 allowFailOpen:(BOOL)a10 geohashSharingEnabled:(BOOL)a11 configEpoch:(id)a12 networkCharacteristics:(id)a13;
- (NSPProxyPathDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)multiHopConfigurationHash;
- (id)singleHopConfigurationHash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleNetworkCharacteristicsChange:(id)a3;
- (void)resetError;
- (void)resetStats;
- (void)updateConfigEpoch:(id)a3;
- (void)updateIngressProxy:(id)a3 egressProxy:(id)a4 proxyPathWeight:(unint64_t)a5;
@end

@implementation NSPProxyPath

- (NSPProxyPath)initWithDelegate:(id)a3 ingressProxy:(id)a4 egressProxy:(id)a5 proxyPathWeight:(unint64_t)a6 allowFallback:(BOOL)a7 fallbackToQUIC:(BOOL)a8 forceFallback:(BOOL)a9 allowFailOpen:(BOOL)a10 geohashSharingEnabled:(BOOL)a11 configEpoch:(id)a12 networkCharacteristics:(id)a13
{
  v18 = a3;
  v19 = a4;
  obj = a5;
  v20 = a5;
  v21 = a12;
  v22 = a13;
  if (!v19)
  {
    v31 = nplog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v29 = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v37 = "[NSPProxyPath initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:]";
    v32 = "%s called with null ingressProxy";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_10;
  }

  if (!v20)
  {
    v31 = nplog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v37 = "[NSPProxyPath initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:]";
    v32 = "%s called with null egressProxy";
    goto LABEL_12;
  }

  v35.receiver = self;
  v35.super_class = NSPProxyPath;
  v23 = [(NSPProxyPath *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_delegate, v18);
    objc_storeStrong(&v24->_ingressProxy, a4);
    objc_storeStrong(&v24->_egressProxy, obj);
    v24->_proxyPathWeight = a6;
    v24->_allowFallback = a7;
    v24->_fallbackToQUIC = a8;
    v24->_forceFallback = a9;
    v24->_allowFailOpen = a10;
    v24->_geohashSharingEnabled = a11;
    objc_storeStrong(&v24->_configEpoch, a12);
    v25 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkSingleHopAgentStatistics = v24->_networkSingleHopAgentStatistics;
    v24->_networkSingleHopAgentStatistics = v25;

    v27 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkMultiHopAgentStatistics = v24->_networkMultiHopAgentStatistics;
    v24->_networkMultiHopAgentStatistics = v27;

    sub_10000A4F0(v24->_networkMultiHopAgentStatistics, v22);
    sub_10000A4F0(v24->_networkSingleHopAgentStatistics, v22);
  }

  self = v24;
  v29 = self;
LABEL_6:

  return v29;
}

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  v8 = [(NSPProxyPath *)self ingressProxy];
  sub_1000417D0(v7, v8, @"Ingress proxy", a3, a4);

  v9 = [(NSPProxyPath *)self egressProxy];
  sub_1000417D0(v7, v9, @"Egress proxy", a3, a4);

  sub_100042020(v7, [(NSPProxyPath *)self allowFallback], @"Allow fallback", a3, a4);
  sub_100042020(v7, [(NSPProxyPath *)self fallbackToQUIC], @"Fallback to QUIC", a3, a4);
  sub_100042020(v7, [(NSPProxyPath *)self allowFailOpen], @"Allow fail open", a3, a4);
  sub_100042020(v7, [(NSPProxyPath *)self geohashSharingEnabled], @"Geohash Sharing Enabled", a3, a4);
  v10 = [(NSPProxyPath *)self configEpoch];
  sub_1000417D0(v7, v10, @"Config Epoch", a3, a4);

  v11 = [(NSPProxyPath *)self nonDefaultAgentUUID];
  sub_1000417D0(v7, v11, @"Agent UUID", a3, a4);

  v12 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_1000417D0(v7, v12, @"Single hop statistics", a3, a4);

  v13 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_1000417D0(v7, v13, @"Multi hop statistics", a3, a4);

  return v7;
}

- (NSPProxyPath)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NSPProxyPath;
  v5 = [(NSPProxyPath *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v5->_proxyPathWeight = [v4 decodeIntegerForKey:@"proxyPathWeight"];
    v5->_allowFallback = [v4 decodeBoolForKey:@"proxyPathAllowFallback"];
    v5->_fallbackToQUIC = [v4 decodeBoolForKey:@"proxyPathFallbackToQUIC"];
    v5->_forceFallback = [v4 decodeBoolForKey:@"proxyPathForceFallback"];
    v5->_allowFailOpen = [v4 decodeBoolForKey:@"proxyPathAllowFailOpen"];
    v5->_geohashSharingEnabled = [v4 decodeBoolForKey:@"proxyPathGeohashSharingEnabled"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathConfigEpoch"];
    configEpoch = v5->_configEpoch;
    v5->_configEpoch = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathAgentUUID"];
    nonDefaultAgentUUID = v5->_nonDefaultAgentUUID;
    v5->_nonDefaultAgentUUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathSingleHopAgentStatistics"];
    networkSingleHopAgentStatistics = v5->_networkSingleHopAgentStatistics;
    v5->_networkSingleHopAgentStatistics = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathMultipleHopAgentStatistics"];
    networkMultiHopAgentStatistics = v5->_networkMultiHopAgentStatistics;
    v5->_networkMultiHopAgentStatistics = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSPProxyPath *)self ingressProxy];
  [v4 encodeObject:v5 forKey:@"proxyPathIngressProxy"];

  v6 = [(NSPProxyPath *)self egressProxy];
  [v4 encodeObject:v6 forKey:@"proxyPathEgressProxy"];

  [v4 encodeInteger:-[NSPProxyPath proxyPathWeight](self forKey:{"proxyPathWeight"), @"proxyPathWeight"}];
  [v4 encodeBool:-[NSPProxyPath allowFallback](self forKey:{"allowFallback"), @"proxyPathAllowFallback"}];
  [v4 encodeBool:-[NSPProxyPath fallbackToQUIC](self forKey:{"fallbackToQUIC"), @"proxyPathFallbackToQUIC"}];
  [v4 encodeBool:-[NSPProxyPath forceFallback](self forKey:{"forceFallback"), @"proxyPathForceFallback"}];
  [v4 encodeBool:-[NSPProxyPath allowFailOpen](self forKey:{"allowFailOpen"), @"proxyPathAllowFailOpen"}];
  [v4 encodeBool:-[NSPProxyPath geohashSharingEnabled](self forKey:{"geohashSharingEnabled"), @"proxyPathGeohashSharingEnabled"}];
  v7 = [(NSPProxyPath *)self configEpoch];
  [v4 encodeObject:v7 forKey:@"proxyPathConfigEpoch"];

  v8 = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [v4 encodeObject:v8 forKey:@"proxyPathAgentUUID"];

  v9 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [v4 encodeObject:v9 forKey:@"proxyPathSingleHopAgentStatistics"];

  v10 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [v4 encodeObject:v10 forKey:@"proxyPathMultipleHopAgentStatistics"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPProxyPath allocWithZone:?]];
  v5 = [(NSPProxyPath *)self delegate];
  [(NSPProxyPath *)v4 setDelegate:v5];

  v6 = [(NSPProxyPath *)self ingressProxy];
  [(NSPProxyPath *)v4 setIngressProxy:v6];

  v7 = [(NSPProxyPath *)self egressProxy];
  [(NSPProxyPath *)v4 setEgressProxy:v7];

  [(NSPProxyPath *)v4 setProxyPathWeight:[(NSPProxyPath *)self proxyPathWeight]];
  [(NSPProxyPath *)v4 setAllowFallback:[(NSPProxyPath *)self allowFallback]];
  [(NSPProxyPath *)v4 setFallbackToQUIC:[(NSPProxyPath *)self fallbackToQUIC]];
  [(NSPProxyPath *)v4 setForceFallback:[(NSPProxyPath *)self forceFallback]];
  [(NSPProxyPath *)v4 setAllowFailOpen:[(NSPProxyPath *)self allowFailOpen]];
  [(NSPProxyPath *)v4 setGeohashSharingEnabled:[(NSPProxyPath *)self geohashSharingEnabled]];
  v8 = [(NSPProxyPath *)self configEpoch];
  [(NSPProxyPath *)v4 setConfigEpoch:v8];

  v9 = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [(NSPProxyPath *)v4 setNonDefaultAgentUUID:v9];

  [(NSPProxyPath *)v4 setSingleHopRegistered:[(NSPProxyPath *)self singleHopRegistered]];
  [(NSPProxyPath *)v4 setMultiHopRegistered:[(NSPProxyPath *)self multiHopRegistered]];
  v10 = [(NSPProxyPath *)self singleHopRegistration];
  [(NSPProxyPath *)v4 setSingleHopRegistration:v10];

  v11 = [(NSPProxyPath *)self multiHopRegistration];
  [(NSPProxyPath *)v4 setMultiHopRegistration:v11];

  v12 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkSingleHopAgentStatistics:v12];

  v13 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkMultiHopAgentStatistics:v13];

  return v4;
}

- (BOOL)isMultiHopRegistered
{
  v2 = [(NSPProxyPath *)self multiHopRegistration];
  v3 = v2;
  if (v2)
  {
    v4 = [*(v2 + 24) isRegistered];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSingleHopRegistered
{
  v2 = [(NSPProxyPath *)self singleHopRegistration];
  v3 = v2;
  if (v2)
  {
    v4 = [*(v2 + 24) isRegistered];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateIngressProxy:(id)a3 egressProxy:(id)a4 proxyPathWeight:(unint64_t)a5
{
  v8 = a4;
  [(NSPProxyPath *)self setIngressProxy:a3];
  [(NSPProxyPath *)self setEgressProxy:v8];

  [(NSPProxyPath *)self setProxyPathWeight:a5];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (void)updateConfigEpoch:(id)a3
{
  [(NSPProxyPath *)self setConfigEpoch:a3];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[NSPProxyPath proxyPathIsValid:proxyPathList:]", "NSPPrivacyProxyAgentManager.m", 3428, "0");
}

- (BOOL)matchIngress:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchIngress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  v5 = [(NSPProxyPath *)self ingressProxy];

  if (!v5)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchIngress:]";
    v15 = "%s called with null self.ingressProxy";
    goto LABEL_12;
  }

  v6 = [(NSPProxyPath *)self ingressProxy];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 proxyURL];
  v11 = [v4[3] proxyURL];
  v12 = [v10 isEqualToString:v11];

LABEL_6:
  return v12;
}

- (BOOL)matchEgress:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchEgress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  v5 = [(NSPProxyPath *)self egressProxy];

  if (!v5)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPProxyPath matchEgress:]";
    v15 = "%s called with null self.egressProxy";
    goto LABEL_12;
  }

  v6 = [(NSPProxyPath *)self egressProxy];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 proxyURL];
  v11 = [v4[3] proxyURL];
  v12 = [v10 isEqualToString:v11];

LABEL_6:
  return v12;
}

- (void)handleNetworkCharacteristicsChange:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "proxy path: network signature changed", v10, 2u);
  }

  v6 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_10000A4F0(v6, v4);

  v7 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_10000A4F0(v7, v4);

  v8 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (v8)
  {
    v8[6] = 0u;
    v8[7] = 0u;
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    v8[1] = 0u;
  }

  v9 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (v9)
  {
    v9[6] = 0u;
    v9[7] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    v9[1] = 0u;
  }
}

- (void)resetStats
{
  v3 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (v3)
  {
    v3[6] = 0u;
    v3[7] = 0u;
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[1] = 0u;
  }

  v4 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (v4)
  {
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v4[1] = 0u;
  }
}

- (void)resetError
{
  v3 = [(NSPProxyPath *)self singleHopRegistration];
  v4 = v3;
  if (v3)
  {
    [*(v3 + 24) resetError];
  }

  v5 = [(NSPProxyPath *)self multiHopRegistration];
  if (v5)
  {
    v6 = v5;
    [v5[3] resetError];
    v5 = v6;
  }
}

- (void)dealloc
{
  v3 = [(NSPProxyPath *)self singleHopRegistration];
  sub_100042E8C(v3);

  v4 = [(NSPProxyPath *)self delegate];
  [v4 singleHopAgentUnregistered:self];

  v5 = [(NSPProxyPath *)self multiHopRegistration];
  sub_100042E8C(v5);

  v6 = [(NSPProxyPath *)self delegate];
  [v6 multiHopAgentUnregistered:self];

  v7.receiver = self;
  v7.super_class = NSPProxyPath;
  [(NSPProxyPath *)&v7 dealloc];
}

- (id)singleHopConfigurationHash
{
  v2 = [(NSPProxyPath *)self singleHopRegistration];
  v3 = sub_100042F70(v2);

  return v3;
}

- (id)multiHopConfigurationHash
{
  v2 = [(NSPProxyPath *)self multiHopRegistration];
  v3 = sub_100042F70(v2);

  return v3;
}

- (NSPProxyPathDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end