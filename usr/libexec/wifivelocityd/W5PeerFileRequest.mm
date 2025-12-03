@interface W5PeerFileRequest
- (W5PeerFileRequest)initWithPeer:(id)peer requestType:(int64_t)type remotePath:(id)path transferManager:(id)manager reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerFileRequest

- (W5PeerFileRequest)initWithPeer:(id)peer requestType:(int64_t)type remotePath:(id)path transferManager:(id)manager reply:(id)reply
{
  peerCopy = peer;
  pathCopy = path;
  managerCopy = manager;
  replyCopy = reply;
  v16 = NSRandomData();
  bytes = [v16 bytes];
  v18 = [v16 length];
  v34 = [v16 length];
  v33 = bytes;
  v19 = pathCopy;
  v20 = NSPrintF();
  targetID = self->_targetID;
  self->_targetID = v20;

  v36.receiver = self;
  v36.super_class = W5PeerFileRequest;
  v22 = [(W5PeerFileRequest *)&v36 init:v33];
  v23 = v22;
  if (peerCopy && v22 && (objc_storeStrong(&v22->_peer, peer), replyCopy) && (v24 = objc_retainBlock(replyCopy), reply = v23->_reply, v23->_reply = v24, reply, pathCopy) && managerCopy && (objc_storeStrong(&v23->_transferManager, manager), v23->_targetID))
  {
    identifier = v23->_identifier;
    v23->_discoveryFlags = 1;
    v23->_identifier = @"com.apple.wifi.peer.fileTransfer";

    v27 = objc_alloc_init(W5PeerFileTransferRequestPayload);
    requestPayload = v23->_requestPayload;
    v23->_requestPayload = v27;

    _currentVersion = [(W5PeerFileRequest *)v23 _currentVersion];
    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setVersion:_currentVersion];

    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setRemotePath:pathCopy];
    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setType:type];
    if (type == 1)
    {
      [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setTargetID:v23->_targetID];
      publicKeySelf = [(W5FileTransferManager *)v23->_transferManager publicKeySelf];
      [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setPublicKey:publicKeySelf];

      [(W5FileTransferManager *)v23->_transferManager initializeReceiverWithTargetID:v23->_targetID];
    }
  }

  else
  {

    v32 = sub_100098A04();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 136315650;
      v38 = "[W5PeerFileRequest initWithPeer:requestType:remotePath:transferManager:reply:]";
      v39 = 2080;
      v40 = "W5PeerFileRequest.m";
      v41 = 1024;
      v42 = 69;
      _os_log_send_and_compose_impl();
    }

    v23 = 0;
  }

  return v23;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerFileRequest *)self reply];
    error2 = [responseCopy error];
    reply[2](reply, error2, 0);
LABEL_12:

    goto LABEL_13;
  }

  reply = [responseCopy payload];
  if ([reply status] != 1)
  {
    error3 = [reply error];

    error2 = [(W5PeerFileRequest *)self reply];
    if (!error3)
    {
      v20 = NSLocalizedFailureReasonErrorKey;
      v21 = @"W5PeerFileResponseUndefinedError";
      v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:12 userInfo:v17];
      (error2)[2](error2, v18, 0);

      goto LABEL_12;
    }

    error4 = [reply error];
    (error2)[2](error2, error4, 0);
    goto LABEL_10;
  }

  publicKey = [reply publicKey];

  if (publicKey)
  {
    transferManager = self->_transferManager;
    publicKey2 = [reply publicKey];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014F9C;
    v19[3] = &unk_1000E1678;
    v19[4] = self;
    [(W5FileTransferManager *)transferManager startW5FileReceiverWithPeerPublicKey:publicKey2 reply:v19];

    v11 = [[NSURL alloc] initFileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v12 = [NSString stringWithFormat:@"%@.rpftd", self->_targetID];
    v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:1];
  }

  files = [reply files];

  if (files)
  {
    error2 = [(W5PeerFileRequest *)self reply];
    error4 = [reply files];
    (error2)[2](error2, 0, error4);
LABEL_10:

    goto LABEL_12;
  }

LABEL_13:
}

- (int64_t)controlFlags
{
  peer = [(W5PeerFileRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end