@interface CRFileSender
- (BOOL)_chunkQueue_blockingSendChannelMessage:(id)message;
- (CRFileSender)initWithChannel:(id)channel isPriority:(BOOL)priority;
- (id)_sendFileURL:(id)l withMetadata:(id)metadata completion:(id)completion;
- (id)sendLogArchive:(id)archive completion:(id)completion;
- (id)sendThemeAsset:(id)asset completion:(id)completion;
- (unint64_t)_internalQueue_chunkSizeForTransferWithPriority:(BOOL)priority;
- (void)_internalQueue_handleFileAcceptMessage:(id)message;
- (void)_internalQueue_signalChunkQueue;
- (void)channel:(id)channel didReceiveMessage:(id)message;
- (void)didCloseChannel:(id)channel;
- (void)didSendMessageForChannel:(id)channel;
- (void)invalidate;
@end

@implementation CRFileSender

- (CRFileSender)initWithChannel:(id)channel isPriority:(BOOL)priority
{
  priorityCopy = priority;
  channelCopy = channel;
  v22.receiver = self;
  v22.super_class = CRFileSender;
  v8 = [(CRFileSender *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channel, channel);
    v9->_priority = priorityCopy;
    if (priorityCopy)
    {
      v10 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v10 = QOS_CLASS_BACKGROUND;
    }

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, v10, 0);
    v13 = dispatch_queue_create("com.apple.carkit.file_sending", v12);
    internalQueue = v9->_internalQueue;
    v9->_internalQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, v10, 0);
    v17 = dispatch_queue_create("com.apple.carkit.file_sending_chunk", v16);
    chunkQueue = v9->_chunkQueue;
    v9->_chunkQueue = v17;

    v19 = dispatch_semaphore_create(0);
    chunkQueueSendSlots = v9->_chunkQueueSendSlots;
    v9->_chunkQueueSendSlots = v19;

    v9->_internalQueueOutstandingSendCount = 0;
    [channelCopy setChannelDelegate:v9];
    [channelCopy openChannel];
    v9->_channelIsOpen = 1;
  }

  return v9;
}

- (void)invalidate
{
  v3 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100082938();
  }

  internalQueue = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016EB8;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (id)sendThemeAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  assetsArchiveURL = [assetCopy assetsArchiveURL];
  signatureData = [assetCopy signatureData];
  certificateData = [assetCopy certificateData];
  accessoryAdditionsData = [assetCopy accessoryAdditionsData];
  version = [assetCopy version];

  accessoryContentVersion = [version accessoryContentVersion];

  if (assetsArchiveURL && accessoryContentVersion)
  {
    v24[0] = @"payloadType";
    v24[1] = @"version";
    v25[0] = &off_1000E7A20;
    v25[1] = accessoryContentVersion;
    v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v15 = [v14 mutableCopy];

    if (certificateData)
    {
      [v15 setObject:certificateData forKey:@"certificate"];
    }

    if (signatureData)
    {
      [v15 setObject:signatureData forKey:@"signature"];
    }

    if (accessoryAdditionsData)
    {
      [v15 setObject:accessoryAdditionsData forKey:@"additions"];
    }

    v16 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = accessoryContentVersion;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "starting file transfer for cluster theme version %@", buf, 0xCu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100017214;
    v19[3] = &unk_1000DD910;
    v19[4] = self;
    v20 = accessoryContentVersion;
    v21 = completionCopy;
    v17 = [(CRFileSender *)self _sendFileURL:assetsArchiveURL withMetadata:v15 completion:v19];
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v17 = 0;
  }

  return v17;
}

- (id)sendLogArchive:(id)archive completion:(id)completion
{
  archiveCopy = archive;
  completionCopy = completion;
  v19 = @"payloadType";
  v20 = &off_1000E7A38;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v9 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = archiveCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "starting file transfer for log archive %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000174CC;
  v14[3] = &unk_1000DD910;
  v14[4] = self;
  v15 = archiveCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = archiveCopy;
  v12 = [(CRFileSender *)self _sendFileURL:v11 withMetadata:v8 completion:v14];

  return v12;
}

