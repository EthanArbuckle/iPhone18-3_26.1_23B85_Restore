@interface CRFileSender
- (BOOL)_chunkQueue_blockingSendChannelMessage:(id)a3;
- (CRFileSender)initWithChannel:(id)a3 isPriority:(BOOL)a4;
- (id)_sendFileURL:(id)a3 withMetadata:(id)a4 completion:(id)a5;
- (id)sendLogArchive:(id)a3 completion:(id)a4;
- (id)sendThemeAsset:(id)a3 completion:(id)a4;
- (unint64_t)_internalQueue_chunkSizeForTransferWithPriority:(BOOL)a3;
- (void)_internalQueue_handleFileAcceptMessage:(id)a3;
- (void)_internalQueue_signalChunkQueue;
- (void)channel:(id)a3 didReceiveMessage:(id)a4;
- (void)didCloseChannel:(id)a3;
- (void)didSendMessageForChannel:(id)a3;
- (void)invalidate;
@end

@implementation CRFileSender

- (CRFileSender)initWithChannel:(id)a3 isPriority:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v22.receiver = self;
  v22.super_class = CRFileSender;
  v8 = [(CRFileSender *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channel, a3);
    v9->_priority = v4;
    if (v4)
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
    [v7 setChannelDelegate:v9];
    [v7 openChannel];
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

  v4 = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016EB8;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)sendThemeAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 assetsArchiveURL];
  v9 = [v7 signatureData];
  v10 = [v7 certificateData];
  v11 = [v7 accessoryAdditionsData];
  v12 = [v7 version];

  v13 = [v12 accessoryContentVersion];

  if (v8 && v13)
  {
    v24[0] = @"payloadType";
    v24[1] = @"version";
    v25[0] = &off_1000E7A20;
    v25[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v15 = [v14 mutableCopy];

    if (v10)
    {
      [v15 setObject:v10 forKey:@"certificate"];
    }

    if (v9)
    {
      [v15 setObject:v9 forKey:@"signature"];
    }

    if (v11)
    {
      [v15 setObject:v11 forKey:@"additions"];
    }

    v16 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "starting file transfer for cluster theme version %@", buf, 0xCu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100017214;
    v19[3] = &unk_1000DD910;
    v19[4] = self;
    v20 = v13;
    v21 = v6;
    v17 = [(CRFileSender *)self _sendFileURL:v8 withMetadata:v15 completion:v19];
  }

  else
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }

    v17 = 0;
  }

  return v17;
}

- (id)sendLogArchive:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = @"payloadType";
  v20 = &off_1000E7A38;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v9 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "starting file transfer for log archive %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000174CC;
  v14[3] = &unk_1000DD910;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [(CRFileSender *)self _sendFileURL:v11 withMetadata:v8 completion:v14];

  return v12;
}

- (unint64_t)_internalQueue_chunkSizeForTransferWithPriority:(BOOL)a3
{
  v3 = a3;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"TransferChunkSize", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v5 = 102400;
  if (v3)
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

- (id)_sendFileURL:(id)a3 withMetadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [v11 setTotalUnitCount:2];
  [v11 setCompletedUnitCount:0];
  v12 = [(CRFileSender *)self internalQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001782C;
  v21[3] = &unk_1000DDA00;
  v22 = v8;
  v27 = v10;
  v13 = v11;
  v23 = v13;
  v24 = self;
  v25 = v12;
  v26 = v9;
  v14 = v9;
  v15 = v12;
  v16 = v10;
  v17 = v8;
  dispatch_async(v15, v21);
  v18 = v26;
  v19 = v13;

  return v13;
}

- (BOOL)_chunkQueue_blockingSendChannelMessage:(id)a3
{
  v4 = a3;
  v5 = [(CRFileSender *)self chunkQueue];
  dispatch_assert_queue_V2(v5);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018CEC;
  block[3] = &unk_1000DDA28;
  block[4] = self;
  v20 = &v26;
  v7 = v4;
  v19 = v7;
  v21 = &v22;
  dispatch_sync(v6, block);

  if (*(v23 + 24) == 1)
  {
    v8 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "waiting on chunk to send", buf, 2u);
    }

    v9 = [(CRFileSender *)self chunkQueueSendSlots];
    v10 = dispatch_time(0, 60000000000);
    v11 = dispatch_semaphore_wait(v9, v10);

    if (v11)
    {
      v12 = [(CRFileSender *)self internalQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100018DF4;
      v16[3] = &unk_1000DD480;
      v16[4] = self;
      dispatch_sync(v12, v16);

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
  v3 = [(CRFileSender *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CRFileSender *)self internalQueueOutstandingSendCount];
  if ([(CRFileSender *)self internalQueueOutstandingSendCount])
  {
    [(CRFileSender *)self setInternalQueueOutstandingSendCount:[(CRFileSender *)self internalQueueOutstandingSendCount]- 1];
  }

  if (v4 >= 3)
  {
    v5 = [(CRFileSender *)self chunkQueueSendSlots];
    dispatch_semaphore_signal(v5);
  }
}

- (void)_internalQueue_handleFileAcceptMessage:(id)a3
{
  v4 = a3;
  v5 = [(CRFileSender *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  objc_opt_class();
  v6 = [v4 objectForKey:@"accepted"];
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
    v8 = [v7 unsignedIntegerValue];
    v9 = sub_100002A68(4uLL);
    v10 = v9;
    if (v8)
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

    v12 = [(CRFileSender *)self currentAcceptCompletion];
    v11 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v8 == 0);
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

- (void)didSendMessageForChannel:(id)a3
{
  v4 = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000190F4;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)channel:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100082E9C(v5, v6);
  }

  v7 = [(CRFileSender *)self internalQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001922C;
  v9[3] = &unk_1000DD580;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)didCloseChannel:(id)a3
{
  v4 = [(CRFileSender *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019504;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v4, block);
}

@end