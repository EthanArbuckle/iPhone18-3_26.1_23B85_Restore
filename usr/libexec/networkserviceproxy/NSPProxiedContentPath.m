@interface NSPProxiedContentPath
- (BOOL)allowFallback;
- (BOOL)matchEgress:(id)a3;
- (BOOL)matchIngress:(id)a3;
- (BOOL)matchesMap:(id)a3 proxyArray:(id)a4;
- (BOOL)pathReady;
- (BOOL)shouldUsePQTLSWithProxyInfo:(id)a3;
- (BOOL)unregisterResolverAgent;
- (NSPProxiedContentPath)initWithCoder:(id)a3;
- (NSPProxiedContentPath)initWithDelegate:(id)a3 initialMap:(id)a4 ingressProxy:(id)a5 egressProxy:(id)a6 resolver:(id)a7;
- (NSPProxiedContentPathDelegate)delegate;
- (id)aggregateMaps;
- (id)bootstrapAddresses;
- (id)copyAddressesFromDoHAnswer:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createDoHMessageForQuery:(id)a3 name:(const char *)a4;
- (id)createDoHQueryForName:(const char *)a3 type:(unsigned __int16)a4;
- (id)createPvDRequestForName:(const char *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)discoveredMapsFromPvDConfiguration:(id)a3 proxyIdentifier:(id)a4;
- (id)objectFromDictionary:(id)a3 key:(id)a4 oldKey:(id)a5;
- (id)proxyIdentifierFromPvDConfiguration:(id)a3 discoveredAlgorithm:(int *)a4;
- (id)shortName;
- (void)addMap:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchResumableSessionTickets;
- (void)removeProxyAgents;
- (void)reportErrorForDNSAgent:(id)a3 error:(int)a4 withOptions:(id)a5;
- (void)resetFallbackProxyAgent;
- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)a3;
- (void)resetResolverAgentForceUpdateDelegate:(BOOL)a3;
- (void)resetResumableSessionTickets;
- (void)startPvDConnectionForSessionTicketsWithEndpoint:(id)a3 parameters:(id)a4 completionHandler:(id)a5;
@end

@implementation NSPProxiedContentPath

- (NSPProxiedContentPath)initWithDelegate:(id)a3 initialMap:(id)a4 ingressProxy:(id)a5 egressProxy:(id)a6 resolver:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = NSPProxiedContentPath;
  v17 = [(NSPProxiedContentPath *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v12);
    v19 = objc_alloc_init(NSMutableArray);
    associatedMaps = v18->_associatedMaps;
    v18->_associatedMaps = v19;

    [(NSMutableArray *)v18->_associatedMaps addObject:v13];
    v21 = objc_alloc_init(NSMutableArray);
    discoveredMaps = v18->_discoveredMaps;
    v18->_discoveredMaps = v21;

    objc_storeStrong(&v18->_ingressProxy, a5);
    objc_storeStrong(&v18->_egressProxy, a6);
    objc_storeStrong(&v18->_resolver, a7);
    v23 = v18;
  }

  else
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v26 = 0;
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "[super init] failed", v26, 2u);
    }
  }

  return v18;
}

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  v8 = [(NSPProxiedContentPath *)self ingressProxy];
  sub_1000417D0(v7, v8, @"Ingress proxy", a3, a4);

  v9 = [(NSPProxiedContentPath *)self egressProxy];
  sub_1000417D0(v7, v9, @"Egress proxy", a3, a4);

  v10 = [(NSPProxiedContentPath *)self quicAgentUUID];
  sub_1000417D0(v7, v10, @"QUIC Agent UUID", a3, a4);

  v11 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
  sub_1000417D0(v7, v11, @"Fallback Agent UUID", a3, a4);

  v12 = [(NSPProxiedContentPath *)self resolverAgentUUID];
  sub_1000417D0(v7, v12, @"Resolver Agent UUID", a3, a4);

  return v7;
}

- (NSPProxiedContentPath)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NSPProxiedContentPath;
  v5 = [(NSPProxiedContentPath *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathResolver"];
    resolver = v5->_resolver;
    v5->_resolver = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathQUICAgentUUID"];
    quicAgentUUID = v5->_quicAgentUUID;
    v5->_quicAgentUUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathFallbackAgentUUID"];
    fallbackAgentUUID = v5->_fallbackAgentUUID;
    v5->_fallbackAgentUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyPathResolverAgentUUID"];
    resolverAgentUUID = v5->_resolverAgentUUID;
    v5->_resolverAgentUUID = v16;

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"proxyPathResolvedAddresses"];
    resolvedAddresses = v5->_resolvedAddresses;
    v5->_resolvedAddresses = v20;

    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"proxyPathAssociatedMaps"];

    if (v24)
    {
      v25 = [v24 mutableCopy];
      associatedMaps = v5->_associatedMaps;
      v5->_associatedMaps = v25;
    }

    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v27, objc_opt_class(), 0];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"proxyPathDiscoveredMaps"];

    if (v29)
    {
      v30 = [v29 mutableCopy];
      discoveredMaps = v5->_discoveredMaps;
      v5->_discoveredMaps = v30;
    }

    if (v5->_resolver && v5->_resolverAgentUUID)
    {
      [(NSPProxiedContentPath *)v5 resetResolverAgentForceUpdateDelegate:0];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSPProxiedContentPath *)self ingressProxy];
  [v4 encodeObject:v5 forKey:@"proxyPathIngressProxy"];

  v6 = [(NSPProxiedContentPath *)self egressProxy];
  [v4 encodeObject:v6 forKey:@"proxyPathEgressProxy"];

  v7 = [(NSPProxiedContentPath *)self resolver];
  [v4 encodeObject:v7 forKey:@"proxyPathResolver"];

  v8 = [(NSPProxiedContentPath *)self quicAgentUUID];
  [v4 encodeObject:v8 forKey:@"proxyPathQUICAgentUUID"];

  v9 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
  [v4 encodeObject:v9 forKey:@"proxyPathFallbackAgentUUID"];

  v10 = [(NSPProxiedContentPath *)self resolverAgentUUID];
  [v4 encodeObject:v10 forKey:@"proxyPathResolverAgentUUID"];

  v11 = [(NSPProxiedContentPath *)self resolvedAddresses];
  [v4 encodeObject:v11 forKey:@"proxyPathResolvedAddresses"];

  v12 = [(NSPProxiedContentPath *)self associatedMaps];
  [v4 encodeObject:v12 forKey:@"proxyPathAssociatedMaps"];

  v13 = [(NSPProxiedContentPath *)self discoveredMaps];
  [v4 encodeObject:v13 forKey:@"proxyPathDiscoveredMaps"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPProxiedContentPath allocWithZone:?]];
  v5 = [(NSPProxiedContentPath *)self associatedMaps];
  [(NSPProxiedContentPath *)v4 setAssociatedMaps:v5];

  v6 = [(NSPProxiedContentPath *)self discoveredMaps];
  [(NSPProxiedContentPath *)v4 setDiscoveredMaps:v6];

  v7 = [(NSPProxiedContentPath *)self ingressProxy];
  [(NSPProxiedContentPath *)v4 setIngressProxy:v7];

  v8 = [(NSPProxiedContentPath *)self egressProxy];
  [(NSPProxiedContentPath *)v4 setEgressProxy:v8];

  v9 = [(NSPProxiedContentPath *)self resolver];
  [(NSPProxiedContentPath *)v4 setResolver:v9];

  v10 = [(NSPProxiedContentPath *)self quicAgentUUID];
  [(NSPProxiedContentPath *)v4 setQuicAgentUUID:v10];

  v11 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
  [(NSPProxiedContentPath *)v4 setFallbackAgentUUID:v11];

  v12 = [(NSPProxiedContentPath *)self resolverAgentUUID];
  [(NSPProxiedContentPath *)v4 setResolverAgentUUID:v12];

  v13 = [(NSPProxiedContentPath *)self quicRegistration];
  [(NSPProxiedContentPath *)v4 setQuicRegistration:v13];

  v14 = [(NSPProxiedContentPath *)self fallbackRegistration];
  [(NSPProxiedContentPath *)v4 setFallbackRegistration:v14];

  v15 = [(NSPProxiedContentPath *)self resolverRegistration];
  [(NSPProxiedContentPath *)v4 setResolverRegistration:v15];

  v16 = [(NSPProxiedContentPath *)self resolvedAddresses];
  [(NSPProxiedContentPath *)v4 setResolvedAddresses:v16];

  [(NSPProxiedContentPath *)v4 setProxiedContentAgentRegistered:[(NSPProxiedContentPath *)self proxiedContentAgentRegistered]];
  return v4;
}

