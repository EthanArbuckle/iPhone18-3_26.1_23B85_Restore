@interface AgentController
+ (id)sharedController;
- (AgentController)init;
- (BOOL)addPolicyToFloatingAgent:(id)a3 domain:(id)a4 agentUUIDToUse:(id)a5 policyType:(int64_t)a6 useControlPolicySession:(BOOL)a7;
- (BOOL)destroyFloatingAgent:(id)a3;
- (BOOL)extractDNRSvcParameterValues:(const char *)a3 buffer_size:(unint64_t)a4 resolverConfig:(id)a5;
- (BOOL)initializeController;
- (BOOL)isControllerReady;
- (BOOL)isResolverMulticast:(id *)a3;
- (BOOL)isResolverPrivate:(id *)a3;
- (BOOL)isTCPConverterProxyEnabled:(__CFDictionary *)a3;
- (BOOL)publishToAgent:(id)a3;
- (BOOL)registerAgent:(id)a3;
- (BOOL)spawnFloatingAgent:(Class)a3 entity:(id)a4 agentSubType:(unint64_t)a5 addPolicyOfType:(int64_t)a6 publishData:(id)a7;
- (BOOL)spawnMappedFloatingAgent:(id)a3 entity:(id)a4 agentSubType:(unint64_t)a5 addPolicyOfType:(int64_t)a6 updateData:(id)a7;
- (BOOL)unregisterAgent:(id)a3;
- (OS_dispatch_queue)controllerQueue;
- (const)copyConfigAgentData:(id)a3 uuid:(unsigned __int8)a4[16] length:(unint64_t *)a5;
- (const)copyDNSAgentData:(unsigned __int8)a3[16] length:(unint64_t *)a4;
- (const)copyProxyAgentData:(unsigned __int8)a3[16] length:(unint64_t *)a4;
- (id)createPolicySession;
- (id)dataForEncryptedResolver:(id)a3;
- (id)dataForProxyArray:(__CFArray *)a3;
- (id)dataForProxyDictionary:(__CFDictionary *)a3;
- (id)dataForResolver:(id *)a3;
- (id)dataLengthSanityCheck:(id)a3;
- (id)getAgentList:(id)a3 agentType:(unint64_t)a4 agentSubType:(unint64_t)a5;
- (id)getAgentWithSameDataAndSubType:(id)a3 data:(id)a4 subType:(unint64_t)a5;
- (id)getDNSDataFromCurrentConfig:(id *)a3 domain:(id)a4;
- (id)getProxyDataFromCurrentConfig:(__CFDictionary *)a3 domain:(id)a4;
- (id)sanitizeEntity:(id)a3;
- (id)sanitizeInterfaceName:(id)a3;
- (int)countProxyEntriesEnabled:(__CFDictionary *)a3;
- (int)entityInstanceNumber:(id)a3;
- (resolverList)copyResolverList:(id *)a3;
- (void)applyPolicies;
- (void)cleanConflictingAgentsFromList:(id)a3 new_list:(id)a4 agentDictionary:(id)a5;
- (void)deleteAgentList:(id)a3 list:(id)a4;
- (void)freeResolverList:(resolverList *)a3;
- (void)processDNSChanges;
- (void)processDNSResolvers:(id *)a3;
- (void)processDefaultProxyChanges:(__CFDictionary *)a3;
- (void)processOnionResolver:(id *)a3;
- (void)processProxyChanges;
- (void)processScopedDNSResolvers:(id *)a3;
- (void)processScopedProxyChanges:(__CFDictionary *)a3;
- (void)processServiceSpecificDNSResolvers:(id *)a3;
- (void)processServiceSpecificProxyChanges:(__CFDictionary *)a3;
- (void)processSupplementalDNSResolvers:(id *)a3;
- (void)processSupplementalProxyChanges:(__CFDictionary *)a3;
- (void)setControlPolicySession:(id)a3;
- (void)setControllerQueue:(id)a3;
- (void)setFloatingDNSAgentList:(id)a3;
- (void)setFloatingProxyAgentList:(id)a3;
- (void)setFloatingProxyAgentList_TCPConverter:(id)a3;
- (void)setPolicyDB:(id)a3;
- (void)setPolicySession:(id)a3;
@end

@implementation AgentController

+ (id)sharedController
{
  if (qword_100081BC0 != -1)
  {
    sub_100068294();
  }

  v2 = qword_100081BB8;
  objc_sync_enter(v2);
  if ([qword_100081BB8 isControllerReady] & 1) != 0 || (objc_msgSend(qword_100081BB8, "initializeController"))
  {
    objc_sync_exit(v2);

    v3 = qword_100081BB8;
  }

  else
  {
    objc_sync_exit(v2);

    v3 = 0;
  }

  return v3;
}

- (AgentController)init
{
  v5.receiver = self;
  v5.super_class = AgentController;
  v2 = [(AgentController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AgentController *)v2 initializeController];
  }

  return v3;
}

- (BOOL)initializeController
{
  v3 = [(AgentController *)self policySession];

  if (v3 || ([(AgentController *)self createPolicySession], v4 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setPolicySession:v4], v4, [(AgentController *)self policySession], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(AgentController *)self floatingProxyAgentList];

    if (v6 || (+[NSMutableDictionary dictionary], v7 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingProxyAgentList:v7], v7, [(AgentController *)self floatingProxyAgentList], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [(AgentController *)self floatingProxyAgentList_TCPConverter];

      if (v9 || (+[NSMutableDictionary dictionary], v10 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingProxyAgentList_TCPConverter:v10], v10, [(AgentController *)self floatingProxyAgentList_TCPConverter], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = [(AgentController *)self floatingDNSAgentList];

        if (v12 || (+[NSMutableDictionary dictionary], v13 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingDNSAgentList:v13], v13, [(AgentController *)self floatingDNSAgentList], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
        {
          v15 = [(AgentController *)self policyDB];

          if (v15 || (+[NSMutableDictionary dictionary], v16 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setPolicyDB:v16], v16, [(AgentController *)self policyDB], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
          {
            v18 = [(AgentController *)self controllerQueue];

            if (v18)
            {
              return 1;
            }

            v19 = dispatch_queue_create("IPMonitorAgentControllerQueue", 0);
            [(AgentController *)self setControllerQueue:v19];

            v20 = [(AgentController *)self controllerQueue];

            if (v20)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  v22 = sub_1000035EC();
  v23 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v25, 0, sizeof(v25));
    os_log_type_enabled(v22, v23);
    v24 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v24 != v25)
    {
      free(v24);
    }
  }

  _SC_crash();
  return 0;
}

- (id)createPolicySession
{
  v2 = objc_alloc_init(NEPolicySession);

  return v2;
}

- (BOOL)isControllerReady
{
  v3 = [(AgentController *)self policySession];
  if (v3)
  {
    v4 = [(AgentController *)self floatingProxyAgentList];
    if (v4)
    {
      v5 = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      if (v5)
      {
        v6 = [(AgentController *)self floatingDNSAgentList];
        if (v6)
        {
          v7 = [(AgentController *)self policyDB];
          if (v7)
          {
            v8 = [(AgentController *)self controllerQueue];
            v9 = v8 != 0;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataForProxyArray:(__CFArray *)a3
{
  _SCSerialize();

  return 0;
}

- (id)dataForProxyDictionary:(__CFDictionary *)a3
{
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    CFDictionaryRemoveValue(MutableCopy, kSCPropNetProxiesSupplementalMatchDomain);
    ProxyAgentData = SCNetworkProxiesCreateProxyAgentData();
    CFRelease(MutableCopy);
  }

  else
  {
    v5 = sub_1000035EC();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v9, 0, sizeof(v9));
      os_log_type_enabled(v5, v6);
      v7 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v7 != v9)
      {
        free(v7);
      }
    }

    ProxyAgentData = 0;
  }

  return ProxyAgentData;
}

- (id)getProxyDataFromCurrentConfig:(__CFDictionary *)a3 domain:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3 || !v6)
  {
    v16 = sub_1000035EC();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v21, 0, sizeof(v21));
      os_log_type_enabled(v16, v17);
      v18 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v18 != v21)
      {
        free(v18);
      }
    }

    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a3, kSCPropNetProxiesSupplemental);
  if (!Value || (v9 = Value, Count = CFArrayGetCount(Value), Count < 1))
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v11 = Count;
  v12 = 0;
  v13 = kSCPropNetProxiesSupplementalMatchDomain;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
    v15 = CFDictionaryGetValue(ValueAtIndex, v13);
    if (v15)
    {
      if (CFEqual(v15, v7))
      {
        break;
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_14;
    }
  }

  v19 = [(AgentController *)self dataForProxyDictionary:ValueAtIndex];
LABEL_15:

  return v19;
}

- (int)countProxyEntriesEnabled:(__CFDictionary *)a3
{
  v13[0] = kSCPropNetProxiesHTTPEnable;
  v13[1] = kSCPropNetProxiesHTTPSEnable;
  v13[2] = kSCPropNetProxiesProxyAutoConfigEnable;
  v13[3] = kSCPropNetProxiesFTPEnable;
  v13[4] = kSCPropNetProxiesGopherEnable;
  v13[5] = kSCPropNetProxiesRTSPEnable;
  v13[6] = kSCPropNetProxiesSOCKSEnable;
  v13[7] = kSCPropNetProxiesTransportConverterEnable;
  v13[8] = kSCPropNetProxiesProxyAutoDiscoveryEnable;
  if (a3)
  {
    v5 = 0;
    while (1)
    {
      LODWORD(v12[0]) = 0;
      v6 = [(AgentController *)self getIntValue:CFDictionaryGetValue(a3 valuePtr:v13[v5]), v12];
      result = v12[0];
      if (v6 && SLODWORD(v12[0]) >= 1)
      {
        break;
      }

      if (++v5 == 9)
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v12, 0, sizeof(v12));
      os_log_type_enabled(v9, v10);
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != v12)
      {
        free(v11);
      }
    }

    return 0;
  }

  return result;
}

