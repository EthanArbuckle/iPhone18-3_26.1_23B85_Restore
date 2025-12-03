@interface CRFileReceiver
- (CRFileReceiver)initWithChannel:(id)channel;
- (CRLogArchiveReceiving)logArchiveReceiver;
- (CRStatisticsStreamReceiving)statisticsReceiver;
- (CRThemeAssetReceiving)themeAssetReceiver;
- (void)_fileQueue_handleFileHeaderMessage:(id)message;
- (void)_fileQueue_handleFilePayloadMessage:(id)message;
- (void)_fileQueue_handleStreamPayloadMessage:(id)message;
- (void)_fileQueue_setupLogArchiveWriterForSessionID:(id)d chunkCount:(id)count message:(id)message;
- (void)_fileQueue_setupThemeWriterForSessionID:(id)d chunkCount:(id)count message:(id)message;
- (void)channel:(id)channel didReceiveMessage:(id)message;
- (void)didCloseChannel:(id)channel;
- (void)invalidate;
- (void)requestLogArchive;
- (void)requestStartStatisticsOnInterval:(unint64_t)interval;
@end

@implementation CRFileReceiver

- (CRFileReceiver)initWithChannel:(id)channel
{
  channelCopy = channel;
  v17.receiver = self;
  v17.super_class = CRFileReceiver;
  v6 = [(CRFileReceiver *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_channel, channel);
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v9 = dispatch_queue_create("com.apple.carkit.file_receiving", v8);
  fileQueue = v7->_fileQueue;
  v7->_fileQueue = v9;

  [channelCopy setChannelDelegate:v7];
  v11 = 0;
  if ([channelCopy openChannel])
  {
    v7->_channelIsOpen = 1;
    v12 = objc_alloc_init(NSMutableDictionary);
    themeWritersForSessionIDs = v7->_themeWritersForSessionIDs;
    v7->_themeWritersForSessionIDs = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    logArchiveWritersForSessionIDs = v7->_logArchiveWritersForSessionIDs;
    v7->_logArchiveWritersForSessionIDs = v14;

LABEL_4:
    v11 = v7;
  }

  return v11;
}

- (void)requestLogArchive
{
  fileQueue = [(CRFileReceiver *)self fileQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000780FC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(fileQueue, block);
}

- (void)requestStartStatisticsOnInterval:(unint64_t)interval
{
  fileQueue = [(CRFileReceiver *)self fileQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100078348;
  v6[3] = &unk_1000DE920;
  v6[4] = self;
  v6[5] = interval;
  dispatch_async(fileQueue, v6);
}

- (void)invalidate
{
  fileQueue = [(CRFileReceiver *)self fileQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000785BC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_sync(fileQueue, block);
}

- (void)channel:(id)channel didReceiveMessage:(id)message
{
  messageCopy = message;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000786F8;
  v8[3] = &unk_1000DD580;
  v9 = messageCopy;
  selfCopy = self;
  v7 = messageCopy;
  dispatch_async(fileQueue, v8);
}

- (void)didCloseChannel:(id)channel
{
  fileQueue = [(CRFileReceiver *)self fileQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000789A4;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(fileQueue, block);
}

- (void)_fileQueue_handleFileHeaderMessage:(id)message
{
  messageCopy = message;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  dispatch_assert_queue_V2(fileQueue);

  objc_opt_class();
  v6 = [messageCopy objectForKey:@"payloadType"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    objc_opt_class();
    v8 = [messageCopy objectForKey:@"sessionID"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      objc_opt_class();
      v10 = [messageCopy objectForKey:@"chunkCount"];
      if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        unsignedIntegerValue = [v7 unsignedIntegerValue];
        if (unsignedIntegerValue == 2)
        {
          logArchiveReceiver = [(CRFileReceiver *)self logArchiveReceiver];

          if (logArchiveReceiver)
          {
            [(CRFileReceiver *)self _fileQueue_setupLogArchiveWriterForSessionID:v9 chunkCount:v11 message:messageCopy];
          }
        }

        else if (unsignedIntegerValue == 1)
        {
          themeAssetReceiver = [(CRFileReceiver *)self themeAssetReceiver];

          if (themeAssetReceiver)
          {
            [(CRFileReceiver *)self _fileQueue_setupThemeWriterForSessionID:v9 chunkCount:v11 message:messageCopy];
          }
        }
      }

      else
      {
        v14 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10008A47C();
        }
      }
    }

    else
    {
      v11 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10008A4EC();
      }
    }
  }

  else
  {
    v9 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008A55C();
    }
  }
}

- (void)_fileQueue_handleFilePayloadMessage:(id)message
{
  messageCopy = message;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  dispatch_assert_queue_V2(fileQueue);

  objc_opt_class();
  v6 = [messageCopy objectForKey:@"sessionID"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    objc_opt_class();
    v8 = [messageCopy objectForKey:@"data"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    objc_opt_class();
    v10 = [messageCopy objectForKey:@"chunkIndex"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v9 || !v11)
    {
      v14 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10008A5CC();
      }

      goto LABEL_43;
    }

    themeAssetReceiver = [(CRFileReceiver *)self themeAssetReceiver];

    if (!themeAssetReceiver || (-[CRFileReceiver themeWritersForSessionIDs](self, "themeWritersForSessionIDs"), v13 = objc_claimAutoreleasedReturnValue(), [v13 objectForKey:v7], v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
    {
      logArchiveReceiver = [(CRFileReceiver *)self logArchiveReceiver];

      if (!logArchiveReceiver)
      {
        goto LABEL_44;
      }

      logArchiveWritersForSessionIDs = [(CRFileReceiver *)self logArchiveWritersForSessionIDs];
      v14 = [logArchiveWritersForSessionIDs objectForKey:v7];

      if (!v14)
      {
        goto LABEL_44;
      }

      if ([v14 saveData:v9 forIndex:v11])
      {
        if (![v14 hasAllChunks])
        {
LABEL_43:

LABEL_44:
          goto LABEL_45;
        }

        v26 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "saved all log archive chunks!", v33, 2u);
        }

        logArchiveReceiver2 = [(CRFileReceiver *)self logArchiveReceiver];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          logArchiveReceiver3 = [(CRFileReceiver *)self logArchiveReceiver];
          fileURL = [v14 fileURL];
          [logArchiveReceiver3 fileReceiverSession:self didSaveLogsAtURL:fileURL];
        }

        selfCopy2 = self;
        v32 = 0;
      }

      else
      {
        selfCopy2 = self;
        v32 = 5;
      }

      [(CRFileReceiver *)selfCopy2 _fileQueue_sendFileAcceptMessageWithStatus:v32];
      goto LABEL_43;
    }

    assetArchiveWriter = [v14 assetArchiveWriter];
    if ([assetArchiveWriter saveData:v9 forIndex:v11])
    {
      if (![assetArchiveWriter hasAllChunks])
      {
LABEL_40:

        goto LABEL_43;
      }

      v16 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "saved all theme asset chunks!", buf, 2u);
      }

      themeAssetReceiver2 = [(CRFileReceiver *)self themeAssetReceiver];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        themeAssetReceiver3 = [(CRFileReceiver *)self themeAssetReceiver];
        version = [v14 version];
        assetURL = [v14 assetURL];
        [themeAssetReceiver3 fileReceiver:self didSaveThemeAssetOfVersion:version atURL:assetURL];
      }

      selfCopy4 = self;
      v23 = 0;
    }

    else
    {
      selfCopy4 = self;
      v23 = 5;
    }

    [(CRFileReceiver *)selfCopy4 _fileQueue_sendFileAcceptMessageWithStatus:v23];
    goto LABEL_40;
  }

  v9 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10008A4EC();
  }

