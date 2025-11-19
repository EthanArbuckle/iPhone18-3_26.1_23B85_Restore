@interface W5PeerDatabaseRequest
- (W5PeerDatabaseRequest)initWithPeer:(id)a3 fetch:(id)a4 reply:(id)a5;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerDatabaseRequest

- (W5PeerDatabaseRequest)initWithPeer:(id)a3 fetch:(id)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = W5PeerDatabaseRequest;
  v12 = [(W5PeerDatabaseRequest *)&v22 init];
  v13 = v12;
  if (v9 && v12 && (objc_storeStrong(&v12->_peer, a3), v10) && (objc_storeStrong(&v13->_fetch, a4), v11))
  {
    v14 = objc_retainBlock(v11);
    reply = v13->_reply;
    v13->_reply = v14;

    identifier = v13->_identifier;
    v13->_discoveryFlags = 1;
    v13->_identifier = @"com.apple.wifi.peer.dbQuery";

    v17 = objc_alloc_init(W5PeerDatabaseRequestPayload);
    requestPayload = v13->_requestPayload;
    v13->_requestPayload = v17;

    v19 = [(W5PeerDatabaseRequest *)v13 _currentVersion];
    [(W5PeerDatabaseRequestPayload *)v13->_requestPayload setVersion:v19];

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

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (!v5)
  {
    v6 = [v4 payload];
    v7 = [v6 fetchedResults];
    if ([v6 status] == 1)
    {
      v8 = sub_100098A04();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
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
          v32 = [v7 count];
          _os_log_send_and_compose_impl();
        }

        v10 = [(W5PeerDatabaseRequest *)self reply];
        (v10)[2](v10, 0, v7);
        goto LABEL_15;
      }

      if (v9)
      {
        v15 = [(W5PeerDatabaseRequest *)self peer];
        v23 = 136316162;
        v24 = "[W5PeerDatabaseRequest handleResponse:]";
        v25 = 2080;
        v26 = "W5PeerDatabaseRequest.m";
        v27 = 1024;
        v28 = 72;
        v29 = 2080;
        v30 = "[W5PeerDatabaseRequest handleResponse:]";
        v31 = 2112;
        v32 = v15;
        LODWORD(v18) = 48;
        v17 = &v23;
        _os_log_send_and_compose_impl();
      }

      v10 = [(W5PeerDatabaseRequest *)self reply];
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
        v12 = [(W5PeerDatabaseRequest *)self peer];
        v23 = 136316162;
        v24 = "[W5PeerDatabaseRequest handleResponse:]";
        v25 = 2080;
        v26 = "W5PeerDatabaseRequest.m";
        v27 = 1024;
        v28 = 76;
        v29 = 2080;
        v30 = "[W5PeerDatabaseRequest handleResponse:]";
        v31 = 2112;
        v32 = v12;
        LODWORD(v18) = 48;
        v17 = &v23;
        _os_log_send_and_compose_impl();
      }

      v10 = [(W5PeerDatabaseRequest *)self reply];
      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"W5PeerDatabaseResponseUndefinedError";
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = 14;
    }

    v16 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:v14 userInfo:v13, v17, v18];
    (v10)[2](v10, v16, 0);

LABEL_15:
    goto LABEL_16;
  }

  v6 = [(W5PeerDatabaseRequest *)self reply];
  v7 = [v4 error];
  (v6)[2](v6, v7, 0);
LABEL_16:
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerDatabaseRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end