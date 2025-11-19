@interface NSPQuicProxyPath
- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4;
- (NSPQUICProxyPathDelegate)quicProxyPathDelegate;
- (void)resetMultiHopProxyAgent;
- (void)resetSingleHopProxyAgent;
- (void)setupMultiHopProxyRegistrations;
- (void)setupNetworkSpecificMultiHopProxyRegistrations:(id)a3;
- (void)setupSingleHopProxyRegistrations;
- (void)tearDownMultiHopRegistration;
@end

@implementation NSPQuicProxyPath

- (void)setupSingleHopProxyRegistrations
{
  v3 = [(NSPProxyPath *)self singleHopRegistration];

  if (!v3)
  {
    v4 = [NSPPrivacyProxySingleHopNetworkRegistration alloc];
    v5 = +[NSPPrivacyProxyAgentManager singleHopProxyAgentUUID];
    v6 = sub_100043E7C(&v4->super.super, v5, self);
    [(NSPProxyPath *)self setSingleHopRegistration:v6];

    v7 = [(NSPProxyPath *)self singleHopRegistration];

    if (!v7)
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
  v3 = [(NSPProxyPath *)self multiHopRegistration];

  if (!v3)
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      v4 = [(NSPProxyPath *)self nonDefaultAgentUUID];

      if (!v4)
      {
        v5 = +[NSUUID UUID];
        [(NSPProxyPath *)self setNonDefaultAgentUUID:v5];
      }

      v6 = [(NSPProxyPath *)self nonDefaultAgentUUID];
      v7 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      isa = [(NSPProxyPath *)self egressProxy];
      v9 = isa;
      if (isa)
      {
        isa = isa[3].isa;
      }

      v10 = [isa vendor];
      if (v7)
      {
        v7 = sub_1000420E0(&v7->super.super, v6, 0, 1, v10, self);
      }

      [(NSPProxyPath *)self setMultiHopRegistration:v7];
    }

    else
    {
      v11 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      v6 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      v9 = sub_100043094(&v11->super.super, v6, self);
      [(NSPProxyPath *)self setMultiHopRegistration:v9];
    }

    v12 = [(NSPProxyPath *)self multiHopRegistration];

    if (!v12)
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

- (void)setupNetworkSpecificMultiHopProxyRegistrations:(id)a3
{
  v4 = a3;
  v5 = [(NSPProxyPath *)self multiHopRegistration];

  if (!v5)
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      v6 = [(NSPProxyPath *)self nonDefaultAgentUUID];

      if (!v6)
      {
        v7 = +[NSUUID UUID];
        [(NSPProxyPath *)self setNonDefaultAgentUUID:v7];
      }

      v8 = [(NSPProxyPath *)self nonDefaultAgentUUID];
      v9 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      isa = [(NSPProxyPath *)self ingressProxy];
      v11 = isa;
      if (isa)
      {
        isa = isa[3].isa;
      }

      v12 = [isa vendor];
      if (v9)
      {
        v9 = sub_1000420E0(&v9->super.super, v8, v4, 1, v12, self);
      }

      [(NSPProxyPath *)self setMultiHopRegistration:v9];
    }

    else
    {
      v13 = [NSPPrivacyProxyMultiHopNetworkRegistration alloc];
      v8 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      v11 = sub_100043094(&v13->super.super, v8, self);
      [(NSPProxyPath *)self setMultiHopRegistration:v11];
    }

    v14 = [(NSPProxyPath *)self multiHopRegistration];

    if (!v14)
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

  v15 = [(NSPProxyPath *)self ingressProxy];

  if (!v15)
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

  v16 = [(NSPProxyPath *)self egressProxy];

  if (!v16)
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
    v18 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
    v147 = [v18 multiHopFallbackProxyConfigHash:self];
  }

  else
  {
    v17 = 0;
    v147 = 0;
  }

  v19 = [(NSPProxyPath *)self multiHopRegistration];
  v20 = [(NSPProxyPath *)self ingressProxy];
  v138 = v20;
  v141 = v19;
  if (v20)
  {
    v21 = *(v20 + 24);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v23 = [v22 proxyURL];
  v24 = [(NSPProxyPath *)self egressProxy];
  v136 = v24;
  if (v24)
  {
    v25 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = [v26 proxyURL];
  v28 = [(NSPProxyPath *)self ingressProxy];
  v133 = v28;
  if (v28)
  {
    v29 = *(v28 + 24);
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v131 = [v30 proxyKeyInfos];
  v31 = [(NSPProxyPath *)self egressProxy];
  v130 = v31;
  if (v31)
  {
    v32 = *(v31 + 24);
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v146 = [v33 proxyKeyInfos];
  v34 = [(NSPProxyPath *)self ingressProxy];
  v128 = v34;
  if (v34)
  {
    v35 = *(v34 + 24);
  }

  else
  {
    v35 = 0;
  }

  v127 = v35;
  v145 = [v127 proxyVersion];
  v36 = [(NSPProxyPath *)self egressProxy];
  v126 = v36;
  if (v36)
  {
    v37 = *(v36 + 24);
  }

  else
  {
    v37 = 0;
  }

  v125 = v37;
  v144 = [v125 proxyVersion];
  v38 = [(NSPProxyPath *)self ingressProxy];
  v124 = v38;
  if (v38)
  {
    v39 = *(v38 + 24);
  }

  else
  {
    v39 = 0;
  }

  v123 = v39;
  v143 = [v123 allowedNextHops];
  v40 = [(NSPProxyPath *)self egressProxy];
  v122 = v40;
  if (v40)
  {
    v41 = *(v40 + 24);
  }

  else
  {
    v41 = 0;
  }

  v121 = v41;
  v142 = [v121 allowedNextHops];
  v42 = [(NSPProxyPath *)self ingressProxy];
  v120 = v42;
  if (v42)
  {
    v43 = *(v42 + 24);
  }

  else
  {
    v43 = 0;
  }

  v119 = v43;
  v110 = [v119 supportsResumption];
  v44 = [(NSPProxyPath *)self egressProxy];
  v118 = v44;
  if (v44)
  {
    v45 = *(v44 + 24);
  }

  else
  {
    v45 = 0;
  }

  v117 = v45;
  v107 = [v117 supportsResumption];
  v46 = [(NSPProxyPath *)self ingressProxy];
  v116 = v46;
  if (v46)
  {
    v47 = *(v46 + 24);
  }

  else
  {
    v47 = 0;
  }

  v115 = v47;
  v105 = [v115 usesX25519];
  v48 = [(NSPProxyPath *)self egressProxy];
  v114 = v48;
  if (v48)
  {
    v49 = *(v48 + 24);
  }

  else
  {
    v49 = 0;
  }

  v113 = v49;
  v103 = [v113 usesX25519];
  v50 = [(NSPProxyPath *)self ingressProxy];
  v112 = v50;
  if (v50)
  {
    v51 = *(v50 + 24);
  }

  else
  {
    v51 = 0;
  }

  v111 = v51;
  v101 = [v111 usesPQTLS];
  v52 = [(NSPProxyPath *)self egressProxy];
  v109 = v52;
  if (v52)
  {
    v53 = *(v52 + 24);
  }

  else
  {
    v53 = 0;
  }

  v108 = v53;
  v99 = [v108 usesPQTLS];
  v106 = [(NSPProxyPath *)self ingressProxy];
  v104 = sub_100004F70(v106);
  if (v104)
  {
    v54 = [(NSPProxyPath *)self ingressProxy];
    v87 = v54;
    if (v54)
    {
      v55 = *(v54 + 48);
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

  v102 = [(NSPProxyPath *)self egressProxy];
  v100 = sub_100004F70(v102);
  if (v100)
  {
    v56 = [(NSPProxyPath *)self egressProxy];
    v86 = v56;
    if (v56)
    {
      v57 = *(v56 + 48);
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

  v58 = [(NSPProxyPath *)self ingressProxy];
  v97 = v58;
  if (v58)
  {
    v59 = *(v58 + 24);
  }

  else
  {
    v59 = 0;
  }

  v96 = v59;
  v60 = [v96 tokenChallenge];
  v61 = [(NSPProxyPath *)self egressProxy];
  v148 = v17;
  v132 = v30;
  v129 = v33;
  v95 = v61;
  if (v61)
  {
    v62 = *(v61 + 24);
  }

  else
  {
    v62 = 0;
  }

  v94 = v62;
  v63 = [v94 tokenChallenge];
  v90 = [(NSPProxyPath *)self allowFailOpen];
  v88 = [(NSPProxyPath *)self geohashSharingEnabled];
  v93 = [(NSPProxyPath *)self delegate];
  v92 = [v93 geohashOverride];
  v91 = [(NSPProxyPath *)self delegate];
  v64 = [v91 dnsFilteringHintEnabled];
  v65 = [(NSPProxyPath *)self ingressProxy];
  v66 = v65;
  v139 = v4;
  v137 = v22;
  v134 = v27;
  v135 = v26;
  if (v65)
  {
    v67 = *(v65 + 24);
  }

  else
  {
    v67 = 0;
  }

  v68 = v63 != 0;
  v89 = v63;
  v69 = v60;
  v70 = v60 != 0;
  v71 = v67;
  v72 = [v71 fallbackSupportsUDPProxying];
  v73 = [(NSPProxyPath *)self configEpoch];
  BYTE1(v85) = v68;
  LOBYTE(v85) = v70;
  sub_1000430B4(v141, v23, v134, v131, v146, v145, v144, v143, v142, v110, v107, v105, v103, v101, v99, v140, v98, v85, v148, v90, v88, v92, v64, 0, 0, v147, v72, v73);

  if (v100)
  {
  }

  v4 = v139;
  if (v104)
  {
  }

  v74 = [(NSPProxyPath *)self multiHopRegistered];
  v75 = [(NSPProxyPath *)self multiHopRegistration];
  if (v75)
  {
    v76 = v75;
    v77 = [*(v75 + 24) isRegistered];

    v78 = v148;
    if (v74 != v77)
    {
LABEL_67:
      v79 = [(NSPProxyPath *)self multiHopRegistration];
      v80 = v79;
      if (v79)
      {
        v81 = [*(v79 + 24) isRegistered];
      }

      else
      {
        v81 = 0;
      }

      [(NSPProxyPath *)self setMultiHopRegistered:v81];

      v82 = [(NSPProxyPath *)self delegate];
      [v82 multiHopAgentRegistered:self];
    }
  }

  else
  {
    v78 = v148;
    if (v74)
    {
      goto LABEL_67;
    }
  }

LABEL_71:
}

- (void)tearDownMultiHopRegistration
{
  v2 = [(NSPProxyPath *)self multiHopRegistration];
  sub_100042E8C(v2);
}

- (void)resetSingleHopProxyAgent
{
  v3 = [(NSPProxyPath *)self ingressProxy];

  if (v3)
  {
    if ([(NSPProxyPath *)self fallbackToQUIC])
    {
      return;
    }

    [(NSPQuicProxyPath *)self setupSingleHopProxyRegistrations];
    if ([(NSPProxyPath *)self allowFallback])
    {
      v68 = +[NSPPrivacyProxyAgentManager singleHopFallbackProxyAgentUUID];
      v4 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      v69 = [v4 singleHopFallbackProxyConfigHash:self];
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v5 = [(NSPProxyPath *)self singleHopRegistration];
    v6 = sub_100042F70(v5);

    v7 = [(NSPProxyPath *)self singleHopRegistration];
    v8 = [(NSPProxyPath *)self ingressProxy];
    v66 = v8;
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0;
    }

    v65 = v9;
    v10 = [v65 proxyURL];
    v11 = [(NSPProxyPath *)self ingressProxy];
    v64 = v11;
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
    }

    v63 = v12;
    v13 = [v63 proxyKeyInfos];
    v14 = [(NSPProxyPath *)self ingressProxy];
    v62 = v14;
    if (v14)
    {
      v15 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
    }

    v61 = v15;
    v16 = [v61 proxyVersion];
    v17 = [(NSPProxyPath *)self ingressProxy];
    v59 = v17;
    if (v17)
    {
      v18 = *(v17 + 24);
    }

    else
    {
      v18 = 0;
    }

    v58 = v18;
    v54 = [v58 supportsResumption];
    v19 = [(NSPProxyPath *)self ingressProxy];
    v67 = v6;
    v57 = v19;
    if (v19)
    {
      v20 = *(v19 + 24);
    }

    else
    {
      v20 = 0;
    }

    v56 = v20;
    v51 = [v56 usesX25519];
    v21 = [(NSPProxyPath *)self ingressProxy];
    v55 = v21;
    if (v21)
    {
      v22 = *(v21 + 24);
    }

    else
    {
      v22 = 0;
    }

    v53 = v22;
    v49 = [v53 usesPQTLS];
    v52 = [(NSPProxyPath *)self ingressProxy];
    v50 = sub_100004F70(v52);
    v60 = v16;
    if (v50)
    {
      v23 = [(NSPProxyPath *)self ingressProxy];
      v47 = v23;
      if (v23)
      {
        v24 = *(v23 + 48);
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
    v26 = [(NSPProxyPath *)self ingressProxy];
    v27 = v26;
    if (v26)
    {
      v28 = *(v26 + 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = [v29 tokenChallenge];
    v31 = [(NSPProxyPath *)self allowFailOpen];
    v32 = [(NSPProxyPath *)self configEpoch];
    LOBYTE(v46) = v31;
    LOBYTE(v45) = v30 != 0;
    sub_100043E9C(v7, v10, v13, v60, v54, v51, v49, v48, v45, v68, v46, v69, v32);

    if (v50)
    {
    }

    v33 = [(NSPProxyPath *)self singleHopRegistration];
    v34 = sub_100042F70(v33);

    v35 = [(NSPProxyPath *)self singleHopRegistered];
    v36 = [(NSPProxyPath *)self singleHopRegistration];
    v37 = v36;
    if (v36)
    {
      v38 = v67;
      if (v35 != [*(v36 + 24) isRegistered])
      {
LABEL_29:

        goto LABEL_42;
      }
    }

    else
    {
      v38 = v67;
      if (v35)
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
    v41 = [(NSPProxyPath *)self singleHopRegistration];
    v42 = v41;
    if (v41)
    {
      v43 = [*(v41 + 24) isRegistered];
    }

    else
    {
      v43 = 0;
    }

    [(NSPProxyPath *)self setSingleHopRegistered:v43];

    v44 = [(NSPProxyPath *)self delegate];
    [v44 singleHopAgentRegistered:self];

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
  v3 = [(NSPProxyPath *)self ingressProxy];

  if (!v3)
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

  v4 = [(NSPProxyPath *)self egressProxy];

  if (!v4)
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
      v5 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      [v5 multiHopQUICProxyConfigHash:self];
    }

    else
    {
      v133 = +[NSPPrivacyProxyAgentManager multiHopFallbackProxyAgentUUID];
      v5 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
      [v5 multiHopFallbackProxyConfigHash:self];
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
    v8 = [(NSPQuicProxyPath *)self quicProxyPathDelegate];
    v7 = [v8 alternatePreferredPathAgentUUIDs:self];
  }

  v9 = [(NSPProxyPath *)self multiHopRegistration];
  v10 = [(NSPProxyPath *)self ingressProxy];
  v129 = v10;
  if (v10)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
  }

  v128 = v11;
  v127 = [v128 proxyURL];
  v12 = [(NSPProxyPath *)self egressProxy];
  v126 = v12;
  if (v12)
  {
    v13 = *(v12 + 24);
  }

  else
  {
    v13 = 0;
  }

  v125 = v13;
  v124 = [v125 proxyURL];
  v14 = [(NSPProxyPath *)self ingressProxy];
  v123 = v14;
  if (v14)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  v122 = v15;
  v140 = [v122 proxyKeyInfos];
  v16 = [(NSPProxyPath *)self egressProxy];
  v121 = v16;
  if (v16)
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  v120 = v17;
  v139 = [v120 proxyKeyInfos];
  v18 = [(NSPProxyPath *)self ingressProxy];
  v119 = v18;
  if (v18)
  {
    v19 = *(v18 + 24);
  }

  else
  {
    v19 = 0;
  }

  v118 = v19;
  v138 = [v118 proxyVersion];
  v20 = [(NSPProxyPath *)self egressProxy];
  v117 = v20;
  if (v20)
  {
    v21 = *(v20 + 24);
  }

  else
  {
    v21 = 0;
  }

  v116 = v21;
  v137 = [v116 proxyVersion];
  v22 = [(NSPProxyPath *)self ingressProxy];
  v115 = v22;
  if (v22)
  {
    v23 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
  }

  v114 = v23;
  v136 = [v114 allowedNextHops];
  v24 = [(NSPProxyPath *)self egressProxy];
  v113 = v24;
  if (v24)
  {
    v25 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
  }

  v112 = v25;
  v135 = [v112 allowedNextHops];
  v26 = [(NSPProxyPath *)self ingressProxy];
  v111 = v26;
  if (v26)
  {
    v27 = *(v26 + 24);
  }

  else
  {
    v27 = 0;
  }

  v110 = v27;
  v100 = [v110 supportsResumption];
  v28 = [(NSPProxyPath *)self egressProxy];
  v109 = v28;
  if (v28)
  {
    v29 = *(v28 + 24);
  }

  else
  {
    v29 = 0;
  }

  v108 = v29;
  v97 = [v108 supportsResumption];
  v30 = [(NSPProxyPath *)self ingressProxy];
  v107 = v30;
  if (v30)
  {
    v31 = *(v30 + 24);
  }

  else
  {
    v31 = 0;
  }

  v106 = v31;
  v95 = [v106 usesX25519];
  v32 = [(NSPProxyPath *)self egressProxy];
  v105 = v32;
  if (v32)
  {
    v33 = *(v32 + 24);
  }

  else
  {
    v33 = 0;
  }

  v104 = v33;
  v94 = [v104 usesX25519];
  v34 = [(NSPProxyPath *)self ingressProxy];
  v103 = v34;
  if (v34)
  {
    v35 = *(v34 + 24);
  }

  else
  {
    v35 = 0;
  }

  v102 = v35;
  v92 = [v102 usesPQTLS];
  v36 = [(NSPProxyPath *)self egressProxy];
  v101 = v36;
  if (v36)
  {
    v37 = *(v36 + 24);
  }

  else
  {
    v37 = 0;
  }

  v99 = v37;
  v90 = [v99 usesPQTLS];
  v98 = [(NSPProxyPath *)self ingressProxy];
  v96 = sub_100004F70(v98);
  if (v96)
  {
    v38 = [(NSPProxyPath *)self ingressProxy];
    v76 = v38;
    if (v38)
    {
      v39 = *(v38 + 48);
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

  v93 = [(NSPProxyPath *)self egressProxy];
  v91 = sub_100004F70(v93);
  if (v91)
  {
    v40 = [(NSPProxyPath *)self egressProxy];
    v75 = v40;
    if (v40)
    {
      v41 = *(v40 + 48);
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

  v42 = [(NSPProxyPath *)self ingressProxy];
  v89 = v42;
  if (v42)
  {
    v43 = *(v42 + 24);
  }

  else
  {
    v43 = 0;
  }

  v88 = v43;
  v44 = [v88 tokenChallenge];
  v45 = [(NSPProxyPath *)self egressProxy];
  v86 = v45;
  if (v45)
  {
    v46 = *(v45 + 24);
  }

  else
  {
    v46 = 0;
  }

  v85 = v46;
  v47 = [v85 tokenChallenge];
  v81 = [(NSPProxyPath *)self allowFailOpen];
  v80 = [(NSPProxyPath *)self geohashSharingEnabled];
  v83 = [(NSPProxyPath *)self delegate];
  v134 = [v83 geohashOverride];
  v82 = [(NSPProxyPath *)self delegate];
  v77 = [v82 dnsFilteringHintEnabled];
  v78 = [(NSPProxyPath *)self fallbackToQUIC];
  v130 = v9;
  if (v78)
  {
    v48 = [(NSPProxyPath *)self egressProxy];
    v74 = v48;
    if (v48)
    {
      v49 = *(v48 + 24);
    }

    else
    {
      v49 = 0;
    }

    v73 = v49;
    v50 = [v73 preferredPathPatterns];
  }

  else
  {
    v50 = 0;
  }

  v51 = v7;
  v52 = [(NSPProxyPath *)self ingressProxy];
  v53 = v52;
  if (v52)
  {
    v54 = *(v52 + 24);
  }

  else
  {
    v54 = 0;
  }

  v84 = v47;
  v55 = v47 != 0;
  v87 = v44;
  v56 = v44 != 0;
  v57 = v54;
  v58 = [v57 fallbackSupportsUDPProxying];
  v59 = [(NSPProxyPath *)self configEpoch];
  v79 = v6;
  v72 = v6;
  v60 = v51;
  BYTE1(v71) = v55;
  LOBYTE(v71) = v56;
  sub_1000430B4(v130, v127, v124, v140, v139, v138, v137, v136, v135, v100, v97, v95, v94, v92, v90, v132, v131, v71, v133, v81, v80, v134, v77, v50, v51, v72, v58, v59);

  if (v78)
  {
  }

  if (v91)
  {
  }

  if (v96)
  {
  }

  v61 = [(NSPProxyPath *)self multiHopRegistered];
  v62 = [(NSPProxyPath *)self multiHopRegistration];
  if (v62)
  {
    v63 = v62;
    v64 = [*(v62 + 24) isRegistered];

    if (v61 != v64)
    {
LABEL_69:
      v65 = [(NSPProxyPath *)self multiHopRegistration];
      v66 = v65;
      if (v65)
      {
        v67 = [*(v65 + 24) isRegistered];
      }

      else
      {
        v67 = 0;
      }

      [(NSPProxyPath *)self setMultiHopRegistered:v67];

      v68 = [(NSPProxyPath *)self delegate];
      [v68 multiHopAgentRegistered:self];
    }
  }

  else if (v61)
  {
    goto LABEL_69;
  }
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
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:v7 proxyPathList:v6 ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPProxyPath *)self proxyPathWeight] supportsFallback:0];

  return v16;
}

- (NSPQUICProxyPathDelegate)quicProxyPathDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quicProxyPathDelegate);

  return WeakRetained;
}

@end