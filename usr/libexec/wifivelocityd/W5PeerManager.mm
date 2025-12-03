@interface W5PeerManager
- (BOOL)_discoveryRequestsContainsRapportRequest;
- (BOOL)_setupRapportClient;
- (BOOL)registerPeerListeners:(id)listeners;
- (W5PeerManager)init;
- (id)_activePeersWithDiscoveryFlags:(int64_t)flags;
- (id)_sendRapportRequest:(id)request;
- (id)_stopPeerDiscoveryWithRequest:(id)request;
- (id)queryDatabaseForPeerWithRequest:(id)request;
- (id)queryStatusForPeerWithRequest:(id)request;
- (id)requestFileFromPeerWithRequest:(id)request;
- (id)runDiagnosticsOnPeerWithRequest:(id)request;
- (id)runSnifferAtPeerWithRequest:(id)request;
- (id)sendDebugConfigurationForPeerWithRequest:(id)request;
- (id)sendRequest:(id)request;
- (id)startPeerDiscoveryWithRequest:(id)request;
- (id)stopPeerDiscoveryWithRequestUUID:(id)d;
- (void)_handleRapportDeviceFound:(id)found;
- (void)_handleRapportDeviceLost:(id)lost;
- (void)_newPeersDiscovered:(id)discovered;
- (void)_peersLost:(id)lost;
@end

@implementation W5PeerManager

- (W5PeerManager)init
{
  v12.receiver = self;
  v12.super_class = W5PeerManager;
  v2 = [(W5PeerManager *)&v12 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = objc_alloc_init(NSMutableSet);
  discoveryRequests = v2->_discoveryRequests;
  v2->_discoveryRequests = v3;

  if (!v2->_discoveryRequests || (v5 = objc_alloc_init(NSMutableSet), activePeers = v2->_activePeers, v2->_activePeers = v5, activePeers, !v2->_activePeers))
  {
LABEL_11:

    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[W5PeerManager init]";
      v15 = 2080;
      v16 = "W5PeerManager.m";
      v17 = 1024;
      v18 = 61;
      _os_log_send_and_compose_impl();
    }

    v2 = 0;
    goto LABEL_9;
  }

  localIDSIdentifier = v2->_localIDSIdentifier;
  v2->_localIDSIdentifier = 0;

  if (objc_opt_class())
  {
    v8 = IDSCopyLocalDeviceUniqueID();
    v9 = v2->_localIDSIdentifier;
    v2->_localIDSIdentifier = v8;
  }

  if (!v2->_localIDSIdentifier)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[W5PeerManager init]";
      v15 = 2080;
      v16 = "W5PeerManager.m";
      v17 = 1024;
      v18 = 53;
      _os_log_send_and_compose_impl();
    }

LABEL_9:
  }

  return v2;
}

- (BOOL)registerPeerListeners:(id)listeners
{
  listenersCopy = listeners;
  v5 = [[W5RapportServer alloc] initWithRequestListeners:listenersCopy];

  rapportServer = self->_rapportServer;
  self->_rapportServer = v5;

  _setupRapportClient = [(W5PeerManager *)self _setupRapportClient];
  if (!_setupRapportClient)
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  return _setupRapportClient;
}

- (id)startPeerDiscoveryWithRequest:(id)request
{
  requestCopy = request;
  discoveryRequests = [(W5PeerManager *)self discoveryRequests];
  v6 = [discoveryRequests containsObject:requestCopy];

  v7 = sub_100098A04();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v20 = 136315906;
      v21 = "[W5PeerManager startPeerDiscoveryWithRequest:]";
      v22 = 2080;
      v23 = "W5PeerManager.m";
      v24 = 1024;
      v25 = 81;
      v26 = 2114;
      v27 = requestCopy;
      _os_log_send_and_compose_impl();
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"W5NotPermittedErr";
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    activePeers = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v9];
LABEL_13:

    goto LABEL_14;
  }

  if (v8)
  {
    v20 = 136315906;
    v21 = "[W5PeerManager startPeerDiscoveryWithRequest:]";
    v22 = 2080;
    v23 = "W5PeerManager.m";
    v24 = 1024;
    v25 = 85;
    v26 = 2114;
    v27 = requestCopy;
    _os_log_send_and_compose_impl();
  }

  discoveryRequests2 = [(W5PeerManager *)self discoveryRequests];
  [discoveryRequests2 addObject:requestCopy];

  configuration = [requestCopy configuration];
  discoveryFlags = [configuration discoveryFlags];

  if ((discoveryFlags & 1) == 0)
  {
    activePeers = 0;
    goto LABEL_14;
  }

  rapportClient = [(W5PeerManager *)self rapportClient];
  [rapportClient startDiscoveringDevices];

  activePeers = [(W5PeerManager *)self activePeers];

  if (activePeers)
  {
    v9 = [(W5PeerManager *)self _activePeersWithDiscoveryFlags:1];
    if ([v9 count])
    {
      handler = [requestCopy handler];
      allObjects = [v9 allObjects];
      (handler)[2](handler, allObjects, 0);
    }

    activePeers = 0;
    goto LABEL_13;
  }

