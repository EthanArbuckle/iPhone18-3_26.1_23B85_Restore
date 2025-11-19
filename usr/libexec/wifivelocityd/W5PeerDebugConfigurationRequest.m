@interface W5PeerDebugConfigurationRequest
- (W5PeerDebugConfigurationRequest)initWithPeer:(id)a3 type:(unint64_t)a4 debugConfiguration:(id)a5 reply:(id)a6;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerDebugConfigurationRequest

- (W5PeerDebugConfigurationRequest)initWithPeer:(id)a3 type:(unint64_t)a4 debugConfiguration:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = W5PeerDebugConfigurationRequest;
  v14 = [(W5PeerDebugConfigurationRequest *)&v24 init];
  v15 = v14;
  if (v11 && v14 && (objc_storeStrong(&v14->_peer, a3), v13))
  {
    v16 = objc_retainBlock(v13);
    reply = v15->_reply;
    v15->_reply = v16;

    v15->_type = a4;
    v15->_discoveryFlags = 1;
    identifier = v15->_identifier;
    v15->_identifier = @"com.apple.wifi.peer.debugConfiguration";

    v19 = objc_alloc_init(W5PeerDebugRequestPayload);
    requestPayload = v15->_requestPayload;
    v15->_requestPayload = v19;

    v21 = [(W5PeerDebugConfigurationRequest *)v15 _currentVersion];
    [(W5PeerDebugRequestPayload *)v15->_requestPayload setVersion:v21];

    [(W5PeerDebugRequestPayload *)v15->_requestPayload setRequestType:v15->_type];
    if (v12)
    {
      [(W5PeerDebugRequestPayload *)v15->_requestPayload setConfiguration:v12];
    }
  }

  else
  {

    v23 = sub_100098A04();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315650;
      v26 = "[W5PeerDebugConfigurationRequest initWithPeer:type:debugConfiguration:reply:]";
      v27 = 2080;
      v28 = "W5PeerDebugConfigurationRequest.m";
      v29 = 1024;
      v30 = 58;
      _os_log_send_and_compose_impl();
    }

    v15 = 0;
  }

  return v15;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v9 = [v4 error];
  v5 = [v4 payload];

  if (v9 || [(W5PeerDebugConfigurationRequest *)self type]!= 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 configuration];
  }

  v7 = [(W5PeerDebugConfigurationRequest *)self reply];

  if (v7)
  {
    v8 = [(W5PeerDebugConfigurationRequest *)self reply];
    (v8)[2](v8, v9, v6);
  }
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerDebugConfigurationRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end