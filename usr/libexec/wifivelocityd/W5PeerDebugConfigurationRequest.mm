@interface W5PeerDebugConfigurationRequest
- (W5PeerDebugConfigurationRequest)initWithPeer:(id)peer type:(unint64_t)type debugConfiguration:(id)configuration reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerDebugConfigurationRequest

- (W5PeerDebugConfigurationRequest)initWithPeer:(id)peer type:(unint64_t)type debugConfiguration:(id)configuration reply:(id)reply
{
  peerCopy = peer;
  configurationCopy = configuration;
  replyCopy = reply;
  v24.receiver = self;
  v24.super_class = W5PeerDebugConfigurationRequest;
  v14 = [(W5PeerDebugConfigurationRequest *)&v24 init];
  v15 = v14;
  if (peerCopy && v14 && (objc_storeStrong(&v14->_peer, peer), replyCopy))
  {
    v16 = objc_retainBlock(replyCopy);
    reply = v15->_reply;
    v15->_reply = v16;

    v15->_type = type;
    v15->_discoveryFlags = 1;
    identifier = v15->_identifier;
    v15->_identifier = @"com.apple.wifi.peer.debugConfiguration";

    v19 = objc_alloc_init(W5PeerDebugRequestPayload);
    requestPayload = v15->_requestPayload;
    v15->_requestPayload = v19;

    _currentVersion = [(W5PeerDebugConfigurationRequest *)v15 _currentVersion];
    [(W5PeerDebugRequestPayload *)v15->_requestPayload setVersion:_currentVersion];

    [(W5PeerDebugRequestPayload *)v15->_requestPayload setRequestType:v15->_type];
    if (configurationCopy)
    {
      [(W5PeerDebugRequestPayload *)v15->_requestPayload setConfiguration:configurationCopy];
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

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];
  payload = [responseCopy payload];

  if (error || [(W5PeerDebugConfigurationRequest *)self type]!= 1)
  {
    configuration = 0;
  }

  else
  {
    configuration = [payload configuration];
  }

  reply = [(W5PeerDebugConfigurationRequest *)self reply];

  if (reply)
  {
    reply2 = [(W5PeerDebugConfigurationRequest *)self reply];
    (reply2)[2](reply2, error, configuration);
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerDebugConfigurationRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end