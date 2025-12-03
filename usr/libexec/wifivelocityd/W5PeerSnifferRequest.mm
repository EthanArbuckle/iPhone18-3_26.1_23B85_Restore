@interface W5PeerSnifferRequest
- (W5PeerSnifferRequest)initWithPeer:(id)peer requestType:(int64_t)type duration:(double)duration uuid:(id)uuid channels:(id)channels config:(id)config reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerSnifferRequest

- (W5PeerSnifferRequest)initWithPeer:(id)peer requestType:(int64_t)type duration:(double)duration uuid:(id)uuid channels:(id)channels config:(id)config reply:(id)reply
{
  peerCopy = peer;
  uuidCopy = uuid;
  channelsCopy = channels;
  configCopy = config;
  replyCopy = reply;
  v33.receiver = self;
  v33.super_class = W5PeerSnifferRequest;
  v22 = [(W5PeerSnifferRequest *)&v33 init];
  v23 = v22;
  if (!peerCopy || !v22 || (objc_storeStrong(&v22->_peer, peer), !replyCopy) || (v24 = objc_retainBlock(replyCopy), reply = v23->_reply, v23->_reply = v24, reply, type == 1) && (!channelsCopy || [channelsCopy count] > 2))
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

  _currentVersion = [(W5PeerSnifferRequest *)v23 _currentVersion];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setVersion:_currentVersion];

  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setChannels:channelsCopy];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setDuration:duration];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setUuid:uuidCopy];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setType:type];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setNoAutoStop:0];
  if (configCopy)
  {
    v30 = [configCopy objectForKey:@"noAutoStop"];
    -[W5PeerSnifferRequestPayload setNoAutoStop:](v23->_requestPayload, "setNoAutoStop:", [v30 BOOLValue]);

    v31 = [configCopy objectForKey:@"rotationInterval"];
    [(W5PeerSnifferRequestPayload *)v23->_requestPayload setRotationInterval:[v31 integerValue]];
LABEL_9:
  }

  return v23;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerSnifferRequest *)self reply];
    error2 = [responseCopy error];
    reply[2](reply, error2, 0, 0, 0);
  }

  else
  {
    reply = [responseCopy payload];
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
      status = [reply status];
      LODWORD(v22) = 38;
      v21 = &v25;
      _os_log_send_and_compose_impl();
    }

    if ([reply status] == 1)
    {
      filePaths = [reply filePaths];
      if (filePaths && (v10 = filePaths, [reply uuid], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        v12 = sub_100098A04();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          filePaths2 = [reply filePaths];
          uuid = [reply uuid];
          v25 = 138543618;
          v26 = filePaths2;
          v27 = 2114;
          v28 = uuid;
          _os_log_send_and_compose_impl();
        }

        error2 = [(W5PeerSnifferRequest *)self reply];
        filePaths3 = [reply filePaths];
        uuid2 = [reply uuid];
        (error2)[2](error2, 0, 0, filePaths3, uuid2);
      }

      else
      {
        error2 = [(W5PeerSnifferRequest *)self reply:v21];
        error2[2](error2, 0, 0, 0, 0);
      }
    }

    else
    {
      v17 = sub_100098A04();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        peer = [(W5PeerSnifferRequest *)self peer];
        v25 = 138543362;
        v26 = peer;
        _os_log_send_and_compose_impl();
      }

      error2 = [(W5PeerSnifferRequest *)self reply];
      v23 = NSLocalizedFailureReasonErrorKey;
      v24 = @"W5PeerSnifferResponseUndefinedError";
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:13 userInfo:v19];
      (error2)[2](error2, v20, 0, 0, 0);
    }
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerSnifferRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end