- (void)processSupplementalProxyChanges:(__CFDictionary *)a3
{
  if (a3)
  {
    v5 = [(AgentController *)self floatingProxyAgentList];
    v6 = [(AgentController *)self getAgentList:v5 agentType:1 agentSubType:3];

    v88 = [[NSCountedSet alloc] initWithCapacity:0];
    v93 = +[NSMutableArray array];
    v91 = +[NSMutableArray array];
    type = a3;
    Value = CFDictionaryGetValue(a3, kSCPropNetProxiesSupplemental);
    theArray = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
    }

    else
    {
      Count = 0;
    }

    v94 = +[NSMutableArray array];
    v90 = Count;
    if (Count >= 1)
    {
      v17 = 0;
      v18 = kSCPropNetProxiesSupplementalMatchDomain;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
        v20 = CFDictionaryGetValue(ValueAtIndex, v18);
        if (v20)
        {
          v21 = v20;
          if ([(AgentController *)self countProxyEntriesEnabled:ValueAtIndex])
          {
            [v93 addObject:v21];
          }

          else
          {
            v22 = sub_1000035EC();
            v23 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v136 = 0u;
              v135 = 0u;
              v134 = 0u;
              v133 = 0u;
              v132 = 0u;
              v131 = 0u;
              v130 = 0u;
              v129 = 0u;
              v128 = 0u;
              v126 = 0u;
              v127 = 0u;
              v124 = 0u;
              v125 = 0u;
              v123 = 0u;
              v121 = 0uLL;
              v122 = 0uLL;
              os_log_type_enabled(v22, v23);
              v119 = 138412290;
              v120 = v21;
              LODWORD(v84) = 12;
              v82 = &v119;
              v24 = _os_log_send_and_compose_impl();
              __SC_log_send2();
              if (v24 != &v121)
              {
                free(v24);
              }
            }
          }
        }

        ++v17;
      }

      while (v90 != v17);
    }

    v25 = [(AgentController *)self floatingProxyAgentList:v82];
    [(AgentController *)self cleanConflictingAgentsFromList:v6 new_list:v93 agentDictionary:v25];

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v26 = v6;
    v27 = [v26 countByEnumeratingWithState:&v115 objects:v114 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v116;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v116 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v115 + 1) + 8 * i);
          if (([v93 containsObject:v31] & 1) == 0)
          {
            v32 = [(AgentController *)self floatingProxyAgentList];
            v33 = [v32 objectForKey:v31];

            [(AgentController *)self destroyFloatingAgent:v33];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v115 objects:v114 count:16];
      }

      while (v28);
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = v26;
    v34 = [obj countByEnumeratingWithState:&v110 objects:v109 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v111;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v111 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v110 + 1) + 8 * j);
          v39 = [(AgentController *)self floatingProxyAgentList];
          v40 = [v39 objectForKey:v38];

          if (v40)
          {
            v41 = [v40 getAgentMapping];
            v42 = v41;
            if (v41)
            {
              v43 = [v41 getAssociatedEntity];
              v44 = [(AgentController *)self getProxyDataFromCurrentConfig:type domain:v43];

              if (!v44 || ([v40 getAgentData], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEqual:", v44), v45, (v46 & 1) == 0))
              {
                [v94 addObject:v40];

LABEL_41:
                goto LABEL_42;
              }
            }

            else
            {
              v47 = [v40 getAssociatedEntity];
              v44 = [(AgentController *)self getProxyDataFromCurrentConfig:type domain:v47];

              v48 = [v40 getAgentData];
              v49 = [v48 isEqual:v44];

              if ((v49 & 1) == 0)
              {
                [v40 updateAgentData:v44];
                [v91 addObject:v40];
              }
            }

            [v93 removeObject:v38];
            goto LABEL_41;
          }

LABEL_42:
        }

        v35 = [obj countByEnumeratingWithState:&v110 objects:v109 count:16];
      }

      while (v35);
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v16 = v94;
    v50 = [v16 countByEnumeratingWithState:&v105 objects:v104 count:16];
    v95 = v16;
    if (v50)
    {
      v51 = v50;
      v52 = *v106;
      do
      {
        for (k = 0; k != v51; k = k + 1)
        {
          if (*v106 != v52)
          {
            objc_enumerationMutation(v95);
          }

          v54 = *(*(&v105 + 1) + 8 * k);
          v55 = sub_1000035EC();
          v56 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v136 = 0u;
            v135 = 0u;
            v134 = 0u;
            v133 = 0u;
            v132 = 0u;
            v131 = 0u;
            v130 = 0u;
            v129 = 0u;
            v128 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v123 = 0u;
            v121 = 0uLL;
            v122 = 0uLL;
            os_log_type_enabled(v55, v56);
            v57 = v55;
            v58 = [v54 getAgentName];
            v119 = 138412290;
            v120 = v58;
            LODWORD(v85) = 12;
            v83 = &v119;
            v59 = _os_log_send_and_compose_impl();

            __SC_log_send2();
            if (v59 != &v121)
            {
              free(v59);
            }
          }

          [(AgentController *)self destroyFloatingAgent:v54];
        }

        v16 = v95;
        v51 = [v95 countByEnumeratingWithState:&v105 objects:v104 count:16];
      }

      while (v51);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v12 = v91;
    v60 = [v12 countByEnumeratingWithState:&v100 objects:v99 count:16];
    v14 = v93;
    if (v60)
    {
      v61 = v60;
      v62 = *v101;
      do
      {
        for (m = 0; m != v61; m = m + 1)
        {
          if (*v101 != v62)
          {
            objc_enumerationMutation(v12);
          }

          [(AgentController *)self publishToAgent:*(*(&v100 + 1) + 8 * m), v83, v85];
        }

        v61 = [v12 countByEnumeratingWithState:&v100 objects:v99 count:16];
      }

      while (v61);
    }

    if (v90 < 1)
    {
      v15 = v88;
      v13 = obj;
    }

    else
    {
      v64 = 0;
      v65 = kSCPropNetProxiesSupplementalMatchDomain;
      v15 = v88;
      v92 = kSCPropNetProxiesSupplementalMatchDomain;
      do
      {
        v66 = CFArrayGetValueAtIndex(theArray, v64);
        v67 = CFDictionaryGetValue(v66, v65);
        if (v67)
        {
          v68 = v67;
          v69 = [v14 indexOfObject:v67];
          if (v69 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v70 = v69;
            v71 = [v15 countForObject:v68];
            if (v71)
            {
              v72 = [NSString stringWithFormat:@"%@ #%lu", v68, v71 + 1];
              v73 = [(AgentController *)self dataForProxyDictionary:v66];
              if ([(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v72 agentSubType:3 addPolicyOfType:6 publishData:v73])
              {
                v74 = [(AgentController *)self floatingProxyAgentList];
                v87 = v72;
                v75 = [v74 objectForKey:v72];

                v76 = sub_1000035EC();
                typea = _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v136 = 0u;
                  v135 = 0u;
                  v134 = 0u;
                  v133 = 0u;
                  v132 = 0u;
                  v131 = 0u;
                  v130 = 0u;
                  v129 = 0u;
                  v128 = 0u;
                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v123 = 0u;
                  v121 = 0uLL;
                  v122 = 0uLL;
                  os_log_type_enabled(v76, typea);
                  v86 = v76;
                  v77 = v76;
                  v78 = [v75 getAgentName];
                  v119 = 138412290;
                  v120 = v78;
                  LODWORD(v85) = 12;
                  v83 = &v119;
                  v79 = _os_log_send_and_compose_impl();

                  __SC_log_send2();
                  if (v79 != &v121)
                  {
                    free(v79);
                  }

                  v65 = v92;
                  v14 = v93;
                  v76 = v86;
                }

                v72 = v87;
                v15 = v88;
              }
            }

            else
            {
              v73 = [(AgentController *)self dataForProxyDictionary:v66];
              v80 = [(AgentController *)self floatingProxyAgentList];
              v81 = [(AgentController *)self getAgentWithSameDataAndSubType:v80 data:v73 subType:3];

              if (v81)
              {
                [(AgentController *)self spawnMappedFloatingAgent:v81 entity:v68 agentSubType:3 addPolicyOfType:6 updateData:v73];
              }

              else
              {
                [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v68 agentSubType:3 addPolicyOfType:6 publishData:v73];
              }

              v15 = v88;
              v65 = v92;
            }

            [v14 removeObjectAtIndex:{v70, v83, v85}];
            [v15 addObject:v68];
          }
        }

        ++v64;
      }

      while (v90 != v64);
      v16 = v95;
      v13 = obj;
    }
  }

  else
  {
    v9 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      os_log_type_enabled(v9, v10);
      LOWORD(v119) = 0;
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != &v121)
      {
        free(v11);
      }
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }
}

- (void)processScopedProxyChanges:(__CFDictionary *)a3
{
  v5 = [(AgentController *)self floatingProxyAgentList];
  v27 = [(AgentController *)self getAgentList:v5 agentType:1 agentSubType:1];

  Value = CFDictionaryGetValue(a3, kSCPropNetProxiesScoped);
  if (Value)
  {
    v7 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v7, v10, 0);
      v11 = 0;
      v26 = v7;
      do
      {
        v12 = v10[v11];
        v13 = [NSString stringWithFormat:@"%s%@", "@", v12];
        if ([(AgentController *)self countProxyEntriesEnabled:CFDictionaryGetValue(v7, v12)])
        {
          v14 = [v27 indexOfObject:v13];
          v15 = SCNetworkProxiesCopyMatching();
          if (v15)
          {
            v16 = v15;
            v17 = [(AgentController *)self dataForProxyArray:v15];
            CFRelease(v16);
          }

          else
          {
            v17 = 0;
          }

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v13 agentSubType:1 addPolicyOfType:8 publishData:v17];
            v21 = 0;
          }

          else
          {
            [v27 removeObjectAtIndex:v14];
            v22 = [(AgentController *)self floatingProxyAgentList];
            v21 = [v22 objectForKey:v13];

            if (v21)
            {
              [v21 updateAgentData:v17];
              if ([v21 shouldUpdateAgent])
              {
                [(AgentController *)self publishToAgent:v21];
              }
            }
          }
        }

        else
        {
          v18 = sub_1000035EC();
          v19 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            memset(v30, 0, sizeof(v30));
            os_log_type_enabled(v18, v19);
            v28 = 138412290;
            v29 = v12;
            LODWORD(v25) = 12;
            v24 = &v28;
            v20 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v20 != v30)
            {
              free(v20);
            }

            v7 = v26;
          }

          v21 = 0;
          v17 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      free(v10);
    }
  }

  v23 = [(AgentController *)self floatingProxyAgentList:v24];
  [(AgentController *)self deleteAgentList:v23 list:v27];
}

