@interface W5PeerDiagnosticsRequest
- (W5PeerDiagnosticsRequest)initWithPeer:(id)a3 diagnostics:(id)a4 configuration:(id)a5 uuid:(id)a6 reply:(id)a7;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerDiagnosticsRequest

- (W5PeerDiagnosticsRequest)initWithPeer:(id)a3 diagnostics:(id)a4 configuration:(id)a5 uuid:(id)a6 reply:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = W5PeerDiagnosticsRequest;
  v18 = [(W5PeerDiagnosticsRequest *)&v28 init];
  v19 = v18;
  if (v18 && (objc_storeStrong(&v18->_peer, a3), v13) && (v20 = objc_retainBlock(v17), reply = v19->_reply, v19->_reply = v20, reply, v17))
  {
    identifier = v19->_identifier;
    v19->_discoveryFlags = 1;
    v19->_identifier = @"com.apple.wifi.peer.peerDiagnostics";

    v23 = objc_alloc_init(W5PeerDiagnosticsRequestPayload);
    requestPayload = v19->_requestPayload;
    v19->_requestPayload = v23;

    v25 = [(W5PeerDiagnosticsRequest *)v19 _currentVersion];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setVersion:v25];

    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setConfiguration:v15];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setTests:v14];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setUuid:v16];
  }

  else
  {

    v27 = sub_100098A04();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315650;
      v30 = "[W5PeerDiagnosticsRequest initWithPeer:diagnostics:configuration:uuid:reply:]";
      v31 = 2080;
      v32 = "W5PeerDiagnosticsRequest.m";
      v33 = 1024;
      v34 = 53;
      _os_log_send_and_compose_impl();
    }

    v19 = 0;
  }

  return v19;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = [(W5PeerDiagnosticsRequest *)self reply];
    v7 = [v4 error];
    (v6)[2](v6, v7, 0);
  }

  else
  {
    v8 = [v4 payload];
    v9 = [v8 results];
    if (!v9)
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 payload];
        v17 = 136315906;
        v18 = "[W5PeerDiagnosticsRequest handleResponse:]";
        v19 = 2080;
        v20 = "W5PeerDiagnosticsRequest.m";
        v21 = 1024;
        v22 = 66;
        v23 = 2114;
        v24 = v11;
        LODWORD(v16) = 38;
        v15 = &v17;
        _os_log_send_and_compose_impl();
      }

      v12 = [v8 error];
      v13 = [(W5PeerDiagnosticsRequest *)self reply];
      (v13)[2](v13, v12, 0);
    }

    v14 = [(W5PeerDiagnosticsRequest *)self reply:v15];
    (v14)[2](v14, 0, v9);
  }
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerDiagnosticsRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end