LABEL_14:

  return activePeers;
}

- (id)stopPeerDiscoveryWithRequestUUID:(id)d
{
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  discoveryRequests = [(W5PeerManager *)self discoveryRequests];
  v6 = [discoveryRequests countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(discoveryRequests);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      uuid = [v10 uuid];
      v12 = [uuid isEqual:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [discoveryRequests countByEnumeratingWithState:&v18 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [(W5PeerManager *)self _stopPeerDiscoveryWithRequest:v13];
  }

  else
  {
LABEL_9:

LABEL_12:
    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315906;
      v25 = "[W5PeerManager stopPeerDiscoveryWithRequestUUID:]";
      v26 = 2080;
      v27 = "W5PeerManager.m";
      v28 = 1024;
      v29 = 117;
      v30 = 2114;
      v31 = dCopy;
      _os_log_send_and_compose_impl();
    }

    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = @"W5ParamErr";
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v13];
  }

  v16 = v14;

  return v16;
}

- (id)_stopPeerDiscoveryWithRequest:(id)request
{
  requestCopy = request;
  discoveryRequests = [(W5PeerManager *)self discoveryRequests];
  v6 = [discoveryRequests containsObject:requestCopy];

  if (v6)
  {
    discoveryRequests2 = [(W5PeerManager *)self discoveryRequests];
    [discoveryRequests2 removeObject:requestCopy];

    _discoveryRequestsContainsRapportRequest = [(W5PeerManager *)self _discoveryRequestsContainsRapportRequest];
    rapportClient = sub_100098A04();
    v10 = os_log_type_enabled(rapportClient, OS_LOG_TYPE_DEFAULT);
    if (_discoveryRequestsContainsRapportRequest)
    {
      if (v10)
      {
        [(W5PeerManager *)self discoveryRequests];
        v20 = 136315906;
        v21 = "[W5PeerManager _stopPeerDiscoveryWithRequest:]";
        v22 = 2080;
        v23 = "W5PeerManager.m";
        v24 = 1024;
        v25 = 138;
        v27 = v26 = 2114;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      if (v10)
      {
        v20 = 136315650;
        v21 = "[W5PeerManager _stopPeerDiscoveryWithRequest:]";
        v22 = 2080;
        v23 = "W5PeerManager.m";
        v24 = 1024;
        v25 = 135;
        _os_log_send_and_compose_impl();
      }

      rapportClient = [(W5PeerManager *)self rapportClient];
      [rapportClient stopDiscoveryingDevices];
    }

    discoveryRequests3 = [(W5PeerManager *)self discoveryRequests];
    v15 = [discoveryRequests3 count];

    if (v15)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v16 = sub_100098A04();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[W5PeerManager _stopPeerDiscoveryWithRequest:]";
      v22 = 2080;
      v23 = "W5PeerManager.m";
      v24 = 1024;
      v25 = 143;
      _os_log_send_and_compose_impl();
    }

    activePeers = [(W5PeerManager *)self activePeers];
    [activePeers removeAllObjects];
    v13 = 0;
  }

  else
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5PeerManager _stopPeerDiscoveryWithRequest:]";
      v22 = 2080;
      v23 = "W5PeerManager.m";
      v24 = 1024;
      v25 = 127;
      v26 = 2114;
      v27 = requestCopy;
      _os_log_send_and_compose_impl();
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"W5NotPermittedErr";
    activePeers = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:activePeers];
  }

LABEL_17:

  return v13;
}

