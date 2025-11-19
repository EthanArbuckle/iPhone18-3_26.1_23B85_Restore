void sub_100100060(uint64_t a1, void *a2)
{
  v28 = a2;
  if (a1 && [*(a1 + 160) state] == 8)
  {
    v4 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
    v5 = v4;
    if (!v4)
    {
      v7 = *(a1 + 144);
LABEL_59:

      sub_10002C0E8(v5);
      goto LABEL_60;
    }

    objc_storeStrong(v4 + 3, a2);
    if ((*(a1 + 58) & 1) == 0)
    {
      *(v5 + 8) = 1;
    }

    v6 = *(a1 + 144);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v8)
    {
LABEL_32:

      v27 = [v7 allObjects];
      v17 = [v27 sortedArrayUsingComparator:&stru_1001FA760];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            if ([v24 state] == 8 && (objc_msgSend(v24, "isPrimary") & 1) == 0)
            {
              v33 = 0;
              v25 = [v24 type];
              v26 = [v24 subtype];
              if (v26 > 103)
              {
                switch(v26)
                {
                  case 'y':
                    LOBYTE(v22) = 8;
LABEL_37:
                    v33 = v22;
                    v23 = [[NSData alloc] initWithBytes:&v33 length:1];
                    sub_10002AB38(v5, 6, v23);

                    continue;
                  case 'x':
                    LOBYTE(v22) = 1;
                    goto LABEL_37;
                  case 'h':
                    LOBYTE(v22) = 7;
                    goto LABEL_37;
                }
              }

              else
              {
                switch(v26)
                {
                  case 'e':
                    LOBYTE(v22) = 2;
                    goto LABEL_37;
                  case 'f':
                    LOBYTE(v22) = 5;
                    goto LABEL_37;
                  case 'g':
                    LOBYTE(v22) = 6;
                    goto LABEL_37;
                }
              }

              v22 = 0x40300020100uLL >> (8 * (v25 & 0x1F));
              if (v25 > 5)
              {
                LOBYTE(v22) = 0;
              }

              goto LABEL_37;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v19);
      }

      goto LABEL_59;
    }

    v9 = v8;
    v10 = *v35;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      if ([v12 state] != 255)
      {
        if ([v12 isPrimary])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }
    }

    v13 = [v12 type];
    v14 = [v12 subtype];
    if (v14 > 103)
    {
      switch(v14)
      {
        case 'y':
          LOBYTE(v15) = 8;
          goto LABEL_31;
        case 'x':
          LOBYTE(v15) = 1;
          goto LABEL_31;
        case 'h':
          LOBYTE(v15) = 7;
          goto LABEL_31;
      }
    }

    else
    {
      switch(v14)
      {
        case 'e':
          LOBYTE(v15) = 2;
          goto LABEL_31;
        case 'f':
          LOBYTE(v15) = 5;
          goto LABEL_31;
        case 'g':
          LOBYTE(v15) = 6;
LABEL_31:
          v33 = v15;
          v16 = [[NSData alloc] initWithBytes:&v33 length:1];
          sub_10002AB38(v5, 6, v16);

          goto LABEL_32;
      }
    }

    if (v13 > 5)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = 0x40300020100uLL >> (8 * (v13 & 0x1F));
    }

    goto LABEL_31;
  }

LABEL_60:
}

void sub_10010047C(uint64_t a1)
{
  if (a1 && sub_1000ED8A4(a1))
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {

      sub_1000ECF74(a1, 5u, 0);
    }

    else
    {
      v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v3 = v2;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      if (v2)
      {
        v4 = *(v2 + 144);
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
      v6 = [v5 allowedLinkSubtypes];

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            sub_1000ECF74(a1, 0, [*(*(&v23 + 1) + 8 * i) unsignedShortValue]);
          }

          v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v8);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      if (v3)
      {
        v11 = v3[18];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [v12 allowedLinkTypes];

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * j);
            if ([v18 unsignedShortValue] != 2)
            {
              sub_1000ECF74(a1, [v18 unsignedShortValue], 0);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }
}

void sub_10010073C(uint64_t a1, void *a2)
{
  v172 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  v9 = (a1 + 160);
  if (*(a1 + 160) != v172)
  {
    v152 = v172;
    sub_1000EC910(a1, 1012, @"%@ -> (%@)", v4, v5, v6, v7, v8, *(a1 + 160));
    v10 = *(a1 + 160);
    *(a1 + 41) = [v10 type];
    v11 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = *(a1 + 96);
      v15 = _NRCopyLogObjectForNRUUID();
      v156 = v10;
      v157 = v172;
      v154 = 1726;
      v150 = "";
      v152 = "[NRDDeviceConductor setPrimaryLink:]";
      _NRLogWithArgs();
    }

    objc_storeStrong((a1 + 160), a2);
    sub_100101814(a1);
    v16 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v17 = v16;
    if (*(a1 + 49))
    {
      goto LABEL_44;
    }

    v18 = v16 ? *(v16 + 144) : 0;
    v19 = v18;
    v20 = [v19 hasPoliciesForProxyCriteria];

    if (!v20)
    {
      goto LABEL_44;
    }

    v21 = v17 ? v17[18] : 0;
    v22 = v21;
    v23 = [v22 proxyCapability];

    if (v23 != 2)
    {
      goto LABEL_44;
    }

    if (v17)
    {
      v24 = v17[18];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [v25 proxyProviderCriteria];
    if ([v26 excludeLegacyClients])
    {

      goto LABEL_44;
    }

    v27 = v17 ? v17[18] : 0;
    v28 = v27;
    v29 = [v28 proxyProviderCriteria];
    v30 = [v29 excludeNonMatchingLegacyClients];

    if (v30)
    {
LABEL_44:

      v100 = *(a1 + 408);
      if (v100)
      {
        ++v100[6];
      }

      if (*v9)
      {
        if (*(a1 + 448))
        {
          if ([v10 state] != 255)
          {
            sub_10013CC88(*(a1 + 448));
          }
        }

        else
        {
          sub_100101D0C(a1);
        }
      }

      if (*(a1 + 46) == 1)
      {
        if (*v9)
        {
          if (*(a1 + 42) == 1 && sub_10013CA2C())
          {
            *(a1 + 42) = 0;
            v101 = 1036;
LABEL_58:
            sub_1000059A8(*(a1 + 96), v101, 0, 0);
          }
        }

        else
        {
          LODWORD(v180[0]) = 0x10000;
          if ((sysctlbyname("net.link.generic.system.companion_sndbuf_limit", 0, 0, v180, 4uLL) & 0x80000000) == 0)
          {
            *(a1 + 42) = 1;
            v101 = 1035;
            goto LABEL_58;
          }

          v148 = __error();
          v149 = *v148;
          if (strerror_r(*v148, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            v157 = v149;
            v158 = __strerrbuf;
            v154 = 921;
            v156 = LODWORD(v180[0]);
            v150 = "";
            v152 = "NRLimitCompanionLinkFlows";
            _NRLogWithArgs();
          }
        }
      }

      if (v10)
      {
        [v10 setIsPrimary:0];
      }

      v102 = *v9;
      if (*v9)
      {
        [v102 setIsPrimary:1];
        sub_100100060(a1, *(a1 + 160));
        [*(a1 + 160) virtualInterface];
        v102 = NEVirtualInterfaceCopyName();
      }

      v103 = *(a1 + 448);
      *(a1 + 448) = v102;

      v104 = [v10 type];
      if (v172 && v104 == 1)
      {
        v105 = *(a1 + 96);
        v106 = _NRCopyLogObjectForNRUUID();
        v107 = _NRLogIsLevelEnabled();

        if (v107)
        {
          v108 = *(a1 + 96);
          v109 = _NRCopyLogObjectForNRUUID();
          v154 = 1776;
          v150 = "";
          v152 = "[NRDDeviceConductor setPrimaryLink:]";
          _NRLogWithArgs();
        }

        [v10 suspend];
      }

      else if ([*v9 type] == 1 && objc_msgSend(*v9, "state") != 8)
      {
        v110 = *(a1 + 96);
        v111 = _NRCopyLogObjectForNRUUID();
        v112 = _NRLogIsLevelEnabled();

        if (v112)
        {
          v113 = *(a1 + 96);
          v114 = _NRCopyLogObjectForNRUUID();
          v155 = 1779;
          v151 = "";
          v153 = "[NRDDeviceConductor setPrimaryLink:]";
          _NRLogWithArgs();
        }

        [v10 resume];
      }

      if ([*v9 type] != 1)
      {
        sub_1000FA994(a1);
      }

      sub_1000FB114(a1, 0);
      [*(a1 + 680) removeAllObjects];
      sub_1000E8C70(a1, 1, 1);
      if (*(a1 + 728))
      {
        if (!*(a1 + 744))
        {
LABEL_77:
          v115 = [NSString alloc];
          v116 = [*(a1 + 96) UUIDString];
          v117 = [v115 initWithFormat:@"NRDDC-%@-%@", v116, @"Availability"];

          v118 = *(a1 + 744);
          *(a1 + 744) = v117;
        }
      }

      else
      {
        v133 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        if (sub_100169428(v133))
        {
          v134 = "CmpLnkAvailability";
        }

        else
        {
          if (v133)
          {
            v135 = v133[18];
          }

          else
          {
            v135 = 0;
          }

          v136 = v135;
          v137 = [v136 activeOperationalScope];

          if ((v137 & 1) == 0)
          {

LABEL_87:
            goto LABEL_88;
          }

          if (v133)
          {
            v138 = v133[18];
          }

          else
          {
            v138 = 0;
          }

          v139 = v138;
          v140 = [v139 allowedLinkSubtypes];
          v141 = [v140 containsObject:&off_100209CC8];

          if (v141)
          {
            v134 = "LowLatencyTetheringAvailability";
          }

          else
          {
            v134 = "TetheringAvailability";
          }
        }

        v142 = *(a1 + 136);
        v143 = nw_agent_create();
        v144 = *(a1 + 728);
        *(a1 + 728) = v143;

        v145 = *(a1 + 728);
        nw_agent_change_state();
        v146 = [NSString stringWithUTF8String:v134];
        v147 = *(a1 + 736);
        *(a1 + 736) = v146;

        if (!*(a1 + 744))
        {
          goto LABEL_77;
        }
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v119 = qword_100229408;
      sub_10015A238(v119, *(a1 + 744));

      if ([*(a1 + 160) state] == 8)
      {
        *__strerrbuf = 0;
        v182 = 0;
        v120 = *(a1 + 728);
        nw_agent_get_uuid();
        v121 = [[NSUUID alloc] initWithUUIDBytes:__strerrbuf];
        v122 = objc_alloc_init(NSMutableArray);
        v123 = +[NEPolicyCondition allInterfaces];
        [v122 addObject:v123];

        v124 = [NSString stringWithUTF8String:nrXPCEntitlementDeviceMonitor];
        v125 = [NEPolicyCondition customEntitlement:v124];
        [v122 addObject:v125];

        v126 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:*(a1 + 736)];
        [v122 addObject:v126];

        v127 = [NEPolicy alloc];
        v128 = [NEPolicyResult netAgentUUID:v121];
        v129 = [v127 initWithOrder:10 result:v128 conditions:v122];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v130 = qword_100229408;
        v131 = sub_100159E00(v130, *(a1 + 744), v129);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v132 = qword_100229408;
      sub_10015A52C(v132);

      goto LABEL_87;
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v31 = qword_100229408;
    sub_10015A238(v31, *(a1 + 328));

    v32 = [*(a1 + 160) state];
    if (v17)
    {
      v33 = v17[18];
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = [v34 hasCompanionDatapath];

    v36 = *v9;
    if (v35)
    {
      [v36 virtualInterface];
      v37 = NEVirtualInterfaceCopyName();
    }

    else
    {
      v37 = [v36 localInterfaceName];
    }

    v38 = v37;
    if (v32 != 8)
    {
LABEL_41:
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v99 = qword_100229408;
      sub_10015A52C(v99);

      goto LABEL_44;
    }

    v170 = v37;
    v39 = +[NEPolicyCondition allInterfaces];
    v40 = +[NEPolicyCondition usesModernNetworkAPI];
    v41 = +[NEPolicyCondition allowsUnsafeSocketAccess];
    [v41 setNegative:1];
    v42 = [NEPolicyResult skipWithOrder:620];
    v43 = [NEPolicy alloc];
    *__strerrbuf = v39;
    v182 = v40;
    v164 = v41;
    v165 = v40;
    v183 = v41;
    v44 = [NSArray arrayWithObjects:__strerrbuf count:3];
    v45 = [v43 initWithOrder:600 result:v42 conditions:v44];

    v46 = sub_1001599CC();
    v47 = sub_100159E00(v46, *(a1 + 328), v45);

    v48 = [NEPolicyCondition effectivePID:getpid()];
    v49 = [NEPolicy alloc];
    v169 = v39;
    v180[0] = v39;
    v180[1] = v48;
    v163 = v48;
    v50 = [NSArray arrayWithObjects:v180 count:2];
    v168 = v42;
    v51 = [v49 initWithOrder:600 result:v42 conditions:v50];

    v52 = sub_1001599CC();
    v171 = v51;
    v53 = sub_100159E00(v52, *(a1 + 328), v51);

    if (v17)
    {
      v54 = v17[18];
    }

    else
    {
      v54 = 0;
    }

    v55 = v170;
    v56 = v54;
    v57 = [v56 usesTLS];

    if (v57)
    {
      v58 = [*(a1 + 160) remoteOuterEndpoint];
      v59 = [v58 addressFamily];

      v60 = [*(a1 + 160) remoteOuterEndpoint];
      v61 = [v60 hostname];
      v62 = [NWAddressEndpoint endpointWithHostname:v61 port:@"0"];

      if (v59 == 30)
      {
        v63 = 128;
      }

      else
      {
        v63 = 32;
      }

      v166 = v62;
      v64 = [NEPolicyCondition flowRemoteAddress:v62 prefix:v63, v150, v152, v154, v156, v157];
      v178 = v64;
      v65 = +[NEPolicyCondition allInterfaces];
      v179 = v65;
      v66 = [NSArray arrayWithObjects:&v178 count:2];

      v67 = [[NEPolicy alloc] initWithOrder:600 result:v168 conditions:v66];
      v68 = sub_1001599CC();
      v69 = sub_100159E00(v68, *(a1 + 328), v67);
    }

    else
    {
      v70 = sub_1001689F8(v17);
      v166 = v70;
      if (v70)
      {
        v71 = [NEPolicyCondition flowRemoteAddress:v70 prefix:128];
        v178 = v71;
        v72 = +[NEPolicyCondition allInterfaces];
        v179 = v72;
        v73 = [NSArray arrayWithObjects:&v178 count:2];

        v74 = [[NEPolicy alloc] initWithOrder:600 result:v168 conditions:v73];
        v75 = sub_1001599CC();
        v76 = sub_100159E00(v75, *(a1 + 328), v74);

        v55 = v170;
        v171 = v74;
      }

      v64 = sub_100168A4C(v17);
      if (!v64)
      {
        goto LABEL_38;
      }

      v66 = [NEPolicyCondition flowRemoteAddress:v64 prefix:128];
      v177[0] = v66;
      v77 = +[NEPolicyCondition allInterfaces];
      v177[1] = v77;
      v68 = [NSArray arrayWithObjects:v177 count:2];

      v67 = [[NEPolicy alloc] initWithOrder:600 result:v168 conditions:v68];
      v78 = sub_1001599CC();
      v79 = sub_100159E00(v78, *(a1 + 328), v67);
    }

    v171 = v67;

    v55 = v170;
LABEL_38:

    v167 = [NEPolicyRouteRule routeRuleWithAction:7 forInterfaceName:v55];
    [v167 setControlUnit:0xFFFFFFFLL];
    v80 = [NEPolicyCondition flowIPProtocol:17];
    v160 = [NEPolicy alloc];
    v176 = v167;
    v81 = [NSArray arrayWithObjects:&v176 count:1];
    v82 = [NEPolicyResult routeRules:v81];
    v175[0] = v169;
    v175[1] = v80;
    v162 = v80;
    v83 = [NSArray arrayWithObjects:v175 count:2];
    v159 = [v160 initWithOrder:610 result:v82 conditions:v83];

    v84 = sub_1001599CC();
    v85 = sub_100159E00(v84, *(a1 + 328), v159);

    v86 = [NEPolicyCondition flowIPProtocol:6];
    v87 = [NEPolicy alloc];
    v174 = v167;
    v88 = [NSArray arrayWithObjects:&v174 count:1];
    v89 = [NEPolicyResult routeRules:v88];
    v173[0] = v169;
    v173[1] = v86;
    v161 = v86;
    v90 = [NSArray arrayWithObjects:v173 count:2];
    v91 = [v87 initWithOrder:610 result:v89 conditions:v90];

    v92 = sub_1001599CC();
    v93 = sub_100159E00(v92, *(a1 + 328), v91);

    v94 = *(a1 + 96);
    v95 = _NRCopyLogObjectForNRUUID();
    v96 = _NRLogIsLevelEnabled();

    if (v96)
    {
      v97 = *(a1 + 96);
      v98 = _NRCopyLogObjectForNRUUID();
      v154 = 5188;
      v156 = a1;
      v150 = "";
      v152 = "[NRDDeviceConductor updateFlowDivertPoliciesIfNeeded]";
      _NRLogWithArgs();
    }

    v38 = v170;
    goto LABEL_41;
  }

LABEL_88:
}

void sub_100101814(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!sub_100140C44(v2) || !*(a1 + 424))
  {
    goto LABEL_39;
  }

  if (v2)
  {
    v3 = v2[18];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 usesTLS];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 15;
  }

  v7 = *(a1 + 160);
  if (!v7)
  {
    goto LABEL_32;
  }

  if ([v7 type] != 1)
  {
    v11 = *(a1 + 160);
    if (v11)
    {
      if ([v11 type] == 2)
      {
        v12 = *(a1 + 96);
        v13 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if ((IsLevelEnabled & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v15 = *(a1 + 160);
      if (v15)
      {
        if ([v15 type] == 5)
        {
          v16 = *(a1 + 96);
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = _NRLogIsLevelEnabled();

          if ((v18 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (*(a1 + 160))
        {
LABEL_38:
          objc_initWeak(location, a1);
          v43 = *(a1 + 432);
          v44 = dispatch_time(0x8000000000000000, 1000000000 * v6);
          v45 = *(a1 + 136);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100101DE4;
          block[3] = &unk_1001FD0B0;
          v46 = v45;
          objc_copyWeak(v49, location);
          v49[1] = v43;
          dispatch_after(v44, v46, block);

          objc_destroyWeak(v49);
          objc_destroyWeak(location);
          goto LABEL_39;
        }
      }
    }

LABEL_32:
    if ((*(a1 + 28) & 1) == 0)
    {
      v37 = *(a1 + 41);
      if (v37 == 5 || v37 == 2)
      {
        v38 = *(a1 + 96);
        v39 = _NRCopyLogObjectForNRUUID();
        v40 = _NRLogIsLevelEnabled();

        if (v40)
        {
          v41 = *(a1 + 96);
          v42 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v6 = 0;
      }
    }

    goto LABEL_38;
  }

  v8 = *(a1 + 96);
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v19 = *(a1 + 96);
  v20 = _NRCopyLogObjectForNRUUID();
  v47 = *(a1 + 160);
  _NRLogWithArgs();

LABEL_20:
  v21 = *(a1 + 424);
  ++*(a1 + 432);
  if (v21)
  {
    dispatch_assert_queue_V2(*(v21 + 40));
    if (([v21 isActive] & 1) == 0)
    {
      [v21 setActive:1];
      [*(v21 + 48) updateNetworkAgent:v21];
      v22 = *(v21 + 32);
      v23 = *(v21 + 64);
      v24 = v22;
      v25 = [v21 agentUUID];
      v26 = [v25 UUIDString];
      sub_1000059A8(v24, 19005, v23, v26);
    }
  }

  if (*(a1 + 488) && (*(a1 + 46) & 1) == 0 && (*(a1 + 60) & 1) == 0)
  {
    v27 = NEVirtualInterfaceCopyName();
    v28 = [NEPolicy alloc];
    v29 = [NEPolicyResult scopeSocketToInterfaceName:v27];
    v30 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.cmpn-link-monitor"];
    location[0] = v30;
    v31 = +[NEPolicyCondition allInterfaces];
    location[1] = v31;
    v32 = [NSArray arrayWithObjects:location count:2];
    v33 = [v28 initWithOrder:50 result:v29 conditions:v32];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v34 = qword_100229408;
    v35 = sub_100159E00(v34, *(a1 + 560), v33);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v36 = qword_100229408;
    sub_10015A52C(v36);

    *(a1 + 60) = 1;
  }

LABEL_39:
}

void sub_100101D0C(uint64_t a1)
{
  if (a1 && *(a1 + 488))
  {
    v7 = NEVirtualInterfaceCopyName();
    v2 = *(a1 + 96);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 96);
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_10013CC88(v7);
  }
}

void sub_100101DE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v16 = WeakRetained;
    if (*(a1 + 40) == WeakRetained[54])
    {
      if (*(WeakRetained + 57) == 1)
      {
        sub_1000FAA10(WeakRetained, 1);
        sub_1000FAFFC(v16);
        WeakRetained = v16;
      }

      v3 = WeakRetained[53];
      if (v3)
      {
        dispatch_assert_queue_V2(*(v3 + 40));
        if ([v3 isActive])
        {
          [v3 setActive:0];
          [*(v3 + 48) updateNetworkAgent:v3];
          v4 = *(v3 + 32);
          v5 = *(v3 + 64);
          v6 = v4;
          v7 = [v3 agentUUID];
          v8 = [v7 UUIDString];
          sub_1000059A8(v6, 19004, v5, v8);
        }
      }

      sub_100101F8C(v16);
    }

    else
    {
      v9 = WeakRetained[12];
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v16;
      if (!IsLevelEnabled)
      {
        goto LABEL_13;
      }

      v12 = v16[12];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = *(a1 + 40);
      v15 = v16[54];
      _NRLogWithArgs();
    }

    WeakRetained = v16;
  }

LABEL_13:
}

void sub_100101F8C(uint64_t a1)
{
  if (*(a1 + 488) && *(a1 + 60) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 560));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    *(a1 + 60) = 0;
  }
}

void sub_100102068(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 28) & 1) == 0)
    {
      sub_10003F8D8(*(v1 + 224));
    }
  }

  else
  {
    sub_10003F8D8(0);
  }
}