- (void)processServiceSpecificProxyChanges:(__CFDictionary *)a3
{
  v5 = [(AgentController *)self floatingProxyAgentList];
  v6 = [(AgentController *)self getAgentList:v5 agentType:1 agentSubType:9];

  Value = CFDictionaryGetValue(a3, kSCPropNetProxiesServices);
  if (Value)
  {
    v8 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      v12 = 0;
      v26 = v10;
      v27 = v6;
      do
      {
        v13 = v11[v12];
        v14 = [NSString stringWithFormat:@"%s%@", "@", v13];
        if ([(AgentController *)self countProxyEntriesEnabled:CFDictionaryGetValue(v8, v13)])
        {
          v15 = CFDictionaryGetValue(v8, v13);
          if (v15)
          {
            v28 = v15;
            v16 = [(AgentController *)self dataForProxyArray:[NSArray arrayWithObjects:&v28 count:1]];
          }

          else
          {
            v16 = 0;
          }

          v21 = [v6 indexOfObject:v14];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v14 agentSubType:9 addPolicyOfType:-1 publishData:v16];
            v20 = 0;
          }

          else
          {
            [v6 removeObjectAtIndex:v21];
            v22 = [(AgentController *)self floatingProxyAgentList];
            v20 = [v22 objectForKey:v14];

            if (v20)
            {
              [v20 updateAgentData:v16];
              if ([v20 shouldUpdateAgent])
              {
                [(AgentController *)self publishToAgent:v20];
              }
            }

            v6 = v27;
          }
        }

        else
        {
          v17 = sub_1000035EC();
          v18 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            memset(v31, 0, sizeof(v31));
            os_log_type_enabled(v17, v18);
            v29 = 138412290;
            v30 = v13;
            LODWORD(v25) = 12;
            v24 = &v29;
            v19 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v19 != v31)
            {
              free(v19);
            }

            v10 = v26;
            v6 = v27;
          }

          v20 = 0;
          v16 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      free(v11);
    }
  }

  v23 = [(AgentController *)self floatingProxyAgentList:v24];
  [(AgentController *)self deleteAgentList:v23 list:v6];
}

- (BOOL)isTCPConverterProxyEnabled:(__CFDictionary *)a3
{
  valuePtr = 0;
  value = 0;
  result = 0;
  if (CFDictionaryGetValueIfPresent(a3, kSCPropNetProxiesTransportConverterEnable, &value))
  {
    v3 = value;
    TypeID = CFNumberGetTypeID();
    if (v3)
    {
      if (CFGetTypeID(v3) == TypeID && CFNumberGetValue(value, kCFNumberIntType, &valuePtr) && valuePtr)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)processDefaultProxyChanges:(__CFDictionary *)a3
{
  values = CFDictionaryCreateMutableCopy(0, 0, a3);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesScoped);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesServices);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesSupplemental);
  v4 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  if (CFArrayGetCount(v4) >= 1)
  {
    if ([(AgentController *)self countProxyEntriesEnabled:values])
    {
      CFRelease(values);
      v5 = [(AgentController *)self dataForProxyArray:v4];
      v6 = [(AgentController *)self floatingProxyAgentList];
      v7 = [v6 objectForKey:@"_defaultProxy"];

      if (v7)
      {
        v8 = [v7 getAgentData];
        v9 = [v5 isEqual:v8];

        if (v9)
        {
          goto LABEL_23;
        }

        [(AgentController *)self destroyFloatingAgent:v7];
      }

      v10 = [(AgentController *)self isGlobalProxy:values];
      if (v10)
      {
        v11 = sub_1000035EC();
        v12 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v34 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          os_log_type_enabled(v11, v12);
          v26 = 0;
          v13 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v13 != &v27)
          {
            free(v13);
          }
        }

        v14 = 7;
        v15 = 10;
      }

      else
      {
        v14 = 0;
        v15 = 5;
      }

      if ((v10 & [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:@"_defaultProxy" agentSubType:v15 addPolicyOfType:v14 publishData:v5]) == 1 && [(AgentController *)self isTCPConverterProxyEnabled:values])
      {
        v21 = [(AgentController *)self floatingProxyAgentList];
        v20 = [v21 objectForKey:@"_defaultProxy"];

        if (v20)
        {
          v22 = [v20 getAgentData];
          v23 = [v5 isEqual:v22];

          if (v23)
          {
            v24 = [(AgentController *)self floatingProxyAgentList_TCPConverter];
            [v24 setObject:v20 forKey:@"_defaultProxy"];

            sub_10004EA44(1);
          }
        }

        goto LABEL_24;
      }

LABEL_23:
      v20 = v7;
LABEL_24:

      goto LABEL_25;
    }

    v16 = sub_1000035EC();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      os_log_type_enabled(v16, v17);
      v26 = 0;
      v18 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v18 != &v27)
      {
        free(v18);
      }
    }
  }

  CFRelease(values);
  v19 = [(AgentController *)self floatingProxyAgentList];
  v20 = [v19 objectForKey:@"_defaultProxy"];

  if (v20)
  {
    [(AgentController *)self destroyFloatingAgent:v20];
  }

LABEL_25:

  CFRelease(v4);
}

- (void)applyPolicies
{
  v3 = [(AgentController *)self controlPolicySession];
  if (v3)
  {
    v4 = v3;
    v5 = [(AgentController *)self controlPolicySession];
    v6 = [v5 apply];

    if ((v6 & 1) == 0)
    {
      v7 = sub_1000035EC();
      v8 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        os_log_type_enabled(v7, v8);
        v19 = 0;
        LODWORD(v18) = 2;
        v17 = &v19;
        v9 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v9 != &v20)
        {
          free(v9);
        }
      }
    }
  }

  v10 = [(AgentController *)self policySession:v17];
  if (v10)
  {
    v11 = v10;
    v12 = [(AgentController *)self policySession];
    v13 = [v12 apply];

    if ((v13 & 1) == 0)
    {
      v14 = sub_1000035EC();
      v15 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        os_log_type_enabled(v14, v15);
        v19 = 0;
        v16 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v16 != &v20)
        {
          free(v16);
        }
      }
    }
  }
}

- (void)processProxyChanges
{
  v3 = SCDynamicStoreCopyProxiesWithOptions();
  if (v3)
  {
    v4 = v3;
    [(AgentController *)self processDefaultProxyChanges:v3];
    [(AgentController *)self processScopedProxyChanges:v4];
    [(AgentController *)self processSupplementalProxyChanges:v4];
    [(AgentController *)self processServiceSpecificProxyChanges:v4];
    [(AgentController *)self applyPolicies];

    CFRelease(v4);
  }

  else
  {
    v5 = sub_1000035EC();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v24, 0, sizeof(v24));
      os_log_type_enabled(v5, v6);
      v18 = 0;
      LODWORD(v17) = 2;
      v16 = &v18;
      v7 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v7 != v24)
      {
        free(v7);
      }
    }

    v8 = [(AgentController *)self floatingProxyAgentList];
    v9 = [v8 copy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v10 objectForKey:{*(*(&v20 + 1) + 8 * i), v16, v17}];
          [(AgentController *)self destroyFloatingAgent:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v12);

      [(AgentController *)self applyPolicies];
    }

    else
    {
    }
  }
}

- (void)freeResolverList:(resolverList *)a3
{
  if (a3)
  {
    if (a3->var0)
    {
      free(a3->var0);
    }

    var2 = a3->var2;
    if (var2)
    {
      free(var2);
    }

    var4 = a3->var4;
    if (var4)
    {
      free(var4);
    }

    free(a3);
  }
}

- (resolverList)copyResolverList:(id *)a3
{
  if (a3->var0 < 1 || !*(&a3->var0 + 1))
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C09FF9A2uLL);
  if (a3->var0 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(&a3->var0 + 1) + 8 * v6);
      v8 = [(AgentController *)self isResolverMulticast:v7];
      p_var3 = &v5->var3;
      if (v8 & 1) != 0 || (v10 = [(AgentController *)self isResolverPrivate:v7], p_var3 = &v5->var5, (v10) || !*v7 && (p_var3 = &v5->var1, *(v7 + 8) >= 1))
      {
        ++*p_var3;
      }

      ++v6;
    }

    while (v6 < a3->var0);
  }

  v11 = sub_1000035EC();
  v12 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v35, 0, sizeof(v35));
    os_log_type_enabled(v11, v12);
    var1 = v5->var1;
    var3 = v5->var3;
    var5 = v5->var5;
    v30[0] = 67109632;
    v30[1] = var1;
    v31 = 1024;
    v32 = var3;
    v33 = 1024;
    v34 = var5;
    LODWORD(v29) = 20;
    v28 = v30;
    v16 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v16 != v35)
    {
      free(v16);
    }
  }

  v17 = v5->var1;
  if (v17)
  {
    v5->var0 = malloc_type_calloc(v17, 8uLL, 0x2004093837F09uLL);
  }

  v18 = v5->var3;
  if (v18)
  {
    v5->var2 = malloc_type_calloc(v18, 8uLL, 0x2004093837F09uLL);
  }

  v19 = v5->var5;
  if (v19)
  {
    v5->var4 = malloc_type_calloc(v19, 8uLL, 0x2004093837F09uLL);
  }

  if (a3->var0 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(&a3->var0 + 1) + 8 * v20);
      if ([(AgentController *)self isResolverMulticast:v24, v28, v29]&& v21 < v5->var3)
      {
        v25 = v21++;
        p_var2 = &v5->var2;
      }

      else if ([(AgentController *)self isResolverPrivate:v24]&& v22 < v5->var5)
      {
        v25 = v22++;
        p_var2 = &v5->var4;
      }

      else
      {
        if (*v24 || *(v24 + 8) < 1 || v23 >= v5->var1)
        {
          goto LABEL_36;
        }

        v25 = v23++;
        p_var2 = v5;
      }

      p_var2->var0[v25] = v24;
LABEL_36:
      ++v20;
    }

    while (v20 < a3->var0);
  }

  return v5;
}

- (id)dataForResolver:(id *)a3
{
  if (a3)
  {
    v4 = nw_resolver_config_create();
    nw_resolver_config_set_protocol();
    nw_resolver_config_set_class();
    if (*&a3->var3 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*&a3->var4 + 8 * v5);
        nw_resolver_config_add_search_domain();
        ++v5;
      }

      while (v5 < *&a3->var3);
    }

    if (a3->var1 >= 1)
    {
      v7 = 0;
      do
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v8 = *(*(&a3->var1 + 1) + 8 * v7);
        _SC_sockaddr_to_string();
        ++v7;
      }

      while (v7 < a3->var1);
    }

    v9 = nw_resolver_config_copy_plist_data_ref();
  }

  else
  {
    v4 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      os_log_type_enabled(v4, v10);
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != &v13)
      {
        free(v11);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)extractDNRSvcParameterValues:(const char *)a3 buffer_size:(unint64_t)a4 resolverConfig:(id)a5
{
  v7 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10004FECC;
  v42[3] = &unk_10007B0C8;
  v42[4] = &v43;
  v8 = objc_retainBlock(v42);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000502A0;
  v37[3] = &unk_10007B0C8;
  v37[4] = &v38;
  v31 = objc_retainBlock(v37);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100050310;
  v32[3] = &unk_10007B0C8;
  v32[4] = &v33;
  v30 = objc_retainBlock(v32);
  if (a4 < 2)
  {
    goto LABEL_37;
  }

  v29 = v7;
  if (a4 < 4 || !a3)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v9 = bswap32(*(a3 + 1)) >> 16;
    v10 = a4 - 4 >= v9;
    a4 = a4 - 4 - v9;
    if (!v10)
    {
      break;
    }

    v11 = a3 + 4;
    v12 = bswap32(*a3) >> 16;
    v13 = v8;
    if (v12 != 1)
    {
      if (v12 == 7)
      {
        v13 = v30;
      }

      else
      {
        v13 = v31;
        if (v12 != 3)
        {
          v14 = sub_1000035EC();
          v15 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0uLL;
            v49 = 0uLL;
            os_log_type_enabled(v14, v15);
            v47 = 0;
            v16 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v16 != &v48)
            {
              free(v16);
            }

            v7 = v29;
          }

          goto LABEL_16;
        }
      }
    }

    (v13[2])(v13, a3 + 4, v9);
