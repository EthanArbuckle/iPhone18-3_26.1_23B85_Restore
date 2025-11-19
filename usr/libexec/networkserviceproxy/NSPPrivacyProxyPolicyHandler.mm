@interface NSPPrivacyProxyPolicyHandler
+ (id)sharedHandler;
- (BOOL)addPoliciesForMPTCPConverterProxy:(id)a3;
- (BOOL)addPoliciesForProbing;
- (BOOL)set:(id)a3 flowDivertHandle:(id)a4 inProcessFlowDivert:(BOOL)a5 ingressProxyURL:(id)a6 ingressFallbackProxyURL:(id)a7 exceptionBundleIDs:(id)a8 exceptionProcessPaths:(id)a9;
- (NSPPrivacyProxyPolicyHandler)init;
- (id)currentPolicy;
- (void)addNetworkDiscoveryProxyAgent:(id)a3 with:(id)a4;
- (void)addObliviousProxyAgent:(id)a3 processes:(id)a4 hostname:(id)a5;
- (void)addPreferredProxy:(id)a3 agentUUID:(id)a4 withDomainFilter:(id)a5;
- (void)addProxiedContentAgent:(id)a3 maps:(id)a4;
- (void)cellularDisabled:(BOOL)a3;
- (void)handleAppInstallation:(id)a3;
- (void)handleAppUninstallation:(id)a3;
- (void)interface:(id)a3 disabled:(BOOL)a4;
- (void)remove:(BOOL)a3;
- (void)removeObliviousProxyAgent:(id)a3 forHostname:(id)a4 apply:(BOOL)a5;
- (void)removePoliciesForMPTCPConverterProxy:(BOOL)a3;
- (void)removePreferredProxy:(id)a3 apply:(BOOL)a4;
- (void)removeProxiedContentAgent:(id)a3 apply:(BOOL)a4;
- (void)replaceDisabledInterfaces:(id)a3;
- (void)setCaptivePortalExceptionHostname:(id)a3;
- (void)wifiDisabled:(BOOL)a3;
@end

@implementation NSPPrivacyProxyPolicyHandler

- (NSPPrivacyProxyPolicyHandler)init
{
  v21.receiver = self;
  v21.super_class = NSPPrivacyProxyPolicyHandler;
  v2 = [(NSPPrivacyProxyPolicyHandler *)&v21 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_policy, 0);
    objc_storeStrong(&v3->_flowDivertHandle, 0);
    v3->_inProcessFlowDivert = 0;
    v4 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_mainPolicyIDs, v4);

    v5 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_interfacePolicyIDs, v5);

    v6 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_domainFilterPolicyIDs, v6);

    v7 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_domainFilterIDs, v7);

    v8 = sub_1000954EC(v3, @"nsp_privacy_proxy_policy_session", 300);
    objc_storeStrong(&v3->_session, v8);

    v9 = sub_1000954EC(v3, @"nsp_privacy_proxy_policy_control_session", 100);
    objc_storeStrong(&v3->_controlSession, v9);

    v10 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_safariTechnologyPreviewPolicyIDs, v10);

    v11 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_safariBundlePolicyIDs, v11);

    v12 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_mailAppPolicyIDs, v12);

    v13 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_probePolicyIDs, v13);

    v14 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_obliviousAgentPolicyIDs, v14);

    v15 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_proxiedContentPolicyIDs, v15);

    v16 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_networkSpecificProxyPolicyIDs, v16);

    v17 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&v3->_proxiedContentNotifyFlags, v17);

    v18 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_mptcpProxyPolicyIDs, v18);

    v19 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&v3->_networkToolProxyPolicyIDs, v19);
  }

  return v3;
}

+ (id)sharedHandler
{
  if (qword_100129860 != -1)
  {
    dispatch_once(&qword_100129860, &stru_10010AB00);
  }

  v3 = qword_100129858;

  return v3;
}