void sub_100103388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001033B0(uint64_t a1)
{
  if (a1)
  {
    v4 = a1;
    if (sub_10010E200(a1))
    {
      v5 = sub_100163A30(NRDLocalDevice, *(v4 + 96));
      if (v5)
      {
        v3 = v5;
        sub_10010E27C(v4);
        v6 = *(v4 + 488);
        v2 = NEVirtualInterfaceCopyAddresses();
        v7 = *(v4 + 488);
        v122 = NEVirtualInterfaceCopyName();
        v8 = sub_100003490();
        dispatch_assert_queue_V2(v8);

        v9 = sub_1001679E0(v3, @"0");
        v10 = sub_100003490();
        dispatch_assert_queue_V2(v10);

        v1 = sub_1001672A0(v3, @"0");
        sub_10010E5CC(v4, *(v4 + 96));
        v11 = 0;
        if ((*(v3 + 49) & 0x10) == 0 || !v1)
        {
LABEL_16:
          if ((*(v3 + 49) & 0x20) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        if (v2)
        {
          v12 = [v1 hostname];
          v13 = [v2 containsObject:v12];

          if (v13)
          {
            v11 = 0;
            if ((*(v3 + 49) & 0x20) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_17;
          }
        }

        v14 = *(v4 + 488);
        v15 = [v1 hostname];
        NEVirtualInterfaceAddAddress();

        v16 = *(v4 + 488);
        NEVirtualInterfaceAddAddress();
        v17 = *(v3 + 144);
        LODWORD(v15) = [v17 hasCompanionDatapath];

        if (!v15)
        {
          v11 = 1;
          if ((*(v3 + 49) & 0x20) == 0)
          {
            goto LABEL_29;
          }

LABEL_17:
          if (!v9)
          {
            goto LABEL_29;
          }

          if (v2)
          {
            v25 = [v9 hostname];
            v26 = [v2 containsObject:v25];

            if (v26)
            {
              goto LABEL_29;
            }
          }

          v27 = *(v4 + 488);
          v28 = [v9 hostname];
          NEVirtualInterfaceAddAddress();

          v29 = *(v3 + 144);
          LODWORD(v28) = [v29 hasCompanionDatapath];

          if (!v28)
          {
            v11 = 1;
            goto LABEL_29;
          }

          v112 = v1;
          v116 = v2;
          v1 = v4;
          v4 = v9;
          v30 = sub_100003490();
          dispatch_assert_queue_V2(v30);

          v31 = sub_100167B9C(v3, @"0");
          v32 = [NEPolicyCondition remoteAddress:v31 prefix:128];

          if (v32)
          {
            v33 = [NEPolicy alloc];
            v34 = [NEPolicyResult tunnelIPToInterfaceName:v122 secondaryResultType:0];
            v134[0] = v32;
            v35 = +[NEPolicyCondition allInterfaces];
            v134[1] = v35;
            v36 = [NSArray arrayWithObjects:v134 count:2];
            v2 = [v33 initWithOrder:4000 result:v34 conditions:v36];

            if (v2)
            {
              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v9 = v4;
              v37 = qword_100229408;
              v4 = v1;
              v38 = sub_100159E00(v37, v1[38], v2);

              v11 = 1;
              v1 = v112;
              v2 = v116;
LABEL_29:
              v39 = *(v3 + 144);
              [v39 hasCompanionDatapath];

              if (*(v3 + 16) >= 0xCu && (*(v4 + 59) & 1) == 0)
              {
                v40 = *(v4 + 488);
                NEVirtualInterfaceSetMTU();
                *(v4 + 59) = 1;
                v41 = *(v4 + 96);
                v42 = _NRCopyLogObjectForNRUUID();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v44 = *(v4 + 96);
                  v45 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }
              }

              v46 = *(v3 + 144);
              if ([v46 usesTLS])
              {
                v47 = v9;
                v48 = *(v4 + 496);

                if (!v48)
                {
                  v113 = v1;
                  v117 = v2;
                  v109 = v47;
                  v54 = sub_100003490();
                  dispatch_assert_queue_V2(v54);

                  v110 = v3;
                  v55 = sub_1001677D0(v3, @"0");
                  v56 = sub_10010DC08(v4, v122, v55);
                  v57 = *(v4 + 496);
                  *(v4 + 496) = v56;

                  v133[0] = 0;
                  v133[1] = 0;
                  v58 = *(v4 + 496);
                  nw_agent_get_uuid();
                  v129 = 0u;
                  v130 = 0u;
                  v127 = 0u;
                  v128 = 0u;
                  v59 = v4;
                  v120 = sub_10010DCE4(v4, 0, 1);
                  v60 = [v120 countByEnumeratingWithState:&v127 objects:v132 count:16];
                  if (v60)
                  {
                    v61 = v60;
                    v62 = *v128;
                    do
                    {
                      for (i = 0; i != v61; i = i + 1)
                      {
                        if (*v128 != v62)
                        {
                          objc_enumerationMutation(v120);
                        }

                        v64 = *(*(&v127 + 1) + 8 * i);
                        v65 = [[NSUUID alloc] initWithUUIDBytes:v133];
                        v66 = [NEPolicy alloc];
                        v67 = [NEPolicyResult netAgentUUID:v65];
                        v68 = [v66 initWithOrder:3900 result:v67 conditions:v64];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v69 = qword_100229408;
                        v70 = sub_100159E00(v69, *(v59 + 304), v68);
                      }

                      v61 = [v120 countByEnumeratingWithState:&v127 objects:v132 count:16];
                    }

                    while (v61);
                  }

                  v9 = v109;
                  v3 = v110;
                  v4 = v59;
                  v1 = v113;
                  v2 = v117;
LABEL_51:
                  v71 = *(v3 + 144);
                  v72 = [v71 usesTLS];

                  if (v72)
                  {
                    v114 = v1;
                    v118 = v2;
                    v125 = 0u;
                    v126 = 0u;
                    v123 = 0u;
                    v124 = 0u;
                    v73 = v4;
                    v121 = sub_10010DFA8(v4, 0, 1);
                    v74 = [v121 countByEnumeratingWithState:&v123 objects:v131 count:16];
                    if (v74)
                    {
                      v75 = v74;
                      v76 = *v124;
                      do
                      {
                        for (j = 0; j != v75; j = j + 1)
                        {
                          if (*v124 != v76)
                          {
                            objc_enumerationMutation(v121);
                          }

                          v78 = *(*(&v123 + 1) + 8 * j);
                          v79 = [NEPolicy alloc];
                          v80 = [NEPolicyResult scopeSocketToInterfaceName:v122];
                          v81 = [v79 initWithOrder:4000 result:v80 conditions:v78];

                          objc_opt_self();
                          if (qword_100229410 != -1)
                          {
                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                          }

                          v82 = qword_100229408;
                          v83 = sub_100159E00(v82, *(v73 + 304), v81);
                        }

                        v75 = [v121 countByEnumeratingWithState:&v123 objects:v131 count:16];
                      }

                      while (v75);
                    }

                    v1 = v114;
                    v2 = v118;
                    v4 = v73;
                  }

                  v84 = *(v4 + 488);
                  NEVirtualInterfaceUpdateAdHocService();
                  objc_opt_self();
                  if (qword_100229410 == -1)
                  {
LABEL_64:
                    v85 = qword_100229408;
                    sub_10015A52C(v85);

                    v86 = *(v4 + 96);
                    v87 = _NRCopyLogObjectForNRUUID();
                    v88 = _NRLogIsLevelEnabled();

                    if (v88)
                    {
                      v89 = *(v4 + 96);
                      v53 = _NRCopyLogObjectForNRUUID();
                      goto LABEL_66;
                    }

                    goto LABEL_67;
                  }

LABEL_73:
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                  goto LABEL_64;
                }

                v9 = v47;
                if (v11)
                {
                  goto LABEL_51;
                }
              }

              else
              {

                if (v11)
                {
                  goto LABEL_51;
                }
              }

              v49 = *(v4 + 96);
              v50 = _NRCopyLogObjectForNRUUID();
              v51 = _NRLogIsLevelEnabled();

              if (v51)
              {
                v52 = *(v4 + 96);
                v53 = _NRCopyLogObjectForNRUUID();
LABEL_66:
                _NRLogWithArgs();
              }

LABEL_67:

              return;
            }

            v105 = sub_1000E83DC();
            v106 = _NRLogIsLevelEnabled();

            if (v106)
            {
              v107 = sub_1000E83DC();
              _NRLogWithArgs();
            }

            v9 = _os_log_pack_size();
            __chkstk_darwin();
            v108 = *__error();
LABEL_72:
            v94 = _os_log_pack_fill();
            *v94 = 136446210;
            *(v94 + 4) = "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]";
            sub_1000E83DC();
            _NRLogAbortWithPack();
            goto LABEL_73;
          }

          v98 = sub_1000E83DC();
          v99 = _NRLogIsLevelEnabled();

          if (v99)
          {
            v100 = sub_1000E83DC();
            _NRLogWithArgs();
          }

LABEL_79:
          v9 = _os_log_pack_size();
          __chkstk_darwin();
          v101 = *__error();
          goto LABEL_72;
        }

        v111 = v1;
        v115 = v2;
        v119 = v4;
        v4 = v9;
        v18 = sub_100003490();
        dispatch_assert_queue_V2(v18);

        v2 = sub_1001677D0(v3, @"0");
        v19 = [NEPolicyCondition remoteAddress:v2 prefix:128];

        if (v19)
        {
          v20 = [NEPolicy alloc];
          v1 = [NEPolicyResult tunnelIPToInterfaceName:v122 secondaryResultType:0];
          v135[0] = v19;
          v21 = +[NEPolicyCondition allInterfaces];
          v135[1] = v21;
          v22 = [NSArray arrayWithObjects:v135 count:2];
          v2 = [v20 initWithOrder:4000 result:v1 conditions:v22];

          if (!v2)
          {
            v102 = sub_1000E83DC();
            v103 = _NRLogIsLevelEnabled();

            if (v103)
            {
              v104 = sub_1000E83DC();
              _NRLogWithArgs();
            }

            goto LABEL_79;
          }

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v4 = v119;
          v1 = v111;
          v23 = qword_100229408;
          v24 = sub_100159E00(v23, *(v119 + 304), v2);

          v11 = 1;
          v2 = v115;
          goto LABEL_16;
        }

        v95 = sub_1000E83DC();
        v96 = _NRLogIsLevelEnabled();

        if (v96)
        {
          v97 = sub_1000E83DC();
          _NRLogWithArgs();
        }
      }

      else
      {
        v90 = sub_1000E83DC();
        v91 = _NRLogIsLevelEnabled();

        if (v91)
        {
          v92 = sub_1000E83DC();
          _NRLogWithArgs();
        }
      }

      v9 = _os_log_pack_size();
      __chkstk_darwin();
      v93 = *__error();
      goto LABEL_72;
    }
  }
}

void sub_100104190(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (v2)
  {
    v25 = v2;
    v3 = *(v2 + 144);
    if (v3 && (*(v25 + 49) & 0x10) != 0 && *(a1 + 46) == 1)
    {
      v4 = *(a1 + 480);

      if (v4)
      {
LABEL_14:

        return;
      }

      v5 = nw_parameters_create();
      v6 = *(v25 + 144);
      v7 = [v6 proxyProviderRequiresWiFi];

      if (v7)
      {
        nw_parameters_set_required_interface_type(v5, nw_interface_type_wifi);
      }

      nw_parameters_set_account_id();
      v8 = [NRCompanionProxyConfigAgent alloc];
      v9 = *(a1 + 136);
      v10 = *(a1 + 96);
      v11 = v9;
      v12 = sub_100071B84(&v8->super.isa, v11, v5, v10);
      v13 = *(a1 + 480);
      *(a1 + 480) = v12;

      if ((sub_100071E20(*(a1 + 480)) & 1) == 0)
      {
        v14 = *(a1 + 480);
        *(a1 + 480) = 0;

        v15 = *(a1 + 96);
        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = *(a1 + 96);
          v19 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }

      v3 = v5;
    }

    goto LABEL_14;
  }

  v20 = sub_1000E83DC();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v22 = sub_1000E83DC();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v23 = *__error();
  v24 = _os_log_pack_fill();
  *v24 = 136446210;
  *(v24 + 4) = "[NRDDeviceConductor setupCompanionProxyConfigAgentIfApplicable]";
  sub_1000E83DC();
  _NRLogAbortWithPack();
}

void sub_100104434(void **a1)
{
  if (!a1)
  {
    return;
  }

  v75 = sub_100163A30(NRDLocalDevice, a1[12]);
  if (sub_100140C44(v75))
  {
    v2 = a1[53];
    if (!v2)
    {
      goto LABEL_6;
    }

    v3 = a1[53];
    if (!v3)
    {

      v5 = a1[53];
      if (!v5)
      {
LABEL_8:
        v7 = v75;
        if (!v75)
        {
          goto LABEL_49;
        }

        if (*(v75 + 12))
        {
          v8 = 0;
        }

        else
        {
          v76 = 0uLL;
          sub_100167D5C(v75, &v76);
          objc_opt_self();
          v7 = v75;
          if (WORD6(v76))
          {
            v9 = WORD5(v76) == 0;
          }

          else
          {
            v9 = 1;
          }

          v8 = !v9;
          if ((*(v75 + 12) & 1) == 0)
          {
            v76 = 0uLL;
            sub_1001727AC(v75, &v76);
            objc_opt_self();
            if (WORD6(v76))
            {
              v12 = WORD5(v76) == 0;
            }

            else
            {
              v12 = 1;
            }

            v10 = !v12;
            v11 = v75[6];
            if ((v11 & 1) == 0)
            {
LABEL_49:
              v65 = a1[12];
              v66 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v68 = a1[12];
                v69 = _NRCopyLogObjectForNRUUID();
                if (v75)
                {
                  v70 = *(v75 + 12);
                }

                _NRLogWithArgs();
              }

              goto LABEL_53;
            }

LABEL_27:
            if (((v11 >> 1) & 1 & v8 & v10) != 0)
            {
              v13 = [NRCompanionLinkViabilityAgent alloc];
              v14 = a1[12];
              v15 = a1[17];
              v16 = v14;
              v17 = sub_10007A8DC(&v13->super.isa, v16, v15);
              v18 = a1[53];
              a1[53] = v17;

              v19 = a1[53];
              if (v19)
              {
                dispatch_assert_queue_V2(*(v19 + 5));
                if ((*(v19 + 14) & 1) == 0)
                {
                  v20 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                  v21 = *(v19 + 6);
                  *(v19 + 6) = v20;

                  v22 = *(v19 + 6);
                  if (v22)
                  {
                    if ([v22 registerNetworkAgent:v19])
                    {
                      v23 = [v19 agentUUID];
                      v24 = [NEPolicyResult netAgentUUID:v23];

                      v25 = sub_100163A30(NRDLocalDevice, *(v19 + 4));
                      v26 = sub_1001677D0(v25, @"62742");
                      v27 = [NEPolicyCondition flowRemoteAddress:v26 prefix:128];

                      v28 = sub_100167B9C(v25, @"62742");
                      v29 = [NEPolicyCondition flowRemoteAddress:v28 prefix:128];

                      v30 = [NEPolicy alloc];
                      v73 = v27;
                      v79[0] = v27;
                      v31 = +[NEPolicyCondition allInterfaces];
                      v79[1] = v31;
                      v32 = [NSArray arrayWithObjects:v79 count:2];
                      v74 = v24;
                      v33 = [v30 initWithOrder:10 result:v24 conditions:v32];

                      objc_opt_self();
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v34 = qword_100229408;
                      v72 = v33;
                      v35 = sub_100159E00(v34, *(v19 + 7), v33);

                      v36 = [NEPolicy alloc];
                      v78[0] = v29;
                      v37 = +[NEPolicyCondition allInterfaces];
                      v78[1] = v37;
                      v38 = [NSArray arrayWithObjects:v78 count:2];
                      v39 = [v36 initWithOrder:10 result:v74 conditions:v38];

                      objc_opt_self();
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v40 = qword_100229408;
                      v41 = sub_100159E00(v40, *(v19 + 7), v39);

                      if (v25)
                      {
                        v42 = v25[18];
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = v42;
                      v44 = [v43 usesTLS];

                      if (v44)
                      {
                        v71 = v29;
                        v45 = [NEPolicy alloc];
                        v46 = [NEPolicyCondition flowIPProtocol:17];
                        *&v76 = v46;
                        v47 = +[NEPolicyCondition isSystemProxyConnection];
                        *(&v76 + 1) = v47;
                        v48 = +[NEPolicyCondition allInterfaces];
                        v77 = v48;
                        v49 = [NSArray arrayWithObjects:&v76 count:3];
                        v50 = [v45 initWithOrder:10 result:v74 conditions:v49];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v51 = qword_100229408;
                        v52 = sub_100159E00(v51, *(v19 + 7), v50);

                        v29 = v71;
                      }

                      objc_opt_self();
                      v53 = v29;
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v54 = qword_100229408;
                      sub_10015A52C(v54);

                      *(v19 + 14) = 1;
                      v55 = *(v19 + 4);
                      v56 = *(v19 + 8);
                      v57 = v55;
                      v58 = [v19 agentUUID];
                      v59 = [v58 UUIDString];
                      sub_1000059A8(v57, 19002, v56, v59);
                    }

                    else
                    {
                      v60 = *(v19 + 4);
                      v61 = _NRCopyLogObjectForNRUUID();
                      v62 = _NRLogIsLevelEnabled();

                      if (v62)
                      {
                        v63 = *(v19 + 4);
                        v64 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs();
                      }
                    }
                  }
                }
              }

              sub_100101814(a1);
              goto LABEL_53;
            }

            goto LABEL_49;
          }
        }

        v10 = 0;
        v11 = v7[6];
        if ((v11 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_27;
      }

LABEL_7:
      sub_10007AE28(v5);
      v6 = a1[53];
      a1[53] = 0;

      goto LABEL_8;
    }

    v4 = v3[14];

    if ((v4 & 1) == 0)
    {
LABEL_6:
      v5 = a1[53];
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_53:
}

void sub_100104BB4(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    if (*(v1 + 49))
    {
      goto LABEL_17;
    }

    v214 = v2;
    if (v2)
    {
      v3 = v2[18];
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = [v4 hasPoliciesForProxyCriteria];

    if ((v5 & 1) == 0)
    {
      sub_1001070B0(v1);
      goto LABEL_16;
    }

    v6 = [*(v1 + 160) state] == 8;
    v2 = v214;
    if (!v6)
    {
      goto LABEL_17;
    }

    if (!*(v1 + 336))
    {
      v7 = @"proxyCriteria";
      v8 = [NSString alloc];
      v9 = [*(v1 + 96) UUIDString];
      v10 = [v8 initWithFormat:@"NRDDC-%@-%@", v9, @"proxyCriteria"];

      v11 = *(v1 + 336);
      *(v1 + 336) = v10;

      v2 = v214;
    }

    if (v2)
    {
      v12 = v2[18];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 proxyProviderCriteria];
    v15 = [v14 hasProxyCriteriaAssigningTokens];

    v16 = *(v1 + 696);
    if (v15)
    {
      if (v16)
      {
        goto LABEL_21;
      }

      v17 = objc_alloc_init(NSMutableDictionary);
      v16 = *(v1 + 696);
    }

    else
    {
      v17 = 0;
    }

    *(v1 + 696) = v17;

LABEL_21:
    v18 = v214;
    if (v214)
    {
      v18 = v214[18];
    }

    v19 = v18;
    if ([v19 proxyCapability] == 1)
    {
      v20 = v214;
      if (v214)
      {
        v20 = v214[18];
      }

      v21 = v20;
      v22 = [v21 proxyProviderCriteria];
      v23 = [v22 forwardNonMatchingTraffic];

      v2 = v214;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v2 = v214;
    }

    if (v2)
    {
      v24 = v2[18];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [v25 proxyCapability];

    v2 = v214;
    if (v26 == 2)
    {
      v213 = [*(v1 + 160) proxyAgentUUID];
      if (!v213)
      {
        v32 = sub_1000E83DC();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v2 = v214;
        if (!IsLevelEnabled)
        {
          goto LABEL_17;
        }

        v34 = sub_1000E83DC();
        _NRLogWithArgs();

        goto LABEL_16;
      }

      v27 = v214;
      if (v214)
      {
        v27 = v214[18];
      }

      v28 = v27;
      v29 = [v28 hasCompanionDatapath];

      v30 = *(v1 + 160);
      if (v29)
      {
        [v30 virtualInterface];
        v31 = NEVirtualInterfaceCopyName();
      }

      else
      {
        v31 = [v30 localInterfaceName];
      }

      if (v31)
      {
        v212 = v31;
        v35 = sub_1001599CC();
        sub_10015A238(v35, *(v1 + 336));

        v218 = [NEPolicyResult netAgentUUID:v213];
        if (v214)
        {
          v36 = v214[18];
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        v38 = [v37 proxyProviderCriteria];
        v39 = [v38 proxyUsageRules];

        if (v214)
        {
          v40 = v214[18];
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        v42 = [v41 proxyProviderCriteria];
        v43 = &dispatch_group_enter_ptr;
        v240 = v1;
        if ([v42 excludeLegacyClients])
        {
        }

        else
        {
          v47 = v214;
          if (v214)
          {
            v47 = v214[18];
          }

          v48 = v47;
          v49 = [v48 proxyProviderCriteria];
          v50 = [v49 excludeNonMatchingLegacyClients];

          if (!v50)
          {
            v228 = 301;
LABEL_60:
            if (_NRIsAppleInternal())
            {
              v71 = sub_1000B7248(0, @"TetheringBundleIDs");
              objc_opt_class();
              v224 = 0;
              if (objc_opt_isKindOfClass())
              {
                v265 = 0u;
                v266 = 0u;
                v263 = 0u;
                v264 = 0u;
                v72 = v71;
                v73 = [v72 countByEnumeratingWithState:&v263 objects:v282 count:16];
                if (v73)
                {
                  v74 = v73;
                  v224 = 0;
                  v75 = *v264;
                  do
                  {
                    for (i = 0; i != v74; i = i + 1)
                    {
                      if (*v264 != v75)
                      {
                        objc_enumerationMutation(v72);
                      }

                      v77 = sub_10013A6D4(*(*(&v263 + 1) + 8 * i));
                      if (!v224)
                      {
                        v224 = objc_alloc_init(NSMutableArray);
                      }

                      if ([v77 count])
                      {
                        [v224 addObjectsFromArray:v77];
                      }
                    }

                    v74 = [v72 countByEnumeratingWithState:&v263 objects:v282 count:16];
                  }

                  while (v74);
                }

                else
                {
                  v224 = 0;
                }

                v43 = &dispatch_group_enter_ptr;
              }
            }

            else
            {
              v224 = 0;
            }

            v215 = objc_alloc_init(NSMutableSet);
            v259 = 0u;
            v260 = 0u;
            v261 = 0u;
            v262 = 0u;
            obj = v39;
            v220 = [obj countByEnumeratingWithState:&v259 objects:v281 count:16];
            if (v220)
            {
              v217 = 0;
              v230 = 0;
              v219 = *v260;
              while (1)
              {
                for (j = 0; j != v220; j = v79 + 1)
                {
                  if (*v260 != v219)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v81 = *(*(&v259 + 1) + 8 * j);
                  v82 = 0;
                  v225 = j;
                  if (_NRIsAppleInternal() && v224)
                  {
                    v82 = objc_alloc_init(NSMutableArray);
                    [v82 addObjectsFromArray:v224];
                  }

                  v83 = [v81 entitlements];
                  v84 = [v83 count];

                  v231 = v81;
                  if (v84)
                  {
                    v85 = [v81 entitlements];
                    v86 = [LSApplicationRecord enumeratorWithOptions:0];
                    v257[0] = _NSConcreteStackBlock;
                    v257[1] = 3221225472;
                    v257[2] = sub_1001071BC;
                    v257[3] = &unk_1001FB9D8;
                    v226 = v85;
                    v258 = v226;
                    [v86 setFilter:v257];
                    v234 = v86;
                    v237 = [v81 copyExcludedBundleIdentifiers];
                    v87 = [v86 nextObject];
                    if (v87)
                    {
                      v88 = v87;
                      do
                      {
                        v255 = 0u;
                        v256 = 0u;
                        v253 = 0u;
                        v254 = 0u;
                        v90 = [v88 machOUUIDs];
                        v91 = [v90 countByEnumeratingWithState:&v253 objects:v280 count:16];
                        if (v91)
                        {
                          v92 = v91;
                          v93 = *v254;
LABEL_95:
                          v94 = 0;
                          while (1)
                          {
                            if (*v254 != v93)
                            {
                              objc_enumerationMutation(v90);
                            }

                            v95 = *(*(&v253 + 1) + 8 * v94);
                            if (!v82)
                            {
                              v82 = objc_alloc_init(NSMutableArray);
                            }

                            v96 = [v88 bundleIdentifier];
                            if (v96)
                            {
                              v97 = v96;
                              v98 = [v88 bundleIdentifier];
                              v99 = [v237 containsObject:v98];

                              if (v99)
                              {
                                break;
                              }
                            }

                            [v82 addObject:v95];
                            if (v92 == ++v94)
                            {
                              v92 = [v90 countByEnumeratingWithState:&v253 objects:v280 count:16];
                              v1 = v240;
                              if (!v92)
                              {
                                goto LABEL_91;
                              }

                              goto LABEL_95;
                            }
                          }

                          v1 = v240;
                          v100 = *(v240 + 96);
                          v101 = _NRCopyLogObjectForNRUUID();
                          v102 = _NRLogIsLevelEnabled();

                          if (v102)
                          {
                            v103 = *(v240 + 96);
                            v104 = _NRCopyLogObjectForNRUUID();
                            [v88 bundleIdentifier];
                            v211 = v210 = 4843;
                            v207 = "";
                            v209 = "[NRDDeviceConductor updateProxyCriteriaPoliciesIfNeeded]";
                            _NRLogWithArgs();
                          }
                        }

LABEL_91:

                        v89 = [v234 nextObject];

                        v88 = v89;
                      }

                      while (v89);
                    }

                    v105 = [v82 count];
                    if (v105)
                    {
                      v106 = v82;
                      [v215 addObjectsFromArray:v82];
                      v43 = &dispatch_group_enter_ptr;
                      v81 = v231;
                      v107 = v226;
                    }

                    else
                    {
                      v106 = v82;
                      v108 = *(v1 + 96);
                      v109 = _NRCopyLogObjectForNRUUID();
                      v110 = _NRLogIsLevelEnabled();

                      v43 = &dispatch_group_enter_ptr;
                      v81 = v231;
                      v107 = v226;
                      if (v110)
                      {
                        v111 = *(v1 + 96);
                        v112 = _NRCopyLogObjectForNRUUID();
                        v210 = 4852;
                        v211 = v226;
                        v207 = "";
                        v209 = "[NRDDeviceConductor updateProxyCriteriaPoliciesIfNeeded]";
                        _NRLogWithArgs();
                      }
                    }

                    v217 = 1;
                    if (!v105)
                    {
                      v79 = v225;
                      v80 = v106;
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v106 = v82;
                  }

                  v113 = objc_alloc_init(NSMutableArray);
                  v114 = [v43[327] trafficClassStart:objc_msgSend(v81 end:{"trafficClass"), objc_msgSend(v81, "trafficClass")}];
                  [v113 addObject:v114];

                  if ([v81 transportProtocol])
                  {
                    v115 = [v43[327] flowIPProtocol:{objc_msgSend(v81, "transportProtocol")}];
                    [v113 addObject:v115];
                  }

                  v116 = [v81 domain];

                  if (v116)
                  {
                    v117 = v43[327];
                    v118 = [v81 domain];
                    v119 = [v117 domain:v118];

                    [v113 addObject:v119];
                  }

                  v120 = (v228 + 3);
                  v238 = v228 + 5;
                  v227 = v228 + 7;
                  if ([v113 count])
                  {
                    v121 = [v43[327] allInterfaces];
                    [v113 addObject:v121];

                    v122 = [v231 entitlements];
                    v123 = [v122 count];

                    if (v123)
                    {
                      v124 = v120;
                    }

                    else
                    {
                      v124 = v238;
                    }

                    v125 = [NEPolicy alloc];
                    v126 = [NEPolicyResult skipWithOrder:v124];
                    v127 = [v125 initWithOrder:(v228 + 1) result:v126 conditions:v113];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v128 = qword_100229408;
                    v129 = sub_100159E00(v128, *(v1 + 336), v127);

                    v130 = [NEPolicy alloc];
                    v131 = [NEPolicyResult skipWithOrder:v227];
                    v132 = [v43[327] allInterfaces];
                    v279 = v132;
                    v133 = [NSArray arrayWithObjects:&v279 count:1];
                    v134 = [v130 initWithOrder:(v228 + 2) result:v131 conditions:v133];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v135 = qword_100229408;
                    v1 = v240;
                    v136 = sub_100159E00(v135, *(v240 + 336), v134);
                  }

                  v223 = v113;
                  v251 = 0u;
                  v252 = 0u;
                  v249 = 0u;
                  v250 = 0u;
                  v235 = v106;
                  v137 = [v235 countByEnumeratingWithState:&v249 objects:v278 count:16];
                  if (v137)
                  {
                    v138 = v137;
                    v139 = *v250;
                    do
                    {
                      for (k = 0; k != v138; k = k + 1)
                      {
                        if (*v250 != v139)
                        {
                          objc_enumerationMutation(v235);
                        }

                        v141 = [NEPolicyCondition effectiveApplication:*(*(&v249 + 1) + 8 * k)];
                        v142 = [NEPolicy alloc];
                        v143 = [NEPolicyResult skipWithOrder:v238];
                        v144 = +[NEPolicyCondition allInterfaces];
                        v277[0] = v144;
                        v277[1] = v141;
                        v145 = [NSArray arrayWithObjects:v277 count:2];
                        v146 = [v142 initWithOrder:v120 result:v143 conditions:v145];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v1 = v240;
                        v147 = qword_100229408;
                        v148 = sub_100159E00(v147, *(v240 + 336), v146);
                      }

                      v138 = [v235 countByEnumeratingWithState:&v249 objects:v278 count:16];
                    }

                    while (v138);
                  }

                  v149 = [NEPolicy alloc];
                  v150 = [NEPolicyResult skipWithOrder:v227];
                  v151 = +[NEPolicyCondition allInterfaces];
                  v276 = v151;
                  v152 = [NSArray arrayWithObjects:&v276 count:1];
                  v153 = [v149 initWithOrder:(v228 + 4) result:v150 conditions:v152];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v154 = qword_100229408;
                  v155 = sub_100159E00(v154, *(v1 + 336), v153);

                  v156 = [NEPolicy alloc];
                  v157 = +[NEPolicyCondition allInterfaces];
                  v275 = v157;
                  v158 = [NSArray arrayWithObjects:&v275 count:1];
                  v159 = [v156 initWithOrder:v238 result:v218 conditions:v158];

                  objc_opt_self();
                  v222 = v153;
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v160 = qword_100229408;
                  v221 = v159;
                  v161 = sub_100159E00(v160, *(v1 + 336), v159);

                  v162 = [v231 copyMatchTokens];
                  v245 = 0u;
                  v246 = 0u;
                  v247 = 0u;
                  v248 = 0u;
                  v232 = v162;
                  v163 = [v232 countByEnumeratingWithState:&v245 objects:v274 count:16];
                  if (v163)
                  {
                    v164 = v163;
                    v165 = *v246;
                    do
                    {
                      for (m = 0; m != v164; m = m + 1)
                      {
                        if (*v246 != v165)
                        {
                          objc_enumerationMutation(v232);
                        }

                        v167 = *(*(&v245 + 1) + 8 * m);
                        v168 = [*(v1 + 696) objectForKeyedSubscript:v167];
                        if (!v168)
                        {
                          v168 = sub_100107380(v1, v167);
                          v230 = 1;
                          if (!v168)
                          {
                            continue;
                          }
                        }

                        v169 = v168;
                        v273[1] = 0;
                        v273[0] = 0;
                        nw_agent_get_uuid();
                        v170 = [[NSUUID alloc] initWithUUIDBytes:v273];
                        v171 = [NEPolicyResult netAgentUUID:v170];
                        v172 = [NEPolicy alloc];
                        v173 = +[NEPolicyCondition allInterfaces];
                        v272 = v173;
                        v174 = [NSArray arrayWithObjects:&v272 count:1];
                        v175 = [v172 initWithOrder:v238 result:v171 conditions:v174];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v1 = v240;
                        v176 = qword_100229408;
                        v177 = sub_100159E00(v176, *(v240 + 336), v175);
                      }

                      v164 = [v232 countByEnumeratingWithState:&v245 objects:v274 count:16];
                    }

                    while (v164);
                  }

                  v178 = [NEPolicy alloc];
                  v179 = [NEPolicyResult skipWithOrder:599];
                  v43 = &dispatch_group_enter_ptr;
                  v180 = +[NEPolicyCondition allInterfaces];
                  v271 = v180;
                  v181 = [NSArray arrayWithObjects:&v271 count:1];
                  v182 = [v178 initWithOrder:(v228 + 6) result:v179 conditions:v181];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v79 = v225;
                  v80 = v235;
                  v183 = qword_100229408;
                  v184 = sub_100159E00(v183, *(v1 + 336), v182);

                  v228 += 7;
LABEL_82:
                }

                v220 = [obj countByEnumeratingWithState:&v259 objects:v281 count:16];
                if (!v220)
                {
                  goto LABEL_155;
                }
              }
            }

            v217 = 0;
            v230 = 0;
LABEL_155:

            if ([v215 count])
            {
              v185 = [NEPolicyResult skipWithOrder:591];
              v186 = [NEPolicy alloc];
              v187 = [v43[327] allInterfaces];
              v270 = v187;
              v188 = [NSArray arrayWithObjects:&v270 count:1];
              v233 = v185;
              v189 = [v186 initWithOrder:589 result:v185 conditions:v188];

              v190 = sub_1001599CC();
              v229 = v189;
              v191 = sub_100159E00(v190, *(v1 + 336), v189);

              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v236 = v215;
              v192 = [v236 countByEnumeratingWithState:&v241 objects:v269 count:16];
              if (v192)
              {
                v193 = v192;
                v239 = *v242;
                do
                {
                  for (n = 0; n != v193; n = n + 1)
                  {
                    if (*v242 != v239)
                    {
                      objc_enumerationMutation(v236);
                    }

                    v195 = *(*(&v241 + 1) + 8 * n);
                    v196 = [NEPolicyRouteRule routeRuleWithAction:7 forType:0, v207];
                    [v196 setControlUnit:0xFFFFFFFLL];
                    v197 = [NEPolicy alloc];
                    v268 = v196;
                    v198 = [NSArray arrayWithObjects:&v268 count:1];
                    v199 = [NEPolicyResult routeRules:v198];
                    v200 = +[NEPolicyCondition allInterfaces];
                    v267[0] = v200;
                    v201 = [NEPolicyCondition effectiveApplication:v195];
                    v267[1] = v201;
                    v202 = [NSArray arrayWithObjects:v267 count:2];
                    v203 = [v197 initWithOrder:590 result:v199 conditions:v202];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v204 = qword_100229408;
                    v205 = sub_100159E00(v204, *(v240 + 336), v203);
                  }

                  v193 = [v236 countByEnumeratingWithState:&v241 objects:v269 count:16];
                }

                while (v193);
              }

              v1 = v240;
            }

            v206 = sub_1001599CC();
            sub_10015A52C(v206);

            if (v217)
            {
              sub_1001075E4(v1);
            }

            else
            {
              sub_1001070B0(v1);
            }

            v2 = v214;
            if ((v230 & 1) == 0)
            {
              goto LABEL_17;
            }

            dispatch_async(*(v1 + 136), &stru_1001FB9F8);
            goto LABEL_16;
          }
        }

        v51 = +[NEPolicyCondition allInterfaces];
        v52 = +[NEPolicyCondition usesModernNetworkAPI];
        v53 = +[NEPolicyCondition allowsUnsafeSocketAccess];
        [v53 setNegative:1];
        v54 = [NEPolicyResult skipWithOrder:304];
        v55 = [NEPolicy alloc];
        v284[0] = v51;
        v284[1] = v52;
        v284[2] = v53;
        v56 = [NSArray arrayWithObjects:v284 count:3];
        v57 = [v55 initWithOrder:302 result:v54 conditions:v56];

        v58 = sub_1001599CC();
        v59 = sub_100159E00(v58, *(v1 + 336), v57);

        v60 = v214;
        if (v214)
        {
          v60 = v214[18];
        }

        v61 = v60;
        v62 = [v61 proxyProviderCriteria];
        v63 = [v62 excludeNonMatchingLegacyClients];

        if (v63)
        {
          v64 = 590;
        }

        else
        {
          v64 = 599;
        }

        v65 = [NEPolicyResult skipWithOrder:v64];
        v66 = [NEPolicy alloc];
        v283 = v51;
        v67 = [NSArray arrayWithObjects:&v283 count:1];
        v68 = [v66 initWithOrder:303 result:v65 conditions:v67];

        v69 = sub_1001599CC();
        v70 = sub_100159E00(v69, *(v240 + 336), v68);

        v1 = v240;
        v228 = 304;
        v43 = &dispatch_group_enter_ptr;
        goto LABEL_60;
      }

      v44 = sub_1000E83DC();
      v45 = _NRLogIsLevelEnabled();

      if (v45)
      {
        v46 = sub_1000E83DC();
        v208 = *(v1 + 160);
        _NRLogWithArgs();
      }

LABEL_16:
      v2 = v214;
    }

LABEL_17:
  }
}

void sub_100106338(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = *(a1 + 152);
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 152) count];

      if (v4)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v5 = [*(a1 + 152) copy];
        v6 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v60;
          do
          {
            v9 = 0;
            do
            {
              if (*v60 != v8)
              {
                objc_enumerationMutation(v5);
              }

              sub_1000EAD24(a1, *(*(&v59 + 1) + 8 * v9));
              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
          }

          while (v7);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = *(a1 + 152);
        v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v56;
          do
          {
            v15 = 0;
            do
            {
              if (*v56 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v55 + 1) + 8 * v15);
              if (v16 && *(v16 + 12) == 1)
              {
                if (!v13)
                {
                  v13 = objc_alloc_init(NSMutableArray);
                }

                [v13 addObject:v16];
              }

              v15 = v15 + 1;
            }

            while (v12 != v15);
            v12 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = v13;
        v18 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v52;
          do
          {
            v21 = 0;
            do
            {
              if (*v52 != v20)
              {
                objc_enumerationMutation(v17);
              }

              sub_1000ECEAC(a1, *(*(&v51 + 1) + 8 * v21));
              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
          }

          while (v19);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = *(a1 + 152);
        v23 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v48;
          do
          {
            v26 = 0;
            do
            {
              if (*v48 != v25)
              {
                objc_enumerationMutation(v22);
              }

              sub_1000EAD24(a1, *(*(&v47 + 1) + 8 * v26));
              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
          }

          while (v24);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v27 = *(a1 + 152);
        v28 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v44;
          do
          {
            v32 = 0;
            do
            {
              if (*v44 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v43 + 1) + 8 * v32);
              if (v33 && *(v33 + 12) == 1)
              {
                if (!v30)
                {
                  v30 = objc_alloc_init(NSMutableArray);
                }

                [v30 addObject:v33];
              }

              v32 = v32 + 1;
            }

            while (v29 != v32);
            v29 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
          }

          while (v29);
        }

        else
        {
          v30 = 0;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v34 = v30;
        v35 = [v34 countByEnumeratingWithState:&v39 objects:v63 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v40;
          do
          {
            v38 = 0;
            do
            {
              if (*v40 != v37)
              {
                objc_enumerationMutation(v34);
              }

              sub_1000ECEAC(a1, *(*(&v39 + 1) + 8 * v38));
              v38 = v38 + 1;
            }

            while (v36 != v38);
            v36 = [v34 countByEnumeratingWithState:&v39 objects:v63 count:16];
          }

          while (v36);
        }
      }
    }
  }
}

void sub_1001067E0(uint64_t a1)
{
  if (a1)
  {
    v66 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    if ((*(a1 + 49) & 1) == 0)
    {
      v2 = v66;
      if (v66)
      {
        v2 = *(v66 + 144);
      }

      v3 = v2;
      v4 = [v3 allowsApplicationServiceConnections];

      if (!v4)
      {
        goto LABEL_21;
      }
    }

    if (*(a1 + 656))
    {
      goto LABEL_21;
    }

    if (v66)
    {
      v5 = *(v66 + 48);
      if ((v5 & 0x20) != 0)
      {
        LOBYTE(v7) = 1;
        if ((v5 & 0x1000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v6 = (v5 & 0x10) != 0 || *(v66 + 16) > 0x12u;
        v7 = (v5 >> 14) & 1 | v6;
        if ((v5 & 0x1000) == 0)
        {
          goto LABEL_19;
        }
      }

      if ((((*(v66 + 48) & 0x2000) != 0) & v7) != 0)
      {
        if (*(v66 + 16) > 0x15u)
        {
          v16 = *(v66 + 40);

          if (v16)
          {
            v17 = [NRApplicationServiceClient alloc];
            v18 = a1;
            v19 = *(a1 + 136);
            v20 = v18[12];
            v21 = v19;
            v22 = sub_10011E9B8(&v17->super.isa, v18, v21, v20);
            v23 = v18[82];
            v18[82] = v22;

            v65 = v18;
            v24 = v18[82];
            if (v24 && (v24[9] & 1) == 0)
            {
              if ((v24[8] & 1) == 0)
              {
                v24[8] = 1;
                objc_opt_self();
                if (qword_1002291A0 != -1)
                {
                  dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                }

                v36 = qword_100229198;
                v37 = v24;
                if (v36)
                {
                  dispatch_assert_queue_V2(*(v36 + 16));
                  [*(v36 + 56) addObject:v37];
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v64 = v36;
                  v38 = *(v36 + 40);
                  v39 = [v38 countByEnumeratingWithState:&v79 objects:location count:16];
                  if (v39)
                  {
                    v40 = *v80;
                    do
                    {
                      for (i = 0; i != v39; i = i + 1)
                      {
                        if (*v80 != v40)
                        {
                          objc_enumerationMutation(v38);
                        }

                        v42 = *(*(&v79 + 1) + 8 * i);
                        v43 = v37[9];
                        block[0] = _NSConcreteStackBlock;
                        block[1] = 3221225472;
                        block[2] = sub_10011E67C;
                        block[3] = &unk_1001FD060;
                        v77 = v37;
                        v78 = v42;
                        dispatch_async(v43, block);
                      }

                      v39 = [v38 countByEnumeratingWithState:&v79 objects:location count:16];
                    }

                    while (v39);
                  }

                  v75 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v72 = 0u;
                  v44 = *(v64 + 48);
                  v45 = [v44 countByEnumeratingWithState:&v72 objects:v83 count:16];
                  if (v45)
                  {
                    v46 = *v73;
                    do
                    {
                      for (j = 0; j != v45; j = j + 1)
                      {
                        if (*v73 != v46)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v48 = *(*(&v72 + 1) + 8 * j);
                        v49 = v37[9];
                        v69[0] = _NSConcreteStackBlock;
                        v69[1] = 3221225472;
                        v69[2] = sub_10011E688;
                        v69[3] = &unk_1001FD060;
                        v70 = v37;
                        v71 = v48;
                        dispatch_async(v49, v69);
                      }

                      v45 = [v44 countByEnumeratingWithState:&v72 objects:v83 count:16];
                    }

                    while (v45);
                  }
                }

                v50 = v37[7];
                v51 = _NRCopyLogObjectForNRUUID();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v53 = v37[7];
                  v54 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }
              }

              v55 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v65 + 672), v55);

              v56 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v65 + 680), v56);

              v57 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v65 + 688), v57);

              v58 = *(v65 + 96);
              v59 = _NRCopyLogObjectForNRUUID();
              v60 = _NRLogIsLevelEnabled();

              if (v60)
              {
                v61 = *(v65 + 96);
                v62 = _NRCopyLogObjectForNRUUID();
                v63 = *(v65 + 656);
                _NRLogWithArgs();
              }

              sub_1000FB114(v65, 0);
            }

            else
            {
              v25 = v18[12];
              v26 = _NRCopyLogObjectForNRUUID();
              v27 = _NRLogIsLevelEnabled();

              if (v27)
              {
                v28 = v18[12];
                v29 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              objc_storeStrong(v18 + 82, 0);
            }
          }

          else
          {
            v30 = *(a1 + 96);
            v31 = _NRCopyLogObjectForNRUUID();
            v32 = _NRLogIsLevelEnabled();

            if (v32)
            {
              v33 = *(a1 + 96);
              v34 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            objc_initWeak(location, a1);
            v35 = *(a1 + 96);
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_100106F40;
            v67[3] = &unk_1001FBC20;
            objc_copyWeak(&v68, location);
            sub_100170E74(NRDLocalDevice, v35, v67);

            objc_destroyWeak(&v68);
            objc_destroyWeak(location);
          }

          goto LABEL_21;
        }

        v8 = *(a1 + 96);
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = _NRLogIsLevelEnabled();

        if (v10)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

LABEL_19:
    v11 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
LABEL_20:
      v14 = *(a1 + 96);
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

LABEL_21:
  }
}

void sub_100106F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_100106F40(uint64_t a1, void *a2)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v5 = *(WeakRetained + 12);
    v6 = v19 ? v19[3] : 0;
    v7 = v6;
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      if (v19)
      {
        v9 = v19[5];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = v4[12];
      v12 = _NRCopyLogObjectForNRUUID();
      if (v10)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = v4[12];
          v15 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        sub_1001067E0(v4);
      }

      else
      {
        v16 = _NRLogIsLevelEnabled();

        if (v16)
        {
          v17 = v4[12];
          v18 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }
    }
  }
}

void sub_1001070B0(uint64_t a1)
{
  if (*(a1 + 50) == 1)
  {
    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 removeObserver:a1 name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v8 removeObserver:a1 name:@"com.apple.LaunchServices.applicationStateChanged" object:0];
    [v8 removeObserver:a1 name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    *(a1 + 50) = 0;
    v3 = *(a1 + 96);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 96);
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

uint64_t sub_1001071BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = [v3 entitlements];
      v11 = [v10 objectForKey:v9 ofClass:objc_opt_class()];

      if (!v11)
      {
        break;
      }

      v12 = [*(a1 + 32) objectForKeyedSubscript:v9];
      if (([v11 isEqual:v12] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 containsObject:v12] & 1) == 0)
        {

          v11 = 0;
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v11 = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

id sub_100107380(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 696))
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(a1 + 696);
    *(a1 + 696) = v4;
  }

  v6 = *(a1 + 136);
  v7 = nw_agent_create();
  v8 = dispatch_data_create([v3 bytes], objc_msgSend(v3, "length"), *(a1 + 136), 0);
  nw_agent_change_state();
  objc_initWeak(&location, a1);
  objc_initWeak(&from, v7);
  v12[1] = _NSConcreteStackBlock;
  v12[2] = 3221225472;
  v12[3] = sub_10010777C;
  v12[4] = &unk_1001FBA20;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  v9 = v8;
  v13 = v9;
  nw_agent_set_token_low_water_mark();
  objc_copyWeak(v12, &location);
  nw_agent_set_error_handler();
  sub_100107924(v7, v9);
  v10 = *(a1 + 696);
  [v10 setObject:v7 forKeyedSubscript:{v3, _NSConcreteStackBlock, 3221225472, sub_100107860, &unk_1001FBA48}];

  objc_destroyWeak(v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v7;
}

void sub_1001075A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001075E4(uint64_t a1)
{
  if ((*(a1 + 50) & 1) == 0)
  {
    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v8 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationStateChanged" object:0];
    [v8 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    *(a1 + 50) = 1;
    v3 = *(a1 + 96);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 96);
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

void sub_100107704(id a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v1 = qword_1002290B8;
  sub_1000B98D8(v1);
}

void sub_10010777C(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained && WeakRetained[14] == 1)
  {
    v9 = WeakRetained;
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = v9[12];
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = v9[12];
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      sub_100107924(v3, a1[4]);
    }

    WeakRetained = v9;
  }
}

void sub_100107860(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      if (*(WeakRetained + 14))
      {
        v10 = WeakRetained;
        v5 = *(WeakRetained + 12);
        v6 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v10;
        if (IsLevelEnabled)
        {
          v8 = *(v10 + 12);
          v9 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();

          WeakRetained = v10;
        }
      }
    }
  }
}

void sub_100107924(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
}

void sub_100107A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    [v3 UTF8String];
    v4 = nw_interface_create_with_name();
    if (!*(a1 + 768))
    {
      v5 = *(a1 + 136);
      v6 = nw_agent_create();
      v7 = *(a1 + 768);
      *(a1 + 768) = v6;

      v8 = *(a1 + 768);
      nw_agent_change_state();
      v9 = *(a1 + 768);
    }

    nw_agent_add_to_interface();
    goto LABEL_5;
  }

  v10 = sub_1000E83DC();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_1000E83DC();
    _NRLogWithArgs();
