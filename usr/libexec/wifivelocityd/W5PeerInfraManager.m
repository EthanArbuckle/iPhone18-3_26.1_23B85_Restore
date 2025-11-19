@interface W5PeerInfraManager
- (W5PeerInfraManager)initWithPeerManager:(id)a3 statusManager:(id)a4;
- (id)_requestHandler;
- (id)associateToNetwork:(id)a3 peer:(id)a4 configuration:(id)a5 reply:(id)a6;
- (id)startNetworkDiscovery:(id)a3 reply:(id)a4;
@end

@implementation W5PeerInfraManager

- (W5PeerInfraManager)initWithPeerManager:(id)a3 statusManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = W5PeerInfraManager;
  v9 = [(W5PeerInfraManager *)&v16 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_peerManager, a3), v10->_peerManager) && (objc_storeStrong(&v10->_statusManager, a4), v10->_statusManager) && (v11 = objc_alloc_init(W5PeerGenericRequestListener), listener = v10->_listener, v10->_listener = v11, listener, (v13 = v10->_listener) != 0))
  {
    [(W5PeerGenericRequestListener *)v13 setIdentifier:@"com.apple.wifi.peer.infra"];
    v14 = [(W5PeerInfraManager *)v10 _requestHandler];
    [(W5PeerGenericRequestListener *)v10->_listener setRequestHandler:v14];
  }

  else
  {

    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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

- (id)startNetworkDiscovery:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.infra"];
  [(W5PeerGenericRequest *)v9 setPeer:v6];
  [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [v6 controlFlags]);
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1000EFBF0 forKeyedSubscript:@"Type"];
  [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100097F98;
  v14[3] = &unk_1000E33D0;
  v11 = v7;
  v15 = v11;
  [(W5PeerGenericRequest *)v9 setResponseHandler:v14];
  v12 = [(W5PeerManager *)v8->_peerManager sendRequest:v9];

  objc_sync_exit(v8);

  return v12;
}

- (id)associateToNetwork:(id)a3 peer:(id)a4 configuration:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  v15 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v15 setIdentifier:@"com.apple.wifi.peer.infra"];
  [(W5PeerGenericRequest *)v15 setPeer:v11];
  [(W5PeerGenericRequest *)v15 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v15, "setControlFlags:", [v11 controlFlags]);
  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:&off_1000EFC08 forKeyedSubscript:@"Type"];
  [v16 setObject:v10 forKeyedSubscript:@"JoinTarget"];
  if (v12)
  {
    v17 = [v12 objectForKey:@"JoinPassword"];
    [v16 setObject:v17 forKeyedSubscript:@"JoinPassword"];
  }

  [(W5PeerGenericRequest *)v15 setRequestInfo:v16];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009824C;
  v21[3] = &unk_1000E33D0;
  v18 = v13;
  v22 = v18;
  [(W5PeerGenericRequest *)v15 setResponseHandler:v21];
  v19 = [(W5PeerManager *)v14->_peerManager sendRequest:v15];

  objc_sync_exit(v14);

  return v19;
}

@end