- (BOOL)set:(id)a3 flowDivertHandle:(id)a4 inProcessFlowDivert:(BOOL)a5 ingressProxyURL:(id)a6 ingressFallbackProxyURL:(id)a7 exceptionBundleIDs:(id)a8 exceptionProcessPaths:(id)a9
{
  v15 = a3;
  v16 = a4;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a9;
  v17 = self;
  objc_sync_enter(v17);
  v46 = v15;
  sub_10003B8A4(v17, v15);
  v47 = v16;
  sub_100006664(v17, v16);
  if (v17)
  {
    v17->_inProcessFlowDivert = a5;
    objc_storeStrong(&v17->_ingressProxyURL, a6);
    objc_storeStrong(&v17->_ingressFallbackProxyURL, a7);
    objc_storeStrong(&v17->_exceptionBundleIDs, a8);
    objc_storeStrong(&v17->_exceptionProcessPaths, a9);
  }

  sub_100095A18(&v17->super.isa);
  sub_1000960D0(&v17->super.isa);
  sub_100096200(&v17->super.isa);
  sub_100096330(v17);
  [(NSPPrivacyProxyPolicyHandler *)v17 removePoliciesForMPTCPConverterProxy:0];
  sub_100096464(&v17->super.isa);
  if (v17)
  {
    policy = v17->_policy;
    inProcessFlowDivert = v17->_inProcessFlowDivert;
    flowDivertHandle = v17->_flowDivertHandle;
    ingressProxyURL = v17->_ingressProxyURL;
    ingressFallbackProxyURL = v17->_ingressFallbackProxyURL;
    exceptionProcessPaths = v17->_exceptionProcessPaths;
    v24 = v17->_exceptionBundleIDs;
    v25 = ingressFallbackProxyURL;
    v26 = ingressProxyURL;
    v27 = flowDivertHandle;
    v28 = policy;
    v52 = sub_100083548(NSPPrivacyProxyPolicySerialization, v28, v27, inProcessFlowDivert, v26, v25, v24, exceptionProcessPaths);

    if (v52 && [v52 count])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v29 = v52;
      v30 = [v29 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v30)
      {
        v31 = *v54;
        while (2)
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v54 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v53 + 1) + 8 * i);
            v34 = nplog_obj();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v58 = v17;
              v59 = 2112;
              v60 = v33;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@ adding policy %@", buf, 0x16u);
            }

            v35 = [(NEPolicySession *)v17->_session addPolicy:v33];
            v36 = nplog_obj();
            v37 = v36;
            if (!v35)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v58 = v17;
                _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@ failed to add policy", buf, 0xCu);
              }

              goto LABEL_28;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v58 = v17;
              v59 = 2048;
              v60 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%@ added policy %lu", buf, 0x16u);
            }

            v38 = v17->_mainPolicyIDs;
            v39 = [NSNumber numberWithUnsignedInteger:v35];
            [(NSMutableArray *)v38 addObject:v39];
          }

          v30 = [v29 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      if (sub_100096CA8(&v17->super.isa))
      {
        if (sub_100096F38(v17))
        {
          if (sub_1000971E0(&v17->super.isa))
          {
            if (sub_100097508(&v17->super.isa))
            {

LABEL_31:
              session = v17->_session;
              goto LABEL_32;
            }

            sub_100096464(&v17->super.isa);
          }

          else
          {
            sub_100096330(v17);
          }
        }

        else
        {
          sub_100096200(&v17->super.isa);
        }
      }

      else
      {
        sub_1000960D0(&v17->super.isa);
      }
    }

    else
    {
      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v58 = v17;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@ there are no privacy proxy policies to add", buf, 0xCu);
      }

LABEL_28:
    }
  }

  sub_100095A18(&v17->super.isa);
  if (v17)
  {
    goto LABEL_31;
  }

  session = 0;
LABEL_32:
  v41 = session;
  v42 = [(NEPolicySession *)v41 apply];

  if (v42)
  {
    v43 = +[NEFileHandleMaintainer sharedMaintainer];
    [v43 commit];

    v44 = nplog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *v61 = 138412290;
      v62 = v17;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%@ sucessfully applied all the policies", v61, 0xCu);
    }
  }

  objc_sync_exit(v17);

  return v42;
}

