uint64_t sub_1000833D4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = 0;
  if ([v2 conditionsCount])
  {
    v4 = 0;
    do
    {
      switch([v2 conditionsAtIndex:v4])
      {
        case 1u:
          v3 = v3 | 1;
          break;
        case 2u:
          v3 = v3 | 2;
          break;
        case 3u:
          v3 = v3 | 4;
          break;
        case 4u:
          v3 = v3 | 8;
          break;
        case 5u:
          v3 = v3 | 0x10;
          break;
        case 6u:
          v3 = v3 | 0x20;
          break;
        case 7u:
          v3 = v3 | 0x40;
          break;
        case 8u:
          v3 = v3 | 0x80;
          break;
        case 9u:
          v3 = v3 | 0x100;
          break;
        case 0xAu:
          v3 = v3 | 0x200;
          break;
        case 0xBu:
          v3 = v3 | 0x400;
          break;
        case 0xCu:
          v3 = v3 | 0x800;
          break;
        case 0xDu:
          v3 = v3 | 0x1000;
          break;
        case 0xEu:
          v3 = v3 | 0x2000;
          break;
        case 0xFu:
          v3 = v3 | 0x4000;
          break;
        case 0x10u:
          v3 = v3 | 0x8000;
          break;
        case 0x11u:
          v3 = v3 | 0x10000;
          break;
        case 0x12u:
          v3 = v3 | 0x20000;
          break;
        case 0x13u:
          v3 = v3 | 0x40000;
          break;
        case 0x14u:
          v3 = v3 | 0x80000;
          break;
        case 0x15u:
          v3 = v3 | 0x100000;
          break;
        case 0x16u:
          v3 = v3 | 0x200000;
          break;
        case 0x17u:
          v3 = v3 | 0x400000;
          break;
        case 0x18u:
          v3 = v3 | 0x800000;
          break;
        case 0x19u:
          v3 = v3 | 0x1000000;
          break;
        case 0x1Au:
          v3 = v3 | 0x2000000;
          break;
        case 0x1Bu:
          v3 = v3 | 0x4000000;
          break;
        default:
          break;
      }

      ++v4;
    }

    while (v4 < [v2 conditionsCount]);
  }

  return v3;
}

id sub_100083548(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  objc_opt_self();
  if (v14 && [v14 conditionsCount])
  {
    v20 = sub_1000833D4(NSPPrivacyProxyPolicySerialization, v14);
    v21 = sub_100081370(NSPPrivacyProxyPolicySerialization, v20, v15, a4, v16, v17, v18, v19);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_100083650(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
  v7 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v6];
  [v7 setNetworkAgentUUID:v4];

  v8 = [NEPolicyCondition domainFilter:a3];
  v23[0] = v8;
  v9 = +[NEPolicyCondition allInterfaces];
  v23[1] = v9;
  v10 = [NSArray arrayWithObjects:v23 count:2];

  v11 = [NEPolicy alloc];
  v22 = v7;
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  v13 = [NEPolicyResult routeRules:v12];
  v14 = [v11 initWithOrder:560 result:v13 conditions:v10];

  [v5 addObject:v14];
  v15 = [NEPolicyRouteRule routeRuleWithAction:6 forNetworkAgent:v6];
  [v15 setNetworkAgentUUID:v6];
  v16 = [NEPolicy alloc];
  v21 = v15;
  v17 = [NSArray arrayWithObjects:&v21 count:1];
  v18 = [NEPolicyResult routeRules:v17];
  v19 = [v16 initWithOrder:561 result:v18 conditions:v10];

  [v5 addObject:v19];

  return v5;
}

id sub_1000838A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = 0;
  if (v4 && v5)
  {
    v7 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
    v6 = objc_alloc_init(NSMutableArray);
    v22 = objc_alloc_init(NSMutableArray);
    v23 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v7 forInterfaceName:v5];
    [v23 setNetworkAgentUUID:v4];
    [v22 addObject:v23];
    v21 = [NEPolicyResult routeRules:v22];
    v8 = [NEPolicy alloc];
    v9 = +[NEPolicyCondition allInterfaces];
    v25 = v9;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    v11 = [v8 initWithOrder:630 result:v21 conditions:v10];

    [v6 addObject:v11];
    v12 = objc_alloc_init(NSMutableArray);
    v20 = v7;
    v13 = [NEPolicyRouteRule routeRuleWithAction:6 forNetworkAgent:v7 forInterfaceName:v5];
    [v13 setNetworkAgentUUID:v7];
    [v12 addObject:v13];
    v14 = [NEPolicyResult routeRules:v12];
    v15 = [NEPolicy alloc];
    v16 = +[NEPolicyCondition allInterfaces];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [v15 initWithOrder:631 result:v14 conditions:v17];

    [v6 addObject:v18];
  }

  return v6;
}

id sub_100083B54(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  objc_opt_self();
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || [v8 count] || objc_msgSend(v9, "length"))
  {
    v69 = objc_alloc_init(NSMutableArray);
    v10 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
    v11 = objc_alloc_init(NSMutableArray);
    if (a2)
    {
      v12 = [NEPolicyRouteRule routeRuleWithAction:6 forType:3];
      [v12 setNetworkAgentUUID:v10];
      [v11 addObject:v12];
    }

    v68 = v9;
    v61 = a3;
    if (a3)
    {
      v13 = [NEPolicyRouteRule routeRuleWithAction:6 forType:2];
      [v13 setNetworkAgentUUID:v10];
      [v11 addObject:v13];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v67 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v75;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v75 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [NEPolicyRouteRule routeRuleWithAction:6 forInterfaceName:*(*(&v74 + 1) + 8 * i)];
          [v19 setNetworkAgentUUID:v10];
          [v11 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v16);
    }

    v20 = [NEPolicyResult routeRules:v11];
    v21 = [NEPolicy alloc];
    v22 = +[NEPolicyCondition allInterfaces];
    v82[0] = v22;
    v23 = [NEPolicyCondition uid:getuid()];
    v82[1] = v23;
    v24 = [NSArray arrayWithObjects:v82 count:2];
    v65 = v20;
    v25 = [v21 initWithOrder:610 result:v20 conditions:v24];

    [v69 addObject:v25];
    v26 = objc_alloc_init(NSMutableArray);

    if (a2)
    {
      v27 = [NEPolicyRouteRule routeRuleWithAction:6 forType:3];
      v28 = +[NSPPrivacyProxyDNSAgent dnsAgentUUID];
      [v27 setNetworkAgentUUID:v28];

      [v26 addObject:v27];
    }

    if (v61)
    {
      v29 = [NEPolicyRouteRule routeRuleWithAction:6 forType:2];
      v30 = +[NSPPrivacyProxyDNSAgent dnsAgentUUID];
      [v29 setNetworkAgentUUID:v30];

      [v26 addObject:v29];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v31 = v14;
    v32 = [v31 countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v71;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v71 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [NEPolicyRouteRule routeRuleWithAction:6 forInterfaceName:*(*(&v70 + 1) + 8 * j)];
          v37 = +[NSPPrivacyProxyDNSAgent dnsAgentUUID];
          [v36 setNetworkAgentUUID:v37];

          [v26 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v33);
    }

    v38 = [NEPolicyResult routeRules:v26];

    v39 = [NEPolicy alloc];
    v40 = +[NEPolicyCondition allInterfaces];
    v80[0] = v40;
    v41 = [NEPolicyCondition uid:getuid()];
    v80[1] = v41;
    v42 = [NSArray arrayWithObjects:v80 count:2];
    v66 = v38;
    v43 = [v39 initWithOrder:610 result:v38 conditions:v42];

    v44 = v69;
    [v69 addObject:v43];
    v9 = v68;
    if ([v68 length])
    {
      v60 = objc_alloc_init(NSMutableArray);
      v62 = [NEPolicyRouteRule routeRuleWithAction:6 forType:3];
      [v62 setNetworkAgentUUID:v10];
      [v60 addObject:v62];
      v45 = [NEPolicyResult routeRules:v60];
      v63 = [NEPolicy alloc];
      v59 = +[NEPolicyCondition allInterfaces];
      v79[0] = v59;
      v46 = [NEPolicyCondition uid:getuid()];
      v79[1] = v46;
      v47 = [NEPolicyCondition domain:v68];
      v79[2] = v47;
      v48 = [NSArray arrayWithObjects:v79 count:3];
      v64 = [v63 initWithOrder:610 result:v45 conditions:v48];

      [v69 addObject:v64];
      v49 = objc_alloc_init(NSMutableArray);
      v50 = [NEPolicyRouteRule routeRuleWithAction:6 forType:3];
      v51 = +[NSPPrivacyProxyDNSAgent dnsAgentUUID];
      [v50 setNetworkAgentUUID:v51];

      [v49 addObject:v50];
      v52 = [NEPolicyResult routeRules:v49];
      v53 = [NEPolicy alloc];
      v54 = +[NEPolicyCondition allInterfaces];
      v78[0] = v54;
      v55 = [NEPolicyCondition uid:getuid()];
      v78[1] = v55;
      v56 = [NEPolicyCondition domain:v68];
      v78[2] = v56;
      v57 = [NSArray arrayWithObjects:v78 count:3];
      v43 = [v53 initWithOrder:610 result:v52 conditions:v57];

      v44 = v69;
      [v69 addObject:v43];

      v9 = v68;
    }

    v8 = v67;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

void sub_100084304(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  if (v11)
  {
    v12 = [NEPolicyResult netAgentUUID:v10];
    v22 = v8;
    v13 = [NEPolicyCondition domain:v8];
    [v13 setExactMatch:1];
    v14 = objc_alloc_init(NSMutableArray);
    [v14 addObject:v13];
    v15 = +[NEPolicyCondition allInterfaces];
    [v14 addObject:v15];

    if (v9)
    {
      v16 = [NEPolicyCondition effectiveApplication:v9];
      [v14 addObject:v16];
    }

    v17 = [[NEPolicy alloc] initWithOrder:620 result:v12 conditions:v14];
    [v11 addObject:v17];
    v18 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
    v19 = [NEPolicyResult removeNetworkAgentUUID:v18];
    v20 = [[NEPolicy alloc] initWithOrder:621 result:v19 conditions:v14];
    [v11 addObject:v20];

    v8 = v22;
  }

  else
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v24 = "+[NSPPrivacyProxyPolicySerialization obliviousProxyPoliciesForHostname:processUUID:agentUUID:policyArray:]";
      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null policies", buf, 0xCu);
    }
  }
}

id sub_100084558(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = objc_alloc_init(NSMutableArray);
  if ([v7 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v7;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v14 = sub_10007F730(NSPPrivacyProxyPolicySerialization, *(*(&v27 + 1) + 8 * i));
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                sub_100084304(v9, v6, *(*(&v23 + 1) + 8 * j), v8, v10);
              }

              v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v16);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v7 = v20;
  }

  else
  {
    sub_100084304(v9, v6, 0, v8, v10);
  }

  return v10;
}

uint64_t sub_10008478C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_self();
  if (v11 && ([v11 hasPrefix:@"com.apple."]& 1) == 0)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v16 = [v14 identifier];
    *buf = 138412546;
    v48 = v11;
    v49 = 2112;
    v50 = v16;
    v17 = "Skipping unsupported process %@ for contentMap %@";
    goto LABEL_14;
  }

  if (!v12 || !v13)
  {
    if (v12)
    {
      v20 = [[NSURL alloc] initWithString:v12];
      v15 = v20;
      if (!v20 || ([v20 host], v21 = objc_claimAutoreleasedReturnValue(), v22 = sub_100084C7C(v21), v21, (v22 & 1) == 0))
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = [v14 identifier];
          *buf = 138412546;
          v48 = v12;
          v49 = 2112;
          v50 = v23;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Skipping unsupported URL %@ for map %@", buf, 0x16u);
        }

        goto LABEL_16;
      }

LABEL_22:
      v26 = [NSString alloc];
      v27 = [v11 lowercaseString];
      v28 = [v12 lowercaseString];
      v29 = [v13 lowercaseString];
      v30 = [v26 initWithFormat:@"%@^%@^%@", v27, v28, v29];

      v31 = [v10 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = [v10 objectForKeyedSubscript:v30];

        if (v32 != v14)
        {
          v33 = nplog_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v44 = [v10 objectForKeyedSubscript:v30];
            v45 = [v14 identifier];
            *buf = 138412802;
            v48 = v44;
            v49 = 2112;
            v50 = v14;
            v51 = 2112;
            v52 = v45;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Content map %@ and %@ have conflicts, skipping %@", buf, 0x20u);
          }

          v24 = 0;
LABEL_42:

          goto LABEL_18;
        }
      }

      else
      {
        [v10 setObject:v14 forKeyedSubscript:v30];
      }

      if (v11)
      {
        v34 = 630;
      }

      else
      {
        v34 = 660;
      }

      if (v15)
      {
        v35 = [v15 path];
        v36 = [v35 componentsSeparatedByString:@"/"];
        v46 = v30;
        v37 = v34;
        v38 = [v36 count] - 1;

        v39 = 5;
        if (v38 < 5)
        {
          v39 = v38;
        }

        v40 = v37 - 2 * v39;
        v30 = v46;
        v24 = (v40 + 10);
      }

      else if (v13)
      {
        v41 = [v13 componentsSeparatedByString:@"."];
        v42 = [v41 count];

        v43 = 5;
        if (v42 < 5)
        {
          v43 = v42;
        }

        v24 = (v34 - 2 * v43 + 20);
      }

      else
      {
        v24 = (v34 + 20);
      }

      goto LABEL_42;
    }

    if (!v13 || (sub_100084C7C(v13) & 1) != 0)
    {
      v15 = 0;
      goto LABEL_22;
    }

    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v16 = [v14 identifier];
    *buf = 138412546;
    v48 = v13;
    v49 = 2112;
    v50 = v16;
    v17 = "Skipping unsupported hostname %@ for map %@";
LABEL_14:
    v18 = v15;
    v19 = 22;
    goto LABEL_15;
  }

  v15 = nplog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [v14 identifier];
    *buf = 138412802;
    v48 = v12;
    v49 = 2112;
    v50 = v13;
    v51 = 2112;
    v52 = v16;
    v17 = "Unspported content map with URL %@ and hostname %@ for map %@";
    v18 = v15;
    v19 = 32;
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_16:
  }

LABEL_17:
  v24 = 0;
LABEL_18:

  return v24;
}

uint64_t sub_100084C7C(void *a1)
{
  v1 = a1;
  if (qword_100129830 != -1)
  {
    dispatch_once(&qword_100129830, &stru_10010A790);
  }

  if (byte_100129820)
  {
    v2 = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = qword_100129828;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (([v1 isEqualToString:v8] & 1) == 0)
          {
            v9 = [NSString stringWithFormat:@".%@", v8];
            v10 = [v1 hasSuffix:v9];

            if ((v10 & 1) == 0)
            {
              continue;
            }
          }

          v2 = 1;
          goto LABEL_17;
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v2 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_17:
  }

  return v2;
}