- (id)shortName
{
  v3 = [(NSPProxiedContentPath *)self resolver];

  if (v3)
  {
    v4 = [(NSPProxiedContentPath *)self resolver];
    v5 = [v4 dohURL];
  }

  else
  {
    v6 = [(NSPProxiedContentPath *)self egressProxy];
    v4 = v6;
    if (v6)
    {
      v6 = v6[3];
    }

    v5 = [v6 vendor];
  }

  v7 = v5;

  return v7;
}

- (BOOL)matchesMap:(id)a3 proxyArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = self;
  v8 = [(NSPProxiedContentPath *)self associatedMaps];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v36 + 1) + 8 * v12);
      v14 = [v6 proxiesCount];
      if (v14 == [v13 proxiesCount])
      {
        v15 = [v6 hasResolver];
        if (v15 == [v13 hasResolver])
        {
          v16 = [v6 isPrivacyProxy];
          if (v16 == [v13 isPrivacyProxy])
          {
            v17 = [v6 resolver];
            if (v17 == [v13 resolver])
            {
              break;
            }
          }
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v10)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }
    }

    if ([v6 proxiesCount])
    {
      v19 = 0;
      while (1)
      {
        v20 = *([v6 proxies] + v19);
        if (v20 != *([v13 proxies] + v19))
        {
          goto LABEL_12;
        }

        if ([v6 proxiesCount] == 1)
        {
          break;
        }

        if ([v6 proxiesCount] != 2)
        {
          goto LABEL_29;
        }

        v28 = *([v6 proxies] + v19);
        if ([v7 count] <= v28)
        {
          goto LABEL_12;
        }

        v22 = [v7 objectAtIndex:v28];
        if (!v19)
        {
          v23 = [(NSPProxiedContentPath *)v35 ingressProxy];
          goto LABEL_19;
        }

        v29 = [(NSPProxiedContentPath *)v35 egressProxy];
        v30 = v29;
        if (v29)
        {
          v29 = v29[3];
        }

        v31 = [v29 proxyURL];
        v32 = [v22 proxyURL];
        v33 = [v31 isEqualToString:v32];

        if (!v33)
        {
          goto LABEL_12;
        }

LABEL_29:
        if (++v19 >= [v6 proxiesCount])
        {
          goto LABEL_32;
        }
      }

      v21 = *([v6 proxies] + v19);
      if ([v7 count] <= v21)
      {
        goto LABEL_12;
      }

      v22 = [v7 objectAtIndex:v21];
      v23 = [(NSPProxiedContentPath *)v35 egressProxy];
LABEL_19:
      v24 = v23;
      if (v23)
      {
        v23 = v23[3];
      }

      v25 = [v23 proxyURL];
      v26 = [v22 proxyURL];
      v27 = [v25 isEqualToString:v26];

      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_32:
    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  return v18;
}

- (void)addMap:(id)a3
{
  v4 = a3;
  v5 = [(NSPProxiedContentPath *)self associatedMaps];
  [v5 addObject:v4];
}

- (id)aggregateMaps
{
  v2 = self;
  v3 = [(NSPProxiedContentPath *)self discoveredMaps];
  v4 = [v3 count];

  v5 = [(NSPProxiedContentPath *)v2 associatedMaps];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 mutableCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(NSPProxiedContentPath *)v2 discoveredMaps];
    v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v27)
    {
      v25 = *v34;
      v26 = v2;
      do
      {
        v8 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v8;
          v9 = *(*(&v33 + 1) + 8 * v8);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v10 = [(NSPProxiedContentPath *)v2 associatedMaps];
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v30;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v30 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v29 + 1) + 8 * i);
                v16 = [v15 processes];
                v17 = [v9 processes];
                v18 = [v16 isEqualToArray:v17];

                if ((v18 & 1) == 0)
                {
                  v19 = [v15 hostnames];
                  v20 = [v9 hostnames];
                  v21 = [v19 isEqualToArray:v20];

                  if (!v21)
                  {
                    continue;
                  }
                }

                [v7 removeObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
            }

            while (v12);
          }

          [v7 addObject:v9];
          v8 = v28 + 1;
          v2 = v26;
        }

        while ((v28 + 1) != v27);
        v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v27);
    }

    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Aggregate proxied content maps: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)matchIngress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSPProxiedContentPath *)self ingressProxy];

    if (v5)
    {
      v6 = [(NSPProxiedContentPath *)self ingressProxy];
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
      LOBYTE(v5) = [v10 isEqualToString:v11];
    }
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[NSPProxiedContentPath matchIngress:]";
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &v14, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)matchEgress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSPProxiedContentPath *)self egressProxy];

    if (v5)
    {
      v6 = [(NSPProxiedContentPath *)self egressProxy];
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
      LOBYTE(v5) = [v10 isEqualToString:v11];
    }
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[NSPProxiedContentPath matchEgress:]";
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &v14, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)reportErrorForDNSAgent:(id)a3 error:(int)a4 withOptions:(id)a5
{
  v7 = a3;
  buffer = 0u;
  memset(v30, 0, sizeof(v30));
  v8 = [a5 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = [NWPath pathForClientID:v8];
  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v15 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v11 = [v9 interface];
  v12 = [v10 parameters];
  v13 = [v12 pid];
  if (!v13)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  if (proc_pidinfo(v13, 13, 1uLL, &buffer, 64) != 64)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      *v28 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to process name", &v27, 8u);
    }

    goto LABEL_11;
  }

  v15 = v30;
LABEL_12:

LABEL_13:
  v17 = nplog_obj();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v18)
    {
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = "none";
      }

      v20 = [v7 resolver];
      v21 = [v20 dohURL];
      v22 = [v11 interfaceName];
      v27 = 67109890;
      *v28 = a4;
      *&v28[4] = 2080;
      *&v28[6] = v19;
      *&v28[14] = 2112;
      *&v28[16] = v21;
      *&v28[24] = 2112;
      *&v28[26] = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received error (%d) from %s for content-specific %@ resolver agent on interface %@", &v27, 0x26u);
    }
  }

  else if (v18)
  {
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = "none";
    }

    v24 = [v7 resolver];
    v25 = [v24 dohURL];
    v26 = [v11 interfaceName];
    v27 = 136315650;
    *v28 = v23;
    *&v28[8] = 2112;
    *&v28[10] = v25;
    *&v28[18] = 2112;
    *&v28[20] = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received success indication from %s for content-specific %@ resolver agent on interface %@", &v27, 0x20u);
  }
}

- (BOOL)pathReady
{
  v3 = [(NSPProxiedContentPath *)self ingressProxy];
  if (sub_100004F70(v3))
  {
    v4 = [(NSPProxiedContentPath *)self ingressProxy];
    v5 = sub_1000071A0(v4);
    v6 = [(NSPProxiedContentPath *)self ingressProxy];
    v7 = sub_100006674(v6);

    if (v5 <= v7)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(NSPProxiedContentPath *)self ingressProxy];
        v10 = sub_1000071A0(v9);
        v11 = [(NSPProxiedContentPath *)self shortName];
        v12 = [(NSPProxiedContentPath *)self ingressProxy];
        v23 = 134218498;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        v27 = 2048;
        v28 = sub_100006674(v12);
        v13 = "proxied content path is not ready due to insufficient ingress proxy tokens (cache+agent: %lu) for [%@], (ingress proxy low-water mark: %lu)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v13, &v23, 0x20u);

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = [(NSPProxiedContentPath *)self egressProxy];
  if (sub_100004F70(v14))
  {
    v15 = [(NSPProxiedContentPath *)self egressProxy];
    v16 = sub_1000071A0(v15);
    v17 = [(NSPProxiedContentPath *)self egressProxy];
    v18 = sub_100006674(v17);

    if (v16 <= v18)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(NSPProxiedContentPath *)self egressProxy];
        v19 = sub_1000071A0(v9);
        v11 = [(NSPProxiedContentPath *)self shortName];
        v12 = [(NSPProxiedContentPath *)self egressProxy];
        v23 = 134218498;
        v24 = v19;
        v25 = 2112;
        v26 = v11;
        v27 = 2048;
        v28 = sub_100006674(v12);
        v13 = "proxied content path is not ready due to insufficient egress proxy tokens (cache+agent: %lu) for [%@], (egress proxy low-water mark: %lu)";
        goto LABEL_10;
      }

