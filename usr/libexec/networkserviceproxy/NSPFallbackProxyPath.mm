@interface NSPFallbackProxyPath
- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list;
- (void)resetMultiHopProxyAgent;
- (void)resetSingleHopProxyAgent;
- (void)setupMultiHopProxyRegistrations;
- (void)setupSingleHopProxyRegistrations;
@end

@implementation NSPFallbackProxyPath

- (void)setupSingleHopProxyRegistrations
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];

  if (!singleHopRegistration)
  {
    v4 = [NSPPrivacyProxySingleHopFallbackNetworkRegistration alloc];
    if ([(NSPProxyPath *)self forceFallback])
    {
      +[NSPPrivacyProxyAgentManager singleHopProxyAgentUUID];
    }

    else
    {
      +[NSPPrivacyProxyAgentManager singleHopFallbackProxyAgentUUID];
    }
    v5 = ;
    v6 = sub_1000456FC(&v4->super.super, v5, self);
    [(NSPProxyPath *)self setSingleHopRegistration:v6];

    singleHopRegistration2 = [(NSPProxyPath *)self singleHopRegistration];

    if (!singleHopRegistration2)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "[NSPFallbackProxyPath setupSingleHopProxyRegistrations]";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null self.singleHopRegistration", &v9, 0xCu);
      }
    }
  }
}

- (void)setupMultiHopProxyRegistrations
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];

  if (!multiHopRegistration)
  {
    v4 = [NSPPrivacyProxyMultiHopFallbackNetworkRegistration alloc];
    if ([(NSPProxyPath *)self forceFallback])
    {
      +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
    }

    else
    {
      +[NSPPrivacyProxyAgentManager multiHopFallbackProxyAgentUUID];
    }
    v5 = ;
    v6 = sub_100044C54(&v4->super.super, v5, self);
    [(NSPProxyPath *)self setMultiHopRegistration:v6];

    multiHopRegistration2 = [(NSPProxyPath *)self multiHopRegistration];

    if (!multiHopRegistration2)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "[NSPFallbackProxyPath setupMultiHopProxyRegistrations]";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null self.multiHopRegistration", &v9, 0xCu);
      }
    }
  }
}