LABEL_16:
    a3 = &v11[v9];
    if (a4 <= 3)
    {
      goto LABEL_23;
    }
  }

  v17 = sub_1000035EC();
  v18 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0uLL;
    v49 = 0uLL;
    os_log_type_enabled(v17, v18);
    v47 = 0;
    v20 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v20 != &v48)
    {
      free(v20);
    }

    v7 = v29;
  }

LABEL_23:
  if (!*(v44 + 6))
  {

    v7 = 0;
LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

  nw_resolver_config_set_protocol();
  if (*(v39 + 12))
  {
    v21 = sub_1000035EC();
    v22 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      os_log_type_enabled(v21, v22);
      v47 = 0;
      v23 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v23 != &v48)
      {
        free(v23);
      }

      v7 = v29;
    }

    v24 = *(v39 + 12);
    nw_resolver_config_set_port();
  }

  if (*(v44 + 6) == 2 && v34[3])
  {
    v25 = strchr(v34[3], 123);
    if (v25)
    {
      *v25 = 0;
      v26 = v34[3];
    }

    nw_resolver_config_set_provider_path();
  }

  v27 = 1;
LABEL_38:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v43, 8);
  return v27;
}

- (id)dataForEncryptedResolver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerAuthenticationDomainName];
    v7 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerServicePriority];
    v8 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerAddresses];
    v9 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerServiceParameters];
    v10 = nw_resolver_config_create();
    nw_resolver_config_set_class();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v21 + 1) + 8 * i) UTF8String];
          nw_resolver_config_add_name_server();
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v13);
    }

    [v6 UTF8String];
    nw_resolver_config_set_provider_name();
    -[AgentController extractDNRSvcParameterValues:buffer_size:resolverConfig:](self, "extractDNRSvcParameterValues:buffer_size:resolverConfig:", [v9 bytes], objc_msgSend(v9, "length"), v10);
    v16 = nw_resolver_config_copy_plist_data_ref();
  }

  else
  {
    v7 = sub_1000035EC();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v25, 0, sizeof(v25));
      os_log_type_enabled(v7, v17);
      v18 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v18 != v25)
      {
        free(v18);
      }
    }

    v6 = 0;
    v10 = 0;
    v16 = 0;
  }

  return v16;
}

- (id)getDNSDataFromCurrentConfig:(id *)a3 domain:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3 || !v6)
  {
    v11 = sub_1000035EC();
    v12 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v16, 0, sizeof(v16));
      os_log_type_enabled(v11, v12);
      v13 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v13 != v16)
      {
        free(v13);
      }
    }

    goto LABEL_16;
  }

  if (a3->var0 < 1 || !*(&a3->var0 + 1))
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(*(&a3->var0 + 1) + 8 * v8);
    if (!*v9 || [(AgentController *)self isResolverMulticast:*(*(&a3->var0 + 1) + 8 * v8)])
    {
      goto LABEL_10;
    }

    v10 = [NSString stringWithUTF8String:*v9];
    if ([v10 isEqualToString:v7])
    {
      break;
    }

LABEL_10:
    if (++v8 >= a3->var0)
    {
      goto LABEL_16;
    }
  }

  v14 = [(AgentController *)self dataForResolver:v9];

LABEL_17:

  return v14;
}

- (BOOL)isResolverMulticast:(id *)a3
{
  var0 = a3->var7.var0;
  if (var0)
  {
    LOBYTE(var0) = strstr(var0, "mdns") != 0;
  }

  return var0;
}

- (BOOL)isResolverPrivate:(id *)a3
{
  var0 = a3->var7.var0;
  if (var0)
  {
    LOBYTE(var0) = strstr(var0, "pdns") != 0;
  }

  return var0;
}

- (void)processSupplementalDNSResolvers:(id *)a3
{
  type = +[NSMutableArray array];
  v74 = [[NSCountedSet alloc] initWithCapacity:0];
  v5 = +[NSMutableArray array];
  v75 = +[NSMutableArray array];
  v6 = [(AgentController *)self floatingDNSAgentList];
  v7 = [(AgentController *)self getAgentList:v6 agentType:2 agentSubType:3];

  if (*(&a3->var0 + 1))
  {
    if (a3->var0 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(&a3->var0 + 1) + 8 * v8);
        if (*v9 && ![(AgentController *)self isResolverPrivate:*(*(&a3->var0 + 1) + 8 * v8)]&& ![(AgentController *)self isResolverMulticast:v9])
        {
          v10 = [NSString stringWithCString:*v9 encoding:1];
          [v5 addObject:v10];
        }

        ++v8;
      }

      while (v8 < a3->var0);
    }
  }

  else
  {
    a3->var0 = 0;
  }

  v11 = [(AgentController *)self floatingDNSAgentList];
  [(AgentController *)self cleanConflictingAgentsFromList:v7 new_list:v5 agentDictionary:v11];

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v116 objects:v115 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v117;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v117 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v116 + 1) + 8 * i);
        if (([v5 containsObject:v17] & 1) == 0)
        {
          v18 = [(AgentController *)self floatingDNSAgentList];
          v19 = [v18 objectForKey:v17];

          [(AgentController *)self destroyFloatingAgent:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v116 objects:v115 count:16];
    }

    while (v14);
  }

  v76 = v5;
  v81 = a3;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v111 objects:v110 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v112;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v112 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v111 + 1) + 8 * j);
        v25 = [(AgentController *)self floatingDNSAgentList];
        v26 = [v25 objectForKey:v24];

        if (v26)
        {
          v27 = [v26 getAgentMapping];
          v28 = v27;
          if (v27)
          {
            v29 = [v27 getAssociatedEntity];
            v30 = [(AgentController *)self getDNSDataFromCurrentConfig:v81 domain:v29];

            if (!v30 || ([v26 getAgentData], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqual:", v30), v31, (v32 & 1) == 0))
            {
              [type addObject:v26];

LABEL_33:
              goto LABEL_34;
            }
          }

          else
          {
            v33 = [v26 getAssociatedEntity];
            v30 = [(AgentController *)self getDNSDataFromCurrentConfig:v81 domain:v33];

            v34 = [v26 getAgentData];
            v35 = [v34 isEqual:v30];

            if ((v35 & 1) == 0)
            {
              [v26 updateAgentData:v30];
              [v75 addObject:v26];
            }
          }

          [v76 removeObject:v24];
          goto LABEL_33;
        }

LABEL_34:
      }

      v21 = [obj countByEnumeratingWithState:&v111 objects:v110 count:16];
    }

    while (v21);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v77 = type;
  v36 = [v77 countByEnumeratingWithState:&v106 objects:v105 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v107;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v107 != v38)
        {
          objc_enumerationMutation(v77);
        }

        v40 = *(*(&v106 + 1) + 8 * k);
        v41 = sub_1000035EC();
        v42 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0uLL;
          v90 = 0uLL;
          os_log_type_enabled(v41, v42);
          v43 = v41;
          v44 = [v40 getAgentName];
          v87 = 138412290;
          v88 = v44;
          LODWORD(v71) = 12;
          v70 = &v87;
          v45 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v45 != &v89)
          {
            free(v45);
          }
        }

        [(AgentController *)self destroyFloatingAgent:v40];
      }

      v37 = [v77 countByEnumeratingWithState:&v106 objects:v105 count:16];
    }

    while (v37);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v46 = v75;
  v47 = [v46 countByEnumeratingWithState:&v83 objects:v82 count:16];
  v48 = v81;
  v49 = v76;
  if (v47)
  {
    v50 = v47;
    v51 = *v84;
    do
    {
      for (m = 0; m != v50; m = m + 1)
      {
        if (*v84 != v51)
        {
          objc_enumerationMutation(v46);
        }

        [(AgentController *)self publishToAgent:*(*(&v83 + 1) + 8 * m), v70, v71];
      }

      v50 = [v46 countByEnumeratingWithState:&v83 objects:v82 count:16];
    }

    while (v50);
  }

  v53 = v74;
  if (v81->var0 >= 1)
  {
    v54 = 0;
    do
    {
      v55 = *(*(&v48->var0 + 1) + 8 * v54);
      if (*v55 && ![(AgentController *)self isResolverPrivate:*(*(&v48->var0 + 1) + 8 * v54)]&& ![(AgentController *)self isResolverMulticast:v55])
      {
        v56 = [NSString stringWithUTF8String:*v55];
        v57 = [v49 indexOfObject:v56];
        if (v57 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v58 = v57;
          v59 = [v53 countForObject:v56];
          if (v59)
          {
            v60 = v59 + 1;
            v61 = [(AgentController *)self dataForResolver:v55];
            v62 = [NSString stringWithFormat:@"%@ #%lu", v56, v60];
            if ([(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v62 agentSubType:3 addPolicyOfType:6 publishData:v61])
            {
              v63 = [(AgentController *)self floatingDNSAgentList];
              v64 = [v63 objectForKey:v62];

              v65 = sub_1000035EC();
              typea = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v103 = 0u;
                v104 = 0u;
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                v93 = 0u;
                v94 = 0u;
                v91 = 0u;
                v92 = 0u;
                v89 = 0uLL;
                v90 = 0uLL;
                os_log_type_enabled(v65, typea);
                v73 = v65;
                v66 = v65;
                v72 = [v64 getAgentName];
                v87 = 138412290;
                v88 = v72;
                LODWORD(v71) = 12;
                v70 = &v87;
                v67 = _os_log_send_and_compose_impl();

                __SC_log_send2();
                if (v67 != &v89)
                {
                  free(v67);
                }

                v53 = v74;
                v65 = v73;
              }
            }
          }

          else
          {
            v61 = [(AgentController *)self dataForResolver:v55];
            v68 = [(AgentController *)self floatingDNSAgentList];
            v69 = [(AgentController *)self getAgentWithSameDataAndSubType:v68 data:v61 subType:3];

            if (v69)
            {
              [(AgentController *)self spawnMappedFloatingAgent:v69 entity:v56 agentSubType:3 addPolicyOfType:6 updateData:v61];
            }

            else
            {
              [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v56 agentSubType:3 addPolicyOfType:6 publishData:v61];
            }
          }

          [v76 removeObjectAtIndex:{v58, v70, v71}];
          [v53 addObject:v56];

          v56 = v61;
          v48 = v81;
        }

        v49 = v76;
      }

      ++v54;
    }

    while (v54 < v48->var0);
  }
}

