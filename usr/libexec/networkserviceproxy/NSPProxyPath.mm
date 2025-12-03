@interface NSPProxyPath
- (BOOL)isMultiHopRegistered;
- (BOOL)isSingleHopRegistered;
- (BOOL)matchEgress:(id)egress;
- (BOOL)matchIngress:(id)ingress;
- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list;
- (NSPProxyPath)initWithCoder:(id)coder;
- (NSPProxyPath)initWithDelegate:(id)delegate ingressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight allowFallback:(BOOL)fallback fallbackToQUIC:(BOOL)c forceFallback:(BOOL)forceFallback allowFailOpen:(BOOL)self0 geohashSharingEnabled:(BOOL)self1 configEpoch:(id)self2 networkCharacteristics:(id)self3;
- (NSPProxyPathDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)multiHopConfigurationHash;
- (id)singleHopConfigurationHash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleNetworkCharacteristicsChange:(id)change;
- (void)resetError;
- (void)resetStats;
- (void)updateConfigEpoch:(id)epoch;
- (void)updateIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight;
@end

@implementation NSPProxyPath

- (NSPProxyPath)initWithDelegate:(id)delegate ingressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight allowFallback:(BOOL)fallback fallbackToQUIC:(BOOL)c forceFallback:(BOOL)forceFallback allowFailOpen:(BOOL)self0 geohashSharingEnabled:(BOOL)self1 configEpoch:(id)self2 networkCharacteristics:(id)self3
{
  delegateCopy = delegate;
  proxyCopy = proxy;
  obj = egressProxy;
  egressProxyCopy = egressProxy;
  epochCopy = epoch;
  characteristicsCopy = characteristics;
  if (!proxyCopy)
  {
    v31 = nplog_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      selfCopy = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v37 = "[NSPProxyPath initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:]";
    v32 = "%s called with null ingressProxy";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_10;
  }

  if (!egressProxyCopy)
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
    objc_storeWeak(&v23->_delegate, delegateCopy);
    objc_storeStrong(&v24->_ingressProxy, proxy);
    objc_storeStrong(&v24->_egressProxy, obj);
    v24->_proxyPathWeight = weight;
    v24->_allowFallback = fallback;
    v24->_fallbackToQUIC = c;
    v24->_forceFallback = forceFallback;
    v24->_allowFailOpen = open;
    v24->_geohashSharingEnabled = enabled;
    objc_storeStrong(&v24->_configEpoch, epoch);
    v25 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkSingleHopAgentStatistics = v24->_networkSingleHopAgentStatistics;
    v24->_networkSingleHopAgentStatistics = v25;

    v27 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    networkMultiHopAgentStatistics = v24->_networkMultiHopAgentStatistics;
    v24->_networkMultiHopAgentStatistics = v27;

    sub_10000A4F0(v24->_networkMultiHopAgentStatistics, characteristicsCopy);
    sub_10000A4F0(v24->_networkSingleHopAgentStatistics, characteristicsCopy);
  }

  self = v24;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  sub_1000417D0(v7, ingressProxy, @"Ingress proxy", indent, options);

  egressProxy = [(NSPProxyPath *)self egressProxy];
  sub_1000417D0(v7, egressProxy, @"Egress proxy", indent, options);

  sub_100042020(v7, [(NSPProxyPath *)self allowFallback], @"Allow fallback", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self fallbackToQUIC], @"Fallback to QUIC", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self allowFailOpen], @"Allow fail open", indent, options);
  sub_100042020(v7, [(NSPProxyPath *)self geohashSharingEnabled], @"Geohash Sharing Enabled", indent, options);
  configEpoch = [(NSPProxyPath *)self configEpoch];
  sub_1000417D0(v7, configEpoch, @"Config Epoch", indent, options);

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  sub_1000417D0(v7, nonDefaultAgentUUID, @"Agent UUID", indent, options);

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_1000417D0(v7, networkSingleHopAgentStatistics, @"Single hop statistics", indent, options);

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_1000417D0(v7, networkMultiHopAgentStatistics, @"Multi hop statistics", indent, options);

  return v7;
}