LABEL_5:
  }
}

void sub_100107B28(void **a1, void *a2)
{
  v3 = a2;
  if (([v3 hasCompanionDatapath] & 1) == 0)
  {
    v351 = objc_alloc_init(NSMutableArray);
    v4 = sub_100163A30(NRDLocalDevice, a1[12]);
    v5 = [v3 localInterfaceName];
    v349 = v3;
    v350 = a1;
    v340 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = [v3 proxyAgentUUID];
      if (!v7)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = v7;
      if (v4)
      {
        v9 = *(v4 + 144);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if ([v10 hasPoliciesForProxyCriteria])
      {

        goto LABEL_8;
      }

      v105 = sub_100169428(v4);

      if ((v105 & 1) == 0)
      {
        v106 = +[NEPolicyCondition allInterfaces];
        v379 = v106;
        v17 = [NSArray arrayWithObjects:&v379 count:1];

        v107 = [v3 localInterfaceName];
        v108 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v107];

        v109 = [v3 proxyAgentUUID];
        [v108 setNetworkAgentUUID:v109];

        obj = v108;
        v378 = v108;
        v110 = [NSArray arrayWithObjects:&v378 count:1];
        v111 = [NEPolicyResult routeRules:v110];

        v334 = v111;
        v112 = [[NEPolicy alloc] initWithOrder:10 result:v111 conditions:v17];
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v113 = qword_100229408;
        v114 = sub_100159E00(v113, a1[38], v112);

        if (![v114 unsignedIntegerValue])
        {
          v292 = *(v350 + 96);
          v293 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v295 = *(v350 + 96);
            v296 = _NRCopyLogObjectForNRUUID();
            v325 = v112;
            v326 = *(v350 + 304);
            v323 = 3843;
            v324 = v349;
            _NRLogWithArgs();
          }

          v297 = *(v350 + 96);
          v298 = _NRCopyLogObjectForNRUUID();
          v299 = _NRLogIsLevelEnabled();

          if (v299)
          {
            v300 = *(v350 + 96);
            v301 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v3 = v349;
          [v349 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v112, *(v350 + 304), v323, v324, v325, v326}];

          goto LABEL_196;
        }

        [v351 addObject:v114];

        v333 = [NEPolicy alloc];
        v115 = [v349 proxyAgentUUID];
        v116 = [NEPolicyResult netAgentUUID:v115];
        v117 = [v349 localInterfaceName];
        v118 = [NEPolicyCondition scopedInterface:v117];
        v377 = v118;
        v119 = [NSArray arrayWithObjects:&v377 count:1];
        v120 = [v333 initWithOrder:10 result:v116 conditions:v119];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v121 = obj;
        a1 = v350;
        v122 = qword_100229408;
        v123 = v120;
        v124 = sub_100159E00(v122, *(v350 + 304), v120);

        v125 = [v124 unsignedIntegerValue];
        if (v125)
        {
          [v351 addObject:v124];
          v3 = v349;
        }

        else
        {
          v302 = *(v350 + 96);
          v303 = _NRCopyLogObjectForNRUUID();
          v304 = _NRLogIsLevelEnabled();

          if (v304)
          {
            v305 = *(v350 + 96);
            v306 = _NRCopyLogObjectForNRUUID();
            v325 = v120;
            v326 = *(v350 + 304);
            v323 = 3848;
            v324 = v349;
            _NRLogWithArgs();
          }

          v307 = *(v350 + 96);
          v308 = _NRCopyLogObjectForNRUUID();
          v309 = _NRLogIsLevelEnabled();

          if (v309)
          {
            v310 = *(v350 + 96);
            v311 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v3 = v349;
          a1 = v350;
          v123 = v120;
          [v349 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v120, *(v350 + 304), v323, v324, v325, v326}];
          v121 = obj;
        }

        if (!v125)
        {
          goto LABEL_143;
        }
      }
    }