id sub_100084E24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  v117 = v5;
  if (v5 && [v6 count])
  {
    v7 = objc_alloc_init(NSMutableArray);
    v134 = objc_alloc_init(NSMutableDictionary);
    v140 = [NEPolicyResult netAgentUUID:v5];
    v139 = [NEPolicyResult skipWithOrder:680];
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    obj = v6;
    v122 = [obj countByEnumeratingWithState:&v180 objects:v192 count:16];
    if (!v122)
    {
      goto LABEL_148;
    }

    v121 = *v181;
    v119 = v6;
    v138 = v7;
    while (1)
    {
      v8 = 0;
      do
      {
        v124 = v3;
        if (*v181 != v121)
        {
          objc_enumerationMutation(obj);
        }

        v123 = v8;
        v9 = *(*(&v180 + 1) + 8 * v8);
        v10 = [v9 hostnames];
        if ([v10 count])
        {
          goto LABEL_11;
        }

        v11 = [v9 urls];
        if ([v11 count])
        {

LABEL_11:
          goto LABEL_12;
        }

        v53 = [v9 processes];
        v54 = [v53 count];

        if (v54)
        {
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v127 = [v9 processes];
          v142 = [v127 countByEnumeratingWithState:&v176 objects:v191 count:16];
          if (v142)
          {
            v135 = *v177;
            do
            {
              for (i = 0; i != v142; i = i + 1)
              {
                if (*v177 != v135)
                {
                  objc_enumerationMutation(v127);
                }

                v56 = *(*(&v176 + 1) + 8 * i);
                v57 = sub_10008478C(NSPPrivacyProxyPolicySerialization, v134, v56, 0, 0, v9);
                if (v57)
                {
                  v58 = v57;
                  v145 = i;
                  v59 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v56);
                  v172 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  v175 = 0u;
                  v60 = [v59 countByEnumeratingWithState:&v172 objects:v190 count:16];
                  if (v60)
                  {
                    v61 = v60;
                    v62 = *v173;
                    do
                    {
                      for (j = 0; j != v61; j = j + 1)
                      {
                        if (*v173 != v62)
                        {
                          objc_enumerationMutation(v59);
                        }

                        v64 = *(*(&v172 + 1) + 8 * j);
                        v65 = objc_alloc_init(NSMutableArray);
                        v66 = +[NEPolicyCondition allInterfaces];
                        [v65 addObject:v66];

                        v67 = [NEPolicyCondition effectiveApplication:v64];
                        [v65 addObject:v67];

                        if (([v9 isPrivacyProxy] & 1) == 0)
                        {
                          v68 = [NEPolicyCondition realUID:getuid()];
                          [v65 addObject:v68];
                        }

                        if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
                        {
                          v69 = +[NEPolicyCondition platformBinary];
                          [v65 addObject:v69];
                        }

                        v70 = [[NEPolicy alloc] initWithOrder:v58 result:v140 conditions:v65];
                        [v138 addObject:v70];

                        v71 = [[NEPolicy alloc] initWithOrder:(v58 + 1) result:v139 conditions:v65];
                        [v138 addObject:v71];
                      }

                      v61 = [v59 countByEnumeratingWithState:&v172 objects:v190 count:16];
                    }

                    while (v61);
                  }

                  i = v145;
                }
              }

              v142 = [v127 countByEnumeratingWithState:&v176 objects:v191 count:16];
            }

            while (v142);
LABEL_140:
            v6 = v119;
            v7 = v138;
          }

          goto LABEL_141;
        }

LABEL_12:
        v12 = [v9 hostnames];
        v13 = [v12 count];
        if (!v13)
        {
          v14 = [v9 urls];
          v120 = v14;
          if (![v14 count])
          {

LABEL_81:
            v127 = [v9 hostnames];
            v72 = [v127 count];
            if (!v72)
            {
              v3 = [v9 urls];
              if (![v3 count])
              {

                goto LABEL_142;
              }

              v124 = v3;
            }

            v73 = [v9 processes];
            v74 = [v73 count];

            if (!v72)
            {
            }

            if (!v74)
            {
              v3 = v124;
              goto LABEL_143;
            }

            v161 = 0u;
            v162 = 0u;
            v159 = 0u;
            v160 = 0u;
            v127 = [v9 processes];
            v126 = [v127 countByEnumeratingWithState:&v159 objects:v187 count:16];
            if (v126)
            {
              v125 = *v160;
              v75 = v134;
              while (1)
              {
                v76 = 0;
                do
                {
                  if (*v160 != v125)
                  {
                    objc_enumerationMutation(v127);
                  }

                  v128 = v76;
                  v146 = *(*(&v159 + 1) + 8 * v76);
                  v77 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v146);
                  v155 = 0u;
                  v156 = 0u;
                  v157 = 0u;
                  v158 = 0u;
                  v129 = v77;
                  v131 = [v77 countByEnumeratingWithState:&v155 objects:v186 count:16];
                  if (v131)
                  {
                    v130 = *v156;
                    do
                    {
                      v78 = 0;
                      do
                      {
                        if (*v156 != v130)
                        {
                          objc_enumerationMutation(v129);
                        }

                        v132 = v78;
                        v143 = *(*(&v155 + 1) + 8 * v78);
                        v151 = 0u;
                        v152 = 0u;
                        v153 = 0u;
                        v154 = 0u;
                        v133 = [v9 hostnames];
                        v79 = [v133 countByEnumeratingWithState:&v151 objects:v185 count:16];
                        if (v79)
                        {
                          v80 = v79;
                          v136 = *v152;
                          do
                          {
                            for (k = 0; k != v80; k = k + 1)
                            {
                              if (*v152 != v136)
                              {
                                objc_enumerationMutation(v133);
                              }

                              v82 = *(*(&v151 + 1) + 8 * k);
                              v83 = objc_alloc_init(NSMutableArray);
                              v84 = +[NEPolicyCondition allInterfaces];
                              [v83 addObject:v84];

                              v85 = [NEPolicyCondition effectiveApplication:v143];
                              [v83 addObject:v85];

                              v167 = 0;
                              [v82 UTF8String];
                              address_from_string = nw_endpoint_create_address_from_string();
                              v87 = address_from_string;
                              if (address_from_string && nw_endpoint_get_type(address_from_string) == nw_endpoint_type_address)
                              {
                                v88 = [NWEndpoint endpointWithCEndpoint:v87];
                                v89 = [NEPolicyCondition flowRemoteAddress:v88 prefix:v167];

                                [v83 addObject:v89];
                                if (([v9 isPrivacyProxy] & 1) == 0)
                                {
                                  v90 = [NEPolicyCondition realUID:getuid()];
                                  [v83 addObject:v90];
                                }

                                if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
                                {
                                  v91 = +[NEPolicyCondition platformBinary];
                                  [v83 addObject:v91];
                                }

                                v92 = [[NEPolicy alloc] initWithOrder:660 result:v140 conditions:v83];
                                v93 = v138;
                                [v138 addObject:v92];

                                v94 = [[NEPolicy alloc] initWithOrder:661 result:v139 conditions:v83];
                              }

                              else
                              {
                                v95 = sub_10008478C(NSPPrivacyProxyPolicySerialization, v75, v146, 0, v82, v9);
                                if (!v95)
                                {
                                  goto LABEL_120;
                                }

                                v96 = v95;
                                v89 = [NEPolicyCondition domain:v82];
                                if ([v9 matchExactHostnames])
                                {
                                  [v89 setExactMatch:1];
                                }

                                [v83 addObject:v89];
                                if (([v9 isPrivacyProxy] & 1) == 0)
                                {
                                  v97 = [NEPolicyCondition realUID:getuid()];
                                  [v83 addObject:v97];
                                }

                                if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
                                {
                                  v98 = +[NEPolicyCondition platformBinary];
                                  [v83 addObject:v98];
                                }

                                v99 = [[NEPolicy alloc] initWithOrder:v96 result:v140 conditions:v83];
                                v93 = v138;
                                [v138 addObject:v99];

                                v94 = [[NEPolicy alloc] initWithOrder:(v96 + 1) result:v139 conditions:v83];
                              }

                              [v93 addObject:v94];

                              v75 = v134;
LABEL_120:
                            }

                            v80 = [v133 countByEnumeratingWithState:&v151 objects:v185 count:16];
                          }

                          while (v80);
                        }

                        v149 = 0u;
                        v150 = 0u;
                        v147 = 0u;
                        v148 = 0u;
                        v137 = [v9 urls];
                        v100 = [v137 countByEnumeratingWithState:&v147 objects:v184 count:16];
                        if (v100)
                        {
                          v101 = v100;
                          v102 = *v148;
                          do
                          {
                            for (m = 0; m != v101; m = m + 1)
                            {
                              if (*v148 != v102)
                              {
                                objc_enumerationMutation(v137);
                              }

                              v104 = *(*(&v147 + 1) + 8 * m);
                              v105 = sub_10008478C(NSPPrivacyProxyPolicySerialization, v75, v146, v104, 0, v9);
                              if (v105)
                              {
                                v106 = v105;
                                v107 = objc_alloc_init(NSMutableArray);
                                v108 = +[NEPolicyCondition allInterfaces];
                                [v107 addObject:v108];

                                v109 = [NEPolicyCondition effectiveApplication:v143];
                                [v107 addObject:v109];

                                v110 = [NEPolicyCondition url:v104];
                                [v107 addObject:v110];

                                if (([v9 isPrivacyProxy] & 1) == 0)
                                {
                                  v111 = [NEPolicyCondition realUID:getuid()];
                                  [v107 addObject:v111];
                                }

                                if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
                                {
                                  v112 = +[NEPolicyCondition platformBinary];
                                  [v107 addObject:v112];
                                }

                                v113 = [[NEPolicy alloc] initWithOrder:v106 result:v140 conditions:v107];
                                [v138 addObject:v113];

                                v114 = [[NEPolicy alloc] initWithOrder:(v106 + 1) result:v139 conditions:v107];
                                [v138 addObject:v114];
                              }
                            }

                            v101 = [v137 countByEnumeratingWithState:&v147 objects:v184 count:16];
                          }

                          while (v101);
                        }

                        v78 = v132 + 1;
                      }

                      while ((v132 + 1) != v131);
                      v131 = [v129 countByEnumeratingWithState:&v155 objects:v186 count:16];
                    }

                    while (v131);
                  }

                  v76 = v128 + 1;
                }

                while ((v128 + 1) != v126);
                v126 = [v127 countByEnumeratingWithState:&v159 objects:v187 count:16];
                if (!v126)
                {
                  goto LABEL_140;
                }
              }
            }

LABEL_141:
            v3 = v124;
            goto LABEL_142;
          }
        }

        v15 = [v9 processes];
        v16 = [v15 count];

        if (!v13)
        {
        }

        if (v16)
        {
          goto LABEL_81;
        }

        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v141 = [v9 hostnames];
        v17 = [v141 countByEnumeratingWithState:&v168 objects:v189 count:16];
        if (!v17)
        {
          goto LABEL_42;
        }

        v18 = v17;
        v144 = *v169;
        do
        {
          for (n = 0; n != v18; n = n + 1)
          {
            if (*v169 != v144)
            {
              objc_enumerationMutation(v141);
            }

            v20 = *(*(&v168 + 1) + 8 * n);
            v21 = objc_alloc_init(NSMutableArray);
            v22 = +[NEPolicyCondition allInterfaces];
            [v21 addObject:v22];

            v167 = 0;
            [v20 UTF8String];
            v23 = nw_endpoint_create_address_from_string();
            v24 = v23;
            if (v23 && nw_endpoint_get_type(v23) == nw_endpoint_type_address)
            {
              v25 = [NWEndpoint endpointWithCEndpoint:v24];
              v26 = [NEPolicyCondition flowRemoteAddress:v25 prefix:v167];

              [v21 addObject:v26];
              if (([v9 isPrivacyProxy] & 1) == 0)
              {
                v27 = [NEPolicyCondition realUID:getuid()];
                [v21 addObject:v27];
              }

              if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
              {
                v28 = +[NEPolicyCondition platformBinary];
                [v21 addObject:v28];
              }

              v29 = [[NEPolicy alloc] initWithOrder:660 result:v140 conditions:v21];
              v30 = v138;
              [v138 addObject:v29];

              v31 = [NEPolicy alloc];
              v32 = 661;
              goto LABEL_39;
            }

            v26 = [NEPolicyCondition domain:v20];
            if ([v9 matchExactHostnames])
            {
              [v26 setExactMatch:1];
            }

            [v21 addObject:v26];
            if (([v9 isPrivacyProxy] & 1) == 0)
            {
              v33 = [NEPolicyCondition realUID:getuid()];
              [v21 addObject:v33];
            }

            if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
            {
              v34 = +[NEPolicyCondition platformBinary];
              [v21 addObject:v34];
            }

            v35 = sub_10008478C(NSPPrivacyProxyPolicySerialization, v134, 0, 0, v20, v9);
            if (v35)
            {
              v36 = v35;
              v37 = [[NEPolicy alloc] initWithOrder:v35 result:v140 conditions:v21];
              v30 = v138;
              [v138 addObject:v37];

              v31 = [NEPolicy alloc];
              v32 = (v36 + 1);
LABEL_39:
              v38 = [v31 initWithOrder:v32 result:v139 conditions:v21];
              [v30 addObject:v38];
            }
          }

          v18 = [v141 countByEnumeratingWithState:&v168 objects:v189 count:16];
        }

        while (v18);
LABEL_42:

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v127 = [v9 urls];
        v39 = [v127 countByEnumeratingWithState:&v163 objects:v188 count:16];
        if (!v39)
        {
          goto LABEL_140;
        }

        v40 = v39;
        v41 = *v164;
        v7 = v138;
        do
        {
          for (ii = 0; ii != v40; ii = ii + 1)
          {
            if (*v164 != v41)
            {
              objc_enumerationMutation(v127);
            }

            v43 = *(*(&v163 + 1) + 8 * ii);
            v44 = sub_10008478C(NSPPrivacyProxyPolicySerialization, v134, 0, v43, 0, v9);
            if (v44)
            {
              v45 = v44;
              v46 = objc_alloc_init(NSMutableArray);
              v47 = +[NEPolicyCondition allInterfaces];
              [v46 addObject:v47];

              v48 = [NEPolicyCondition url:v43];
              [v46 addObject:v48];

              if (([v9 isPrivacyProxy] & 1) == 0)
              {
                v49 = [NEPolicyCondition realUID:getuid()];
                [v46 addObject:v49];
              }

              if ([v9 systemProcessOnly] && (sub_100054100() & 1) == 0)
              {
                v50 = +[NEPolicyCondition platformBinary];
                [v46 addObject:v50];
              }

              v51 = [[NEPolicy alloc] initWithOrder:v45 result:v140 conditions:v46];
              [v138 addObject:v51];

              v52 = [[NEPolicy alloc] initWithOrder:(v45 + 1) result:v139 conditions:v46];
              [v138 addObject:v52];
            }
          }

          v40 = [v127 countByEnumeratingWithState:&v163 objects:v188 count:16];
        }

        while (v40);
        v3 = v124;
        v6 = v119;
LABEL_142:

LABEL_143:
        v8 = v123 + 1;
      }

      while ((v123 + 1) != v122);
      v115 = [obj countByEnumeratingWithState:&v180 objects:v192 count:16];
      v122 = v115;
      if (!v115)
      {
LABEL_148:

        goto LABEL_150;
      }
    }
  }

  v7 = 0;
LABEL_150:

  return v7;
}

NSObject *sub_100086050(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2 || (v4 = v3, ![v2 conditionsCount]))
  {
    v21 = 0;
    goto LABEL_41;
  }

  v5 = sub_10007F730(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview");

  if (!v5)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = v4;
      v32 = 2112;
      v33 = @"com.apple.SafariTechnologyPreview";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ unable to install policies for '%@' as it is not installed", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v6 = sub_1000833D4(NSPPrivacyProxyPolicySerialization, v2);
  v7 = objc_alloc_init(NSMutableArray);
  if ((v6 & 2) != 0)
  {
    v8 = sub_10007F730(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview");
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          sub_1000801E0(NSPPrivacyProxyPolicySerialization, v7, *(*(&v25 + 1) + 8 * i), 0);
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }
  }

  if ((v6 & 4) != 0)
  {
    v13 = sub_10008081C(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview", 1, 0);
    if (!v13)
    {
      v22 = nplog_obj();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buf = 138412290;
      v31 = v4;
      v23 = "%@ failed to create SafariTechnologyPreview KNOWN TRACKER policies";
LABEL_37:
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
      goto LABEL_38;
    }

    v14 = v13;
    [v7 addObjectsFromArray:v13];
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview", 0, 0);
  if (!v15)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 138412290;
    v31 = v4;
    v23 = "%@ failed to create SafariTechnologyPreview UNENCRYPTED policies";
    goto LABEL_37;
  }

  v16 = v15;
  [v7 addObjectsFromArray:v15];

LABEL_19:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  v17 = sub_10007F944(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview", 0, @"com.apple.safari.peertopeer", 0, 0);
  if (!v17)
  {
    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v4;
      v23 = "%@ failed to create SafariTechnologyPreview All policies";
      goto LABEL_37;
    }

LABEL_38:

LABEL_39:
    v21 = 0;
    goto LABEL_40;
  }

  v18 = v17;
  [v7 addObjectsFromArray:v17];

LABEL_22:
  if ((v6 & 0x20) != 0)
  {
    v19 = sub_10007FCC0(NSPPrivacyProxyPolicySerialization, @"com.apple.SafariTechnologyPreview", 1, 0);
    if (v19)
    {
      v20 = v19;
      [v7 addObjectsFromArray:v19];

      goto LABEL_25;
    }

    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 138412290;
    v31 = v4;
    v23 = "%@ failed to create SafariTechnologyPreview HTTP policies";
    goto LABEL_37;
  }

LABEL_25:
  v7 = v7;
  v21 = v7;
LABEL_40:

LABEL_41:

  return v21;
}

id sub_100086460(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (!v4 || (v7 = v6, ![v4 conditionsCount]) || !objc_msgSend(v5, "count"))
  {
    v26 = 0;
    goto LABEL_43;
  }

  v8 = [v5 allObjects];
  v9 = sub_1000833D4(NSPPrivacyProxyPolicySerialization, v4);
  v10 = objc_alloc_init(NSMutableArray);
  if ((v9 & 2) != 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          sub_1000801E0(NSPPrivacyProxyPolicySerialization, v10, *(*(&v31 + 1) + 8 * i), 0);
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v13);
    }

    v8 = v30;
  }

  if ((v9 & 4) != 0)
  {
    v16 = sub_10008081C(NSPPrivacyProxyPolicySerialization, 0, 1, v8);
    if (!v16)
    {
      v27 = nplog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v36 = v7;
      v28 = "%@ failed to create Safari App Bundles KNOWN TRACKER policies";
LABEL_40:
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
      goto LABEL_41;
    }

    v17 = v16;
    [v10 addObjectsFromArray:v16];
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  v18 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, 0, v8, 0);
  if (!v18)
  {
    v27 = nplog_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    v36 = v7;
    v28 = "%@ failed to create Safari App Bundles UNENCRYPTED policies";
    goto LABEL_40;
  }

  v19 = v18;
  [v10 addObjectsFromArray:v18];

LABEL_19:
  if ((v9 & 0x40000) == 0)
  {
    goto LABEL_22;
  }

  v20 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, 0, v8, 1);
  if (!v20)
  {
    v27 = nplog_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    v36 = v7;
    v28 = "%@ failed to create Safari App Bundles UNENCRYPTED policies";
    goto LABEL_40;
  }

  v21 = v20;
  [v10 addObjectsFromArray:v20];

LABEL_22:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v22 = sub_10007F944(NSPPrivacyProxyPolicySerialization, 0, v8, @"com.apple.safari.peertopeer", 0, 0);
  if (!v22)
  {
    v27 = nplog_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    v36 = v7;
    v28 = "%@ failed to create Safari App Bundles All policies";
    goto LABEL_40;
  }

  v23 = v22;
  [v10 addObjectsFromArray:v22];

LABEL_25:
  if ((v9 & 0x20) != 0)
  {
    v24 = sub_10007FCC0(NSPPrivacyProxyPolicySerialization, 0, 1, v8);
    if (v24)
    {
      v25 = v24;
      [v10 addObjectsFromArray:v24];

      goto LABEL_28;
    }

    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v7;
      v28 = "%@ failed to create Safari App Bundles HTTP policies";
      goto LABEL_40;
    }

LABEL_41:

    v26 = 0;
    goto LABEL_42;
  }

LABEL_28:
  v26 = v10;
LABEL_42:

LABEL_43:

  return v26;
}

id sub_100086870(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4 && [v4 conditionsCount])
  {
    v6 = [v5 allObjects];
    if ((sub_1000833D4(NSPPrivacyProxyPolicySerialization, v4) & 0x108) == 8)
    {
      v7 = sub_10008081C(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilemail", 0, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100086944()
{
  v0 = objc_opt_self();
  v1 = objc_alloc_init(NSMutableArray);
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [NPUtilities machoUUIDFromPID:getpid()];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v0;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ adding probe policy using uuid: %@", &v16, 0x16u);
  }

  v5 = [NSURL URLWithString:@"http://netcts.cdn-apple.com"];
  v6 = [v5 host];
  v7 = [NEPolicyCondition domain:v6];
  [v2 addObject:v7];

  v8 = [NEPolicyCondition accountIdentifier:@"com.apple.nsp.proxyAgentProbe"];
  [v2 addObject:v8];

  v9 = +[NEPolicyCondition platformBinary];
  [v2 addObject:v9];

  v10 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
  v11 = [NEPolicyResult netAgentUUID:v10];
  v12 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 350, v11, v3, 80, 6, v2, 0);

  if (v12)
  {
    [v1 addObject:v12];

LABEL_6:
    v13 = v1;
    goto LABEL_10;
  }

  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to create probe policy", &v16, 0xCu);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

id sub_100086BFC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NEPolicyCondition allInterfaces];
  [v4 addObject:v5];

  v6 = [NEPolicyCondition ipProtocol:6];
  [v4 addObject:v6];

  v7 = [NEPolicy alloc];
  v8 = [v2 controlUnit];

  v9 = +[NEPolicyResult divertSocketToControlUnit:](NEPolicyResult, "divertSocketToControlUnit:", [v8 unsignedIntValue]);
  v10 = [v7 initWithOrder:720 result:v9 conditions:v4];

  [v3 addObject:v10];
  v11 = +[NEPolicyCondition allowsUnsafeSocketAccess];
  [v11 setNegative:1];
  v12 = [NEPolicy alloc];
  v13 = [NEPolicyResult skipWithOrder:730];
  v14 = +[NEPolicyCondition allInterfaces];
  v15 = +[NEPolicyCondition usesModernNetworkAPI];
  v19[1] = v15;
  v19[2] = v11;
  v16 = [NSArray arrayWithObjects:v19 count:3];
  v17 = [v12 initWithOrder:710 result:v13 conditions:v16];

  [v3 addObject:v17];

  return v3;
}

id sub_100086E2C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v15 = [NEPolicyResult skipWithOrder:500];
  if ([v2 count])
  {
    v3 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v3 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = +[NEPolicyCondition allInterfaces];
        v20[0] = v9;
        v10 = [NEPolicyCondition accountIdentifier:@"com.apple.networkQuality.private-relay"];
        v20[1] = v10;
        v11 = [NSArray arrayWithObjects:v20 count:2];
        v12 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v15, v8, 0, 0, v11, 1);

        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  return v3;
}

uint64_t sub_100087034(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000833D4(NSPPrivacyProxyPolicySerialization, v2);

  return (v3 >> 13) & 1;
}

void sub_100087080(id a1)
{
  v1 = [NSSet setWithObjects:@"apple.com", @"apple.news", @"cdn-apple.com", @"icloud.com", @"mzstatic.com", @".apple", @"icloud.com.cn", @"googleapis.com", @"gstatic.com", 0];
  v2 = qword_100129828;
  qword_100129828 = v1;

  if (os_variant_allows_internal_security_policies())
  {
    v3 = CFPreferencesCopyAppValue(@"NSPAllowAllDomains", kCFPreferencesCurrentApplication);
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        byte_100129820 = [v3 BOOLValue];
        v4 = nplog_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          v6 = byte_100129820;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Detected allow all domains in preferences file: %{public}d", buf, 8u);
        }
      }
    }
  }
}

