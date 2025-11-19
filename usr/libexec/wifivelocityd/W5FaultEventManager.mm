@interface W5FaultEventManager
- (W5FaultEventManager)initWithPeerManager:(id)a3 diagnosticsModeManager:(id)a4;
- (id)faultEventCache;
- (void)__addFaultEvent:(id)a3;
- (void)__archiveEventCache;
- (void)__archiveNotifyPeers;
- (void)__purgeObsoleteFaultEvents;
- (void)__unarchiveEventCache;
- (void)__unarchiveNotifyPeers;
- (void)notifyPeersWithFaultEvent:(id)a3 info:(id)a4;
- (void)queryFaultEventCacheForPeer:(id)a3 reply:(id)a4;
- (void)startMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4;
- (void)stopMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4;
- (void)submitFaultEvent:(id)a3;
@end

@implementation W5FaultEventManager

- (W5FaultEventManager)initWithPeerManager:(id)a3 diagnosticsModeManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = W5FaultEventManager;
  v9 = [(W5FaultEventManager *)&v20 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_peerManager, a3), v10->_peerManager) && (objc_storeStrong(&v10->_diagnosticsModeManager, a4), v10->_diagnosticsModeManager) && (v11 = objc_alloc_init(W5PeerGenericRequestListener), listener = v10->_listener, v10->_listener = v11, listener, (v13 = v10->_listener) != 0))
  {
    [(W5PeerGenericRequestListener *)v13 setIdentifier:@"com.apple.wifi.peer.faults"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10008892C;
    v17[3] = &unk_1000E3380;
    v18 = v10;
    v14 = v18;
    v19 = v14;
    [(W5PeerGenericRequestListener *)v10->_listener setRequestHandler:v17];

    v15 = v18;
  }

  else
  {

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[W5FaultEventManager initWithPeerManager:diagnosticsModeManager:]";
      v23 = 2080;
      v24 = "W5FaultEventManager.m";
      v25 = 1024;
      v26 = 164;
      _os_log_send_and_compose_impl();
    }

    v14 = 0;
  }

  return v14;
}

- (void)startMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.faults"];
  [(W5PeerGenericRequest *)v9 setPeer:v6];
  [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [v6 controlFlags]);
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1000EFB18 forKeyedSubscript:@"Type"];
  v11 = [(W5FaultEventManager *)v8 localPeer];
  [v10 setObject:v11 forKeyedSubscript:@"RequestPeer"];

  [v10 setObject:v6 forKeyedSubscript:@"ResponsePeer"];
  [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000891F0;
  v15[3] = &unk_1000E33A8;
  v15[4] = v8;
  v12 = v6;
  v16 = v12;
  v13 = v7;
  v17 = v13;
  [(W5PeerGenericRequest *)v9 setResponseHandler:v15];
  v14 = [(W5PeerManager *)v8->_peerManager sendRequest:v9];

  objc_sync_exit(v8);
}

- (void)stopMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  [(NSCountedSet *)v8->_monitoringPeers removeObject:v6];
  if (![(NSCountedSet *)v8->_monitoringPeers countForObject:v6])
  {
    v9 = objc_alloc_init(W5PeerGenericRequest);
    [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.faults"];
    [(W5PeerGenericRequest *)v9 setPeer:v6];
    [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
    -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [v6 controlFlags]);
    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:&off_1000EFB30 forKeyedSubscript:@"Type"];
    v11 = [(W5FaultEventManager *)v8 localPeer];
    [v10 setObject:v11 forKeyedSubscript:@"RequestPeer"];

    [v10 setObject:v6 forKeyedSubscript:@"ResponsePeer"];
    [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000894BC;
    v13[3] = &unk_1000E33D0;
    v14 = v7;
    [(W5PeerGenericRequest *)v9 setResponseHandler:v13];
    v12 = [(W5PeerManager *)v8->_peerManager sendRequest:v9];
  }

  objc_sync_exit(v8);
}

- (void)queryFaultEventCacheForPeer:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v8 setIdentifier:@"com.apple.wifi.peer.faults"];
  [(W5PeerGenericRequest *)v8 setPeer:v7];
  [(W5PeerGenericRequest *)v8 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v8, "setControlFlags:", [v7 controlFlags]);
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:&off_1000EFB48 forKeyedSubscript:@"Type"];
  v10 = [(W5FaultEventManager *)self localPeer];
  [v9 setObject:v10 forKeyedSubscript:@"RequestPeer"];

  [v9 setObject:v7 forKeyedSubscript:@"ResponsePeer"];
  [(W5PeerGenericRequest *)v8 setRequestInfo:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100089664;
  v13[3] = &unk_1000E33D0;
  v14 = v6;
  v11 = v6;
  [(W5PeerGenericRequest *)v8 setResponseHandler:v13];
  v12 = [(W5PeerManager *)self->_peerManager sendRequest:v8];
}