LABEL_9:
    if (v4)
    {
      v11 = *(v4 + 144);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 hasPoliciesForProxyCriteria];

    if (v13)
    {
      goto LABEL_143;
    }

    v14 = sub_10010A0D8(a1, v3);
    v15 = sub_100169428(v4);
    if (!v4 || !v15 || (*(v4 + 48) & 4) == 0 || ([v3 proxyAgentUUID], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
LABEL_23:
      v35 = [v3 proxyAgentUUID];

      if (v35)
      {
        v36 = [v3 localInterfaceName];
        v17 = [NEPolicyRouteRule routeRuleWithAction:6 forInterfaceName:v36];

        v37 = [v3 proxyAgentUUID];
        [v17 setNetworkAgentUUID:v37];

        v38 = [NEPolicy alloc];
        v374 = v17;
        v39 = [NSArray arrayWithObjects:&v374 count:1];
        v40 = [NEPolicyResult routeRules:v39];
        v41 = +[NEPolicyCondition allInterfaces];
        v373[0] = v41;
        objc_opt_self();
        v42 = [NEPolicyCondition clientFlags:0x80000000];
        v373[1] = v42;
        v43 = [NSArray arrayWithObjects:v373 count:2];
        obja = [v38 initWithOrder:(v14 + 1) result:v40 conditions:v43];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v44 = qword_100229408;
        v45 = sub_100159E00(v44, *(v350 + 304), obja);

        v3 = v349;
        v4 = v340;
        if (![v45 unsignedIntegerValue])
        {
          v232 = *(v350 + 96);
          v233 = _NRCopyLogObjectForNRUUID();
          v234 = _NRLogIsLevelEnabled();

          if (v234)
          {
            v235 = *(v350 + 96);
            v236 = _NRCopyLogObjectForNRUUID();
            v325 = obja;
            v326 = *(v350 + 304);
            v323 = 3904;
            v324 = v349;
            _NRLogWithArgs();
          }

          v237 = *(v350 + 96);
          v238 = _NRCopyLogObjectForNRUUID();
          v239 = _NRLogIsLevelEnabled();

          if (v239)
          {
            v240 = *(v350 + 96);
            v241 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v54 = obja;
          [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", obja, *(v350 + 304), v323, v324, v325, v326}];

          v4 = v340;
          goto LABEL_141;
        }

        [v351 addObject:v45];
      }

      v46 = [NEPolicy alloc];
      v47 = +[NEPolicyResult drop];
      v48 = +[NEPolicyCondition allInterfaces];
      v372[0] = v48;
      objc_opt_self();
      v49 = [NEPolicyCondition clientFlags:0x80000000];
      v372[1] = v49;
      objc_opt_self();
      v50 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
      v372[2] = v50;
      v51 = [NSArray arrayWithObjects:v372 count:3];
      v17 = [v46 initWithOrder:(v14 + 1) result:v47 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v52 = v350;
      v53 = qword_100229408;
      v54 = sub_100159E00(v53, *(v350 + 304), v17);

      if ([v54 unsignedIntegerValue])
      {
        [v351 addObject:v54];

        v55 = [v3 migrationInfoAgent];

        if (!v55)
        {
          v56 = [v3 localInterfaceName];
          v57 = [v3 remoteOuterEndpoint];
          v58 = sub_10010DC08(v350, v56, v57);
          [v3 setMigrationInfoAgent:v58];
        }

        if (v4)
        {
          v59 = *(v4 + 144);
        }

        else
        {
          v59 = 0;
        }

        v60 = v59;
        if (([v60 allowsDirectToCloud] & 1) == 0)
        {

          goto LABEL_57;
        }

        v61 = [v3 proxyAgentUUID];

        if (!v61)
        {
          goto LABEL_57;
        }

        v62 = [NEPolicy alloc];
        v63 = [NEPolicyResult skipWithOrder:(v14 + 4)];
        v64 = +[NEPolicyCondition allInterfaces];
        v371[0] = v64;
        objc_opt_self();
        v65 = [NEPolicyCondition clientFlags:536879104];
        v371[1] = v65;
        v66 = [NSArray arrayWithObjects:v371 count:2];
        v17 = [v62 initWithOrder:(v14 + 2) result:v63 conditions:v66];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v67 = qword_100229408;
        v54 = sub_100159E00(v67, *(v350 + 304), v17);

        if ([v54 unsignedIntegerValue])
        {
          [v351 addObject:v54];

          v54 = objc_alloc_init(NSMutableArray);
          v68 = [NEPolicyRouteRule routeRuleWithAction:6 forType:0];
          v69 = [v3 proxyAgentUUID];
          [v68 setNetworkAgentUUID:v69];

          v335 = v68;
          [v54 addObject:v68];
          v70 = [v3 companionProxyAgent];
          if (v70)
          {
            v71 = v70[15];

            if (v71 != 1)
            {
LABEL_44:
              obje = [NEPolicy alloc];
              v75 = [NEPolicyResult routeRules:v54];
              v76 = +[NEPolicyCondition allInterfaces];
              v370[0] = v76;
              objc_opt_self();
              v77 = [NEPolicyCondition clientFlags:0x20000000];
              v370[1] = v77;
              v78 = [NSArray arrayWithObjects:v370 count:2];
              objb = [obje initWithOrder:(v14 + 3) result:v75 conditions:v78];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v79 = qword_100229408;
              v80 = sub_100159E00(v79, *(v350 + 304), objb);

              if (![v80 unsignedIntegerValue])
              {
                v272 = *(v350 + 96);
                v273 = _NRCopyLogObjectForNRUUID();
                v274 = _NRLogIsLevelEnabled();

                if (v274)
                {
                  v275 = *(v350 + 96);
                  v276 = _NRCopyLogObjectForNRUUID();
                  v325 = objb;
                  v326 = *(v350 + 304);
                  v323 = 3947;
                  v324 = v349;
                  _NRLogWithArgs();
                }

                v277 = *(v350 + 96);
                v278 = _NRCopyLogObjectForNRUUID();
                v279 = _NRLogIsLevelEnabled();

                if (v279)
                {
                  v280 = *(v350 + 96);
                  v281 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

                v3 = v349;
                [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", objb, *(v350 + 304), v323, v324, v325, v326}];

                v17 = objb;
                v4 = v340;
                goto LABEL_141;
              }

              [v351 addObject:v80];

              v81 = objc_alloc_init(NSMutableArray);
              v82 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:*(v350 + 760)];
              v83 = [v3 proxyAgentUUID];
              [v82 setNetworkAgentUUID:v83];

              v328 = v82;
              [v81 addObject:v82];
              v84 = [v3 companionProxyAgent];
              if (!v84 || (v85 = v84[15], v84, (v85 & 1) == 0))
              {
                v86 = [v3 proxyAgentUUID];
                v87 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v86];

                v88 = [v3 companionProxyAgent];
                v89 = [v88 agentUUID];
                [v87 setNetworkAgentUUID:v89];
              }

              v90 = [NEPolicy alloc];
              v331 = v81;
              v91 = [NEPolicyResult routeRules:v81];
              v92 = +[NEPolicyCondition allInterfaces];
              v369 = v92;
              v93 = [NSArray arrayWithObjects:&v369 count:1];
              v94 = [v90 initWithOrder:(v14 + 5) result:v91 conditions:v93];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v4 = v340;
              v52 = v350;
              v95 = qword_100229408;
              v96 = sub_100159E00(v95, *(v350 + 304), v94);

              v97 = [v96 unsignedIntegerValue];
              if (v97)
              {
                [v351 addObject:v96];
              }

              else
              {
                v282 = *(v350 + 96);
                v283 = _NRCopyLogObjectForNRUUID();
                v284 = _NRLogIsLevelEnabled();

                if (v284)
                {
                  v285 = *(v350 + 96);
                  v286 = _NRCopyLogObjectForNRUUID();
                  v325 = v94;
                  v326 = *(v350 + 304);
                  v323 = 3963;
                  v324 = v349;
                  _NRLogWithArgs();
                }

                v287 = *(v350 + 96);
                v288 = _NRCopyLogObjectForNRUUID();
                v289 = _NRLogIsLevelEnabled();

                if (v289)
                {
                  v290 = *(v350 + 96);
                  v291 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

                v3 = v349;
                v52 = v350;
                [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", v94, *(v350 + 304), v323, v324, v325, v326}];
                v4 = v340;
              }

              if (!v97)
              {
                goto LABEL_143;
              }

LABEL_57:
              v98 = [v3 proxyAgentUUID];

              if (v98)
              {
                if (*(v52 + 47) == 1)
                {
                  objf = +[NEPolicyCondition allInterfaces];
                  v382[0] = objf;
                  objc_opt_self();
                  v336 = [NEPolicyCondition clientFlags:0x10000000];
                  v382[1] = v336;
                  v332 = [NSArray arrayWithObjects:v382 count:2];
                  v383 = v332;
                  v329 = +[NEPolicyCondition allInterfaces];
                  v381[0] = v329;
                  objc_opt_self();
                  v99 = [NEPolicyCondition clientFlags:536879104];
                  v381[1] = v99;
                  v100 = [NSArray arrayWithObjects:v381 count:2];
                  v384 = v100;
                  v101 = +[NEPolicyCondition allInterfaces];
                  v380[0] = v101;
                  objc_opt_self();
                  v102 = [NEPolicyCondition clientFlags:0x40000000];
                  v380[1] = v102;
                  v103 = [NSArray arrayWithObjects:v380 count:2];
                  v385 = v103;
                  v104 = [NSArray arrayWithObjects:&v383 count:3];
                }

                else
                {
                  v104 = 0;
                }

                v360 = 0u;
                v361 = 0u;
                v362 = 0u;
                v363 = 0u;
                v17 = v104;
                v126 = [v17 countByEnumeratingWithState:&v360 objects:v368 count:16];
                if (v126)
                {
                  v127 = v126;
                  v128 = *v361;
LABEL_74:
                  v129 = 0;
                  while (1)
                  {
                    if (*v361 != v128)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v130 = *(*(&v360 + 1) + 8 * v129);
                    v131 = [NEPolicy alloc];
                    v132 = [v349 proxyAgentUUID];
                    v133 = [NEPolicyResult netAgentUUID:v132];
                    v134 = [v131 initWithOrder:(v14 + 4) result:v133 conditions:v130];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v135 = qword_100229408;
                    v136 = sub_100159E00(v135, *(v350 + 304), v134);

                    if (![v136 unsignedIntegerValue])
                    {
                      break;
                    }

                    [v351 addObject:v136];

                    if (v127 == ++v129)
                    {
                      v127 = [v17 countByEnumeratingWithState:&v360 objects:v368 count:16];
                      if (!v127)
                      {
                        goto LABEL_82;
                      }

                      goto LABEL_74;
                    }
                  }

                  v191 = *(v350 + 96);
                  v192 = _NRCopyLogObjectForNRUUID();
                  v193 = _NRLogIsLevelEnabled();

                  v3 = v349;
                  if (v193)
                  {
                    v194 = *(v350 + 96);
                    v195 = _NRCopyLogObjectForNRUUID();
                    v325 = v134;
                    v326 = *(v350 + 304);
                    v323 = 3973;
                    v324 = v349;
                    _NRLogWithArgs();
                  }

                  v196 = *(v350 + 96);
                  v197 = _NRCopyLogObjectForNRUUID();
                  v198 = _NRLogIsLevelEnabled();

                  v4 = v340;
                  if (v198)
                  {
                    v199 = *(v350 + 96);
                    v200 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", v134, *(v350 + 304), v323, v324, v325, v326}];

                  goto LABEL_135;
                }

LABEL_82:

                v137 = [NEPolicy alloc];
                v3 = v349;
                objg = [v349 proxyAgentUUID];
                v138 = [NEPolicyResult removeNetworkAgentUUID:objg];
                v139 = +[NEPolicyCondition allInterfaces];
                v367[0] = v139;
                objc_opt_self();
                v140 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
                v367[1] = v140;
                v141 = [NSArray arrayWithObjects:v367 count:2];
                v54 = [v137 initWithOrder:10 result:v138 conditions:v141];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v142 = qword_100229408;
                objc = v54;
                v143 = sub_100159E00(v142, *(v350 + 304), v54);

                if (![v143 unsignedIntegerValue])
                {
                  v242 = *(v350 + 96);
                  v243 = _NRCopyLogObjectForNRUUID();
                  v244 = _NRLogIsLevelEnabled();

                  if (v244)
                  {
                    v245 = *(v350 + 96);
                    v246 = _NRCopyLogObjectForNRUUID();
                    v325 = v54;
                    v326 = *(v350 + 304);
                    v323 = 3980;
                    v324 = v349;
                    _NRLogWithArgs();
                  }

                  v247 = *(v350 + 96);
                  v248 = _NRCopyLogObjectForNRUUID();
                  v249 = _NRLogIsLevelEnabled();

                  if (v249)
                  {
                    v250 = *(v350 + 96);
                    v251 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  v3 = v349;
                  [v349 cancelWithReason:{@"Failed to add removeProxyPolicyForResolver %@ to session %@", v54, *(v350 + 304), v323, v324, v325, v326}];

                  v4 = v340;
                  goto LABEL_141;
                }

                [v351 addObject:v143];

                v337 = [NEPolicy alloc];
                v144 = [v349 proxyAgentUUID];
                v145 = [NEPolicyResult removeNetworkAgentUUID:v144];
                v146 = +[NEPolicyCondition allInterfaces];
                v366[0] = v146;
                objc_opt_self();
                v147 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
                v366[1] = v147;
                v148 = [NSArray arrayWithObjects:v366 count:2];
                v338 = [v337 initWithOrder:10 result:v145 conditions:v148];

                objc_opt_self();
                v4 = v340;
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v52 = v350;
                v149 = qword_100229408;
                v150 = sub_100159E00(v149, *(v350 + 304), v338);

                v151 = [v150 unsignedIntegerValue];
                v152 = objc;
                if (v151)
                {
                  [v351 addObject:v150];
                }

                else
                {
                  v252 = *(v350 + 96);
                  v253 = _NRCopyLogObjectForNRUUID();
                  v254 = _NRLogIsLevelEnabled();

                  if (v254)
                  {
                    v255 = *(v350 + 96);
                    v256 = _NRCopyLogObjectForNRUUID();
                    v325 = v338;
                    v326 = *(v350 + 304);
                    v323 = 3986;
                    v324 = v349;
                    _NRLogWithArgs();
                  }

                  v257 = *(v350 + 96);
                  v258 = _NRCopyLogObjectForNRUUID();
                  v259 = _NRLogIsLevelEnabled();

                  if (v259)
                  {
                    v260 = *(v350 + 96);
                    v261 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  v3 = v349;
                  [v349 cancelWithReason:{@"Failed to add removeProxyPolicyForListener %@ to session %@", v338, *(v350 + 304), v323, v324, v325, v326}];
                  v4 = v340;
                  v52 = v350;
                  v152 = objc;
                }

                if (!v151)
                {
                  goto LABEL_143;
                }
              }

              v153 = [v3 proxyAgentUUID];

              v154 = [v3 migrationInfoAgent];

              if (v154)
              {
                v339 = v153;
                v356 = 0u;
                v357 = 0u;
                v358 = 0u;
                v359 = 0u;
                objd = sub_10010DCE4(v52, v153 != 0, 0);
                v155 = [objd countByEnumeratingWithState:&v356 objects:v365 count:16];
                if (v155)
                {
                  v156 = v155;
                  v157 = *v357;
LABEL_94:
                  v158 = 0;
                  while (1)
                  {
                    if (*v357 != v157)
                    {
                      objc_enumerationMutation(objd);
                    }

                    v159 = *(*(&v356 + 1) + 8 * v158);
                    v383 = 0;
                    v384 = 0;
                    v160 = [v349 migrationInfoAgent];
                    nw_agent_get_uuid();

                    v161 = [[NSUUID alloc] initWithUUIDBytes:&v383];
                    v162 = [NEPolicy alloc];
                    v163 = [NEPolicyResult netAgentUUID:v161];
                    v164 = [v162 initWithOrder:(v14 + 6) result:v163 conditions:v159];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v165 = qword_100229408;
                    v166 = sub_100159E00(v165, *(v350 + 304), v164);

                    if (![v166 unsignedIntegerValue])
                    {
                      break;
                    }

                    [v351 addObject:v166];

                    if (v156 == ++v158)
                    {
                      v156 = [objd countByEnumeratingWithState:&v356 objects:v365 count:16];
                      if (!v156)
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_94;
                    }
                  }

                  v211 = *(v350 + 96);
                  v212 = _NRCopyLogObjectForNRUUID();
                  v213 = _NRLogIsLevelEnabled();

                  v3 = v349;
                  if (v213)
                  {
                    v214 = *(v350 + 96);
                    v215 = _NRCopyLogObjectForNRUUID();
                    v325 = v164;
                    v326 = *(v350 + 304);
                    v323 = 4001;
                    v324 = v349;
                    _NRLogWithArgs();
                  }

                  v216 = *(v350 + 96);
                  v217 = _NRCopyLogObjectForNRUUID();
                  v218 = _NRLogIsLevelEnabled();

                  v4 = v340;
                  v54 = objd;
                  if (v218)
                  {
                    v219 = *(v350 + 96);
                    v220 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", v164, *(v350 + 304), v323, v324, v325, v326}];

                  v17 = objd;
                  goto LABEL_141;
                }

LABEL_102:

                v3 = v349;
                v52 = v350;
                v153 = v339;
              }

              v167 = [v3 virtualInterface];
              v168 = v153 != 0;
              if (v167)
              {
                v169 = sub_10010DFA8(v52, v168, 0);
              }

              else
              {
                v169 = sub_10010DCE4(v52, v168, 0);
              }

              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v17 = v169;
              v170 = [v17 countByEnumeratingWithState:&v352 objects:v364 count:16];
              if (!v170)
              {
LABEL_117:

                if ([v351 count])
                {
                  objc_opt_self();
                  v3 = v349;
                  v4 = v340;
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v180 = qword_100229408;
                  sub_10015A52C(v180);

                  v54 = [v349 policyIDs];
                  v181 = [[NSMutableArray alloc] initWithArray:v54];
                  [v181 addObjectsFromArray:v351];
                  [v349 setPolicyIDs:v181];
                  v182 = *(v52 + 96);
                  v183 = _NRCopyLogObjectForNRUUID();
                  v184 = _NRLogIsLevelEnabled();

                  if (v184)
                  {
                    v185 = *(v52 + 96);
                    v186 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }
                }

                else
                {
                  v187 = *(v52 + 96);
                  v188 = _NRCopyLogObjectForNRUUID();
                  v189 = _NRLogIsLevelEnabled();

                  v3 = v349;
                  v4 = v340;
                  if (!v189)
                  {
LABEL_142:

LABEL_143:
                    goto LABEL_144;
                  }

                  v190 = *(v52 + 96);
                  v54 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

LABEL_141:

                goto LABEL_142;
              }

              v171 = v170;
              v172 = *v353;
LABEL_109:
              v173 = 0;
              while (1)
              {
                if (*v353 != v172)
                {
                  objc_enumerationMutation(v17);
                }

                v174 = *(*(&v352 + 1) + 8 * v173);
                v175 = [NEPolicy alloc];
                v176 = [v349 localInterfaceName];
                v177 = [NEPolicyResult scopeSocketToInterfaceName:v176];
                v134 = [v175 initWithOrder:(v14 + 7) result:v177 conditions:v174];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v52 = v350;
                v178 = qword_100229408;
                v179 = sub_100159E00(v178, *(v350 + 304), v134);

                if (![v179 unsignedIntegerValue])
                {
                  break;
                }

                [v351 addObject:v179];

                if (v171 == ++v173)
                {
                  v171 = [v17 countByEnumeratingWithState:&v352 objects:v364 count:16];
                  if (!v171)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_109;
                }
              }

              v201 = *(v350 + 96);
              v202 = _NRCopyLogObjectForNRUUID();
              v203 = _NRLogIsLevelEnabled();

              v3 = v349;
              if (v203)
              {
                v204 = *(v350 + 96);
                v205 = _NRCopyLogObjectForNRUUID();
                v325 = v134;
                v326 = *(v350 + 304);
                v323 = 4022;
                v324 = v349;
                _NRLogWithArgs();
              }

              v206 = *(v350 + 96);
              v207 = _NRCopyLogObjectForNRUUID();
              v208 = _NRLogIsLevelEnabled();

              v4 = v340;
              if (v208)
              {
                v209 = *(v350 + 96);
                v210 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", v134, *(v350 + 304), v323, v324, v325, v326}];

LABEL_135:
              v54 = v17;
              goto LABEL_141;
            }

            v72 = [v3 localInterfaceName];
            v73 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v72];

            v74 = [v3 proxyAgentUUID];
            [v73 setNetworkAgentUUID:v74];

            [v54 addObject:v73];
          }

          else
          {
            v73 = 0;
          }

          goto LABEL_44;
        }

        v262 = *(v350 + 96);
        v263 = _NRCopyLogObjectForNRUUID();
        v264 = _NRLogIsLevelEnabled();

        if (v264)
        {
          v265 = *(v350 + 96);
          v266 = _NRCopyLogObjectForNRUUID();
          v325 = v17;
          v326 = *(v350 + 304);
          v323 = 3927;
          v324 = v349;
          _NRLogWithArgs();
        }

        v267 = *(v350 + 96);
        v268 = _NRCopyLogObjectForNRUUID();
        v269 = _NRLogIsLevelEnabled();

        if (v269)
        {
          v270 = *(v350 + 96);
          v271 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v3 = v349;
        v231 = *(v350 + 304);
      }

      else
      {
        v221 = *(v350 + 96);
        v222 = _NRCopyLogObjectForNRUUID();
        v223 = _NRLogIsLevelEnabled();

        if (v223)
        {
          v224 = *(v350 + 96);
          v225 = _NRCopyLogObjectForNRUUID();
          v325 = v17;
          v326 = *(v350 + 304);
          v323 = 3911;
          v324 = v3;
          _NRLogWithArgs();
        }

        v226 = *(v350 + 96);
        v227 = _NRCopyLogObjectForNRUUID();
        v228 = _NRLogIsLevelEnabled();

        if (v228)
        {
          v229 = *(v350 + 96);
          v230 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v231 = *(v350 + 304);
      }

      [v3 cancelWithReason:{@"Failed to add policy %@ to session %@", v17, v231, v323, v324, v325, v326}];
      v4 = v340;
      goto LABEL_141;
    }

    v17 = [@"com.apple.datausage.alt-account" dataUsingEncoding:4];
    v18 = sub_100009074([NRToken alloc], 1, 52, v17);
    v19 = sub_100009284(v18);
    v20 = objc_alloc_init(NSMutableData);
    NRTLVAddData();
    v21 = [a1[87] objectForKeyedSubscript:v20];
    if (!v21)
    {
      v21 = sub_100107380(a1, v20);
      if (!v21)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v330 = v20;
    v334 = v19;
    obj = v18;
    v383 = 0;
    v384 = 0;
    v327 = v21;
    nw_agent_get_uuid();
    v22 = [v3 proxyAgentUUID];
    v23 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v22];

    v24 = [[NSUUID alloc] initWithUUIDBytes:&v383];
    [v23 setNetworkAgentUUID:v24];

    v25 = [NEPolicy alloc];
    v26 = v23;
    v376 = v23;
    v27 = [NSArray arrayWithObjects:&v376 count:1];
    v28 = [NEPolicyResult routeRules:v27];
    v29 = +[NEPolicyCondition allInterfaces];
    v375 = v29;
    v30 = [NSArray arrayWithObjects:&v375 count:1];
    v31 = [v25 initWithOrder:v14 result:v28 conditions:v30];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v32 = qword_100229408;
    v33 = sub_100159E00(v32, *(v350 + 304), v31);

    v34 = v31;
    v4 = v340;
    if ([v33 unsignedIntegerValue])
    {
      [v351 addObject:v33];

      v18 = obj;
      v20 = v330;
      v19 = v334;
      goto LABEL_22;
    }

    v312 = v34;
    v313 = *(v350 + 96);
    v314 = _NRCopyLogObjectForNRUUID();
    v315 = _NRLogIsLevelEnabled();

    if (v315)
    {
      v316 = *(v350 + 96);
      v317 = _NRCopyLogObjectForNRUUID();
      v325 = v312;
      v326 = *(v350 + 304);
      v323 = 3890;
      v324 = v349;
      _NRLogWithArgs();
    }

    v318 = *(v350 + 96);
    v319 = _NRCopyLogObjectForNRUUID();
    v320 = _NRLogIsLevelEnabled();

    if (v320)
    {
      v321 = *(v350 + 96);
      v322 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v3 = v349;
    [v349 cancelWithReason:{@"Failed to add policy %@ to session %@", v312, *(v350 + 304), v323, v324, v325, v326}];

LABEL_196:
    v4 = v340;
    v54 = obj;
    goto LABEL_141;
  }

LABEL_144:
}

uint64_t sub_10010A0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1)
  {
    v4 = 800;
  }

  else if ([v3 type] == 2)
  {
    if ([v3 subtype] == 102)
    {
      v4 = 1100;
    }

    else if ([v3 subtype] == 103)
    {
      v4 = 1000;
    }

    else if ([v3 subtype] == 104)
    {
      v4 = 950;
    }

    else
    {
      v4 = 900;
    }
  }

  else if ([v3 type] == 4)
  {
    v4 = 1200;
  }

  else if ([v3 type] == 5)
  {
    v4 = 700;
  }

  else
  {
    v6 = *(a1 + 96);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 96);
      v10 = _NRCopyLogObjectForNRUUID();
      [v3 type];
      StringFromNRLinkType = createStringFromNRLinkType();
      _NRLogWithArgs();
    }

    v4 = 0;
  }

  return v4;
}

id sub_10010A218(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2;
  if ([v6 state] != 8)
  {
    v33 = *(a1 + 96);
    v34 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v36 = *(a1 + 96);
      v37 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_31;
  }

  if (!a3)
  {
LABEL_31:
    v38 = 0;
    goto LABEL_40;
  }

  if ([v6 virtualInterface])
  {
    [v6 virtualInterface];
    v7 = NEVirtualInterfaceCopyName();
    if (!v7)
    {
      v184 = *(a1 + 96);
      v185 = _NRCopyLogObjectForNRUUID();
      v186 = _NRLogIsLevelEnabled();

      if (v186)
      {
        v187 = *(a1 + 96);
        v188 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v189 = *(a1 + 96);
      v190 = _NRCopyLogObjectForNRUUID();
      v191 = _NRLogIsLevelEnabled();

      if (v191)
      {
        v192 = *(a1 + 96);
        v193 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      [v6 cancelWithReason:@"Failed to get virtual interface name to set IP tunnel policies"];
      v38 = 0;
      goto LABEL_39;
    }

    v8 = objc_alloc_init(NSMutableArray);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 96);
      v3 = sub_100163A30(NRDLocalDevice, v10);

      if (v3)
      {
        v414 = a3;
        sub_10010D154(a1);
        if ((*(a1 + 47) & 1) == 0 && *(a1 + 49) == 1 && ([v6 hasRouteRulePolicy] & 1) == 0)
        {
          v403 = a1;
          v11 = +[NEPolicyCondition allInterfaces];
          v443 = v11;
          v12 = [NSArray arrayWithObjects:&v443 count:1];

          v409 = v7;
          v13 = [NEPolicyRouteRule routeRuleWithAction:2 forInterfaceName:v7];
          v442 = v13;
          v14 = [NSArray arrayWithObjects:&v442 count:1];
          v15 = [NEPolicyResult routeRules:v14];

          v395 = v12;
          v16 = [[NEPolicy alloc] initWithOrder:210 result:v15 conditions:v12];
          objc_opt_self();
          v412 = v9;
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v17 = qword_100229408;
          v18 = *(v403 + 304);
          v19 = sub_100159E00(v17, v18, v16);

          if (![v19 unsignedIntegerValue])
          {
            v407 = v3;
            v219 = *(v403 + 96);
            v220 = _NRCopyLogObjectForNRUUID();
            v221 = _NRLogIsLevelEnabled();

            if (v221)
            {
              v222 = *(v403 + 96);
              v223 = _NRCopyLogObjectForNRUUID();
              v355 = *(v403 + 304);
              _NRLogWithArgs();
            }

            v224 = *(v403 + 96);
            v225 = _NRCopyLogObjectForNRUUID();
            v226 = _NRLogIsLevelEnabled();

            if (v226)
            {
              v227 = *(v403 + 96);
              v228 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            [v6 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v16, *(v403 + 304)}];

            goto LABEL_125;
          }

          v9 = v412;
          [v412 addObject:v19];

          [v6 setHasRouteRulePolicy:1];
          v7 = v409;
          a1 = v403;
        }

        if ([v6 type] == 1 || objc_msgSend(v6, "type") == 2 || objc_msgSend(v6, "type") == 5)
        {
          if ([v6 ikeClassDEstablished] && (objc_msgSend(v6, "hasClassDPolicies") & 1) == 0)
          {
            v20 = a1;
            v21 = sub_100003490();
            dispatch_assert_queue_V2(v21);

            v407 = v3;
            v22 = sub_1001677D0(v3, @"0");
            v23 = [NEPolicyCondition remoteAddress:v22 prefix:128];
            v441[0] = v23;
            v24 = +[NEPolicyCondition allInterfaces];
            v441[1] = v24;
            v25 = [NSArray arrayWithObjects:v441 count:2];

            v409 = v7;
            v26 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
            v27 = [[NEPolicy alloc] initWithOrder:v414 result:v26 conditions:v25];
            objc_opt_self();
            v412 = v9;
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v28 = qword_100229408;
            v29 = sub_100159E00(v28, *(v20 + 304), v27);

            if (![v29 unsignedIntegerValue])
            {
              v202 = *(v20 + 96);
              v203 = _NRCopyLogObjectForNRUUID();
              v415 = _NRLogIsLevelEnabled();

              if (v415)
              {
                v416 = *(v20 + 96);
                v204 = _NRCopyLogObjectForNRUUID();
                v353 = *(v20 + 304);
                v205 = v204;
                _NRLogWithArgs();
              }

              v206 = *(v20 + 96);
              v207 = _NRCopyLogObjectForNRUUID();
              v417 = _NRLogIsLevelEnabled();

              if (v417)
              {
                v208 = *(v20 + 96);
                v209 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              [v6 cancelWithReason:{@"Failed to add generalPolicyClassD %@ to session %@", v27, *(v20 + 304)}];
LABEL_119:

LABEL_125:
              v38 = 0;
              v7 = v409;
              v9 = v412;
              v3 = v407;
              goto LABEL_38;
            }

            v9 = v412;
            [v412 addObject:v29];

            [v6 setHasClassDPolicies:1];
            v3 = v407;
            v7 = v409;
            a1 = v20;
          }

          if (![v6 ikeClassCEstablished] || (objc_msgSend(v6, "hasClassCPolicies") & 1) != 0)
          {
            goto LABEL_37;
          }

          v404 = a1;
          v30 = sub_100003490();
          dispatch_assert_queue_V2(v30);

          v407 = v3;
          v22 = sub_100167B9C(v3, @"0");
          v23 = [NEPolicyCondition remoteAddress:v22 prefix:128];
          v440[0] = v23;
          v31 = +[NEPolicyCondition allInterfaces];
          v440[1] = v31;
          v25 = [NSArray arrayWithObjects:v440 count:2];

          v409 = v7;
          v26 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
          v27 = [[NEPolicy alloc] initWithOrder:v414 result:v26 conditions:v25];
          objc_opt_self();
          v412 = v9;
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v32 = qword_100229408;
          v29 = sub_100159E00(v32, *(v404 + 304), v27);

          if ([v29 unsignedIntegerValue])
          {
            v9 = v412;
            [v412 addObject:v29];

            [v6 setHasClassCPolicies:1];
            v3 = v407;
            v7 = v409;
LABEL_37:
            v38 = v9;
LABEL_38:

LABEL_39:
            goto LABEL_40;
          }

          v210 = *(v404 + 96);
          v211 = _NRCopyLogObjectForNRUUID();
          v212 = _NRLogIsLevelEnabled();

          if (v212)
          {
            v418 = *(v404 + 96);
            v213 = _NRCopyLogObjectForNRUUID();
            v354 = *(v404 + 304);
            _NRLogWithArgs();
          }

          v214 = *(v404 + 96);
          v215 = _NRCopyLogObjectForNRUUID();
          v216 = _NRLogIsLevelEnabled();

          if (v216)
          {
            v217 = *(v404 + 96);
            v218 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          [v6 cancelWithReason:{@"Failed to add generalPolicyClassC %@ to session %@", v27, *(v404 + 304)}];
          goto LABEL_119;
        }

        if ([v6 type] != 4)
        {
          goto LABEL_37;
        }

        if ([v6 ikeClassDEstablished] && (objc_msgSend(v6, "hasClassDPolicies") & 1) == 0)
        {
          v413 = v9;
          v408 = v3;
          v396 = sub_1001672A0(v3, @"61315");
          v381 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
          v439[0] = v381;
          v40 = +[NEPolicyCondition allInterfaces];
          v439[1] = v40;
          v41 = [NSArray arrayWithObjects:v439 count:2];

          v410 = v7;
          v42 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
          v43 = v414;
          v44 = [[NEPolicy alloc] initWithOrder:? result:? conditions:?];
          v45 = sub_1001599CC();
          v405 = a1;
          v46 = *(a1 + 304);
          v47 = sub_100159E00(v45, v46, v44);

          v48 = [v47 unsignedIntegerValue];
          if (v48)
          {
            v9 = v413;
            [v413 addObject:v47];
          }

          else
          {
            v229 = *(v405 + 96);
            v230 = _NRCopyLogObjectForNRUUID();
            v231 = _NRLogIsLevelEnabled();

            if (v231)
            {
              v232 = *(v405 + 96);
              v233 = _NRCopyLogObjectForNRUUID();
              v356 = *(v405 + 304);
              _NRLogWithArgs();
            }

            v234 = *(v405 + 96);
            v235 = _NRCopyLogObjectForNRUUID();
            v236 = _NRLogIsLevelEnabled();

            if (v236)
            {
              v237 = *(v405 + 96);
              v238 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v239 = *(v405 + 304);
            [v6 cancelWithReason:{@"Failed to add localConditionPolicy %@ to session %@", v44, v239}];

            v9 = v413;
            v43 = v414;
          }

          if (!v48)
          {
            goto LABEL_89;
          }

          v397 = sub_1001677D0(v408, @"61315");
          v382 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          v438[0] = v382;
          v49 = +[NEPolicyCondition allInterfaces];
          v438[1] = v49;
          v50 = [NSArray arrayWithObjects:v438 count:2];

          v51 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
          v52 = [[NEPolicy alloc] initWithOrder:v43 result:v51 conditions:v50];
          v53 = sub_1001599CC();
          v54 = *(v405 + 304);
          v55 = sub_100159E00(v53, v54, v52);

          v56 = [v55 unsignedIntegerValue];
          if (v56)
          {
            v9 = v413;
            [v413 addObject:v55];
          }

          else
          {
            v251 = *(v405 + 96);
            v252 = _NRCopyLogObjectForNRUUID();
            v253 = _NRLogIsLevelEnabled();

            if (v253)
            {
              v254 = *(v405 + 96);
              v255 = _NRCopyLogObjectForNRUUID();
              v358 = *(v405 + 304);
              _NRLogWithArgs();
            }

            v256 = *(v405 + 96);
            v257 = _NRCopyLogObjectForNRUUID();
            v258 = _NRLogIsLevelEnabled();

            if (v258)
            {
              v259 = *(v405 + 96);
              v260 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v261 = *(v405 + 304);
            [v6 cancelWithReason:{@"Failed to add remoteConditionPolicy %@ to session %@", v52, v261}];

            v9 = v413;
          }

          if (!v56)
          {
            goto LABEL_89;
          }

          v398 = sub_1001689F8(v408);
          v57 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          [NEPolicyCondition ipProtocol:58];
          v383 = v57;
          v436 = v435 = v57;
          v58 = v436;
          v59 = +[NEPolicyCondition allInterfaces];
          v437 = v59;
          v60 = [NSArray arrayWithObjects:&v435 count:3];

          v61 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
          v62 = [[NEPolicy alloc] initWithOrder:v414 result:v61 conditions:v60];
          v63 = sub_1001599CC();
          v64 = *(v405 + 304);
          v65 = sub_100159E00(v63, v64, v62);

          v66 = [v65 unsignedIntegerValue];
          if (v66)
          {
            v9 = v413;
            [v413 addObject:v65];
          }

          else
          {
            v273 = *(v405 + 96);
            v274 = _NRCopyLogObjectForNRUUID();
            v372 = _NRLogIsLevelEnabled();

            if (v372)
            {
              v370 = *(v405 + 96);
              v275 = _NRCopyLogObjectForNRUUID();
              v360 = *(v405 + 304);
              _NRLogWithArgs();
            }

            v276 = *(v405 + 96);
            v277 = _NRCopyLogObjectForNRUUID();
            LODWORD(v370) = _NRLogIsLevelEnabled();

            if (v370)
            {
              v278 = *(v405 + 96);
              v279 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v280 = *(v405 + 304);
            [v6 cancelWithReason:{@"Failed to add icmpConditionPolicy %@ to session %@", v62, v280}];

            v9 = v413;
          }

          if (!v66)
          {
            goto LABEL_89;
          }

          v3 = v408;
          v7 = v410;
          if (_NRIsAppleInternal())
          {
            v399 = [[NSString alloc] initWithUTF8String:"18999"];
            v384 = sub_1001672A0(v408, v399);
            v67 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
            v434[0] = v67;
            v68 = +[NEPolicyCondition allInterfaces];
            v434[1] = v68;
            v69 = [NSArray arrayWithObjects:v434 count:2];

            v70 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
            v71 = [[NEPolicy alloc] initWithOrder:v414 result:v70 conditions:v69];
            v72 = sub_1001599CC();
            v73 = *(v405 + 304);
            v74 = sub_100159E00(v72, v73, v71);

            v75 = [v74 unsignedIntegerValue];
            if (v75)
            {
              v9 = v413;
              [v413 addObject:v74];
            }

            else
            {
              v289 = *(v405 + 96);
              v290 = _NRCopyLogObjectForNRUUID();
              v374 = _NRLogIsLevelEnabled();

              if (v374)
              {
                v370 = *(v405 + 96);
                v291 = _NRCopyLogObjectForNRUUID();
                v362 = *(v405 + 304);
                _NRLogWithArgs();
              }

              v292 = *(v405 + 96);
              v293 = _NRCopyLogObjectForNRUUID();
              LODWORD(v370) = _NRLogIsLevelEnabled();

              if (v370)
              {
                v294 = *(v405 + 96);
                v295 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              v296 = *(v405 + 304);
              [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v71, v296}];

              v9 = v413;
            }

            if (!v75)
            {
              goto LABEL_90;
            }

            v76 = sub_1001677D0(v408, v399);
            v385 = [NEPolicyCondition remoteAddress:v76 prefix:128];
            v433[0] = v385;
            v77 = +[NEPolicyCondition allInterfaces];
            v433[1] = v77;
            v78 = [NSArray arrayWithObjects:v433 count:2];

            v79 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
            v80 = [[NEPolicy alloc] initWithOrder:v414 result:v79 conditions:v78];
            v81 = sub_1001599CC();
            v82 = *(v405 + 304);
            v83 = sub_100159E00(v81, v82, v80);

            v84 = [v83 unsignedIntegerValue];
            if (v84)
            {
              v9 = v413;
              [v413 addObject:v83];
            }

            else
            {
              v305 = *(v405 + 96);
              v306 = _NRCopyLogObjectForNRUUID();
              v376 = _NRLogIsLevelEnabled();

              if (v376)
              {
                v370 = *(v405 + 96);
                v307 = _NRCopyLogObjectForNRUUID();
                v364 = *(v405 + 304);
                _NRLogWithArgs();
              }

              v308 = *(v405 + 96);
              v309 = _NRCopyLogObjectForNRUUID();
              LODWORD(v370) = _NRLogIsLevelEnabled();

              if (v370)
              {
                v310 = *(v405 + 96);
                v311 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              v312 = *(v405 + 304);
              [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v80, v312}];

              v9 = v413;
            }

            if (!v84)
            {
              goto LABEL_90;
            }

            v85 = [[NSString alloc] initWithUTF8String:"19999"];
            v86 = sub_1001672A0(v408, v85);

            v386 = v86;
            v87 = [NEPolicyCondition localAddress:v86 prefix:128];
            v432[0] = v87;
            v88 = +[NEPolicyCondition allInterfaces];
            v432[1] = v88;
            v89 = [NSArray arrayWithObjects:v432 count:2];

            v90 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
            v91 = [[NEPolicy alloc] initWithOrder:v414 result:v90 conditions:v89];
            v92 = sub_1001599CC();
            v93 = *(v405 + 304);
            v94 = sub_100159E00(v92, v93, v91);

            v95 = [v94 unsignedIntegerValue];
            if (v95)
            {
              v9 = v413;
              [v413 addObject:v94];
            }

            else
            {
              v321 = *(v405 + 96);
              v322 = _NRCopyLogObjectForNRUUID();
              v378 = _NRLogIsLevelEnabled();

              if (v378)
              {
                v370 = *(v405 + 96);
                v323 = _NRCopyLogObjectForNRUUID();
                v366 = *(v405 + 304);
                _NRLogWithArgs();
              }

              v324 = *(v405 + 96);
              v325 = _NRCopyLogObjectForNRUUID();
              LODWORD(v370) = _NRLogIsLevelEnabled();

              if (v370)
              {
                v326 = *(v405 + 96);
                v327 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              v328 = *(v405 + 304);
              [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v91, v328}];

              v9 = v413;
            }

            if (!v95)
            {
LABEL_90:
              v3 = v408;
              v7 = v410;

LABEL_91:
              v38 = 0;
              goto LABEL_38;
            }

            v96 = [[NSString alloc] initWithUTF8String:"19999"];
            v97 = sub_1001677D0(v408, v96);

            v387 = v97;
            v98 = [NEPolicyCondition remoteAddress:v97 prefix:128];
            v431[0] = v98;
            v99 = +[NEPolicyCondition allInterfaces];
            v431[1] = v99;
            v100 = [NSArray arrayWithObjects:v431 count:2];

            v101 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
            v102 = [[NEPolicy alloc] initWithOrder:v414 result:v101 conditions:v100];
            v103 = sub_1001599CC();
            v104 = *(v405 + 304);
            v105 = sub_100159E00(v103, v104, v102);

            v106 = [v105 unsignedIntegerValue];
            if (v106)
            {
              v9 = v413;
              [v413 addObject:v105];
            }

            else
            {
              v337 = *(v405 + 96);
              v338 = _NRCopyLogObjectForNRUUID();
              v380 = _NRLogIsLevelEnabled();

              if (v380)
              {
                v370 = *(v405 + 96);
                v339 = _NRCopyLogObjectForNRUUID();
                v368 = *(v405 + 304);
                _NRLogWithArgs();
              }

              v340 = *(v405 + 96);
              v341 = _NRCopyLogObjectForNRUUID();
              LODWORD(v370) = _NRLogIsLevelEnabled();

              if (v370)
              {
                v342 = *(v405 + 96);
                v343 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              v344 = *(v405 + 304);
              [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v102, v344}];

              v9 = v413;
            }

            v3 = v408;
            v7 = v410;
            if (!v106)
            {
              goto LABEL_91;
            }
          }

          a1 = v405;
          sub_1000FC7D0(v405, 0);
          [v6 setHasClassDPolicies:1];
        }

        if (![v6 ikeClassCEstablished] || (objc_msgSend(v6, "hasClassCPolicies") & 1) != 0)
        {
          goto LABEL_37;
        }

        v411 = v9;
        v408 = v3;
        v400 = sub_1001679E0(v3, @"61315");
        v388 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
        v430[0] = v388;
        v107 = +[NEPolicyCondition allInterfaces];
        v430[1] = v107;
        v108 = [NSArray arrayWithObjects:v430 count:2];

        v410 = v7;
        v109 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
        v110 = v414;
        v111 = [[NEPolicy alloc] initWithOrder:? result:? conditions:?];
        v112 = sub_1001599CC();
        v406 = a1;
        v113 = *(a1 + 304);
        v114 = sub_100159E00(v112, v113, v111);

        v115 = [v114 unsignedIntegerValue];
        if (v115)
        {
          v9 = v411;
          [v411 addObject:v114];
        }

        else
        {
          v240 = *(v406 + 96);
          v241 = _NRCopyLogObjectForNRUUID();
          v242 = _NRLogIsLevelEnabled();

          if (v242)
          {
            v243 = *(v406 + 96);
            v244 = _NRCopyLogObjectForNRUUID();
            v357 = *(v406 + 304);
            _NRLogWithArgs();
          }

          v245 = *(v406 + 96);
          v246 = _NRCopyLogObjectForNRUUID();
          v247 = _NRLogIsLevelEnabled();

          if (v247)
          {
            v248 = *(v406 + 96);
            v249 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v250 = *(v406 + 304);
          [v6 cancelWithReason:{@"Failed to add localConditionPolicy %@ to session %@", v111, v250}];

          v9 = v411;
          v110 = v414;
        }

        if (v115)
        {
          v401 = sub_100167B9C(v408, @"61315");
          v389 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          v429[0] = v389;
          v116 = +[NEPolicyCondition allInterfaces];
          v429[1] = v116;
          v117 = [NSArray arrayWithObjects:v429 count:2];

          v118 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
          v119 = [[NEPolicy alloc] initWithOrder:v110 result:v118 conditions:v117];
          v120 = sub_1001599CC();
          v121 = *(v406 + 304);
          v122 = sub_100159E00(v120, v121, v119);

          v123 = [v122 unsignedIntegerValue];
          if (v123)
          {
            v9 = v411;
            [v411 addObject:v122];
          }

          else
          {
            v262 = *(v406 + 96);
            v263 = _NRCopyLogObjectForNRUUID();
            v264 = _NRLogIsLevelEnabled();

            if (v264)
            {
              v265 = *(v406 + 96);
              v266 = _NRCopyLogObjectForNRUUID();
              v359 = *(v406 + 304);
              _NRLogWithArgs();
            }

            v267 = *(v406 + 96);
            v268 = _NRCopyLogObjectForNRUUID();
            v269 = _NRLogIsLevelEnabled();

            if (v269)
            {
              v270 = *(v406 + 96);
              v271 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v272 = *(v406 + 304);
            [v6 cancelWithReason:{@"Failed to add remoteConditionPolicy %@ to session %@", v119, v272}];

            v9 = v411;
          }

          if (v123)
          {
            v402 = sub_100168A4C(v408);
            v124 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
            [NEPolicyCondition ipProtocol:58];
            v390 = v124;
            v427 = v426 = v124;
            v125 = v427;
            v126 = +[NEPolicyCondition allInterfaces];
            v428 = v126;
            v127 = [NSArray arrayWithObjects:&v426 count:3];

            v128 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
            v129 = [[NEPolicy alloc] initWithOrder:v414 result:v128 conditions:v127];
            v130 = sub_1001599CC();
            v131 = *(v406 + 304);
            v132 = sub_100159E00(v130, v131, v129);

            v133 = [v132 unsignedIntegerValue];
            if (v133)
            {
              v9 = v411;
              [v411 addObject:v132];
            }

            else
            {
              v281 = *(v406 + 96);
              v282 = _NRCopyLogObjectForNRUUID();
              v373 = _NRLogIsLevelEnabled();

              if (v373)
              {
                v371 = *(v406 + 96);
                v283 = _NRCopyLogObjectForNRUUID();
                v361 = *(v406 + 304);
                _NRLogWithArgs();
              }

              v284 = *(v406 + 96);
              v285 = _NRCopyLogObjectForNRUUID();
              LODWORD(v371) = _NRLogIsLevelEnabled();

              if (v371)
              {
                v286 = *(v406 + 96);
                v287 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              v288 = *(v406 + 304);
              [v6 cancelWithReason:{@"Failed to add icmpConditionPolicy %@ to session %@", v129, v288}];

              v9 = v411;
            }

            if (v133)
            {
              v3 = v408;
              v7 = v410;
              if (!_NRIsAppleInternal())
              {
LABEL_88:
                [v6 setHasClassCPolicies:{1, v371}];
                v9 = v411;
                goto LABEL_37;
              }

              v399 = [[NSString alloc] initWithUTF8String:"18999"];
              v391 = sub_1001679E0(v408, v399);
              v134 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
              v425[0] = v134;
              v135 = +[NEPolicyCondition allInterfaces];
              v425[1] = v135;
              v136 = [NSArray arrayWithObjects:v425 count:2];

              v137 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
              v138 = [[NEPolicy alloc] initWithOrder:v414 result:v137 conditions:v136];
              v139 = sub_1001599CC();
              v140 = *(v406 + 304);
              v141 = sub_100159E00(v139, v140, v138);

              v142 = [v141 unsignedIntegerValue];
              if (v142)
              {
                v9 = v411;
                [v411 addObject:v141];
              }

              else
              {
                v297 = *(v406 + 96);
                v298 = _NRCopyLogObjectForNRUUID();
                v375 = _NRLogIsLevelEnabled();

                if (v375)
                {
                  v371 = *(v406 + 96);
                  v299 = _NRCopyLogObjectForNRUUID();
                  v363 = *(v406 + 304);
                  _NRLogWithArgs();
                }

                v300 = *(v406 + 96);
                v301 = _NRCopyLogObjectForNRUUID();
                LODWORD(v371) = _NRLogIsLevelEnabled();

                if (v371)
                {
                  v302 = *(v406 + 96);
                  v303 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

                v304 = *(v406 + 304);
                [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v138, v304}];

                v9 = v411;
              }

              if (v142)
              {
                v143 = sub_100167B9C(v408, v399);
                v392 = [NEPolicyCondition remoteAddress:v143 prefix:128];
                v424[0] = v392;
                v144 = +[NEPolicyCondition allInterfaces];
                v424[1] = v144;
                v145 = [NSArray arrayWithObjects:v424 count:2];

                v146 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
                v147 = [[NEPolicy alloc] initWithOrder:v414 result:v146 conditions:v145];
                v148 = sub_1001599CC();
                v149 = *(v406 + 304);
                v150 = sub_100159E00(v148, v149, v147);

                v151 = [v150 unsignedIntegerValue];
                if (v151)
                {
                  v9 = v411;
                  [v411 addObject:v150];
                }

                else
                {
                  v313 = *(v406 + 96);
                  v314 = _NRCopyLogObjectForNRUUID();
                  v377 = _NRLogIsLevelEnabled();

                  if (v377)
                  {
                    v371 = *(v406 + 96);
                    v315 = _NRCopyLogObjectForNRUUID();
                    v365 = *(v406 + 304);
                    _NRLogWithArgs();
                  }

                  v316 = *(v406 + 96);
                  v317 = _NRCopyLogObjectForNRUUID();
                  LODWORD(v371) = _NRLogIsLevelEnabled();

                  if (v371)
                  {
                    v318 = *(v406 + 96);
                    v319 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  v320 = *(v406 + 304);
                  [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v147, v320}];

                  v9 = v411;
                }

                if (v151)
                {
                  v152 = [[NSString alloc] initWithUTF8String:"19999"];
                  v153 = sub_1001679E0(v408, v152);

                  v393 = v153;
                  v154 = [NEPolicyCondition localAddress:v153 prefix:128];
                  v423[0] = v154;
                  v155 = +[NEPolicyCondition allInterfaces];
                  v423[1] = v155;
                  v156 = [NSArray arrayWithObjects:v423 count:2];

                  v157 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
                  v158 = [[NEPolicy alloc] initWithOrder:v414 result:v157 conditions:v156];
                  v159 = sub_1001599CC();
                  v160 = *(v406 + 304);
                  v161 = sub_100159E00(v159, v160, v158);

                  v162 = [v161 unsignedIntegerValue];
                  if (v162)
                  {
                    v9 = v411;
                    [v411 addObject:v161];
                  }

                  else
                  {
                    v329 = *(v406 + 96);
                    v330 = _NRCopyLogObjectForNRUUID();
                    v379 = _NRLogIsLevelEnabled();

                    if (v379)
                    {
                      v371 = *(v406 + 96);
                      v331 = _NRCopyLogObjectForNRUUID();
                      v367 = *(v406 + 304);
                      _NRLogWithArgs();
                    }

                    v332 = *(v406 + 96);
                    v333 = _NRCopyLogObjectForNRUUID();
                    LODWORD(v371) = _NRLogIsLevelEnabled();

                    if (v371)
                    {
                      v334 = *(v406 + 96);
                      v335 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs();
                    }

                    v336 = *(v406 + 304);
                    [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v158, v336}];

                    v9 = v411;
                  }

                  if (v162)
                  {
                    v163 = [[NSString alloc] initWithUTF8String:"19999"];
                    v164 = sub_100167B9C(v408, v163);

                    v394 = v164;
                    v165 = [NEPolicyCondition remoteAddress:v164 prefix:128];
                    v422[0] = v165;
                    v166 = +[NEPolicyCondition allInterfaces];
                    v422[1] = v166;
                    v167 = [NSArray arrayWithObjects:v422 count:2];

                    v168 = [NEPolicyResult tunnelIPToInterfaceName:v410 secondaryResultType:0];
                    v169 = [[NEPolicy alloc] initWithOrder:v414 result:v168 conditions:v167];
                    v170 = sub_1001599CC();
                    v171 = *(v406 + 304);
                    v172 = sub_100159E00(v170, v171, v169);

                    v173 = [v172 unsignedIntegerValue];
                    if (v173)
                    {
                      [v411 addObject:v172];
                    }

                    else
                    {
                      v345 = *(v406 + 96);
                      v346 = _NRCopyLogObjectForNRUUID();
                      v419 = _NRLogIsLevelEnabled();

                      if (v419)
                      {
                        v420 = *(v406 + 96);
                        v347 = _NRCopyLogObjectForNRUUID();
                        v369 = *(v406 + 304);
                        _NRLogWithArgs();
                      }

                      v348 = *(v406 + 96);
                      v349 = _NRCopyLogObjectForNRUUID();
                      v421 = _NRLogIsLevelEnabled();

                      if (v421)
                      {
                        v350 = *(v406 + 96);
                        v351 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs();
                      }

                      v352 = *(v406 + 304);
                      [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v169, v352}];
                    }

                    v3 = v408;
                    v7 = v410;
                    if (v173)
                    {
                      goto LABEL_88;
                    }

LABEL_108:
                    v38 = 0;
                    v9 = v411;
                    goto LABEL_38;
                  }
                }
              }

              goto LABEL_90;
            }
          }
        }

LABEL_89:
        v38 = 0;
        v3 = v408;
        v7 = v410;
        goto LABEL_38;
      }

      v197 = sub_1000E83DC();
      v198 = _NRLogIsLevelEnabled();

      if (v198)
      {
        v199 = sub_1000E83DC();
        _NRLogWithArgs();
      }
    }

    else
    {
      v194 = sub_1000E83DC();
      v195 = _NRLogIsLevelEnabled();

      if (v195)
      {
        v196 = sub_1000E83DC();
        _NRLogWithArgs();
      }
    }

    v6 = _os_log_pack_size();
    __chkstk_darwin();
    v200 = *__error();
    v201 = _os_log_pack_fill();
    *v201 = 136446210;
    *(v201 + 4) = "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
    goto LABEL_108;
  }

  v174 = *(a1 + 96);
  v175 = _NRCopyLogObjectForNRUUID();
  v176 = _NRLogIsLevelEnabled();

  if (v176)
  {
    v177 = *(a1 + 96);
    v178 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v179 = *(a1 + 96);
  v180 = _NRCopyLogObjectForNRUUID();
  v181 = _NRLogIsLevelEnabled();

  if (v181)
  {
    v182 = *(a1 + 96);
    v183 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  [v6 cancelWithReason:@"Failed to get virtual interface to set IP tunnel policies"];
  v38 = 0;
LABEL_40:

  return v38;
}

void sub_10010D154(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if ((*(a1 + 38) & 1) == 0 && (*(a1 + 47) & 1) == 0 && (*(a1 + 43) & 1) == 0)
  {
    v2 = objc_alloc_init(NSMutableArray);
    objc_opt_self();
    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v60 = xmmword_100196400;
    v4 = [[NSData alloc] initWithBytes:&v60 length:16];
    v5 = sub_100167F00(NRDLocalDevice, v4, @"0");

    v6 = [NEPolicyCondition remoteAddress:v5 prefix:64];
    v7 = [NEPolicyCondition ipProtocol:58];
    v65[0] = v6;
    v65[1] = v7;
    v8 = +[NEPolicyCondition allInterfaces];
    v65[2] = v8;
    v9 = [NSArray arrayWithObjects:v65 count:3];

    v10 = [NEPolicyResult skipWithOrder:220];
    v11 = [[NEPolicy alloc] initWithOrder:200 result:v10 conditions:v9];
    objc_opt_self();
    v59 = v2;
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v12 = qword_100229408;
    v13 = sub_100159E00(v12, *(a1 + 304), v11);

    [v59 addObject:v13];
    objc_opt_self();
    v14 = sub_100003490();
    dispatch_assert_queue_V2(v14);

    v60 = xmmword_100196400;
    v15 = [[NSData alloc] initWithBytes:&v60 length:16];
    v16 = sub_100167F00(NRDLocalDevice, v15, @"0");

    v17 = [NEPolicyCondition remoteAddress:v16 prefix:64];
    v18 = +[NEPolicyCondition platformBinary];
    v64[0] = v17;
    v64[1] = v18;
    v19 = +[NEPolicyCondition allInterfaces];
    v64[2] = v19;
    v20 = [NSArray arrayWithObjects:v64 count:3];

    v21 = [NEPolicyResult skipWithOrder:220];
    v22 = [[NEPolicy alloc] initWithOrder:200 result:v21 conditions:v20];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v23 = qword_100229408;
    v24 = sub_100159E00(v23, *(a1 + 304), v22);

    [v59 addObject:v24];
    v25 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
    v26 = +[NEPolicyCondition platformBinary];
    v63[0] = v25;
    v63[1] = v26;
    v27 = +[NEPolicyCondition allInterfaces];
    v63[2] = v27;
    v28 = [NSArray arrayWithObjects:v63 count:3];

    v29 = [NEPolicyResult skipWithOrder:220];
    v30 = [[NEPolicy alloc] initWithOrder:200 result:v29 conditions:v28];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v31 = qword_100229408;
    v32 = sub_100159E00(v31, *(a1 + 304), v30);

    [v59 addObject:v32];
    v33 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
    v34 = +[NEPolicyCondition platformBinary];
    v62[0] = v33;
    v62[1] = v34;
    v35 = +[NEPolicyCondition allInterfaces];
    v62[2] = v35;
    v36 = [NSArray arrayWithObjects:v62 count:3];

    v37 = [NEPolicyResult skipWithOrder:220];
    v38 = [[NEPolicy alloc] initWithOrder:200 result:v37 conditions:v36];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v39 = qword_100229408;
    v40 = sub_100159E00(v39, *(a1 + 304), v38);

    [v59 addObject:v40];
    v41 = [[NSUUID alloc] initWithUUIDString:@"4946eeba-8277-69b4-e898-d635c8fde872"];
    v61 = v41;
    v42 = [NSArray arrayWithObjects:&v61 count:1];
    sub_10010D97C(a1, v42, v59, @"4946eeba-8277-69b4-e898-d635c8fde872");

    if (_NRIsAppleInternal())
    {
      v43 = sub_10013A6D4(@"com.apple.Home");
      v44 = [v43 count];
      v45 = *(a1 + 96);
      v46 = _NRCopyLogObjectForNRUUID();
      if (v44)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v48 = *(a1 + 96);
          v49 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        sub_10010D97C(a1, v43, v59, @"com.apple.Home");
      }

      else
      {
        v50 = _NRLogIsLevelEnabled();

        if (v50)
        {
          v51 = *(a1 + 96);
          v52 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v53 = qword_100229408;
    sub_10015A52C(v53);

    *(a1 + 38) = 1;
    [v59 addObjectsFromArray:*(a1 + 272)];
    objc_storeStrong((a1 + 272), v59);
    v54 = *(a1 + 96);
    v55 = _NRCopyLogObjectForNRUUID();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      v57 = *(a1 + 96);
      v58 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

void sub_10010D97C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v27 = a3;
  v24 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [NEPolicyCondition effectiveApplication:*(*(&v28 + 1) + 8 * v10), v23];
        v12 = +[NEPolicyCondition allInterfaces];
        v32[0] = v12;
        v32[1] = v11;
        v13 = [NSArray arrayWithObjects:v32 count:2];

        v14 = [NEPolicyResult skipWithOrder:220];
        v15 = [[NEPolicy alloc] initWithOrder:200 result:v14 conditions:v13];
        if (v15)
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v16 = qword_100229408;
          v17 = sub_100159E00(v16, *(a1 + 304), v15);

          [v27 addObject:v17];
          goto LABEL_10;
        }

        v18 = *(a1 + 96);
        v19 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v21 = *(a1 + 96);
          v17 = _NRCopyLogObjectForNRUUID();
          v23 = v24;
          _NRLogWithArgs();
LABEL_10:
        }

        if (!v15)
        {
          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      v8 = v22;
    }

    while (v22);
  }

LABEL_17:
}

uint64_t sub_10010DC08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nw_quic_migration_info_create();
  [v5 UTF8String];
  v8 = nw_interface_create_with_name();
  nw_quic_migration_info_set_interface();
  v9 = [v6 copyCEndpoint];

  nw_quic_migration_info_set_remote_endpoint();
  v10 = *(a1 + 136);
  v11 = nw_agent_create_with_quic_migration_info();
  v12 = nw_quic_migration_info_copy_data();
  nw_agent_change_state();

  return v11;
}

id sub_10010DCE4(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  if (a2)
  {
    v7 = +[NEPolicyCondition allInterfaces];
    v28[0] = v7;
    objc_opt_self();
    v8 = [NEPolicyCondition clientFlags:0x10000000];
    v28[1] = v8;
    v9 = [NSArray arrayWithObjects:v28 count:2];
    [v6 addObject:v9];
  }

  v10 = +[NEPolicyCondition allInterfaces];
  v27[0] = v10;
  objc_opt_self();
  v11 = [NEPolicyCondition clientFlags:0x40000000];
  v27[1] = v11;
  v12 = [NSArray arrayWithObjects:v27 count:2];
  [v6 addObject:v12];

  v13 = +[NEPolicyCondition allInterfaces];
  v26[0] = v13;
  objc_opt_self();
  v14 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
  v26[1] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:2];
  [v6 addObject:v15];

  if (a3)
  {
    v16 = +[NEPolicyCondition allInterfaces];
    v25[0] = v16;
    v17 = +[NEPolicyCondition isSystemProxyConnection];
    v25[1] = v17;
    v18 = [NEPolicyCondition flowIPProtocol:17];
    v25[2] = v18;
    v19 = [NSArray arrayWithObjects:v25 count:3];
    [v6 addObject:v19];
  }

  if (*(a1 + 48) == 1 && a2)
  {
    v20 = +[NEPolicyCondition allInterfaces];
    objc_opt_self();
    v21 = [NEPolicyCondition clientFlags:536879104, v20];
    v24[1] = v21;
    v22 = [NSArray arrayWithObjects:v24 count:2];
    [v6 addObject:v22];
  }

  return v6;
}

id sub_10010DFA8(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  v7 = sub_10010DCE4(a1, a2, a3);
  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  v8 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v9 = v8;
  if (v8)
  {
    if ((*(v8 + 12) & 1) == 0)
    {
      v21 = 0uLL;
      sub_1001727AC(v8, &v21);
      objc_opt_self();
      if (WORD5(v21))
      {
        if (WORD6(v21))
        {
          if ((*(v9 + 12) & 1) == 0)
          {
            v21 = 0uLL;
            sub_100167D5C(v9, &v21);
            objc_opt_self();
            if (WORD5(v21))
            {
              if (WORD6(v21))
              {
                v11 = sub_100003490();
                dispatch_assert_queue_V2(v11);

                v12 = sub_1001677D0(v9, @"0");
                v13 = [NEPolicyCondition flowRemoteAddress:v12 prefix:128];

                v14 = +[NEPolicyCondition allInterfaces];
                v23[0] = v14;
                v23[1] = v13;
                v15 = [NSArray arrayWithObjects:v23 count:2];
                [v6 addObject:v15];

                v16 = sub_100003490();
                dispatch_assert_queue_V2(v16);

                v17 = sub_100167B9C(v9, @"0");
                v18 = [NEPolicyCondition flowRemoteAddress:v17 prefix:128];

                v19 = +[NEPolicyCondition allInterfaces];
                v22[0] = v19;
                v22[1] = v18;
                v20 = [NSArray arrayWithObjects:v22 count:2];
                [v6 addObject:v20];
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_10010E200(uint64_t a1)
{
  v1 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 144);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ([v4 hasCompanionDatapath])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100169428(v2);
  }

  return v5;
}

void sub_10010E27C(uint64_t a1)
{
  if (*(a1 + 488) || !sub_10010E200(a1))
  {
    return;
  }

  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v34 = v2;
  if (v2)
  {
    v3 = *(v2 + 144);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 usesTLS];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = sub_100144910(v6, *(a1 + 136));
  *(a1 + 488) = v7;
  if (!v7)
  {
    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      _NRLogWithArgs();
    }

    goto LABEL_31;
  }

  objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  v35 = xmmword_100196400;
  v9 = [[NSData alloc] initWithBytes:&v35 length:16];
  v10 = sub_100167F00(NRDLocalDevice, v9, @"0");

  v11 = *(a1 + 488);
  v12 = [v10 hostname];
  NEVirtualInterfaceAddIPv6Route();

  v13 = *(a1 + 488);
  NEVirtualInterfaceSetIPv6Router();
  v14 = *(a1 + 488);
  NEVirtualInterfaceSetRankNever();
  if (v5)
  {
    v15 = *(a1 + 488);
    NEVirtualInterfaceEnableFlowswitch();
  }

  v16 = *(a1 + 488);
  v17 = NEVirtualInterfaceCopyName();
  if (sub_10013AD6C(v17, 8) & 1) != 0 || (!v34 ? (v18 = 0) : (v18 = v34[18]), v19 = v18, v20 = [v19 usesTLS], v19, (v20))
  {
    if (sub_10013B900(v17))
    {
      sub_100107A24(a1, v17);
      v21 = *(a1 + 96);
      v22 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v24 = *(a1 + 96);
        v25 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      goto LABEL_30;
    }

    v26 = *(a1 + 96);
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = *(a1 + 96);
    v30 = _NRCopyLogObjectForNRUUID();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
LABEL_28:
      v32 = *(a1 + 96);
      v33 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  sub_10010EE28(a1);
LABEL_30:

LABEL_31:
}

void sub_10010E5CC(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = sub_100163A30(NRDLocalDevice, v6);
  if (!v7)
  {
    v45 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v20 = "[NRDDeviceConductor updateProxyAgentForNRUUID:]";
    if (IsLevelEnabled)
    {
      v47 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    v6 = _os_log_pack_size();
    v8 = (&v54 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v48 = *__error();
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "[NRDDeviceConductor updateProxyAgentForNRUUID:]";
    sub_1000E83DC();
    v25 = _NRLogAbortWithPack();
    goto LABEL_28;
  }

  v8 = v7;
  if (sub_100140C44(v7))
  {
    v9 = v8[18];
    v10 = [v9 hasPoliciesForProxyCriteria];

    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 504);
      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = v11;
      v13 = *(a1 + 504);
      v14 = v8[12];
      v15 = v14;
      if (v13 == v14)
      {

        goto LABEL_24;
      }

      v16 = *(a1 + 504);
      v17 = v8[12];
      v18 = [v16 isEqual:v17];

      if ((v18 & 1) == 0)
      {
LABEL_7:
        sub_10010EC78(a1);
        objc_storeStrong((a1 + 504), v8[12]);
        if (*(a1 + 504))
        {
          v62 = 0;
          v63 = 0;
          v61 = 0;
          v19 = *(a1 + 488);
          v20 = NEVirtualInterfaceCopyName();
          v21 = *(a1 + 504);
          v22 = [a1 description];
          v23 = sub_1001428D4(v8, v21, v20, &v62, &v63, &v61, 0, v22);

          if ((v23 & 1) == 0)
          {
            v44 = *(a1 + 504);
            *(a1 + 504) = 0;

            v4 = v62;
            objc_storeStrong((a1 + 512), v62);
            v2 = v63;
            objc_storeStrong((a1 + 520), v63);
            objc_storeStrong((a1 + 528), v61);
            goto LABEL_23;
          }

          v4 = v62;
          objc_storeStrong((a1 + 512), v62);
          v2 = v63;
          objc_storeStrong((a1 + 520), v63);
          objc_storeStrong((a1 + 528), v61);
          if (!*(a1 + 528))
          {
LABEL_23:

            goto LABEL_24;
          }

          v24 = *(a1 + 568);
          v2 = v2;
          v3 = v20;
          v25 = v24;
          if (v2)
          {
            v59 = v25;
            if (v25)
            {
              v60 = objc_alloc_init(NSMutableArray);
              v26 = +[NEPolicyCondition allInterfaces];
              v66 = v26;
              v27 = [NSArray arrayWithObjects:&v66 count:1];

              v58 = v3;
              v28 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v3];
              [v28 setNetworkAgentUUID:v2];
              v55 = v28;
              v65 = v28;
              v29 = [NSArray arrayWithObjects:&v65 count:1];
              v30 = [NEPolicyResult routeRules:v29];

              v54 = v30;
              v57 = v27;
              v31 = [[NEPolicy alloc] initWithOrder:10 result:v30 conditions:v27];
              objc_opt_self();
              v56 = v4;
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v32 = qword_100229408;
              v33 = sub_100159E00(v32, v59, v31);

              [v60 addObject:v33];
              v34 = [NEPolicy alloc];
              v35 = [NEPolicyResult netAgentUUID:v2];
              v36 = [NEPolicyCondition scopedInterface:v58];
              v64 = v36;
              v37 = [NSArray arrayWithObjects:&v64 count:1];
              v38 = [v34 initWithOrder:10 result:v35 conditions:v37];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v39 = qword_100229408;
              v40 = v59;
              v41 = sub_100159E00(v39, v59, v38);

              [v60 addObject:v41];
              objc_opt_self();
              v42 = v58;
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v4 = v56;
              v43 = qword_100229408;
              sub_10015A52C(v43);
            }

            else
            {
              v42 = v3;
              v52 = sub_100140094();
              v53 = _NRLogIsLevelEnabled();

              if (!v53)
              {
                v60 = 0;
                v40 = v59;
                goto LABEL_20;
              }

              v57 = sub_100140094();
              _NRLogWithArgs();
              v60 = 0;
              v40 = v59;
            }

            goto LABEL_19;
          }

LABEL_28:
          v40 = v25;
          v42 = v3;
          v50 = sub_100140094();
          v51 = _NRLogIsLevelEnabled();

          if (!v51)
          {
            v60 = 0;
            goto LABEL_20;
          }

          v57 = sub_100140094();
          _NRLogWithArgs();
          v60 = 0;
LABEL_19:

LABEL_20:
          goto LABEL_23;
        }
      }
    }
  }

LABEL_24:
}

void sub_10010EC78(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    [v2 unregisterNetworkAgent];
    v3 = *(a1 + 512);
    *(a1 + 512) = 0;
  }

  if (*(a1 + 528))
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, *(a1 + 568));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    sub_10015A52C(v5);

    v6 = *(a1 + 528);
    nw_proxy_config_unpublish();
    v7 = *(a1 + 528);
    *(a1 + 528) = 0;

    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      _NRLogWithArgs();
    }
  }

  v8 = *(a1 + 504);
  *(a1 + 504) = 0;

  v9 = *(a1 + 520);
  *(a1 + 520) = 0;
}

void sub_10010EE28(uint64_t a1)
{
  if (*(a1 + 488))
  {
    sub_10010EC78(a1);
    sub_100101F8C(a1);
    v2 = *(a1 + 488);
    v10 = NEVirtualInterfaceCopyName();
    v3 = *(a1 + 488);
    NEVirtualInterfaceInvalidate();
    v4 = *(a1 + 488);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 488) = 0;
    *(a1 + 59) = 0;
    v5 = *(a1 + 96);
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = *(a1 + 96);
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

void sub_10010F970(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 96);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    *(a1 + 40);
    _NRLogWithArgs();
  }
}

void sub_10010FA5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 14) == 1)
  {
    *(v1 + 52) = 0;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 96);
    }

    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[12];
      }

      v8 = v7;
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 15);
        v12 = *(v10 + 26);
      }

      _NRLogWithArgs();
    }

    v13 = *(a1 + 32);
    if (v13 && ((*(v13 + 15) & 1) != 0 || *(v13 + 26) == 1))
    {
      dispatch_assert_queue_V2(*(v13 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v14 = qword_1002290B8;
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 6);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = v17[7];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        goto LABEL_21;
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v21 = qword_1002290B8;
      v22 = v21;
      v23 = v21 ? *(v21 + 12) : 0;
      v24 = v23;
      v25 = sub_10007401C(v24, 0);

      if (v25)
      {
        v26 = sub_1000EA2C8(*(a1 + 32), 2, 102);
        if (v26)
        {
          v27 = v26;
          v28 = [v26 state];

          if (v28 != 255)
          {
LABEL_21:
            v20 = *(a1 + 32);
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10010FCFC;
            v29[3] = &unk_1001FD3C8;
            v29[4] = v20;
            sub_1000EF670(v20, 1, 1, 0, 0, v29);
          }
        }
      }
    }
  }
}

uint64_t sub_10010FCFC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 26) = 0;
  }

  return result;
}

_BYTE *sub_10010FE38(_BYTE *result)
{
  if (!result || result[12] != 1)
  {
    return result;
  }

  v1 = *(result + 30);
  if (v1)
  {
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_alloc_init(NWNetworkOfInterestManager);
  v4 = *(v2 + 30);
  *(v2 + 30) = v3;

  v5 = *(v2 + 30);
  if (v5)
  {
    v6 = *(v2 + 17);
    v7 = v5;
    [v7 setQueue:v6];

    [*(v2 + 30) setDelegate:v2];
    v1 = *(v2 + 30);
LABEL_6:

    return [v1 trackNOIAnyForInterfaceType:1 options:0];
  }

  if (qword_100229160 != -1)
  {
    dispatch_once(&qword_100229160, &stru_1001FBC40);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    return _NRLogWithArgs();
  }

  return result;
}

void sub_100110508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (!v5 || *(v5 + 8) != 2)
      {
        goto LABEL_9;
      }

      v7 = *(v5 + 3);
      v8 = [v7 port];
      v9 = sub_10013D308(v7, [v8 intValue], 0);

      NRTLVAddData();
      v10 = *(v5 + 4);
      v11 = *(v5 + 4);

      if (v11)
      {
        v12 = *(v5 + 4);
        NRTLVAddData();
      }

      NRTLVAdd();
      if (v10 == 1)
      {
LABEL_9:
        NRTLVAdd();
      }
    }
  }
}

void sub_100110688(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 576), 0);
  }
}