LABEL_11:
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v8 = nplog_obj();
  v20 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v21 = [(NSPProxiedContentPath *)self shortName];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "proxied content path [%@] is ready", &v23, 0xCu);
  }

LABEL_15:

  return v20;
}

- (BOOL)allowFallback
{
  v3 = [(NSPProxiedContentPath *)self egressProxy];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 supportsFallback])
  {
    v7 = [(NSPProxiedContentPath *)self ingressProxy];
    if (v7)
    {
      v8 = [(NSPProxiedContentPath *)self ingressProxy];
      v9 = v8;
      if (v8)
      {
        v8 = v8[3];
      }

      v10 = [v8 supportsFallback];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)resetResumableSessionTickets
{
  v3 = [(NSPProxiedContentPath *)self quicRegistration];
  if (v3)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSPProxiedContentPath *)self shortName];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Flushing session tickets for proxied content path [%@]", &v6, 0xCu);
    }

    [v3[3] flushTokens];
    [(NSPProxiedContentPath *)self fetchResumableSessionTickets];
  }
}

- (id)createDoHQueryForName:(const char *)a3 type:(unsigned __int16)a4
{
  if (a3)
  {
    memset(&buffer[17], 0, 256);
    if (!DomainNameFromString())
    {
      memset(buffer, 0, 272);
      DNSMessageWriteQuery();
    }
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buffer[0]) = 136315138;
      *(buffer + 4) = "[NSPProxiedContentPath createDoHQueryForName:type:]";
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null name", buffer, 0xCu);
    }
  }

  return 0;
}

- (id)createDoHMessageForQuery:(id)a3 name:(const char *)a4
{
  v5 = a3;
  v6 = nw_content_context_create("DoH Message");
  metadata = nw_http_create_metadata();
  nw_http_metadata_set_method();
  nw_http_metadata_set_path();
  v8 = [NSString stringWithFormat:@"https://%s/dns-query", a4];
  url = nw_endpoint_create_url([v8 UTF8String]);
  nw_http_metadata_set_endpoint();

  nw_http_metadata_add_header();
  nw_http_metadata_add_header();
  size = dispatch_data_get_size(v5);

  *__str = 0;
  v13 = 0;
  snprintf(__str, 0x10uLL, "%zu", size);
  nw_http_metadata_add_header();
  nw_content_context_set_metadata_for_protocol(v6, metadata);
  nw_content_context_set_is_final(v6, 1);

  return v6;
}

- (id)createPvDRequestForName:(const char *)a3
{
  v4 = nw_content_context_create("PvD Request");
  metadata = nw_http_create_metadata();
  nw_http_metadata_set_method();
  nw_http_metadata_set_path();
  v6 = [NSString stringWithFormat:@"https://%s/.well-known/pvd", a3];
  url = nw_endpoint_create_url([v6 UTF8String]);
  nw_http_metadata_set_endpoint();

  nw_http_metadata_add_header();
  nw_content_context_set_metadata_for_protocol(v4, metadata);
  nw_content_context_set_is_final(v4, 1);

  return v4;
}

- (id)copyAddressesFromDoHAnswer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v8 = 0;
    v7 = 0;
    [v3 bytes];
    [v3 length];
    v5 = DNSMessageCollapse();
    if (v5)
    {
      free(v5);
    }
  }

  return v4;
}

- (void)startPvDConnectionForSessionTicketsWithEndpoint:(id)a3 parameters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nw_parameters_copy(v9);
  v12 = nw_parameters_copy_default_protocol_stack(v11);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100001F14;
  v40 = sub_100005818;
  v41 = 0;
  iterate_block[0] = _NSConcreteStackBlock;
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_10000FE8C;
  iterate_block[3] = &unk_1001096C8;
  iterate_block[4] = &v36;
  nw_protocol_stack_iterate_application_protocols(v12, iterate_block);
  if (v37[5])
  {
    nw_protocol_stack_remove_protocol();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100001F14;
  v33 = sub_100005818;
  v34 = nw_connection_create(v8, v11);
  v13 = v30[5];
  v14 = NPGetInternalQueue();
  nw_connection_set_queue(v13, v14);

  v15 = v30[5];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10000FF10;
  v27 = &unk_100109678;
  v28 = &v29;
  nw_connection_set_event_handler();
  v16 = [(NSPProxiedContentPath *)self createPvDRequestForName:nw_endpoint_get_hostname(v8)];
  nw_connection_send(v30[5], &_dispatch_data_empty, v16, 1, _nw_connection_send_idempotent_content);
  nw_connection_start(v30[5]);
  v17 = v30[5];
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 3221225472;
  completion[2] = sub_100010044;
  completion[3] = &unk_100109718;
  v18 = v8;
  v21 = v18;
  v19 = v10;
  v22 = v19;
  v23 = &v29;
  nw_connection_receive_message(v17, completion);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v36, 8);
}

- (id)bootstrapAddresses
{
  v3 = [(NSPProxiedContentPath *)self ingressProxy];
  if (v3)
  {
    [(NSPProxiedContentPath *)self ingressProxy];
  }

  else
  {
    [(NSPProxiedContentPath *)self egressProxy];
  }
  v4 = ;

  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 bootstrapAddresses];
  if ([v6 count])
  {
    v7 = [v6 sortedArrayUsingComparator:&stru_100109758];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectFromDictionary:(id)a3 key:(id)a4 oldKey:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectForKeyedSubscript:a4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:v8];
  }

  v12 = v11;

  return v12;
}