void sub_10008720C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v18 = *(a1 + 32);
  v2 = [v18 enabled];
  if (([v2 BOOLValue] & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v4 = [v3 configServerEnabled];
  if (![v4 BOOLValue])
  {

LABEL_8:

    return;
  }

  v5 = *(a1 + 32);
  v6 = [v5 resurrectionDate];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) resurrectionDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 >= 0.0)
    {
      return;
    }
  }

  else
  {
  }

  v11 = [*(a1 + 32) etag];

  if (v11)
  {
    v12 = +[NSDate now];
    v13 = [*(a1 + 32) configurationFetchDate];
    [v12 timeIntervalSinceDate:v13];
    v15 = v14;

    if (v15 < 86400.0)
    {
      return;
    }

    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Refreshing stale configuration", buf, 2u);
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = sub_100001F74;
    v25 = sub_1000875B8;
    v26 = os_transaction_create();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000879B8;
    v19[3] = &unk_10010A058;
    v19[4] = buf;
    sub_1000875D4(a1, 1, v19);
  }

  else
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching new configuration", buf, 2u);
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = sub_100001F74;
    v25 = sub_1000875B8;
    v26 = os_transaction_create();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000875C0;
    v20[3] = &unk_10010A058;
    v20[4] = buf;
    sub_1000875D4(a1, 1, v20);
  }

  _Block_object_dispose(buf, 8);
}

void sub_10008759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000875C0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000875D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      if (*(a1 + 8) == 1)
      {
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "privacy proxy configuration refresh is already pending", buf, 2u);
        }

        if (!v5)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = [v7 configServerEnabled];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          if ([*(a1 + 64) status] == 1)
          {
            *(a1 + 8) = 1;
            v12 = nplog_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = sub_100091C4C(a1);
              v14 = *(a1 + 80) + 1;
              *buf = 138412546;
              v24 = v13;
              v25 = 2048;
              v26 = v14;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetching privacy proxy configuration on %@ (Attempt: %lu)", buf, 0x16u);
            }

            objc_initWeak(buf, a1);
            v15 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_100092854;
            v19[3] = &unk_10010A998;
            objc_copyWeak(v22, buf);
            v19[4] = a1;
            v20 = v8;
            v22[1] = a2;
            v21 = v5;
            [v15 refreshCountryPlusTimezone:v19];

            objc_destroyWeak(v22);
            objc_destroyWeak(buf);
            goto LABEL_21;
          }

          v17 = nplog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "deferring configuration fetch, path is not satisfied", buf, 2u);
          }

          *(a1 + 9) = 1;
          sub_10008888C(a1);
          if (!v5)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v16 = nplog_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "privacy proxy config fetch is disabled", buf, 2u);
          }

          if (!v5)
          {
            goto LABEL_21;
          }
        }
      }

      (*(v5 + 2))(v5, 0, 0);
LABEL_21:

      goto LABEL_22;
    }

    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v24 = "[NSPConfigurationManager refreshConfigurationFetchWithReason:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s called with null self.configuration", buf, 0xCu);
    }

    (*(v5 + 2))(v5, 0, 0);
  }

LABEL_22:
}

void sub_10008798C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000879B8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000879CC(id *a1)
{
  v2 = [a1[4] resurrectionDate];

  if (v2)
  {
    v3 = [a1[4] resurrectionDate];
    [v3 timeIntervalSinceNow];
    v5 = v4;

    if (v5 <= 0.0)
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "resurrection timer value in past", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x3032000000;
      v24 = sub_100001F74;
      v25 = sub_1000875B8;
      v26 = os_transaction_create();
      v18 = NPGetInternalQueue();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100088088;
      v19[3] = &unk_100109450;
      v19[4] = a1;
      v19[5] = &buf;
      dispatch_async(v18, v19);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v6 = a1[4];
      v7 = [v6 resurrectionDate];
      v8 = [NSDateFormatter localizedStringFromDate:v7 dateStyle:1 timeStyle:2];

      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resurrection date is %@, starting timer", &buf, 0xCu);
      }

      objc_initWeak(&buf, a1);
      v10 = [NSTimer alloc];
      v11 = a1[4];
      v12 = [v11 resurrectionDate];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100087D6C;
      v20[3] = &unk_10010A7E0;
      objc_copyWeak(&v21, &buf);
      v20[4] = a1;
      v13 = [v10 initWithFireDate:v12 interval:0 repeats:v20 block:0.0];
      v14 = a1[5];
      a1[5] = v13;

      v15 = +[NSRunLoop mainRunLoop];
      v16 = a1[5];
      [v15 addTimer:v16 forMode:NSDefaultRunLoopMode];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&buf);
    }
  }
}

void sub_100087D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100087D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100001F74;
  v11[4] = sub_1000875B8;
  v12 = os_transaction_create();
  v4 = NPGetInternalQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100087EB8;
  v6[3] = &unk_10010A7B8;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = *(a1 + 32);
  v9 = v11;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
  _Block_object_dispose(v11, 8);
}

void sub_100087EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100087EB8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resurrection timer fired", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[5];
    WeakRetained[5] = 0;

    [v4[4] setResurrectionDate:0];
    sub_100087FD4(*(a1 + 40));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100088074;
    v8[3] = &unk_10010A058;
    v8[4] = *(a1 + 48);
    sub_1000875D4(v4, 1, v8);
  }

  else
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void sub_100087FD4(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reset config fetch timer", v4, 2u);
    }

    sub_100088340(a1, 0x15180uLL);
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;

    sub_10008888C(a1);
  }
}

void sub_100088074(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100088088(uint64_t a1)
{
  sub_100087FD4(*(a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100088110;
  v3[3] = &unk_10010A058;
  v2 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  sub_1000875D4(v2, 1, v3);
}

void sub_100088110(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100088124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NPGetInternalQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000881E8;
  v6[3] = &unk_10010A808;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_1000881E8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Enable check timer fired", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[6];
    WeakRetained[6] = 0;

    v6 = objc_loadWeakRetained(v4 + 3);
    [v6 enableCheckTimeout:v4];
  }
}

void sub_100088294(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resetting configuration timers", v7, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

  sub_100088340(a1, 0x15180uLL);
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 invalidate];
    v6 = *(a1 + 48);
    *(a1 + 48) = 0;
  }
}

void sub_100088340(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    if (!a2)
    {
      v6 = *(a1 + 80);
      if (v6 < 8)
      {
        v8 = dword_1000CF1B0[v6];
        a2 = arc4random_uniform(6u) + v8;
      }

      else
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v22) = 8;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch configuration after %u attempts", buf, 8u);
        }

        a2 = arc4random_uniform(6u) + 10800;
      }
    }

    ++*(a1 + 80);
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retry: fetching configuration after %lu seconds", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v10 = NPGetInternalQueue();
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);
    v12 = *(a1 + 72);
    *(a1 + 72) = v11;

    if (*(a1 + 72))
    {
      v13 = *(a1 + 72);
      v14 = dispatch_time(0x8000000000000000, 1000000000 * a2);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);

      v15 = *(a1 + 72);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100094804;
      handler[3] = &unk_100109538;
      v16 = v15;
      objc_copyWeak(&v20, buf);
      dispatch_source_set_event_handler(v16, handler);

      dispatch_resume(*(a1 + 72));
      objc_destroyWeak(&v20);
    }

    v17 = [NSDate dateWithTimeIntervalSinceNow:a2];
    v18 = *(a1 + 96);
    *(a1 + 96) = v17;

    sub_10008888C(a1);
    objc_destroyWeak(buf);
  }
}

void sub_100088604(id *a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setting up configuration timers", &buf, 2u);
    }

    sub_100088294(a1);
    sub_1000879CC(a1);
    v3 = a1[4];
    v4 = [v3 earliestEnableCheckDate];

    if (v4)
    {
      v5 = nplog_obj();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

      if (v6)
      {
        v7 = [NSDateFormatter localizedStringFromDate:v4 dateStyle:1 timeStyle:2];
        v8 = nplog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduling enable check date timer to fire on %@", &buf, 0xCu);
        }
      }

      objc_initWeak(&location, a1);
      v9 = [NSTimer alloc];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v16 = sub_100088124;
      v17 = &unk_10010A830;
      objc_copyWeak(&v18, &location);
      v10 = [v9 initWithFireDate:v4 interval:0 repeats:&buf block:0.0];
      v11 = a1[6];
      a1[6] = v10;

      v12 = +[NSRunLoop mainRunLoop];
      v13 = a1[6];
      [v12 addTimer:v13 forMode:NSDefaultRunLoopMode];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void sub_100088850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008888C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100001F74;
  v4[4] = sub_1000875B8;
  v5 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009497C;
  v3[3] = &unk_100109450;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(v2, v3);

  _Block_object_dispose(v4, 8);
}

void sub_10008897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100088994(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resetting configuration", v6, 2u);
    }

    v3 = +[NSPConfiguration defaultConfiguration];
    v4 = [v3 copy];
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;
  }
}

void sub_100088D7C(uint64_t a1)
{
  if (a1)
  {
    v45 = [*(a1 + 32) configServerHost];
    v44 = [*(a1 + 32) configServerPath];
    v43 = [*(a1 + 32) overrideConfigServerPath];
    v42 = [*(a1 + 32) configServerHeaders];
    v2 = [*(a1 + 32) ignoreInvalidCerts];
    v3 = [*(a1 + 32) ignoreSignature];
    v4 = [*(a1 + 32) ignorePlatformBinary];
    v41 = [*(a1 + 32) geohashSharingEnabledStatus];
    v40 = [*(a1 + 32) geohashOverride];
    v39 = [*(a1 + 32) preferredPathRoutingEnabledStatus];
    v38 = [*(a1 + 32) privateAccessTokensEnabledStatus];
    v37 = [*(a1 + 32) privateAccessTokensAllowTools];
    v36 = [*(a1 + 32) inProcessFlowDivert];
    v35 = [*(a1 + 32) proxyTrafficState];
    v34 = [*(a1 + 32) userTier];
    v5 = [*(a1 + 32) proxyAccountType];
    v6 = [*(a1 + 32) proxyAccountUnlimited];
    v7 = [*(a1 + 32) userPreferredTier];
    v8 = [*(a1 + 32) subscriberEnabledFromNonSettingsApp];
    v9 = [*(a1 + 32) lastPrivateCloudComputeEnvironment];
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_100001F74;
    v47[4] = sub_1000875B8;
    v48 = os_transaction_create();
    sub_100088294(a1);
    sub_100087FD4(a1);
    sub_100088994(a1);
    sub_100089524(a1);
    +[NSPConfigurationSignatureInfo removeFromPreferences];
    v10 = *(a1 + 32);
    [v10 setConfigServerEnabled:&__kCFBooleanTrue];

    v11 = *(a1 + 32);
    [v11 setConfigServerHost:v45];

    v12 = *(a1 + 32);
    [v12 setConfigServerPath:v44];

    v13 = *(a1 + 32);
    [v13 setOverrideConfigServerPath:v43];

    v14 = *(a1 + 32);
    [v14 setConfigServerHeaders:v42];

    v15 = *(a1 + 32);
    [v15 setIgnoreInvalidCerts:v2];

    v16 = *(a1 + 32);
    [v16 setIgnoreSignature:v3];

    v17 = *(a1 + 32);
    [v17 setIgnorePlatformBinary:v4];

    v18 = *(a1 + 32);
    [v18 setGeohashSharingEnabledStatus:v41];

    v19 = *(a1 + 32);
    [v19 setGeohashOverride:v40];

    v20 = *(a1 + 32);
    [v20 setPreferredPathRoutingEnabledStatus:v39];

    v21 = *(a1 + 32);
    [v21 setPrivateAccessTokensEnabledStatus:v38];

    v22 = *(a1 + 32);
    [v22 setPrivateAccessTokensAllowTools:v37];

    v23 = *(a1 + 32);
    [v23 setInProcessFlowDivert:v36];

    v24 = *(a1 + 32);
    [v24 setProxyTrafficState:v35];

    v25 = *(a1 + 32);
    [v25 setUserTier:v34];

    v26 = *(a1 + 32);
    [v26 setProxyAccountType:v5];

    v27 = *(a1 + 32);
    [v27 setProxyAccountUnlimited:v6];

    v28 = *(a1 + 32);
    [v28 setUserPreferredTier:v7];

    v29 = *(a1 + 32);
    [v29 setSubscriberEnabledFromNonSettingsApp:v8];

    v30 = *(a1 + 32);
    [v30 setLastPrivateCloudComputeEnvironment:v9];

    v31 = *(a1 + 32);
    v32 = [v31 configServerHost];
    *(a1 + 10) = [v32 isEqualToString:@"mask-api.icloud.com"] ^ 1;

    sub_1000892C0(a1);
    sub_10008720C(a1);
    sub_100088604(a1);
    v33 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000895E4;
    block[3] = &unk_100109450;
    block[4] = a1;
    block[5] = v47;
    dispatch_async(v33, block);

    _Block_object_dispose(v47, 8);
  }
}

void sub_1000892C0(uint64_t a1)
{
  v15 = objc_alloc_init(NSURLSessionDelegate);
  v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v3 = [v2 _socketStreamProperties];
  if (v3)
  {
    v4 = [v2 _socketStreamProperties];
    v5 = [NSMutableDictionary dictionaryWithDictionary:v4];
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
  [v2 set_socketStreamProperties:v5];
  v6 = [*(a1 + 32) urlRequestTimeout];
  [v6 doubleValue];
  v8 = v7;

  if (v8 <= 0.0)
  {
    [v2 setTimeoutIntervalForResource:30.0];
  }

  else
  {
    v9 = [*(a1 + 32) urlRequestTimeout];
    [v9 doubleValue];
    [v2 setTimeoutIntervalForResource:?];
  }

  [v2 set_loggingPrivacyLevel:1];
  v10 = [*(a1 + 32) configServerHost];
  [v15 setValidationHostname:v10];

  [v15 setIgnoreInvalidCerts:{objc_msgSend(*(a1 + 32), "ignoreInvalidCerts")}];
  v11 = *(a1 + 88);
  if (v11)
  {
    [v11 invalidateAndCancel];
  }

  v12 = +[NSOperationQueue mainQueue];
  v13 = [NSURLSession sessionWithConfiguration:v2 delegate:v15 delegateQueue:v12];
  v14 = *(a1 + 88);
  *(a1 + 88) = v13;

  [*(a1 + 88) setSessionDescription:@"PrivacyProxyConfigurationFetch"];
}

void sub_1000894B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configEnabled:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089524(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    [v2 invalidateAndCancel];
    v3 = *(a1 + 88);
    *(a1 + 88) = 0;
  }
}

void sub_100089574(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configDisabled:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000895E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configurationRestart:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089654(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained cloudSubscriptionChanged:*(a1 + 48) configManager:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000896C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained suspendPrivacyProxyTemporarily:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089738(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained resumePrivacyProxy:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000897A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configUpdated:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089818(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100089924;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_10008990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100089924(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configFetched:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089994(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained proxyTokenFetchEnabled:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089A04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained proxyTokenFetchDisabled:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089A74(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100089B80;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_100089B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100089B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained authInfoChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089BF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained userTierChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

id sub_100089C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained userPreferredTierChanged:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089D10;
  v7[3] = &unk_10010A058;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  return [v5 refreshConfigurationWithReason:8 completionHandler:v7];
}

void sub_100089D10(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100089D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained effectiveUserTierChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089D94(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100089EA0;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_100089E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100089EA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained proxyInfoChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100089F10(void *a1, char a2)
{
  if (a1)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100001F74;
    v11[4] = sub_1000875B8;
    v12 = os_transaction_create();
    v4 = [a1 mergeProxyTrafficStateWithCurrentPolicy];
    v5 = NPGetInternalQueue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008A054;
    v7[3] = &unk_10010A858;
    v7[4] = a1;
    v8 = v4;
    v10 = a2;
    v9 = v11;
    v6 = v4;
    dispatch_async(v5, v7);

    _Block_object_dispose(v11, 8);
  }
}

void sub_10008A03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008A054(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained policiesUpdated:v4 policy:*(a1 + 40) resolverInfoChanged:*(a1 + 56)];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10008A0CC(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008A1D8;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_10008A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008A1D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained geohashSettingsChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10008A248(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008A354;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_10008A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008A354(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained configEpochChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10008A3C4(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F74;
    v4[4] = sub_1000875B8;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008A4D0;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_10008A4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008A4D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  [WeakRetained privateAccessTokensEnabledChanged:v4];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10008A540(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    if (a2)
    {
      v5 = "successfully";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trial configuration refresh completed %s", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

id sub_10008A61C(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 conditionsCount])
    {
      a1 = [[NSMutableArray alloc] initWithCapacity:0];
    }

    else
    {
      a1 = 0;
    }

    if ([v4 conditionsCount])
    {
      v5 = 0;
      do
      {
        v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 conditionsAtIndex:v5]);
        [a1 addObject:v6];

        ++v5;
      }

      while (v5 < [v4 conditionsCount]);
    }
  }

  return a1;
}

id *sub_10008A834(id *a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1 effectiveUserTier])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v2 = [v1[4] proxyConfiguration];
      v3 = [v2 policyTierMaps];

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v11 + 1) + 8 * i);
            v9 = [v8 tier];
            if (v9 == [v1 effectiveUserTier])
            {
              v1 = [v8 policy];
              goto LABEL_13;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = "[NSPConfigurationManager configuredPrivacyProxyPolicy]";
        _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s called with null self.effectiveUserTier", buf, 0xCu);
      }
    }

    v1 = 0;
LABEL_13:
  }

  return v1;
}

uint64_t sub_10008B3A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 accessTokenTypesCount];
    if (v7 == [v6 accessTokenTypesCount])
    {
      if ([v5 accessTokenTypesCount] && objc_msgSend(v5, "accessTokenTypesCount"))
      {
        v8 = 0;
        do
        {
          v9 = [v5 accessTokenTypesAtIndex:v8];
          v10 = v9 == [v6 accessTokenTypesAtIndex:v8];
          a1 = v10;
          if (!v10)
          {
            break;
          }

          ++v8;
        }

        while (v8 < [v5 accessTokenTypesCount]);
      }

      else
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_100090458(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 32) userTier];
    if ([v2 unsignedIntegerValue] != 2)
    {
LABEL_5:

      return 1;
    }

    WeakRetained = objc_loadWeakRetained(v1 + 3);
    if ([WeakRetained subscriberTierIsProhibited:v1])
    {

      goto LABEL_5;
    }

    v4 = [v1 configurationSubscriberPoliciesCount];

    if (v4)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000904EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!(v3 | v4) || (v6 = 1, v3) && v4 && [v3 isEqual:v4])
  {
    v6 = 0;
  }

  return v6;
}

void sub_100091650(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100091C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100091C4C(uint64_t a1)
{
  if (a1 && (*(a1 + 10) & 1) == 0)
  {
    v2 = [*(a1 + 64) interface];
    v1 = [v2 interfaceName];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100091CB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nplog_obj();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to receive private cloud compute environment, error %@", buf, 0xCu);
    }

    v9 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091EB8;
    block[3] = &unk_10010A8A8;
    v16 = *(a1 + 40);
    dispatch_async(v9, block);

    v10 = v16;
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received private cloud compute environment %@", buf, 0xCu);
    }

    v11 = NPGetInternalQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100091ECC;
    v12[3] = &unk_10010A8D0;
    v12[4] = *(a1 + 32);
    v13 = v5;
    v14 = *(a1 + 40);
    dispatch_async(v11, v12);

    v10 = v13;
  }
}

uint64_t sub_100091ECC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained updateSavedPrivateCloudComputeEnvironment:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v4[4] lastPrivateCloudComputeEnvironment];
    v7 = v5;
    v8 = v7;
    if (!(v7 | v6) || v7 && v6 && [v6 isEqual:v7])
    {
    }

    else
    {

      v6 = [v4[4] copy];
      [v6 setLastPrivateCloudComputeEnvironment:v8];
      [v4 updateConfiguration:v6];
    }
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