- (void)_newPeersDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v5 = [discoveredCopy mutableCopy];
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activePeers = [(W5PeerManager *)self activePeers];
    v39 = 136315906;
    v40 = "[W5PeerManager _newPeersDiscovered:]";
    v41 = 2080;
    v42 = "W5PeerManager.m";
    v43 = 1024;
    v44 = 156;
    v45 = 2114;
    v46 = activePeers;
    LODWORD(v29) = 38;
    v28 = &v39;
    _os_log_send_and_compose_impl();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = discoveredCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [(W5PeerManager *)self activePeers:v28];
        v15 = [v14 containsObject:v13];

        if (v15)
        {
          v16 = sub_100098A04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 136315906;
            v40 = "[W5PeerManager _newPeersDiscovered:]";
            v41 = 2080;
            v42 = "W5PeerManager.m";
            v43 = 1024;
            v44 = 159;
            v45 = 2114;
            v46 = v13;
            LODWORD(v29) = 38;
            v28 = &v39;
            _os_log_send_and_compose_impl();
          }

          [v5 removeObject:v13];
        }

        else
        {
          activePeers2 = [(W5PeerManager *)self activePeers];
          [activePeers2 addObject:v13];

          v10 |= [v13 discoveryFlags];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v5 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    discoveryRequests = [(W5PeerManager *)self discoveryRequests];
    v19 = [discoveryRequests countByEnumeratingWithState:&v31 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(discoveryRequests);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          v24 = sub_100098A04();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 136316162;
            v40 = "[W5PeerManager _newPeersDiscovered:]";
            v41 = 2080;
            v42 = "W5PeerManager.m";
            v43 = 1024;
            v44 = 174;
            v45 = 2114;
            v46 = v23;
            v47 = 2114;
            v48 = v5;
            _os_log_send_and_compose_impl();
          }

          configuration = [v23 configuration];
          v26 = [configuration discoveryFlags] & v10;

          if (v26)
          {
            handler = [v23 handler];
            (handler)[2](handler, v5, 0);
          }
        }

        v20 = [discoveryRequests countByEnumeratingWithState:&v31 objects:v49 count:16];
      }

      while (v20);
    }
  }

  else
  {
    discoveryRequests = sub_100098A04();
    if (os_log_type_enabled(discoveryRequests, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315650;
      v40 = "[W5PeerManager _newPeersDiscovered:]";
      v41 = 2080;
      v42 = "W5PeerManager.m";
      v43 = 1024;
      v44 = 168;
      _os_log_send_and_compose_impl();
    }
  }
}

- (void)_peersLost:(id)lost
{
  lostCopy = lost;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activePeers = [(W5PeerManager *)self activePeers];
    v38 = 136315906;
    v39 = "[W5PeerManager _peersLost:]";
    v40 = 2080;
    v41 = "W5PeerManager.m";
    v42 = 1024;
    v43 = 185;
    v44 = 2114;
    v45 = activePeers;
    LODWORD(v29) = 38;
    v28 = &v38;
    _os_log_send_and_compose_impl();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = lostCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [(W5PeerManager *)self activePeers:v28];
        v15 = [v14 containsObject:v13];

        if (v15)
        {
          v16 = sub_100098A04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315906;
            v39 = "[W5PeerManager _peersLost:]";
            v40 = 2080;
            v41 = "W5PeerManager.m";
            v42 = 1024;
            v43 = 188;
            v44 = 2114;
            v45 = v13;
            LODWORD(v29) = 38;
            v28 = &v38;
            _os_log_send_and_compose_impl();
          }

          activePeers2 = [(W5PeerManager *)self activePeers];
          [activePeers2 removeObject:v13];

          v10 |= [v13 discoveryFlags];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  discoveryRequests = [(W5PeerManager *)self discoveryRequests];
  v19 = [discoveryRequests countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(discoveryRequests);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        v24 = sub_100098A04();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136316162;
          v39 = "[W5PeerManager _peersLost:]";
          v40 = 2080;
          v41 = "W5PeerManager.m";
          v42 = 1024;
          v43 = 196;
          v44 = 2114;
          v45 = v23;
          v46 = 2114;
          v47 = v7;
          _os_log_send_and_compose_impl();
        }

        configuration = [v23 configuration];
        v26 = [configuration discoveryFlags] & v10;

        if (v26)
        {
          handler = [v23 handler];
          (handler)[2](handler, 0, v7);
        }
      }

      v20 = [discoveryRequests countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v20);
  }
}

- (id)_activePeersWithDiscoveryFlags:(int64_t)flags
{
  flags = [NSPredicate predicateWithFormat:@"SELF.discoveryFlags == %d", flags];
  v6 = [NSPredicate predicateWithFormat:@"SELF.discoveryFlags == %d", flags | 2, flags];
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];

  activePeers = [(W5PeerManager *)self activePeers];
  v10 = [activePeers filteredSetUsingPredicate:v8];

  return v10;
}