- (void)resetSingleHopProxyAgent
{
  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (ingressProxy)
  {
    [(NSPFallbackProxyPath *)self setupSingleHopProxyRegistrations];
    singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
    ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
    v59 = ingressProxy2;
    if (ingressProxy2)
    {
      v6 = *(ingressProxy2 + 24);
    }

    else
    {
      v6 = 0;
    }

    v58 = v6;
    tcpProxyFqdn = [v58 tcpProxyFqdn];
    ingressProxy3 = [(NSPProxyPath *)self ingressProxy];
    v57 = ingressProxy3;
    if (ingressProxy3)
    {
      v9 = *(ingressProxy3 + 24);
    }

    else
    {
      v9 = 0;
    }

    v56 = v9;
    proxyKeyInfos = [v56 proxyKeyInfos];
    ingressProxy4 = [(NSPProxyPath *)self ingressProxy];
    v54 = ingressProxy4;
    if (ingressProxy4)
    {
      v12 = *(ingressProxy4 + 24);
    }

    else
    {
      v12 = 0;
    }

    v53 = v12;
    proxyVersion = [v53 proxyVersion];
    ingressProxy5 = [(NSPProxyPath *)self ingressProxy];
    v52 = ingressProxy5;
    if (ingressProxy5)
    {
      v15 = *(ingressProxy5 + 24);
    }

    else
    {
      v15 = 0;
    }

    v51 = v15;
    supportsResumption = [v51 supportsResumption];
    ingressProxy6 = [(NSPProxyPath *)self ingressProxy];
    v50 = ingressProxy6;
    if (ingressProxy6)
    {
      v17 = *(ingressProxy6 + 24);
    }

    else
    {
      v17 = 0;
    }

    v49 = v17;
    usesX25519 = [v49 usesX25519];
    ingressProxy7 = [(NSPProxyPath *)self ingressProxy];
    v48 = ingressProxy7;
    if (ingressProxy7)
    {
      v19 = *(ingressProxy7 + 24);
    }

    else
    {
      v19 = 0;
    }

    v46 = v19;
    usesPQTLS = [v46 usesPQTLS];
    ingressProxy8 = [(NSPProxyPath *)self ingressProxy];
    v43 = sub_100004F70(ingressProxy8);
    v55 = proxyKeyInfos;
    if (v43)
    {
      ingressProxy9 = [(NSPProxyPath *)self ingressProxy];
      v40 = ingressProxy9;
      if (ingressProxy9)
      {
        v21 = *(ingressProxy9 + 48);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v41 = v22;
    v23 = tcpProxyFqdn;
    ingressProxy10 = [(NSPProxyPath *)self ingressProxy];
    v25 = ingressProxy10;
    if (ingressProxy10)
    {
      v26 = *(ingressProxy10 + 24);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    tokenChallenge = [v27 tokenChallenge];
    allowFailOpen = [(NSPProxyPath *)self allowFailOpen];
    configEpoch = [(NSPProxyPath *)self configEpoch];
    BYTE1(v39) = allowFailOpen;
    LOBYTE(v39) = tokenChallenge != 0;
    sub_10004571C(singleHopRegistration, v23, v55, proxyVersion, supportsResumption, usesX25519, usesPQTLS, v41, v39, configEpoch);

    if (v43)
    {
    }

    singleHopRegistered = [(NSPProxyPath *)self singleHopRegistered];
    singleHopRegistration2 = [(NSPProxyPath *)self singleHopRegistration];
    if (singleHopRegistration2)
    {
      v33 = singleHopRegistration2;
      isRegistered = [*(singleHopRegistration2 + 24) isRegistered];

      if (singleHopRegistered == isRegistered)
      {
        return;
      }
    }

    else if ((singleHopRegistered & 1) == 0)
    {
      return;
    }

    singleHopRegistration3 = [(NSPProxyPath *)self singleHopRegistration];
    v36 = singleHopRegistration3;
    if (singleHopRegistration3)
    {
      isRegistered2 = [*(singleHopRegistration3 + 24) isRegistered];
    }

    else
    {
      isRegistered2 = 0;
    }

    [(NSPProxyPath *)self setSingleHopRegistered:isRegistered2];

    delegate = [(NSPProxyPath *)self delegate];
    [delegate singleHopAgentRegistered:self];
  }

  else
  {
    v38 = nplog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v62 = "[NSPFallbackProxyPath resetSingleHopProxyAgent]";
      _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "%s called with null self.ingressProxy", buf, 0xCu);
    }
  }
}

- (void)resetMultiHopProxyAgent
{
  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (!ingressProxy)
  {
    v67 = nplog_obj();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
LABEL_61:

      return;
    }

    *buf = 136315138;
    v132 = "[NSPFallbackProxyPath resetMultiHopProxyAgent]";
    v68 = "%s called with null self.ingressProxy";
LABEL_64:
    _os_log_fault_impl(&_mh_execute_header, v67, OS_LOG_TYPE_FAULT, v68, buf, 0xCu);
    goto LABEL_61;
  }

  egressProxy = [(NSPProxyPath *)self egressProxy];

  if (!egressProxy)
  {
    v67 = nplog_obj();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    *buf = 136315138;
    v132 = "[NSPFallbackProxyPath resetMultiHopProxyAgent]";
    v68 = "%s called with null self.egressProxy";
    goto LABEL_64;
  }

  [(NSPFallbackProxyPath *)self setupMultiHopProxyRegistrations];
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
  v125 = ingressProxy2;
  if (ingressProxy2)
  {
    v7 = *(ingressProxy2 + 24);
  }

  else
  {
    v7 = 0;
  }

  v124 = v7;
  tcpProxyFqdn = [v124 tcpProxyFqdn];
  egressProxy2 = [(NSPProxyPath *)self egressProxy];
  v123 = egressProxy2;
  if (egressProxy2)
  {
    v10 = *(egressProxy2 + 24);
  }

  else
  {
    v10 = 0;
  }

  v122 = v10;
  tcpProxyFqdn2 = [v122 tcpProxyFqdn];
  ingressProxy3 = [(NSPProxyPath *)self ingressProxy];
  v120 = ingressProxy3;
  if (ingressProxy3)
  {
    v13 = *(ingressProxy3 + 24);
  }

  else
  {
    v13 = 0;
  }

  v119 = v13;
  proxyKeyInfos = [v119 proxyKeyInfos];
  egressProxy3 = [(NSPProxyPath *)self egressProxy];
  v117 = egressProxy3;
  if (egressProxy3)
  {
    v16 = *(egressProxy3 + 24);
  }

  else
  {
    v16 = 0;
  }

  v116 = v16;
  proxyKeyInfos2 = [v116 proxyKeyInfos];
  ingressProxy4 = [(NSPProxyPath *)self ingressProxy];
  v114 = ingressProxy4;
  if (ingressProxy4)
  {
    v19 = *(ingressProxy4 + 24);
  }

  else
  {
    v19 = 0;
  }

  v113 = v19;
  proxyVersion = [v113 proxyVersion];
  egressProxy4 = [(NSPProxyPath *)self egressProxy];
  v111 = egressProxy4;
  if (egressProxy4)
  {
    v22 = *(egressProxy4 + 24);
  }

  else
  {
    v22 = 0;
  }

  v110 = v22;
  proxyVersion2 = [v110 proxyVersion];
  ingressProxy5 = [(NSPProxyPath *)self ingressProxy];
  v109 = ingressProxy5;
  if (ingressProxy5)
  {
    v24 = *(ingressProxy5 + 24);
  }

  else
  {
    v24 = 0;
  }

  v108 = v24;
  allowedNextHops = [v108 allowedNextHops];
  egressProxy5 = [(NSPProxyPath *)self egressProxy];
  v107 = egressProxy5;
  if (egressProxy5)
  {
    v26 = *(egressProxy5 + 24);
  }

  else
  {
    v26 = 0;
  }

  v106 = v26;
  allowedNextHops2 = [v106 allowedNextHops];
  ingressProxy6 = [(NSPProxyPath *)self ingressProxy];
  v105 = ingressProxy6;
  if (ingressProxy6)
  {
    v28 = *(ingressProxy6 + 24);
  }

  else
  {
    v28 = 0;
  }

  v104 = v28;
  supportsResumption = [v104 supportsResumption];
  egressProxy6 = [(NSPProxyPath *)self egressProxy];
  v103 = egressProxy6;
  if (egressProxy6)
  {
    v30 = *(egressProxy6 + 24);
  }

  else
  {
    v30 = 0;
  }

  v102 = v30;
  supportsResumption2 = [v102 supportsResumption];
  ingressProxy7 = [(NSPProxyPath *)self ingressProxy];
  v101 = ingressProxy7;
  if (ingressProxy7)
  {
    v32 = *(ingressProxy7 + 24);
  }

  else
  {
    v32 = 0;
  }

  v100 = v32;
  usesX25519 = [v100 usesX25519];
  egressProxy7 = [(NSPProxyPath *)self egressProxy];
  v99 = egressProxy7;
  if (egressProxy7)
  {
    v34 = *(egressProxy7 + 24);
  }

  else
  {
    v34 = 0;
  }

  v98 = v34;
  usesX255192 = [v98 usesX25519];
  ingressProxy8 = [(NSPProxyPath *)self ingressProxy];
  v97 = ingressProxy8;
  if (ingressProxy8)
  {
    v36 = *(ingressProxy8 + 24);
  }

  else
  {
    v36 = 0;
  }

  v96 = v36;
  usesPQTLS = [v96 usesPQTLS];
  egressProxy8 = [(NSPProxyPath *)self egressProxy];
  v94 = egressProxy8;
  if (egressProxy8)
  {
    v38 = *(egressProxy8 + 24);
  }

  else
  {
    v38 = 0;
  }

  v93 = v38;
  usesPQTLS2 = [v93 usesPQTLS];
  ingressProxy9 = [(NSPProxyPath *)self ingressProxy];
  v89 = sub_100004F70(ingressProxy9);
  if (v89)
  {
    ingressProxy10 = [(NSPProxyPath *)self ingressProxy];
    v71 = ingressProxy10;
    if (ingressProxy10)
    {
      v40 = *(ingressProxy10 + 48);
    }

    else
    {
      v40 = 0;
    }

    v126 = v40;
  }

  else
  {
    v126 = 0;
  }

  egressProxy9 = [(NSPProxyPath *)self egressProxy];
  v85 = sub_100004F70(egressProxy9);
  if (v85)
  {
    egressProxy10 = [(NSPProxyPath *)self egressProxy];
    v70 = egressProxy10;
    if (egressProxy10)
    {
      v42 = *(egressProxy10 + 48);
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  ingressProxy11 = [(NSPProxyPath *)self ingressProxy];
  v82 = ingressProxy11;
  if (ingressProxy11)
  {
    v45 = *(ingressProxy11 + 24);
  }

  else
  {
    v45 = 0;
  }

  v81 = v45;
  tokenChallenge = [v81 tokenChallenge];
  egressProxy11 = [(NSPProxyPath *)self egressProxy];
  v118 = proxyKeyInfos;
  v83 = v43;
  v80 = egressProxy11;
  if (egressProxy11)
  {
    v48 = *(egressProxy11 + 24);
  }

  else
  {
    v48 = 0;
  }

  v112 = proxyVersion;
  v121 = tcpProxyFqdn2;
  v79 = v48;
  tokenChallenge2 = [v79 tokenChallenge];
  allowFailOpen = [(NSPProxyPath *)self allowFailOpen];
  geohashSharingEnabled = [(NSPProxyPath *)self geohashSharingEnabled];
  delegate = [(NSPProxyPath *)self delegate];
  geohashOverride = [delegate geohashOverride];
  delegate2 = [(NSPProxyPath *)self delegate];
  dnsFilteringHintEnabled = [delegate2 dnsFilteringHintEnabled];
  ingressProxy12 = [(NSPProxyPath *)self ingressProxy];
  v52 = ingressProxy12;
  v115 = proxyKeyInfos2;
  v53 = tcpProxyFqdn;
  if (ingressProxy12)
  {
    v54 = *(ingressProxy12 + 24);
  }

  else
  {
    v54 = 0;
  }

  v55 = tokenChallenge2 != 0;
  v56 = tokenChallenge != 0;
  v75 = tokenChallenge;
  v57 = v54;
  fallbackSupportsUDPProxying = [v57 fallbackSupportsUDPProxying];
  [(NSPProxyPath *)self configEpoch];
  v59 = v72 = tokenChallenge2;
  HIBYTE(v69) = v55;
  LOBYTE(v69) = v56;
  sub_100044C74(multiHopRegistration, v53, v121, v118, v115, v112, proxyVersion2, allowedNextHops, allowedNextHops2, supportsResumption, supportsResumption2, usesX25519, usesX255192, usesPQTLS, usesPQTLS2, v126, v83, v69, allowFailOpen, geohashSharingEnabled, geohashOverride, dnsFilteringHintEnabled, fallbackSupportsUDPProxying, v59);

  if (v85)
  {
  }

  if (v89)
  {
  }

  multiHopRegistered = [(NSPProxyPath *)self multiHopRegistered];
  multiHopRegistration2 = [(NSPProxyPath *)self multiHopRegistration];
  if (multiHopRegistration2)
  {
    v62 = multiHopRegistration2;
    isRegistered = [*(multiHopRegistration2 + 24) isRegistered];

    if (multiHopRegistered == isRegistered)
    {
      return;
    }
  }

  else if ((multiHopRegistered & 1) == 0)
  {
    return;
  }

  multiHopRegistration3 = [(NSPProxyPath *)self multiHopRegistration];
  v65 = multiHopRegistration3;
  if (multiHopRegistration3)
  {
    isRegistered2 = [*(multiHopRegistration3 + 24) isRegistered];
  }

  else
  {
    isRegistered2 = 0;
  }

  [(NSPProxyPath *)self setMultiHopRegistered:isRegistered2];

  delegate3 = [(NSPProxyPath *)self delegate];
  [delegate3 multiHopAgentRegistered:self];
}

- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list
{
  listCopy = list;
  validCopy = valid;
  ingressProxy = [(NSPProxyPath *)self ingressProxy];
  v9 = ingressProxy;
  if (ingressProxy)
  {
    v10 = *(ingressProxy + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  egressProxy = [(NSPProxyPath *)self egressProxy];
  v13 = egressProxy;
  if (egressProxy)
  {
    v14 = *(egressProxy + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:validCopy proxyPathList:listCopy ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPProxyPath *)self proxyPathWeight] supportsFallback:1];

  return v16;
}

@end