void sub_100092278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100092298(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 enabled];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[4];
    }

    v9 = v8;
    v10 = [v9 configServerHost];
    v11 = [v10 isEqualToString:@"mask-api.icloud.com"];
    v12 = *(a1 + 32);
    if (v12)
    {
      *(v12 + 10) = v11 ^ 1;
    }

    v13 = NPGetInternalQueue();
    v14 = v13;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100092478;
    v21[3] = &unk_100109478;
    v21[4] = *(a1 + 32);
    v15 = v21;
  }

  else
  {
    v13 = NPGetInternalQueue();
    v14 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000924DC;
    block[3] = &unk_100109478;
    block[4] = *(a1 + 32);
    v15 = block;
  }

  dispatch_async(v13, v15);

  if (a2)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Private cloud compute environment changed, forcing a configuration fetch", v19, 2u);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 32);
    }

    else
    {
      v18 = 0;
    }

    [v18 setEtag:0];
  }

  sub_10008720C(*(a1 + 32));
  sub_100088604(*(a1 + 32));
}

void sub_100092478(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = WeakRetained;
  [WeakRetained configEnabled:v4];
}

void sub_1000924DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = WeakRetained;
  [WeakRetained configDisabled:v4];
}

const __CFString *sub_10009280C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 0xB)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10010AA88 + a2 - 1);
  }
}

void sub_100092854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100092970;
    v7[3] = &unk_10010A970;
    objc_copyWeak(v10, &location);
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v5 = v4;
    v6 = *(a1 + 64);
    v8 = v5;
    v10[1] = v6;
    v9 = *(a1 + 48);
    [v3 requestAccessTokenWithCompletionHandler:v7];

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void sub_100092954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100092970(uint64_t a1, uint64_t a2, void *a3)
{
  v69 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v5 = sub_100091C4C(*(a1 + 32));
    v6 = [*(a1 + 40) etag];
    v7 = *(a1 + 64);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v72 = sub_10009352C;
    v73 = &unk_10010A948;
    objc_copyWeak(&v75, &location);
    v74 = *(a1 + 48);
    v67 = v5;
    v68 = v6;
    v60 = v69;
    v61 = v71;
    v8 = WeakRetained[4];
    v58 = v8;
    if (v8)
    {
      v66 = [v8 createConfigFetchURLWithPath];
      if (v66)
      {
        if (qword_100129838 != -1)
        {
          dispatch_once(&qword_100129838, &stru_10010A9B8);
        }

        v9 = mach_absolute_time();
        v10 = WeakRetained[11];
        *&v77 = _NSConcreteStackBlock;
        *(&v77 + 1) = 3221225472;
        v78 = sub_100093DFC;
        v79 = &unk_10010A9E0;
        v80 = WeakRetained;
        v11 = v66;
        v81 = v11;
        v82 = v61;
        v83 = v7;
        v84 = v9;
        v70 = v11;
        v64 = v67;
        v63 = v68;
        v65 = v10;
        v62 = v60;
        v59 = &v77;
        v12 = NPGetInternalQueue();
        dispatch_assert_queue_V2(v12);

        if (v65)
        {
          if (os_variant_has_internal_content())
          {
            v13 = sub_100094468(WeakRetained);
            v14 = copyProductTypeString();
            v15 = copyOSNameString();
            v16 = copyOSVersionString();
            v17 = copyOSBuildString();
            v18 = v17;
            if ((v13 & 5) == 1)
            {
              v19 = @"<%@> <%@;%@;%@>";
            }

            else
            {
              v19 = @"<%@> <%@;%@;%@;internal>";
            }

            v20 = [NSString stringWithFormat:v19, v14, v15, v16, v17, v58];

            if ([WeakRetained environmentUsesNonDefaultServer])
            {
              v21 = [v70 host];
              v22 = [v21 isEqualToString:@"mask-api.icloud.com"];

              if (v22)
              {
                v23 = [v70 absoluteString];
                v24 = [v23 mutableCopy];

                [v24 replaceOccurrencesOfString:@"mask-api.icloud.com" withString:@"api-mask.us-west-1a.app.apple.com" options:0 range:{0, objc_msgSend(v24, "length")}];
                v25 = [WeakRetained[11] delegate];
                [v25 setValidationHostname:@"api-mask.us-west-1a.app.apple.com"];

                v26 = [NSURL URLWithString:v24];

                v64 = 0;
                v70 = v26;
              }
            }

            v27 = [WeakRetained[4] configServerHost];
            *(WeakRetained + 10) = [v27 isEqualToString:@"mask-api.icloud.com"] ^ 1;
          }

          else
          {
            v27 = copyProductTypeString();
            v28 = copyOSNameString();
            v29 = copyOSVersionString();
            v30 = copyOSBuildString();
            v20 = [NSString stringWithFormat:@"<%@> <%@%@;%@>", v27, v28, v29, v30, v58];;
          }

          if (!sub_100094468(WeakRetained) && (v7 == 10 || v7 == 5) && ([v70 host], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"mask-api.icloud.com"), v40, v41))
          {
            v42 = [v70 absoluteString];
            v43 = [v42 mutableCopy];

            [v43 replaceOccurrencesOfString:@"mask-api.icloud.com/" withString:@"gateway.icloud.com/mask-api/" options:0 range:{0, objc_msgSend(v43, "length")}];
            v44 = [NSURL URLWithString:v43];

            v45 = nplog_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Fetching configuration from backup location", &buf, 2u);
            }

            v70 = v44;
            [NSMutableURLRequest requestWithURL:v44];
          }

          else
          {
            [NSMutableURLRequest requestWithURL:v70];
          }
          v31 = ;
          v32 = v31;
          if (v63)
          {
            [v31 setValue:v63 forHTTPHeaderField:@"If-None-Match"];
          }

          if (v64)
          {
            [v32 setBoundInterfaceIdentifier:v64];
          }

          if (v20)
          {
            [v32 setValue:v20 forHTTPHeaderField:@"X-Mask-Client-Info"];
          }

          if (v62)
          {
            [v32 setValue:v62 forHTTPHeaderField:@"X-Mask-Subscription-Token"];
          }

          v33 = WeakRetained[15];
          if (v33)
          {
            [v32 setValue:v33 forHTTPHeaderField:@"True-Client-Ip"];
          }

          v34 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
          v35 = [v34 currentCountryPlusTimezone];

          if (v35)
          {
            [v32 setValue:v35 forHTTPHeaderField:@"Client-Region"];
          }

          if (v7)
          {
            v36 = sub_10009280C(NSPConfigurationManager, v7);
            [v32 setValue:v36 forHTTPHeaderField:@"X-Mask-Fetch-Reason"];
          }

          if ([WeakRetained effectiveUserTier] == 2 && objc_msgSend(WeakRetained, "policyIncludesUnlimited"))
          {
            v37 = nplog_obj();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Setting user tier in configuration request to SUBSCRIBER_UNLIMITED", &buf, 2u);
            }

            v38 = @"SUBSCRIBER_UNLIMITED";
          }

          else
          {
            v39 = [WeakRetained effectiveUserTier];
            if (v39 >= 3)
            {
              v38 = [NSString stringWithFormat:@"(unknown: %i)", v39];
            }

            else
            {
              v38 = *(&off_10010AAE8 + (v39 & 3));
            }
          }

          v46 = [WeakRetained[4] subscriberEnabledFromNonSettingsApp];

          if (v46)
          {
            v47 = [(__CFString *)v38 stringByAppendingString:@" non-settings"];;

            v38 = v47;
          }

          [v32 setValue:v38 forHTTPHeaderField:@"X-Mask-User-Tier"];
          v48 = [NSString stringWithFormat:@"%lu", WeakRetained[10]];
          if (v48)
          {
            [v32 setValue:v48 forHTTPHeaderField:@"Retry-Attempt"];
          }

          if (os_variant_has_internal_content())
          {
            v49 = [v32 allHTTPHeaderFields];
            v50 = WeakRetained[4];
            v51 = [v50 configServerHeaders];
            v52 = [NPUtilities mergeHTTPHeaders:v49 headerOverrides:v51];
            [v32 setAllHTTPHeaderFields:v52];
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v90 = 0x3032000000;
          v91 = sub_100001F74;
          v92 = sub_1000875B8;
          v93 = 0;
          v53 = nplog_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *v85 = 138412546;
            *&v85[4] = v70;
            *&v85[12] = 2112;
            *&v85[14] = v20;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sending request for %@ with client-info %@", v85, 0x16u);
          }

          *v85 = _NSConcreteStackBlock;
          *&v85[8] = 3221225472;
          *&v85[16] = sub_100094694;
          v86 = &unk_10010AA30;
          p_buf = &buf;
          v87 = v59;
          v54 = [v65 dataTaskWithRequest:v32 completionHandler:v85];
          objc_storeStrong((*(&buf + 1) + 40), v54);
          [*(*(&buf + 1) + 40) resume];

          _Block_object_dispose(&buf, 8);
        }

        else
        {
          v57 = nplog_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "[NSPConfigurationManager fetchURL:interface:eTag:requestType:session:accessToken:reason:completionHandler:]";
            _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
          }

          v78(v59, 0, 0, 0);
        }
      }

      else
      {
        v56 = nplog_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v77) = 136315138;
          *(&v77 + 4) = "[NSPConfigurationManager fetchPrivacyProxyConfigurationFile:eTag:accessToken:reason:completionHandler:]";
          _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "%s called with null configFetchURL", &v77, 0xCu);
        }

        v72(v61, 0, 0, 0, 0, 0);
      }
    }

    else
    {
      v55 = nplog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        LODWORD(v77) = 136315138;
        *(&v77 + 4) = "[NSPConfigurationManager fetchPrivacyProxyConfigurationFile:eTag:accessToken:reason:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "%s called with null currentConfiguration", &v77, 0xCu);
      }

      v72(v61, 0, 0, 0, 0, 0);
    }

    objc_destroyWeak(&v75);
    objc_destroyWeak(&location);
  }
}

void sub_1000934E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  _Block_object_dispose((v32 - 176), 8);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009352C(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
    if (a2)
    {
      if (v11)
      {
        v56 = objc_alloc_init(NSData);
        NSPPrivacyProxyConfigurationRawConfig();
        v17 = v56;

        v18 = [NSPPrivacyProxySignedConfiguration alloc];
        v19 = [v11 copy];
        v20 = [v18 initWithData:v19];

        v46 = v20;
        v21 = [v20 configuration];
        v22 = [v21 data];
        v23 = [v22 length];
        v45 = v17;
        v24 = [v17 length];

        if (v23 != v24)
        {
          v25 = nplog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v46 configuration];
            v43 = [v42 data];
            *buf = 134218240;
            v58 = [v43 length];
            v59 = 2048;
            v60 = [v45 length];
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Unmarshalled configuration length is different from received length (%lu != %lu)", buf, 0x16u);
          }
        }

        v26 = v45;
        if (v46 && v45)
        {
          v27 = objc_alloc_init(NSPConfigurationSignatureInfo);
          v28 = [v46 certificates];
          [v27 setCertificates:v28];

          v29 = [v46 signature];
          [v27 setSignature:v29];

          [v27 setSignatureAlgorithm:{objc_msgSend(v46, "algorithm")}];
          if (os_variant_allows_internal_security_policies())
          {
            if ([*(v16 + 32) ignoreInvalidCerts])
            {
LABEL_16:
              v44 = 0;
LABEL_26:
              v38 = *(v16 + 32);
              v39 = [v38 configServerHost];
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_100093A98;
              v47[3] = &unk_10010A920;
              v48 = v46;
              v49 = v45;
              v50 = v12;
              v51 = v13;
              v52 = v16;
              v53 = v27;
              v55 = *(a1 + 32);
              v54 = v14;
              v40 = v27;
              v26 = v45;
              [NSPConfiguration verifyConfigurationSignature:v40 configuration:v49 host:v39 validateCert:v44 completionHandler:v47];

LABEL_30:
              goto LABEL_31;
            }

            if ([*(v16 + 32) ignoreSignature])
            {
              v30 = nplog_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Not validating configuration signature due to internal CLI setting", buf, 2u);
              }

              goto LABEL_16;
            }
          }

          v44 = 1;
          goto LABEL_26;
        }

        v35 = nplog_obj();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        if (v45)
        {
          if (!v36)
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v58 = v12;
          v37 = "failed to allocate signed configuration object from configuration data (new etag %@)";
        }

        else
        {
          if (!v36)
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v58 = v12;
          v37 = "unable to extract wire format of configuration from signed configuration message (new etag %@)";
        }

        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
LABEL_28:

        ++*(v16 + 112);
        sub_100088340(v16, 0);
        v41 = *(a1 + 32);
        if (v41)
        {
          (*(v41 + 16))(v41, 0, v14);
        }

        goto LABEL_30;
      }

      ++*(WeakRetained + 13);
      v33 = +[NSDate now];
      [*(v16 + 32) setConfigurationFetchDate:v33];

      sub_100087FD4(v16);
      sub_100089818(v16);
      v34 = *(a1 + 32);
      if (v34)
      {
        v32 = *(v34 + 16);
        goto LABEL_21;
      }
    }

    else
    {
      ++*(WeakRetained + 14);
      v31 = *(a1 + 32);
      if (v31)
      {
        v32 = *(v31 + 16);
LABEL_21:
        v32();
      }
    }
  }

LABEL_31:
}

void sub_100093A98(uint64_t a1, int a2)
{
  if (!a2)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 48);
    *buf = 138412290;
    v26 = v18;
    v19 = "Failed to validate configuration signature (new etag %@)";
    goto LABEL_27;
  }

  v3 = [*(a1 + 32) configuration];
  v4 = [NSPConfiguration validatePrivacyProxyConfiguration:v3];

  if (v4)
  {
    v24 = objc_alloc_init(NSPConfiguration);
    if (v24)
    {
      v5 = [*(a1 + 32) configuration];
      [v24 setProxyConfiguration:v5];

      [v24 setProxyConfigurationData:*(a1 + 40)];
      [v24 setEtag:*(a1 + 48)];
      [v24 setEpoch:*(a1 + 56)];
      v6 = +[NSDate now];
      [v24 setConfigurationFetchDate:v6];

      v7 = [v24 proxyConfiguration];
      v8 = [v7 disableUntil];

      if (v8)
      {
        v9 = [NSDate alloc];
        v10 = [v24 proxyConfiguration];
        v11 = [v9 initWithTimeIntervalSince1970:{objc_msgSend(v10, "disableUntil")}];

        [v11 timeIntervalSinceNow];
        if (v12 > 0.0)
        {
          [v24 setResurrectionDate:v11];
        }
      }

      v13 = *(a1 + 64);
      if (v13)
      {
        v14 = *(v13 + 32);
      }

      else
      {
        v14 = 0;
      }

      [v24 saveInternalOptions:v14];
      [*(a1 + 64) updateConfiguration:v24];
      [*(a1 + 72) saveToPreferences];
      sub_100087FD4(*(a1 + 64));
    }

    sub_100089818(*(a1 + 64));
    v15 = *(a1 + 64);
    if (v15)
    {
      ++*(v15 + 104);
    }

    v16 = *(a1 + 88);
    if (v16)
    {
      (*(v16 + 16))(v16, 1, 0);
    }

    return;
  }

  v17 = nplog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 48);
    *buf = 138412290;
    v26 = v23;
    v19 = "Failed to validate configuration (new etag %@)";
LABEL_27:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
  }

LABEL_21:

  v20 = *(a1 + 64);
  if (v20)
  {
    ++*(v20 + 112);
    v21 = *(a1 + 64);
  }

  else
  {
    v21 = 0;
  }

  sub_100088340(v21, 0);
  v22 = *(a1 + 88);
  if (v22)
  {
    (*(v22 + 16))(v22, 0, *(a1 + 80));
  }
}

void sub_100093DA0(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_100129840 = v1 / v2 / 1000.0 / 1000000.0;
  }
}

void sub_100093DFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  v12 = v7;
  v13 = &AnalyticsSendEventLazy_ptr;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
      v15 = [v14 statusCode];
      if ((v15 - 503) < 2)
      {
        v19 = [v14 allHeaderFields];
        v20 = [v19 objectForKeyedSubscript:@"Retry-After"];

        if (v20)
        {
          v21 = objc_alloc_init(NSNumberFormatter);
          [v21 numberFromString:v20];
          v23 = v22 = v9;
          v18 = [v23 unsignedIntegerValue];

          v9 = v22;
          v13 = &AnalyticsSendEventLazy_ptr;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        if (v15 == 200 || v15 == 304)
        {

          goto LABEL_19;
        }

        v18 = 0;
      }
    }

    else
    {
      if (v12)
      {
        v16 = [v12 domain];
        v17 = [v16 isEqualToString:NSURLErrorDomain];

        if (v17)
        {
          if ([v12 code] == -999)
          {

            goto LABEL_20;
          }
        }
      }

      v18 = 0;
    }

    *(v10 + 9) = v18 == 0;
    sub_100088340(v10, v18);
  }

LABEL_19:

  if (v12)
  {
LABEL_20:
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      v52 = 138412546;
      v53 = v12;
      v54 = 2112;
      v55 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received error %@ for %@", &v52, 0x16u);
    }

    v26 = [v12 domain];
    if ([v26 isEqualToString:NSURLErrorDomain])
    {
      v27 = [v12 code];

      if (v27 == -999)
      {
        v28 = *(*(a1 + 48) + 16);
LABEL_30:
        v28();
        v30 = objc_alloc_init(NSPConfigurationFetchAnalytics);
        v32 = [*(a1 + 40) absoluteString];
        [(NSPConfigurationFetchAnalytics *)v30 setConfigFetchURL:v32];

        [(NSPConfigurationFetchAnalytics *)v30 setRequestedServerUUID:0];
        [(NSPConfigurationFetchAnalytics *)v30 setHttpCode:0];
        v33 = [v12 domain];
        v34 = [v33 isEqualToString:NSURLErrorDomain];

        if (v34)
        {
          -[NSPConfigurationFetchAnalytics setNsurlErrorCode:](v30, "setNsurlErrorCode:", [v12 code]);
        }

        v35 = sub_10009280C(NSPConfigurationManager, *(a1 + 56));
        [(NSPConfigurationFetchAnalytics *)v30 setReason:v35];

        [(NSPProxyAnalytics *)v30 sendAnalytics];
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
    }

    v28 = *(*(a1 + 48) + 16);
    goto LABEL_30;
  }

  v29 = v13[414];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v11;
    if (os_variant_has_internal_diagnostics())
    {
      v31 = [(NSPConfigurationFetchAnalytics *)v30 valueForHTTPHeaderField:@"x-apple-request-uuid"];
    }

    else
    {
      v31 = 0;
    }

    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(NSPConfigurationFetchAnalytics *)v30 statusCode];
      v38 = *(a1 + 40);
      v52 = 134218498;
      v53 = v37;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v31;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received HTTP response code %ld for %@ with request UUID %@", &v52, 0x20u);
    }

    if ([(NSPConfigurationFetchAnalytics *)v30 statusCode]== 200)
    {
      v39 = [(NSPConfigurationFetchAnalytics *)v30 valueForHTTPHeaderField:@"Etag"];
      v40 = [(NSPConfigurationFetchAnalytics *)v30 valueForHTTPHeaderField:@"proxy-config-epoch"];
      v41 = v40;
      if (v40 && (v42 = [v40 intValue], (v42 - 1) <= 0xFFFE))
      {
        v43 = [NSNumber numberWithInt:v42];
      }

      else
      {
        v43 = &off_1001142C0;
      }

      v44 = v9;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [(NSPConfigurationFetchAnalytics *)v30 statusCode];
      v44 = v9;
      (*(*(a1 + 48) + 16))();
    }

    v45 = mach_absolute_time();
    v46 = objc_alloc_init(NSPConfigurationFetchAnalytics);
    v47 = [*(a1 + 40) absoluteString];
    [(NSPConfigurationFetchAnalytics *)v46 setConfigFetchURL:v47];

    v48 = [(NSPConfigurationFetchAnalytics *)v30 valueForHTTPHeaderField:@"x-apple-request-uuid"];
    [(NSPConfigurationFetchAnalytics *)v46 setRequestedServerUUID:v48];

    [(NSPConfigurationFetchAnalytics *)v46 setHttpCode:[(NSPConfigurationFetchAnalytics *)v30 statusCode]];
    v49 = [0 domain];
    v50 = [v49 isEqualToString:NSURLErrorDomain];

    if (v50)
    {
      -[NSPConfigurationFetchAnalytics setNsurlErrorCode:](v46, "setNsurlErrorCode:", [0 code]);
    }

    [(NSPConfigurationFetchAnalytics *)v46 setLatency:*&qword_100129840 * (v45 - *(a1 + 64))];
    v51 = sub_10009280C(NSPConfigurationManager, *(a1 + 56));
    [(NSPConfigurationFetchAnalytics *)v46 setReason:v51];

    [(NSPProxyAnalytics *)v46 sendAnalytics];
    v9 = v44;
    goto LABEL_46;
  }

