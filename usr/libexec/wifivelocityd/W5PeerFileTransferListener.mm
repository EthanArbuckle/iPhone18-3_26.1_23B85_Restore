@interface W5PeerFileTransferListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerFileTransferListener)initWithTransferManager:(id)manager;
- (id)_listFiles:(id)files;
@end

@implementation W5PeerFileTransferListener

- (W5PeerFileTransferListener)initWithTransferManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = W5PeerFileTransferListener;
  v5 = [(W5PeerFileTransferListener *)&v10 init];
  v6 = v5;
  if (managerCopy && v5)
  {
    v7 = managerCopy;
    p_super = &v6->_transferManager->super;
    v6->_transferManager = v7;
  }

  else
  {

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerFileTransferListener initWithTransferManager:]";
      v13 = 2080;
      v14 = "W5PeerFileTransferListener.m";
      v15 = 1024;
      v16 = 37;
      _os_log_send_and_compose_impl();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136316418;
      v31 = "[W5PeerFileTransferListener handleClientRequest:]";
      v32 = 2080;
      v33 = "W5PeerFileTransferListener.m";
      v34 = 1024;
      *v35 = 47;
      *&v35[4] = 2114;
      *&v35[6] = requestCopy;
      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = version;
      _os_log_send_and_compose_impl();
    }

    v9 = objc_alloc_init(W5PeerFileTransferResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerFileTransferListener *)self currentVersion]];
    [(W5PeerFileTransferResponsePayload *)v9 setVersion:v10];

    integerValue = [version integerValue];
    if (integerValue == [(W5PeerFileTransferListener *)self currentVersion])
    {
      type = [v6 type];
      if (type == 2)
      {
        remotePath = [v6 remotePath];
        v23 = sub_100098A04();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 138543362;
          v31 = remotePath;
          _os_log_send_and_compose_impl();
        }

        v17 = remotePath != 0;
        if (remotePath)
        {
          [(W5PeerFileTransferResponsePayload *)v9 setStatus:1];
          v24 = [(W5PeerFileTransferListener *)self _listFiles:remotePath];
          [(W5PeerFileTransferResponsePayload *)v9 setFiles:v24];

          handler = [requestCopy handler];
          (*(handler + 16))(handler, v9, 0);
        }

        else
        {
          handler = sub_100098A04();
          if (os_log_type_enabled(handler, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v30) = 0;
            _os_log_send_and_compose_impl();
          }
        }
      }

      else
      {
        if (type != 1)
        {
          v17 = 0;
LABEL_28:

          goto LABEL_29;
        }

        [(W5PeerFileTransferResponsePayload *)v9 setStatus:1];
        remotePath = [v6 targetID];
        remotePath2 = [v6 remotePath];
        publicKey = [v6 publicKey];
        v16 = sub_100098A04();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          [v6 publicKey];
          v30 = 138543874;
          v31 = remotePath2;
          v33 = v32 = 2114;
          v34 = 2114;
          *v35 = remotePath;
          _os_log_send_and_compose_impl();
        }

        v17 = remotePath2 != 0;
        if (remotePath2)
        {
          [(W5FileTransferManager *)self->_transferManager initializeSenderWithTargetID:remotePath peerPublicKey:publicKey];
          publicKeySelf = [(W5FileTransferManager *)self->_transferManager publicKeySelf];
          [(W5PeerFileTransferResponsePayload *)v9 setPublicKey:publicKeySelf];

          handler2 = [requestCopy handler];
          (handler2)[2](handler2, v9, 0);

          [(W5FileTransferManager *)self->_transferManager startW5FileSenderForFile:remotePath2];
        }

        else
        {
          v26 = sub_100098A04();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v30) = 0;
            _os_log_send_and_compose_impl();
          }
        }
      }
    }

    else
    {
      v20 = sub_100098A04();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138543362;
        v31 = version;
        _os_log_send_and_compose_impl();
      }

      [(W5PeerFileTransferResponsePayload *)v9 setStatus:2];
      v28 = NSLocalizedFailureReasonErrorKey;
      v29 = @"W5PeerFileListenerUnsupportedVersion";
      v17 = 1;
      v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v22 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:11 userInfo:v21];
      [(W5PeerFileTransferResponsePayload *)v9 setError:v22];

      remotePath = [requestCopy handler];
      (*(remotePath + 2))(remotePath, v9, 0);
    }

    goto LABEL_28;
  }

  v17 = 0;
LABEL_29:

  return v17;
}

- (id)_listFiles:(id)files
{
  filesCopy = files;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NSFileManager defaultManager];
  v19 = 0;
  v6 = [v5 contentsOfDirectoryAtURL:filesCopy includingPropertiesForKeys:&__NSArray0__struct options:4 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "[W5PeerFileTransferListener _listFiles:]";
      v23 = 2080;
      v24 = "W5PeerFileTransferListener.m";
      v25 = 1024;
      v26 = 139;
      v27 = 2114;
      v28 = filesCopy;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (([v13 hasDirectoryPath] & 1) == 0)
          {
            [v4 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v4;
}

@end