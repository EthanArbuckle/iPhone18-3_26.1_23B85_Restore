@interface QoSMarkingController
+ (id)sharedController;
- (BOOL)qosMarkingIsAppleAudioVideoCallsEnabled:(id)enabled;
- (BOOL)qosMarkingIsEnabled:(id)enabled;
- (BOOL)qosMarkingPolicyEnabled:(id)enabled forKey:(id)key;
- (QoSMarkingController)init;
- (id)createPolicySession;
- (id)qosMarkingAllowListAppIdentifiers:(id)identifiers;
- (void)addAllowListAppIdentifierPolicy:(id)policy forApp:(id)app order:(unsigned int)order;
- (void)addAllowListPathPolicy:(id)policy forPath:(id)path order:(unsigned int)order;
- (void)setEnabled:(id)enabled;
- (void)setEnabledAV:(id)v;
- (void)setInterfaces:(id)interfaces;
- (void)setPolicy:(id)policy forInterface:(id)interface;
- (void)setPolicySessions:(id)sessions;
- (void)setRequested:(id)requested;
- (void)updatePolicy:(id)policy forInterface:(id)interface;
@end

@implementation QoSMarkingController

- (id)createPolicySession
{
  v2 = objc_alloc_init(NEPolicySession);

  return v2;
}

- (BOOL)qosMarkingPolicyEnabled:(id)enabled forKey:(id)key
{
  keyCopy = key;
  v6 = [enabled objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      v8 = sub_1000636BC();
      v9 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        memset(v12, 0, sizeof(v12));
        os_log_type_enabled(v8, v9);
        v10 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v10 != v12)
        {
          free(v10);
        }
      }

      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)qosMarkingIsEnabled:(id)enabled
{
  v3 = kSCPropNetQoSMarkingEnabled;

  return [(QoSMarkingController *)self qosMarkingPolicyEnabled:enabled forKey:v3];
}

- (BOOL)qosMarkingIsAppleAudioVideoCallsEnabled:(id)enabled
{
  v3 = kSCPropNetQoSMarkingAppleAudioVideoCalls;

  return [(QoSMarkingController *)self qosMarkingPolicyEnabled:enabled forKey:v3];
}

- (id)qosMarkingAllowListAppIdentifiers:(id)identifiers
{
  v3 = [identifiers objectForKeyedSubscript:kSCPropNetQoSMarkingAllowListAppIdentifiers];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = sub_1000636BC();
    v14 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = 0u;
      v37 = 0u;
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
      os_log_type_enabled(v4, v14);
      v15 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v15 != &v22)
      {
        free(v15);
      }
    }

LABEL_21:

    v10 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if (v9)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
            {
              v11 = sub_1000636BC();
              v12 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v36 = 0u;
                v37 = 0u;
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
                os_log_type_enabled(v11, v12);
                v13 = _os_log_send_and_compose_impl();
                __SC_log_send2();
                if (v13 != &v22)
                {
                  free(v13);
                }
              }

              goto LABEL_21;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = v4;
  }

  return v10;
}

- (void)addAllowListPathPolicy:(id)policy forPath:(id)path order:(unsigned int)order
{
  policyCopy = policy;
  pathCopy = path;
  v45 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:policyCopy];
  if (v45)
  {
    v9 = [NEPolicyRouteRule routeRuleWithAction:3 forInterfaceName:policyCopy];
    v57 = v9;
    v10 = [NSArray arrayWithObjects:&v57 count:1];
    v44 = [NEPolicyResult routeRules:v10];

    v11 = +[NEPolicyCondition allInterfaces];
    v12 = [NEProcessInfo copyUUIDsForExecutable:pathCopy];
    v13 = v12;
    v42 = v11;
    if (v12 && [v12 count])
    {
      v38 = v9;
      v40 = pathCopy;
      v41 = policyCopy;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v53 objects:v52 count:16];
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = v14;
      v43 = *v54;
      while (1)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = [NEPolicyCondition effectiveApplication:v17, v36, v37];
          v19 = [NEPolicy alloc];
          v51[0] = v18;
          v51[1] = v11;
          v20 = [NSArray arrayWithObjects:v51 count:2];
          v21 = [v19 initWithOrder:order result:v44 conditions:v20];

          v22 = [v45 addPolicy:v21];
          v23 = sub_1000636BC();
          if (v22)
          {
            v24 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_17;
            }

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0uLL;
            v59 = 0uLL;
            os_log_type_enabled(v23, v24);
            v25 = v23;
            uUIDString = [v17 UUIDString];
            v47 = 138413058;
            v48 = v41;
            v49 = 1024;
            *v50 = order;
            *&v50[4] = 2112;
            *&v50[6] = v40;
            *&v50[14] = 2112;
            *&v50[16] = uUIDString;
            LODWORD(v37) = 38;
            v36 = &v47;
            v27 = _os_log_send_and_compose_impl();
          }

          else
          {
            v28 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_17;
            }

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0uLL;
            v59 = 0uLL;
            os_log_type_enabled(v23, v28);
            v29 = v23;
            uUIDString2 = [v17 UUIDString];
            v47 = 138412802;
            v48 = v41;
            v49 = 2112;
            *v50 = v40;
            *&v50[8] = 2112;
            *&v50[10] = uUIDString2;
            LODWORD(v37) = 32;
            v36 = &v47;
            v27 = _os_log_send_and_compose_impl();
          }

          __SC_log_send2();
          if (v27 != &v58)
          {
            free(v27);
          }

          v11 = v42;