- (void)processDNSResolvers:(id *)a3
{
  v3 = self;
  v4 = [(AgentController *)self copyResolverList:a3];
  if (v4)
  {
    v5 = [(AgentController *)v3 floatingDNSAgentList];
    v65 = [(AgentController *)v3 getAgentList:v5 agentType:2 agentSubType:5];

    v6 = [(AgentController *)v3 floatingDNSAgentList];
    v68 = [(AgentController *)v3 getAgentList:v6 agentType:2 agentSubType:6];

    if (v4->var1 && v4->var0)
    {
      v7 = 0;
      v57 = kSCPropNetDNSEncryptedServers;
      v58 = v4;
      while (1)
      {
        v8 = v4->var0[v7];
        if (v7)
        {
          v9 = [NSString stringWithFormat:@"_defaultDNS #%u", (v7 + 1)];
        }

        else
        {
          v9 = @"_defaultDNS";
        }

        if (*(v8 + 10))
        {
          v10 = [NSString stringWithUTF8String:?];
          v11 = [v10 componentsSeparatedByString:@" "];
          if ([v11 count] == 3)
          {
            v12 = [v11 objectAtIndexedSubscript:1];
            v13 = v12;
            if (v12)
            {
              NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v12, kSCEntNetDNS);
              v66 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
              v12 = [v66 objectForKeyedSubscript:v57];
            }

            else
            {
              NetworkServiceEntity = 0;
              v66 = 0;
            }
          }

          else
          {
            v13 = 0;
            NetworkServiceEntity = 0;
            v66 = 0;
            v12 = 0;
          }

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          obj = v12;
          v15 = [(__CFString *)obj countByEnumeratingWithState:&v71 objects:v70 count:16];
          if (v15)
          {
            v16 = v15;
            v59 = v13;
            v60 = NetworkServiceEntity;
            v61 = v11;
            v62 = v10;
            v63 = v8;
            v64 = v7;
            v17 = 0;
            v18 = 0;
            v69 = *v72;
            while (1)
            {
              v19 = 0;
              v20 = v17;
              v21 = v18;
              do
              {
                if (*v72 != v69)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v71 + 1) + 8 * v19);

                v22 = v9;
                v23 = [NSString stringWithFormat:@"Encrypted-%@", v9];
                v24 = [(AgentController *)v3 dataForEncryptedResolver:v18];
                [(AgentController *)v3 floatingDNSAgentList];
                v26 = v25 = v3;
                v17 = [v26 objectForKey:v23];

                if (v17)
                {
                  [v68 removeObject:v23];
                  v27 = [v17 getAgentData];
                  v28 = [v24 isEqual:v27];

                  v3 = v25;
                  if (v28)
                  {
                    goto LABEL_23;
                  }

                  [(AgentController *)v25 destroyFloatingAgent:v17];
                }

                [(AgentController *)v25 spawnFloatingAgent:objc_opt_class() entity:v23 agentSubType:6 addPolicyOfType:0 publishData:v24];
                v3 = v25;
LABEL_23:

                v19 = v19 + 1;
                v20 = v17;
                v21 = v18;
                v9 = v22;
              }

              while (v16 != v19);
              v16 = [(__CFString *)obj countByEnumeratingWithState:&v71 objects:v70 count:16];
              if (!v16)
              {

                v4 = v58;
                v13 = v59;
                v8 = v63;
                v7 = v64;
                v11 = v61;
                v10 = v62;
                NetworkServiceEntity = v60;
                break;
              }
            }
          }
        }

        v29 = [(AgentController *)v3 dataForResolver:v8];
        [(AgentController *)v3 floatingDNSAgentList];
        v31 = v30 = v3;
        v32 = [v31 objectForKey:v9];

        if (!v32)
        {
          goto LABEL_30;
        }

        [v65 removeObject:v9];
        v33 = [v32 getAgentData];
        v34 = [v29 isEqual:v33];

        v3 = v30;
        if ((v34 & 1) == 0)
        {
          break;
        }

LABEL_31:

        if (++v7 >= v4->var1)
        {
          goto LABEL_32;
        }
      }

      [(AgentController *)v30 destroyFloatingAgent:v32];
LABEL_30:
      [(AgentController *)v30 spawnFloatingAgent:objc_opt_class() entity:v9 agentSubType:5 addPolicyOfType:0 publishData:v29];
      v3 = v30;
      goto LABEL_31;
    }

LABEL_32:
    v35 = [(AgentController *)v3 floatingDNSAgentList];
    [(AgentController *)v3 deleteAgentList:v35 list:v65];

    v36 = [(AgentController *)v3 floatingDNSAgentList];
    [(AgentController *)v3 deleteAgentList:v36 list:v68];

    v37 = [(AgentController *)v3 floatingDNSAgentList];
    v38 = [(AgentController *)v3 getAgentList:v37 agentType:2 agentSubType:7];

    if (v4->var3 && v4->var2)
    {
      v39 = 0;
      do
      {
        v40 = v4->var2[v39];
        if (v40)
        {
          if (*v40)
          {
            v41 = [NSString stringWithUTF8String:?];
            if (v41)
            {
              v42 = v41;
              [(AgentController *)v3 floatingDNSAgentList];
              v44 = v43 = v3;
              v45 = [v44 objectForKey:v42];

              if (v45)
              {
                [v38 removeObject:v42];

                v42 = v45;
              }

              else
              {
                [(AgentController *)v43 spawnFloatingAgent:objc_opt_class() entity:v42 agentSubType:7 addPolicyOfType:6 publishData:0];
              }

              v3 = v43;
            }
          }
        }

        ++v39;
      }

      while (v39 < v4->var3);
    }

    v46 = [(AgentController *)v3 floatingDNSAgentList];
    [(AgentController *)v3 deleteAgentList:v46 list:v38];

    v47 = [(AgentController *)v3 floatingDNSAgentList];
    v48 = [(AgentController *)v3 getAgentList:v47 agentType:2 agentSubType:8];

    if (v4->var5 && v4->var4)
    {
      v49 = 0;
      do
      {
        v50 = v4->var4[v49];
        if (v50)
        {
          if (*v50)
          {
            v51 = [NSString stringWithUTF8String:?];
            if (v51)
            {
              v52 = v51;
              [(AgentController *)v3 floatingDNSAgentList];
              v54 = v53 = v3;
              v55 = [v54 objectForKey:v52];

              if (v55)
              {
                [v48 removeObject:v52];

                v52 = v55;
              }

              else
              {
                [(AgentController *)v53 spawnFloatingAgent:objc_opt_class() entity:v52 agentSubType:8 addPolicyOfType:6 publishData:0];
              }

              v3 = v53;
            }
          }
        }

        ++v49;
      }

      while (v49 < v4->var5);
    }

    v56 = [(AgentController *)v3 floatingDNSAgentList];
    [(AgentController *)v3 deleteAgentList:v56 list:v48];
  }

  [(AgentController *)v3 freeResolverList:v4];
}

- (void)processScopedDNSResolvers:(id *)a3
{
  v4 = self;
  v5 = [(AgentController *)self floatingDNSAgentList];
  v6 = [(AgentController *)v4 getAgentList:v5 agentType:2 agentSubType:1];

  v7 = [(AgentController *)v4 floatingDNSAgentList];
  v8 = [(AgentController *)v4 getAgentList:v7 agentType:2 agentSubType:2];

  if (SHIDWORD(a3->var1.var1) >= 1 && *&a3->var2)
  {
    v9 = 0;
    v39 = kSCPropNetDNSEncryptedServers;
    v52 = v4;
    v40 = a3;
    v41 = v6;
    do
    {
      v10 = *(*&a3->var2 + 8 * v9);
      v11 = sub_100038A68(*(v10 + 64), v58);
      if (v11)
      {
        v12 = [NSString stringWithUTF8String:v11];
        v13 = [NSString stringWithFormat:@"%s%@", "@", v12];
        if (*(v10 + 80))
        {
          v14 = [NSString stringWithUTF8String:?];
          v15 = [v14 componentsSeparatedByString:@" "];
          v49 = v12;
          if ([v15 count] == 3)
          {
            v16 = [v15 objectAtIndexedSubscript:1];
            if (v16)
            {
              v47 = v16;
              NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v16, kSCEntNetDNS);
              v46 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
              v16 = [v46 objectForKeyedSubscript:v39];
            }

            else
            {
              v47 = 0;
              NetworkServiceEntity = 0;
              v46 = 0;
            }
          }

          else
          {
            v47 = 0;
            NetworkServiceEntity = 0;
            v46 = 0;
            v16 = 0;
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v16;
          v21 = [(__CFString *)obj countByEnumeratingWithState:&v54 objects:v53 count:16];
          if (v21)
          {
            v22 = v21;
            v42 = v15;
            v43 = v14;
            v44 = v10;
            v45 = v9;
            v23 = v13;
            v51 = 0;
            v24 = 0;
            v25 = *v55;
            v26 = &xpc_array_set_string_ptr;
            while (1)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                v28 = v24;
                if (*v55 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v54 + 1) + 8 * i);

                v29 = [v26[103] stringWithFormat:@"Encrypted-%@", v23];
                v4 = v52;
                v30 = [(AgentController *)v52 dataForEncryptedResolver:v24];
                v31 = [v8 indexOfObject:v29];
                if (v31 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(AgentController *)v52 spawnFloatingAgent:objc_opt_class() entity:v29 agentSubType:2 addPolicyOfType:8 publishData:v30];
                  goto LABEL_26;
                }

                v32 = v8;
                [v8 removeObjectAtIndex:v31];
                v33 = [(AgentController *)v52 floatingDNSAgentList];
                v34 = [v33 objectForKey:v29];

                if (v34)
                {
                  [v34 updateAgentData:v30];
                  if ([v34 shouldUpdateAgent])
                  {
                    v4 = v52;
                    [(AgentController *)v52 publishToAgent:v34];
                    v51 = v34;
                    v8 = v32;
                    v26 = &xpc_array_set_string_ptr;
                    goto LABEL_26;
                  }

                  v51 = v34;
                }

                else
                {
                  v51 = 0;
                }

                v8 = v32;
                v26 = &xpc_array_set_string_ptr;
                v4 = v52;
LABEL_26:
              }

              v22 = [(__CFString *)obj countByEnumeratingWithState:&v54 objects:v53 count:16];
              if (!v22)
              {

                a3 = v40;
                v6 = v41;
                v13 = v23;
                v10 = v44;
                v9 = v45;
                v15 = v42;
                v14 = v43;
                goto LABEL_30;
              }
            }
          }

          v51 = 0;
LABEL_30:

          v12 = v49;
        }

        else
        {
          v51 = 0;
        }

        v17 = [(AgentController *)v4 dataForResolver:v10];
        v35 = [v6 indexOfObject:v13];
        if (v35 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(AgentController *)v4 spawnFloatingAgent:objc_opt_class() entity:v13 agentSubType:1 addPolicyOfType:8 publishData:v17];
          v20 = v13;
          v18 = 0;
        }

        else
        {
          [v6 removeObjectAtIndex:v35];
          v36 = [(AgentController *)v4 floatingDNSAgentList];
          v20 = v13;
          v18 = [v36 objectForKey:v13];

          if (v18 && ([v18 updateAgentData:v17], objc_msgSend(v18, "shouldUpdateAgent")))
          {
            v4 = v52;
            [(AgentController *)v52 publishToAgent:v18];
          }

          else
          {
            v4 = v52;
          }
        }

        v19 = v51;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v20 = 0;
      }

      ++v9;
    }

    while (v9 < SHIDWORD(a3->var1.var1));
  }

  v37 = [(AgentController *)v4 floatingDNSAgentList];
  [(AgentController *)v4 deleteAgentList:v37 list:v6];

  v38 = [(AgentController *)v4 floatingDNSAgentList];
  [(AgentController *)v4 deleteAgentList:v38 list:v8];
}

