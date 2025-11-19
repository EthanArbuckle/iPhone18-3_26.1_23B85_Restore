@interface NRApplicationServiceManager
- (NRApplicationServiceManager)init;
- (id)description;
@end

@implementation NRApplicationServiceManager

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"\nName: NRApplicationServiceManager"];
  [v3 appendFormat:@"\nlisten: %@", self->_asNameToListenRequest];
  [v3 appendFormat:@"\nbrowse: %@", self->_asNameToBrowseRequests];
  [v3 appendFormat:@"\nresolve: %@", self->_asNameToResolveRequests];
  [v3 appendFormat:@"\nincoming: %@", self->_asNamesToIncomingResolveRequestEndpoint];
  [v3 appendFormat:@"\nflows: %@", self->_flows];
  v14 = v3;
  [v3 appendFormat:@"\nclients: %@", self->_asClients];
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_asNameToResolveRequests;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = sub_1001196E0(self, v10);
        if ([v11 count])
        {
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v14 appendFormat:@"\nresolver keys: %@", v4];

  return v14;
}

- (NRApplicationServiceManager)init
{
  v87.receiver = self;
  v87.super_class = NRApplicationServiceManager;
  v6 = [(NRApplicationServiceManager *)&v87 init];
  if (!v6)
  {
    v78 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v43 = "[NRApplicationServiceManager init]";
    if (IsLevelEnabled)
    {
      v80 = sub_100119370();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v42 = &v83 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = *__error();
    v82 = _os_log_pack_fill();
    *v82 = 136446210;
    *(v82 + 4) = "[NRApplicationServiceManager init]";
    sub_100119370();
    _NRLogAbortWithPack();
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_100003490();
  queue = v7->_queue;
  v7->_queue = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  asNameToListenRequest = v7->_asNameToListenRequest;
  v7->_asNameToListenRequest = v10;

  v12 = objc_alloc_init(NSMutableDictionary);
  asNameToBrowseRequests = v7->_asNameToBrowseRequests;
  v7->_asNameToBrowseRequests = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  asNameToResolveRequests = v7->_asNameToResolveRequests;
  v7->_asNameToResolveRequests = v14;

  v16 = objc_alloc_init(NSMutableDictionary);
  asNamesToIncomingResolveRequestEndpoint = v7->_asNamesToIncomingResolveRequestEndpoint;
  v7->_asNamesToIncomingResolveRequestEndpoint = v16;

  v18 = objc_alloc_init(NSMutableArray);
  flows = v7->_flows;
  v7->_flows = v18;

  v20 = objc_alloc_init(NSMutableArray);
  asClients = v7->_asClients;
  v7->_asClients = v20;

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  policyIdentifier = v7->_policyIdentifier;
  v7->_policyIdentifier = v23;

  v25 = v7->_queue;
  v26 = nw_agent_create();
  v117 = 0;
  v118 = 0;
  nw_agent_get_uuid();
  v27 = [[NSUUID alloc] initWithUUIDBytes:&v117];
  resolverAgentUUID = v7->_resolverAgentUUID;
  v7->_resolverAgentUUID = v27;

  v92 = _NSConcreteStackBlock;
  v93 = 3221225472;
  v86 = &v94;
  v94 = sub_10011BAC4;
  v95 = &unk_1001FBDD8;
  v96 = v7;
  *&v88 = _NSConcreteStackBlock;
  *(&v88 + 1) = 3221225472;
  v85 = &v89;
  *&v89 = sub_10011BE74;
  *(&v89 + 1) = &unk_1001FBE00;
  *&v90 = v7;
  nw_agent_set_browse_handlers();
  v111 = v7;
  v112 = _NSConcreteStackBlock;
  v113 = 3221225472;
  v114 = sub_10011C3D4;
  v115 = &unk_1001FBDD8;
  v116 = v7;
  v107 = _NSConcreteStackBlock;
  v108 = 3221225472;
  v109 = sub_10011C9A8;
  v110 = &unk_1001FBE00;
  nw_agent_add_resolve_handlers();
  v29 = _os_feature_enabled_impl();
  v7->_resolverHasCompleteOnConnect = v29;
  if (v29)
  {
    nw_agent_set_resolve_flags();
    if (v7->_resolverHasCompleteOnConnect)
    {
      v102 = _NSConcreteStackBlock;
      v103 = 3221225472;
      v104 = sub_10011CDC0;
      v105 = &unk_1001FBE28;
      v106 = v7;
      v97 = _NSConcreteStackBlock;
      v98 = 3221225472;
      v99 = sub_10011D0BC;
      v100 = &unk_1001FBE00;
      v101 = v7;
      nw_agent_set_assert_handlers();
    }
  }

  nw_agent_change_state();
  resolverAgent = v7->_resolverAgent;
  v7->_resolverAgent = v26;
  v31 = v26;

  v32 = v7->_queue;
  v33 = nw_agent_create();
  v117 = 0;
  v118 = 0;
  nw_agent_get_uuid();
  v34 = [[NSUUID alloc] initWithUUIDBytes:&v117];
  listenerAgentUUID = v7->_listenerAgentUUID;
  v7->_listenerAgentUUID = v34;

  v111 = v7;
  v112 = _NSConcreteStackBlock;
  v113 = 3221225472;
  v114 = sub_10011A590;
  v115 = &unk_1001FBDD8;
  v116 = v7;
  v107 = _NSConcreteStackBlock;
  v108 = 3221225472;
  v109 = sub_10011A8B4;
  v110 = &unk_1001FBE00;
  nw_agent_set_browse_handlers();
  nw_agent_change_state();
  listenerAgent = v7->_listenerAgent;
  v7->_listenerAgent = v33;
  v84 = v33;

  v37 = v7->_queue;
  v38 = nw_agent_create();
  v97 = 0;
  v98 = 0;
  nw_agent_get_uuid();
  v39 = [[NSUUID alloc] initWithUUIDBytes:&v97];
  incomingFlowAgentUUID = v7->_incomingFlowAgentUUID;
  v7->_incomingFlowAgentUUID = v39;

  v92 = _NSConcreteStackBlock;
  v93 = 3221225472;
  v94 = sub_10011ACD8;
  v95 = &unk_1001FBE28;
  v96 = v7;
  *&v88 = _NSConcreteStackBlock;
  *(&v88 + 1) = 3221225472;
  *&v89 = sub_10011AD4C;
  *(&v89 + 1) = &unk_1001FBE00;
  *&v90 = v7;
  nw_agent_set_assert_handlers();
  nw_agent_change_state();
  incomingFlowAgent = v7->_incomingFlowAgent;
  v7->_incomingFlowAgent = v38;
  v86 = v38;

  v3 = &dispatch_group_enter_ptr;
  v2 = v7;
  v42 = [NEPolicyResult netAgentUUID:v7->_incomingFlowAgentUUID];
  v43 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
  v4 = +[NEPolicyCondition isInbound];
  v44 = [NEPolicy alloc];
  v45 = +[NEPolicyCondition allInterfaces];
  v102 = v45;
  v103 = v43;
  v104 = v4;
  v46 = [NSArray arrayWithObjects:&v102 count:3];
  v5 = [v44 initWithOrder:10 result:v42 conditions:v46];

  objc_opt_self();
  if (qword_100229410 != -1)
  {
LABEL_38:
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v47 = qword_100229408;
  v48 = v2;
  v49 = sub_100159E00(v47, v2->_policyIdentifier, v5);

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v50 = qword_100229408;
  sub_10015A52C(v50);

  v51 = v2->_resolverAgentUUID;
  if (v51)
  {
  }

  else if (!v2->_listenerAgentUUID)
  {
    goto LABEL_26;
  }

  v52 = objc_alloc_init(NSMutableArray);
  if (v2->_resolverAgentUUID)
  {
    v53 = [v3[328] removeNetworkAgentUUID:?];
    [v52 addObject:v53];
  }

  if (v2->_listenerAgentUUID)
  {
    v54 = [v3[328] removeNetworkAgentUUID:?];
    [v52 addObject:v54];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v55 = v52;
  v56 = [v55 countByEnumeratingWithState:&v88 objects:&v92 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v89;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v89 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v88 + 1) + 8 * i);
        v61 = [NEPolicy alloc];
        v62 = +[NEPolicyCondition allInterfaces];
        v107 = v62;
        v63 = [NSArray arrayWithObjects:&v107 count:1];
        v64 = [v61 initWithOrder:20 result:v60 conditions:v63];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v48 = v2;
        v65 = qword_100229408;
        v66 = sub_100159E00(v65, v2->_policyIdentifier, v64);
      }

      v57 = [v55 countByEnumeratingWithState:&v88 objects:&v92 count:16];
    }

    while (v57);
  }

  v3 = &dispatch_group_enter_ptr;
LABEL_26:
  v67 = v48->_resolverAgentUUID;
  if (v67)
  {
  }

  else if (!v48->_listenerAgentUUID)
  {
    goto LABEL_32;
  }

  v68 = [v3[328] skipWithOrder:21];
  v69 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
  v70 = [NEPolicy alloc];
  v71 = +[NEPolicyCondition allInterfaces];
  v112 = v71;
  v113 = v69;
  v72 = [NSArray arrayWithObjects:&v112 count:2];
  v73 = [v70 initWithOrder:15 result:v68 conditions:v72];

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v74 = qword_100229408;
  v75 = sub_100159E00(v74, v48->_policyIdentifier, v73);

LABEL_32:
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v76 = qword_100229408;
  sub_10015A52C(v76);

  return v48;
}

@end