void sub_10011069C(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 600), 0);
  }
}

void sub_100110754(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 14) == 1 && *(v2 + 50) == 1)
  {
    v4 = *(v2 + 96);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[12];
      }

      v8 = v7;
      v9 = _NRCopyLogObjectForNRUUID();
      v11 = *(a1 + 40);
      _NRLogWithArgs();
    }

    v10 = *(a1 + 32);

    sub_100104BB4(v10);
  }
}

char *sub_100110920(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    v72 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    v74 = sub_1000E83DC();
    v75 = _NRLogIsLevelEnabled();

    if (v75)
    {
LABEL_17:
      v76 = sub_1000E83DC();
      _NRLogWithArgs();

      v70 = 0;
      goto LABEL_13;
    }

LABEL_18:
    v70 = 0;
    goto LABEL_13;
  }

  v83.receiver = a1;
  v83.super_class = NRDDeviceConductor;
  v9 = objc_msgSendSuper2(&v83, "init");
  if (!v9)
  {
    v77 = sub_1000E83DC();
    v78 = _NRLogIsLevelEnabled();

    v10 = "[NRDDeviceConductor initConductorWithNRUUID:queue:]";
    if (v78)
    {
      v79 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    v6 = _os_log_pack_size();
    v8 = &v82 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = *__error();
    v81 = _os_log_pack_fill();
    *v81 = 136446210;
    *(v81 + 4) = "[NRDDeviceConductor initConductorWithNRUUID:queue:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
    goto LABEL_22;
  }

  v10 = v9;
  objc_storeStrong(v9 + 12, a2);
  objc_storeStrong(v10 + 17, a3);
  dispatch_assert_queue_V2(*(v10 + 17));
  v11 = *(v10 + 30);
  *(v10 + 30) = 0;

  v12 = objc_alloc_init(NSMutableSet);
  v13 = *(v10 + 18);
  *(v10 + 18) = v12;

  v10[14] = 0;
  v14 = objc_alloc_init(NSMutableSet);
  v15 = *(v10 + 25);
  *(v10 + 25) = v14;

  v16 = objc_alloc_init(NSMutableSet);
  v17 = *(v10 + 23);
  *(v10 + 23) = v16;

  v18 = objc_alloc_init(NSMutableSet);
  v19 = *(v10 + 26);
  *(v10 + 26) = v18;

  v20 = objc_alloc_init(NSMutableArray);
  v21 = *(v10 + 34);
  *(v10 + 34) = v20;

  v10[25] = 1;
  v10[39] = 1;
  v22 = @"Policy";
  v23 = [NSString alloc];
  v24 = [*(v10 + 12) UUIDString];
  v25 = [v23 initWithFormat:@"NRDDC-%@-%@", v24, @"Policy"];

  v26 = *(v10 + 38);
  *(v10 + 38) = v25;

  v27 = @"NetInfo";
  v28 = [NSString alloc];
  v29 = [*(v10 + 12) UUIDString];
  v30 = [v28 initWithFormat:@"NRDDC-%@-%@", v29, @"NetInfo"];

  v31 = *(v10 + 39);
  *(v10 + 39) = v30;

  v32 = @"CmpnNWDesc";
  v33 = [NSString alloc];
  v34 = [*(v10 + 12) UUIDString];
  v35 = [v33 initWithFormat:@"NRDDC-%@-%@", v34, @"CmpnNWDesc"];

  v36 = *(v10 + 40);
  *(v10 + 40) = v35;

  v37 = @"CmpnLnkMon";
  v38 = [NSString alloc];
  v39 = [*(v10 + 12) UUIDString];
  v40 = [v38 initWithFormat:@"NRDDC-%@-%@", v39, @"CmpnLnkMon"];

  v41 = *(v10 + 70);
  *(v10 + 70) = v40;

  v42 = @"flowDivert";
  v43 = [NSString alloc];
  v44 = [*(v10 + 12) UUIDString];
  v45 = [v43 initWithFormat:@"NRDDC-%@-%@", v44, @"flowDivert"];

  v46 = *(v10 + 41);
  *(v10 + 41) = v45;

  v47 = @"cmpnAgentRemoval";
  v48 = [NSString alloc];
  v49 = [*(v10 + 12) UUIDString];
  v50 = [v48 initWithFormat:@"NRDDC-%@-%@", v49, @"cmpnAgentRemoval"];

  v51 = *(v10 + 43);
  *(v10 + 43) = v50;

  v52 = @"proxyConfig";
  v53 = [NSString alloc];
  v54 = [*(v10 + 12) UUIDString];
  v55 = [v53 initWithFormat:@"NRDDC-%@-%@", v54, @"proxyConfig"];

  v56 = *(v10 + 71);
  *(v10 + 71) = v55;

  v57 = @"trafficDrop";
  v58 = [NSString alloc];
  v59 = [*(v10 + 12) UUIDString];
  v60 = [v58 initWithFormat:@"NRDDC-%@-%@", v59, @"trafficDrop"];

  v61 = *(v10 + 44);
  *(v10 + 44) = v60;

  objc_opt_self();
  if (qword_100228F50 != -1)
  {
LABEL_22:
    dispatch_once(&qword_100228F50, &stru_1001FA740);
  }

  v62 = qword_100228F48;
  v63 = *(v10 + 12);
  if (v62)
  {
    dispatch_assert_queue_V2(*(v62 + 1));
    v64 = [*(v62 + 2) objectForKeyedSubscript:v63];
    if (v64)
    {
      v65 = v64;
      v66 = _NRCopyLogObjectForNRUUID();
      v67 = _NRLogIsLevelEnabled();

      if (v67)
      {
        v68 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v65 = objc_alloc_init(NSMutableDictionary);
      [*(v62 + 2) setObject:v65 forKeyedSubscript:v63];
    }
  }

  v69 = [v10 description];
  sub_1000059A8(*(v10 + 12), 1500, 0, v69);

  a1 = v10;
  v70 = a1;
LABEL_13:

  return v70;
}

void sub_100110FD4(id val)
{
  if ((*(val + 10) & 1) == 0)
  {
    v8[3] = v1;
    v8[4] = v2;
    if (*(val + 49) != 1 || _os_feature_enabled_impl())
    {
      objc_initWeak(v8, val);
      v4 = *(val + 17);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001110BC;
      block[3] = &unk_1001FD0D8;
      block[4] = val;
      v5 = v4;
      objc_copyWeak(&v7, v8);
      dispatch_async(v5, block);

      objc_destroyWeak(&v7);
      objc_destroyWeak(v8);
    }
  }
}

void sub_1001110BC(uint64_t a1)
{
  objc_opt_self();
  *(*(a1 + 32) + 10) = 1;
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001111C4;
  v3[3] = &unk_1001FC730;
  objc_copyWeak(&v4, (a1 + 40));
  sub_1000C95D8(v2, v3);

  objc_destroyWeak(&v4);
}

void sub_1001111C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v12 = WeakRetained;
    v2 = *(WeakRetained + 12);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(v12 + 12);
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    dispatch_assert_queue_V2(*(v12 + 17));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v7 = qword_1002290B8;
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 6);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = v10[3];
      dispatch_assert_queue_V2(v11);

      if ((*(v10 + 36) & 1) == 0 && *(v10 + 3) != 1004)
      {
        *(v10 + 36) = 1;
        sub_10017FDF0(v10, 1);
      }
    }

    WeakRetained = v12;
  }
}

