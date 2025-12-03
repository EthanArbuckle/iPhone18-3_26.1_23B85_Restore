@interface NSPQuicProxyPath
- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list;
- (NSPQUICProxyPathDelegate)quicProxyPathDelegate;
- (void)resetMultiHopProxyAgent;
- (void)resetSingleHopProxyAgent;
- (void)setupMultiHopProxyRegistrations;
- (void)setupNetworkSpecificMultiHopProxyRegistrations:(id)registrations;
- (void)setupSingleHopProxyRegistrations;
- (void)tearDownMultiHopRegistration;
@end

@implementation NSPQuicProxyPath

- (void)setupSingleHopProxyRegistrations
{
  singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];

  if (!singleHopRegistration)
  {
    v4 = [NSPPrivacyProxySingleHopNetworkRegistration alloc];
    v5 = +[NSPPrivacyProxyAgentManager singleHopProxyAgentUUID];
    v6 = sub_100043E7C(&v4->super.super, v5, self);
    [(NSPProxyPath *)self setSingleHopRegistration:v6];

    singleHopRegistration2 = [(NSPProxyPath *)self singleHopRegistration];

    if (!singleHopRegistration2)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "[NSPQuicProxyPath setupSingleHopProxyRegistrations]";
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
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];

      if (!nonDefaultAgentUUID)
      {
        v5 = +[NSUUID UUID];
        [(NSPProxyPath *)self setNonDefaultAgentUUID:v5];
      }

      nonDefaultAgentUUID2 = [(NSPProxyPath *)self nonDefaultAgentUUID];
      v7 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      isa = [(NSPProxyPath *)self egressProxy];
      v9 = isa;
      if (isa)
      {
        isa = isa[3].isa;
      }

      vendor = [isa vendor];
      if (v7)
      {
        v7 = sub_1000420E0(&v7->super.super, nonDefaultAgentUUID2, 0, 1, vendor, self);
      }

      [(NSPProxyPath *)self setMultiHopRegistration:v7];
    }

    else
    {
      v11 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      nonDefaultAgentUUID2 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      v9 = sub_100043094(&v11->super.super, nonDefaultAgentUUID2, self);
      [(NSPProxyPath *)self setMultiHopRegistration:v9];
    }

    multiHopRegistration2 = [(NSPProxyPath *)self multiHopRegistration];

    if (!multiHopRegistration2)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = 136315138;
        v15 = "[NSPQuicProxyPath setupMultiHopProxyRegistrations]";
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null self.multiHopRegistration", &v14, 0xCu);
      }
    }
  }
}

- (void)setupNetworkSpecificMultiHopProxyRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];

  if (!multiHopRegistration)
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      nonDefaultAgentUUID = [(NSPProxyPath *)self nonDefaultAgentUUID];

      if (!nonDefaultAgentUUID)
      {
        v7 = +[NSUUID UUID];
        [(NSPProxyPath *)self setNonDefaultAgentUUID:v7];
      }

      nonDefaultAgentUUID2 = [(NSPProxyPath *)self nonDefaultAgentUUID];
      v9 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      isa = [(NSPProxyPath *)self ingressProxy];
      v11 = isa;
      if (isa)
      {
        isa = isa[3].isa;
      }

      vendor = [isa vendor];
      if (v9)
      {
        v9 = sub_1000420E0(&v9->super.super, nonDefaultAgentUUID2, registrationsCopy, 1, vendor, self);
      }

      [(NSPProxyPath *)self setMultiHopRegistration:v9];
    }

    else
    {
      v13 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      nonDefaultAgentUUID2 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      v11 = sub_100043094(&v13->super.super, nonDefaultAgentUUID2, self);
      [(NSPProxyPath *)self setMultiHopRegistration:v11];
    }

    multiHopRegistration2 = [(NSPProxyPath *)self multiHopRegistration];

    if (!multiHopRegistration2)
    {
      v83 = nplog_obj();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v150 = "[NSPQuicProxyPath setupNetworkSpecificMultiHopProxyRegistrations:]";
        v84 = "%s called with null self.multiHopRegistration";
        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (!ingressProxy)
  {
    v83 = nplog_obj();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v150 = "[NSPQuicProxyPath setupNetworkSpecificMultiHopProxyRegistrations:]";
      v84 = "%s called with null self.ingressProxy";
LABEL_78:
      _os_log_fault_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, v84, buf, 0xCu);
    }