- (NSPProxyPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NSPProxyPath;
  v5 = [(NSPProxyPath *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v5->_proxyPathWeight = [coderCopy decodeIntegerForKey:@"proxyPathWeight"];
    v5->_allowFallback = [coderCopy decodeBoolForKey:@"proxyPathAllowFallback"];
    v5->_fallbackToQUIC = [coderCopy decodeBoolForKey:@"proxyPathFallbackToQUIC"];
    v5->_forceFallback = [coderCopy decodeBoolForKey:@"proxyPathForceFallback"];
    v5->_allowFailOpen = [coderCopy decodeBoolForKey:@"proxyPathAllowFailOpen"];
    v5->_geohashSharingEnabled = [coderCopy decodeBoolForKey:@"proxyPathGeohashSharingEnabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathConfigEpoch"];
    configEpoch = v5->_configEpoch;
    v5->_configEpoch = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathAgentUUID"];
    nonDefaultAgentUUID = v5->_nonDefaultAgentUUID;
    v5->_nonDefaultAgentUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathSingleHopAgentStatistics"];
    networkSingleHopAgentStatistics = v5->_networkSingleHopAgentStatistics;
    v5->_networkSingleHopAgentStatistics = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathMultipleHopAgentStatistics"];
    networkMultiHopAgentStatistics = v5->_networkMultiHopAgentStatistics;
    v5->_networkMultiHopAgentStatistics = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  [coderCopy encodeObject:ingressProxy forKey:@"proxyPathIngressProxy"];

  egressProxy = [(NSPProxyPath *)self egressProxy];
  [coderCopy encodeObject:egressProxy forKey:@"proxyPathEgressProxy"];

  [coderCopy encodeInteger:-[NSPProxyPath proxyPathWeight](self forKey:{"proxyPathWeight"), @"proxyPathWeight"}];
  [coderCopy encodeBool:-[NSPProxyPath allowFallback](self forKey:{"allowFallback"), @"proxyPathAllowFallback"}];
  [coderCopy encodeBool:-[NSPProxyPath fallbackToQUIC](self forKey:{"fallbackToQUIC"), @"proxyPathFallbackToQUIC"}];
  [coderCopy encodeBool:-[NSPProxyPath forceFallback](self forKey:{"forceFallback"), @"proxyPathForceFallback"}];
  [coderCopy encodeBool:-[NSPProxyPath allowFailOpen](self forKey:{"allowFailOpen"), @"proxyPathAllowFailOpen"}];
  [coderCopy encodeBool:-[NSPProxyPath geohashSharingEnabled](self forKey:{"geohashSharingEnabled"), @"proxyPathGeohashSharingEnabled"}];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  [coderCopy encodeObject:configEpoch forKey:@"proxyPathConfigEpoch"];

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [coderCopy encodeObject:nonDefaultAgentUUID forKey:@"proxyPathAgentUUID"];

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [coderCopy encodeObject:networkSingleHopAgentStatistics forKey:@"proxyPathSingleHopAgentStatistics"];

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [coderCopy encodeObject:networkMultiHopAgentStatistics forKey:@"proxyPathMultipleHopAgentStatistics"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPProxyPath allocWithZone:?]];
  delegate = [(NSPProxyPath *)self delegate];
  [(NSPProxyPath *)v4 setDelegate:delegate];

  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  [(NSPProxyPath *)v4 setIngressProxy:ingressProxy];

  egressProxy = [(NSPProxyPath *)self egressProxy];
  [(NSPProxyPath *)v4 setEgressProxy:egressProxy];

  [(NSPProxyPath *)v4 setProxyPathWeight:[(NSPProxyPath *)self proxyPathWeight]];
  [(NSPProxyPath *)v4 setAllowFallback:[(NSPProxyPath *)self allowFallback]];
  [(NSPProxyPath *)v4 setFallbackToQUIC:[(NSPProxyPath *)self fallbackToQUIC]];
  [(NSPProxyPath *)v4 setForceFallback:[(NSPProxyPath *)self forceFallback]];
  [(NSPProxyPath *)v4 setAllowFailOpen:[(NSPProxyPath *)self allowFailOpen]];
  [(NSPProxyPath *)v4 setGeohashSharingEnabled:[(NSPProxyPath *)self geohashSharingEnabled]];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  [(NSPProxyPath *)v4 setConfigEpoch:configEpoch];

  nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];
  [(NSPProxyPath *)v4 setNonDefaultAgentUUID:nonDefaultAgentUUID];

  [(NSPProxyPath *)v4 setSingleHopRegistered:[(NSPProxyPath *)self singleHopRegistered]];
  [(NSPProxyPath *)v4 setMultiHopRegistered:[(NSPProxyPath *)self multiHopRegistered]];
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  [(NSPProxyPath *)v4 setSingleHopRegistration:singleHopRegistration];

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  [(NSPProxyPath *)v4 setMultiHopRegistration:multiHopRegistration];

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkSingleHopAgentStatistics:networkSingleHopAgentStatistics];

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  [(NSPProxyPath *)v4 setNetworkMultiHopAgentStatistics:networkMultiHopAgentStatistics];

  return v4;
}

- (BOOL)isMultiHopRegistered
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  v3 = multiHopRegistration;
  if (multiHopRegistration)
  {
    isRegistered = [*(multiHopRegistration + 24) isRegistered];
  }

  else
  {
    isRegistered = 0;
  }

  return isRegistered;
}

- (BOOL)isSingleHopRegistered
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v3 = singleHopRegistration;
  if (singleHopRegistration)
  {
    isRegistered = [*(singleHopRegistration + 24) isRegistered];
  }

  else
  {
    isRegistered = 0;
  }

  return isRegistered;
}