- (void)processServiceSpecificDNSResolvers:(id *)a3
{
  v5 = [(AgentController *)self floatingDNSAgentList];
  v19 = [(AgentController *)self getAgentList:v5 agentType:2 agentSubType:9];

  if (SLODWORD(a3->var4) >= 1 && *(&a3->var4 + 4))
  {
    v6 = 0;
    v7 = &xpc_array_set_string_ptr;
    v8 = "@";
    do
    {
      v9 = *(*(&a3->var4 + 4) + 8 * v6);
      v10 = *(v9 + 76);
      if (v10)
      {
        v11 = [v7[103] stringWithFormat:@"%s%u", v8, v10];
        v12 = [(AgentController *)self dataForResolver:v9];
        v13 = [v19 indexOfObject:v11];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v11 agentSubType:9 addPolicyOfType:-1 publishData:v12];
          v14 = 0;
        }

        else
        {
          v15 = v8;
          v16 = v7;
          [v19 removeObjectAtIndex:v13];
          v17 = [(AgentController *)self floatingDNSAgentList];
          v14 = [v17 objectForKey:v11];

          if (v14)
          {
            [v14 updateAgentData:v12];
            if ([v14 shouldUpdateAgent])
            {
              [(AgentController *)self publishToAgent:v14];
            }
          }

          v7 = v16;
          v8 = v15;
        }
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v11 = 0;
      }

      ++v6;
    }

    while (v6 < SLODWORD(a3->var4));
  }

  v18 = [(AgentController *)self floatingDNSAgentList];
  [(AgentController *)self deleteAgentList:v18 list:v19];
}

- (void)processOnionResolver:(id *)a3
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3->var0 < 1)
  {
LABEL_6:
    if (qword_100081BC8)
    {
      return;
    }

    v6 = [NEPolicy alloc];
    v7 = +[NEPolicyResult drop];
    v8 = [NEPolicyCondition domain:@"onion"];
    v37 = v8;
    v9 = [NSArray arrayWithObjects:&v37 count:1];
    v10 = [v6 initWithOrder:500 result:v7 conditions:v9];

    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = [(AgentController *)self policySession];
    qword_100081BC8 = [v11 addPolicy:v10];

    v12 = [(AgentController *)self policySession];
    LOBYTE(v11) = [v12 apply];

    if (v11)
    {
      v13 = sub_1000035EC();
      v14 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_19:
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(v13, v14);
        v20 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v20 != &v21)
        {
          free(v20);
        }
      }
    }

    else
    {
      qword_100081BC8 = 0;
      v13 = sub_1000035EC();
      v14 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_19;
      }
    }

    goto LABEL_22;
  }

  v5 = 0;
  while (![(AgentController *)self isResolverOnion:*(*(&a3->var0 + 1) + 8 * v5)])
  {
    if (++v5 >= a3->var0)
    {
      goto LABEL_6;
    }
  }

LABEL_11:
  if (!qword_100081BC8)
  {
    return;
  }

  v15 = [(AgentController *)self policySession];
  [v15 removePolicyWithID:qword_100081BC8];

  v16 = [(AgentController *)self policySession];
  v17 = [v16 apply];

  if (v17)
  {
    qword_100081BC8 = 0;
    v10 = sub_1000035EC();
    v18 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_16:
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(v10, v18);
      v19 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v19 != &v21)
      {
        free(v19);
      }
    }
  }

  else
  {
    v10 = sub_1000035EC();
    v18 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_16;
    }
  }

LABEL_22:
}

- (void)processDNSChanges
{
  v3 = dns_configuration_copy();
  if (v3)
  {
    [(AgentController *)self processDNSResolvers:v3];
    [(AgentController *)self processScopedDNSResolvers:v3];
    [(AgentController *)self processSupplementalDNSResolvers:v3];
    [(AgentController *)self processServiceSpecificDNSResolvers:v3];
  }

  else
  {
    v4 = sub_1000035EC();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v23, 0, sizeof(v23));
      os_log_type_enabled(v4, v5);
      v17 = 0;
      LODWORD(v16) = 2;
      v15 = &v17;
      v6 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v6 != v23)
      {
        free(v6);
      }
    }

    v7 = [(AgentController *)self floatingDNSAgentList];
    v8 = [v7 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v9 objectForKey:{*(*(&v19 + 1) + 8 * i), v15, v16}];
          [(AgentController *)self destroyFloatingAgent:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(AgentController *)self processOnionResolver:v3, v15, v16];
  [(AgentController *)self applyPolicies];
  if (v3)
  {
    dns_configuration_free();
  }
}

- (const)copyConfigAgentData:(id)a3 uuid:(unsigned __int8)a4[16] length:(unint64_t *)a5
{
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    v20 = sub_1000035EC();
    v22 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_20:

      v16 = 0;
      v14 = 0;
      goto LABEL_21;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *uu1 = 0u;
    v32 = 0u;
    os_log_type_enabled(v20, v22);
    *out = 0;
LABEL_18:
    v23 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v23 != uu1)
    {
      free(v23);
    }

    goto LABEL_20;
  }

  *a5 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (!v10)
  {
LABEL_10:

LABEL_14:
    memset(out, 0, 37);
    uuid_unparse(a4, out);
    v20 = sub_1000035EC();
    v21 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_20;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *uu1 = 0u;
    v32 = 0u;
    os_log_type_enabled(v20, v21);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = *v28;
LABEL_4:
  v13 = 0;
  while (1)
  {
    if (*v28 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = [v9 objectForKey:*(*(&v27 + 1) + 8 * v13)];
    memset(uu1, 0, sizeof(uu1));
    v15 = [v14 getAgentUUID];
    [v15 getUUIDBytes:uu1];

    if (!uuid_compare(uu1, a4))
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = [v14 getAgentData];
  v17 = [v16 length];
  if (v17)
  {
    v18 = v17;
    *a5 = v17;
    v19 = malloc_type_malloc(v17, 0x9EFCCC3AuLL);
    memcpy(v19, [v16 bytes], v18);
    goto LABEL_22;
  }

LABEL_21:
  v19 = 0;
LABEL_22:

  return v19;
}

- (const)copyProxyAgentData:(unsigned __int8)a3[16] length:(unint64_t *)a4
{
  v7 = [(AgentController *)self floatingProxyAgentList];
  v8 = [(AgentController *)self copyConfigAgentData:v7 uuid:a3 length:a4];

  return v8;
}

- (const)copyDNSAgentData:(unsigned __int8)a3[16] length:(unint64_t *)a4
{
  v7 = [(AgentController *)self floatingDNSAgentList];
  v8 = [(AgentController *)self copyConfigAgentData:v7 uuid:a3 length:a4];

  return v8;
}

- (id)dataLengthSanityCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 getAgentData];
  if ([v4 length] < 0x401)
  {
    v8 = 0;
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v5 = +[NSMutableDictionary dictionary];
    v6 = [v3 getAgentUUID];
    [v6 getUUIDBytes:v10];
    v7 = [[NSData alloc] initWithBytes:v10 length:16];
    [v5 setValue:v7 forKey:@"OutOfBandDataUUID"];
    v8 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:0];
  }

  return v8;
}

- (id)sanitizeEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@" #"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

- (id)sanitizeInterfaceName:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 substringFromIndex:v4 + 1];
  }

  v6 = v5;

  return v6;
}

- (int)entityInstanceNumber:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@" #"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + 2];
    v5 = [v6 intValue];
  }

  return v5;
}

- (void)cleanConflictingAgentsFromList:(id)a3 new_list:(id)a4 agentDictionary:(id)a5
{
  v8 = a3;
  v32 = a4;
  obj = v8;
  v37 = a5;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v64 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v65;
    v33 = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v64 + 1) + 8 * i);
        v14 = [(AgentController *)self sanitizeEntity:v13, v30, v31];
        if (([v14 isEqualToString:v13] & 1) == 0)
        {
          v15 = [v37 objectForKey:v14];
          [(AgentController *)self destroyFloatingAgent:v15];
          v16 = [v37 objectForKey:v13];

          [(AgentController *)self destroyFloatingAgent:v16];
          v17 = sub_1000035EC();
          v18 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0uLL;
            v48 = 0uLL;
            os_log_type_enabled(v17, v18);
            v43 = 138412546;
            v44 = v14;
            v45 = 2112;
            v46 = v13;
            LODWORD(v31) = 22;
            v30 = &v43;
            v19 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v19 != &v47)
            {
              free(v19);
            }

            self = v33;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v64 objects:v63 count:16];
    }

    while (v10);
  }

  v20 = [[NSCountedSet alloc] initWithArray:v32];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obja = obj;
  v21 = [obja countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      v24 = 0;
      v34 = v22;
      do
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obja);
        }

        v25 = *(*(&v39 + 1) + 8 * v24);
        if ([v20 countForObject:{v25, v30, v31}] >= 2)
        {
          v26 = [v37 objectForKey:v25];
          [(AgentController *)self destroyFloatingAgent:v26];
          v27 = sub_1000035EC();
          v28 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0uLL;
            v48 = 0uLL;
            os_log_type_enabled(v27, v28);
            v43 = 138412290;
            v44 = v25;
            LODWORD(v31) = 12;
            v30 = &v43;
            v29 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v29 != &v47)
            {
              free(v29);
            }

            v22 = v34;
          }
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [obja countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v22);
  }
}