LABEL_79:

    goto LABEL_71;
  }

  egressProxy = [(NSPProxyPath *)self egressProxy];

  if (!egressProxy)
  {
    v83 = nplog_obj();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v150 = "[NSPQuicProxyPath setupNetworkSpecificMultiHopProxyRegistrations:]";
      v84 = "%s called with null self.egressProxy";
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  if ([(NSPProxyPath *)self allowFallback])
  {
    v17 = +[NSPPrivacyProxyAgentManager multiHopFallbackProxyAgentUUID];
    quicProxyPathDelegate = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
    v147 = [quicProxyPathDelegate multiHopFallbackProxyConfigHash:self];
  }

  else
  {
    v17 = 0;
    v147 = 0;
  }

  multiHopRegistration3 = [(NSPProxyPath *)self multiHopRegistration];
  ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
  v138 = ingressProxy2;
  v141 = multiHopRegistration3;
  if (ingressProxy2)
  {
    v21 = *(ingressProxy2 + 24);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  proxyURL = [v22 proxyURL];
  egressProxy2 = [(NSPProxyPath *)self egressProxy];
  v136 = egressProxy2;
  if (egressProxy2)
  {
    v25 = *(egressProxy2 + 24);
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  proxyURL2 = [v26 proxyURL];
  ingressProxy3 = [(NSPProxyPath *)self ingressProxy];
  v133 = ingressProxy3;
  if (ingressProxy3)
  {
    v29 = *(ingressProxy3 + 24);
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  proxyKeyInfos = [v30 proxyKeyInfos];
  egressProxy3 = [(NSPProxyPath *)self egressProxy];
  v130 = egressProxy3;
  if (egressProxy3)
  {
    v32 = *(egressProxy3 + 24);
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  proxyKeyInfos2 = [v33 proxyKeyInfos];
  ingressProxy4 = [(NSPProxyPath *)self ingressProxy];
  v128 = ingressProxy4;
  if (ingressProxy4)
  {
    v35 = *(ingressProxy4 + 24);
  }

  else
  {
    v35 = 0;
  }

  v127 = v35;
  proxyVersion = [v127 proxyVersion];
  egressProxy4 = [(NSPProxyPath *)self egressProxy];
  v126 = egressProxy4;
  if (egressProxy4)
  {
    v37 = *(egressProxy4 + 24);
  }

  else
  {
    v37 = 0;
  }

  v125 = v37;
  proxyVersion2 = [v125 proxyVersion];
  ingressProxy5 = [(NSPProxyPath *)self ingressProxy];
  v124 = ingressProxy5;
  if (ingressProxy5)
  {
    v39 = *(ingressProxy5 + 24);
  }

  else
  {
    v39 = 0;
  }

  v123 = v39;
  allowedNextHops = [v123 allowedNextHops];
  egressProxy5 = [(NSPProxyPath *)self egressProxy];
  v122 = egressProxy5;
  if (egressProxy5)
  {
    v41 = *(egressProxy5 + 24);
  }

  else
  {
    v41 = 0;
  }

  v121 = v41;
  allowedNextHops2 = [v121 allowedNextHops];
  ingressProxy6 = [(NSPProxyPath *)self ingressProxy];
  v120 = ingressProxy6;
  if (ingressProxy6)
  {
    v43 = *(ingressProxy6 + 24);
  }

  else
  {
    v43 = 0;
  }

  v119 = v43;
  supportsResumption = [v119 supportsResumption];
  egressProxy6 = [(NSPProxyPath *)self egressProxy];
  v118 = egressProxy6;
  if (egressProxy6)
  {
    v45 = *(egressProxy6 + 24);
  }

  else
  {
    v45 = 0;
  }

  v117 = v45;
  supportsResumption2 = [v117 supportsResumption];
  ingressProxy7 = [(NSPProxyPath *)self ingressProxy];
  v116 = ingressProxy7;
  if (ingressProxy7)
  {
    v47 = *(ingressProxy7 + 24);
  }

  else
  {
    v47 = 0;
  }

  v115 = v47;
  usesX25519 = [v115 usesX25519];
  egressProxy7 = [(NSPProxyPath *)self egressProxy];
  v114 = egressProxy7;
  if (egressProxy7)
  {
    v49 = *(egressProxy7 + 24);
  }

  else
  {
    v49 = 0;
  }

  v113 = v49;
  usesX255192 = [v113 usesX25519];
  ingressProxy8 = [(NSPProxyPath *)self ingressProxy];
  v112 = ingressProxy8;
  if (ingressProxy8)
  {
    v51 = *(ingressProxy8 + 24);
  }

  else
  {
    v51 = 0;
  }

  v111 = v51;
  usesPQTLS = [v111 usesPQTLS];
  egressProxy8 = [(NSPProxyPath *)self egressProxy];
  v109 = egressProxy8;
  if (egressProxy8)
  {
    v53 = *(egressProxy8 + 24);
  }

  else
  {
    v53 = 0;
  }

  v108 = v53;
  usesPQTLS2 = [v108 usesPQTLS];
  ingressProxy9 = [(NSPProxyPath *)self ingressProxy];
  v104 = sub_100004F70(ingressProxy9);
  if (v104)
  {
    ingressProxy10 = [(NSPProxyPath *)self ingressProxy];
    v87 = ingressProxy10;
    if (ingressProxy10)
    {
      v55 = *(ingressProxy10 + 48);
    }

    else
    {
      v55 = 0;
    }

    v140 = v55;
  }

  else
  {
    v140 = 0;
  }

  egressProxy9 = [(NSPProxyPath *)self egressProxy];
  v100 = sub_100004F70(egressProxy9);
  if (v100)
  {
    egressProxy10 = [(NSPProxyPath *)self egressProxy];
    v86 = egressProxy10;
    if (egressProxy10)
    {
      v57 = *(egressProxy10 + 48);
    }

    else
    {
      v57 = 0;
    }

    v98 = v57;
  }

  else
  {
    v98 = 0;
  }

  ingressProxy11 = [(NSPProxyPath *)self ingressProxy];
  v97 = ingressProxy11;
  if (ingressProxy11)
  {
    v59 = *(ingressProxy11 + 24);
  }

  else
  {
    v59 = 0;
  }

  v96 = v59;
  tokenChallenge = [v96 tokenChallenge];
  egressProxy11 = [(NSPProxyPath *)self egressProxy];
  v148 = v17;
  v132 = v30;
  v129 = v33;
  v95 = egressProxy11;
  if (egressProxy11)
  {
    v62 = *(egressProxy11 + 24);
  }

  else
  {
    v62 = 0;
  }

  v94 = v62;
  tokenChallenge2 = [v94 tokenChallenge];
  allowFailOpen = [(NSPProxyPath *)self allowFailOpen];
  geohashSharingEnabled = [(NSPProxyPath *)self geohashSharingEnabled];
  delegate = [(NSPProxyPath *)self delegate];
  geohashOverride = [delegate geohashOverride];
  delegate2 = [(NSPProxyPath *)self delegate];
  dnsFilteringHintEnabled = [delegate2 dnsFilteringHintEnabled];
  ingressProxy12 = [(NSPProxyPath *)self ingressProxy];
  v66 = ingressProxy12;
  v139 = registrationsCopy;
  v137 = v22;
  v134 = proxyURL2;
  v135 = v26;
  if (ingressProxy12)
  {
    v67 = *(ingressProxy12 + 24);
  }

  else
  {
    v67 = 0;
  }

  v68 = tokenChallenge2 != 0;
  v89 = tokenChallenge2;
  v69 = tokenChallenge;
  v70 = tokenChallenge != 0;
  v71 = v67;
  fallbackSupportsUDPProxying = [v71 fallbackSupportsUDPProxying];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  BYTE1(v85) = v68;
  LOBYTE(v85) = v70;
  sub_1000430B4(v141, proxyURL, v134, proxyKeyInfos, proxyKeyInfos2, proxyVersion, proxyVersion2, allowedNextHops, allowedNextHops2, supportsResumption, supportsResumption2, usesX25519, usesX255192, usesPQTLS, usesPQTLS2, v140, v98, v85, v148, allowFailOpen, geohashSharingEnabled, geohashOverride, dnsFilteringHintEnabled, 0, 0, v147, fallbackSupportsUDPProxying, configEpoch);

  if (v100)
  {
  }

  registrationsCopy = v139;
  if (v104)
  {
  }

  multiHopRegistered = [(NSPProxyPath *)self multiHopRegistered];
  multiHopRegistration4 = [(NSPProxyPath *)self multiHopRegistration];
  if (multiHopRegistration4)
  {
    v76 = multiHopRegistration4;
    isRegistered = [*(multiHopRegistration4 + 24) isRegistered];

    v78 = v148;
    if (multiHopRegistered != isRegistered)
    {
LABEL_67:
      multiHopRegistration5 = [(NSPProxyPath *)self multiHopRegistration];
      v80 = multiHopRegistration5;
      if (multiHopRegistration5)
      {
        isRegistered2 = [*(multiHopRegistration5 + 24) isRegistered];
      }

      else
      {
        isRegistered2 = 0;
      }

      [(NSPProxyPath *)self setMultiHopRegistered:isRegistered2];

      delegate3 = [(NSPProxyPath *)self delegate];
      [delegate3 multiHopAgentRegistered:self];
    }
  }

  else
  {
    v78 = v148;
    if (multiHopRegistered)
    {
      goto LABEL_67;
    }
  }

LABEL_71:
}

- (void)tearDownMultiHopRegistration
{
  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  sub_100042E8C(multiHopRegistration);
}

- (void)resetSingleHopProxyAgent
{
  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (ingressProxy)
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      return;
    }

    [(NSPQuicProxyPath *)self setupSingleHopProxyRegistrations];
    if ([(NSPProxyPath *)self allowFallback])
    {
      v68 = +[NSPPrivacyProxyAgentManager singleHopFallbackProxyAgentUUID];
      quicProxyPathDelegate = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      v69 = [quicProxyPathDelegate singleHopFallbackProxyConfigHash:self];
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    singleHopRegistration = [(NSPProxyPath *)self singleHopRegistration];
    v6 = sub_100042F70(singleHopRegistration);

    singleHopRegistration2 = [(NSPProxyPath *)self singleHopRegistration];
    ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
    v66 = ingressProxy2;
    if (ingressProxy2)
    {
      v9 = *(ingressProxy2 + 24);
    }

    else
    {
      v9 = 0;
    }

    v65 = v9;
    proxyURL = [v65 proxyURL];
    ingressProxy3 = [(NSPProxyPath *)self ingressProxy];
    v64 = ingressProxy3;
    if (ingressProxy3)
    {
      v12 = *(ingressProxy3 + 24);
    }

    else
    {
      v12 = 0;
    }

    v63 = v12;
    proxyKeyInfos = [v63 proxyKeyInfos];
    ingressProxy4 = [(NSPProxyPath *)self ingressProxy];
    v62 = ingressProxy4;
    if (ingressProxy4)
    {
      v15 = *(ingressProxy4 + 24);
    }

    else
    {
      v15 = 0;
    }

    v61 = v15;
    proxyVersion = [v61 proxyVersion];
    ingressProxy5 = [(NSPProxyPath *)self ingressProxy];
    v59 = ingressProxy5;
    if (ingressProxy5)
    {
      v18 = *(ingressProxy5 + 24);
    }

    else
    {
      v18 = 0;
    }

    v58 = v18;
    supportsResumption = [v58 supportsResumption];
    ingressProxy6 = [(NSPProxyPath *)self ingressProxy];
    v67 = v6;
    v57 = ingressProxy6;
    if (ingressProxy6)
    {
      v20 = *(ingressProxy6 + 24);
    }

    else
    {
      v20 = 0;
    }

    v56 = v20;
    usesX25519 = [v56 usesX25519];
    ingressProxy7 = [(NSPProxyPath *)self ingressProxy];
    v55 = ingressProxy7;
    if (ingressProxy7)
    {
      v22 = *(ingressProxy7 + 24);
    }

    else
    {
      v22 = 0;
    }

    v53 = v22;
    usesPQTLS = [v53 usesPQTLS];
    ingressProxy8 = [(NSPProxyPath *)self ingressProxy];
    v50 = sub_100004F70(ingressProxy8);
    v60 = proxyVersion;
    if (v50)
    {
      ingressProxy9 = [(NSPProxyPath *)self ingressProxy];
      v47 = ingressProxy9;
      if (ingressProxy9)
      {
        v24 = *(ingressProxy9 + 48);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v48 = v25;
    ingressProxy10 = [(NSPProxyPath *)self ingressProxy];
    v27 = ingressProxy10;
    if (ingressProxy10)
    {
      v28 = *(ingressProxy10 + 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    tokenChallenge = [v29 tokenChallenge];
    allowFailOpen = [(NSPProxyPath *)self allowFailOpen];
    configEpoch = [(NSPProxyPath *)self configEpoch];
    LOBYTE(v46) = allowFailOpen;
    LOBYTE(v45) = tokenChallenge != 0;
    sub_100043E9C(singleHopRegistration2, proxyURL, proxyKeyInfos, v60, supportsResumption, usesX25519, usesPQTLS, v48, v45, v68, v46, v69, configEpoch);

    if (v50)
    {
    }

    singleHopRegistration3 = [(NSPProxyPath *)self singleHopRegistration];
    v34 = sub_100042F70(singleHopRegistration3);

    singleHopRegistered = [(NSPProxyPath *)self singleHopRegistered];
    singleHopRegistration4 = [(NSPProxyPath *)self singleHopRegistration];
    v37 = singleHopRegistration4;
    if (singleHopRegistration4)
    {
      v38 = v67;
      if (singleHopRegistered != [*(singleHopRegistration4 + 24) isRegistered])
      {
LABEL_29:

        goto LABEL_42;
      }
    }

    else
    {
      v38 = v67;
      if (singleHopRegistered)
      {
        goto LABEL_29;
      }
    }

    v40 = [v34 isEqualToData:v38];

    if (v40)
    {
LABEL_45:

      return;
    }

LABEL_42:
    singleHopRegistration5 = [(NSPProxyPath *)self singleHopRegistration];
    v42 = singleHopRegistration5;
    if (singleHopRegistration5)
    {
      isRegistered = [*(singleHopRegistration5 + 24) isRegistered];
    }

    else
    {
      isRegistered = 0;
    }

    [(NSPProxyPath *)self setSingleHopRegistered:isRegistered];

    delegate = [(NSPProxyPath *)self delegate];
    [delegate singleHopAgentRegistered:self];

    goto LABEL_45;
  }

  v39 = nplog_obj();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v71 = "[NSPQuicProxyPath resetSingleHopProxyAgent]";
    _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s called with null self.ingressProxy", buf, 0xCu);
  }
}

- (void)resetMultiHopProxyAgent
{
  ingressProxy = [(NSPProxyPath *)self ingressProxy];

  if (!ingressProxy)
  {
    v69 = nplog_obj();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
LABEL_78:

      return;
    }

    *buf = 136315138;
    v142 = "[NSPQuicProxyPath resetMultiHopProxyAgent]";
    v70 = "%s called with null self.ingressProxy";
LABEL_80:
    _os_log_fault_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, v70, buf, 0xCu);
    goto LABEL_78;
  }

  egressProxy = [(NSPProxyPath *)self egressProxy];

  if (!egressProxy)
  {
    v69 = nplog_obj();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    v142 = "[NSPQuicProxyPath resetMultiHopProxyAgent]";
    v70 = "%s called with null self.egressProxy";
    goto LABEL_80;
  }

  [(NSPQuicProxyPath *)self setupMultiHopProxyRegistrations];
  if ([(NSPProxyPath *)self allowFallback])
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      v133 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      quicProxyPathDelegate = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      [quicProxyPathDelegate multiHopQUICProxyConfigHash:self];
    }

    else
    {
      v133 = +[NSPPrivacyProxyAgentManager multiHopFallbackProxyAgentUUID];
      quicProxyPathDelegate = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      [quicProxyPathDelegate multiHopFallbackProxyConfigHash:self];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
    v133 = 0;
  }

  if ([(NSPProxyPath *)self fallbackToQUIC])
  {
    v7 = 0;
  }

  else
  {
    quicProxyPathDelegate2 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
    v7 = [quicProxyPathDelegate2 alternatePreferredPathAgentUUIDs:self];
  }

  multiHopRegistration = [(NSPProxyPath *)self multiHopRegistration];
  ingressProxy2 = [(NSPProxyPath *)self ingressProxy];
  v129 = ingressProxy2;
  if (ingressProxy2)
  {
    v11 = *(ingressProxy2 + 24);
  }

  else
  {
    v11 = 0;
  }

  v128 = v11;
  proxyURL = [v128 proxyURL];
  egressProxy2 = [(NSPProxyPath *)self egressProxy];
  v126 = egressProxy2;
  if (egressProxy2)
  {
    v13 = *(egressProxy2 + 24);
  }

  else
  {
    v13 = 0;
  }

  v125 = v13;
  proxyURL2 = [v125 proxyURL];
  ingressProxy3 = [(NSPProxyPath *)self ingressProxy];
  v123 = ingressProxy3;
  if (ingressProxy3)
  {
    v15 = *(ingressProxy3 + 24);
  }

  else
  {
    v15 = 0;
  }

  v122 = v15;
  proxyKeyInfos = [v122 proxyKeyInfos];
  egressProxy3 = [(NSPProxyPath *)self egressProxy];
  v121 = egressProxy3;
  if (egressProxy3)
  {
    v17 = *(egressProxy3 + 24);
  }

  else
  {
    v17 = 0;
  }

  v120 = v17;
  proxyKeyInfos2 = [v120 proxyKeyInfos];
  ingressProxy4 = [(NSPProxyPath *)self ingressProxy];
  v119 = ingressProxy4;
  if (ingressProxy4)
  {
    v19 = *(ingressProxy4 + 24);
  }

  else
  {
    v19 = 0;
  }

  v118 = v19;
  proxyVersion = [v118 proxyVersion];
  egressProxy4 = [(NSPProxyPath *)self egressProxy];
  v117 = egressProxy4;
  if (egressProxy4)
  {
    v21 = *(egressProxy4 + 24);
  }

  else
  {
    v21 = 0;
  }

  v116 = v21;
  proxyVersion2 = [v116 proxyVersion];
  ingressProxy5 = [(NSPProxyPath *)self ingressProxy];
  v115 = ingressProxy5;
  if (ingressProxy5)
  {
    v23 = *(ingressProxy5 + 24);
  }

  else
  {
    v23 = 0;
  }

  v114 = v23;
  allowedNextHops = [v114 allowedNextHops];
  egressProxy5 = [(NSPProxyPath *)self egressProxy];
  v113 = egressProxy5;
  if (egressProxy5)
  {
    v25 = *(egressProxy5 + 24);
  }

  else
  {
    v25 = 0;
  }

  v112 = v25;
  allowedNextHops2 = [v112 allowedNextHops];
  ingressProxy6 = [(NSPProxyPath *)self ingressProxy];
  v111 = ingressProxy6;
  if (ingressProxy6)
  {
    v27 = *(ingressProxy6 + 24);
  }

  else
  {
    v27 = 0;
  }

  v110 = v27;
  supportsResumption = [v110 supportsResumption];
  egressProxy6 = [(NSPProxyPath *)self egressProxy];
  v109 = egressProxy6;
  if (egressProxy6)
  {
    v29 = *(egressProxy6 + 24);
  }

  else
  {
    v29 = 0;
  }

  v108 = v29;
  supportsResumption2 = [v108 supportsResumption];
  ingressProxy7 = [(NSPProxyPath *)self ingressProxy];
  v107 = ingressProxy7;
  if (ingressProxy7)
  {
    v31 = *(ingressProxy7 + 24);
  }

  else
  {
    v31 = 0;
  }

  v106 = v31;
  usesX25519 = [v106 usesX25519];
  egressProxy7 = [(NSPProxyPath *)self egressProxy];
  v105 = egressProxy7;
  if (egressProxy7)
  {
    v33 = *(egressProxy7 + 24);
  }

  else
  {
    v33 = 0;
  }

  v104 = v33;
  usesX255192 = [v104 usesX25519];
  ingressProxy8 = [(NSPProxyPath *)self ingressProxy];
  v103 = ingressProxy8;
  if (ingressProxy8)
  {
    v35 = *(ingressProxy8 + 24);
  }

  else
  {
    v35 = 0;
  }

  v102 = v35;
  usesPQTLS = [v102 usesPQTLS];
  egressProxy8 = [(NSPProxyPath *)self egressProxy];
  v101 = egressProxy8;
  if (egressProxy8)
  {
    v37 = *(egressProxy8 + 24);
  }

  else
  {
    v37 = 0;
  }

  v99 = v37;
  usesPQTLS2 = [v99 usesPQTLS];
  ingressProxy9 = [(NSPProxyPath *)self ingressProxy];
  v96 = sub_100004F70(ingressProxy9);
  if (v96)
  {
    ingressProxy10 = [(NSPProxyPath *)self ingressProxy];
    v76 = ingressProxy10;
    if (ingressProxy10)
    {
      v39 = *(ingressProxy10 + 48);
    }

    else
    {
      v39 = 0;
    }

    v132 = v39;
  }

  else
  {
    v132 = 0;
  }

  egressProxy9 = [(NSPProxyPath *)self egressProxy];
  v91 = sub_100004F70(egressProxy9);
  if (v91)
  {
    egressProxy10 = [(NSPProxyPath *)self egressProxy];
    v75 = egressProxy10;
    if (egressProxy10)
    {
      v41 = *(egressProxy10 + 48);
    }

    else
    {
      v41 = 0;
    }

    v131 = v41;
  }

  else
  {
    v131 = 0;
  }

  ingressProxy11 = [(NSPProxyPath *)self ingressProxy];
  v89 = ingressProxy11;
  if (ingressProxy11)
  {
    v43 = *(ingressProxy11 + 24);
  }

  else
  {
    v43 = 0;
  }

  v88 = v43;
  tokenChallenge = [v88 tokenChallenge];
  egressProxy11 = [(NSPProxyPath *)self egressProxy];
  v86 = egressProxy11;
  if (egressProxy11)
  {
    v46 = *(egressProxy11 + 24);
  }

  else
  {
    v46 = 0;
  }

  v85 = v46;
  tokenChallenge2 = [v85 tokenChallenge];
  allowFailOpen = [(NSPProxyPath *)self allowFailOpen];
  geohashSharingEnabled = [(NSPProxyPath *)self geohashSharingEnabled];
  delegate = [(NSPProxyPath *)self delegate];
  geohashOverride = [delegate geohashOverride];
  delegate2 = [(NSPProxyPath *)self delegate];
  dnsFilteringHintEnabled = [delegate2 dnsFilteringHintEnabled];
  fallbackToQUIC = [(NSPProxyPath *)self fallbackToQUIC];
  v130 = multiHopRegistration;
  if (fallbackToQUIC)
  {
    egressProxy12 = [(NSPProxyPath *)self egressProxy];
    v74 = egressProxy12;
    if (egressProxy12)
    {
      v49 = *(egressProxy12 + 24);
    }

    else
    {
      v49 = 0;
    }

    v73 = v49;
    preferredPathPatterns = [v73 preferredPathPatterns];
  }

  else
  {
    preferredPathPatterns = 0;
  }

  v51 = v7;
  ingressProxy12 = [(NSPProxyPath *)self ingressProxy];
  v53 = ingressProxy12;
  if (ingressProxy12)
  {
    v54 = *(ingressProxy12 + 24);
  }

  else
  {
    v54 = 0;
  }

  v84 = tokenChallenge2;
  v55 = tokenChallenge2 != 0;
  v87 = tokenChallenge;
  v56 = tokenChallenge != 0;
  v57 = v54;
  fallbackSupportsUDPProxying = [v57 fallbackSupportsUDPProxying];
  configEpoch = [(NSPProxyPath *)self configEpoch];
  v79 = v6;
  v72 = v6;
  v60 = v51;
  BYTE1(v71) = v55;
  LOBYTE(v71) = v56;
  sub_1000430B4(v130, proxyURL, proxyURL2, proxyKeyInfos, proxyKeyInfos2, proxyVersion, proxyVersion2, allowedNextHops, allowedNextHops2, supportsResumption, supportsResumption2, usesX25519, usesX255192, usesPQTLS, usesPQTLS2, v132, v131, v71, v133, allowFailOpen, geohashSharingEnabled, geohashOverride, dnsFilteringHintEnabled, preferredPathPatterns, v51, v72, fallbackSupportsUDPProxying, configEpoch);

  if (fallbackToQUIC)
  {
  }

  if (v91)
  {
  }

  if (v96)
  {
  }

  multiHopRegistered = [(NSPProxyPath *)self multiHopRegistered];
  multiHopRegistration2 = [(NSPProxyPath *)self multiHopRegistration];
  if (multiHopRegistration2)
  {
    v63 = multiHopRegistration2;
    isRegistered = [*(multiHopRegistration2 + 24) isRegistered];

    if (multiHopRegistered != isRegistered)
    {
LABEL_69:
      multiHopRegistration3 = [(NSPProxyPath *)self multiHopRegistration];
      v66 = multiHopRegistration3;
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
  }

  else if (multiHopRegistered)
  {
    goto LABEL_69;
  }
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
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:validCopy proxyPathList:listCopy ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPProxyPath *)self proxyPathWeight] supportsFallback:0];

  return v16;
}

- (NSPQUICProxyPathDelegate)quicProxyPathDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quicProxyPathDelegate);

  return WeakRetained;
}

@end