void sub_100111330(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v2)
  {
    v77 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v79 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v80 = *__error();
    v81 = _os_log_pack_fill();
    *v81 = 136446210;
    *(v81 + 4) = "[NRDDeviceConductor updateOperatingMode]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v84 = v2;
  v3 = *(a1 + 96);
  v4 = _NRCopyLogObjectForNRUUID();
  v5 = _NRLogIsLevelEnabled();

  if (v5)
  {
    v6 = *(a1 + 96);
    v7 = _NRCopyLogObjectForNRUUID();
    v82 = *(v84 + 144);
    _NRLogWithArgs();
  }

  if ((*(v84 + 48) & 8) == 0)
  {
    v8 = *(v84 + 144);

    if (!v8)
    {
      *(a1 + 55) = 257;
      *(a1 + 49) = 1;
      *(a1 + 58) = 1;
      *(a1 + 45) = 257;
      *(a1 + 8) = 257;
      *(a1 + 57) = *(a1 + 47);
      sub_100110FD4(a1);
      goto LABEL_69;
    }

    v9 = *(a1 + 96);
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = *(a1 + 96);
      v13 = _NRCopyLogObjectForNRUUID();
      v83 = *(v84 + 144);
      _NRLogWithArgs();
    }

    v14 = *(v84 + 144);
    if ([v14 proxyCapability] == 1)
    {
    }

    else
    {
      v23 = *(v84 + 144);
      v24 = [v23 proxyCapability];

      if (v24 != 2)
      {
        v58 = *(v84 + 144);
        if ([v58 bluetoothRole] == 1)
        {
        }

        else
        {
          v65 = *(v84 + 144);
          v66 = [v65 bluetoothRole];

          if (v66 != 2)
          {
            v67 = *(v84 + 144);
            if ([v67 bluetoothEndpointType] == 2)
            {
            }

            else
            {
              v68 = *(v84 + 144);
              v69 = [v68 bluetoothEndpointType];

              if (v69 != 1)
              {
                v70 = sub_100172E20(v84);
                v71 = sub_100172EF0(v84);
                v72 = [v70 compare:v71];

                if (v72 == -1)
                {
                  *(a1 + 58) = 1;
                  goto LABEL_23;
                }

                v73 = *(a1 + 96);
                v74 = _NRCopyLogObjectForNRUUID();
                v75 = _NRLogIsLevelEnabled();

                v29 = v84;
                if (!v75)
                {
LABEL_24:
                  *(a1 + 49) = sub_100169428(v29);
                  *(a1 + 39) = sub_1000ED714(a1);
                  v30 = *(v84 + 144);
                  *(a1 + 44) = [v30 handlesLinkRecommendations];

                  v31 = *(v84 + 144);
                  if ([v31 isReachableOverWiFi])
                  {
                    v32 = *(a1 + 58);
                  }

                  else
                  {
                    v32 = 0;
                  }

                  *(a1 + 45) = v32 & 1;

                  v33 = *(v84 + 144);
                  *(a1 + 48) = [v33 allowsDirectToCloud];

                  v34 = *(v84 + 144);
                  *(a1 + 46) = [v34 proxyCapability] == 1;

                  v35 = *(v84 + 144);
                  *(a1 + 47) = [v35 proxyCapability] == 2;

                  v36 = *(v84 + 144);
                  if ([v36 isReachableOverWiFi])
                  {
                    v37 = *(a1 + 46);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  *(a1 + 8) = v37 & 1;

                  *(a1 + 57) = *(a1 + 47);
                  v38 = *(v84 + 144);
                  v39 = [v38 allowedLinkSubtypes];
                  v40 = [v39 containsObject:&off_100209C38];

                  if (v40)
                  {
                    sub_100110FD4(a1);
                  }

                  v41 = *(v84 + 144);
                  v42 = [v41 allowedLinkTypes];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = *(v84 + 144);
                    v45 = [v44 allowedLinkTypes];
                    v46 = [v45 containsObject:&off_100209C50];

                    if (!v46)
                    {
LABEL_37:
                      v47 = *(v84 + 144);
                      v48 = [v47 version];

                      if (v48)
                      {
                        v49 = *(v84 + 144);
                        *(a1 + 9) = [v49 providesPhoneCallRelaySupport];
                      }

                      v50 = *(v84 + 144);
                      v51 = [v50 allowedLinkTypes];
                      if (v51)
                      {
                        v52 = v51;
                        v53 = *(v84 + 144);
                        v54 = [v53 allowedLinkTypes];
                        v55 = [v54 containsObject:&off_100209C68];

                        if (!v55)
                        {
LABEL_44:
                          objc_opt_self();
                          if (!objc_opt_class() || !objc_opt_class())
                          {
                            *(a1 + 56) = 0;
                          }

                          if (*(a1 + 47) == 1)
                          {
                            v56 = *(v84 + 144);
                            if ([v56 requiresReachability])
                            {
                              v57 = *(a1 + 49);

                              if ((v57 & 1) == 0)
                              {
                                *(a1 + 61) = 1;
                              }
                            }

                            else
                            {
                            }
                          }

                          sub_100104190(a1);
                          if (objc_opt_class() && *(a1 + 49) == 1)
                          {
                            v59 = *(a1 + 47);
                            *(a1 + 12) = v59;
                            if (v59 == 1)
                            {
                              v60 = _os_feature_enabled_impl();
                            }

                            else
                            {
                              v60 = 0;
                            }
                          }

                          else
                          {
                            v60 = 0;
                            *(a1 + 12) = 0;
                          }

                          *(a1 + 13) = v60;
                          if (*(a1 + 49) == 1)
                          {
                            v61 = _os_feature_enabled_impl();
                          }

                          else
                          {
                            v61 = 0;
                          }

                          *(a1 + 63) = v61;
                          v62 = *(v84 + 48);
                          if ((v62 & 0x20) != 0)
                          {
                            LOBYTE(v64) = 1;
                          }

                          else
                          {
                            v63 = (v62 & 0x10) != 0 || *(v84 + 16) > 0x12u;
                            v64 = (v62 >> 14) & 1 | v63;
                          }

                          *(a1 + 70) = (*(v84 + 48) & 0x1000) == 0 || (*(v84 + 48) & 0x2000) == 0 || (v64 & 1) == 0;
                          goto LABEL_69;
                        }
                      }

                      else
                      {
                      }

                      *(a1 + 56) = 1;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                  }

                  *(a1 + 9) = 1;
                  *(a1 + 55) = 1;
                  goto LABEL_37;
                }

                v76 = *(a1 + 96);
                v25 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
LABEL_22:

LABEL_23:
                v29 = v84;
                goto LABEL_24;
              }
            }

            v25 = *(v84 + 144);
            v27 = [v25 bluetoothEndpointType] == 2;
LABEL_18:
            v28 = v27;
            *(a1 + 58) = v28;
            goto LABEL_22;
          }
        }

        v25 = *(v84 + 144);
        v26 = [v25 bluetoothRole];
LABEL_17:
        v27 = v26 == 1;
        goto LABEL_18;
      }
    }

    v25 = *(v84 + 144);
    v26 = [v25 proxyCapability];
    goto LABEL_17;
  }

  *(a1 + 43) = 1;
  v15 = *(v84 + 144);

  if (v15)
  {
    v16 = *(v84 + 144);
    *(a1 + 46) = [v16 proxyCapability] == 1;

    v17 = *(v84 + 144);
    *(a1 + 47) = [v17 proxyCapability] == 2;
  }

  else
  {
    v18 = *(a1 + 96);
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = *(a1 + 96);
      v22 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

LABEL_69:
}

void sub_100111C10(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(v1 + 352));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    obj = qword_100229408;
    sub_10015A52C(obj);
  }

  else
  {
    v3 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v4 = *(v1 + 144);
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = [v9 proxyEndpoint];

          if (v10)
          {
            v11 = [v9 proxyEndpoint];
            v12 = [NWAddressEndpoint endpointWithCEndpoint:v11];

            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v6);
    }

    v28 = [NEPolicyResult dropWithFlags:4];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obja = v3;
    v13 = [obja countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(obja);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          if (!sub_100172C3C(NRDLocalDevice, v19))
          {
            v20 = v1;
            if ([v19 addressFamily] == 30)
            {
              v21 = 128;
            }

            else
            {
              v21 = 32;
            }

            v22 = [NEPolicyCondition flowRemoteAddress:v19 prefix:v21, v28];
            v23 = [NEPolicy alloc];
            v24 = +[NEPolicyCondition allInterfaces];
            v39[0] = v24;
            v39[1] = v22;
            v25 = [NSArray arrayWithObjects:v39 count:2];
            v26 = [v23 initWithOrder:1 result:v28 conditions:v25];

            objc_opt_self();
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v1 = v20;
            v17 = qword_100229408;
            v18 = sub_100159E00(v17, *(v20 + 352), v26);
          }
        }

        v14 = [obja countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v27 = qword_100229408;
    sub_10015A52C(v27);
  }
}