- (void)__archiveNotifyPeers
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventNotifyPeers"];

  v6 = [(NSMutableSet *)self->_notifyPeers copy];
  v12 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
  v9 = [v7 writeToURL:v5 options:1 error:&v11];
  v8 = v11;
  if ((v9 & 1) == 0)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
LABEL_7:
      _os_log_send_and_compose_impl();
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)__unarchiveNotifyPeers
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventNotifyPeers"];

  v6 = [[NSData alloc] initWithContentsOfURL:v5];
  if ([v6 length])
  {
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v12 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v12];
    v10 = v12;

    if (v9)
    {
      [(NSMutableSet *)self->_notifyPeers unionSet:v9];
    }

    else
    {
      v11 = sub_100098A04();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v10;
        _os_log_send_and_compose_impl();
      }
    }
  }
}

- (void)__archiveEventCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventCache"];

  v6 = [(NSMutableOrderedSet *)self->_faultEventCache copy];
  v12 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
  v9 = [v7 writeToURL:v5 options:1 error:&v11];
  v8 = v11;
  if ((v9 & 1) == 0)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
LABEL_7:
      _os_log_send_and_compose_impl();
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)__unarchiveEventCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventCache"];

  v6 = [[NSData alloc] initWithContentsOfURL:v5];
  if ([v6 length])
  {
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v13];
    v10 = v13;

    if (v9)
    {
      faultEventCache = self->_faultEventCache;
      v12 = [v9 set];
      [(NSMutableOrderedSet *)faultEventCache unionSet:v12];
    }

    else
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v10;
        _os_log_send_and_compose_impl();
      }
    }
  }
}

- (void)__purgeObsoleteFaultEvents
{
  v2 = [(NSMutableOrderedSet *)self->_faultEventCache array];
  v3 = [v2 mutableCopy];

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v21 = [NSSortDescriptor sortDescriptorWithKey:0 ascending:0 comparator:&stru_1000E3410];
  v24 = v21;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  [v3 sortUsingDescriptors:v6];

  v7 = +[NSMutableIndexSet indexSet];
  v8 = +[NSCountedSet set];
  if ([v3 count])
  {
    v9 = 0;
    v23 = v3;
    do
    {
      v10 = [v3 objectAtIndexedSubscript:v9];
      [v10 timestamp];
      if (v5 - v11 <= 86400.0)
      {
        v12 = v7;
        v13 = [v10 peer];
        v14 = [v13 peerID];
        v15 = [v10 info];
        v16 = [v15 objectForKeyedSubscript:@"FaultType"];
        v17 = [NSString stringWithFormat:@"%@/%@", v14, v16];

        v18 = [v8 countForObject:v17];
        if (v18 && ((v19 = v18, [v10 timestamp], v5 - v20 > 3600.0) || v19 >= 0xA))
        {
          v7 = v12;
          [v12 addIndex:v9];
        }

        else
        {
          [v8 addObject:v17];
          v7 = v12;
        }

        v3 = v23;
      }

      else
      {
        [v7 addIndex:v9];
      }

      ++v9;
    }

    while (v9 < [v3 count]);
  }

  if ([v7 count])
  {
    [v3 removeObjectsAtIndexes:v7];
  }

  if ([v3 count] >= 0x65)
  {
    [v3 removeObjectsInRange:{100, objc_msgSend(v3, "count") - 100}];
  }

  [(NSMutableOrderedSet *)self->_faultEventCache removeAllObjects];
  [(NSMutableOrderedSet *)self->_faultEventCache addObjectsFromArray:v3];
}

- (void)__addFaultEvent:(id)a3
{
  v4 = a3;
  faultEventCache = self->_faultEventCache;
  v8 = v4;
  if (!faultEventCache)
  {
    v6 = +[NSMutableOrderedSet orderedSet];
    v7 = self->_faultEventCache;
    self->_faultEventCache = v6;

    [(W5FaultEventManager *)self __unarchiveEventCache];
    v4 = v8;
    faultEventCache = self->_faultEventCache;
  }

  [(NSMutableOrderedSet *)faultEventCache addObject:v4];
  [(W5FaultEventManager *)self __purgeObsoleteFaultEvents];
  [(W5FaultEventManager *)self __archiveEventCache];
}