LABEL_17:
        }

        v15 = [obj countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (!v15)
        {
LABEL_19:

          pathCopy = v40;
          policyCopy = v41;
          goto LABEL_27;
        }
      }
    }

    v31 = sub_1000636BC();
    v32 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      os_log_type_enabled(v31, v32);
      v47 = 138412546;
      v48 = policyCopy;
      v49 = 2112;
      *v50 = pathCopy;
      v33 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v33 != &v58)
      {
        free(v33);
      }
    }
  }

  else
  {
    v11 = sub_1000636BC();
    v34 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      os_log_type_enabled(v11, v34);
      v47 = 138412290;
      v48 = policyCopy;
      v35 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v35 != &v58)
      {
        free(v35);
      }
    }
  }

LABEL_27:
}

- (void)addAllowListAppIdentifierPolicy:(id)policy forApp:(id)app order:(unsigned int)order
{
  policyCopy = policy;
  appCopy = app;
  if ([appCopy hasPrefix:@"/"])
  {
    if (qword_100081D58 != -1)
    {
      sub_1000683F8();
    }

    if (byte_100081D50)
    {
      [(QoSMarkingController *)self addAllowListPathPolicy:policyCopy forPath:appCopy order:order];
    }

    goto LABEL_32;
  }

  v44 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:policyCopy];
  if (v44)
  {
    v8 = [NEPolicyRouteRule routeRuleWithAction:3 forInterfaceName:policyCopy];
    v56 = v8;
    v9 = [NSArray arrayWithObjects:&v56 count:1];
    v43 = [NEPolicyResult routeRules:v9];

    v42 = +[NEPolicyCondition allInterfaces];
    v10 = [NEProcessInfo copyUUIDsForBundleID:appCopy uid:0];
    v11 = v10;
    if (v10 && [v10 count])
    {
      v37 = v8;
      v39 = policyCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = v12;
      v41 = *v53;
      while (1)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v16 = [NEPolicyCondition effectiveApplication:v15, v35, v36];
          v17 = [NEPolicy alloc];
          v50[0] = v16;
          v50[1] = v42;
          v18 = [NSArray arrayWithObjects:v50 count:2];
          v19 = [v17 initWithOrder:order result:v43 conditions:v18];

          v20 = [v44 addPolicy:v19];
          v21 = sub_1000636BC();
          if (v20)
          {
            v22 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_21;
            }

            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0uLL;
            v58 = 0uLL;
            os_log_type_enabled(v21, v22);
            v23 = v21;
            uUIDString = [v15 UUIDString];
            v46 = 138413058;
            v47 = v39;
            v48 = 1024;
            *v49 = order;
            *&v49[4] = 2112;
            *&v49[6] = appCopy;
            *&v49[14] = 2112;
            *&v49[16] = uUIDString;
            LODWORD(v36) = 38;
            v35 = &v46;
            v25 = _os_log_send_and_compose_impl();
          }

          else
          {
            v26 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_21;
            }

            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0uLL;
            v58 = 0uLL;
            os_log_type_enabled(v21, v26);
            v27 = v21;
            uUIDString2 = [v15 UUIDString];
            v46 = 138412802;
            v47 = v39;
            v48 = 2112;
            *v49 = appCopy;
            *&v49[8] = 2112;
            *&v49[10] = uUIDString2;
            LODWORD(v36) = 32;
            v35 = &v46;
            v25 = _os_log_send_and_compose_impl();
          }

          __SC_log_send2();
          if (v25 != &v57)
          {
            free(v25);
          }

