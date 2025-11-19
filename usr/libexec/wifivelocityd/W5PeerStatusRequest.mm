@interface W5PeerStatusRequest
- (W5PeerStatusRequest)initWithPeer:(id)a3 reply:(id)a4;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerStatusRequest

- (W5PeerStatusRequest)initWithPeer:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = W5PeerStatusRequest;
  v9 = [(W5PeerStatusRequest *)&v18 init];
  v10 = v9;
  if (v7 && v9 && (objc_storeStrong(&v9->_peer, a3), v8))
  {
    v11 = objc_retainBlock(v8);
    reply = v10->_reply;
    v10->_reply = v11;

    identifier = v10->_identifier;
    v10->_discoveryFlags = 1;
    v10->_identifier = @"com.apple.wifi.peer.connectionState";

    v14 = objc_alloc_init(W5PeerStatusRequestPayload);
    requestPayload = v10->_requestPayload;
    v10->_requestPayload = v14;

    v16 = [(W5PeerStatusRequest *)v10 _currentVersion];
    [(W5PeerStatusRequestPayload *)v10->_requestPayload setVersion:v16];
  }

  else
  {

    v16 = sub_100098A04();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[W5PeerStatusRequest initWithPeer:reply:]";
      v21 = 2080;
      v22 = "W5PeerStatusRequest.m";
      v23 = 1024;
      v24 = 48;
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  return v10;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = [(W5PeerStatusRequest *)self reply];
    v7 = [v4 error];
    (v6)[2](v6, v7, 0);
  }

  else
  {
    v6 = [v4 payload];
    v7 = [v6 peerStatus];
    v8 = [v6 status];
    v9 = sub_100098A04();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 1 && v7)
    {
      if (v10)
      {
        v16 = 136315906;
        v17 = "[W5PeerStatusRequest handleResponse:]";
        v18 = 2080;
        v19 = "W5PeerStatusRequest.m";
        v20 = 1024;
        v21 = 62;
        v22 = 2114;
        v23 = v7;
        _os_log_send_and_compose_impl();
      }

      v11 = [(W5PeerStatusRequest *)self reply];
      (v11)[2](v11, 0, v7);
    }

    else
    {
      if (v10)
      {
        [(W5PeerStatusRequest *)self peer];
        v16 = 136315906;
        v17 = "[W5PeerStatusRequest handleResponse:]";
        v18 = 2080;
        v19 = "W5PeerStatusRequest.m";
        v20 = 1024;
        v21 = 65;
        v23 = v22 = 2114;
        _os_log_send_and_compose_impl();
      }

      v11 = [(W5PeerStatusRequest *)self reply];
      v14 = NSLocalizedFailureReasonErrorKey;
      v15 = @"W5PeerStatusResponseUndefinedError";
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:15 userInfo:v12];
      (v11)[2](v11, v13, 0);
    }
  }
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerStatusRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end