- (id)proxyIdentifierFromPvDConfiguration:(id)a3 discoveredAlgorithm:(int *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [(NSPProxiedContentPath *)self ingressProxy];
    if (v6)
    {
      [(NSPProxiedContentPath *)self ingressProxy];
    }

    else
    {
      [(NSPProxiedContentPath *)self egressProxy];
    }
    v7 = ;

    if (v7)
    {
      isa = v7[3].isa;
    }

    else
    {
      isa = 0;
    }

    v10 = [(objc_class *)isa proxyURL];
    v11 = [NSURL URLWithString:v10];

    if (v11 && ([v11 host], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v5 objectForKeyedSubscript:@"proxies"];
      objc_opt_class();
      if (v13)
      {
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v60 = self;
          v57 = v7;
          v58 = v5;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v56 = v13;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v70 objects:v83 count:16];
          if (!v16)
          {
            v61 = 0;
            goto LABEL_87;
          }

          v17 = v16;
          v61 = 0;
          v18 = *v71;
          v19 = NEPolicySession_ptr;
          v62 = v15;
          v63 = *v71;
          v59 = v11;
          while (1)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v71 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v70 + 1) + 8 * i);
              v22 = v19[75];
              objc_opt_class();
              if (v21)
              {
                v23 = objc_opt_isKindOfClass();

                if (v23)
                {
                  v24 = [v21 objectForKeyedSubscript:@"identifier"];
                  objc_opt_class();
                  if (v24 && (v25 = objc_opt_isKindOfClass(), v24, (v25 & 1) != 0))
                  {
                    v26 = [v21 objectForKeyedSubscript:@"proxy"];
                    objc_opt_class();
                    if (v26 && (v27 = objc_opt_isKindOfClass(), v26, (v27 & 1) != 0))
                    {
                      v28 = [NSURL URLWithString:v26];
                      v29 = [v28 host];

                      v64 = v28;
                      if (v29)
                      {
                        v30 = [v28 host];
                        v31 = [v11 host];
                        v32 = [v30 isEqualToString:v31];

                        if ((v32 & 1) == 0)
                        {
                          v33 = nplog_obj();
                          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                          {
                            v34 = [v28 host];
                            v35 = [v11 host];
                            *buf = 138413058;
                            v76 = v26;
                            v77 = 2112;
                            v78 = v28;
                            v79 = 2112;
                            v80 = v34;
                            v81 = 2112;
                            v82 = v35;
                            _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Unable to match proxy URL %@ proxyURL %@ proxyURL.host %@ in PvD to %@", buf, 0x2Au);
                          }

                          goto LABEL_69;
                        }

LABEL_38:
                        v15 = v62;
                        v18 = v63;
                        if (!v61)
                        {
                          v40 = nplog_obj();
                          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412546;
                            v76 = v24;
                            v77 = 2112;
                            v78 = v64;
                            _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Detected proxy identifier %@ from PvD-provided proxy URL %@", buf, 0x16u);
                          }

                          v61 = v24;
                        }

                        if (a4)
                        {
                          v33 = [(NSPProxiedContentPath *)v60 objectFromDictionary:v21 key:@"apple_algorithm" oldKey:@"appleTLSCurve"];
                          objc_opt_class();
                          if (v33)
                          {
                            v41 = objc_opt_isKindOfClass();

                            if (v41)
                            {
                              v68 = 0u;
                              v69 = 0u;
                              v66 = 0u;
                              v67 = 0u;
                              v33 = v33;
                              v42 = [v33 countByEnumeratingWithState:&v66 objects:v74 count:16];
                              if (v42)
                              {
                                v43 = v42;
                                v44 = *v67;
                                do
                                {
                                  for (j = 0; j != v43; j = j + 1)
                                  {
                                    if (*v67 != v44)
                                    {
                                      objc_enumerationMutation(v33);
                                    }

                                    v46 = *(*(&v66 + 1) + 8 * j);
                                    objc_opt_class();
                                    if (v46)
                                    {
                                      v47 = objc_opt_isKindOfClass();

                                      if (v47)
                                      {
                                        v48 = nplog_obj();
                                        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                                        {
                                          *buf = 138412546;
                                          v76 = v46;
                                          v77 = 2112;
                                          v78 = v64;
                                          _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Detected proxy algorithm %@ from PvD-provided proxy URL %@", buf, 0x16u);
                                        }

                                        v49 = v46;
                                        if (([v49 isEqualToString:@"NOT_SET"]& 1) != 0)
                                        {
                                          v50 = 0;
                                        }

                                        else if (([v49 isEqualToString:@"P384"]& 1) != 0)
                                        {
                                          v50 = 1;
                                        }

                                        else if (([v49 isEqualToString:@"X25519"]& 1) != 0)
                                        {
                                          v50 = 2;
                                        }

                                        else if ([v49 isEqualToString:@"X25519_MLKEM768"])
                                        {
                                          v50 = 3;
                                        }

                                        else
                                        {
                                          v50 = 0;
                                        }

                                        if (!*a4 || v50 == 3)
                                        {
                                          *a4 = v50;
                                        }
                                      }
                                    }
                                  }

                                  v43 = [v33 countByEnumeratingWithState:&v66 objects:v74 count:16];
                                }

                                while (v43);
                              }

                              v11 = v59;
LABEL_69:
                              v15 = v62;
                              v18 = v63;
                            }
                          }

                          goto LABEL_73;
                        }
                      }

                      else
                      {
                        v33 = [v26 componentsSeparatedByString:@":"];
                        if ([v33 count]== 2)
                        {
                          v37 = [v33 firstObject];
                          v38 = [v11 host];
                          v39 = [v37 isEqual:v38];

                          v15 = v62;
                          v18 = v63;
                          if (v39)
                          {

                            goto LABEL_38;
                          }
                        }

                        v51 = nplog_obj();
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                        {
                          v52 = [v11 host];
                          *buf = 138412546;
                          v76 = v26;
                          v77 = 2112;
                          v78 = v52;
                          _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Unable to match proxy %@ in PvD to %@", buf, 0x16u);

                          v18 = v63;
                        }

LABEL_73:
                      }

                      v36 = v64;
                    }

                    else
                    {
                      v36 = nplog_obj();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Missing proxy URL in proxy dictionary in PvD proxies array", buf, 2u);
                      }
                    }
                  }

                  else
                  {
                    v26 = nplog_obj();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Missing proxy identifier in proxy dictionary in PvD proxies array", buf, 2u);
                    }
                  }

                  v19 = NEPolicySession_ptr;
                  goto LABEL_77;
                }
              }

              v24 = nplog_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Invalid proxy dictionary in PvD proxies array", buf, 2u);
              }

LABEL_77:
            }

            v17 = [v15 countByEnumeratingWithState:&v70 objects:v83 count:16];
            if (!v17)
            {
LABEL_87:

              v53 = v61;
              v7 = v57;
              v5 = v58;
              v13 = v56;
              goto LABEL_88;
            }
          }
        }
      }

      v54 = nplog_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "No proxies array in PvD", buf, 2u);
      }

      v53 = 0;
LABEL_88:

      v8 = v53;
    }

    else
    {
      v53 = nplog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "No proxy URL to match to PvD, ignoring", buf, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "No PvD configuration, ignoring", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)discoveredMapsFromPvDConfiguration:(id)a3 proxyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 objectForKeyedSubscript:@"proxy-match"];
    objc_opt_class();
    if (v9)
    {
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v113 objects:v123 count:16];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_107;
        }

        v13 = v12;
        v96 = self;
        v14 = 0;
        v91 = *v114;
        v89 = v6;
        v95 = v8;
        v93 = v11;
        while (1)
        {
          v90 = v14;
          v15 = 0;
          v16 = NEPolicySession_ptr;
          v17 = v91;
          v18 = NEPolicySession_ptr;
          v92 = v13;
          do
          {
            if (*v114 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v113 + 1) + 8 * v15);
            v20 = v18[75];
            objc_opt_class();
            if (!v19 || (v21 = objc_opt_isKindOfClass(), v19, (v21 & 1) == 0))
            {
              v22 = nplog_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Invalid proxy match dictionary in PvD", buf, 2u);
              }

              goto LABEL_53;
            }

            v22 = [v19 objectForKeyedSubscript:@"mandatory"];
            v23 = v16[70];
            objc_opt_class();
            if (v22)
            {
              v24 = objc_opt_isKindOfClass();

              if (v24)
              {
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v25 = v22;
                v26 = [v25 countByEnumeratingWithState:&v109 objects:v122 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v110;
                  while (2)
                  {
                    for (i = 0; i != v27; i = i + 1)
                    {
                      if (*v110 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = *(*(&v109 + 1) + 8 * i);
                      objc_opt_class();
                      if (!v30)
                      {
                        goto LABEL_112;
                      }

                      v31 = objc_opt_isKindOfClass();

                      if ((v31 & 1) == 0)
                      {
                        goto LABEL_112;
                      }

                      if (![(NSPProxiedContentPath *)v96 isKnownProxyMatchKey:v30])
                      {
                        v75 = nplog_obj();
                        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v121 = v30;
                          _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "Ignoring proxy match dictionary, cannot understand mandatory key %@", buf, 0xCu);
                        }

LABEL_112:
LABEL_113:

                        v73 = 0;
                        v6 = v89;
                        v74 = v90;
                        v8 = v95;
                        goto LABEL_114;
                      }
                    }

                    v27 = [v25 countByEnumeratingWithState:&v109 objects:v122 count:16];
                    v16 = NEPolicySession_ptr;
                    if (v27)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v17 = v91;
              }
            }

            v32 = [v19 objectForKeyedSubscript:{@"apple_builds", v77}];
            v33 = v16[70];
            objc_opt_class();
            if (v32)
            {
              v34 = objc_opt_isKindOfClass();

              if (v34)
              {
                if (os_variant_has_internal_content() && ([v32 containsObject:@"Internal"] & 1) == 0)
                {
                  v35 = nplog_obj();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    v36 = v35;
                    v37 = "Ignoring proxy match dictionary, not applicable for internal";
LABEL_92:
                    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, v37, buf, 2u);
                  }
                }

                else
                {
                  if ([v32 containsObject:@"Public"])
                  {
                    goto LABEL_36;
                  }

                  v35 = nplog_obj();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    v36 = v35;
                    v37 = "Ignoring proxy match dictionary, not applicable for public";
                    goto LABEL_92;
                  }
                }
              }
            }