LABEL_21:
        }

        v13 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
        if (!v13)
        {
LABEL_23:

          policyCopy = v39;
          goto LABEL_32;
        }
      }
    }

    v29 = sub_1000636BC();
    v30 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      os_log_type_enabled(v29, v30);
      v46 = 138412546;
      v47 = policyCopy;
      v48 = 2112;
      *v49 = appCopy;
      v31 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v31 != &v57)
      {
        free(v31);
      }
    }
  }

  else
  {
    v32 = sub_1000636BC();
    v33 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      os_log_type_enabled(v32, v33);
      v46 = 138412290;
      v47 = policyCopy;
      v34 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v34 != &v57)
      {
        free(v34);
      }
    }
  }

LABEL_32:
}

- (QoSMarkingController)init
{
  v14.receiver = self;
  v14.super_class = QoSMarkingController;
  v2 = [(QoSMarkingController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    interfaces = v2->_interfaces;
    v2->_interfaces = 0;

    v5 = +[NSMutableDictionary dictionary];
    policySessions = v3->_policySessions;
    v3->_policySessions = v5;

    v7 = +[NSMutableDictionary dictionary];
    requested = v3->_requested;
    v3->_requested = v7;

    v9 = +[NSMutableDictionary dictionary];
    enabled = v3->_enabled;
    v3->_enabled = v9;

    v11 = +[NSMutableDictionary dictionary];
    enabledAV = v3->_enabledAV;
    v3->_enabledAV = v11;
  }

  return v3;
}

- (void)updatePolicy:(id)policy forInterface:(id)interface
{
  policyCopy = policy;
  interfaceCopy = interface;
  v8 = [(NSMutableDictionary *)self->_enabled objectForKeyedSubscript:interfaceCopy];
  if (v8)
  {
    v9 = [(QoSMarkingController *)self qosMarkingIsEnabled:v8];
    v10 = v9 ^ 1;
    v11 = [(QoSMarkingController *)self qosMarkingIsAppleAudioVideoCallsEnabled:v8];
    if (policyCopy)
    {
LABEL_3:
      LODWORD(v12) = [(QoSMarkingController *)self qosMarkingIsEnabled:policyCopy];
      v13 = v12 ^ 1;
      v94 = [(QoSMarkingController *)self qosMarkingIsAppleAudioVideoCallsEnabled:policyCopy];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    if (policyCopy)
    {
      goto LABEL_3;
    }
  }

  v94 = 0;
  LODWORD(v12) = 0;
  v13 = 0;
LABEL_6:
  if (policyCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  if (v14 == 1 && v9 == v12 && v10 == v13 && ((v9 & v12) != 1 || ([v8 isEqual:policyCopy] & 1) != 0))
  {
    v15 = 0;
    if (!v12)
    {
      goto LABEL_115;
    }

LABEL_47:
    v39 = [(QoSMarkingController *)self qosMarkingAllowListAppIdentifiers:v8, v81, v83];
    v40 = [(QoSMarkingController *)self qosMarkingAllowListAppIdentifiers:policyCopy];
    if ([v39 isEqual:v40] && v11 == v94)
    {
      goto LABEL_114;
    }

    v93 = v40;
    if (![(NSMutableDictionary *)self->_enabled count])
    {
      sub_100067124("net.qos.policy.restricted", 1);
    }

    [(NSMutableDictionary *)self->_enabled setObject:policyCopy forKeyedSubscript:interfaceCopy];
    v41 = sub_1000636BC();
    v42 = _SC_syslog_os_log_mapping();
    v91 = v15;
    v88 = v39;
    v97 = v12;
    if (__SC_log_enabled())
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      os_log_type_enabled(v41, v42);
      v43 = "add";
      if (v9)
      {
        v43 = "update";
      }

      LODWORD(v133[0]) = 138412546;
      *(v133 + 4) = interfaceCopy;
      WORD6(v133[0]) = 2080;
      *(v133 + 14) = v43;
      LODWORD(v83) = 22;
      v81 = v133;
      v44 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v44 != &v117)
      {
        free(v44);
      }

      v39 = v88;
    }

    v45 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:interfaceCopy];
    v40 = v93;
    if (!v45)
    {
      if (!(([v93 count] != 0) | v94 & 1))
      {
        v45 = 0;
        v58 = 1;
        goto LABEL_85;
      }

      createPolicySession = [(QoSMarkingController *)self createPolicySession];
      if (!createPolicySession)
      {
        v49 = sub_1000636BC();
        v59 = _SC_syslog_os_log_mapping();
        v85 = policyCopy;
        if (__SC_log_enabled())
        {
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          os_log_type_enabled(v49, v59);
          LODWORD(v133[0]) = 138412290;
          *(v133 + 4) = interfaceCopy;
          LODWORD(v83) = 12;
          v81 = v133;
          v60 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v60 != &v117)
          {
            free(v60);
          }

          v56 = 1;
          v45 = 0;
          v39 = v88;
        }

        else
        {
          v45 = 0;
          v56 = 1;
        }

LABEL_84:
        v40 = v93;

        v58 = v56;
        policyCopy = v85;
LABEL_85:
        enabledAV = self->_enabledAV;
        if (v94)
        {
          if (![(NSMutableDictionary *)enabledAV count])
          {
            sub_100067124("net.qos.policy.restrict_avapps", 0);
          }

          [(NSMutableDictionary *)self->_enabledAV setObject:policyCopy forKeyedSubscript:interfaceCopy, v81, v83];
          if (v58)
          {
            goto LABEL_113;
          }

          v95 = v58;
          v87 = v45;
          v12 = v8;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v62 = qword_100081D20;
          v63 = [v62 countByEnumeratingWithState:&v104 objects:v103 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v105;
            v66 = 1000;
            do
            {
              v67 = 0;
              v68 = v66;
              do
              {
                if (*v105 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                v66 = (v68 + 1);
                [(QoSMarkingController *)self addAllowListAppIdentifierPolicy:interfaceCopy forApp:*(*(&v104 + 1) + 8 * v67) order:v68];
                v67 = v67 + 1;
                v68 = v66;
              }

              while (v64 != v67);
              v64 = [v62 countByEnumeratingWithState:&v104 objects:v103 count:16];
            }

            while (v64);
          }

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v69 = qword_100081D28;
          v70 = [v69 countByEnumeratingWithState:&v99 objects:v98 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v100;
            v73 = 1500;
            do
            {
              v74 = 0;
              v75 = v73;
              do
              {
                if (*v100 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v73 = (v75 + 1);
                [(QoSMarkingController *)self addAllowListPathPolicy:interfaceCopy forPath:*(*(&v99 + 1) + 8 * v74) order:v75];
                v74 = v74 + 1;
                v75 = v73;
              }

              while (v71 != v74);
              v71 = [v69 countByEnumeratingWithState:&v99 objects:v98 count:16];
            }

            while (v71);
          }

          v8 = v12;
          v58 = v95;
          LOBYTE(v12) = v97;
          v15 = v91;
          v45 = v87;
          v39 = v88;
          v40 = v93;
        }

        else
        {
          [(NSMutableDictionary *)enabledAV removeObjectForKey:interfaceCopy];
          if (![(NSMutableDictionary *)self->_enabledAV count])
          {
            sub_100067124("net.qos.policy.restrict_avapps", 1);
          }
        }

        if ((v58 & 1) == 0 && ([v45 apply] & 1) == 0)
        {
          v76 = sub_1000636BC();
          v77 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            os_log_type_enabled(v76, v77);
            LODWORD(v133[0]) = 138412290;
            *(v133 + 4) = interfaceCopy;
            LODWORD(v83) = 12;
            v81 = v133;
            v78 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v78 != &v117)
            {
              free(v78);
            }

            v15 = v91;
            v39 = v88;
          }

          v40 = v93;
        }

LABEL_113:

LABEL_114:
        goto LABEL_115;
      }

      v45 = createPolicySession;
      [(NSMutableDictionary *)self->_policySessions setObject:createPolicySession forKeyedSubscript:interfaceCopy];
    }

    if (([v45 removeAllPolicies] & 1) == 0)
    {
      v46 = sub_1000636BC();
      v47 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        os_log_type_enabled(v46, v47);
        LODWORD(v133[0]) = 138412290;
        *(v133 + 4) = interfaceCopy;
        LODWORD(v84) = 12;
        v82 = v133;
        v48 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v48 != &v117)
        {
          free(v48);
        }

        v39 = v88;
      }

      v40 = v93;
    }

    if (![v40 count])
    {
      v58 = 0;
      goto LABEL_85;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v49 = v40;
    v50 = [v49 countByEnumeratingWithState:&v109 objects:v108 count:16];
    v85 = policyCopy;
    if (v50)
    {
      v51 = v50;
      v86 = v45;
      v12 = v8;
      v52 = *v110;
      v53 = 2000;
      do
      {
        v54 = 0;
        v55 = v53;
        do
        {
          if (*v110 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v53 = (v55 + 1);
          [(QoSMarkingController *)self addAllowListAppIdentifierPolicy:interfaceCopy forApp:*(*(&v109 + 1) + 8 * v54) order:v55];
          v54 = v54 + 1;
          v55 = v53;
        }

        while (v51 != v54);
        v51 = [v49 countByEnumeratingWithState:&v109 objects:v108 count:16];
      }

      while (v51);
      v56 = 0;
      v8 = v12;
      LOBYTE(v12) = v97;
      v15 = v91;
      v45 = v86;
      v39 = v88;
    }

    else
    {
      v56 = 0;
    }

    goto LABEL_84;
  }

  v96 = v12;
  v92 = v11;
  if (v12)
  {

    v8 = 0;
  }

  else
  {
    if (!policyCopy && v8)
    {
      v16 = sub_1000636BC();
      v17 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = v8;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        os_log_type_enabled(v16, v17);
        LODWORD(v133[0]) = 138412290;
        *(v133 + 4) = interfaceCopy;
        LODWORD(v83) = 12;
        v81 = v133;
        v18 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v18 != &v117)
        {
          free(v18);
        }

        v8 = v12;
        LODWORD(v12) = 0;
      }
    }

    [(NSMutableDictionary *)self->_policySessions removeObjectForKey:interfaceCopy, v81, v83];
    [(NSMutableDictionary *)self->_enabled removeObjectForKey:interfaceCopy];
    [(NSMutableDictionary *)self->_enabledAV removeObjectForKey:interfaceCopy];
  }

  v19 = socket(2, 2, 0);
  if (v19 == -1)
  {
    v33 = sub_1000636BC();
    v34 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v90 = v8;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      os_log_type_enabled(v33, v34);
      v35 = v33;
      v36 = __error();
      v37 = strerror(*v36);
      LODWORD(v133[0]) = 136315138;
      *(v133 + 4) = v37;
      LODWORD(v83) = 12;
      v81 = v133;
      v38 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v38 != &v117)
      {
        free(v38);
      }

      v8 = v90;
      LODWORD(v12) = v96;
      v11 = v92;
    }

    v15 = 1;
    if (v12)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = v19;
    v89 = v8;
    v21 = sub_1000636BC();
    v22 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      os_log_type_enabled(v21, v22);
      v23 = "disable";
      if (v12 | (policyCopy == 0))
      {
        v23 = "enable";
      }

      v24 = " (default)";
      LODWORD(v133[0]) = 138412802;
      *(v133 + 4) = interfaceCopy;
      *(v133 + 14) = v23;
      WORD6(v133[0]) = 2080;
      if (policyCopy)
      {
        v24 = "";
      }

      WORD3(v133[1]) = 2080;
      *(&v133[1] + 1) = v24;
      LODWORD(v83) = 32;
      v25 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v25 != &v117)
      {
        free(v25);
      }

      v11 = v92;
    }

    uTF8String = [(__CFString *)interfaceCopy UTF8String];
    memset(v133, 0, sizeof(v133));
    __strlcpy_chk();
    LODWORD(v133[1]) = v12 | (policyCopy == 0);
    if (ioctl(v20, 0xC02069B5uLL, v133) == -1)
    {
      v27 = sub_1000636BC();
      v28 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        os_log_type_enabled(v27, v28);
        v29 = v27;
        v30 = __error();
        v31 = strerror(*v30);
        v113 = 136315394;
        v114 = uTF8String;
        v115 = 2080;
        v116 = v31;
        LODWORD(v83) = 22;
        v81 = &v113;
        v32 = _os_log_send_and_compose_impl();

        __SC_log_send2();
        if (v32 != &v117)
        {
          free(v32);
        }
      }

      v11 = v92;
    }

    close(v20);
    v15 = 1;
    v8 = v89;
    LOBYTE(v12) = v96;
    if (v96)
    {
      goto LABEL_47;
    }
  }