- (id)getAgentList:(id)a3 agentType:(unint64_t)a4 agentSubType:(unint64_t)a5
{
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = [v7 allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 getAgentType] == a4 && objc_msgSend(v14, "getAgentSubType") == a5)
        {
          v15 = [v14 getAssociatedEntity];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)deleteAgentList:(id)a3 list:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 objectForKey:*(*(&v14 + 1) + 8 * v11)];
        [(AgentController *)self destroyFloatingAgent:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

- (id)getAgentWithSameDataAndSubType:(id)a3 data:(id)a4 subType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [v9 objectForKey:*(*(&v20 + 1) + 8 * v13)];
      v15 = [v14 getAgentData];
      v16 = [v15 isEqual:v8];

      if (v16)
      {
        if ([v14 getAgentSubType] == a5)
        {
          v17 = [v14 getRegistrationObject];

          if (v17)
          {
            break;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14;
}

- (BOOL)addPolicyToFloatingAgent:(id)a3 domain:(id)a4 agentUUIDToUse:(id)a5 policyType:(int64_t)a6 useControlPolicySession:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = a4;
  v15 = v12;
  v16 = [v12 getAgentType];
  v17 = v16;
  if (v16 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 5000;
  }

  if (v16 == 2)
  {
    v19 = 5000;
  }

  else
  {
    v19 = 0;
  }

  v98 = [(AgentController *)self entityInstanceNumber:v14];
  v100 = [(AgentController *)self sanitizeEntity:v14];

  if (a6 > 6)
  {
    if (a6 != 7)
    {
      if (a6 != 8)
      {
        goto LABEL_14;
      }

      v96 = v18 | 0x64;
      v22 = [(AgentController *)self sanitizeInterfaceName:v100];

      v20 = [NEPolicyCondition scopedInterface:v22];
      v21 = 250;
      v100 = v22;
LABEL_20:
      v97 = v13;
      v27 = [NEPolicyResult netAgentUUID:v13];
      v28 = [NEPolicy alloc];
      v29 = v28;
      v99 = v20;
      if (v20)
      {
        v105 = v20;
        v30 = [NSArray arrayWithObjects:&v105 count:1];
        v31 = [v29 initWithOrder:v96 + v98 result:v27 conditions:v30];

        if (v31)
        {
LABEL_22:
          if (v7)
          {
            v32 = [(AgentController *)self controlPolicySession];

            if (!v32)
            {
              v33 = [(AgentController *)self createPolicySession];
              [(AgentController *)self setControlPolicySession:v33];

              v34 = [(AgentController *)self controlPolicySession];

              if (!v34)
              {
                v75 = sub_1000035EC();
                v76 = _SC_syslog_os_log_mapping();
                v26 = v15;
                if (__SC_log_enabled())
                {
                  v120 = 0u;
                  v121 = 0u;
                  v118 = 0u;
                  v119 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  os_log_type_enabled(v75, v76);
                  v77 = v75;
                  [v15 getAgentName];
                  v104 = v103 = 138412290;
                  v78 = _os_log_send_and_compose_impl();

                  __SC_log_send2();
                  if (v78 != &v106)
                  {
                    free(v78);
                  }
                }

                v55 = 0;
                goto LABEL_74;
              }

              v35 = [(AgentController *)self controlPolicySession];
              [v35 setPriority:100];
            }

            v36 = [(AgentController *)self controlPolicySession];
          }

          else
          {
            v36 = [(AgentController *)self policySession];
          }

          v41 = v36;
          [v15 setPreferredPolicySession:v36];

          v95 = [v15 preferredPolicySession];
          v42 = [v95 addPolicy:v31];
          if (v42)
          {
            v43 = v42;
            v44 = [NEPolicyResult skipWithOrder:v19];

            v45 = [NEPolicy alloc];
            v46 = v45;
            v94 = v44;
            if (v99)
            {
              v102 = v99;
              v47 = [NSArray arrayWithObjects:&v102 count:1];
              v48 = v44;
              v49 = v47;
              v50 = [v46 initWithOrder:(v18 + v21) result:v48 conditions:v47];

              v31 = v49;
            }

            else
            {
              v50 = [v45 initWithOrder:(v18 + v21) result:v44 conditions:0];
            }

            v26 = v15;
            if (!v50)
            {
              v64 = sub_1000035EC();
              v65 = _SC_syslog_os_log_mapping();
              v13 = v97;
              v23 = v99;
              if (__SC_log_enabled())
              {
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v116 = 0u;
                v117 = 0u;
                v114 = 0u;
                v115 = 0u;
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                os_log_type_enabled(v64, v65);
                v66 = v64;
                v67 = [v15 getAgentName];
                v103 = 138412290;
                v104 = v67;
                v68 = _os_log_send_and_compose_impl();

                __SC_log_send2();
                if (v68 != &v106)
                {
                  free(v68);
                }

                v23 = v99;
              }

              goto LABEL_83;
            }

            v56 = [v95 addPolicy:v50];
            v13 = v97;
            v23 = v99;
            if (!v56)
            {
              v69 = sub_1000035EC();
              v70 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v116 = 0u;
                v117 = 0u;
                v114 = 0u;
                v115 = 0u;
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                os_log_type_enabled(v69, v70);
                v71 = v69;
                v72 = [v15 getAgentName];
                v103 = 138412290;
                v104 = v72;
                v73 = _os_log_send_and_compose_impl();

                __SC_log_send2();
                if (v73 != &v106)
                {
                  free(v73);
                }

                v13 = v97;
                v23 = v99;
              }

              goto LABEL_83;
            }

            v57 = v56;
            if (v17 != 1)
            {
              v74 = 0;
LABEL_69:
              v80 = [(AgentController *)self policyDB];
              v81 = [v26 getAgentName];
              v82 = [v80 objectForKey:v81];

              if (!v82)
              {
                v82 = +[NSMutableArray array];
              }

              v83 = [NSNumber numberWithUnsignedInteger:v43];
              [v82 addObject:v83];

              v84 = [NSNumber numberWithUnsignedInteger:v57];
              [v82 addObject:v84];

              if (v74)
              {
                v85 = [NSNumber numberWithUnsignedInteger:v74];
                [v82 addObject:v85];
              }

              v86 = [(AgentController *)self policyDB];
              v87 = [v26 getAgentName];
              [v86 setObject:v82 forKey:v87];

              v55 = 1;
LABEL_74:
              v13 = v97;
              v23 = v99;
              goto LABEL_85;
            }

            v58 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
            v93 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
            v59 = [NEPolicyResult removeNetworkAgentDomain:v58 agentType:?];
            v60 = [NEPolicy alloc];
            v61 = v60;
            if (v99)
            {
              v101 = v99;
              v62 = [NSArray arrayWithObjects:&v101 count:1];
              v63 = [v61 initWithOrder:v96 + v98 result:v59 conditions:v62];

              v50 = v62;
            }

            else
            {
              v63 = [v60 initWithOrder:v96 + v98 result:v59 conditions:0];
            }

            if (v63)
            {
              v79 = [v95 addPolicy:v63];
              if (v79)
              {
                v74 = v79;

                v50 = v63;
                goto LABEL_69;
              }

              v88 = sub_1000035EC();
              v89 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                goto LABEL_78;
              }
            }

            else
            {
              v88 = sub_1000035EC();
              v89 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
LABEL_78:
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v116 = 0u;
                v117 = 0u;
                v114 = 0u;
                v115 = 0u;
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                os_log_type_enabled(v88, v89);
                v88 = v88;
                v90 = [v26 getAgentName];
                v103 = 138412290;
                v104 = v90;
                v91 = _os_log_send_and_compose_impl();

                __SC_log_send2();
                v13 = v97;
                if (v91 != &v106)
                {
                  free(v91);
                }

                v23 = v99;
                goto LABEL_82;
              }
            }

            v13 = v97;
            v23 = v99;
LABEL_82:

LABEL_83:
LABEL_84:
            v55 = 0;
            goto LABEL_85;
          }

          v51 = sub_1000035EC();
          v52 = _SC_syslog_os_log_mapping();
          v26 = v15;
          v23 = v99;
          if (__SC_log_enabled())
          {
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            os_log_type_enabled(v51, v52);
            v53 = v51;
            [v15 getAgentName];
            v104 = v103 = 138412290;
            v54 = _os_log_send_and_compose_impl();

            __SC_log_send2();
            if (v54 != &v106)
            {
              free(v54);
            }

            v23 = v99;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v31 = [v28 initWithOrder:v96 + v98 result:v27 conditions:0];
        if (v31)
        {
          goto LABEL_22;
        }
      }

      v37 = sub_1000035EC();
      v38 = _SC_syslog_os_log_mapping();
      v26 = v15;
      v23 = v99;
      if (__SC_log_enabled())
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        os_log_type_enabled(v37, v38);
        v39 = v37;
        [v15 getAgentName];
        v104 = v103 = 138412290;
        v40 = _os_log_send_and_compose_impl();

        __SC_log_send2();
        if (v40 != &v106)
        {
          free(v40);
        }

        v23 = v99;
      }

LABEL_42:
      v55 = 0;
      v13 = v97;
      goto LABEL_85;
    }

    v96 = v18 + 1000;
    v20 = +[NEPolicyCondition allInterfaces];
LABEL_19:
    v21 = 1250;
    goto LABEL_20;
  }

  if (!a6)
  {
    v20 = 0;
    v96 = v18 + 1000;
    goto LABEL_19;
  }

  if (a6 == 6)
  {
    v96 = v18 + 500;
    v20 = [NEPolicyCondition domain:v100];
    v21 = 750;
    goto LABEL_20;
  }

LABEL_14:
  v23 = sub_1000035EC();
  v24 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    os_log_type_enabled(v23, v24);
    LOWORD(v103) = 0;
    v25 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    v26 = v15;
    if (v25 != &v106)
    {
      free(v25);
    }

    goto LABEL_84;
  }

  v55 = 0;
  v26 = v15;
LABEL_85:

  return v55;
}

- (BOOL)spawnFloatingAgent:(Class)a3 entity:(id)a4 agentSubType:(unint64_t)a5 addPolicyOfType:(int64_t)a6 publishData:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = +[NSMutableDictionary dictionary];
  [v14 setValue:v12 forKey:@"EntityName"];
  v15 = [NSNumber numberWithUnsignedInteger:a5];
  [v14 setValue:v15 forKey:@"AgentSubType"];

  v16 = [[a3 alloc] initWithParameters:v14];
  if (![(AgentController *)self registerAgent:v16])
  {
    goto LABEL_14;
  }

  if (v13)
  {
    [v16 updateAgentData:v13];
    [(AgentController *)self publishToAgent:v16];
  }

  if ((a6 & 0x8000000000000000) == 0)
  {
    v17 = [v16 agentUUID];
    v18 = [(AgentController *)self addPolicyToFloatingAgent:v16 domain:v12 agentUUIDToUse:v17 policyType:a6 useControlPolicySession:a5 == 10];

    if ((v18 & 1) == 0)
    {
      [(AgentController *)self unregisterAgent:v16];
LABEL_14:
      v23 = 0;
      goto LABEL_15;
    }
  }

  v19 = sub_1000035EC();
  v20 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v29, 0, sizeof(v29));
    os_log_type_enabled(v19, v20);
    v27 = 138412290;
    v28 = v12;
    LODWORD(v26) = 12;
    v25 = &v27;
    v21 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v21 != v29)
    {
      free(v21);
    }
  }

  if ([v16 getAgentType] == 1)
  {
    [(AgentController *)self floatingProxyAgentList];
  }

  else
  {
    [(AgentController *)self floatingDNSAgentList];
  }
  v22 = ;
  [v22 setObject:v16 forKey:{v12, v25, v26}];

  v23 = 1;