LABEL_47:
}

uint64_t sub_100094468(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v2 = [WeakRetained getSavedPrivateCloudComputeEnvironment];

  v3 = v2;
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_21;
  }

  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Read com.apple.privateCloudCompute environment: %@", &v8, 0xCu);
  }

  if (([v3 isEqualToString:@"dev"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"qa"])
    {
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"perf"])
    {
      v6 = 4;
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"staging"])
    {
      v6 = 3;
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"carry"])
    {
      v6 = 2;
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"production"])
    {
      v6 = 1;
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"ephemeral"])
    {
LABEL_9:
      v6 = 6;
      goto LABEL_22;
    }

    if ([v3 isEqualToString:@"quarantine"])
    {
      v6 = 7;
      goto LABEL_22;
    }

LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  v6 = 5;
LABEL_22:

  return v6;
}

void sub_100094694(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000947B0;
  block[3] = &unk_10010AA08;
  v15 = *(a1 + 32);
  v11 = v15;
  v20 = v15;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(v10, block);
}

uint64_t sub_1000947B0(void *a1)
{
  v2 = *(a1[8] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1[7] + 16);

  return v7();
}

void sub_100094804(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Config Fetch retry timer fired", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(*(WeakRetained + 9));
    v5 = v4[9];
    v4[9] = 0;

    *buf = 0;
    v8 = buf;
    v9 = 0x3032000000;
    v10 = sub_100001F74;
    v11 = sub_1000875B8;
    v12 = os_transaction_create();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100094968;
    v6[3] = &unk_10010A058;
    v6[4] = buf;
    sub_1000875D4(v4, 10, v6);
    _Block_object_dispose(buf, 8);
  }
}

void sub_100094950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100094968(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10009497C(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 96)) != 0)
  {
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = -1;
  }

  xpc_dictionary_set_int64(xdict, "ConfigFetchDate", v5);
  if ((deviceClassIsHomepod() & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6 && (*(v6 + 9) & 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    xpc_dictionary_set_int64(xdict, "ConfigFetchOnNetworkChange", v7);
  }

  xpc_set_event();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

Class sub_1000950CC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100129850)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100095220;
    v4[4] = &unk_10010AA68;
    v4[5] = v4;
    v5 = off_10010AA50;
    v6 = 0;
    qword_100129850 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100129850)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PCCServerEnvironment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100129848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100095220(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100129850 = result;
  return result;
}

id sub_1000954EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100001F84;
  v26 = sub_10009589C;
  v27 = 0;
  v6 = +[NEFileHandleMaintainer sharedMaintainer];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000958A4;
  v19[3] = &unk_10010AB28;
  v7 = v5;
  v20 = v7;
  v21 = &v22;
  [v6 iterateFileHandlesWithBlock:v19];

  if (v23[5])
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = a1;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ Re-using existing policy session", buf, 0xCu);
    }
  }

  else
  {
    v9 = objc_alloc_init(NEPolicySession);
    v10 = v23[5];
    v23[5] = v9;

    [v23[5] setPriority:a3];
    v11 = v23[5];
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [NEPolicySessionFileHandle alloc];
    v8 = [v12 initWithPolicySession:v23[5] name:v7];
    if (v8)
    {
      v13 = +[NEFileHandleMaintainer sharedMaintainer];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100095994;
      v17[3] = &unk_10010AB50;
      v18 = v7;
      [v13 setFileHandle:v8 matchingPredicate:v17];

      v14 = v18;
    }

    else
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = a1;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to create a policy session", buf, 0xCu);
      }
    }
  }

  v11 = v23[5];
LABEL_11:
  v15 = v11;

  _Block_object_dispose(&v22, 8);

  return v15;
}

void sub_1000957E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100095860(id a1)
{
  v1 = objc_alloc_init(NSPPrivacyProxyPolicyHandler);
  v2 = qword_100129858;
  qword_100129858 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000958A4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 name], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 32)), v4, v5))
  {
    v6 = [NEPolicySession alloc];
    v7 = [v3 handle];
    v8 = [v6 initWithSocket:{dup(objc_msgSend(v7, "fileDescriptor"))}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 40) + 8) + 40) removeAllPolicies];
    [*(*(*(a1 + 40) + 8) + 40) removeAllDomainFilters];
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

BOOL sub_100095994(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:*(a1 + 32)];

    if (v5)
    {
      v6 = 1;
    }
  }

  return v6;
}

id *sub_100095A18(id *result)
{
  if (result)
  {
    v1 = result;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = result[10];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = v1[3];
          [v8 removePolicyWithID:{objc_msgSend(v7, "unsignedIntegerValue", v9)}];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    return [v1[10] removeAllObjects];
  }

  return result;
}

id *sub_1000960D0(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[14] count];
    if (result)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v2 = v1[14];
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            v8 = v1[3];
            [v8 removePolicyWithID:{objc_msgSend(v7, "unsignedIntegerValue", v9)}];

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }

      return [v1[14] removeAllObjects];
    }
  }

  return result;
}

id *sub_100096200(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[15] count];
    if (result)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v2 = v1[15];
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            v8 = v1[3];
            [v8 removePolicyWithID:{objc_msgSend(v7, "unsignedIntegerValue", v9)}];

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }

      return [v1[15] removeAllObjects];
    }
  }

  return result;
}

uint64_t sub_100096330(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [*(result + 128) count];
    if (result)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v2 = *(v1 + 128);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            v8 = *(v1 + 24);
            [v8 removePolicyWithID:{objc_msgSend(v7, "unsignedIntegerValue", v9)}];

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }

      [*(v1 + 128) removeAllObjects];
      return 1;
    }
  }

  return result;
}

id *sub_100096464(id *result)
{
  if (result)
  {
    v1 = result;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = result[25];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = v1[3];
          [v8 removePolicyWithID:{objc_msgSend(v7, "unsignedIntegerValue", v9)}];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    return [v1[25] removeAllObjects];
  }

  return result;
}

uint64_t sub_100096CA8(void **a1)
{
  v1 = a1;
  if (a1)
  {
    if (sub_10009A134(@"com.apple.SafariTechnologyPreview"))
    {
      sub_100086050(NSPPrivacyProxyPolicySerialization, *(v1 + 16));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v2 = v18 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v16;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v16 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v15 + 1) + 8 * i);
            v8 = nplog_obj();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v20 = v1;
              v21 = 2112;
              v22 = v7;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ adding SafariTechnologyPreview policy %@", buf, 0x16u);
            }

            v9 = [*(v1 + 24) addPolicy:v7];
            v10 = nplog_obj();
            v11 = v10;
            if (!v9)
            {
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v20 = v1;
                _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ failed to add SafariTechnologyPreview policy", buf, 0xCu);
              }

              v1 = 0;
              goto LABEL_20;
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v20 = v1;
              v21 = 2048;
              v22 = v9;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ added SafariTechnologyPreview policy %lu", buf, 0x16u);
            }

            v12 = *(v1 + 112);
            v13 = [NSNumber numberWithUnsignedInteger:v9];
            [v12 addObject:v13];
          }

          v4 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      v1 = 1;
LABEL_20:
    }

    else
    {
      return 1;
    }
  }

  return v1;
}

uint64_t sub_100096F38(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10009A190(a1, @"com.apple.mobilesafari");
    sub_100086460(NSPPrivacyProxyPolicySerialization, *(v1 + 16), v2);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v20 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v16 = v2;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = nplog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = v1;
            v23 = 2112;
            v24 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ adding Safari Bundle policy %@", buf, 0x16u);
          }

          v10 = [*(v1 + 24) addPolicy:v8];
          v11 = nplog_obj();
          v12 = v11;
          if (!v10)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v1;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ failed to add Safari Bundle policy", buf, 0xCu);
            }

            v1 = 0;
            goto LABEL_18;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = v1;
            v23 = 2048;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ added Safari Bundle policy %lu", buf, 0x16u);
          }

          v13 = *(v1 + 120);
          v14 = [NSNumber numberWithUnsignedInteger:v10];
          [v13 addObject:v14];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      v1 = 1;
LABEL_18:
      v2 = v16;
    }

    else
    {
      v1 = 1;
    }
  }

  return v1;
}

uint64_t sub_1000971E0(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  if (sub_10009A134(@"com.apple.mobilemail"))
  {
    v2 = sub_10009A190(a1, @"com.apple.mobilemail");
    sub_100086870(NSPPrivacyProxyPolicySerialization, a1[2], v2);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v21 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v17 = v2;
      v6 = *v19;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = nplog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v24 = a1;
            v25 = 2112;
            v26 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ adding Mail App policy %@", buf, 0x16u);
          }

          v10 = [a1[3] addPolicy:v8];
          v11 = nplog_obj();
          v12 = v11;
          if (!v10)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = a1;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ failed to add Mail App policy", buf, 0xCu);
            }

            v15 = 0;
            goto LABEL_21;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v24 = a1;
            v25 = 2048;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ added Mail App policy %lu", buf, 0x16u);
          }

          v13 = a1[16];
          v14 = [NSNumber numberWithUnsignedInteger:v10];
          [v13 addObject:v14];
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      v15 = 1;
LABEL_21:
      v2 = v17;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v2 = nplog_obj();
    v15 = 1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = a1;
      v25 = 2112;
      v26 = @"com.apple.mobilemail";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ %@ app is not installed", buf, 0x16u);
    }
  }

  return v15;
}

uint64_t sub_100097508(void **a1)
{
  if (sub_100087034(NSPPrivacyProxyPolicySerialization, a1[2]))
  {
    v2 = [NPUtilities copyUUIDsForSigningIdentifier:@"com.apple.networkQuality" executablePath:0];
    sub_100086E2C(NSPPrivacyProxyPolicySerialization, v2);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v20 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = nplog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = a1;
            v23 = 2112;
            v24 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ adding networkQuality policy %@", buf, 0x16u);
          }

          v10 = [a1[3] addPolicy:v8];
          v11 = nplog_obj();
          v12 = v11;
          if (!v10)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = a1;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ failed to add networkQuality policy", buf, 0xCu);
            }

            v15 = 0;
            goto LABEL_21;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = a1;
            v23 = 2048;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ added networkQuality policy %lu", buf, 0x16u);
          }

          v13 = a1[25];
          v14 = [NSNumber numberWithUnsignedInteger:v10];
          [v13 addObject:v14];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      v15 = 1;
    }

    else
    {
      v15 = 1;
    }

LABEL_21:
  }

  else
  {
    v2 = nplog_obj();
    v15 = 1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ network tools policy condition is not set", buf, 0xCu);
    }
  }

  return v15;
}

void sub_10009810C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = v1[13];
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v3)
    {
      v4 = *v35;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v35 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v34 + 1) + 8 * i);
          v7 = v1[3];
          [v7 removePolicyWithID:{objc_msgSend(v6, "unsignedIntegerValue")}];
        }

        v3 = [v2 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v3);
    }

    v8 = v1[13];
    [v8 removeAllObjects];

    if ((*(v1 + 9) & 1) == 0 && (*(v1 + 10) & 1) == 0)
    {
      v9 = v1[11];
      if ([v9 count])
      {
      }

      else
      {
        v10 = v1[12];
        v11 = [v10 length] == 0;

        if (v11)
        {
          v18 = v1[3];
          [v18 apply];
LABEL_30:

          objc_sync_exit(v1);
          return;
        }
      }
    }

    v12 = *(v1 + 9);
    v13 = *(v1 + 10);
    v14 = v1[11];
    v15 = [v14 allObjects];
    v16 = v1[12];
    v17 = sub_100083B54(NSPPrivacyProxyPolicySerialization, v12, v13, v15, v16);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = v1;
            v40 = 2112;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ adding interface exception policy %@", buf, 0x16u);
          }

          v24 = v1[3];
          v25 = [v24 addPolicy:v22];

          if (v25)
          {
            v26 = nplog_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v39 = v1;
              v40 = 2048;
              v41 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@ added interface exception policy %lu", buf, 0x16u);
            }

            v27 = v1[13];
            v28 = [NSNumber numberWithUnsignedInteger:v25];
            [v27 addObject:v28];
          }

          else
          {
            v27 = nplog_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v1;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@ failed to add interface exception policy", buf, 0xCu);
            }
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v19);
    }

    v29 = v1[3];
    [v29 apply];

    goto LABEL_30;
  }
}

id *sub_100099210(id *result)
{
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = [result[23] allValues];
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v8;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v4 |= [*(*(&v7 + 1) + 8 * i) unsignedLongLongValue];
        }

        v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    return [NPUtilities postNotification:@"networkserviceproxy-reverse-proxy" value:v4];
  }

  return result;
}

id sub_10009A134(void *a1)
{
  v1 = a1;
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 applicationIsInstalled:v1];

  return v3;
}

id sub_10009A190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [NSSet setWithObject:v3];
  v12 = 0;
  v6 = [v4 machOUUIDsForBundleIdentifiers:v5 error:&v12];
  v7 = v12;

  v8 = 0;
  if ([v6 count])
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v8 = [v6 objectForKeyedSubscript:v3];
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v14 = a1;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ machOUUIDs For BundleIdentifier %@: %@", buf, 0x20u);
    }
  }

  return v8;
}

void sub_10009C1AC(void *a1, id a2)
{
  if (a1)
  {
    v25 = +[NSDate now];
    v4 = [a1 serviceStatusTimeline];
    v5 = [v4 lastObject];

    if ([v5 serviceStatus] != a2)
    {
      if (v5)
      {
        [v5 setServiceStatusEndTime:v25];
      }

      v6 = [a1 serviceStatusTimeline];
      v7 = [v6 count];

      for (; v7; --v7)
      {
        v8 = [a1 serviceStatusTimeline];
        v9 = [v8 firstObject];

        v10 = [v9 serviceStatusEndTime];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 serviceStatusEndTime];
          [v25 timeIntervalSinceDate:v12];
          v14 = v13;

          if (v14 >= 604800.0)
          {
            v15 = [a1 serviceStatusTimeline];
            [v15 removeObject:v9];
          }
        }
      }

      v16 = [a1 serviceStatusTimeline];
      v17 = [v16 count];

      if (v17 > 0xA)
      {
        v18 = [a1 serviceStatusTimeline];
        v19 = [v18 count] - 10;

        for (; v19; --v19)
        {
          v20 = [a1 serviceStatusTimeline];
          v21 = [v20 firstObject];

          v22 = [a1 serviceStatusTimeline];
          [v22 removeObject:v21];
        }
      }

      v23 = objc_alloc_init(PrivacyProxyServiceStatusTime);
      [v23 setServiceStatus:a2];
      [v23 setServiceStatusStartTime:v25];
      v24 = [a1 serviceStatusTimeline];
      [v24 addObject:v23];

      sub_10009C6B0(a1);
    }
  }
}

void sub_10009C6B0(void *a1)
{
  v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (!v2)
  {
    v5 = nplog_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v10 = 0;
    v6 = "NSKeyedArchiver initialize failed";
    v7 = &v10;
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_8;
  }

  [a1 encodeWithCoder:v2];
  _CFPreferencesSetFileProtectionClass();
  v3 = [v2 encodedData];
  CFPreferencesSetAppValue(@"NSPServiceStatusManagerInfo", v3, kCFPreferencesCurrentApplication);

  LODWORD(v3) = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v4 = nplog_obj();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v6 = "Failed to write nsp service status manager info to preference file";
    v7 = buf;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saved status manager info to preference file", v8, 2u);
  }

LABEL_8:
}

void sub_10009D038(void *a1, id a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [PrivacyProxyServiceStatus serviceStatusString:a2];
      v14 = [a1 serviceStatus];
      v15 = +[PrivacyProxyServiceStatus serviceStatusString:](PrivacyProxyServiceStatus, "serviceStatusString:", [v14 serviceStatus]);
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting service status %@, previous service status %@", buf, 0x16u);
    }

    v16 = [a1 serviceStatus];
    if ([v16 serviceStatus] == a2)
    {
      v17 = [a1 serviceStatus];
      v18 = [v17 details];
      v19 = v11;
      v20 = v19;
      if (!(v19 | v18) || v19 && v18 && [v18 isEqual:v19])
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    v21 = [a1 serviceStatus];
    [v21 setServiceStatus:a2];

    v22 = [a1 serviceStatus];
    [v22 setDetails:v11];

    sub_10009C1AC(a1, a2);
    ++a1[6];
    [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
    v16 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/INTERNET_PRIVACY"];
    v23 = NPGetInternalQueue();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009D320;
    v24[3] = &unk_10010AB78;
    v25 = v9;
    sub_1000ADD60(NSPUserNotification, v25, v10, v16, v23, v24);

    v17 = v25;
    goto LABEL_12;
  }

LABEL_13:
}

void sub_10009D320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nplog_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to post notification %@: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Posted notification %@", &v8, 0xCu);
  }
}