LABEL_115:
  if ([(NSMutableDictionary *)self->_enabled count:v81])
  {
    if (!v15)
    {
      goto LABEL_125;
    }
  }

  else
  {
    sub_100067124("net.qos.policy.restrict_avapps", 0);
    sub_100067124("net.qos.policy.restricted", 0);
    if (!v15)
    {
      goto LABEL_125;
    }
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, interfaceCopy, kSCEntNetQoSMarkingPolicy);
  v80 = v12 ^ 1;
  if (!policyCopy)
  {
    v80 = 1;
  }

  if (v80)
  {
    SCDynamicStoreRemoveValue(0, NetworkInterfaceEntity);
  }

  else
  {
    SCDynamicStoreSetValue(0, NetworkInterfaceEntity, policyCopy);
  }

  CFRelease(NetworkInterfaceEntity);
LABEL_125:
}

+ (id)sharedController
{
  if (qword_100081D40 != -1)
  {
    sub_100068460();
  }

  v2 = qword_100081D38;

  return v2;
}

- (void)setInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v8 = sub_1000636BC();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      os_log_type_enabled(&v8->super, v23);
      v8 = v8;
      v24 = __error();
      v25 = strerror(*v24);
      LODWORD(v55) = 136315138;
      *(&v55 + 4) = v25;
      v26 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v26 != &v39)
      {
        free(v26);
      }
    }
  }

  else
  {
    v7 = v6;
    selfCopy = self;
    v8 = self->_interfaces;
    objc_storeStrong(&self->_interfaces, interfaces);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = interfacesCopy;
    obj = interfacesCopy;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          uTF8String = [v13 UTF8String];
          v55 = 0u;
          v56 = 0u;
          __strlcpy_chk();
          if (ioctl(v7, 0xC020699FuLL, &v55) == -1)
          {
            v16 = sub_1000636BC();
            v17 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v18 = v8;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v39 = 0uLL;
              v40 = 0uLL;
              os_log_type_enabled(v16, v17);
              v19 = v16;
              v20 = __error();
              v21 = strerror(*v20);
              v35 = 136315394;
              v36 = uTF8String;
              v37 = 2080;
              v38 = v21;
              v22 = _os_log_send_and_compose_impl();

              __SC_log_send2();
              if (v22 != &v39)
              {
                free(v22);
              }

              v8 = v18;
            }
          }

          else if (*(&v56 + 4) == 0x300000002 && ![(NSArray *)v8 containsObject:v13])
          {
            v15 = [(NSMutableDictionary *)selfCopy->_requested objectForKeyedSubscript:v13];
            [(NSMutableDictionary *)selfCopy->_requested removeObjectForKey:v13];
            [(QoSMarkingController *)selfCopy setPolicy:v15 forInterface:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v10);
    }

    close(v7);
    interfacesCopy = v27;
  }
}