void sub_10011207C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113480;
  v4[3] = &unk_1001FD060;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  sub_1000C95D8(v2, v4);
}

void sub_100112154(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113300;
  v4[3] = &unk_1001FD060;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  sub_1000C95D8(v2, v4);
}

void sub_10011222C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 14) == 1)
  {
    sub_1001033B0(v2);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    if (v3)
    {
      v4 = v3[8];

      if (v4 == 1)
      {
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v5 = qword_1002290B8;
        v6 = v5;
        if (v5)
        {
          v7 = *(v5 + 9);
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v9 = qword_1002290B8;
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 10);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v8 && v12)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v13 = qword_1002290B8;
          v14 = v13;
          if (v13)
          {
            v15 = *(v13 + 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = [NWAddressEndpoint endpointWithHostname:v12 port:@"0"];
          v75 = v17;
          v18 = [NSArray arrayWithObjects:&v75 count:1];
          v19 = *(a1 + 32);
          if (v19)
          {
            v20 = *(v19 + 96);
          }

          else
          {
            v20 = 0;
          }

          sub_1000E6CEC(v16, v18, v8, v20);
        }
      }
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v21 = qword_1002290B8;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100112BC0;
    v71[3] = &unk_1001FD3C8;
    v71[4] = *(a1 + 32);
    sub_1000C95D8(v21, v71);

    v22 = *(a1 + 32);
    if (v22 && *(v22 + 46) == 1 && *(v22 + 49) == 1 && !*(v22 + 536))
    {
      v23 = sub_10001CB9C([NRNetInfo alloc], *(v22 + 136));
      objc_initWeak(&location, v22);
      objc_initWeak(&from, v23);
      v76 = _NSConcreteStackBlock;
      v77 = 3221225472;
      v78 = sub_100113254;
      v79 = &unk_1001FB9B0;
      objc_copyWeak(&v80, &location);
      objc_copyWeak(&v81, &from);
      v24 = &v76;
      v25 = v24;
      if (v23)
      {
        dispatch_assert_queue_V2(*(v23 + 6));
        if ((v23[10] & 1) == 0)
        {
          v26 = objc_retainBlock(v25);
          v27 = *(v23 + 7);
          *(v23 + 7) = v26;
        }

        dispatch_assert_queue_V2(*(v23 + 6));
        if ((v23[10] & 1) == 0)
        {
          objc_initWeak(&v74, v23);
          obj = nw_path_create_evaluator_for_endpoint();
          v28 = *(v23 + 6);
          newValue = _NSConcreteStackBlock;
          v83 = 3221225472;
          v84 = sub_10001DC04;
          v85 = &unk_1001FA490;
          objc_copyWeak(&v88, &v74);
          v29 = obj;
          v86 = v29;
          v87 = v23;
          nw_path_evaluator_set_update_handler();

          nw_path_evaluator_start();
          if (qword_100228ED8 != -1)
          {
            dispatch_once(&qword_100228ED8, &stru_1001FA550);
          }

          v30 = qword_100228ED0;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228ED8 != -1)
            {
              dispatch_once(&qword_100228ED8, &stru_1001FA550);
            }

            v32 = qword_100228ED0;
            _NRLogWithArgs();
          }

          objc_storeStrong(v23 + 9, obj);
          sub_10001E128(v23);

          objc_destroyWeak(&v88);
          objc_destroyWeak(&v74);
        }
      }

      else
      {
      }

      v33 = *(v22 + 536);
      *(v22 + 536) = v23;

      objc_destroyWeak(&v81);
      objc_destroyWeak(&v80);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      v22 = *(a1 + 32);
    }

    sub_1001067E0(v22);
    v34 = *(a1 + 32);
    if (v34)
    {
      if (sub_1000ED8A4(*(a1 + 32)))
      {
        v35 = sub_100163A30(NRDLocalDevice, v34[12]);
        v36 = v35;
        if (v35)
        {
          v37 = *(v35 + 144);
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;
        v39 = [v38 activeOperationalScope];

        v40 = objc_alloc_init(NRLinkDirectorRequest);
        p_isa = &v40->super.isa;
        if (v40)
        {
          v42 = 2;
          if (!v39)
          {
            v42 = 10;
          }

          v40->_type = 6;
          *&v40->_attemptImmediately = 1;
          v40->_timeout = v42;
          objc_storeStrong(&v40->_timerDescription, @"start-device-discovery");
        }

        if (v36)
        {
          v43 = v36[18];
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v45 = [v44 allowedLinkTypes];
        if (p_isa)
        {
          objc_storeStrong(p_isa + 2, v45);
        }

        newValue = _NSConcreteStackBlock;
        v83 = 3221225472;
        v84 = sub_10011323C;
        v85 = &unk_1001FD3C8;
        v86 = v34;
        if (p_isa)
        {
          objc_setProperty_nonatomic_copy(p_isa, v46, &newValue, 48);
        }

        sub_1000EAA20(v34, p_isa);
      }

      v47 = *(a1 + 32);
      if (v47 && *(v47 + 48) == 1 && !*(v47 + 752))
      {
        v48 = sub_100163A30(NRDLocalDevice, *(v47 + 96));
        v49 = v48;
        if (v48)
        {
          v50 = *(v48 + 144);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        v52 = [v51 usesTLS];

        if (v52)
        {
          v53 = *(v47 + 136);
          v54 = nw_agent_create();
          v55 = *(v47 + 752);
          *(v47 + 752) = v54;

          v56 = *(v47 + 752);
          nw_agent_change_state();
          newValue = 0;
          v83 = 0;
          v57 = *(v47 + 752);
          nw_agent_get_uuid();
          v58 = [[NSUUID alloc] initWithUUIDBytes:&newValue];
          v59 = *(v47 + 760);
          *(v47 + 760) = v58;

          v60 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"DTCFallbackAgent"];
          v61 = [NEPolicy alloc];
          v62 = *(v47 + 760);
          v63 = [NEPolicyResult netAgentUUID:v62];
          v64 = +[NEPolicyCondition allInterfaces];
          v76 = v64;
          v77 = v60;
          v65 = [NSArray arrayWithObjects:&v76 count:2];
          v66 = [v61 initWithOrder:10 result:v63 conditions:v65];

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v67 = qword_100229408;
          v68 = sub_100159E00(v67, *(v47 + 304), v66);

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v69 = qword_100229408;
          sub_10015A52C(v69);
        }
      }
    }
  }
}

