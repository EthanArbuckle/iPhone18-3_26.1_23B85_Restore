@interface W5PeerManager
- (BOOL)_discoveryRequestsContainsRapportRequest;
- (BOOL)_setupRapportClient;
- (BOOL)registerPeerListeners:(id)a3;
- (W5PeerManager)init;
- (id)_activePeersWithDiscoveryFlags:(int64_t)a3;
- (id)_sendRapportRequest:(id)a3;
- (id)_stopPeerDiscoveryWithRequest:(id)a3;
- (id)queryDatabaseForPeerWithRequest:(id)a3;
- (id)queryStatusForPeerWithRequest:(id)a3;
- (id)requestFileFromPeerWithRequest:(id)a3;
- (id)runDiagnosticsOnPeerWithRequest:(id)a3;
- (id)runSnifferAtPeerWithRequest:(id)a3;
- (id)sendDebugConfigurationForPeerWithRequest:(id)a3;
- (id)sendRequest:(id)a3;
- (id)startPeerDiscoveryWithRequest:(id)a3;
- (id)stopPeerDiscoveryWithRequestUUID:(id)a3;
- (void)_handleRapportDeviceFound:(id)a3;
- (void)_handleRapportDeviceLost:(id)a3;
- (void)_newPeersDiscovered:(id)a3;
- (void)_peersLost:(id)a3;
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

- (BOOL)registerPeerListeners:(id)a3
{
  v4 = a3;
  v5 = [[W5RapportServer alloc] initWithRequestListeners:v4];

  rapportServer = self->_rapportServer;
  self->_rapportServer = v5;

  v7 = [(W5PeerManager *)self _setupRapportClient];
  if (!v7)
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  return v7;
}

- (id)startPeerDiscoveryWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(W5PeerManager *)self discoveryRequests];
  v6 = [v5 containsObject:v4];

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
      v27 = v4;
      _os_log_send_and_compose_impl();
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"W5NotPermittedErr";
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v9];
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
    v27 = v4;
    _os_log_send_and_compose_impl();
  }

  v11 = [(W5PeerManager *)self discoveryRequests];
  [v11 addObject:v4];

  v12 = [v4 configuration];
  v13 = [v12 discoveryFlags];

  if ((v13 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v14 = [(W5PeerManager *)self rapportClient];
  [v14 startDiscoveringDevices];

  v10 = [(W5PeerManager *)self activePeers];

  if (v10)
  {
    v9 = [(W5PeerManager *)self _activePeersWithDiscoveryFlags:1];
    if ([v9 count])
    {
      v15 = [v4 handler];
      v16 = [v9 allObjects];
      (v15)[2](v15, v16, 0);
    }

    v10 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (id)stopPeerDiscoveryWithRequestUUID:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(W5PeerManager *)self discoveryRequests];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v32 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [v10 uuid];
      v12 = [v11 isEqual:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v32 count:16];
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
      v31 = v4;
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

- (id)_stopPeerDiscoveryWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(W5PeerManager *)self discoveryRequests];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(W5PeerManager *)self discoveryRequests];
    [v7 removeObject:v4];

    v8 = [(W5PeerManager *)self _discoveryRequestsContainsRapportRequest];
    v9 = sub_100098A04();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
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

      v9 = [(W5PeerManager *)self rapportClient];
      [v9 stopDiscoveryingDevices];
    }

    v14 = [(W5PeerManager *)self discoveryRequests];
    v15 = [v14 count];

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

    v12 = [(W5PeerManager *)self activePeers];
    [v12 removeAllObjects];
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
      v27 = v4;
      _os_log_send_and_compose_impl();
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"W5NotPermittedErr";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v12];
  }

LABEL_17:

  return v13;
}