uint64_t sub_10009DF8C(void *a1, id a2, uint64_t a3, void *a4)
{
  v71 = a4;
  if (!a1)
  {
    v63 = 0;
    goto LABEL_74;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v8 = [a1 serviceStatus];
  v9 = [v8 networkStatuses];

  v10 = [v9 countByEnumeratingWithState:&v72 objects:v85 count:16];
  v70 = v7;
  self = a1;
  if (!v10)
  {
    v12 = 0;
    v22 = 0;
    v13 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v73;
  v68 = 1;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v73 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v72 + 1) + 8 * i);
      if ([v16 networkType] == a3)
      {
        if (v12)
        {
          v12 = 1;
          continue;
        }

        v17 = [v16 networkStatus];
        v19 = a2 != 2 || v17 != 0;
        if (v17 == a2 || !v19) && ([v16 networkName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", v71), v20, v7 = v70, (v21))
        {
          v12 = 0;
          v68 = 0;
        }

        else
        {
          v16 = objc_alloc_init(PrivacyProxyNetworkStatus);

          [v16 setNetworkStatus:a2];
          [v16 setNetworkType:a3];
          [v16 setNetworkName:v71];
          v12 = 1;
          v13 = v16;
        }
      }

      [v7 addObject:v16];
    }

    v11 = [v9 countByEnumeratingWithState:&v72 objects:v85 count:16];
  }

  while (v11);
  v22 = v68 ^ 1;
  a1 = self;
LABEL_26:

  if ((v12 & 1) == 0 && (v22 & 1) == 0)
  {
    v23 = objc_alloc_init(PrivacyProxyNetworkStatus);

    [v23 setNetworkStatus:a2];
    [v23 setNetworkType:a3];
    [v23 setNetworkName:v71];
    [v7 addObject:v23];
    v12 = 1;
    v13 = v23;
  }

  v24 = [a1 serviceStatus];
  [v24 setNetworkStatuses:v7];

  if ((v12 & 1) == 0)
  {
    goto LABEL_73;
  }

  v25 = v13;
  if (!v25)
  {
    v26 = nplog_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v88 = "[NSPServiceStatusManager setNetworkStatusOnTimeline:]";
      _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%s called with null networkStatus", buf, 0xCu);
    }

    goto LABEL_72;
  }

  v66 = v12;
  v65 = v13;
  v26 = +[NSDate now];
  v27 = objc_alloc_init(NSMutableArray);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v29 = objc_getProperty(a1, v28, 64, 1);
  v30 = [v29 countByEnumeratingWithState:&v81 objects:buf count:16];
  if (!v30)
  {
    goto LABEL_52;
  }

  v31 = v30;
  v32 = *v82;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v82 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v81 + 1) + 8 * v33);
      if (v34)
      {
        v35 = *(v34 + 8);
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      v37 = [v36 networkType];
      if (v37 != [v25 networkType])
      {

        goto LABEL_43;
      }

      if (!v34)
      {

LABEL_41:
        sub_100006B14(v34, v26);
LABEL_43:
        if (v34)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      v38 = *(v34 + 24);

      if (!v38)
      {
        goto LABEL_41;
      }

LABEL_44:
      v39 = *(v34 + 24);
      if (v39)
      {
        v40 = v39;
        [v26 timeIntervalSinceDate:*(v34 + 24)];
        v42 = v41;

        if (v42 >= 172800.0)
        {
          [v27 addObject:v34];
        }
      }

LABEL_47:
      if (v31 != ++v33)
      {
        continue;
      }

      break;
    }

    v43 = [v29 countByEnumeratingWithState:&v81 objects:buf count:16];
    v31 = v43;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_52:

  a1 = self;
  [objc_getProperty(self v44];
  v69 = objc_alloc_init(NSMutableArray);

  if ([objc_getProperty(self v45] >= 0xB)
  {
    v47 = [objc_getProperty(self v46];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v49 = objc_getProperty(self, v48, 64, 1);
    v50 = [v49 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = v47 - 10;
      v53 = *v78;
LABEL_55:
      v54 = 0;
      while (1)
      {
        if (*v78 != v53)
        {
          objc_enumerationMutation(v49);
        }

        if (!v52)
        {
          break;
        }

        v55 = *(*(&v77 + 1) + 8 * v54);
        if (v55)
        {
          v56 = *(v55 + 8);
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;
        v58 = [v57 networkType];
        if (v58 == [v25 networkType] && v55)
        {
          v59 = *(v55 + 24);

          if (v59)
          {
            [v69 addObject:v55];
            --v52;
          }
        }

        else
        {
        }

        if (v51 == ++v54)
        {
          v60 = [v49 countByEnumeratingWithState:&v77 objects:v86 count:16];
          v51 = v60;
          if (v60)
          {
            goto LABEL_55;
          }

          break;
        }
      }
    }

    a1 = self;
  }

  [objc_getProperty(a1 v46];
  v61 = objc_alloc_init(PrivacyProxyNetworkStatusTime);
  sub_10000A4F0(v61, v25);
  sub_10003B8A4(v61, v26);
  [objc_getProperty(a1 v62];
  sub_10009C6B0(a1);

  v7 = v70;
  v13 = v65;
  v12 = v66;
LABEL_72:

  ++a1[6];
  [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" value:?];
LABEL_73:
  v76 = (a1[10] == 2) & v12;

  v63 = v76;
LABEL_74:

  return v63;
}

void sub_10009EBE4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [NSURL URLWithString:@"prefs:root=WIFI"];
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [v3 openSensitiveURL:v2 withOptions:0];

    if ((v4 & 1) == 0)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = WeakRetained;
    [WeakRetained disableWiFiNetwork:*(a1 + 40)];
  }
}

void sub_10009F108(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_DATA_OPTIONS"];
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [v3 openSensitiveURL:v2 withOptions:0];

    if ((v4 & 1) == 0)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = WeakRetained;
    [WeakRetained disableCellularNetwork:*(a1 + 40)];
  }
}

void sub_10009F6E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained disableInterface:*(a1 + 40) displayName:*(a1 + 48) type:*(a1 + 56)];
  }
}

void sub_10009F750(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    objc_setProperty_atomic(a1, v5, a2, 24);
    v7 = [a1 appStatuses];
    [v7 sortUsingComparator:&stru_10010ABE0];

    v8 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = a1;
    v9 = [a1 appStatuses];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 appStatus] == 1)
          {
            if (v12 > 0x14)
            {
              goto LABEL_12;
            }

            v16 = [v15 activeDate];
            if (!v16)
            {
              goto LABEL_12;
            }

            v17 = v16;
            v18 = [v15 activeDate];
            [v6 timeIntervalSinceDate:v18];
            v20 = v19;

            if (v20 < 86400.0)
            {
              ++v12;
            }

            else
            {
LABEL_12:
              [v8 addObject:v15];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v21 = [v22 appStatuses];
    [v21 removeObjectsInArray:v8];

    sub_10009C6B0(v22);
  }
}

int64_t sub_10009F958(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 activeDate];
  if (v8)
  {
  }

  else
  {
    v9 = [v7 activeDate];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = [v6 activeDate];

  if (v10)
  {
    v11 = [v7 activeDate];

    if (v11)
    {
      v12 = [v7 activeDate];
      v13 = [v6 activeDate];
      v9 = [v12 compare:v13];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_9:

  return v9;
}

void sub_1000A073C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "active";
    if (a2)
    {
      v5 = "idle";
    }

    v13 = 136315138;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "network context is %s", &v13, 0xCu);
  }

  *(*(a1 + 32) + 9) = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  if (a2)
  {
    if (!v7)
    {
      return;
    }

    *(v6 + 40) = 0;

    v8 = nplog_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(v13) = 0;
    v9 = "shared network transaction released";
    goto LABEL_12;
  }

  if (v7)
  {
    return;
  }

  v10 = os_transaction_create();
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    v9 = "shared network transaction acquired";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v13, 2u);
  }

LABEL_13:
}

void sub_1000A0904(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    if (*(a1 + 24))
    {
      NEFlowDirectorDestroy();
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      v4 = +[NEFileHandleMaintainer sharedMaintainer];
      [v4 removeFileHandleMatchingPredicate:&stru_10010AC38];

      v5 = +[NEFileHandleMaintainer sharedMaintainer];
      [v5 commit];
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_1000A09AC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = nplog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = a1;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ Bridged flow divert is already started, ignoring start request", &buf, 0xCu);
      }
    }

    else
    {
      sub_1000A0904(a1, 0);
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = a1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: Bridged flow divert starting", &buf, 0xCu);
      }

      *(a1 + 8) = 1;
      v4 = *(a1 + 16);
      if (v4)
      {
        goto LABEL_19;
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v27 = 0x3032000000;
      v28 = sub_100001F94;
      v29 = sub_1000A0F38;
      v30 = 0;
      v5 = +[NEFileHandleMaintainer sharedMaintainer];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000A0F40;
      v23[3] = &unk_10010AC60;
      v23[4] = &buf;
      [v5 iterateFileHandlesWithBlock:v23];

      if (*(*(&buf + 1) + 40))
      {
        v6 = nplog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Re-using existing flow divert control socket", v24, 2u);
        }
      }

      else
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 138412290;
          v25 = a1;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Creating a new flow divert control socket", v24, 0xCu);
        }

        v8 = [[NEFlowDivertFileHandle alloc] initFlowDivertControlSocketDisableAppMap:1];
        v9 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v8;

        if (*(*(&buf + 1) + 40))
        {
          v10 = +[NEFileHandleMaintainer sharedMaintainer];
          [v10 setFileHandle:*(*(&buf + 1) + 40) matchingPredicate:&stru_10010AC80];

          v6 = +[NEFileHandleMaintainer sharedMaintainer];
          [v6 commit];
        }

        else
        {
          v6 = nplog_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *v24 = 138412290;
            v25 = a1;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: Failed to create a flow divert control socket", v24, 0xCu);
          }
        }
      }

      v11 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&buf, 8);

      v12 = *(a1 + 16);
      *(a1 + 16) = v11;

      v4 = *(a1 + 16);
      if (v4)
      {
LABEL_19:
        v13 = [v4 handle];
        v14 = dup([v13 fileDescriptor]);

        v15 = nplog_obj();
        v16 = v15;
        if (v14 < 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v21 = [*(a1 + 16) handle];
            v22 = [v21 fileDescriptor];
            LODWORD(buf) = 67109376;
            DWORD1(buf) = v22;
            WORD4(buf) = 1024;
            *(&buf + 10) = v14;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unable to dup flow divert handle %d (%d)", &buf, 0xEu);
          }
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v19 = [*(a1 + 16) handle];
            v20 = [v19 fileDescriptor];
            LODWORD(buf) = 67109376;
            DWORD1(buf) = v14;
            WORD4(buf) = 1024;
            *(&buf + 10) = v20;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Created fd %d from %d for flow divert", &buf, 0xEu);
          }

          objc_getProperty(a1, v17, 32, 1);
          *(a1 + 24) = NEFlowDirectorCreateBridge();
          NEFlowDirectorAllowProcessDelegation();
          v18 = *(a1 + 24);
          NEFlowDirectorStart();
        }
      }
    }
  }
}

void sub_1000A0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A0E84(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Bridged flow director destroyed", v2, 2u);
  }
}

BOOL sub_1000A0EEC(id a1, NEFileHandle *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1000A0F40(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return (isKindOfClass & 1) == 0;
}

BOOL sub_1000A0FB4(id a1, NEFileHandle *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t start()
{
  errorbuf = 0;
  if (sandbox_init("com.apple.networkserviceproxy", 2uLL, &errorbuf) < 0)
  {
    v0 = nplog_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = errorbuf;
      _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "sandbox_init failed: %s", buf, 0xCu);
    }

    sandbox_free_error(errorbuf);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Starting NSPServer", buf, 2u);
  }

  v3 = sub_100053E68();
  sub_100061C9C(v3);

  objc_autoreleasePoolPop(v1);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  return 0;
}

void sub_1000A1410(id a1)
{
  v1 = objc_alloc_init(NSPPrivacyTokenManager);
  v2 = qword_100129868;
  qword_100129868 = v1;

  v3 = +[NPUtilities copyTrueClientIPAddressFromPreferences];
  v4 = v3;
  if (qword_100129868)
  {
    v5 = v3;
    objc_storeStrong((qword_100129868 + 96), v3);
    v4 = v5;
  }

  _objc_release_x1(v3, v4);
}

id *sub_1000A149C(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

id sub_1000A17F4(uint64_t a1, void *a2, void *a3, char a4, char a5, int a6)
{
  v11 = a2;
  if (a1)
  {
    v12 = a3;
    v13 = [[NSURL alloc] initWithString:v11];
    v14 = v13;
    if (a6)
    {
      v15 = [v13 host];
      v16 = [v15 isEqualToString:@"mask-api.icloud.com"];

      if (v16)
      {
        v17 = [v14 absoluteString];
        v18 = [v17 mutableCopy];

        [v18 replaceOccurrencesOfString:@"mask-api.icloud.com/" withString:@"gateway.icloud.com/mask-api/" options:0 range:{0, objc_msgSend(v11, "length")}];
        v19 = [NSURL URLWithString:v18];

        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Fetching tokens from backup location", buf, 2u);
        }

        v14 = v19;
      }
    }

    v21 = [NSMutableURLRequest requestWithURL:v14];
    [v21 setHTTPMethod:@"POST"];
    [v21 setBoundInterfaceIdentifier:v12];

    if (a5)
    {
      v22 = 0;
    }

    else
    {
      v36 = a1;
      v23 = a4;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v25 = copyProductTypeString();
      v26 = copyOSNameString();
      v27 = copyOSVersionString();
      v28 = copyOSBuildString();
      v29 = v28;
      if (has_internal_diagnostics)
      {
        v30 = @"<%@> <%@;%@;%@;internal>";
      }

      else
      {
        v30 = @"<%@> <%@;%@;%@>";
      }

      v22 = [NSString stringWithFormat:v30, v25, v26, v27, v28];

      if (v22)
      {
        [v21 setValue:v22 forHTTPHeaderField:@"X-Mask-Client-Info"];
      }

      if ((v23 & 1) == 0)
      {
        v31 = *(v36 + 96);
        if (v31)
        {
          [v21 setValue:v31 forHTTPHeaderField:@"True-Client-Ip"];
        }

        v32 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
        v33 = [v32 currentCountryPlusTimezone];

        if (v33)
        {
          [v21 setValue:v33 forHTTPHeaderField:@"Client-Region"];
        }
      }
    }

    v34 = nplog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v38 = v14;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Built token fetch URL %@ with client-info %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_1000A2D14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 112));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000A2D38(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NPGetInternalQueue();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000A2F60;
  v27[3] = &unk_10010ACC8;
  objc_copyWeak(&v37, (a1 + 112));
  v28 = *(a1 + 32);
  v29 = v11;
  v30 = v9;
  v31 = *(a1 + 40);
  v13 = *(a1 + 104);
  v32 = v10;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v33 = v19;
  v34 = v18;
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  *&v22 = *(a1 + 96);
  *(&v22 + 1) = v13;
  *&v23 = v20;
  *(&v23 + 1) = v21;
  v35 = v23;
  v36 = v22;
  v39 = a2;
  v38 = *(a1 + 120);
  v24 = v10;
  v25 = v9;
  v26 = v11;
  dispatch_async(v12, v27);

  objc_destroyWeak(&v37);
}

void sub_1000A2F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 136));
  if (!WeakRetained)
  {
    [*(a1 + 32) invalidateAndCancel];
    goto LABEL_22;
  }

  if (*(a1 + 40) || !*(a1 + 48))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 56) URL];
      *buf = 138412546;
      v39 = v4;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received token fetch error %@ for %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) domain];
    if ([v6 isEqualToString:NSURLErrorDomain])
    {
      v7 = [*(a1 + 40) code];

      if (v7 == -999)
      {
        v8 = *(a1 + 40);
        v9 = *(*(a1 + 128) + 16);
LABEL_11:
        v9();
LABEL_12:
        v11 = 0;
        v12 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = *(a1 + 40);
    v9 = *(*(a1 + 128) + 16);
    goto LABEL_11;
  }

  v21 = *(a1 + 64);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 64);
  if (os_variant_has_internal_diagnostics())
  {
    v22 = [v11 allHeaderFields];
    v12 = [v22 objectForKeyedSubscript:@"x-apple-request-uuid"];
  }

  else
  {
    v12 = 0;
  }

  v23 = nplog_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v11 statusCode];
    v25 = [*(a1 + 56) URL];
    *buf = 134218498;
    v39 = v24;
    v40 = 2112;
    v41 = v25;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received HTTP response code %ld for %@ with request UUID %@", buf, 0x20u);
  }

  if ([v11 statusCode] == 200)
  {
    v26 = [[NSPPrivacyProxyTokenActivationResponse alloc] initWithData:*(a1 + 48)];
    v27 = objc_alloc_init(NSPPrivacyProxyTokenKey);
    [v27 setKey:*(a1 + 72)];
    v28 = *(a1 + 80);
    v29 = *(a1 + 88);
    v37 = *(a1 + 96);
    v30 = [v26 activatedTokenLists];
    v13 = sub_1000B99D0(NSPPrivateAccessTokenFetcher, v28, v29, v27, v37, v30);

    if ([v26 tokenExpiryTimestamp])
    {
      v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", ([v26 tokenExpiryTimestamp] / 0x3E8));
    }

    else
    {
      v31 = 0;
    }

    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v13 count];
      v35 = *(a1 + 104);
      *buf = 134218242;
      v39 = v34;
      v40 = 2112;
      v41 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "activated %lu tokens for %@", buf, 0x16u);
    }

    *(WeakRetained + 11) += [v13 count];
    v36 = *(a1 + 40);
    (*(*(a1 + 128) + 16))();

    goto LABEL_14;
  }

  if ([v11 statusCode] == 401)
  {
    [*(WeakRetained + 2) authenticationFailure];
  }

  v32 = *(a1 + 40);
  (*(*(a1 + 128) + 16))();
LABEL_13:
  v13 = 0;
LABEL_14:
  [*(a1 + 32) invalidateAndCancel];
  v14 = mach_absolute_time();
  v15 = objc_alloc_init(NSPTokenFetchAnalytics);
  [(NSPTokenFetchAnalytics *)v15 setProxyURL:*(a1 + 112)];
  [(NSPTokenFetchAnalytics *)v15 setProxyVendor:*(a1 + 104)];
  [(NSPTokenFetchAnalytics *)v15 setTierType:*(a1 + 120)];
  v16 = *(a1 + 160);
  if (v16 >= 5)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", *(a1 + 160)];
  }

  else
  {
    v17 = off_10010B0E8[v16];
  }

  [(NSPTokenFetchAnalytics *)v15 setAuthenticationType:v17];

  [(NSPTokenFetchAnalytics *)v15 setRequestedServerUUID:v12];
  [(NSPTokenFetchAnalytics *)v15 setRequestedTokenCount:*(a1 + 144)];
  -[NSPTokenFetchAnalytics setActivatedCount:](v15, "setActivatedCount:", [v13 count]);
  -[NSPTokenFetchAnalytics setHttpCode:](v15, "setHttpCode:", [v11 statusCode]);
  v18 = [*(a1 + 40) domain];
  v19 = [v18 isEqualToString:NSURLErrorDomain];

  if (v19)
  {
    -[NSPTokenFetchAnalytics setNsurlErrorCode:](v15, "setNsurlErrorCode:", [*(a1 + 40) code]);
  }

  v20 = (v14 - *(a1 + 152));
  if (qword_100129878 != -1)
  {
    dispatch_once(&qword_100129878, &stru_10010B0A8);
  }

  [(NSPTokenFetchAnalytics *)v15 setLatency:*&qword_100129880 * v20];
  [(NSPProxyAnalytics *)v15 sendAnalytics];

LABEL_22:
}

void sub_1000A3548(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!a1)
  {
    goto LABEL_36;
  }

  if (!v12)
  {
    goto LABEL_26;
  }

  v16 = v14;
  v46 = v12;
  v47 = v13;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v17 = [v12 associatedIssuers];
  v18 = [v17 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = *v51;
  while (2)
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v51 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v50 + 1) + 8 * i);
      v23 = [v22 tokenKeys];
      if ([v23 containsObject:v11])
      {
        v24 = [v22 hasTransparencyKeyBundle];

        if (v24)
        {
          v25 = v22;

          if (!v25)
          {
            goto LABEL_22;
          }

          v26 = [NSPPrivacyProxyTransparencyTokenEntry alloc];
          v27 = [v25 transparencyKeyBundle];
          v28 = [v26 initWithData:v27];

          v14 = v16;
          if (v28)
          {
            v29 = [v28 issuerName];
            v30 = [v25 issuerName];
            v31 = [v29 isEqualToString:v30];

            if (v31)
            {
              v32 = [v28 tokenKeys];
              v33 = [v25 tokenKeys];
              v34 = [v32 isEqualToArray:v33];

              if (v34)
              {
                v35 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v28 configurationDeliveryStart]);
                v36 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v28 configurationDeliveryEnd]);
                v13 = v47;
                if (([NSPConfiguration fetchDate:v47 isWithinStart:v35 end:v36 etag:v14]& 1) != 0)
                {
                  v37 = [[SoftwareTransparency alloc] initWithApplication:0];
                  if (v37)
                  {
                    v38 = [v25 transparencyProof];
                    v45 = [v25 transparencyKeyBundle];
                    v48[0] = _NSConcreteStackBlock;
                    v48[1] = 3221225472;
                    v48[2] = sub_1000A3AEC;
                    v48[3] = &unk_100109600;
                    v49 = v15;
                    v39 = v35;
                    v40 = v38;
                    [v37 verifyExpiringProofs:v38 for:v45 completion:v48];

                    v13 = v47;
                    v35 = v39;
                  }

                  else
                  {
                    (*(v15 + 2))(v15, 0, 1013);
                  }
                }

                else
                {
                  v44 = nplog_obj();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    v55 = v35;
                    v56 = 2112;
                    v57 = v36;
                    v58 = 2112;
                    v59 = v47;
                    v60 = 2112;
                    v61 = v14;
                    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Configuration start time (%@) and end time (%@) are not valid for configuration fetched at %@ (etag %@), blocking fetching token keys", buf, 0x2Au);
                  }

                  (*(v15 + 2))(v15, 0, 1014);
                }

                v12 = v46;

                goto LABEL_35;
              }

              v42 = nplog_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v43 = "Failed to match token keys in transparency blob for token keys, blocking";
                goto LABEL_33;
              }