- (void)updateIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight
{
  egressProxyCopy = egressProxy;
  [(NSPProxyPath *)self setIngressProxy:proxy];
  [(NSPProxyPath *)self setEgressProxy:egressProxyCopy];

  [(NSPProxyPath *)self setProxyPathWeight:weight];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (void)updateConfigEpoch:(id)epoch
{
  [(NSPProxyPath *)self setConfigEpoch:epoch];
  [(NSPProxyPath *)self resetSingleHopProxyAgent];

  [(NSPProxyPath *)self resetMultiHopProxyAgent];
}

- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list
{
  validCopy = valid;
  listCopy = list;
  __assert_rtn("[NSPProxyPath proxyPathIsValid:proxyPathList:]", "NSPPrivacyProxyAgentManager.m", 3428, "0");
}

- (BOOL)matchIngress:(id)ingress
{
  ingressCopy = ingress;
  if (!ingressCopy)
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

  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (!ingressProxy)
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

  ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
  v7 = ingressProxy2;
  if (ingressProxy2)
  {
    v8 = *(ingressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [ingressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (BOOL)matchEgress:(id)egress
{
  egressCopy = egress;
  if (!egressCopy)
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

  egressProxy = [(NSPProxyPath *)self egressProxy];

  if (!egressProxy)
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

  egressProxy2 = [(NSPProxyPath *)self egressProxy];
  v7 = egressProxy2;
  if (egressProxy2)
  {
    v8 = *(egressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [egressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (void)handleNetworkCharacteristicsChange:(id)change
{
  changeCopy = change;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "proxy path: network signature changed", v10, 2u);
  }

  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  sub_10000A4F0(networkSingleHopAgentStatistics, changeCopy);

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  sub_10000A4F0(networkMultiHopAgentStatistics, changeCopy);

  networkSingleHopAgentStatistics2 = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (networkSingleHopAgentStatistics2)
  {
    networkSingleHopAgentStatistics2[6] = 0u;
    networkSingleHopAgentStatistics2[7] = 0u;
    networkSingleHopAgentStatistics2[4] = 0u;
    networkSingleHopAgentStatistics2[5] = 0u;
    networkSingleHopAgentStatistics2[2] = 0u;
    networkSingleHopAgentStatistics2[3] = 0u;
    networkSingleHopAgentStatistics2[1] = 0u;
  }

  networkMultiHopAgentStatistics2 = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (networkMultiHopAgentStatistics2)
  {
    networkMultiHopAgentStatistics2[6] = 0u;
    networkMultiHopAgentStatistics2[7] = 0u;
    networkMultiHopAgentStatistics2[4] = 0u;
    networkMultiHopAgentStatistics2[5] = 0u;
    networkMultiHopAgentStatistics2[2] = 0u;
    networkMultiHopAgentStatistics2[3] = 0u;
    networkMultiHopAgentStatistics2[1] = 0u;
  }
}

- (void)resetStats
{
  networkSingleHopAgentStatistics = [(NSPProxyPath *)self networkSingleHopAgentStatistics];
  if (networkSingleHopAgentStatistics)
  {
    networkSingleHopAgentStatistics[6] = 0u;
    networkSingleHopAgentStatistics[7] = 0u;
    networkSingleHopAgentStatistics[4] = 0u;
    networkSingleHopAgentStatistics[5] = 0u;
    networkSingleHopAgentStatistics[2] = 0u;
    networkSingleHopAgentStatistics[3] = 0u;
    networkSingleHopAgentStatistics[1] = 0u;
  }

  networkMultiHopAgentStatistics = [(NSPProxyPath *)self networkMultiHopAgentStatistics];
  if (networkMultiHopAgentStatistics)
  {
    networkMultiHopAgentStatistics[6] = 0u;
    networkMultiHopAgentStatistics[7] = 0u;
    networkMultiHopAgentStatistics[4] = 0u;
    networkMultiHopAgentStatistics[5] = 0u;
    networkMultiHopAgentStatistics[2] = 0u;
    networkMultiHopAgentStatistics[3] = 0u;
    networkMultiHopAgentStatistics[1] = 0u;
  }
}

- (void)resetError
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v4 = singleHopRegistration;
  if (singleHopRegistration)
  {
    [*(singleHopRegistration + 24) resetError];
  }

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  if (multiHopRegistration)
  {
    v6 = multiHopRegistration;
    [multiHopRegistration[3] resetError];
    multiHopRegistration = v6;
  }
}

- (void)dealloc
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  sub_100042E8C(singleHopRegistration);

  delegate = [(NSPProxyPath *)self delegate];
  [delegate singleHopAgentUnregistered:self];

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  sub_100042E8C(multiHopRegistration);

  delegate2 = [(NSPProxyPath *)self delegate];
  [delegate2 multiHopAgentUnregistered:self];

  v7.receiver = self;
  v7.super_class = NSPProxyPath;
  [(NSPProxyPath *)&v7 dealloc];
}

- (id)singleHopConfigurationHash
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
  v3 = sub_100042F70(singleHopRegistration);

  return v3;
}

- (id)multiHopConfigurationHash
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  v3 = sub_100042F70(multiHopRegistration);

  return v3;
}

- (NSPProxyPathDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end