- (id)queryStatusForPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:requestCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)requestFileFromPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    peer = [requestCopy peer];
    companionLinkDevice = [peer companionLinkDevice];

    if (companionLinkDevice)
    {
      rapportClient = [(W5PeerManager *)self rapportClient];
      v8 = [rapportClient sendMessageToDevice:companionLinkDevice request:requestCopy];
    }

    else
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [requestCopy peer];
        v14 = 136315906;
        v15 = "[W5PeerManager requestFileFromPeerWithRequest:]";
        v16 = 2080;
        v17 = "W5PeerManager.m";
        v18 = 1024;
        v19 = 236;
        v21 = v20 = 2114;
        _os_log_send_and_compose_impl();
      }

      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"W5ParamErr";
      rapportClient = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:rapportClient];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)runSnifferAtPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:requestCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sendDebugConfigurationForPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:requestCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)runDiagnosticsOnPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    peer = [requestCopy peer];
    companionLinkDevice = [peer companionLinkDevice];

    if (companionLinkDevice)
    {
      rapportClient = [(W5PeerManager *)self rapportClient];
      v8 = [rapportClient sendMessageToDevice:companionLinkDevice request:requestCopy];
    }

    else
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [requestCopy peer];
        v14 = 136315906;
        v15 = "[W5PeerManager runDiagnosticsOnPeerWithRequest:]";
        v16 = 2080;
        v17 = "W5PeerManager.m";
        v18 = 1024;
        v19 = 282;
        v21 = v20 = 2114;
        _os_log_send_and_compose_impl();
      }

      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"W5ParamErr";
      rapportClient = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:rapportClient];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)queryDatabaseForPeerWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:requestCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_sendRapportRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  companionLinkDevice = [peer companionLinkDevice];

  if (companionLinkDevice)
  {
    rapportClient = [(W5PeerManager *)self rapportClient];
    v8 = [rapportClient sendMessageToDevice:companionLinkDevice request:requestCopy];
  }

  else
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [requestCopy peer];
      v14 = 136315906;
      v15 = "[W5PeerManager _sendRapportRequest:]";
      v16 = 2080;
      v17 = "W5PeerManager.m";
      v18 = 1024;
      v19 = 312;
      v21 = v20 = 2114;
      _os_log_send_and_compose_impl();
    }

    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"W5ParamErr";
    rapportClient = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:rapportClient];
  }

  v10 = v8;

  return v10;
}

- (BOOL)_setupRapportClient
{
  v3 = objc_alloc_init(W5RapportClient);
  [(W5PeerManager *)self setRapportClient:v3];

  rapportClient = [(W5PeerManager *)self rapportClient];

  if (rapportClient)
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000937F8;
    v10[3] = &unk_1000E29C8;
    objc_copyWeak(&v11, &location);
    rapportClient2 = [(W5PeerManager *)self rapportClient];
    [rapportClient2 setDeviceFoundHandler:v10];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100093854;
    v8[3] = &unk_1000E29C8;
    objc_copyWeak(&v9, &location);
    rapportClient3 = [(W5PeerManager *)self rapportClient];
    [rapportClient3 setDeviceLostHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return rapportClient != 0;
}

- (void)_handleRapportDeviceFound:(id)found
{
  foundCopy = found;
  v5 = [[W5Peer alloc] initWithCompanionLinkDevice:foundCopy];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(W5PeerManager *)self _newPeersDiscovered:v6];
}

- (void)_handleRapportDeviceLost:(id)lost
{
  lostCopy = lost;
  v5 = [[W5Peer alloc] initWithCompanionLinkDevice:lostCopy];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(W5PeerManager *)self _peersLost:v6];
}

- (BOOL)_discoveryRequestsContainsRapportRequest
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  discoveryRequests = [(W5PeerManager *)self discoveryRequests];
  v3 = [discoveryRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(discoveryRequests);
        }

        configuration = [*(*(&v9 + 1) + 8 * i) configuration];
        discoveryFlags = [configuration discoveryFlags];

        if (discoveryFlags)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [discoveryRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)sendRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  companionLinkDevice = [peer companionLinkDevice];

  v7 = sub_100098A04();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (companionLinkDevice)
  {
    if (v8)
    {
      peer2 = [requestCopy peer];
      requestInfo = [requestCopy requestInfo];
      _os_log_send_and_compose_impl();
    }

    rapportClient = [(W5PeerManager *)self rapportClient];
    v11 = [rapportClient sendMessageToDevice:companionLinkDevice request:requestCopy];
  }

  else
  {
    if (v8)
    {
      peer3 = [requestCopy peer];
      _os_log_send_and_compose_impl();
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"W5ParamErr";
    rapportClient = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:rapportClient];
  }

  v12 = v11;

  return v12;
}

@end