LABEL_34:

              (*(v15 + 2))(v15, 0, 1013);
              v12 = v46;
              v13 = v47;
LABEL_35:

              goto LABEL_36;
            }

            v42 = nplog_obj();
            if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_34;
            }

            *buf = 0;
            v43 = "Failed to match issuer name in transparency blob for token keys, blocking";
          }

          else
          {
            v42 = nplog_obj();
            if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_34;
            }

            *buf = 0;
            v43 = "Failed to parse transparency blob for token keys, blocking";
          }

LABEL_33:
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_22:
  v12 = v46;
  v13 = v47;
  v14 = v16;
  if (!_os_feature_enabled_impl())
  {
LABEL_26:
    (*(v15 + 2))(v15, 1, 0);
    goto LABEL_36;
  }

  v41 = nplog_obj();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Keys do not have transparency proof, blocking", buf, 2u);
  }

  (*(v15 + 2))(v15, 0, 1013);
LABEL_36:
}

void sub_1000A3AEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ![v5 result])
  {
    v8 = nplog_obj();
    v10 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Keys validated by transparency, allowing", buf, 2u);
    }
  }

  else
  {
    v7 = _os_feature_enabled_impl();
    v8 = nplog_obj();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Keys not validated by transparency (error %@), blocking", buf, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Keys not validated by transparency (error %@), allowing since feature flag is not enabled", buf, 0xCu);
      }

      v10 = 1;
    }
  }

  v11 = NPGetInternalQueue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A3CF4;
  v12[3] = &unk_1001095D8;
  v13 = *(a1 + 32);
  v14 = v10;
  dispatch_async(v11, v12);
}

void sub_1000A3D18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
LABEL_14:

      goto LABEL_10;
    }

    v20 = 136315138;
    v21 = "[NSPPrivacyTokenManager saveRetryIntervalFromHTTPResponse:issuerName:]";
    v19 = "%s called with null httpResponse";
LABEL_16:
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, v19, &v20, 0xCu);
    goto LABEL_14;
  }

  if (!v6)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    v20 = 136315138;
    v21 = "[NSPPrivacyTokenManager saveRetryIntervalFromHTTPResponse:issuerName:]";
    v19 = "%s called with null issuerName";
    goto LABEL_16;
  }

  v8 = [v5 allHeaderFields];
  v9 = [v8 objectForKeyedSubscript:@"Retry-After"];

  if (v9)
  {
    v10 = objc_alloc_init(NSNumberFormatter);
    v11 = [v10 numberFromString:v9];
    [v11 doubleValue];
    v13 = v12;

    if (v13 != 0.0)
    {
      v14 = [NSDate dateWithTimeIntervalSinceNow:v13];
      v15 = *(a1 + 56);
      if (!v15)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = *(a1 + 56);
        *(a1 + 56) = v16;

        v15 = *(a1 + 56);
      }

      [v15 setObject:v14 forKeyedSubscript:v7];
    }
  }

LABEL_10:
}

void sub_1000A3F04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v5 = *(a1 + 64);
      if (!v5)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = *(a1 + 64);
        *(a1 + 64) = v6;

        v5 = *(a1 + 64);
      }

      v8 = [v5 objectForKeyedSubscript:v3];
      if (!v8)
      {
        v9 = NPGetInternalQueue();
        v10 = dispatch_queue_create_with_target_V2("Blocked token request queue", 0, v9);

        dispatch_suspend(v10);
        [*(a1 + 64) setObject:v10 forKeyedSubscript:v3];
      }
    }

    else
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315138;
        v13 = "[NSPPrivacyTokenManager blockNonCachedRequestsForIssuerName:]";
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v12, 0xCu);
      }
    }
  }
}

void sub_1000A4070(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        v6 = [v5 objectForKeyedSubscript:v3];
        [*(a1 + 64) setObject:0 forKeyedSubscript:v3];
        if (v6)
        {
          dispatch_resume(v6);
        }
      }
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 136315138;
        v9 = "[NSPPrivacyTokenManager unblockNonCachedRequestsForIssuerName:]";
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v8, 0xCu);
      }
    }
  }
}

uint64_t sub_1000A418C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        a1 = [v5 objectForKeyedSubscript:v3];
        goto LABEL_9;
      }
    }

    else
    {
      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 136315138;
        v9 = "[NSPPrivacyTokenManager copyQueueToWaitForNonCachedRequestsForIssuerName:]";
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v8, 0xCu);
      }
    }

    a1 = 0;
  }

LABEL_9:

  return a1;
}

void sub_1000A4290(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v54 = a3;
  v53 = a4;
  v22 = a5;
  v52 = a6;
  v55 = a7;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v47 = a1;
  if (a1)
  {
    v49 = v31;
    v50 = v24;
    v42 = v28;
    v43 = v26;
    v51 = v23;
    v32 = a2;
    v33 = [v32 objectForKeyedSubscript:@"tdm-fsr-tid"];
    v34 = [v32 objectForKeyedSubscript:@"tdm-fsr-data"];
    v35 = [v32 objectForKeyedSubscript:@"tdm-fsr-namespace"];

    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v76 = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Requesting TDM for namespace %@", buf, 0xCu);
    }

    v45 = +[AKAccountManager sharedInstance];
    v41 = [v45 primaryAuthKitAccount];
    v37 = [[AMSFraudReportOptions alloc] initWithTransactionIdentifier:v33 nameSpace:v35 fsrData:v34];
    [v37 setAccount:v41];
    [v37 setShouldIncludeODIAssessment:1];
    v40 = [AMSFraudReportTask performFraudReportRefreshWithOptions:v37];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000A4710;
    v56[3] = &unk_10010AD40;
    v57 = v35;
    v58 = v33;
    v73 = v49;
    v59 = v47;
    v60 = v54;
    v61 = v53;
    v62 = v22;
    v63 = v52;
    v64 = v55;
    v74 = a8;
    v65 = v51;
    v66 = v50;
    v67 = v25;
    v68 = v43;
    v69 = v27;
    v28 = v42;
    v70 = v42;
    v71 = v29;
    v72 = v30;
    v48 = v34;
    v38 = v33;
    v39 = v35;
    [v40 resultWithCompletion:v56];

    v26 = v43;
    v23 = v51;

    v24 = v50;
    v31 = v49;
  }
}

void sub_1000A4710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A497C;
  block[3] = &unk_10010AD18;
  v34 = v5;
  v35 = v6;
  v44 = *(a1 + 160);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v32 = *(a1 + 48);
  v10 = *(&v32 + 1);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v36 = v11;
  v37 = v32;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v38 = v17;
  v39 = v16;
  v45 = *(a1 + 168);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  v40 = v23;
  v41 = v22;
  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  v26 = *(a1 + 144);
  v27 = *(a1 + 152);
  *&v28 = v26;
  *(&v28 + 1) = v27;
  *&v29 = v24;
  *(&v29 + 1) = v25;
  v42 = v29;
  v43 = v28;
  v30 = v6;
  v31 = v5;
  dispatch_async(v7, block);
}

void sub_1000A497C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !*(a1 + 40) && ([v2 finalizedElement], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TDM succeeded for namespace %@", buf, 0xCu);
    }

    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"rs=%dns=%d", [*(a1 + 32) reportedScore], objc_msgSend(*(a1 + 32), "newScore"));;
    v14[0] = @"tdm-fsr-namespace";
    v14[1] = @"tdm-fsr-tid";
    v9 = *(a1 + 56);
    v15[0] = *(a1 + 48);
    v15[1] = v9;
    v15[2] = v5;
    v14[2] = @"tdm-fsr-data";
    v14[3] = @"tdm-fsr-token";
    v10 = [*(a1 + 32) finalizedElement];
    v15[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

    v12 = *(a1 + 136);
    sub_1000A4BD4(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 184), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), v11, *(a1 + 176));
  }

  else
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "TDM failed, error %@", buf, 0xCu);
    }

    v4 = *(a1 + 176);
    v5 = [*(a1 + 40) description];
    (*(v4 + 16))(v4, 0, 0, 0, 0, 0, 1015, v5, 0);
  }
}

void sub_1000A4BD4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v130 = a2;
  *(&v129 + 1) = a3;
  *&v129 = a4;
  v122 = a5;
  v124 = a6;
  v117 = a8;
  v118 = a9;
  v120 = a10;
  v119 = a11;
  v109 = a12;
  v121 = a13;
  v126 = a14;
  v111 = a15;
  v112 = a16;
  v113 = a17;
  val = a1;
  if (a1)
  {
    v23 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v23);

    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v130 issuerName];
      *buf = 67109378;
      *v185 = a7;
      *&v185[4] = 2112;
      *&v185[6] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Requesting %u tokens from %@", buf, 0x12u);
    }

    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = v26;
      v28 = [v130 issuerName];
      v29 = v28 == 0;

      if (!v29)
      {
        v30 = *(a1 + 56);
        v31 = [v130 issuerName];
        v127 = [v30 objectForKeyedSubscript:v31];

        if (v127)
        {
          v32 = +[NSDate now];
          [v32 timeIntervalSinceDate:v127];
          v34 = v33;

          if (v34 < 0.0)
          {
            (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1009, @"Rate-limited for token issuer based on retry-after header", 0);
LABEL_101:

            goto LABEL_102;
          }

          v35 = *(a1 + 56);
          v36 = [v130 issuerName];
          [v35 setObject:0 forKeyedSubscript:v36];
        }
      }
    }

    if (*(&v129 + 1))
    {
      v37 = a7;
    }

    else
    {
      v37 = 1;
    }

    v107 = v37;
    v127 = objc_alloc_init(NSMutableArray);
    v116 = objc_alloc_init(NSMutableArray);
    if (v126)
    {
      v38 = objc_alloc_init(NSMutableArray);
    }

    else
    {
      v38 = 0;
    }

    v108 = v38;
    v125 = sub_1000B9830(NSPPrivateAccessTokenFetcher, v130, v124, v107, v117, v118, v127, v116, v38, v126);
    if (!v125)
    {
      v102 = nplog_obj();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v185 = "[NSPPrivacyTokenManager innerFetchPrivateAccessTokenForChallenge:overrideAttester:customAttester:customAttesterHeaders:tokenKey:tokenCount:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:auxiliaryAuthRequest:bundleID:accessToken:longLivedToken:urlSession:extraRequestHeaders:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v102, OS_LOG_TYPE_FAULT, "%s called with null tokenRequests", buf, 0xCu);
      }

      (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1004, 0, 0);
      goto LABEL_100;
    }

    v106 = mach_absolute_time();
    if (*(&v129 + 1))
    {
      v114 = [*(&v129 + 1) attesterURL];
    }

    else
    {
      v39 = v129;
      if (!v129)
      {
        v39 = *(a1 + 32);
      }

      v114 = v39;
    }

    v123 = [[NSURLComponents alloc] initWithString:v114];
    if (!v123)
    {
      v103 = nplog_obj();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v185 = "[NSPPrivacyTokenManager innerFetchPrivateAccessTokenForChallenge:overrideAttester:customAttester:customAttesterHeaders:tokenKey:tokenCount:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:auxiliaryAuthRequest:bundleID:accessToken:longLivedToken:urlSession:extraRequestHeaders:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v103, OS_LOG_TYPE_FAULT, "%s called with null attesterURLComponents", buf, 0xCu);
      }

      (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1004, 0, 0);
      goto LABEL_99;
    }

    if (v129 == 0)
    {
      v40 = [NSURLQueryItem alloc];
      v41 = [v130 issuerName];
      v42 = [v40 initWithName:@"issuer" value:v41];

      v183 = v42;
      v43 = [NSArray arrayWithObjects:&v183 count:1];
      [v123 setQueryItems:v43];
    }

    v110 = [*(&v129 + 1) authType];
    v44 = [v123 string];
    v45 = sub_1000A17F4(val, v44, 0, v110 == 4, v129 != 0, 0);

    if (!v45)
    {
      v104 = nplog_obj();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v185 = "[NSPPrivacyTokenManager innerFetchPrivateAccessTokenForChallenge:overrideAttester:customAttester:customAttesterHeaders:tokenKey:tokenCount:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:auxiliaryAuthRequest:bundleID:accessToken:longLivedToken:urlSession:extraRequestHeaders:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v104, OS_LOG_TYPE_FAULT, "%s called with null urlRequest", buf, 0xCu);
      }

      (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1004, 0, 0);
      goto LABEL_98;
    }

    v46 = [v125 firstObject];
    sub_1000B6BC4(v46, v45);

    v47 = v129 == 0;
    if (!v122)
    {
      v47 = 1;
    }

    if (!v47)
    {
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v48 = v122;
      v49 = [v48 countByEnumeratingWithState:&v176 objects:v182 count:16];
      if (v49)
      {
        v50 = *v177;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v177 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v52 = *(*(&v176 + 1) + 8 * i);
            v53 = [v48 objectForKeyedSubscript:v52];
            v54 = v52;
            objc_opt_class();
            if (v54)
            {
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v56 = v53;
                objc_opt_class();
                if (v56)
                {
                  v57 = objc_opt_isKindOfClass();

                  if (v57)
                  {
                    [v45 addValue:v56 forHTTPHeaderField:v54];
                  }
                }
              }
            }
          }

          v49 = [v48 countByEnumeratingWithState:&v176 objects:v182 count:16];
        }

        while (v49);
      }
    }

    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v58 = v112;
    v59 = [v58 countByEnumeratingWithState:&v172 objects:v181 count:16];
    if (v59)
    {
      v60 = *v173;
      do
      {
        for (j = 0; j != v59; j = j + 1)
        {
          if (*v173 != v60)
          {
            objc_enumerationMutation(v58);
          }

          v62 = *(*(&v172 + 1) + 8 * j);
          v63 = [v58 objectForKeyedSubscript:v62];
          [v45 addValue:v63 forHTTPHeaderField:v62];
        }

        v59 = [v58 countByEnumeratingWithState:&v172 objects:v181 count:16];
      }

      while (v59);
    }

    if (v121 != 0 && v110 != 4)
    {
      [v45 setValue:v121 forHTTPHeaderField:@"X-Mask-Subscription-Token"];
    }

    if (os_variant_has_internal_diagnostics())
    {
      v64 = sub_100053E68();
      v65 = v64;
      if (v64)
      {
        v66 = *(v64 + 48);
      }

      else
      {
        v66 = 0;
      }

      v67 = v66;

      if (v67)
      {
        v68 = [v67 configServerHeaders];
        v69 = v68 == 0;

        if (!v69)
        {
          v70 = [v45 allHTTPHeaderFields];
          v71 = [v67 configServerHeaders];
          v72 = [NPUtilities mergeHTTPHeaders:v70 headerOverrides:v71];
          [v45 setAllHTTPHeaderFields:v72];
        }
      }
    }

    if (!*(&v129 + 1) && (!v130 || [v130 tokenType] != 58796 && objc_msgSend(v130, "tokenType") != 49278))
    {
      v93 = [v125 firstObject];
      v95 = v93;
      if (v93 && (v96 = objc_getProperty(v93, v94, 24, 1)) != 0)
      {
        v97 = v96;
        objc_initWeak(buf, val);
        v98 = val[2];
        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_1000A5E14;
        v159[3] = &unk_10010AD90;
        objc_copyWeak(v170, buf);
        v160 = v45;
        v169 = v113;
        v161 = v95;
        v162 = v127;
        v163 = v130;
        v164 = v124;
        v165 = v116;
        v166 = v108;
        v167 = val;
        v99 = v114;
        v171 = 1;
        v168 = v99;
        v170[1] = v106;
        [v98 sendRequestForTokens:v160 tokenFetchURLSession:v111 messageBody:v97 completionHandler:v159];

        objc_destroyWeak(v170);
        objc_destroyWeak(buf);
      }

      else
      {
        v105 = nplog_obj();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *v185 = "[NSPPrivacyTokenManager innerFetchPrivateAccessTokenForChallenge:overrideAttester:customAttester:customAttesterHeaders:tokenKey:tokenCount:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:auxiliaryAuthRequest:bundleID:accessToken:longLivedToken:urlSession:extraRequestHeaders:completionHandler:]";
          _os_log_fault_impl(&_mh_execute_header, v105, OS_LOG_TYPE_FAULT, "%s called with null messageBody", buf, 0xCu);
        }

        (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1004, 0, 0);
        v97 = 0;
      }

      goto LABEL_98;
    }

    v73 = objc_alloc_init(NSPPrivacyProxyTokenInfo);
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v74 = v125;
    v76 = [v74 countByEnumeratingWithState:&v155 objects:v180 count:16];
    if (v76)
    {
      v77 = *v156;
      do
      {
        for (k = 0; k != v76; k = k + 1)
        {
          if (*v156 != v77)
          {
            objc_enumerationMutation(v74);
          }

          Property = *(*(&v155 + 1) + 8 * k);
          if (Property)
          {
            Property = objc_getProperty(Property, v75, 24, 1);
          }

          v80 = Property;
          [v73 addTokenRequestList:v80];
        }

        v76 = [v74 countByEnumeratingWithState:&v155 objects:v180 count:16];
      }

      while (v76);
    }

    v81 = [v124 key];
    v82 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v81);
    [v73 setTokenKeyID:v82];

    v83 = [v130 issuerName];
    [v73 setProxyURL:v83];

    v84 = [v130 issuerName];
    [v73 setVendor:v84];

    v85 = objc_alloc_init(NSPPrivacyProxyTokenActivationQuery);
    [v85 setTokenInfo:v73];
    if (v120)
    {
      v86 = sub_10003D64C(NSPPrivateAccessTokenCache, v120, 0);
      if ([v86 count])
      {
        v87 = nplog_obj();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          v88 = [v130 issuerName];
          *buf = 138412290;
          *v185 = v88;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Sending auxiliary data with for %@", buf, 0xCu);
        }

        v89 = [v86 mutableCopy];
        [v85 setAuxiliaryAuthArrays:v89];
      }
    }

    if (v119)
    {
      [v85 addAuxiliaryAuthArray:v119];
    }

    v90 = [*(&v129 + 1) authType];
    if (v90 > 2)
    {
      if (v90 == 3)
      {
        sub_100049B9C();
LABEL_96:
        v91 = objc_opt_class();
        goto LABEL_97;
      }

      if (v90 == 4)
      {
        v91 = objc_opt_class();
        [v85 setAuthInfo:v126];
LABEL_97:
        objc_initWeak(buf, val);
        v131[0] = _NSConcreteStackBlock;
        v131[1] = 3221225472;
        v131[2] = sub_1000A686C;
        v131[3] = &unk_10010ADE0;
        objc_copyWeak(v153, buf);
        v132 = v45;
        v152 = v113;
        v133 = v127;
        v134 = v130;
        v135 = v124;
        v136 = v116;
        v154 = v107;
        v137 = v120;
        v138 = v58;
        v139 = v108;
        v140 = *(&v129 + 1);
        v141 = v129;
        v142 = v122;
        v143 = v117;
        v144 = v118;
        v145 = v119;
        v146 = v109;
        v147 = v121;
        v148 = v126;
        v100 = v111;
        v153[1] = v91;
        v149 = v100;
        v150 = val;
        v151 = v114;
        v153[2] = v106;
        [v91 sendRequestForTokens:v132 tokenFetchURLSession:v100 tokenActivationQuery:v85 completionHandler:v131];

        objc_destroyWeak(v153);
        objc_destroyWeak(buf);

LABEL_98:
LABEL_99:

LABEL_100:
        goto LABEL_101;
      }
    }

    else if (v90 == 1 || v90 == 2)
    {
      goto LABEL_96;
    }

    v92 = nplog_obj();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v101 = [*(&v129 + 1) authType];
      *buf = 67109120;
      *v185 = v101;
      _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "invalid override attester authentication type %d", buf, 8u);
    }

    (*(v113 + 2))(v113, 0, 0, 0, 0, 0, 1005, 0, 0);
    goto LABEL_98;
  }

