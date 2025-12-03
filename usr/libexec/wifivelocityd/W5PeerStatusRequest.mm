@interface W5PeerStatusRequest
- (W5PeerStatusRequest)initWithPeer:(id)peer reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerStatusRequest

- (W5PeerStatusRequest)initWithPeer:(id)peer reply:(id)reply
{
  peerCopy = peer;
  replyCopy = reply;
  v18.receiver = self;
  v18.super_class = W5PeerStatusRequest;
  v9 = [(W5PeerStatusRequest *)&v18 init];
  v10 = v9;
  if (peerCopy && v9 && (objc_storeStrong(&v9->_peer, peer), replyCopy))
  {
    v11 = objc_retainBlock(replyCopy);
    reply = v10->_reply;
    v10->_reply = v11;

    identifier = v10->_identifier;
    v10->_discoveryFlags = 1;
    v10->_identifier = @"com.apple.wifi.peer.connectionState";

    v14 = objc_alloc_init(W5PeerStatusRequestPayload);
    requestPayload = v10->_requestPayload;
    v10->_requestPayload = v14;

    _currentVersion = [(W5PeerStatusRequest *)v10 _currentVersion];
    [(W5PeerStatusRequestPayload *)v10->_requestPayload setVersion:_currentVersion];
  }

  else
  {

    _currentVersion = sub_100098A04();
    if (os_log_type_enabled(_currentVersion, OS_LOG_TYPE_DEFAULT))
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

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerStatusRequest *)self reply];
    error2 = [responseCopy error];
    (reply)[2](reply, error2, 0);
  }

  else
  {
    reply = [responseCopy payload];
    error2 = [reply peerStatus];
    status = [reply status];
    v9 = sub_100098A04();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (status == 1 && error2)
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
        v23 = error2;
        _os_log_send_and_compose_impl();
      }

      reply2 = [(W5PeerStatusRequest *)self reply];
      (reply2)[2](reply2, 0, error2);
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

      reply2 = [(W5PeerStatusRequest *)self reply];
      v14 = NSLocalizedFailureReasonErrorKey;
      v15 = @"W5PeerStatusResponseUndefinedError";
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:15 userInfo:v12];
      (reply2)[2](reply2, v13, 0);
    }
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerStatusRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end