LABEL_45:
}

- (void)_fileQueue_handleStreamPayloadMessage:(id)message
{
  messageCopy = message;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  dispatch_assert_queue_V2(fileQueue);

  objc_opt_class();
  v6 = [messageCopy objectForKey:@"payloadType"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if ([v7 unsignedIntegerValue] == 3)
    {
      objc_opt_class();
      v8 = [messageCopy objectForKey:@"data"];
      if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        statisticsReceiver = [(CRFileReceiver *)self statisticsReceiver];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          statisticsReceiver2 = [(CRFileReceiver *)self statisticsReceiver];
          [statisticsReceiver2 fileReceiver:self didReceiveStatistics:v9];
        }
      }

      else
      {
        v13 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10008A6AC();
        }
      }
    }

    else
    {
      v9 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10008A63C();
      }
    }
  }

  else
  {
    v9 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008A71C();
    }
  }
}

- (void)_fileQueue_setupThemeWriterForSessionID:(id)d chunkCount:(id)count message:(id)message
{
  dCopy = d;
  countCopy = count;
  messageCopy = message;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  dispatch_assert_queue_V2(fileQueue);

  objc_opt_class();
  v12 = [messageCopy objectForKey:@"version"];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    themeAssetReceiver = [(CRFileReceiver *)self themeAssetReceiver];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      themeAssetReceiver2 = [(CRFileReceiver *)self themeAssetReceiver];
      v17 = [themeAssetReceiver2 fileReceiver:self urlForSavingThemeAssetOfVersion:v13];

      if (v17)
      {
        v18 = [[CRThemeAssetDataWriter alloc] initWithAssetURL:v17 version:v13 chunkCount:countCopy];
        if (v18)
        {
          themeWritersForSessionIDs = [(CRFileReceiver *)self themeWritersForSessionIDs];
          [themeWritersForSessionIDs setObject:v18 forKey:dCopy];

          v20 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v29 = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ready to receive theme asset version %@ to %@", &v29, 0x16u);
          }

          objc_opt_class();
          v21 = [messageCopy objectForKey:@"certificate"];
          if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          objc_opt_class();
          v23 = [messageCopy objectForKey:@"signature"];
          if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v22 && v24)
          {
            v25 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              LOWORD(v29) = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "code signing data is present in file transfer", &v29, 2u);
            }

            [(CRThemeAssetDataWriter *)v18 saveCertificateData:v22 signatureData:v24];
          }

          objc_opt_class();
          v26 = [messageCopy objectForKey:@"additions"];
          if (v26 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            v28 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              LOWORD(v29) = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "accessory additions data are present in file transfer", &v29, 2u);
            }

            [(CRThemeAssetDataWriter *)v18 saveAdditionsData:v27];
          }
        }

        else
        {
          v22 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10008A7C8();
          }
        }
      }

      else
      {
        v18 = sub_100002A68(4uLL);
        if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
        {
          sub_10008A838();
        }
      }
    }

    else
    {
      v17 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10008A78C();
      }
    }
  }

  else
  {
    v17 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10008A874();
    }
  }
}