- (void)remove:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  sub_100095A18(&obj->super.isa);
  sub_1000960D0(&obj->super.isa);
  sub_100096200(&obj->super.isa);
  sub_100096330(obj);
  sub_100096464(&obj->super.isa);
  if (v3)
  {
    if (obj)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v4 = obj->_probePolicyIDs;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (v5)
      {
        v6 = *v69;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v69 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v68 + 1) + 8 * i);
            v9 = obj->_session;
            -[NEPolicySession removePolicyWithID:](v9, "removePolicyWithID:", [v8 unsignedIntegerValue]);
          }

          v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v5);
      }

      [(NSMutableArray *)obj->_probePolicyIDs removeAllObjects];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v10 = [(NSMutableDictionary *)obj->_domainFilterPolicyIDs allValues];
      v11 = [v10 countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (v11)
      {
        v12 = *v61;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v61 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v60 + 1) + 8 * j);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v56 objects:&v68 count:16];
            if (v16)
            {
              v17 = *v57;
              do
              {
                for (k = 0; k != v16; k = k + 1)
                {
                  if (*v57 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v56 + 1) + 8 * k);
                  v20 = obj->_session;
                  -[NEPolicySession removePolicyWithID:](v20, "removePolicyWithID:", [v19 unsignedIntegerValue]);
                }

                v16 = [v15 countByEnumeratingWithState:&v56 objects:&v68 count:16];
              }

              while (v16);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v60 objects:v72 count:16];
        }

        while (v11);
      }

      [(NSMutableDictionary *)obj->_domainFilterPolicyIDs removeAllObjects];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v21 = [(NSMutableDictionary *)obj->_domainFilterIDs allValues];
      v22 = [v21 countByEnumeratingWithState:&v52 objects:&v64 count:16];
      if (v22)
      {
        v23 = *v53;
        do
        {
          for (m = 0; m != v22; m = m + 1)
          {
            if (*v53 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v52 + 1) + 8 * m);
            v26 = obj->_session;
            -[NEPolicySession removeDomainFilterWithID:](v26, "removeDomainFilterWithID:", [v25 unsignedIntegerValue]);
          }

          v22 = [v21 countByEnumeratingWithState:&v52 objects:&v64 count:16];
        }

        while (v22);
      }

      [(NSMutableDictionary *)obj->_domainFilterIDs removeAllObjects];
      if ([(NSMutableDictionary *)obj->_obliviousAgentPolicyIDs count])
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v27 = obj->_obliviousAgentPolicyIDs;
        v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v28)
        {
          v29 = *v65;
          do
          {
            for (n = 0; n != v28; n = n + 1)
            {
              if (*v65 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v64 + 1) + 8 * n);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v32 = [(NSMutableDictionary *)obj->_obliviousAgentPolicyIDs objectForKeyedSubscript:v31];
              v33 = [v32 countByEnumeratingWithState:&v60 objects:&v68 count:16];
              if (v33)
              {
                v34 = *v61;
                do
                {
                  for (ii = 0; ii != v33; ii = ii + 1)
                  {
                    if (*v61 != v34)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v36 = *(*(&v60 + 1) + 8 * ii);
                    v37 = obj->_controlSession;
                    -[NEPolicySession removePolicyWithID:](v37, "removePolicyWithID:", [v36 unsignedIntegerValue]);
                  }

                  v33 = [v32 countByEnumeratingWithState:&v60 objects:&v68 count:16];
                }

                while (v33);
              }
            }

            v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v28);
        }

        [(NSMutableDictionary *)obj->_obliviousAgentPolicyIDs removeAllObjects];
      }

      if ([(NSMutableDictionary *)obj->_proxiedContentPolicyIDs count])
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v38 = obj->_proxiedContentPolicyIDs;
        v39 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v39)
        {
          v40 = *v65;
          do
          {
            for (jj = 0; jj != v39; jj = jj + 1)
            {
              if (*v65 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v64 + 1) + 8 * jj);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v43 = [(NSMutableDictionary *)obj->_proxiedContentPolicyIDs objectForKeyedSubscript:v42];
              v44 = [v43 countByEnumeratingWithState:&v60 objects:&v68 count:16];
              if (v44)
              {
                v45 = *v61;
                do
                {
                  for (kk = 0; kk != v44; kk = kk + 1)
                  {
                    if (*v61 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v60 + 1) + 8 * kk);
                    v48 = obj->_session;
                    -[NEPolicySession removePolicyWithID:](v48, "removePolicyWithID:", [v47 unsignedIntegerValue]);
                  }

                  v44 = [v43 countByEnumeratingWithState:&v60 objects:&v68 count:16];
                }

                while (v44);
              }
            }

            v39 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v39);
        }

        [(NSMutableDictionary *)obj->_proxiedContentPolicyIDs removeAllObjects];
        [(NSMutableDictionary *)obj->_proxiedContentNotifyFlags removeAllObjects];
        sub_100099210(&obj->super.isa);
      }
    }

    [(NSPPrivacyProxyPolicyHandler *)obj removePoliciesForMPTCPConverterProxy:0];
  }

  if (obj)
  {
    session = obj->_session;
  }

  else
  {
    session = 0;
  }

  v50 = session;
  [(NEPolicySession *)v50 apply];

  sub_10003B8A4(obj, 0);
  sub_100006664(obj, 0);
  if (obj)
  {
    obj->_inProcessFlowDivert = 0;
  }

  objc_sync_exit(obj);
}

- (id)currentPolicy
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && (policy = v2->_policy) != 0)
  {
    v4 = policy;
    v5 = [(NSPPrivacyProxyPolicy *)v4 dictionaryRepresentation];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)addPreferredProxy:(id)a3 agentUUID:(id)a4 withDomainFilter:(id)a5
{
  v8 = a3;
  v35 = a4;
  v36 = a5;
  v37 = v8;
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(NSPPrivacyProxyPolicyHandler *)v9 removePreferredProxy:v8 apply:0];
    if (v9)
    {
      session = v9->_session;
    }

    else
    {
      session = 0;
    }

    v11 = session;
    v12 = [(NEPolicySession *)v11 addDomainFilterWithData:v36];

    if (v12)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v45 = v9;
        v46 = 1024;
        *v47 = v12;
        *&v47[4] = 2112;
        *&v47[6] = v37;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ added domain filter %u for %@", buf, 0x1Cu);
      }

      v14 = [NSNumber numberWithUnsignedInteger:v12];
      if (v9)
      {
        domainFilterIDs = v9->_domainFilterIDs;
      }

      else
      {
        domainFilterIDs = 0;
      }

      v16 = domainFilterIDs;
      [(NSMutableDictionary *)v16 setObject:v14 forKeyedSubscript:v37];

      v17 = +[NSMutableArray array];
      sub_100083650(NSPPrivacyProxyPolicySerialization, v35, v12);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      obj = v40 = 0u;
      v18 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v18)
      {
        v19 = *v40;
        do
        {
          v20 = 0;
          do
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v39 + 1) + 8 * v20);
            v22 = nplog_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v45 = v9;
              v46 = 2112;
              *v47 = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ adding domain filter policy %@", buf, 0x16u);
            }

            if (v9)
            {
              v23 = v9->_session;
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;
            v25 = [(NEPolicySession *)v24 addPolicy:v21];

            if (v25)
            {
              v26 = nplog_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v45 = v9;
                v46 = 1024;
                *v47 = v25;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@ added domain filter policy %u", buf, 0x12u);
              }

              v27 = [NSNumber numberWithUnsignedInteger:v25];
              [(NEPolicySession *)v17 addObject:v27];
            }

            else
            {
              v27 = nplog_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v45 = v9;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@ failed to add domain filter policy", buf, 0xCu);
              }
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v28 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          v18 = v28;
        }

        while (v28);
      }

      if (v9)
      {
        domainFilterPolicyIDs = v9->_domainFilterPolicyIDs;
      }

      else
      {
        domainFilterPolicyIDs = 0;
      }

      v30 = domainFilterPolicyIDs;
      [(NSMutableDictionary *)v30 setObject:v17 forKeyedSubscript:v37];

      if (v9)
      {
        v31 = v9->_session;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      [(NEPolicySession *)v32 apply];
    }

    else
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v9;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@ failed to add domain filter", buf, 0xCu);
      }

      if (v9)
      {
        v34 = v9->_session;
      }

      else
      {
        v34 = 0;
      }

      v17 = v34;
      [(NEPolicySession *)v17 apply];
    }

    objc_sync_exit(v9);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v45 = "[NSPPrivacyProxyPolicyHandler addPreferredProxy:agentUUID:withDomainFilter:]";
      _os_log_fault_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_FAULT, "%s called with null proxyName", buf, 0xCu);
    }
  }
}

