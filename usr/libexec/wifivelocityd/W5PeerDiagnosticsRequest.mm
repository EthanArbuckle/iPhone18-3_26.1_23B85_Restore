@interface W5PeerDiagnosticsRequest
- (W5PeerDiagnosticsRequest)initWithPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerDiagnosticsRequest

- (W5PeerDiagnosticsRequest)initWithPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  peerCopy = peer;
  diagnosticsCopy = diagnostics;
  configurationCopy = configuration;
  uuidCopy = uuid;
  replyCopy = reply;
  v28.receiver = self;
  v28.super_class = W5PeerDiagnosticsRequest;
  v18 = [(W5PeerDiagnosticsRequest *)&v28 init];
  v19 = v18;
  if (v18 && (objc_storeStrong(&v18->_peer, peer), peerCopy) && (v20 = objc_retainBlock(replyCopy), reply = v19->_reply, v19->_reply = v20, reply, replyCopy))
  {
    identifier = v19->_identifier;
    v19->_discoveryFlags = 1;
    v19->_identifier = @"com.apple.wifi.peer.peerDiagnostics";

    v23 = objc_alloc_init(W5PeerDiagnosticsRequestPayload);
    requestPayload = v19->_requestPayload;
    v19->_requestPayload = v23;

    _currentVersion = [(W5PeerDiagnosticsRequest *)v19 _currentVersion];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setVersion:_currentVersion];

    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setConfiguration:configurationCopy];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setTests:diagnosticsCopy];
    [(W5PeerDiagnosticsRequestPayload *)v19->_requestPayload setUuid:uuidCopy];
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

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerDiagnosticsRequest *)self reply];
    error2 = [responseCopy error];
    (reply)[2](reply, error2, 0);
  }

  else
  {
    payload = [responseCopy payload];
    results = [payload results];
    if (!results)
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        payload2 = [responseCopy payload];
        v17 = 136315906;
        v18 = "[W5PeerDiagnosticsRequest handleResponse:]";
        v19 = 2080;
        v20 = "W5PeerDiagnosticsRequest.m";
        v21 = 1024;
        v22 = 66;
        v23 = 2114;
        v24 = payload2;
        LODWORD(v16) = 38;
        v15 = &v17;
        _os_log_send_and_compose_impl();
      }

      error3 = [payload error];
      reply2 = [(W5PeerDiagnosticsRequest *)self reply];
      (reply2)[2](reply2, error3, 0);
    }

    v14 = [(W5PeerDiagnosticsRequest *)self reply:v15];
    (v14)[2](v14, 0, results);
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerDiagnosticsRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end