LABEL_36:
            v38 = [v19 objectForKeyedSubscript:@"proxies"];
            v39 = v16[70];
            objc_opt_class();
            if (v38 && (v40 = objc_opt_isKindOfClass(), v38, (v40 & 1) != 0))
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              obj = v38;
              v41 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v106;
                while (2)
                {
                  for (j = 0; j != v42; j = j + 1)
                  {
                    if (*v106 != v43)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v45 = *(*(&v105 + 1) + 8 * j);
                    objc_opt_class();
                    if (!v45 || (v46 = objc_opt_isKindOfClass(), v45, (v46 & 1) == 0))
                    {

                      goto LABEL_113;
                    }

                    if ([v45 isEqualToString:v95])
                    {

                      v48 = [(NSPProxiedContentPath *)v96 objectFromDictionary:v19 key:@"apple_bundleIDs" oldKey:@"appleBundleIDs"];
                      v49 = [v19 objectForKeyedSubscript:@"domains"];
                      v50 = v48;
                      v16 = NEPolicySession_ptr;
                      objc_opt_class();
                      v88 = v50;
                      if (v50 && (v51 = objc_opt_isKindOfClass(), v50, (v51 & 1) != 0) && (v52 = v49, objc_opt_class(), v52) && (v53 = objc_opt_isKindOfClass(), v52, (v53 & 1) != 0))
                      {
                        v77 = v49;
                        v103 = 0u;
                        v104 = 0u;
                        v101 = 0u;
                        v102 = 0u;
                        v86 = v50;
                        v54 = [v86 countByEnumeratingWithState:&v101 objects:v118 count:16];
                        if (v54)
                        {
                          v55 = v54;
                          v56 = *v102;
                          v82 = v52;
                          while (2)
                          {
                            for (k = 0; k != v55; k = k + 1)
                            {
                              if (*v102 != v56)
                              {
                                objc_enumerationMutation(v86);
                              }

                              v58 = *(*(&v101 + 1) + 8 * k);
                              objc_opt_class();
                              if (v58)
                              {
                                v59 = objc_opt_isKindOfClass();

                                if (v59)
                                {
                                  continue;
                                }
                              }

                              v65 = v86;
                              v16 = NEPolicySession_ptr;
LABEL_95:
                              v17 = v91;
                              v18 = NEPolicySession_ptr;
                              goto LABEL_96;
                            }

                            v55 = [v86 countByEnumeratingWithState:&v101 objects:v118 count:16];
                            v16 = NEPolicySession_ptr;
                            v52 = v82;
                            if (v55)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v99 = 0u;
                        v100 = 0u;
                        v97 = 0u;
                        v98 = 0u;
                        v78 = v52;
                        v83 = [v78 countByEnumeratingWithState:&v97 objects:v117 count:16];
                        v60 = 0;
                        if (v83)
                        {
                          v80 = *v98;
                          while (2)
                          {
                            for (m = 0; m != v83; m = m + 1)
                            {
                              v62 = v60;
                              if (*v98 != v80)
                              {
                                objc_enumerationMutation(v78);
                              }

                              v63 = *(*(&v97 + 1) + 8 * m);
                              objc_opt_class();
                              if (!v63 || (v64 = objc_opt_isKindOfClass(), v63, (v64 & 1) == 0))
                              {
                                v65 = v78;
                                goto LABEL_95;
                              }

                              v60 = [v63 hasPrefix:@"*."] ^ 1 | v62;
                            }

                            v83 = [v78 countByEnumeratingWithState:&v97 objects:v117 count:16];
                            if (v83)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v65 = objc_alloc_init(NSPPrivacyProxyProxiedContentMap);
                        [v65 setEnabled:1];
                        v84 = v95;
                        v66 = v86;
                        if ([v86 count]|| (v66 = v78, [v78 count]))
                        {
                          v67 = [v66 firstObject];

                          v68 = v67;
                          v17 = v91;
                        }

                        else
                        {
                          v17 = v91;
                          v68 = v84;
                        }

                        v85 = v68;
                        [v65 setIdentifier:v77];
                        [v65 setProcesses:v86];
                        [v65 setHostnames:v78];
                        v87 = [(NSPProxiedContentPath *)v96 objectFromDictionary:v19 key:@"apple_matchExactHostnames" oldKey:@"appleMatchExactHostnames"];
                        v81 = [(NSPProxiedContentPath *)v96 objectFromDictionary:v19 key:@"apple_systemProcessesOnly" oldKey:@"appleSystemProcessesOnly"];
                        v79 = [(NSPProxiedContentPath *)v96 objectFromDictionary:v19 key:@"apple_supportsReverse" oldKey:@"appleSupportsReverse"];
                        v69 = [(NSPProxiedContentPath *)v96 objectFromDictionary:v19 key:@"apple_percentEnabled" oldKey:@"applePercentEnabled"];
                        v18 = NEPolicySession_ptr;
                        if (v87)
                        {
                          LOBYTE(v60) = [v87 BOOLValue];
                        }

                        [v65 setMatchExactHostnames:v60 & 1];
                        -[NSObject setSystemProcessOnly:](v65, "setSystemProcessOnly:", [v81 BOOLValue]);
                        -[NSObject setSupportsReverseProxying:](v65, "setSupportsReverseProxying:", [v79 BOOLValue]);
                        -[NSObject setPercentEnabled:](v65, "setPercentEnabled:", [v69 unsignedIntValue]);
                        v70 = v90;
                        v16 = NEPolicySession_ptr;
                        if (!v90)
                        {
                          v70 = objc_alloc_init(NSMutableArray);
                        }

                        v90 = v70;
                        [v70 addObject:v65];
                        v71 = nplog_obj();
                        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v121 = v65;
                          _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Parsed discovered proxied content map: %@", buf, 0xCu);
                        }

LABEL_96:
                        v49 = v77;
                      }

                      else
                      {
                        v65 = nplog_obj();
                        v17 = v91;
                        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 0;
                          _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "Proxy match dictionary does not include bundle IDs or match domains, ignoring", buf, 2u);
                        }

                        v18 = NEPolicySession_ptr;
                      }

                      v13 = v92;
                      v11 = v93;
                      goto LABEL_53;
                    }
                  }

                  v42 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
                  v16 = NEPolicySession_ptr;
                  if (v42)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v92;
              v11 = v93;
              v17 = v91;
            }

            else
            {
              v47 = nplog_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Proxy match dictionary in PvD missing proxies array", buf, 2u);
              }

              v13 = v92;
              v11 = v93;
            }

            v18 = NEPolicySession_ptr;
LABEL_53:

            v15 = v15 + 1;
          }

          while (v15 != v13);
          v72 = [v11 countByEnumeratingWithState:&v113 objects:v123 count:16];
          v13 = v72;
          v6 = v89;
          v14 = v90;
          v8 = v95;
          if (!v72)
          {
LABEL_107:

            v74 = v14;
            v73 = v74;
            goto LABEL_114;
          }
        }
      }
    }

    v74 = nplog_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "No proxy match list in PvD, ignoring", buf, 2u);
    }

    v73 = 0;
LABEL_114:
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "No PvD configuration or proxy identifier, ignoring", buf, 2u);
    }

    v73 = 0;
  }

  return v73;
}