- (void)_newPeersDiscovered:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(W5PeerManager *)self activePeers];
    v39 = 136315906;
    v40 = "[W5PeerManager _newPeersDiscovered:]";
    v41 = 2080;
    v42 = "W5PeerManager.m";
    v43 = 1024;
    v44 = 156;
    v45 = 2114;
    v46 = v7;
    LODWORD(v29) = 38;
    v28 = &v39;
    _os_log_send_and_compose_impl();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
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
          v17 = [(W5PeerManager *)self activePeers];
          [v17 addObject:v13];

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
    v18 = [(W5PeerManager *)self discoveryRequests];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v49 count:16];
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
            objc_enumerationMutation(v18);
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

          v25 = [v23 configuration];
          v26 = [v25 discoveryFlags] & v10;

          if (v26)
          {
            v27 = [v23 handler];
            (v27)[2](v27, v5, 0);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v49 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

- (void)_peersLost:(id)a3
{
  v4 = a3;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(W5PeerManager *)self activePeers];
    v38 = 136315906;
    v39 = "[W5PeerManager _peersLost:]";
    v40 = 2080;
    v41 = "W5PeerManager.m";
    v42 = 1024;
    v43 = 185;
    v44 = 2114;
    v45 = v6;
    LODWORD(v29) = 38;
    v28 = &v38;
    _os_log_send_and_compose_impl();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
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

          v17 = [(W5PeerManager *)self activePeers];
          [v17 removeObject:v13];

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
  v18 = [(W5PeerManager *)self discoveryRequests];
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v48 count:16];
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
          objc_enumerationMutation(v18);
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

        v25 = [v23 configuration];
        v26 = [v25 discoveryFlags] & v10;

        if (v26)
        {
          v27 = [v23 handler];
          (v27)[2](v27, 0, v7);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v20);
  }
}

- (id)_activePeersWithDiscoveryFlags:(int64_t)a3
{
  v5 = [NSPredicate predicateWithFormat:@"SELF.discoveryFlags == %d", a3];
  v6 = [NSPredicate predicateWithFormat:@"SELF.discoveryFlags == %d", a3 | 2, v5];
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];

  v9 = [(W5PeerManager *)self activePeers];
  v10 = [v9 filteredSetUsingPredicate:v8];

  return v10;
}

- (id)queryStatusForPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)requestFileFromPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [v4 peer];
    v6 = [v5 companionLinkDevice];

    if (v6)
    {
      v7 = [(W5PeerManager *)self rapportClient];
      v8 = [v7 sendMessageToDevice:v6 request:v4];
    }

    else
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [v4 peer];
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
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v7];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)runSnifferAtPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sendDebugConfigurationForPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)runDiagnosticsOnPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [v4 peer];
    v6 = [v5 companionLinkDevice];

    if (v6)
    {
      v7 = [(W5PeerManager *)self rapportClient];
      v8 = [v7 sendMessageToDevice:v6 request:v4];
    }

    else
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [v4 peer];
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
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v7];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)queryDatabaseForPeerWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 discoveryFlags] == 1)
  {
    v5 = [(W5PeerManager *)self _sendRapportRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_sendRapportRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [v5 companionLinkDevice];

  if (v6)
  {
    v7 = [(W5PeerManager *)self rapportClient];
    v8 = [v7 sendMessageToDevice:v6 request:v4];
  }

  else
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v4 peer];
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
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v7];
  }

  v10 = v8;

  return v10;
}

- (BOOL)_setupRapportClient
{
  v3 = objc_alloc_init(W5RapportClient);
  [(W5PeerManager *)self setRapportClient:v3];

  v4 = [(W5PeerManager *)self rapportClient];

  if (v4)
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000937F8;
    v10[3] = &unk_1000E29C8;
    objc_copyWeak(&v11, &location);
    v5 = [(W5PeerManager *)self rapportClient];
    [v5 setDeviceFoundHandler:v10];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100093854;
    v8[3] = &unk_1000E29C8;
    objc_copyWeak(&v9, &location);
    v6 = [(W5PeerManager *)self rapportClient];
    [v6 setDeviceLostHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v4 != 0;
}

- (void)_handleRapportDeviceFound:(id)a3
{
  v4 = a3;
  v5 = [[W5Peer alloc] initWithCompanionLinkDevice:v4];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(W5PeerManager *)self _newPeersDiscovered:v6];
}

- (void)_handleRapportDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [[W5Peer alloc] initWithCompanionLinkDevice:v4];

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
  v2 = [(W5PeerManager *)self discoveryRequests];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) configuration];
        v7 = [v6 discoveryFlags];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)sendRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [v5 companionLinkDevice];

  v7 = sub_100098A04();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v4 peer];
      v15 = [v4 requestInfo];
      _os_log_send_and_compose_impl();
    }

    v10 = [(W5PeerManager *)self rapportClient];
    v11 = [v10 sendMessageToDevice:v6 request:v4];
  }

  else
  {
    if (v8)
    {
      v14 = [v4 peer];
      _os_log_send_and_compose_impl();
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = @"W5ParamErr";
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v10];
  }

  v12 = v11;

  return v12;
}

@end