@interface NSPFallbackProxyPath
- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4;
- (void)resetMultiHopProxyAgent;
- (void)resetSingleHopProxyAgent;
- (void)setupMultiHopProxyRegistrations;
- (void)setupSingleHopProxyRegistrations;
@end

@implementation NSPFallbackProxyPath

- (void)setupSingleHopProxyRegistrations
{
  v3 = [(NSPProxyPath *)self singleHopRegistration];

  if (!v3)
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

    v7 = [(NSPProxyPath *)self singleHopRegistration];

    if (!v7)
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
  v3 = [(NSPProxyPath *)self multiHopRegistration];

  if (!v3)
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

    v7 = [(NSPProxyPath *)self multiHopRegistration];

    if (!v7)
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
  v3 = [(NSPProxyPath *)self ingressProxy];

  if (v3)
  {
    [(NSPFallbackProxyPath *)self setupSingleHopProxyRegistrations];
    v4 = [(NSPProxyPath *)self singleHopRegistration];
    v5 = [(NSPProxyPath *)self ingressProxy];
    v59 = v5;
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    v58 = v6;
    v7 = [v58 tcpProxyFqdn];
    v8 = [(NSPProxyPath *)self ingressProxy];
    v57 = v8;
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0;
    }

    v56 = v9;
    v10 = [v56 proxyKeyInfos];
    v11 = [(NSPProxyPath *)self ingressProxy];
    v54 = v11;
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
    }

    v53 = v12;
    v13 = [v53 proxyVersion];
    v14 = [(NSPProxyPath *)self ingressProxy];
    v52 = v14;
    if (v14)
    {
      v15 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
    }

    v51 = v15;
    v47 = [v51 supportsResumption];
    v16 = [(NSPProxyPath *)self ingressProxy];
    v50 = v16;
    if (v16)
    {
      v17 = *(v16 + 24);
    }

    else
    {
      v17 = 0;
    }

    v49 = v17;
    v44 = [v49 usesX25519];
    v18 = [(NSPProxyPath *)self ingressProxy];
    v48 = v18;
    if (v18)
    {
      v19 = *(v18 + 24);
    }

    else
    {
      v19 = 0;
    }

    v46 = v19;
    v42 = [v46 usesPQTLS];
    v45 = [(NSPProxyPath *)self ingressProxy];
    v43 = sub_100004F70(v45);
    v55 = v10;
    if (v43)
    {
      v20 = [(NSPProxyPath *)self ingressProxy];
      v40 = v20;
      if (v20)
      {
        v21 = *(v20 + 48);
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
    v23 = v7;
    v24 = [(NSPProxyPath *)self ingressProxy];
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 24);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = [v27 tokenChallenge];
    v29 = [(NSPProxyPath *)self allowFailOpen];
    v30 = [(NSPProxyPath *)self configEpoch];
    BYTE1(v39) = v29;
    LOBYTE(v39) = v28 != 0;
    sub_10004571C(v4, v23, v55, v13, v47, v44, v42, v41, v39, v30);

    if (v43)
    {
    }

    v31 = [(NSPProxyPath *)self singleHopRegistered];
    v32 = [(NSPProxyPath *)self singleHopRegistration];
    if (v32)
    {
      v33 = v32;
      v34 = [*(v32 + 24) isRegistered];

      if (v31 == v34)
      {
        return;
      }
    }

    else if ((v31 & 1) == 0)
    {
      return;
    }

    v35 = [(NSPProxyPath *)self singleHopRegistration];
    v36 = v35;
    if (v35)
    {
      v37 = [*(v35 + 24) isRegistered];
    }

    else
    {
      v37 = 0;
    }

    [(NSPProxyPath *)self setSingleHopRegistered:v37];

    v60 = [(NSPProxyPath *)self delegate];
    [v60 singleHopAgentRegistered:self];
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
  v3 = [(NSPProxyPath *)self ingressProxy];

  if (!v3)
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

  v4 = [(NSPProxyPath *)self egressProxy];

  if (!v4)
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
  v5 = [(NSPProxyPath *)self multiHopRegistration];
  v6 = [(NSPProxyPath *)self ingressProxy];
  v125 = v6;
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  v124 = v7;
  v8 = [v124 tcpProxyFqdn];
  v9 = [(NSPProxyPath *)self egressProxy];
  v123 = v9;
  if (v9)
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
  }

  v122 = v10;
  v11 = [v122 tcpProxyFqdn];
  v12 = [(NSPProxyPath *)self ingressProxy];
  v120 = v12;
  if (v12)
  {
    v13 = *(v12 + 24);
  }

  else
  {
    v13 = 0;
  }

  v119 = v13;
  v14 = [v119 proxyKeyInfos];
  v15 = [(NSPProxyPath *)self egressProxy];
  v117 = v15;
  if (v15)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  v116 = v16;
  v17 = [v116 proxyKeyInfos];
  v18 = [(NSPProxyPath *)self ingressProxy];
  v114 = v18;
  if (v18)
  {
    v19 = *(v18 + 24);
  }

  else
  {
    v19 = 0;
  }

  v113 = v19;
  v20 = [v113 proxyVersion];
  v21 = [(NSPProxyPath *)self egressProxy];
  v111 = v21;
  if (v21)
  {
    v22 = *(v21 + 24);
  }

  else
  {
    v22 = 0;
  }

  v110 = v22;
  v129 = [v110 proxyVersion];
  v23 = [(NSPProxyPath *)self ingressProxy];
  v109 = v23;
  if (v23)
  {
    v24 = *(v23 + 24);
  }

  else
  {
    v24 = 0;
  }

  v108 = v24;
  v128 = [v108 allowedNextHops];
  v25 = [(NSPProxyPath *)self egressProxy];
  v107 = v25;
  if (v25)
  {
    v26 = *(v25 + 24);
  }

  else
  {
    v26 = 0;
  }

  v106 = v26;
  v127 = [v106 allowedNextHops];
  v27 = [(NSPProxyPath *)self ingressProxy];
  v105 = v27;
  if (v27)
  {
    v28 = *(v27 + 24);
  }

  else
  {
    v28 = 0;
  }

  v104 = v28;
  v95 = [v104 supportsResumption];
  v29 = [(NSPProxyPath *)self egressProxy];
  v103 = v29;
  if (v29)
  {
    v30 = *(v29 + 24);
  }

  else
  {
    v30 = 0;
  }

  v102 = v30;
  v92 = [v102 supportsResumption];
  v31 = [(NSPProxyPath *)self ingressProxy];
  v101 = v31;
  if (v31)
  {
    v32 = *(v31 + 24);
  }

  else
  {
    v32 = 0;
  }

  v100 = v32;
  v90 = [v100 usesX25519];
  v33 = [(NSPProxyPath *)self egressProxy];
  v99 = v33;
  if (v33)
  {
    v34 = *(v33 + 24);
  }

  else
  {
    v34 = 0;
  }

  v98 = v34;
  v88 = [v98 usesX25519];
  v35 = [(NSPProxyPath *)self ingressProxy];
  v97 = v35;
  if (v35)
  {
    v36 = *(v35 + 24);
  }

  else
  {
    v36 = 0;
  }

  v96 = v36;
  v86 = [v96 usesPQTLS];
  v37 = [(NSPProxyPath *)self egressProxy];
  v94 = v37;
  if (v37)
  {
    v38 = *(v37 + 24);
  }

  else
  {
    v38 = 0;
  }

  v93 = v38;
  v84 = [v93 usesPQTLS];
  v91 = [(NSPProxyPath *)self ingressProxy];
  v89 = sub_100004F70(v91);
  if (v89)
  {
    v39 = [(NSPProxyPath *)self ingressProxy];
    v71 = v39;
    if (v39)
    {
      v40 = *(v39 + 48);
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

  v87 = [(NSPProxyPath *)self egressProxy];
  v85 = sub_100004F70(v87);
  if (v85)
  {
    v41 = [(NSPProxyPath *)self egressProxy];
    v70 = v41;
    if (v41)
    {
      v42 = *(v41 + 48);
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

  v44 = [(NSPProxyPath *)self ingressProxy];
  v82 = v44;
  if (v44)
  {
    v45 = *(v44 + 24);
  }

  else
  {
    v45 = 0;
  }

  v81 = v45;
  v46 = [v81 tokenChallenge];
  v47 = [(NSPProxyPath *)self egressProxy];
  v118 = v14;
  v83 = v43;
  v80 = v47;
  if (v47)
  {
    v48 = *(v47 + 24);
  }

  else
  {
    v48 = 0;
  }

  v112 = v20;
  v121 = v11;
  v79 = v48;
  v49 = [v79 tokenChallenge];
  v74 = [(NSPProxyPath *)self allowFailOpen];
  v73 = [(NSPProxyPath *)self geohashSharingEnabled];
  v78 = [(NSPProxyPath *)self delegate];
  v77 = [v78 geohashOverride];
  v76 = [(NSPProxyPath *)self delegate];
  v50 = [v76 dnsFilteringHintEnabled];
  v51 = [(NSPProxyPath *)self ingressProxy];
  v52 = v51;
  v115 = v17;
  v53 = v8;
  if (v51)
  {
    v54 = *(v51 + 24);
  }

  else
  {
    v54 = 0;
  }

  v55 = v49 != 0;
  v56 = v46 != 0;
  v75 = v46;
  v57 = v54;
  v58 = [v57 fallbackSupportsUDPProxying];
  [(NSPProxyPath *)self configEpoch];
  v59 = v72 = v49;
  HIBYTE(v69) = v55;
  LOBYTE(v69) = v56;
  sub_100044C74(v5, v53, v121, v118, v115, v112, v129, v128, v127, v95, v92, v90, v88, v86, v84, v126, v83, v69, v74, v73, v77, v50, v58, v59);

  if (v85)
  {
  }

  if (v89)
  {
  }

  v60 = [(NSPProxyPath *)self multiHopRegistered];
  v61 = [(NSPProxyPath *)self multiHopRegistration];
  if (v61)
  {
    v62 = v61;
    v63 = [*(v61 + 24) isRegistered];

    if (v60 == v63)
    {
      return;
    }
  }

  else if ((v60 & 1) == 0)
  {
    return;
  }

  v64 = [(NSPProxyPath *)self multiHopRegistration];
  v65 = v64;
  if (v64)
  {
    v66 = [*(v64 + 24) isRegistered];
  }

  else
  {
    v66 = 0;
  }

  [(NSPProxyPath *)self setMultiHopRegistered:v66];

  v130 = [(NSPProxyPath *)self delegate];
  [v130 multiHopAgentRegistered:self];
}

- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSPProxyPath *)self ingressProxy];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(NSPProxyPath *)self egressProxy];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:v7 proxyPathList:v6 ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPProxyPath *)self proxyPathWeight] supportsFallback:1];

  return v16;
}

@end