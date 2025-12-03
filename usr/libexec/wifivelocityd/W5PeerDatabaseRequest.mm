@interface W5PeerDatabaseRequest
- (W5PeerDatabaseRequest)initWithPeer:(id)peer fetch:(id)fetch reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerDatabaseRequest

- (W5PeerDatabaseRequest)initWithPeer:(id)peer fetch:(id)fetch reply:(id)reply
{
  peerCopy = peer;
  fetchCopy = fetch;
  replyCopy = reply;
  v22.receiver = self;
  v22.super_class = W5PeerDatabaseRequest;
  v12 = [(W5PeerDatabaseRequest *)&v22 init];
  v13 = v12;
  if (peerCopy && v12 && (objc_storeStrong(&v12->_peer, peer), fetchCopy) && (objc_storeStrong(&v13->_fetch, fetch), replyCopy))
  {
    v14 = objc_retainBlock(replyCopy);
    reply = v13->_reply;
    v13->_reply = v14;

    identifier = v13->_identifier;
    v13->_discoveryFlags = 1;
    v13->_identifier = @"com.apple.wifi.peer.dbQuery";

    v17 = objc_alloc_init(W5PeerDatabaseRequestPayload);
    requestPayload = v13->_requestPayload;
    v13->_requestPayload = v17;

    _currentVersion = [(W5PeerDatabaseRequest *)v13 _currentVersion];
    [(W5PeerDatabaseRequestPayload *)v13->_requestPayload setVersion:_currentVersion];

    [(W5PeerDatabaseRequestPayload *)v13->_requestPayload setFetchRequest:v13->_fetch];
  }

  else
  {

    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[W5PeerDatabaseRequest initWithPeer:fetch:reply:]";
      _os_log_send_and_compose_impl();
    }

    v13 = 0;
  }

  return v13;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    payload = [responseCopy payload];
    fetchedResults = [payload fetchedResults];
    if ([payload status] == 1)
    {
      v8 = sub_100098A04();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (fetchedResults)
      {
        if (v9)
        {
          v23 = 136316162;
          v24 = "[W5PeerDatabaseRequest handleResponse:]";
          v25 = 2080;
          v26 = "W5PeerDatabaseRequest.m";
          v27 = 1024;
          v28 = 69;
          v29 = 2080;
          v30 = "[W5PeerDatabaseRequest handleResponse:]";
          v31 = 2048;
          v32 = [fetchedResults count];
          _os_log_send_and_compose_impl();
        }

        reply = [(W5PeerDatabaseRequest *)self reply];
        (reply)[2](reply, 0, fetchedResults);
        goto LABEL_15;
      }

      if (v9)
      {
        peer = [(W5PeerDatabaseRequest *)self peer];
        v23 = 136316162;
        v24 = "[W5PeerDatabaseRequest handleResponse:]";
        v25 = 2080;
        v26 = "W5PeerDatabaseRequest.m";
        v27 = 1024;
        v28 = 72;
        v29 = 2080;
        v30 = "[W5PeerDatabaseRequest handleResponse:]";
        v31 = 2112;
        v32 = peer;
        LODWORD(v18) = 48;
        v17 = &v23;
        _os_log_send_and_compose_impl();
      }

      reply = [(W5PeerDatabaseRequest *)self reply];
      v21 = NSLocalizedFailureReasonErrorKey;
      v22 = @"W5NoErr";
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = 0;
    }

    else
    {
      v11 = sub_100098A04();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        peer2 = [(W5PeerDatabaseRequest *)self peer];
        v23 = 136316162;
        v24 = "[W5PeerDatabaseRequest handleResponse:]";
        v25 = 2080;
        v26 = "W5PeerDatabaseRequest.m";
        v27 = 1024;
        v28 = 76;
        v29 = 2080;
        v30 = "[W5PeerDatabaseRequest handleResponse:]";
        v31 = 2112;
        v32 = peer2;
        LODWORD(v18) = 48;
        v17 = &v23;
        _os_log_send_and_compose_impl();
      }

      reply = [(W5PeerDatabaseRequest *)self reply];
      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"W5PeerDatabaseResponseUndefinedError";
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = 14;
    }

    v16 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:v14 userInfo:v13, v17, v18];
    (reply)[2](reply, v16, 0);

LABEL_15:
    goto LABEL_16;
  }

  payload = [(W5PeerDatabaseRequest *)self reply];
  fetchedResults = [responseCopy error];
  (payload)[2](payload, fetchedResults, 0);
LABEL_16:
}

- (int64_t)controlFlags
{
  peer = [(W5PeerDatabaseRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end