- (void)removePreferredProxy:(id)a3 apply:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    if (v7)
    {
      domainFilterPolicyIDs = v7->_domainFilterPolicyIDs;
    }

    else
    {
      domainFilterPolicyIDs = 0;
    }

    v9 = domainFilterPolicyIDs;
    v10 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v6];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          if (v7)
          {
            session = v7->_session;
          }

          else
          {
            session = 0;
          }

          v16 = *(*(&v30 + 1) + 8 * v14);
          v17 = session;
          -[NEPolicySession removePolicyWithID:](v17, "removePolicyWithID:", [v16 unsignedIntegerValue]);

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v18 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v12 = v18;
      }

      while (v18);
    }

    if (v7)
    {
      v19 = v7->_domainFilterPolicyIDs;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v6];

    if (v7)
    {
      domainFilterIDs = v7->_domainFilterIDs;
    }

    else
    {
      domainFilterIDs = 0;
    }

    v22 = domainFilterIDs;
    v23 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v6];

    if (v23)
    {
      if (v7)
      {
        v24 = v7->_session;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      -[NEPolicySession removeDomainFilterWithID:](v25, "removeDomainFilterWithID:", [v23 unsignedIntegerValue]);

      if (v7)
      {
        v26 = v7->_domainFilterIDs;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      [(NSMutableDictionary *)v27 setObject:0 forKeyedSubscript:v6];
    }

    if ([v11 count] && v4)
    {
      if (v7)
      {
        v28 = v7->_session;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      [(NEPolicySession *)v29 apply];
    }

    objc_sync_exit(v7);
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v36 = "[NSPPrivacyProxyPolicyHandler removePreferredProxy:apply:]";
      _os_log_fault_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_FAULT, "%s called with null proxyName", buf, 0xCu);
    }
  }
}

- (void)wifiDisabled:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj)
  {
    if (obj->_wifiDisabled == v3)
    {
      goto LABEL_5;
    }

    obj->_wifiDisabled = v3;
    goto LABEL_4;
  }

  if (v3)
  {
LABEL_4:
    sub_10009810C(obj);
  }

LABEL_5:
  objc_sync_exit(obj);
}

- (void)cellularDisabled:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj)
  {
    if (obj->_cellularDisabled == v3)
    {
      goto LABEL_5;
    }

    obj->_cellularDisabled = v3;
    goto LABEL_4;
  }

  if (v3)
  {
LABEL_4:
    sub_10009810C(obj);
  }

LABEL_5:
  objc_sync_exit(obj);
}

- (void)interface:(id)a3 disabled:(BOOL)a4
{
  v16 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (a4)
  {
    if (v6 && v6->_disabledInterfaces || (v7 = objc_alloc_init(NSMutableSet), sub_10001FCA8(v6, v7), v7, v6))
    {
      v8 = 0;
      disabledInterfaces = v6->_disabledInterfaces;
    }

    else
    {
      disabledInterfaces = 0;
      v8 = 1;
    }

    v10 = disabledInterfaces;
    v11 = [(NSMutableSet *)v10 containsObject:v16];

    if ((v11 & 1) == 0)
    {
      if (v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6->_disabledInterfaces;
      }

      v13 = v12;
      [(NSMutableSet *)v13 addObject:v16];
      goto LABEL_14;
    }
  }

  else if (v6)
  {
    if (v6->_disabledInterfaces)
    {
      v14 = v6->_disabledInterfaces;
      v15 = [(NSMutableSet *)v14 containsObject:v16];

      if (v15)
      {
        v13 = v6->_disabledInterfaces;
        [(NSMutableSet *)v13 removeObject:v16];
LABEL_14:

        sub_10009810C(v6);
      }
    }
  }

  objc_sync_exit(v6);
}

- (void)replaceDisabledInterfaces:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 count])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:{*(*(&v14 + 1) + 8 * v10), v14}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if (v5)
    {
      disabledInterfaces = v5->_disabledInterfaces;
    }

    else
    {
      disabledInterfaces = 0;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_15;
    }

    disabledInterfaces = v5->_disabledInterfaces;
    if (!disabledInterfaces)
    {
      goto LABEL_15;
    }
  }

  v12 = disabledInterfaces;
  v13 = [(NSMutableSet *)v12 isEqualToSet:v6];

  if ((v13 & 1) == 0)
  {
    sub_10001FCA8(v5, v6);
    sub_10009810C(v5);
  }