- (void)notifyPeersWithFaultEvent:(id)a3 info:(id)a4
{
  v6 = a3;
  v43 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (!v7->_notifyPeers)
  {
    v8 = +[NSMutableSet set];
    notifyPeers = v7->_notifyPeers;
    v7->_notifyPeers = v8;

    [(W5FaultEventManager *)v7 __unarchiveNotifyPeers];
  }

  v10 = [v6 info];
  v11 = [v10 objectForKeyedSubscript:@"FaultType"];
  v12 = [v11 integerValue];

  v13 = [(W5FaultEventManager *)v7 diagnosticsModeManager];
  v14 = [v13 registeredPeersForFaultType:v12];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
  if (v15)
  {
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        v19 = [v18 peer];
        v20 = v19 == 0;

        if (v20)
        {
          v22 = sub_100098A04();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v57 = 136315906;
            v58 = "[W5FaultEventManager notifyPeersWithFaultEvent:info:]";
            v59 = 2080;
            v60 = "W5FaultEventManager.m";
            v61 = 1024;
            v62 = 388;
            v63 = 2114;
            v64 = v18;
            LODWORD(v40) = 38;
            v39 = &v57;
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          v21 = v7->_notifyPeers;
          v22 = [v18 peer];
          [(NSMutableSet *)v21 addObject:v22];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
    }

    while (v15);
  }

  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v23 = [(NSMutableSet *)v7->_notifyPeers copy];
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v67 count:16];
  if (v24)
  {
    v44 = *v50;
    v41 = v23;
    do
    {
      v45 = v24;
      for (j = 0; j != v45; j = j + 1)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v26 = *(*(&v49 + 1) + 8 * j);
        v27 = objc_alloc_init(W5PeerGenericRequest);
        [(W5PeerGenericRequest *)v27 setIdentifier:@"com.apple.wifi.peer.faults"];
        [(W5PeerGenericRequest *)v27 setPeer:v26];
        [(W5PeerGenericRequest *)v27 setDiscoveryFlags:1];
        [(W5PeerGenericRequest *)v27 setControlFlags:0];
        v28 = +[NSMutableDictionary dictionary];
        [v28 setObject:&off_1000EFB60 forKeyedSubscript:@"Type"];
        v29 = [(W5FaultEventManager *)v7 localPeer];
        [v28 setObject:v29 forKeyedSubscript:@"RequestPeer"];

        [v28 setObject:v26 forKeyedSubscript:@"ResponsePeer"];
        v30 = [v6 copy];
        v31 = [v6 info];
        if (v31)
        {
          v32 = [v6 info];
          v33 = [v32 mutableCopy];
        }

        else
        {
          v33 = +[NSMutableDictionary dictionary];
        }

        v34 = [(W5FaultEventManager *)v7 diagnosticsModeManager];
        v35 = [v34 registeredRoleForPeer:v26] == 16;

        if (v35)
        {
          v36 = [v26 peerID];
          [v33 setObject:v36 forKeyedSubscript:@"RemoteListener"];

          if (v43)
          {
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_10008A91C;
            v47[3] = &unk_1000E3438;
            v48 = v33;
            [v43 enumerateKeysAndObjectsUsingBlock:v47];
          }
        }

        [v30 setInfo:{v33, v39, v40}];
        [v28 setObject:v30 forKeyedSubscript:@"Event"];
        [(W5PeerGenericRequest *)v27 setRequestInfo:v28];
        v37 = sub_100098A04();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v57 = 136316162;
          v58 = "[W5FaultEventManager notifyPeersWithFaultEvent:info:]";
          v59 = 2080;
          v60 = "W5FaultEventManager.m";
          v61 = 1024;
          v62 = 424;
          v63 = 2112;
          v64 = v26;
          v65 = 2112;
          v66 = v30;
          LODWORD(v40) = 48;
          v39 = &v57;
          _os_log_send_and_compose_impl();
        }

        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10008A928;
        v46[3] = &unk_1000E3460;
        v46[4] = v7;
        v46[5] = v26;
        [(W5PeerGenericRequest *)v27 setResponseHandler:v46];
        v38 = [(W5PeerManager *)v7->_peerManager sendRequest:v27];
      }

      v23 = v41;
      v24 = [v41 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v24);
  }

  objc_sync_exit(v7);
}

- (void)submitFaultEvent:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(W5FaultEventManager *)v4 localPeer];
  [v7 setPeer:v5];

  [(W5FaultEventManager *)v4 __addFaultEvent:v7];
  v6 = [(W5FaultEventManager *)v4 faultEventHandler];
  (v6)[2](v6, v7);

  objc_sync_exit(v4);
}

- (id)faultEventCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_faultEventCache)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    faultEventCache = v2->_faultEventCache;
    v2->_faultEventCache = v3;

    [(W5FaultEventManager *)v2 __unarchiveEventCache];
  }

  [(W5FaultEventManager *)v2 __purgeObsoleteFaultEvents];
  if (v2->_faultEventCache)
  {
    v5 = [NSArray alloc];
    v6 = [(NSMutableOrderedSet *)v2->_faultEventCache array];
    v7 = [v5 initWithArray:v6 copyItems:1];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v2);

  return v7;
}

@end