LABEL_102:
}

void sub_1000A5DD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 112));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000A5E14(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6024;
  block[3] = &unk_10010AD68;
  objc_copyWeak(v38, (a1 + 112));
  v29 = v11;
  v30 = v9;
  v31 = *(a1 + 32);
  v32 = v10;
  v37 = *(a1 + 104);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v33 = v18;
  v34 = v17;
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v27 = *(a1 + 88);
  v21 = *(&v27 + 1);
  *&v22 = v19;
  *(&v22 + 1) = v20;
  v36 = v27;
  v35 = v22;
  v23 = *(a1 + 128);
  v39 = a2;
  v40 = v23;
  v38[1] = *(a1 + 120);
  v24 = v10;
  v25 = v9;
  v26 = v11;
  dispatch_async(v12, block);

  objc_destroyWeak(v38);
}

void sub_1000A6024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 136));
  if (!WeakRetained)
  {
    goto LABEL_31;
  }

  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 48) URL];
      *buf = 138412546;
      v52 = v4;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received token fetch error %@ for %@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    if (*(a1 + 56))
    {
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else if (!v6)
    {
LABEL_20:
      v47 = 0;
      (*(*(a1 + 128) + 16))(*(a1 + 128));
      goto LABEL_21;
    }

    v11 = [v6 domain];
    if (v11 != NSPOSIXErrorDomain || [*(a1 + 32) code] != 50)
    {
      v12 = [*(a1 + 32) domain];
      v13 = v12;
      if (v12 != NSURLErrorDomain)
      {

        goto LABEL_20;
      }

      if ([*(a1 + 32) code] != -1009)
      {
        [*(a1 + 32) code];

        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 56);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_21:
    v8 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v8 = *(a1 + 56);
  if (os_variant_has_internal_diagnostics())
  {
    v9 = [v8 allHeaderFields];
    v10 = [v9 objectForKeyedSubscript:@"x-apple-request-uuid"];
  }

  else
  {
    v10 = 0;
  }

  v23 = nplog_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v8 statusCode];
    v25 = [*(a1 + 48) URL];
    *buf = 134218498;
    v52 = v24;
    v53 = 2112;
    v54 = v25;
    v55 = 2112;
    v56 = v10;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received HTTP response code %ld for %@ with request UUID %@", buf, 0x20u);
  }

  if ([v8 statusCode] == 200)
  {
    v26 = sub_1000B48AC(*(a1 + 64), *(a1 + 40));
    v27 = v26;
    if (v26)
    {
      v28 = *(a1 + 72);
      v29 = *(a1 + 80);
      v30 = *(a1 + 88);
      v31 = *(a1 + 96);
      v48 = v26;
      v50 = v26;
      v32 = [NSArray arrayWithObjects:&v50 count:1];
      v33 = sub_1000B99D0(NSPPrivateAccessTokenFetcher, v28, v29, v30, v31, v32);

      if ([v33 count] && v33)
      {
        v14 = [v33 firstObject];
        if ([*(a1 + 88) expiration])
        {
          v34 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [*(a1 + 88) expiration]);
        }

        else
        {
          v34 = 0;
        }

        v45 = *(a1 + 128);
        v49 = v14;
        v46 = [NSArray arrayWithObjects:&v49 count:1];
        (*(v45 + 16))(v45, v46, 0, *(a1 + 104), v34, 0, 0, 0, v10);
      }

      else
      {
        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "token activation failed", buf, 2u);
        }

        v47 = v10;
        (*(*(a1 + 128) + 16))(*(a1 + 128));
        v14 = 0;
      }

      v27 = v48;
    }

    else
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to decrypt token response", buf, 2u);
      }

      v47 = v10;
      (*(*(a1 + 128) + 16))(*(a1 + 128));
      v14 = 0;
    }

    goto LABEL_23;
  }

  if ([v8 statusCode] == 401)
  {
    [WeakRetained[2] authenticationFailure];
  }

  else if ([v8 statusCode] == 429)
  {
    v35 = *(a1 + 112);
    v36 = [*(a1 + 80) issuerName];
    sub_1000A3D18(v35, v8, v36);
  }

  else if ([v8 statusCode] >= 400)
  {
    [v8 statusCode];
  }

  v39 = [v8 allHeaderFields];
  v40 = [v39 objectForKeyedSubscript:@"Error-Reason"];

  v47 = v10;
  (*(*(a1 + 128) + 16))(*(a1 + 128));
  v41 = sub_100053E68();
  v42 = *(a1 + 120);
  v43 = [*(a1 + 80) issuerName];
  v44 = [v8 statusCode];
  if (v41)
  {
    [v41[9] sendRTCReportWithFailureType:1003 errorCode:v44 url:v42 ingressProxy:0 egressProxy:0 tokenServer:v43];
  }

LABEL_22:
  v14 = 0;
LABEL_23:
  v15 = mach_absolute_time();
  v16 = objc_alloc_init(NSPTokenFetchAnalytics);
  [(NSPTokenFetchAnalytics *)v16 setProxyURL:*(a1 + 120)];
  v17 = [*(a1 + 80) issuerName];
  [(NSPTokenFetchAnalytics *)v16 setProxyVendor:v17];

  v18 = *(a1 + 152);
  if (v18 >= 5)
  {
    v19 = [NSString stringWithFormat:@"(unknown: %i)", *(a1 + 152)];
  }

  else
  {
    v19 = off_10010B0E8[v18];
  }

  [(NSPTokenFetchAnalytics *)v16 setAuthenticationType:v19, v47];

  [(NSPTokenFetchAnalytics *)v16 setRequestedServerUUID:v10];
  [(NSPTokenFetchAnalytics *)v16 setRequestedTokenCount:*(a1 + 156)];
  [(NSPTokenFetchAnalytics *)v16 setActivatedCount:v14 != 0];
  -[NSPTokenFetchAnalytics setHttpCode:](v16, "setHttpCode:", [v8 statusCode]);
  v20 = [*(a1 + 32) domain];
  v21 = [v20 isEqualToString:NSURLErrorDomain];

  if (v21)
  {
    -[NSPTokenFetchAnalytics setNsurlErrorCode:](v16, "setNsurlErrorCode:", [*(a1 + 32) code]);
  }

  v22 = (v15 - *(a1 + 144));
  if (qword_100129878 != -1)
  {
    dispatch_once(&qword_100129878, &stru_10010B0A8);
  }

  [(NSPTokenFetchAnalytics *)v16 setLatency:*&qword_100129880 * v22];
  [(NSPProxyAnalytics *)v16 sendAnalytics];

LABEL_31:
}

void sub_1000A686C(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6BB0;
  block[3] = &unk_10010ADB8;
  objc_copyWeak(v60, (a1 + 200));
  v46 = v10;
  v47 = v8;
  v48 = *(a1 + 32);
  v49 = v9;
  v12 = *(a1 + 192);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v50 = v18;
  v51 = v17;
  v61 = *(a1 + 224);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  *&v23 = v21;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v52 = v24;
  v53 = v23;
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  v28 = *(a1 + 128);
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  v54 = v30;
  v55 = v29;
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  v33 = *(a1 + 152);
  v34 = *(a1 + 160);
  *&v35 = v33;
  *(&v35 + 1) = v34;
  *&v36 = v31;
  *(&v36 + 1) = v32;
  v56 = v36;
  v57 = v35;
  v37 = *(a1 + 168);
  v60[1] = *(a1 + 208);
  *&v38 = v37;
  *(&v38 + 1) = *(a1 + 176);
  v43 = v38;
  *&v39 = *(a1 + 184);
  *(&v39 + 1) = v12;
  v58 = v43;
  v59 = v39;
  v62 = a2;
  v60[2] = *(a1 + 216);
  v40 = v9;
  v41 = v8;
  v42 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(v60);
}

void sub_1000A6BB0(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 224));
  if (!WeakRetained)
  {
    goto LABEL_30;
  }

  if (*(v1 + 32) || !*(v1 + 40))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 32);
      v5 = [*(v1 + 48) URL];
      *buf = 138412546;
      *v119 = v4;
      *&v119[8] = 2112;
      v120 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received token fetch error %@ for %@", buf, 0x16u);
    }

    v6 = *(v1 + 32);
    if (*(v1 + 56))
    {
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else if (!v6)
    {
LABEL_20:
      v87 = 0;
      (*(*(v1 + 216) + 16))(*(v1 + 216));
      goto LABEL_21;
    }

    v10 = [v6 domain];
    if (v10 != NSPOSIXErrorDomain || [*(v1 + 32) code] != 50)
    {
      v11 = [*(v1 + 32) domain];
      v12 = v11;
      if (v11 != NSURLErrorDomain)
      {

        goto LABEL_20;
      }

      if ([*(v1 + 32) code] != -1009)
      {
        [*(v1 + 32) code];

        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

  v7 = *(v1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(v1 + 56);
    if (os_variant_has_internal_diagnostics())
    {
      v9 = [v8 allHeaderFields];
      v96 = [v9 objectForKeyedSubscript:@"x-apple-request-uuid"];
    }

    else
    {
      v96 = 0;
    }

    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v8 statusCode];
      v23 = [*(v1 + 48) URL];
      *buf = 134218498;
      *v119 = v22;
      *&v119[8] = 2112;
      v120 = v23;
      *v121 = 2112;
      *&v121[2] = v96;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received HTTP response code %ld for %@ with request UUID %@", buf, 0x20u);
    }

    v24 = [v8 allHeaderFields];
    v25 = [v24 objectForKeyedSubscript:@"tdm-fsr-tid"];

    v26 = [v8 allHeaderFields];
    v27 = [v26 objectForKeyedSubscript:@"tdm-fsr-data"];

    v28 = [v8 allHeaderFields];
    v29 = [v28 objectForKeyedSubscript:@"tdm-fsr-namespace"];

    if (v29 && ([&off_100113CD8 containsObject:v29] & 1) == 0)
    {
      v30 = nplog_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v119 = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Received challenge for non-allowed TDM namespace: %@", buf, 0xCu);
      }
    }

    v95 = v8;
    if ([v8 statusCode] != 200)
    {
      v39 = [v8 statusCode];
      if (v29 && v39 == 401 && v25 && v27 && [&off_100113CD8 containsObject:v29] && !*(v1 + 104))
      {
        v93 = [v8 allHeaderFields];
        sub_1000A4290(WeakRetained, v93, *(v1 + 72), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 80), *(v1 + 248), *(v1 + 144), *(v1 + 152), *(v1 + 96), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 216));
        v94 = 0;
      }

      else
      {
        if ([v8 statusCode] == 401)
        {
          v40 = v29;
          v41 = v27;
          v42 = v25;
          [*(v1 + 232) authenticationFailure];
        }

        else if ([v8 statusCode] == 429)
        {
          v40 = v29;
          v41 = v27;
          v42 = v25;
          v43 = *(v1 + 200);
          v44 = [*(v1 + 72) issuerName];
          sub_1000A3D18(v43, v8, v44);
        }

        else
        {
          v40 = v29;
          v41 = v27;
          v42 = v25;
          if ([v8 statusCode] >= 400)
          {
            [v8 statusCode];
          }
        }

        v80 = [v8 allHeaderFields];
        v81 = [v80 objectForKeyedSubscript:@"Error-Reason"];

        v87 = v96;
        v93 = v81;
        (*(*(v1 + 216) + 16))(*(v1 + 216));
        v82 = sub_100053E68();
        v83 = *(v1 + 208);
        v84 = [*(v1 + 72) issuerName];
        v85 = [v8 statusCode];
        if (v82)
        {
          [v82[9] sendRTCReportWithFailureType:1003 errorCode:v85 url:v83 ingressProxy:0 egressProxy:0 tokenServer:v84];
        }

        v94 = 0;
        v25 = v42;
        v27 = v41;
        v29 = v40;
      }

      goto LABEL_108;
    }

    v88 = v29;
    v89 = v27;
    v90 = v25;
    v91 = WeakRetained;
    v31 = [[NSPPrivacyProxyTokenActivationResponse alloc] initWithData:*(v1 + 40)];
    v32 = *(v1 + 64);
    v33 = *(v1 + 72);
    v34 = *(v1 + 80);
    v35 = *(v1 + 88);
    [v31 activatedTokenLists];
    v36 = v102 = v1;
    v92 = sub_1000B99D0(NSPPrivateAccessTokenFetcher, v32, v33, v34, v35, v36);

    if ([*(v102 + 80) expiration])
    {
      v37 = [*(v102 + 80) expiration];
      v38 = v31;
    }

    else
    {
      v38 = v31;
      if (![v31 tokenExpiryTimestamp])
      {
        v101 = 0;
        goto LABEL_56;
      }

      v37 = [v31 tokenExpiryTimestamp] / 0x3E8;
    }

    v101 = [NSDate dateWithTimeIntervalSince1970:v37];
LABEL_56:
    v94 = [v92 count];
    v45 = nplog_obj();
    v93 = v38;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = [v38 activatedTokenLists];
      v47 = [v46 count];
      v48 = *(v102 + 248);
      v49 = [*(v102 + 72) issuerName];
      *buf = 67109890;
      *v119 = v94;
      *&v119[4] = 1024;
      *&v119[6] = v47;
      v38 = v93;
      LOWORD(v120) = 1024;
      *(&v120 + 2) = v48;
      HIWORD(v120) = 2112;
      *v121 = v49;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Received %u/%u/%u tokens from %@", buf, 0x1Eu);
    }

    v50 = *(v102 + 96);
    if (v50)
    {
      sub_10003D924(NSPPrivateAccessTokenCache, v50, 0);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      obj = [v38 auxiliaryAuthArrays];
      v51 = [obj countByEnumeratingWithState:&v111 objects:v117 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v112;
        v97 = *v112;
        do
        {
          v54 = 0;
          v98 = v52;
          do
          {
            if (*v112 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v55 = *(*(&v111 + 1) + 8 * v54);
            if ([v55 authType] != 2)
            {
              v100 = v54;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v56 = [v55 contentLists];
              v57 = [v56 countByEnumeratingWithState:&v107 objects:v116 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v108;
                do
                {
                  for (i = 0; i != v58; i = i + 1)
                  {
                    if (*v108 != v59)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v61 = *(*(&v107 + 1) + 8 * i);
                    v62 = nplog_obj();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                    {
                      v63 = [v55 label];
                      v64 = [*(v102 + 72) issuerName];
                      *buf = 138412546;
                      *v119 = v63;
                      *&v119[8] = 2112;
                      v120 = v64;
                      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Received auxiliary data with label %@ for %@", buf, 0x16u);
                    }

                    v65 = [v55 authType];
                    v66 = *(v102 + 96);
                    v67 = [v55 label];
                    sub_10003E06C(NSPPrivateAccessTokenCache, v61, v65, v66, v67, v101, 1);
                  }

                  v58 = [v56 countByEnumeratingWithState:&v107 objects:v116 count:16];
                }

                while (v58);
              }

              v53 = v97;
              v52 = v98;
              v54 = v100;
            }

            v54 = v54 + 1;
          }

          while (v54 != v52);
          v52 = [obj countByEnumeratingWithState:&v111 objects:v117 count:16];
        }

        while (v52);
      }

      v38 = v93;
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v68 = [v38 auxiliaryAuthArrays];
    v69 = [v68 countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = 0;
      v72 = *v104;
      do
      {
        for (j = 0; j != v70; j = j + 1)
        {
          if (*v104 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v74 = *(*(&v103 + 1) + 8 * j);
          if ([v74 authType] == 2)
          {
            v75 = nplog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = [v74 label];
              v77 = [*(v102 + 72) issuerName];
              *buf = 138412546;
              *v119 = v76;
              *&v119[8] = 2112;
              v120 = v77;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Received auxiliary response with label %@ for %@", buf, 0x16u);
            }

            v78 = [v74 contentLists];

            v71 = v78;
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v70);
    }

    else
    {
      v71 = 0;
    }

    v79 = 0;
    v29 = v88;
    if (v88)
    {
      v1 = v102;
      v25 = v90;
      WeakRetained = v91;
      v27 = v89;
      if (*(v102 + 248) > v94 && v90 && v89)
      {
        if ([&off_100113CD8 containsObject:v88] && !*(v102 + 104))
        {
          v79 = [v95 allHeaderFields];
        }

        else
        {
          v79 = 0;
        }
      }
    }

    else
    {
      v25 = v90;
      WeakRetained = v91;
      v1 = v102;
      v27 = v89;
    }

    v86 = *(v1 + 112);
    v87 = v96;
    (*(*(v1 + 216) + 16))(*(v1 + 216));

LABEL_108:
    goto LABEL_22;
  }

LABEL_21:
  v94 = 0;
  v95 = 0;
  v96 = 0;
LABEL_22:
  v13 = mach_absolute_time();
  v14 = objc_alloc_init(NSPTokenFetchAnalytics);
  [(NSPTokenFetchAnalytics *)v14 setProxyURL:*(v1 + 208)];
  v15 = [*(v1 + 72) issuerName];
  [(NSPTokenFetchAnalytics *)v14 setProxyVendor:v15];

  v16 = *(v1 + 252);
  if (v16 >= 5)
  {
    v17 = [NSString stringWithFormat:@"(unknown: %i)", *(v1 + 252)];
  }

  else
  {
    v17 = off_10010B0E8[v16];
  }

  [(NSPTokenFetchAnalytics *)v14 setAuthenticationType:v17, v87];

  [(NSPTokenFetchAnalytics *)v14 setRequestedServerUUID:v96];
  [(NSPTokenFetchAnalytics *)v14 setRequestedTokenCount:*(v1 + 248)];
  [(NSPTokenFetchAnalytics *)v14 setActivatedCount:v94];
  -[NSPTokenFetchAnalytics setHttpCode:](v14, "setHttpCode:", [v95 statusCode]);
  v18 = [*(v1 + 32) domain];
  v19 = [v18 isEqualToString:NSURLErrorDomain];

  if (v19)
  {
    -[NSPTokenFetchAnalytics setNsurlErrorCode:](v14, "setNsurlErrorCode:", [*(v1 + 32) code]);
  }

  v20 = (v13 - *(v1 + 240));
  if (qword_100129878 != -1)
  {
    dispatch_once(&qword_100129878, &stru_10010B0A8);
  }

  [(NSPTokenFetchAnalytics *)v14 setLatency:*&qword_100129880 * v20];
  [(NSPProxyAnalytics *)v14 sendAnalytics];

LABEL_30:
}