- (void)fetchResumableSessionTickets
{
  if (![(NSPProxiedContentPath *)self fetchingSessionTickets])
  {
    [(NSPProxiedContentPath *)self setResolvedAddresses:0];
    v3 = [(NSPProxiedContentPath *)self quicRegistration];
    selfa = v3;
    if (v3)
    {
      v5 = objc_getProperty(v3, v4, 48, 1);
      if (v5)
      {
        v60 = 4;
        v6 = nw_protocol_copy_tcp_definition();
        v32 = v5;
        v30 = nw_proxy_config_copy_protocol_stack();

        if (v30)
        {
          endpoint = nw_proxy_config_copy_endpoint();
          if (endpoint)
          {
            v7 = nw_proxy_config_copy_parameters_to_proxy();
            v8 = v7;
            if (v7)
            {
              stack = nw_parameters_copy_default_protocol_stack(v7);
              if (stack)
              {
                v9 = [(NSPProxiedContentPath *)self delegate];
                v29 = [v9 disableDoHBootstrapResults];

                if ((v29 & 1) == 0)
                {
                  v28 = [(NSPProxiedContentPath *)self bootstrapAddresses];
                  if ([v28 count] && (nw_endpoint_get_type(endpoint) == nw_endpoint_type_host || nw_endpoint_get_type(endpoint) == nw_endpoint_type_url))
                  {
                    nw_endpoint_get_port(endpoint);
                    direct = nw_proxy_config_create_direct();
                    nw_proxy_config_set_prohibit_direct();
                    v58 = 0u;
                    v59 = 0u;
                    v56 = 0u;
                    v57 = 0u;
                    v11 = v28;
                    v12 = [v11 countByEnumeratingWithState:&v56 objects:v66 count:16];
                    if (v12)
                    {
                      v13 = 0;
                      v14 = *v57;
                      do
                      {
                        for (i = 0; i != v12; i = i + 1)
                        {
                          if (*v57 != v14)
                          {
                            objc_enumerationMutation(v11);
                          }

                          [*(*(&v56 + 1) + 8 * i) UTF8String];
                          host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
                          v17 = host_with_numeric_port;
                          if (host_with_numeric_port && nw_endpoint_get_type(host_with_numeric_port) == nw_endpoint_type_address)
                          {
                            nw_proxy_config_add_resolved_endpoint();
                            v13 = 1;
                          }
                        }

                        v12 = [v11 countByEnumeratingWithState:&v56 objects:v66 count:16];
                      }

                      while (v12);

                      if (v13)
                      {
                        nw_parameters_add_custom_proxy_config();
                      }
                    }

                    else
                    {
                    }
                  }
                }

                nw_parameters_set_fast_open_enabled(v8, 1);
                v18 = [(NSPProxiedContentPath *)self egressProxy];
                v19 = v18;
                if (v18)
                {
                  v20 = *(v18 + 24);
                }

                else
                {
                  v20 = 0;
                }

                v21 = [v20 proxyURL];

                url = nw_endpoint_create_url([v21 UTF8String]);
                nw_parameters_set_url_endpoint();

                objc_initWeak(&location, self);
                iterate_block[0] = _NSConcreteStackBlock;
                iterate_block[1] = 3221225472;
                iterate_block[2] = sub_100012584;
                iterate_block[3] = &unk_1001097A8;
                objc_copyWeak(&v54, &location);
                nw_protocol_stack_iterate_application_protocols(stack, iterate_block);
                [(NSPProxiedContentPath *)self setFetchingSessionTickets:1];
                *&buf = 0;
                *(&buf + 1) = &buf;
                v62 = 0x3032000000;
                v63 = sub_100001F14;
                v64 = sub_100005818;
                v65 = os_transaction_create();
                v23 = dispatch_group_create();
                dispatch_group_enter(v23);
                v51[0] = 0;
                v51[1] = v51;
                v51[2] = 0x3032000000;
                v51[3] = sub_100001F14;
                v51[4] = sub_100005818;
                v52 = &__NSArray0__struct;
                v49[0] = 0;
                v49[1] = v49;
                v49[2] = 0x3032000000;
                v49[3] = sub_100001F14;
                v49[4] = sub_100005818;
                v50 = &__NSArray0__struct;
                v47[0] = 0;
                v47[1] = v47;
                v47[2] = 0x3032000000;
                v47[3] = sub_100001F14;
                v47[4] = sub_100005818;
                v48 = 0;
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v44[2] = sub_1000127BC;
                v44[3] = &unk_1001097D0;
                v46 = v51;
                v24 = v23;
                v45 = v24;
                [(NSPProxiedContentPath *)self startDoHConnectionForSessionTicketsWithEndpoint:endpoint parameters:v8 dohQueryType:1 completionHandler:v44];
                dispatch_group_enter(v24);
                v41[0] = _NSConcreteStackBlock;
                v41[1] = 3221225472;
                v41[2] = sub_100012828;
                v41[3] = &unk_1001097D0;
                v43 = v49;
                v25 = v24;
                v42 = v25;
                [(NSPProxiedContentPath *)self startDoHConnectionForSessionTicketsWithEndpoint:endpoint parameters:v8 dohQueryType:28 completionHandler:v41];
                dispatch_group_enter(v25);
                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v38[2] = sub_100012894;
                v38[3] = &unk_1001097F8;
                v40 = v47;
                v26 = v25;
                v39 = v26;
                [(NSPProxiedContentPath *)self startPvDConnectionForSessionTicketsWithEndpoint:endpoint parameters:v8 completionHandler:v38];
                v27 = NPGetInternalQueue();
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000128F4;
                block[3] = &unk_100109820;
                block[4] = &buf;
                objc_copyWeak(&v36, &location);
                block[5] = v47;
                block[6] = v49;
                block[7] = v51;
                v37 = v29;
                dispatch_group_notify(v26, v27, block);

                objc_destroyWeak(&v36);
                _Block_object_dispose(v47, 8);

                _Block_object_dispose(v49, 8);
                _Block_object_dispose(v51, 8);

                _Block_object_dispose(&buf, 8);
                objc_destroyWeak(&v54);
                objc_destroyWeak(&location);
              }

              else
              {
                v21 = nplog_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                {
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = "[NSPProxiedContentPath fetchResumableSessionTickets]";
                  _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null proxyStack", &buf, 0xCu);
                }
              }
            }

            else
            {
              stack = nplog_obj();
              if (os_log_type_enabled(stack, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "[NSPProxiedContentPath fetchResumableSessionTickets]";
                _os_log_fault_impl(&_mh_execute_header, stack, OS_LOG_TYPE_FAULT, "%s called with null proxyParameters", &buf, 0xCu);
              }
            }
          }

          else
          {
            v8 = nplog_obj();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buf) = 136315138;
              *(&buf + 4) = "[NSPProxiedContentPath fetchResumableSessionTickets]";
              _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null proxyEndpoint", &buf, 0xCu);
            }
          }
        }

        else
        {
          endpoint = nplog_obj();
          if (os_log_type_enabled(endpoint, OS_LOG_TYPE_FAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "[NSPProxiedContentPath fetchResumableSessionTickets]";
            _os_log_fault_impl(&_mh_execute_header, endpoint, OS_LOG_TYPE_FAULT, "%s called with null stack", &buf, 0xCu);
          }
        }

        v5 = v32;
      }

      v3 = selfa;
    }
  }
}

- (BOOL)shouldUsePQTLSWithProxyInfo:(id)a3
{
  v4 = a3;
  if (+[NSPPrivacyProxyProxyInfo allowPQTLS])
  {
    if ([(NSPProxiedContentPath *)self discoveredAlgorithm])
    {
      v5 = [(NSPProxiedContentPath *)self discoveredAlgorithm]== 3;
    }

    else
    {
      v5 = [v4 usesPQTLS];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)a3
{
  v4 = [(NSPProxiedContentPath *)self egressProxy];

  if (v4)
  {
    v5 = [(NSPProxiedContentPath *)self quicAgentUUID];

    if (!v5)
    {
      v6 = +[NSUUID UUID];
      [(NSPProxiedContentPath *)self setQuicAgentUUID:v6];
    }

    v7 = [(NSPProxiedContentPath *)self quicRegistration];

    if (!v7)
    {
      v8 = [NSPPrivacyProxyProxiedContentNetworkRegistration alloc];
      v9 = [(NSPProxiedContentPath *)self quicAgentUUID];
      v10 = [(NSPProxiedContentPath *)self shortName];
      v11 = sub_1000463D8(&v8->super.super, v9, v10, self);
      [(NSPProxiedContentPath *)self setQuicRegistration:v11];

      v12 = [(NSPProxiedContentPath *)self quicRegistration];

      if (!v12)
      {
        v103 = nplog_obj();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v105 = "[NSPProxiedContentPath resetQUICProxyAgentForceUpdateDelegate:]";
          _os_log_fault_impl(&_mh_execute_header, v103, OS_LOG_TYPE_FAULT, "%s called with null self.quicRegistration", buf, 0xCu);
        }

        goto LABEL_89;
      }
    }

    v13 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSPProxiedContentPath *)self fallbackRegistration];
      if (!v15)
      {
        v102 = 0;
        v103 = 0;
        goto LABEL_10;
      }

      v16 = v15;
      v17 = [*(v15 + 24) isRegistered];

      if (v17)
      {
        v103 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
        v14 = [(NSPProxiedContentPath *)self fallbackRegistration];
        v102 = sub_100042F70(v14);
LABEL_10:

        goto LABEL_12;
      }
    }

    v102 = 0;
    v103 = 0;