LABEL_15:

  objc_sync_exit(v5);
}

- (void)setCaptivePortalExceptionHostname:(id)a3
{
  v10 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = v5->_captiveNetworkExceptionHostname;
    if (v6 != v10)
    {
      captiveNetworkExceptionHostname = v5->_captiveNetworkExceptionHostname;
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  v6 = 0;
  captiveNetworkExceptionHostname = 0;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = captiveNetworkExceptionHostname;
  v9 = [(NSString *)v8 isEqualToString:v10];

  if ((v9 & 1) == 0)
  {
    if (v5)
    {
      objc_storeStrong(&v5->_captiveNetworkExceptionHostname, a3);
    }

    sub_10009810C(v5);
  }

LABEL_10:
  objc_sync_exit(v5);
}

- (void)addObliviousProxyAgent:(id)a3 processes:(id)a4 hostname:(id)a5
{
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v31 = v8;
  v32 = v9;
  if (!v8)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v39 = "[NSPPrivacyProxyPolicyHandler addObliviousProxyAgent:processes:hostname:]";
    v30 = "%s called with null agentUUID";
LABEL_32:
    _os_log_fault_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
    goto LABEL_27;
  }

  v10 = v9;
  if (!v9)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v39 = "[NSPPrivacyProxyPolicyHandler addObliviousProxyAgent:processes:hostname:]";
    v30 = "%s called with null hostname";
    goto LABEL_32;
  }

  v11 = self;
  objc_sync_enter(v11);
  [(NSPPrivacyProxyPolicyHandler *)v11 removeObliviousProxyAgent:v8 forHostname:v10 apply:0];
  v12 = +[NSMutableArray array];
  sub_100084558(NSPPrivacyProxyPolicySerialization, v10, v33, v8);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v13 = v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v39 = v11;
          v40 = 2112;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ adding oblivious agent policy %@", buf, 0x16u);
        }

        if (v11)
        {
          controlSession = v11->_controlSession;
        }

        else
        {
          controlSession = 0;
        }

        v20 = controlSession;
        v21 = [(NEPolicySession *)v20 addPolicy:v17];

        if (v21)
        {
          v22 = nplog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = v11;
            v40 = 1024;
            LODWORD(v41) = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ added oblivious agent policy %u", buf, 0x12u);
          }

          v23 = [NSNumber numberWithUnsignedInteger:v21];
          [v12 addObject:v23];
        }

        else
        {
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v11;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ failed to add oblivious agent policy", buf, 0xCu);
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v24 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
      v14 = v24;
    }

    while (v24);
  }

  v25 = [NSString stringWithFormat:@"%@-%@", v32, v31];
  if (v11)
  {
    obliviousAgentPolicyIDs = v11->_obliviousAgentPolicyIDs;
  }

  else
  {
    obliviousAgentPolicyIDs = 0;
  }

  v27 = obliviousAgentPolicyIDs;
  [(NSMutableDictionary *)v27 setObject:v12 forKeyedSubscript:v25];

  if (v11)
  {
    v28 = v11->_controlSession;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  [(NEPolicySession *)v29 apply];

  objc_sync_exit(v11);
LABEL_27:
}

- (void)removeObliviousProxyAgent:(id)a3 forHostname:(id)a4 apply:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [NSString stringWithFormat:@"%@-%@", v9, v8];
    v28 = v5;
    if (v10)
    {
      obliviousAgentPolicyIDs = v10->_obliviousAgentPolicyIDs;
    }

    else
    {
      obliviousAgentPolicyIDs = 0;
    }

    v13 = obliviousAgentPolicyIDs;
    v14 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v11];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v16)
    {
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if (v10)
          {
            controlSession = v10->_controlSession;
          }

          else
          {
            controlSession = 0;
          }

          v20 = *(*(&v29 + 1) + 8 * v18);
          v21 = controlSession;
          -[NEPolicySession removePolicyWithID:](v21, "removePolicyWithID:", [v20 unsignedIntegerValue]);

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v22 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
        v16 = v22;
      }

      while (v22);
    }

    if (v10)
    {
      v23 = v10->_obliviousAgentPolicyIDs;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    [(NSMutableDictionary *)v24 setObject:0 forKeyedSubscript:v11];

    if ([v15 count] && v28)
    {
      if (v10)
      {
        v25 = v10->_controlSession;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      [(NEPolicySession *)v26 apply];
    }

    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v10;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ removed oblivious agent policies for %@ (%@)", buf, 0x20u);
    }

    objc_sync_exit(v10);
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "[NSPPrivacyProxyPolicyHandler removeObliviousProxyAgent:forHostname:apply:]";
      _os_log_fault_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_FAULT, "%s called with null hostname", buf, 0xCu);
    }
  }
}

