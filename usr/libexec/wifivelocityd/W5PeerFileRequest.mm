@interface W5PeerFileRequest
- (W5PeerFileRequest)initWithPeer:(id)a3 requestType:(int64_t)a4 remotePath:(id)a5 transferManager:(id)a6 reply:(id)a7;
- (int64_t)controlFlags;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerFileRequest

- (W5PeerFileRequest)initWithPeer:(id)a3 requestType:(int64_t)a4 remotePath:(id)a5 transferManager:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = NSRandomData();
  v17 = [v16 bytes];
  v18 = [v16 length];
  v34 = [v16 length];
  v33 = v17;
  v19 = v13;
  v20 = NSPrintF();
  targetID = self->_targetID;
  self->_targetID = v20;

  v36.receiver = self;
  v36.super_class = W5PeerFileRequest;
  v22 = [(W5PeerFileRequest *)&v36 init:v33];
  v23 = v22;
  if (v12 && v22 && (objc_storeStrong(&v22->_peer, a3), v15) && (v24 = objc_retainBlock(v15), reply = v23->_reply, v23->_reply = v24, reply, v13) && v14 && (objc_storeStrong(&v23->_transferManager, a6), v23->_targetID))
  {
    identifier = v23->_identifier;
    v23->_discoveryFlags = 1;
    v23->_identifier = @"com.apple.wifi.peer.fileTransfer";

    v27 = objc_alloc_init(W5PeerFileTransferRequestPayload);
    requestPayload = v23->_requestPayload;
    v23->_requestPayload = v27;

    v29 = [(W5PeerFileRequest *)v23 _currentVersion];
    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setVersion:v29];

    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setRemotePath:v13];
    [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setType:a4];
    if (a4 == 1)
    {
      [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setTargetID:v23->_targetID];
      v30 = [(W5FileTransferManager *)v23->_transferManager publicKeySelf];
      [(W5PeerFileTransferRequestPayload *)v23->_requestPayload setPublicKey:v30];

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

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = [(W5PeerFileRequest *)self reply];
    v7 = [v4 error];
    v6[2](v6, v7, 0);
LABEL_12:

    goto LABEL_13;
  }

  v6 = [v4 payload];
  if ([v6 status] != 1)
  {
    v16 = [v6 error];

    v7 = [(W5PeerFileRequest *)self reply];
    if (!v16)
    {
      v20 = NSLocalizedFailureReasonErrorKey;
      v21 = @"W5PeerFileResponseUndefinedError";
      v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:12 userInfo:v17];
      (v7)[2](v7, v18, 0);

      goto LABEL_12;
    }

    v15 = [v6 error];
    (v7)[2](v7, v15, 0);
    goto LABEL_10;
  }

  v8 = [v6 publicKey];

  if (v8)
  {
    transferManager = self->_transferManager;
    v10 = [v6 publicKey];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014F9C;
    v19[3] = &unk_1000E1678;
    v19[4] = self;
    [(W5FileTransferManager *)transferManager startW5FileReceiverWithPeerPublicKey:v10 reply:v19];

    v11 = [[NSURL alloc] initFileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v12 = [NSString stringWithFormat:@"%@.rpftd", self->_targetID];
    v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:1];
  }

  v14 = [v6 files];

  if (v14)
  {
    v7 = [(W5PeerFileRequest *)self reply];
    v15 = [v6 files];
    (v7)[2](v7, 0, v15);
LABEL_10:

    goto LABEL_12;
  }

LABEL_13:
}

- (int64_t)controlFlags
{
  v2 = [(W5PeerFileRequest *)self peer];
  v3 = [v2 controlFlags];

  return v3;
}

@end