- (unint64_t)_internalQueue_chunkSizeForTransferWithPriority:(BOOL)priority
{
  priorityCopy = priority;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"TransferChunkSize", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v5 = 102400;
  if (priorityCopy)
  {
    v5 = 204800;
  }

  if (AppIntegerValue <= 0 || keyExistsAndHasValidFormat == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = AppIntegerValue;
  }

  v8 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "using chunk size of %lu", buf, 0xCu);
  }

  return v7;
}

- (id)_sendFileURL:(id)l withMetadata:(id)metadata completion:(id)completion
{
  lCopy = l;
  metadataCopy = metadata;
  completionCopy = completion;
  v11 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [v11 setTotalUnitCount:2];
  [v11 setCompletedUnitCount:0];
  internalQueue = [(CRFileSender *)self internalQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001782C;
  v21[3] = &unk_1000DDA00;
  v22 = lCopy;
  v27 = completionCopy;
  v13 = v11;
  v23 = v13;
  selfCopy = self;
  v25 = internalQueue;
  v26 = metadataCopy;
  v14 = metadataCopy;
  v15 = internalQueue;
  v16 = completionCopy;
  v17 = lCopy;
  dispatch_async(v15, v21);
  v18 = v26;
  v19 = v13;

  return v13;
}

- (BOOL)_chunkQueue_blockingSendChannelMessage:(id)message
{
  messageCopy = message;
  chunkQueue = [(CRFileSender *)self chunkQueue];
  dispatch_assert_queue_V2(chunkQueue);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  internalQueue = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018CEC;
  block[3] = &unk_1000DDA28;
  block[4] = self;
  v20 = &v26;
  v7 = messageCopy;
  v19 = v7;
  v21 = &v22;
  dispatch_sync(internalQueue, block);

  if (*(v23 + 24) == 1)
  {
    v8 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "waiting on chunk to send", buf, 2u);
    }

    chunkQueueSendSlots = [(CRFileSender *)self chunkQueueSendSlots];
    v10 = dispatch_time(0, 60000000000);
    v11 = dispatch_semaphore_wait(chunkQueueSendSlots, v10);

    if (v11)
    {
      internalQueue2 = [(CRFileSender *)self internalQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100018DF4;
      v16[3] = &unk_1000DD480;
      v16[4] = self;
      dispatch_sync(internalQueue2, v16);

      v13 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100082CC0();
      }

      *(v27 + 24) = 0;
    }
  }

  v14 = *(v27 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

- (void)_internalQueue_signalChunkQueue
{
  internalQueue = [(CRFileSender *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  internalQueueOutstandingSendCount = [(CRFileSender *)self internalQueueOutstandingSendCount];
  if ([(CRFileSender *)self internalQueueOutstandingSendCount])
  {
    [(CRFileSender *)self setInternalQueueOutstandingSendCount:[(CRFileSender *)self internalQueueOutstandingSendCount]- 1];
  }

  if (internalQueueOutstandingSendCount >= 3)
  {
    chunkQueueSendSlots = [(CRFileSender *)self chunkQueueSendSlots];
    dispatch_semaphore_signal(chunkQueueSendSlots);
  }
}

- (void)_internalQueue_handleFileAcceptMessage:(id)message
{
  messageCopy = message;
  internalQueue = [(CRFileSender *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  objc_opt_class();
  v6 = [messageCopy objectForKey:@"accepted"];
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
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    v9 = sub_100002A68(4uLL);
    v10 = v9;
    if (unsignedIntegerValue)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100082D74();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "file transfer was accepted", v13, 2u);
    }

    currentAcceptCompletion = [(CRFileSender *)self currentAcceptCompletion];
    v11 = currentAcceptCompletion;
    if (currentAcceptCompletion)
    {
      (*(currentAcceptCompletion + 16))(currentAcceptCompletion, unsignedIntegerValue == 0);
    }
  }

  else
  {
    v11 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100082DE8();
    }
  }
}

- (void)didSendMessageForChannel:(id)channel
{
  internalQueue = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000190F4;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)channel:(id)channel didReceiveMessage:(id)message
{
  messageCopy = message;
  v6 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100082E9C(messageCopy, v6);
  }

  internalQueue = [(CRFileSender *)self internalQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001922C;
  v9[3] = &unk_1000DD580;
  v10 = messageCopy;
  selfCopy = self;
  v8 = messageCopy;
  dispatch_async(internalQueue, v9);
}

- (void)didCloseChannel:(id)channel
{
  internalQueue = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019504;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

@end