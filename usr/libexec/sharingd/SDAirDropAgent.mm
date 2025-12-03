@interface SDAirDropAgent
- (SDAirDropAgent)initWithEndpointService:(id)service;
- (id)_agentClientTokenForClient:(id)client;
- (void)_createBrowseAgent;
- (void)_setupBrowseHandlers;
- (void)_setupPolicy;
- (void)handleEndpointsChanged:(id)changed;
@end

@implementation SDAirDropAgent

- (SDAirDropAgent)initWithEndpointService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = SDAirDropAgent;
  v6 = [(SDAirDropAgent *)&v14 init];
  if (v6)
  {
    v7 = airdrop_nw_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initializing Sharing network agent", buf, 2u);
    }

    objc_storeStrong(&v6->_dispatchQueue, &_dispatch_main_q);
    v8 = objc_opt_new();
    clientTokens = v6->_clientTokens;
    v6->_clientTokens = v8;

    objc_storeStrong(&v6->_endpointService, service);
    objc_initWeak(buf, v6);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001D5C08;
    v11[3] = &unk_1008D35E0;
    objc_copyWeak(&v12, buf);
    [(SDAirDropEndpointService *)v6->_endpointService setEndpointsChangedHandler:v11];
    if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
    {
      [(SDAirDropAgent *)v6 _createBrowseAgent];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (void)_setupPolicy
{
  v3 = airdrop_nw_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring agent policies", &v24, 2u);
  }

  v4 = objc_alloc_init(NEPolicySession);
  [(SDAirDropAgent *)self setPolicySession:v4];

  policySession = [(SDAirDropAgent *)self policySession];

  if (policySession)
  {
    policySession2 = [(SDAirDropAgent *)self policySession];
    [policySession2 setPriority:300];

    policySession3 = [(SDAirDropAgent *)self policySession];
    [policySession3 lockSessionToCurrentProcess];

    identifier = [(SDAirDropAgent *)self identifier];
    v9 = [NEPolicyResult netAgentUUID:identifier];

    v10 = +[NEPolicyCondition allInterfaces];
    v11 = [NSString stringWithUTF8String:"com.apple.airdrop"];
    v12 = [NSString stringWithUTF8String:"AirDropNetworkAgent"];
    v13 = [NEPolicyCondition requiredAgentDomain:v11 agentType:v12];

    v14 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
    v26[0] = v10;
    v26[1] = v13;
    v26[2] = v14;
    v15 = [NSArray arrayWithObjects:v26 count:3];
    v16 = [[NEPolicy alloc] initWithOrder:10 result:v9 conditions:v15];
    policySession4 = [(SDAirDropAgent *)self policySession];
    v18 = [policySession4 addPolicy:v16];

    if (!v18)
    {
      v19 = airdrop_nw_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(SDAirDropAgent *)self identifier];
        v24 = 138412290;
        v25 = identifier2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to add entitlement allow policy for agent %@", &v24, 0xCu);
      }
    }

    v21 = airdrop_nw_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [(SDAirDropAgent *)self identifier];
      v24 = 138412290;
      v25 = identifier3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Applying policies for agent %@", &v24, 0xCu);
    }

    policySession5 = [(SDAirDropAgent *)self policySession];
    [policySession5 apply];
  }

  else
  {
    v9 = airdrop_nw_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to create policy session", &v24, 2u);
    }
  }
}

- (void)_createBrowseAgent
{
  v3 = airdrop_nw_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating browse agent", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  v5 = nw_agent_create();
  [(SDAirDropAgent *)self setBrowseAgent:v5];

  browseAgent = [(SDAirDropAgent *)self browseAgent];

  if (browseAgent)
  {
    *buf = 0;
    v17 = 0;
    browseAgent2 = [(SDAirDropAgent *)self browseAgent];
    nw_agent_get_uuid();

    v8 = [[NSUUID alloc] initWithUUIDBytes:buf];
    [(SDAirDropAgent *)self setIdentifier:v8];

    v9 = airdrop_nw_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SDAirDropAgent *)self identifier];
      v14 = 138412290;
      v15 = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Browse Agent UUID=%@", &v14, 0xCu);
    }

    [(SDAirDropAgent *)self _setupPolicy];
    [(SDAirDropAgent *)self _setupBrowseHandlers];
    [(SDAirDropAgent *)self _setupAssertHandlers];
    v11 = airdrop_nw_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Activating browse agent", &v14, 2u);
    }

    browseAgent = self->_browseAgent;
    nw_agent_change_state();
    v13 = airdrop_nw_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Browse agent ready!", &v14, 2u);
    }
  }

  else
  {
    v13 = airdrop_nw_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001D6D38(v13);
    }
  }
}

- (void)_setupBrowseHandlers
{
  v3 = airdrop_nw_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting Agent Browse handlers", buf, 2u);
  }

  browseAgent = [(SDAirDropAgent *)self browseAgent];
  nw_agent_set_browse_handlers();
}

- (id)_agentClientTokenForClient:(id)client
{
  clientCopy = client;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientTokens = [(SDAirDropAgent *)self clientTokens];
  v6 = [clientTokens countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(clientTokens);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        agentClient = [v9 agentClient];
        client = [agentClient client];

        if (client == clientCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [clientTokens countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)handleEndpointsChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = [(SDAirDropAgent *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D691C;
  v7[3] = &unk_1008CE028;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(dispatchQueue, v7);
}

@end