- (void)addNetworkDiscoveryProxyAgent:(id)a3 with:(id)a4
{
  v6 = a3;
  v36 = a4;
  v37 = v6;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    if (v7 && [(NSMutableDictionary *)v7->_networkSpecificProxyPolicyIDs count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v7->_networkSpecificProxyPolicyIDs;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:buf count:16];
      if (v8)
      {
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v12 = [(NSMutableDictionary *)v7->_networkSpecificProxyPolicyIDs objectForKeyedSubscript:v11];
            v13 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v13)
            {
              v14 = *v44;
              do
              {
                for (j = 0; j != v13; j = j + 1)
                {
                  if (*v44 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v43 + 1) + 8 * j);
                  v17 = v7->_session;
                  -[NEPolicySession removePolicyWithID:](v17, "removePolicyWithID:", [v16 unsignedIntegerValue]);
                }

                v13 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v13);
            }
          }

          v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:buf count:16];
        }

        while (v8);
      }

      [(NSMutableDictionary *)v7->_networkSpecificProxyPolicyIDs removeAllObjects];
    }

    v18 = +[NSMutableArray array];
    sub_1000838A8(NSPPrivacyProxyPolicySerialization, v37, v36);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v19 = v40 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v20)
    {
      v21 = *v40;
      do
      {
        v22 = 0;
        do
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v39 + 1) + 8 * v22);
          v24 = nplog_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v54 = v7;
            v55 = 2112;
            v56 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ adding network based proxy policy %@", buf, 0x16u);
          }

          if (v7)
          {
            session = v7->_session;
          }

          else
          {
            session = 0;
          }

          v26 = session;
          v27 = [(NEPolicySession *)v26 addPolicy:v23];

          if (v27)
          {
            v28 = nplog_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v54 = v7;
              v55 = 1024;
              LODWORD(v56) = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ added network based proxy policy %u", buf, 0x12u);
            }

            v29 = [NSNumber numberWithUnsignedInteger:v27];
            [v18 addObject:v29];
          }

          else
          {
            v29 = nplog_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = v7;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@ failed to add network based proxy policy", buf, 0xCu);
            }
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v30 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
        v20 = v30;
      }

      while (v30);
    }

    v31 = [v37 UUIDString];
    if (v7)
    {
      networkSpecificProxyPolicyIDs = v7->_networkSpecificProxyPolicyIDs;
    }

    else
    {
      networkSpecificProxyPolicyIDs = 0;
    }

    v33 = networkSpecificProxyPolicyIDs;
    [(NSMutableDictionary *)v33 setObject:v18 forKeyedSubscript:v31];

    if (v7)
    {
      v34 = v7->_session;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    [(NEPolicySession *)v35 apply];

    objc_sync_exit(v7);
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v54 = "[NSPPrivacyProxyPolicyHandler addNetworkDiscoveryProxyAgent:with:]";
      _os_log_fault_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_FAULT, "%s called with null agentUUID", buf, 0xCu);
    }
  }
}

- (void)addProxiedContentAgent:(id)a3 maps:(id)a4
{
  v6 = a3;
  v38 = a4;
  v39 = v6;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    [(NSPPrivacyProxyPolicyHandler *)v7 removeProxiedContentAgent:v6 apply:0];
    v42 = +[NSMutableArray array];
    sub_100084E24(NSPPrivacyProxyPolicySerialization, v6, v38);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    obj = v53 = 0u;
    v8 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v8)
    {
      v9 = *v53;
      do
      {
        v10 = 0;
        do
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v52 + 1) + 8 * v10);
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v59 = v7;
            v60 = 2112;
            v61 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ adding proxied content policy %@", buf, 0x16u);
          }

          if (v7)
          {
            session = v7->_session;
          }

          else
          {
            session = 0;
          }

          v14 = session;
          v15 = [(NEPolicySession *)v14 addPolicy:v11];

          if (v15)
          {
            v16 = nplog_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = v7;
              v60 = 1024;
              LODWORD(v61) = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ added proxied content policy %u", buf, 0x12u);
            }

            v17 = [NSNumber numberWithUnsignedInteger:v15];
            [v42 addObject:v17];
          }

          else
          {
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v7;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ failed to add proxied content policy", buf, 0xCu);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v18 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
        v8 = v18;
      }

      while (v18);
    }

    v37 = [v39 UUIDString];
    if (v7)
    {
      proxiedContentPolicyIDs = v7->_proxiedContentPolicyIDs;
    }

    else
    {
      proxiedContentPolicyIDs = 0;
    }

    v20 = proxiedContentPolicyIDs;
    [(NSMutableDictionary *)v20 setObject:v42 forKeyedSubscript:v37];

    if (v7)
    {
      v21 = v7->_session;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [(NEPolicySession *)v22 apply];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v40 = v38;
    v23 = [v40 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v23)
    {
      v24 = 0;
      v43 = *v49;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v49 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v26 = *(*(&v48 + 1) + 8 * i);
          if ([v26 supportsReverseProxying])
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v27 = [v26 processes];
            v28 = [v27 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v28)
            {
              v29 = *v45;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v45 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v31 = [&off_100114350 objectForKeyedSubscript:*(*(&v44 + 1) + 8 * j)];
                  v32 = v31;
                  if (v31)
                  {
                    v24 |= [v31 unsignedLongLongValue];
                  }
                }

                v28 = [v27 countByEnumeratingWithState:&v44 objects:v56 count:16];
              }

              while (v28);
            }
          }
        }

        v23 = [v40 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v23);

      if (v24)
      {
        v33 = [NSNumber numberWithUnsignedLongLong:v24];
        if (v7)
        {
          proxiedContentNotifyFlags = v7->_proxiedContentNotifyFlags;
        }

        else
        {
          proxiedContentNotifyFlags = 0;
        }

        v35 = proxiedContentNotifyFlags;
        [(NSMutableDictionary *)v35 setObject:v33 forKeyedSubscript:v37];

LABEL_51:
        sub_100099210(&v7->super.isa);

        objc_sync_exit(v7);
        goto LABEL_52;
      }
    }

    else
    {
    }

    if (v7)
    {
      v36 = v7->_proxiedContentNotifyFlags;
    }

    else
    {
      v36 = 0;
    }

    v33 = v36;
    [(NSMutableDictionary *)v33 setObject:0 forKeyedSubscript:v37];
    goto LABEL_51;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v59 = "[NSPPrivacyProxyPolicyHandler addProxiedContentAgent:maps:]";
    _os_log_fault_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_FAULT, "%s called with null agentUUID", buf, 0xCu);
  }

