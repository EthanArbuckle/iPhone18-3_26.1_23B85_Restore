@interface W5FileTransferManager
- (W5FileTransferManager)init;
- (void)_setupWithTargetID:(id)a3;
- (void)_stop;
- (void)initializeReceiverWithTargetID:(id)a3;
- (void)initializeSenderWithTargetID:(id)a3 peerPublicKey:(id)a4;
- (void)startW5FileReceiverWithPeerPublicKey:(id)a3 reply:(id)a4;
- (void)startW5FileSenderForFile:(id)a3;
@end

@implementation W5FileTransferManager

- (W5FileTransferManager)init
{
  v8.receiver = self;
  v8.super_class = W5FileTransferManager;
  v2 = [(W5FileTransferManager *)&v8 init];
  v3 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity" isDirectory:1];
  tempDirPath = v2->_tempDirPath;
  v2->_tempDirPath = v3;

  v5 = dispatch_queue_create("com.apple.wifivelocity.file-transfer", 0);
  queue = v2->_queue;
  v2->_queue = v5;

  if (!v2->_queue)
  {

    return 0;
  }

  return v2;
}

- (void)_setupWithTargetID:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(RPFileTransferSession);
  session = self->_session;
  self->_session = v4;

  [(RPFileTransferSession *)self->_session setTemporaryDirectoryURL:self->_tempDirPath];
  [(RPFileTransferSession *)self->_session setDispatchQueue:self->_queue];
  [(RPFileTransferSession *)self->_session setTargetID:v6];
}

- (void)initializeReceiverWithTargetID:(id)a3
{
  v4 = a3;
  if (self->_session)
  {
    [(W5FileTransferManager *)self _stop];
  }

  [(W5FileTransferManager *)self _setupWithTargetID:v4];
  [(RPFileTransferSession *)self->_session setFlags:0];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 1];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x10];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x100];
  session = self->_session;
  v10 = 0;
  [(RPFileTransferSession *)session prepareTemplateAndReturnError:&v10];
  v6 = v10;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316162;
    v12 = "[W5FileTransferManager initializeReceiverWithTargetID:]";
    v13 = 2080;
    v14 = "W5FileTransferManager.m";
    v15 = 1024;
    v16 = 71;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v6;
    _os_log_send_and_compose_impl();
  }

  v8 = [(RPFileTransferSession *)self->_session selfPublicKey];
  publicKeySelf = self->_publicKeySelf;
  self->_publicKeySelf = v8;
}

- (void)initializeSenderWithTargetID:(id)a3 peerPublicKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_session)
  {
    [(W5FileTransferManager *)self _stop];
  }

  [(W5FileTransferManager *)self _setupWithTargetID:v6];
  [(RPFileTransferSession *)self->_session setFlags:0];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x10];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x100];
  [(RPFileTransferSession *)self->_session setPeerPublicKey:v7];
  session = self->_session;
  v13 = 0;
  [(RPFileTransferSession *)session prepareTemplateAndReturnError:&v13];
  v9 = v13;
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136316162;
    v15 = "[W5FileTransferManager initializeSenderWithTargetID:peerPublicKey:]";
    v16 = 2080;
    v17 = "W5FileTransferManager.m";
    v18 = 1024;
    v19 = 93;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    _os_log_send_and_compose_impl();
  }

  v11 = [(RPFileTransferSession *)self->_session selfPublicKey];
  publicKeySelf = self->_publicKeySelf;
  self->_publicKeySelf = v11;
}

- (void)startW5FileSenderForFile:(id)a3
{
  v4 = a3;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(RPFileTransferSession *)self->_session selfPublicKey];
    v12 = [(RPFileTransferSession *)self->_session peerPublicKey];
    _os_log_send_and_compose_impl();
  }

  [(RPFileTransferSession *)self->_session setCompletionHandler:&stru_1000E1568];
  [(RPFileTransferSession *)self->_session setProgressHandler:&stru_1000E15A8];
  [(RPFileTransferSession *)self->_session setReceivedItemHandler:&stru_1000E15E8];
  [(RPFileTransferSession *)self->_session activate];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v8 = objc_alloc_init(RPFileTransferItem);
  [v8 setItemURL:v4];
  v9 = [v4 path];
  v10 = [v9 lastPathComponent];
  [v8 setFilename:v10];

  [v8 setCompletionHandler:&stru_1000E1608];
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(RPFileTransferSession *)self->_session addItem:v8];
  [(RPFileTransferSession *)self->_session finish];
}

- (void)startW5FileReceiverWithPeerPublicKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  [(RPFileTransferSession *)self->_session setPeerPublicKey:a3];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(RPFileTransferSession *)self->_session selfPublicKey];
    [(RPFileTransferSession *)self->_session peerPublicKey];
    v13 = 136316162;
    v14 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]";
    v15 = 2080;
    v16 = "W5FileTransferManager.m";
    v17 = 1024;
    v18 = 147;
    v19 = 2114;
    v20 = v8;
    v22 = v21 = 2114;
    _os_log_send_and_compose_impl();
  }

  [(RPFileTransferSession *)self->_session setProgressHandler:&stru_1000E1628];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000145E4;
  v11[3] = &unk_1000E1650;
  v9 = v6;
  v12 = v9;
  [(RPFileTransferSession *)self->_session setReceivedItemHandler:v11];
  [(RPFileTransferSession *)self->_session activate];
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]";
    v15 = 2080;
    v16 = "W5FileTransferManager.m";
    v17 = 1024;
    v18 = 179;
    _os_log_send_and_compose_impl();
  }
}

- (void)_stop
{
  [(RPFileTransferSession *)self->_session invalidate];
  session = self->_session;
  self->_session = 0;
}

@end