LABEL_15:

  return v23;
}

- (BOOL)spawnMappedFloatingAgent:(id)a3 entity:(id)a4 agentSubType:(unint64_t)a5 addPolicyOfType:(int64_t)a6 updateData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = +[NSMutableDictionary dictionary];
  [v15 setValue:v13 forKey:@"EntityName"];
  v16 = [NSNumber numberWithUnsignedInteger:a5];
  [v15 setValue:v16 forKey:@"AgentSubType"];

  v17 = [objc_alloc(objc_opt_class()) initWithParameters:v15];
  v18 = v17;
  if (v14)
  {
    [v17 updateAgentData:v14];
  }

  v19 = [v12 agentUUID];
  v20 = [(AgentController *)self addPolicyToFloatingAgent:v18 domain:v13 agentUUIDToUse:v19 policyType:a6 useControlPolicySession:a5 == 10];

  if (v20)
  {
    if ([v12 getAgentType] == 1)
    {
      [(AgentController *)self floatingProxyAgentList];
    }

    else
    {
      [(AgentController *)self floatingDNSAgentList];
    }
    v21 = ;
    [v21 setObject:v18 forKey:v13];

    [v18 setAgentMapping:v12];
    v22 = sub_1000035EC();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = v14;
      memset(v30, 0, sizeof(v30));
      os_log_type_enabled(v22, v23);
      v24 = v22;
      v25 = [v18 getAgentName];
      v29 = [v12 getAgentName];
      v26 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v26 != v30)
      {
        free(v26);
      }

      v14 = v28;
    }
  }

  return v20;
}

- (BOOL)publishToAgent:(id)a3
{
  v4 = a3;
  v5 = [(AgentController *)self dataLengthSanityCheck:v4];
  if (v5)
  {
    v6 = [v4 getAgentData];
    v7 = [v6 copy];

    [v4 updateAgentData:v5];
    v8 = sub_1000035EC();
    v9 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      os_log_type_enabled(v8, v9);
      v10 = v8;
      v11 = [v4 getAgentName];
      *v29 = 138412546;
      *&v29[4] = v11;
      v30 = 2048;
      v31 = [v7 length];
      LODWORD(v27) = 22;
      v25 = v29;
      v12 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v12 != &v32)
      {
        free(v12);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = [v4 valueForKey:{@"registrationObject", v25, v27}];
  v14 = sub_1000035EC();
  v15 = _SC_syslog_os_log_mapping();
  v16 = __SC_log_enabled();
  if (!v13)
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(v14, v15);
    v17 = v14;
    v18 = [v4 getAgentName];
    v19 = [v4 getAgentData];
    v20 = [v19 length];
    *v29 = 138412546;
    *&v29[4] = v18;
    v30 = 2048;
    v31 = v20;
    LODWORD(v28) = 22;
    v26 = v29;
    v21 = _os_log_send_and_compose_impl();

    __SC_log_send2();
    if (v21 != &v32)
    {
      free(v21);
    }
  }

  if ([v13 updateNetworkAgent:v4])
  {
    v22 = 1;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = sub_1000035EC();
  v15 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_17:
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(v14, v15);
    *v29 = 0;
    LODWORD(v28) = 2;
    v26 = v29;
    v23 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v23 != &v32)
    {
      free(v23);
    }
  }

LABEL_19:

  v22 = 0;
  if (v7)
  {
LABEL_20:
    [v4 updateAgentData:{v7, v26, v28, *v29}];
  }

LABEL_21:

  return v22;
}

- (BOOL)destroyFloatingAgent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getAssociatedEntity];
    v7 = [(AgentController *)self policyDB];
    v8 = [v5 getAgentName];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v57 = self;
      v59 = v6;
      v10 = [v5 preferredPolicySession];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v58 = v9;
      obj = v9;
      v11 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v87;
        v61 = *v87;
        do
        {
          v14 = 0;
          v62 = v12;
          do
          {
            if (*v87 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [*(*(&v86 + 1) + 8 * v14) unsignedIntegerValue];
            if (([v10 removePolicyWithID:v15] & 1) == 0)
            {
              v16 = sub_1000035EC();
              v17 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0uLL;
                v70 = 0uLL;
                os_log_type_enabled(v16, v17);
                v18 = v16;
                v19 = v10;
                v20 = [v10 policyWithID:v15];
                v21 = v5;
                v22 = [v5 getAgentName];
                v65 = 138412546;
                v66 = v20;
                v67 = 2112;
                v68 = v22;
                LODWORD(v55) = 22;
                v53 = &v65;
                v23 = _os_log_send_and_compose_impl();

                __SC_log_send2();
                if (v23 != &v69)
                {
                  free(v23);
                }

                v5 = v21;
                v10 = v19;
                v13 = v61;
                v12 = v62;
              }
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
        }

        while (v12);
      }

      self = v57;
      v24 = [(AgentController *)v57 policyDB];
      v25 = [v5 getAgentName];
      [v24 removeObjectForKey:v25];

      v9 = v58;
      v6 = v59;
    }

    v26 = sub_1000035EC();
    v27 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0uLL;
      v70 = 0uLL;
      os_log_type_enabled(v26, v27);
      v65 = 138412290;
      v66 = v6;
      LODWORD(v55) = 12;
      v53 = &v65;
      v28 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v28 != &v69)
      {
        free(v28);
      }
    }

    if ([v5 getAgentType] == 1)
    {
      v29 = [(AgentController *)self floatingProxyAgentList];
      [v29 removeObjectForKey:v6];

      v30 = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      [v30 removeObjectForKey:v6];

      v31 = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      v32 = [v31 count];

      if (!v32)
      {
        sub_10004EA44(0);
      }
    }

    else
    {
      v33 = [(AgentController *)self floatingDNSAgentList];
      v34 = [v5 getAssociatedEntity];
      [v33 removeObjectForKey:v34];
    }

    v35 = [v5 getRegistrationObject];

    if (v35)
    {
      [(AgentController *)self unregisterAgent:v5];
    }

    v36 = [(AgentController *)self controlPolicySession];

    if (v36)
    {
      v37 = [(AgentController *)self floatingProxyAgentList];
      v38 = [(AgentController *)self getAgentList:v37 agentType:1 agentSubType:10];

      v39 = [(AgentController *)self floatingDNSAgentList];
      v40 = self;
      v41 = [(AgentController *)self getAgentList:v39 agentType:2 agentSubType:10];

      if (![v38 count] && !objc_msgSend(v41, "count"))
      {
        v42 = [(AgentController *)v40 controlPolicySession];
        v43 = [v42 removeAllPolicies];

        if ((v43 & 1) == 0)
        {
          v60 = v6;
          v44 = sub_1000035EC();
          v45 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0uLL;
            v70 = 0uLL;
            os_log_type_enabled(v44, v45);
            v46 = v44;
            obja = v5;
            v47 = [v5 getAgentName];
            v65 = 138412290;
            v66 = v47;
            LODWORD(v56) = 12;
            v54 = &v65;
            v48 = _os_log_send_and_compose_impl();

            __SC_log_send2();
            if (v48 != &v69)
            {
              free(v48);
            }

            v5 = obja;
          }

          v6 = v60;
        }

        [(AgentController *)v40 setControlPolicySession:0, v54, v56];
        v49 = sub_1000035EC();
        v50 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0uLL;
          v70 = 0uLL;
          os_log_type_enabled(v49, v50);
          LOWORD(v65) = 0;
          v51 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v51 != &v69)
          {
            free(v51);
          }
        }
      }
    }
  }

  return v5 != 0;
}

- (BOOL)registerAgent:(id)a3
{
  v3 = a3;
  v4 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v5 = [v4 registerNetworkAgent:v3];
  if (v5)
  {
    [v3 addAgentRegistrationObject:v4];
  }

  else
  {
    v6 = sub_1000035EC();
    v7 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v10, 0, sizeof(v10));
      os_log_type_enabled(v6, v7);
      v8 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v8 != v10)
      {
        free(v8);
      }
    }
  }

  return v5;
}

- (BOOL)unregisterAgent:(id)a3
{
  v3 = [a3 valueForKey:@"registrationObject"];
  v4 = v3;
  if (!v3)
  {
    v6 = sub_1000035EC();
    v7 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      os_log_type_enabled(v6, v7);
      v8 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v8 != v10)
      {
        free(v8);
      }
    }

LABEL_9:

    v5 = 0;
    goto LABEL_10;
  }

  if (([v3 unregisterNetworkAgent] & 1) == 0)
  {
    v6 = sub_1000035EC();
    v7 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (OS_dispatch_queue)controllerQueue
{

  return objc_getProperty(self, a2, 8, 1);
}

- (void)setControllerQueue:(id)a3
{

  objc_setProperty_atomic(self, a2, a3, 8);
}

- (void)setFloatingProxyAgentList:(id)a3
{
  p_floatingProxyAgentList = &self->_floatingProxyAgentList;

  objc_storeStrong(p_floatingProxyAgentList, a3);
}

- (void)setFloatingProxyAgentList_TCPConverter:(id)a3
{
  p_floatingProxyAgentList_TCPConverter = &self->_floatingProxyAgentList_TCPConverter;

  objc_storeStrong(p_floatingProxyAgentList_TCPConverter, a3);
}

- (void)setFloatingDNSAgentList:(id)a3
{
  p_floatingDNSAgentList = &self->_floatingDNSAgentList;

  objc_storeStrong(p_floatingDNSAgentList, a3);
}

- (void)setPolicyDB:(id)a3
{
  p_policyDB = &self->_policyDB;

  objc_storeStrong(p_policyDB, a3);
}

- (void)setPolicySession:(id)a3
{
  p_policySession = &self->_policySession;

  objc_storeStrong(p_policySession, a3);
}

- (void)setControlPolicySession:(id)a3
{
  p_controlPolicySession = &self->_controlPolicySession;

  objc_storeStrong(p_controlPolicySession, a3);
}

@end