LABEL_52:
}

- (void)removeProxiedContentAgent:(id)a3 apply:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [v6 UUIDString];
    if (v7)
    {
      proxiedContentPolicyIDs = v7->_proxiedContentPolicyIDs;
    }

    else
    {
      proxiedContentPolicyIDs = 0;
    }

    v10 = proxiedContentPolicyIDs;
    v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v8];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (v7)
          {
            session = v7->_session;
          }

          else
          {
            session = 0;
          }

          v17 = *(*(&v26 + 1) + 8 * v15);
          v18 = session;
          -[NEPolicySession removePolicyWithID:](v18, "removePolicyWithID:", [v17 unsignedIntegerValue]);

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v19 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v13 = v19;
      }

      while (v19);
    }

    if (v7)
    {
      v20 = v7->_proxiedContentPolicyIDs;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    [(NSMutableDictionary *)v21 setObject:0 forKeyedSubscript:v8];

    if (v7)
    {
      proxiedContentNotifyFlags = v7->_proxiedContentNotifyFlags;
    }

    else
    {
      proxiedContentNotifyFlags = 0;
    }

    v23 = proxiedContentNotifyFlags;
    [(NSMutableDictionary *)v23 setObject:0 forKeyedSubscript:v8];

    if ([v12 count] && v4)
    {
      if (v7)
      {
        v24 = v7->_session;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [(NEPolicySession *)v25 apply];
    }

    sub_100099210(&v7->super.isa);

    objc_sync_exit(v7);
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v32 = "[NSPPrivacyProxyPolicyHandler removeProxiedContentAgent:apply:]";
      _os_log_fault_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_FAULT, "%s called with null agentUUID", buf, 0xCu);
    }
  }
}

- (BOOL)addPoliciesForProbing
{
  sub_100086944();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138412546;
    v21 = v5;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = v21;
          v27 = self;
          v28 = 2112;
          v29 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ adding probe policy %@", buf, 0x16u);
        }

        if (self)
        {
          session = self->_session;
        }

        else
        {
          session = 0;
        }

        v12 = [(NEPolicySession *)session addPolicy:v9, v21, v22];
        v13 = nplog_obj();
        v14 = v13;
        if (!v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = self;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to add probe policy", buf, 0xCu);
          }

          v19 = 0;
          goto LABEL_24;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = v21;
          v27 = self;
          v28 = 2048;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ added probe policy %lu", buf, 0x16u);
        }

        if (self)
        {
          probePolicyIDs = self->_probePolicyIDs;
        }

        else
        {
          probePolicyIDs = 0;
        }

        v16 = probePolicyIDs;
        v17 = [NSNumber numberWithUnsignedInteger:v12];
        [(NSMutableArray *)v16 addObject:v17];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v18 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v6 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_24:

  return v19;
}

- (void)handleAppInstallation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![v4 containsObject:@"com.apple.SafariTechnologyPreview"])
  {
    goto LABEL_14;
  }

  if (v5)
  {
    safariTechnologyPreviewPolicyIDs = v5->_safariTechnologyPreviewPolicyIDs;
  }

  else
  {
    safariTechnologyPreviewPolicyIDs = 0;
  }

  v7 = safariTechnologyPreviewPolicyIDs;
  v8 = [(NSMutableArray *)v7 count];

  if (!v8)
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = @"com.apple.SafariTechnologyPreview";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ adding policies for '%@'", &v23, 0x16u);
    }

    if (sub_100096CA8(&v5->super.isa))
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = v5;
        v25 = 2112;
        v26 = @"com.apple.SafariTechnologyPreview";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ successfully added policies for '%@'", &v23, 0x16u);
      }

      v11 = 1;
