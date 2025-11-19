@interface W5PeerSnifferRequest
- (W5PeerSnifferRequest)initWithPeer:(id)a3 requestType:(int64_t)a4 duration:(double)a5 uuid:(id)a6 channels:(id)a7 config:(id)a8 reply:(id)a9;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerSnifferRequest

- (W5PeerSnifferRequest)initWithPeer:(id)a3 requestType:(int64_t)a4 duration:(double)a5 uuid:(id)a6 channels:(id)a7 config:(id)a8 reply:(id)a9
{
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v33.receiver = self;
  v33.super_class = W5PeerSnifferRequest;
  v22 = [(W5PeerSnifferRequest *)&v33 init];
  v23 = v22;
  if (!v17 || !v22 || (objc_storeStrong(&v22->_peer, a3), !v21) || (v24 = objc_retainBlock(v21), reply = v23->_reply, v23->_reply = v24, reply, a4 == 1) && (!v19 || [v19 count] > 2))
  {

    v31 = sub_100098A04();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315650;
      v35 = "[W5PeerSnifferRequest initWithPeer:requestType:duration:uuid:channels:config:reply:]";
      v36 = 2080;
      v37 = "W5PeerSnifferRequest.m";
      v38 = 1024;
      v39 = 63;
      _os_log_send_and_compose_impl();
    }

    v23 = 0;
    goto LABEL_9;
  }

  identifier = v23->_identifier;
  v23->_discoveryFlags = 1;
  v23->_identifier = @"com.apple.wifi.peer.runSniffer";

  v27 = objc_alloc_init(W5PeerSnifferRequestPayload);
  requestPayload = v23->_requestPayload;
  v23->_requestPayload = v27;

  v29 = [(W5PeerSnifferRequest *)v23 _currentVersion];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setVersion:v29];

  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setChannels:v19];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setDuration:a5];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setUuid:v18];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setType:a4];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setNoAutoStop:0];
  if (v20)
  {
    v30 = [v20 objectForKey:@"noAutoStop"];
    -[W5PeerSnifferRequestPayload setNoAutoStop:](v23->_requestPayload, "setNoAutoStop:", [v30 BOOLValue]);

    v31 = [v20 objectForKey:@"rotationInterval"];
    [(W5PeerSnifferRequestPayload *)v23->_requestPayload setRotationInterval:[v31 integerValue]];
LABEL_9:
  }

  return v23;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = [(W5PeerSnifferRequest *)self reply];
    v7 = [v4 error];
    v6[2](v6, v7, 0, 0, 0);
  }

  else
  {
    v6 = [v4 payload];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315906;
      v26 = "[W5PeerSnifferRequest handleResponse:]";
      v27 = 2080;
      v28 = "W5PeerSnifferRequest.m";
      v29 = 1024;
      v30 = 76;
      v31 = 2048;
      v32 = [v6 status];
      LODWORD(v22) = 38;
      v21 = &v25;
      _os_log_send_and_compose_impl();
    }

    if ([v6 status] == 1)
    {
      v9 = [v6 filePaths];
      if (v9 && (v10 = v9, [v6 uuid], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        v12 = sub_100098A04();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v6 filePaths];
          v14 = [v6 uuid];
          v25 = 138543618;
          v26 = v13;
          v27 = 2114;
          v28 = v14;
          _os_log_send_and_compose_impl();
        }

        v7 = [(W5PeerSnifferRequest *)self reply];
        v15 = [v6 filePaths];
        v16 = [v6 uuid];
        (v7)[2](v7, 0, 0, v15, v16);
      }

      else
      {
        v7 = [(W5PeerSnifferRequest *)self reply:v21];
        v7[2](v7, 0, 0, 0, 0);
      }
    }

    else
    {
      v17 = sub_100098A04();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(W5PeerSnifferRequest *)self peer];
        v25 = 138543362;
        v26 = v18;
        _os_log_send_and_compose_impl();
      }

      v7 = [(W5PeerSnifferRequest *)self reply];
      v23 = NSLocalizedFailureReasonErrorKey;
      v24 = @"W5PeerSnifferResponseUndefinedError";
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:13 userInfo:v19];
      (v7)[2](v7, v20, 0, 0, 0);
    }
  }
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerSnifferRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end