LABEL_12:
    v18 = [(NSPProxiedContentPath *)self delegate];
    v19 = [v18 disableDoHBootstrapResults];

    if (v19)
    {
      [(NSPProxiedContentPath *)self setResolvedAddresses:0];
    }

    else
    {
      v20 = [(NSPProxiedContentPath *)self resolvedAddresses];

      if (!v20)
      {
        v21 = [(NSPProxiedContentPath *)self bootstrapAddresses];
        [(NSPProxiedContentPath *)self setResolvedAddresses:v21];
      }
    }

    v22 = [(NSPProxiedContentPath *)self ingressProxy];
    if (v22)
    {
      [(NSPProxiedContentPath *)self ingressProxy];
    }

    else
    {
      [(NSPProxiedContentPath *)self egressProxy];
    }
    v23 = ;

    v24 = [(NSPProxiedContentPath *)self ingressProxy];
    if (v24)
    {
      v25 = [(NSPProxiedContentPath *)self egressProxy];
    }

    else
    {
      v25 = 0;
    }

    v26 = [(NSPProxiedContentPath *)self quicRegistration];
    v27 = sub_100042F70(v26);
    sub_1000424D0(v26, 4);
    if (v23)
    {
      v28 = *(v23 + 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v91 = [v29 proxyURL];
    if (v25)
    {
      v30 = *(v25 + 24);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v101 = [v31 proxyURL];
    if (v23)
    {
      v32 = *(v23 + 24);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v100 = [v33 proxyKeyInfos];
    if (v25)
    {
      v34 = *(v25 + 24);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v99 = [v35 proxyKeyInfos];
    if (v23)
    {
      v36 = *(v23 + 24);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v98 = [v37 proxyVersion];
    if (v25)
    {
      v38 = *(v25 + 24);
    }

    else
    {
      v38 = 0;
    }

    v86 = v38;
    v97 = [v86 proxyVersion];
    if (v23)
    {
      v39 = *(v23 + 24);
    }

    else
    {
      v39 = 0;
    }

    v85 = v39;
    v82 = [v85 supportsResumption];
    if (v25)
    {
      v40 = *(v25 + 24);
    }

    else
    {
      v40 = 0;
    }

    v84 = v40;
    v79 = [v84 supportsResumption];
    if (v23)
    {
      v41 = *(v23 + 24);
    }

    else
    {
      v41 = 0;
    }

    v83 = v41;
    v78 = [(NSPProxiedContentPath *)self shouldUsePQTLSWithProxyInfo:?];
    if (v25)
    {
      v42 = *(v25 + 24);
    }

    else
    {
      v42 = 0;
    }

    v81 = v42;
    v77 = [v81 usesPQTLS];
    v80 = sub_100004F70(v23);
    if (v80)
    {
      if (v23)
      {
        v43 = *(v23 + 48);
      }

      else
      {
        v43 = 0;
      }

      v96 = v43;
    }

    else
    {
      v96 = 0;
    }

    v76 = sub_100004F70(v25);
    if (v76)
    {
      if (v25)
      {
        v44 = *(v25 + 48);
      }

      else
      {
        v44 = 0;
      }

      v75 = v44;
    }

    else
    {
      v75 = 0;
    }

    v89 = v33;
    v87 = v37;
    if (v23)
    {
      v45 = *(v23 + 24);
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    v47 = [v46 tokenChallenge];
    v48 = v47;
    v95 = v23;
    v94 = v25;
    v92 = v27;
    v90 = v31;
    v88 = v35;
    v49 = v26;
    if (v25)
    {
      v50 = *(v25 + 24);
    }

    else
    {
      v50 = 0;
    }

    v51 = v47 != 0;
    v52 = v50;
    v53 = [v52 tokenChallenge];
    v54 = [(NSPProxiedContentPath *)self resolvedAddresses];
    v93 = self;
    v55 = [(NSPProxiedContentPath *)self associatedMaps];
    v56 = [v55 firstObject];
    BYTE1(v73) = v53 != 0;
    LOBYTE(v73) = v51;
    sub_10004648C(v49, v91, v101, v100, v99, v98, v97, v82, v79, v78, v77, v96, v75, v73, v54, v103, v102, [v56 isPrivacyProxy]);

    if (v76)
    {
    }

    if (v80)
    {
    }

    v57 = sub_100042F70(v49);
    v58 = [(NSPProxiedContentPath *)v93 resolver];
    if (v58)
    {
      v59 = v58;
      v60 = [v57 isEqualToData:v92];

      if ((v60 & 1) == 0)
      {
        [(NSPProxiedContentPath *)v93 unregisterResolverAgent];
      }
    }

    if (v95)
    {
      v61 = v95[3];
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;
    v63 = [v62 supportsResumption];

    if (v63)
    {
      if (v49)
      {
        v64 = [v49[3] tokenCount];
      }

      else
      {
        v64 = 0;
      }

      v65 = nplog_obj();
      v66 = v65;
      if (v64 > 3)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v72 = [(NSPProxiedContentPath *)v93 shortName];
          *buf = 138412546;
          v105 = v72;
          v106 = 1024;
          v107 = v64;
          _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "proxied content path [%@] has %u tickets, not fetching more", buf, 0x12u);
        }
      }

      else
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v67 = [(NSPProxiedContentPath *)v93 shortName];
          *buf = 138412546;
          v105 = v67;
          v106 = 1024;
          v107 = v64;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "proxied content path [%@] has %u tickets, fetching more", buf, 0x12u);
        }

        [(NSPProxiedContentPath *)v93 fetchResumableSessionTickets];
      }
    }

    if (!v49 || ![v49[3] isRegistered])
    {
      goto LABEL_88;
    }

    v68 = [(NSPProxiedContentPath *)v93 resolver];
    if (v68)
    {
      v69 = v68;
      v70 = [(NSPProxiedContentPath *)v93 resolverRegistration];
      if (([v70 isRegistered] & 1) == 0)
      {

LABEL_87:
        goto LABEL_88;
      }

      if (v74)
      {
      }

      else
      {
        v71 = [(NSPProxiedContentPath *)v93 proxiedContentAgentRegistered];

        if (v71)
        {
LABEL_88:

LABEL_89:
          return;
        }
      }
    }

    else if ((v74 & 1) == 0 && [(NSPProxiedContentPath *)v93 proxiedContentAgentRegistered])
    {
      goto LABEL_88;
    }

    [(NSPProxiedContentPath *)v93 setProxiedContentAgentRegistered:1];
    v69 = [(NSPProxiedContentPath *)v93 delegate];
    [v69 proxiedContentAgentRegistered:v93];
    goto LABEL_87;
  }
}