LABEL_15:
      if ([v4 containsObject:@"com.apple.mobilesafari"])
      {
        sub_100096200(&v5->super.isa);
        v13 = nplog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ adding policies for Safari Bundles", &v23, 0xCu);
        }

        if (sub_100096F38(v5))
        {
          v14 = nplog_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v23 = 138412290;
            v24 = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ successfully added policies for Safari Bundles", &v23, 0xCu);
          }

          v11 = 1;
        }

        else
        {
          v15 = nplog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v23 = 138412290;
            v24 = v5;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ failed to add policies for Safari Bundles", &v23, 0xCu);
          }

          sub_100096200(&v5->super.isa);
        }
      }

      if ([v4 containsObject:@"com.apple.mobilemail"])
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412546;
          v24 = v5;
          v25 = 2112;
          v26 = @"com.apple.mobilemail";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ '%@' was installed", &v23, 0x16u);
        }

        v17 = sub_100096330(v5);
        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ adding policies for Mail App", &v23, 0xCu);
        }

        if (sub_1000971E0(&v5->super.isa))
        {
          v19 = nplog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 138412290;
            v24 = v5;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ successfully added policies for Mail App", &v23, 0xCu);
          }

LABEL_38:
          if (v5)
          {
            session = v5->_session;
          }

          else
          {
            session = 0;
          }

          v22 = session;
          [(NEPolicySession *)v22 apply];

          goto LABEL_41;
        }

        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = 138412290;
          v24 = v5;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ failed to add policies for Mail App", &v23, 0xCu);
        }

        sub_100096330(v5);
        v11 |= v17;
      }

      if (!v11)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = @"com.apple.SafariTechnologyPreview";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ failed to add policies for '%@'", &v23, 0x16u);
    }

    sub_1000960D0(&v5->super.isa);
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_41:
  objc_sync_exit(v5);
}

- (void)handleAppUninstallation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 containsObject:@"com.apple.SafariTechnologyPreview"];
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = @"com.apple.SafariTechnologyPreview";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ removing policies for '%@'", &v14, 0x16u);
    }

    sub_1000960D0(&v5->super.isa);
  }

  if ([v4 containsObject:@"com.apple.mobilesafari"])
  {
    sub_100096200(&v5->super.isa);
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ adding policies for Safari Bundles", &v14, 0xCu);
    }

    if (sub_100096F38(v5))
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ successfully added policies for Safari Bundles", &v14, 0xCu);
      }

      v6 = 1;
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ failed to add policies for Safari Bundles", &v14, 0xCu);
      }

      sub_100096200(&v5->super.isa);
    }
  }

  if (![v4 containsObject:@"com.apple.mobilemail"])
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = @"com.apple.mobilemail";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ '%@' was uninstalled", &v14, 0x16u);
  }

  if ((sub_100096330(v5) | v6))
  {
LABEL_21:
    if (v5)
    {
      session = v5->_session;
    }

    else
    {
      session = 0;
    }

    v13 = session;
    [(NEPolicySession *)v13 apply];
  }

LABEL_24:
  objc_sync_exit(v5);
}

- (BOOL)addPoliciesForMPTCPConverterProxy:(id)a3
{
  v4 = a3;
  if (self)
  {
    mptcpProxyPolicyIDs = self->_mptcpProxyPolicyIDs;
  }

  else
  {
    mptcpProxyPolicyIDs = 0;
  }

  if ([(NSMutableArray *)mptcpProxyPolicyIDs count])
  {
    v6 = 0;
  }

  else
  {
    v24 = v4;
    sub_100086BFC(NSPPrivacyProxyPolicySerialization, v4);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v30 = self;
            v31 = 2112;
            v32 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ adding MPTCP converter proxy policy %@", buf, 0x16u);
          }

          if (self)
          {
            session = self->_session;
          }

          else
          {
            session = 0;
          }

          v15 = [(NEPolicySession *)session addPolicy:v12];
          v16 = nplog_obj();
          v17 = v16;
          if (!v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = self;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ failed to add MPTCP converter proxy policy", buf, 0xCu);
            }

            v6 = 0;
            v4 = v24;
            goto LABEL_30;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v30 = self;
            v31 = 2048;
            v32 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ added MPTCP converter proxy policy %lu", buf, 0x16u);
          }

          if (self)
          {
            v18 = self->_mptcpProxyPolicyIDs;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          v20 = [NSNumber numberWithUnsignedInteger:v15];
          [(NSMutableArray *)v19 addObject:v20];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v21 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        v9 = v21;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    if (self)
    {
      v22 = self->_session;
    }

    else
    {
      v22 = 0;
    }

    v4 = v24;
    v6 = [(NEPolicySession *)v22 apply];
LABEL_30:
  }

  return v6;
}

- (void)removePoliciesForMPTCPConverterProxy:(BOOL)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (self)
  {
    mptcpProxyPolicyIDs = self->_mptcpProxyPolicyIDs;
  }

  else
  {
    mptcpProxyPolicyIDs = 0;
  }

  v6 = mptcpProxyPolicyIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (self)
        {
          session = self->_session;
        }

        else
        {
          session = 0;
        }

        v13 = session;
        -[NEPolicySession removePolicyWithID:](v13, "removePolicyWithID:", [v11 unsignedIntegerValue]);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v14 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v14;
    }

    while (v14);
  }

  if (v3)
  {
    if (self)
    {
      v15 = self->_session;
    }

    else
    {
      v15 = 0;
    }

    [(NEPolicySession *)v15 apply];
  }

  if (self)
  {
    v16 = self->_mptcpProxyPolicyIDs;
  }

  else
  {
    v16 = 0;
  }

  [(NSMutableArray *)v16 removeAllObjects];
}

@end