void sub_100112B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, id a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_100112BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 14) == 1)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(v1 + 96));
    v3 = v2;
    if (!v2)
    {
      goto LABEL_60;
    }

    v4 = *(v2 + 144);

    if (!v4)
    {
      goto LABEL_60;
    }

    v5 = *(v3 + 48);
    if ((v5 & 2) == 0)
    {
      goto LABEL_60;
    }

    if ((v5 & 0x20) != 0)
    {
      LOBYTE(v7) = 1;
      if ((v5 & 0x1000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = (v5 & 0x10) != 0 || *(v3 + 16) > 0x12u;
      v7 = (v5 >> 14) & 1 | v6;
      if ((v5 & 0x1000) != 0)
      {
LABEL_13:
        if ((((*(v3 + 48) & 0x2000) != 0) & v7) != 0)
        {
          goto LABEL_60;
        }
      }
    }

    if (sub_100169428(v3))
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 != 1)
      {
        goto LABEL_60;
      }
    }

    v8 = *(v1 + 96);
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = *(v1 + 96);
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      v13 = v1;
      v14 = 5;
      v15 = 0;
    }

    else
    {
      v16 = *(v3 + 144);
      v17 = [v16 allowedLinkTypes];
      if (![v17 containsObject:&off_100209C50] || (v18 = *(v3 + 48), (~*(v3 + 48) & 0x82) != 0))
      {
      }

      else
      {

        if ((v18 & 0x40) == 0)
        {
          sub_1000ECF74(v1, 1u, 0);
        }
      }

      sub_1000EA6A0(v1);
      v19 = *(v3 + 144);
      v20 = [v19 allowedLinkTypes];
      v21 = [v20 containsObject:&off_100209C80];

      p_vtable = NRSCDInterfaceConfig.vtable;
      if (v21)
      {
        v23 = *(v1 + 96);
        objc_opt_self();
        v24 = sub_100172CE0(NRDLocalDevice, v23, &off_100209EF0);

        if (v24)
        {
          v25 = [v24 copyCEndpoint];
          evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

          v27 = nw_path_evaluator_copy_path();
          v28 = *(v1 + 96);
          v29 = _NRCopyLogObjectForNRUUID();
          v30 = _NRLogIsLevelEnabled();

          if (v30)
          {
            v31 = *(v1 + 96);
            v32 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          v33 = nw_path_copy_interface();
          name = nw_interface_get_name(v33);
          if (name)
          {
            v35 = name;
            v36 = sub_1000BA648();
            v37 = v36;
            v63 = evaluator_for_endpoint;
            if (v36)
            {
              v38 = *(v36 + 8);
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;
            v65 = v24;
            v40 = [NSArray arrayWithObjects:&v65 count:1];
            v41 = [NSString stringWithUTF8String:v35];
            sub_1000E6CEC(v39, v40, v41, *(v1 + 96));

            p_vtable = (NRSCDInterfaceConfig + 24);
            evaluator_for_endpoint = v63;
          }
        }

        else
        {
          sub_1000ECF74(v1, 5u, 0);
        }
      }

      v42 = *(v3 + 144);
      v43 = [v42 allowedLinkSubtypes];
      v44 = [v43 containsObject:&off_100209C98];

      if (v44)
      {
        v45 = *(v1 + 96);
        objc_opt_self();
        v46 = sub_100172CE0((p_vtable + 37), v45, &off_100209EA8);

        if (v46)
        {
          v47 = [v46 hostname];
          objc_opt_self();
          if (qword_100228E88 != -1)
          {
            dispatch_once(&qword_100228E88, &stru_1001FA180);
          }

          v48 = qword_100228E80;
          v49 = @"62743";
          if (!v48)
          {
            v49 = 0;
          }

          v50 = v49;
          v51 = [NWAddressEndpoint endpointWithHostname:v47 port:v50];

          dispatch_assert_queue_V2(*(v1 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v52 = qword_1002290B8;
          v53 = v52;
          if (v52)
          {
            v54 = *(v52 + 6);
          }

          else
          {
            v54 = 0;
          }

          v55 = v54;

          v64 = v51;
          v56 = [NSArray arrayWithObjects:&v64 count:1];
          sub_10017E570(v55, v56, *(v1 + 96));

          if (*(v1 + 49) == 1)
          {
            sub_1000F1D90(v1, 1, 0);
          }
        }

        else
        {
          sub_1000ECF74(v1, 2u, 101);
        }
      }

      v57 = *(v3 + 144);
      v58 = [v57 allowedLinkSubtypes];
      v59 = [v58 containsObject:&off_100209CB0];

      if (v59)
      {
        sub_1000ECF74(v1, 2u, 103);
      }

      v60 = *(v3 + 144);
      v61 = [v60 allowedLinkSubtypes];
      v62 = [v61 containsObject:&off_100209CC8];

      if (!v62)
      {
        goto LABEL_60;
      }

      v13 = v1;
      v14 = 2;
      v15 = 104;
    }

    sub_1000ECF74(v13, v14, v15);
LABEL_60:
  }
}

void sub_10011323C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || !*(v1 + 160))
  {
    sub_10010047C(v1);
  }
}

void sub_100113254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(WeakRetained + 14) == 1 && v2 != 0)
    {
      v4 = *(WeakRetained + 67);
      if (v4 == v2 && *(WeakRetained + 68) != v4[4])
      {
        v5 = v2;
        sub_1000F5B40(WeakRetained, *(WeakRetained + 20));
        v2 = v5;
      }
    }
  }
}

void sub_100113300(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(v2[17]);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v2 = v6[11];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v2;

  if (!v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      dispatch_assert_queue_V2(*(v8 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v9 = qword_1002290B8;
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 6);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      sub_10017E36C(v12, *(a1 + 40));
    }

    else
    {
      v12 = 0;
      sub_10017E36C(0, *(a1 + 40));
    }
  }
}

void sub_100113480(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 6);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = sub_10017E984(v5, *(*(a1 + 32) + 96));

  if (!v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        dispatch_assert_queue_V2(*(v8 + 136));
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v9 = qword_1002290B8;
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 6);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v7 = *(a1 + 40);
      }

      else
      {
        v12 = 0;
      }

      v14 = v7;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      sub_10017E570(v12, v13, *(*(a1 + 32) + 96));
    }
  }
}

void sub_100113628(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 14))
    {
      *(a1 + 14) = 0;
      v2 = [a1 description];
      sub_1000059A8(*(a1 + 96), 1502, 0, v2);

      objc_opt_self();
      if (qword_100228F50 != -1)
      {
        dispatch_once(&qword_100228F50, &stru_1001FA740);
      }

      v3 = qword_100228F48;
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 1);
        v6 = *(a1 + 96);
        dispatch_assert_queue_V2(v5);
        [v4[2] setObject:0 forKeyedSubscript:v6];
      }

      sub_100111C10(a1);
      v7 = *(a1 + 656);
      if (v7)
      {
        sub_10011DE24(v7);
        v8 = *(a1 + 656);
        *(a1 + 656) = 0;
      }

      v9 = *(a1 + 608);
      if (v9 && ([*(a1 + 608) cancelled] & 1) == 0)
      {
        [v9 setCancelled:1];
        [v9 setUpdateBlock:0];
        [v9 invalidateAggregateStatsTimerSource];
        [v9 reportEvent:30003];
      }

      v10 = *(a1 + 648);
      *(a1 + 648) = 0;

      v11 = *(a1 + 640);
      *(a1 + 640) = 0;

      *(a1 + 616) = 0u;
      v12 = *(a1 + 240);
      if (v12)
      {
        [v12 setDelegate:0];
        [*(a1 + 240) destroy];
        v13 = *(a1 + 240);
        *(a1 + 240) = 0;
      }

      *(a1 + 23) = 0;
      *(a1 + 19) = 0;
      *(a1 + 25) = 0;
      *(a1 + 29) = 0;
      sub_1000EF7A0(a1, 0);
      dispatch_assert_queue_V2(*(a1 + 136));
      sub_1000F1D90(a1, 0, 0xAu);
      [*(a1 + 584) cancel];
      v14 = *(a1 + 584);
      *(a1 + 584) = 0;

      [*(a1 + 576) cancel];
      v15 = *(a1 + 576);
      *(a1 + 576) = 0;

      sub_1000FA994(a1);
      v16 = *(a1 + 536);
      if (v16)
      {
        *(v16 + 10) = 1;
        if (*(v16 + 72))
        {
          nw_path_evaluator_cancel();
          v17 = *(v16 + 72);
          *(v16 + 72) = 0;
        }

        v18 = *(a1 + 536);
        *(a1 + 536) = 0;
      }

      v19 = *(a1 + 224);
      if (v19)
      {
        dispatch_assert_queue_V2(*(v19 + 48));
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v20 = qword_100229408;
        sub_10015A238(v20, *(v19 + 72));

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v21 = qword_100229408;
        sub_10015A52C(v21);

        v22 = *(v19 + 56);
        if (v22)
        {
          if (([v22 unregisterNetworkAgent] & 1) == 0)
          {
            v23 = *(v19 + 40);
            v24 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v26 = *(v19 + 40);
              v27 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }
          }

          v28 = *(v19 + 56);
          *(v19 + 56) = 0;

          v29 = *(v19 + 40);
          v30 = *(v19 + 80);
          v31 = v29;
          v32 = [v19 agentUUID];
          v33 = [v32 UUIDString];
          sub_1000059A8(v31, 17003, v30, v33);
        }

        *(v19 + 14) = 0;
        v34 = *(a1 + 224);
        *(a1 + 224) = 0;
      }

      v35 = *(a1 + 232);
      if (v35)
      {
        sub_1000782D4(v35);
        v36 = *(a1 + 232);
        *(a1 + 232) = 0;
      }

      v37 = *(a1 + 424);
      if (v37)
      {
        sub_10007AE28(v37);
        v38 = *(a1 + 424);
        *(a1 + 424) = 0;
      }

      v39 = *(a1 + 480);
      if (v39)
      {
        sub_1000707D0(v39);
        v40 = *(a1 + 480);
        *(a1 + 480) = 0;
      }

      if (qword_100229138 && *(a1 + 104))
      {
        [qword_100229138 setObject:0 forKeyedSubscript:?];
      }

      if (qword_100229140 && *(a1 + 120))
      {
        [qword_100229140 setObject:0 forKeyedSubscript:?];
      }

      sub_10010EE28(a1);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v41 = qword_1002290B8;
      sub_1000CA918(v41, 0, *(a1 + 96));

      sub_1001070B0(a1);
      v42 = *(a1 + 696);
      *(a1 + 696) = 0;

      if (*(a1 + 57) == 1)
      {
        v43 = *(a1 + 712);
        *(a1 + 712) = 0;

        v44 = *(a1 + 720);
        *(a1 + 720) = 0;

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v45 = qword_100229408;
        sub_10015A238(v45, *(a1 + 320));

        if (*(a1 + 57))
        {
          v46 = *(a1 + 704);
          *(a1 + 704) = 0;

          v47 = *(a1 + 552);
          *(a1 + 552) = 0;

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v48 = qword_100229408;
          sub_10015A238(v48, *(a1 + 312));
        }
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v49 = qword_100229408;
      sub_10015A238(v49, *(a1 + 304));

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v50 = qword_100229408;
      sub_10015A238(v50, *(a1 + 344));

      if (*(a1 + 328))
      {
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v51 = qword_100229408;
        sub_10015A238(v51, *(a1 + 328));
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v52 = qword_100229408;
      sub_10015A238(v52, *(a1 + 568));

      if (*(a1 + 336))
      {
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v53 = qword_100229408;
        sub_10015A238(v53, *(a1 + 336));
      }

      v54 = *(a1 + 728);
      *(a1 + 728) = 0;

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v55 = qword_100229408;
      sub_10015A238(v55, *(a1 + 744));

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v56 = qword_100229408;
      sub_10015A52C(v56);

      v57 = *(a1 + 464);
      *(a1 + 464) = 0;

      v58 = *(a1 + 456);
      if (v58)
      {
        sub_10014F1DC(v58);
        v59 = *(a1 + 456);
        *(a1 + 456) = 0;
      }

      v60 = *(a1 + 272);
      *(a1 + 272) = 0;

      v61 = *(a1 + 400);
      if (v61)
      {
        dispatch_source_cancel(v61);
        v62 = *(a1 + 400);
        *(a1 + 400) = 0;
      }

      [*(a1 + 152) removeAllObjects];
      v63 = *(a1 + 216);
      if (v63)
      {
        v64 = *(v63 + 24);
        if (v64)
        {
          dispatch_assert_queue_V2(v64);
        }

        v65 = *(v63 + 16);
        v66 = _NRCopyLogObjectForNRUUID();
        v67 = _NRLogIsLevelEnabled();

        if (v67)
        {
          v68 = *(v63 + 16);
          v69 = _NRCopyLogObjectForNRUUID();
          v87 = 77;
          v88 = v63;
          v85 = "";
          v86 = "[NRDevicePreferencesManager cancel]";
          _NRLogWithArgs();
        }

        [*(v63 + 32) removeAllObjects];
        sub_100148E4C(v63);
        [*(v63 + 40) removeAllObjects];
        sub_100149594(v63);
        v70 = *(a1 + 216);
      }

      else
      {
        v70 = 0;
      }

      *(a1 + 216) = 0;

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v71 = *(a1 + 200);
      v72 = [v71 countByEnumeratingWithState:&v94 objects:v99 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v95;
        do
        {
          for (i = 0; i != v73; i = i + 1)
          {
            if (*v95 != v74)
            {
              objc_enumerationMutation(v71);
            }

            xpc_connection_cancel(*(*(&v94 + 1) + 8 * i));
          }

          v73 = [v71 countByEnumeratingWithState:&v94 objects:v99 count:16];
        }

        while (v73);
      }

      [*(a1 + 200) removeAllObjects];
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v80 = *(a1 + 208);
      v81 = [v80 countByEnumeratingWithState:&v90 objects:v98 count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v91;
        do
        {
          for (j = 0; j != v82; j = j + 1)
          {
            if (*v91 != v83)
            {
              objc_enumerationMutation(v80);
            }

            xpc_connection_cancel(*(*(&v90 + 1) + 8 * j));
          }

          v82 = [v80 countByEnumeratingWithState:&v90 objects:v98 count:16];
        }

        while (v82);
      }

      [*(a1 + 208) removeAllObjects];
      sub_1000FFA7C(a1);
      sub_100114094(a1);
    }

    else
    {
      v76 = *(a1 + 96);
      v77 = _NRCopyLogObjectForNRUUID();
      v78 = _NRLogIsLevelEnabled();

      if (v78)
      {
        v79 = *(a1 + 96);
        v89 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }
}