- (void)setPolicy:(id)policy forInterface:(id)interface
{
  policyCopy = policy;
  interfaceCopy = interface;
  if (policyCopy)
  {
    if ([(NSArray *)self->_interfaces containsObject:interfaceCopy])
    {
      [(QoSMarkingController *)self updatePolicy:policyCopy forInterface:interfaceCopy];
    }

    [(NSMutableDictionary *)self->_requested setObject:policyCopy forKey:interfaceCopy, policyCopy];
  }

  else
  {
    [(QoSMarkingController *)self updatePolicy:0 forInterface:interfaceCopy];
    [(NSMutableDictionary *)self->_requested removeObjectForKey:interfaceCopy];
  }
}

- (void)setPolicySessions:(id)sessions
{
  p_policySessions = &self->_policySessions;

  objc_storeStrong(p_policySessions, sessions);
}

- (void)setRequested:(id)requested
{
  p_requested = &self->_requested;

  objc_storeStrong(p_requested, requested);
}

- (void)setEnabled:(id)enabled
{
  p_enabled = &self->_enabled;

  objc_storeStrong(p_enabled, enabled);
}

- (void)setEnabledAV:(id)v
{
  p_enabledAV = &self->_enabledAV;

  objc_storeStrong(p_enabledAV, v);
}

@end