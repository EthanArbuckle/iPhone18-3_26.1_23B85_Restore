@interface W5PeerInfraManager
- (W5PeerInfraManager)initWithPeerManager:(id)manager statusManager:(id)statusManager;
- (id)_requestHandler;
- (id)associateToNetwork:(id)network peer:(id)peer configuration:(id)configuration reply:(id)reply;
- (id)startNetworkDiscovery:(id)discovery reply:(id)reply;
@end

@implementation W5PeerInfraManager

- (W5PeerInfraManager)initWithPeerManager:(id)manager statusManager:(id)statusManager
{
  managerCopy = manager;
  statusManagerCopy = statusManager;
  v16.receiver = self;
  v16.super_class = W5PeerInfraManager;
  v9 = [(W5PeerInfraManager *)&v16 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_peerManager, manager), v10->_peerManager) && (objc_storeStrong(&v10->_statusManager, statusManager), v10->_statusManager) && (v11 = objc_alloc_init(W5PeerGenericRequestListener), listener = v10->_listener, v10->_listener = v11, listener, (v13 = v10->_listener) != 0))
  {
    [(W5PeerGenericRequestListener *)v13 setIdentifier:@"com.apple.wifi.peer.infra"];
    _requestHandler = [(W5PeerInfraManager *)v10 _requestHandler];
    [(W5PeerGenericRequestListener *)v10->_listener setRequestHandler:_requestHandler];
  }

  else
  {

    _requestHandler = sub_100098A04();
    if (os_log_type_enabled(_requestHandler, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[W5PeerInfraManager initWithPeerManager:statusManager:]";
      v19 = 2080;
      v20 = "W5PeerInfraManager.m";
      v21 = 1024;
      v22 = 59;
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  return v10;
}

- (id)_requestHandler
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000978F0;
  v5[3] = &unk_1000E3720;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)startNetworkDiscovery:(id)discovery reply:(id)reply
{
  discoveryCopy = discovery;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.infra"];
  [(W5PeerGenericRequest *)v9 setPeer:discoveryCopy];
  [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [discoveryCopy controlFlags]);
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1000EFBF0 forKeyedSubscript:@"Type"];
  [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100097F98;
  v14[3] = &unk_1000E33D0;
  v11 = replyCopy;
  v15 = v11;
  [(W5PeerGenericRequest *)v9 setResponseHandler:v14];
  v12 = [(W5PeerManager *)selfCopy->_peerManager sendRequest:v9];

  objc_sync_exit(selfCopy);

  return v12;
}

- (id)associateToNetwork:(id)network peer:(id)peer configuration:(id)configuration reply:(id)reply
{
  networkCopy = network;
  peerCopy = peer;
  configurationCopy = configuration;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v15 setIdentifier:@"com.apple.wifi.peer.infra"];
  [(W5PeerGenericRequest *)v15 setPeer:peerCopy];
  [(W5PeerGenericRequest *)v15 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v15, "setControlFlags:", [peerCopy controlFlags]);
  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:&off_1000EFC08 forKeyedSubscript:@"Type"];
  [v16 setObject:networkCopy forKeyedSubscript:@"JoinTarget"];
  if (configurationCopy)
  {
    v17 = [configurationCopy objectForKey:@"JoinPassword"];
    [v16 setObject:v17 forKeyedSubscript:@"JoinPassword"];
  }

  [(W5PeerGenericRequest *)v15 setRequestInfo:v16];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009824C;
  v21[3] = &unk_1000E33D0;
  v18 = replyCopy;
  v22 = v18;
  [(W5PeerGenericRequest *)v15 setResponseHandler:v21];
  v19 = [(W5PeerManager *)selfCopy->_peerManager sendRequest:v15];

  objc_sync_exit(selfCopy);

  return v19;
}

@end