- (void)resetFallbackProxyAgent
{
  v3 = [(NSPProxiedContentPath *)self egressProxy];

  if (v3 && [(NSPProxiedContentPath *)self allowFallback])
  {
    v4 = [(NSPProxiedContentPath *)self fallbackAgentUUID];

    if (!v4)
    {
      v5 = +[NSUUID UUID];
      [(NSPProxiedContentPath *)self setFallbackAgentUUID:v5];
    }

    v6 = [(NSPProxiedContentPath *)self fallbackRegistration];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = [NSPPrivacyProxyProxiedContentFallbackNetworkRegistration alloc];
    v8 = [(NSPProxiedContentPath *)self fallbackAgentUUID];
    v9 = [(NSPProxiedContentPath *)self shortName];
    v10 = sub_100046F60(&v7->super.super, v8, v9, self);
    [(NSPProxiedContentPath *)self setFallbackRegistration:v10];

    v11 = [(NSPProxiedContentPath *)self fallbackRegistration];

    if (v11)
    {
LABEL_7:
      v12 = [(NSPProxiedContentPath *)self ingressProxy];
      if (v12)
      {
        [(NSPProxiedContentPath *)self ingressProxy];
      }

      else
      {
        [(NSPProxiedContentPath *)self egressProxy];
      }
      v66 = ;

      v13 = [(NSPProxiedContentPath *)self ingressProxy];
      if (v13)
      {
        v14 = [(NSPProxiedContentPath *)self egressProxy];
      }

      else
      {
        v14 = 0;
      }

      v15 = [(NSPProxiedContentPath *)self fallbackRegistration];
      if (v66)
      {
        v16 = v66[3];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = [v17 tcpProxyFqdn];
      if (v14)
      {
        v19 = v14[3];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [v20 tcpProxyFqdn];
      if (v66)
      {
        v22 = v66[3];
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v24 = [v23 proxyKeyInfos];
      if (v14)
      {
        v25 = v14[3];
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v65 = [v26 proxyKeyInfos];
      if (v66)
      {
        v27 = v66[3];
      }

      else
      {
        v27 = 0;
      }

      v56 = v27;
      v64 = [v56 proxyVersion];
      if (v14)
      {
        v28 = v14[3];
      }

      else
      {
        v28 = 0;
      }

      v55 = v28;
      v63 = [v55 proxyVersion];
      if (v66)
      {
        v29 = v66[3];
      }

      else
      {
        v29 = 0;
      }

      v54 = v29;
      v51 = [v54 supportsResumption];
      if (v14)
      {
        v30 = v14[3];
      }

      else
      {
        v30 = 0;
      }

      v53 = v30;
      v50 = [v53 supportsResumption];
      v52 = sub_100004F70(v66);
      if (v52)
      {
        if (v66)
        {
          v31 = v66[6];
        }

        else
        {
          v31 = 0;
        }

        v62 = v31;
      }

      else
      {
        v62 = 0;
      }

      v49 = sub_100004F70(v14);
      if (v49)
      {
        if (v14)
        {
          v32 = v14[6];
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v59 = v23;
      v48 = v33;
      if (v66)
      {
        v34 = v66[3];
      }

      else
      {
        v34 = 0;
      }

      v47 = v34;
      v35 = [v47 tokenChallenge];
      v36 = v35;
      v61 = v17;
      v60 = v21;
      v57 = v26;
      v58 = v24;
      v37 = v18;
      v38 = v15;
      if (v14)
      {
        v39 = v14[3];
      }

      else
      {
        v39 = 0;
      }

      v40 = v35 != 0;
      v41 = v39;
      v42 = [v41 tokenChallenge];
      v43 = [(NSPProxiedContentPath *)self associatedMaps];
      v44 = [v43 firstObject];
      HIBYTE(v46) = v42 != 0;
      LOBYTE(v46) = v40;
      sub_100047014(v38, v37, v60, v58, v65, v64, v63, v51, v50, v62, v48, v46, [v44 isPrivacyProxy]);

      if (v49)
      {
      }

      if (v52)
      {
      }
    }

    else
    {
      v45 = nplog_obj();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v68 = "[NSPProxiedContentPath resetFallbackProxyAgent]";
        _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "%s called with null self.fallbackRegistration", buf, 0xCu);
      }
    }
  }
}

- (void)resetResolverAgentForceUpdateDelegate:(BOOL)a3
{
  v5 = [(NSPProxiedContentPath *)self resolver];

  if (v5)
  {
    v6 = sub_100053E68();
    v8 = sub_100074784(v6, v7);

    v9 = [(NSPProxiedContentPath *)self resolverAgentUUID];

    if (!v9)
    {
      v10 = +[NSUUID UUID];
      [(NSPProxiedContentPath *)self setResolverAgentUUID:v10];
    }

    v11 = [(NSPProxiedContentPath *)self resolverRegistration];

    if (!v11)
    {
      v12 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() session:v8];
      [(NSPProxiedContentPath *)self setResolverRegistration:v12];

      v13 = [(NSPProxiedContentPath *)self resolverRegistration];

      if (!v13)
      {
        v14 = nplog_obj();
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_FAULT))
        {
          v47 = 136315138;
          v48 = "[NSPProxiedContentPath resetResolverAgentForceUpdateDelegate:]";
          _os_log_fault_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_FAULT, "%s called with null self.resolverRegistration", &v47, 0xCu);
        }

        goto LABEL_38;
      }
    }

    v14 = [[NSPPrivacyProxyDNSAgent alloc] initWithDelegate:self];
    v15 = [(NSPProxiedContentPath *)self resolver];
    [(NSPPrivacyProxyDNSAgent *)v14 setResolver:v15];

    v16 = [(NSPProxiedContentPath *)self resolverAgentUUID];
    [(NSPPrivacyProxyDNSAgent *)v14 setAgentUUID:v16];

    v17 = [(NSPProxiedContentPath *)self resolver];
    v18 = [v17 dohURL];
    v19 = [NSURL URLWithString:v18];

    v20 = [v19 host];
    if (v20)
    {
      v21 = [v19 host];
      [(NSPPrivacyProxyDNSAgent *)v14 setAgentDescription:v21];
    }

    else
    {
      v21 = [(NSPProxiedContentPath *)self resolver];
      v22 = [v21 dohURL];
      [(NSPPrivacyProxyDNSAgent *)v14 setAgentDescription:v22];
    }

    v23 = [(NSPProxiedContentPath *)self quicAgentUUID];
    [(NSPPrivacyProxyDNSAgent *)v14 setProxyAgentUUID:v23];

    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(NSPPrivacyProxyDNSAgent *)v14 resolver];
      v26 = [v25 dohURL];
      v47 = 138412546;
      v48 = self;
      v49 = 2114;
      v50 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ setting up resolver agent to %{public}@", &v47, 0x16u);
    }

    v27 = [(NSPProxiedContentPath *)self resolverRegistration];
    v28 = [v27 isRegistered];

    if (v28)
    {
      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [(NSPProxiedContentPath *)self resolverAgentUUID];
        v47 = 138412546;
        v48 = self;
        v49 = 2112;
        v50 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@ updating resolver agent with UUID %@", &v47, 0x16u);
      }

      v31 = [(NSPProxiedContentPath *)self resolverRegistration];
      v32 = [v31 updateNetworkAgent:v14];

      if (v32)
      {
        goto LABEL_37;
      }

      v33 = nplog_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v34 = [(NSPProxiedContentPath *)self resolverAgentUUID];
      v47 = 138412546;
      v48 = self;
      v49 = 2112;
      v50 = v34;
      v35 = "%@: failed to update the registered resolver agent [%@]";
      goto LABEL_28;
    }

    v36 = [(NSPProxiedContentPath *)self resolverRegistration];
    [v36 setRegisteredNetworkAgent:v14 fileDescriptor:0xFFFFFFFFLL];

    v37 = [(NSPProxiedContentPath *)self resolverRegistration];
    [v37 unregisterNetworkAgent];

    v38 = nplog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [(NSPProxiedContentPath *)self resolverAgentUUID];
      v47 = 138412546;
      v48 = self;
      v49 = 2112;
      v50 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@ registering DNS network agent [%@]", &v47, 0x16u);
    }

    v40 = [(NSPProxiedContentPath *)self resolverRegistration];
    v41 = [v40 registerNetworkAgent:v14];

    if (v41)
    {
      v33 = [(NSPProxiedContentPath *)self resolverRegistration];
      if ([v33 isRegistered])
      {
        v42 = [(NSPProxiedContentPath *)self quicRegistration];
        if (v42)
        {
          v43 = v42;
          v44 = [(NSPProxiedContentPath *)self quicRegistration];
          v45 = v44;
          if (!v44 || ([*(v44 + 24) isRegistered] & 1) == 0)
          {

            goto LABEL_36;
          }

          if (a3)
          {

LABEL_30:
LABEL_35:
            [(NSPProxiedContentPath *)self setProxiedContentAgentRegistered:1];
            v33 = [(NSPProxiedContentPath *)self delegate];
            [v33 proxiedContentAgentRegistered:self];
            goto LABEL_36;
          }

          v46 = [(NSPProxiedContentPath *)self proxiedContentAgentRegistered];
        }

        else
        {
          if (a3)
          {
            goto LABEL_30;
          }

          v46 = [(NSPProxiedContentPath *)self proxiedContentAgentRegistered];
        }

        if (v46)
        {
LABEL_37:

LABEL_38:
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [(NSPProxiedContentPath *)self resolverAgentUUID];
        v47 = 138412546;
        v48 = self;
        v49 = 2112;
        v50 = v34;
        v35 = "%@: failed to register DNS network agent [%@]";
LABEL_28:
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v35, &v47, 0x16u);
      }
    }

LABEL_36:

    goto LABEL_37;
  }
}

- (BOOL)unregisterResolverAgent
{
  v3 = [(NSPProxiedContentPath *)self resolverAgentUUID];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(NSPProxiedContentPath *)self resolverRegistration];

  if (!v5)
  {
    return 1;
  }

  v6 = [(NSPProxiedContentPath *)self resolverRegistration];
  v7 = [v6 isRegistered];

  if (!v7)
  {
    return 1;
  }

  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(NSPProxiedContentPath *)self resolverAgentUUID];
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ un-registering resolver agent with UUID %@", &v13, 0x16u);
  }

  v10 = [(NSPProxiedContentPath *)self resolverRegistration];
  v11 = [v10 unregisterNetworkAgent];

  return v11;
}

- (void)removeProxyAgents
{
  v3 = [(NSPProxiedContentPath *)self quicRegistration];
  sub_100042E8C(v3);

  v4 = [(NSPProxiedContentPath *)self fallbackRegistration];
  sub_100042E8C(v4);

  [(NSPProxiedContentPath *)self unregisterResolverAgent];
  if ([(NSPProxiedContentPath *)self proxiedContentAgentRegistered])
  {
    [(NSPProxiedContentPath *)self setProxiedContentAgentRegistered:0];
    v5 = [(NSPProxiedContentPath *)self delegate];
    [v5 proxiedContentAgentUnregistered:self];
  }

  [(NSPProxiedContentPath *)self setQuicAgentUUID:0];
  [(NSPProxiedContentPath *)self setFallbackAgentUUID:0];
  [(NSPProxiedContentPath *)self setResolverAgentUUID:0];
  [(NSPProxiedContentPath *)self setQuicRegistration:0];
  [(NSPProxiedContentPath *)self setFallbackRegistration:0];

  [(NSPProxiedContentPath *)self setResolverRegistration:0];
}

- (void)dealloc
{
  [(NSPProxiedContentPath *)self removeProxyAgents];
  v3.receiver = self;
  v3.super_class = NSPProxiedContentPath;
  [(NSPProxiedContentPath *)&v3 dealloc];
}

- (NSPProxiedContentPathDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end