- (void)_fileQueue_setupLogArchiveWriterForSessionID:(id)d chunkCount:(id)count message:(id)message
{
  dCopy = d;
  countCopy = count;
  fileQueue = [(CRFileReceiver *)self fileQueue];
  dispatch_assert_queue_V2(fileQueue);

  logArchiveReceiver = [(CRFileReceiver *)self logArchiveReceiver];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    logArchiveReceiver2 = [(CRFileReceiver *)self logArchiveReceiver];
    v13 = [logArchiveReceiver2 urlForSavingLogsForFileReceiverSession:self];

    if (v13)
    {
      v14 = [[CRFileTransferDataWriter alloc] initWithFileURL:v13 chunkCount:countCopy];
      logArchiveWritersForSessionIDs = [(CRFileReceiver *)self logArchiveWritersForSessionIDs];
      [logArchiveWritersForSessionIDs setObject:v14 forKey:dCopy];

      v16 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ready to receive log archive to %@", &v17, 0xCu);
      }
    }

    else
    {
      v14 = sub_100002A68(4uLL);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        sub_10008A8EC();
      }
    }
  }

  else
  {
    v13 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008A8B0();
    }
  }
}

- (CRThemeAssetReceiving)themeAssetReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_themeAssetReceiver);

  return WeakRetained;
}

- (CRLogArchiveReceiving)logArchiveReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_logArchiveReceiver);

  return WeakRetained;
}

- (CRStatisticsStreamReceiving)statisticsReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_statisticsReceiver);

  return WeakRetained;
}

@end