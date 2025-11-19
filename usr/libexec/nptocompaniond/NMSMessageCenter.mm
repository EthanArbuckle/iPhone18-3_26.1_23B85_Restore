@interface NMSMessageCenter
- (NMSMessageCenter)initWithDevice:(id)a3 service:(id)a4;
- (id)_pbMappingForMessageID:(unsigned __int16)a3;
- (id)delegate;
- (int64_t)_messagePriorityWithPriority:(unint64_t)a3;
- (void)_expireMessages;
- (void)_handleError:(id)a3 context:(id)a4;
- (void)_sendResponse:(id)a3;
- (void)_updateExpireTimerWithDate:(id)a3;
- (void)addErrorHandler:(SEL)a3 forMessageID:(unsigned __int16)a4;
- (void)addIncomingFileHandler:(SEL)a3 forMessageID:(unsigned __int16)a4;
- (void)addRequestHandler:(SEL)a3 forMessageID:(unsigned __int16)a4;
- (void)addResponseHandler:(SEL)a3 forMessageID:(unsigned __int16)a4;
- (void)dealloc;
- (void)dropExtantMessages;
- (void)mapPBRequest:(Class)a3 toResponse:(Class)a4 messageID:(unsigned __int16)a5;
- (void)resume;
- (void)sendFile:(id)a3 completionHandler:(id)a4;
- (void)sendRequest:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation NMSMessageCenter

- (NMSMessageCenter)initWithDevice:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = NMSMessageCenter;
  v9 = [(NMSMessageCenter *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_service, a4);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v7 uniqueID];
    v14 = [NSString stringWithFormat:@"%@.%@", v12, v13];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    queue = v10->_queue;
    v10->_queue = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    requestHandlers = v10->_requestHandlers;
    v10->_requestHandlers = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    errorHandlers = v10->_errorHandlers;
    v10->_errorHandlers = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    responseHandlers = v10->_responseHandlers;
    v10->_responseHandlers = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    fileHandlers = v10->_fileHandlers;
    v10->_fileHandlers = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    pbMapping = v10->_pbMapping;
    v10->_pbMapping = v25;

    v27 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v28 = [v27 firstObject];

    v29 = [v28 stringByAppendingPathComponent:@"com.apple.NanoPhotos"];
    v30 = [v7 uniqueIDOverride];
    v31 = [v29 stringByAppendingPathComponent:v30];

    v32 = +[NSFileManager defaultManager];
    [v32 createDirectoryAtPath:v31 withIntermediateDirectories:0 attributes:0 error:0];
    v33 = [v31 stringByAppendingPathComponent:@"nms.com.apple.private.alloy.photos.proxy.db"];
    v34 = [[NMSPersistentDictionary alloc] initWithPath:v33 objectClass:objc_opt_class()];
    persistentContextStore = v10->_persistentContextStore;
    v10->_persistentContextStore = v34;

    v36 = +[NSMutableDictionary dictionary];
    completionHandlers = v10->_completionHandlers;
    v10->_completionHandlers = v36;

    v38 = sub_10000268C();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Created NMSMessageCenter %@.", buf, 0xCu);
    }
  }

  return v10;
}

- (void)dealloc
{
  expireTimer = self->_expireTimer;
  if (expireTimer)
  {
    dispatch_source_cancel(expireTimer);
  }

  v4.receiver = self;
  v4.super_class = NMSMessageCenter;
  [(NMSMessageCenter *)&v4 dealloc];
}

- (void)addRequestHandler:(SEL)a3 forMessageID:(unsigned __int16)a4
{
  v4 = a4;
  v8 = a3;
  requestHandlers = self->_requestHandlers;
  v6 = [NSValue valueWithBytes:&v8 objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)requestHandlers setObject:v6 forKey:v7];
}

- (void)addErrorHandler:(SEL)a3 forMessageID:(unsigned __int16)a4
{
  v4 = a4;
  v8 = a3;
  errorHandlers = self->_errorHandlers;
  v6 = [NSValue valueWithBytes:&v8 objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)errorHandlers setObject:v6 forKey:v7];
}

- (void)addResponseHandler:(SEL)a3 forMessageID:(unsigned __int16)a4
{
  v4 = a4;
  v8 = a3;
  responseHandlers = self->_responseHandlers;
  v6 = [NSValue valueWithBytes:&v8 objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)responseHandlers setObject:v6 forKey:v7];
}

- (void)addIncomingFileHandler:(SEL)a3 forMessageID:(unsigned __int16)a4
{
  v4 = a4;
  v8 = a3;
  fileHandlers = self->_fileHandlers;
  v6 = [NSValue valueWithBytes:&v8 objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)fileHandlers setObject:v6 forKey:v7];
}

- (void)mapPBRequest:(Class)a3 toResponse:(Class)a4 messageID:(unsigned __int16)a5
{
  v5 = a5;
  v11 = objc_alloc_init(NMSPBMapping);
  [(NMSPBMapping *)v11 setRequestClass:a3];
  [(NMSPBMapping *)v11 setResponseClass:a4];
  pbMapping = self->_pbMapping;
  v10 = [NSNumber numberWithUnsignedShort:v5];
  [(NSMutableDictionary *)pbMapping setObject:v11 forKeyedSubscript:v10];
}

- (id)_pbMappingForMessageID:(unsigned __int16)a3
{
  pbMapping = self->_pbMapping;
  v4 = [NSNumber numberWithUnsignedShort:a3];
  v5 = [(NSMutableDictionary *)pbMapping objectForKeyedSubscript:v4];

  return v5;
}

- (void)_expireMessages
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[NMSMessageCenter _expireMessages]";
    v28 = 2080;
    v29 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Legacy/NanoMessagingService.m";
    v30 = 1024;
    v31 = 209;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v4 = +[NSDate date];
  v5 = +[NSMutableArray array];
  persistentContextStore = self->_persistentContextStore;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100062710;
  v21[3] = &unk_10008B9D0;
  v16 = v4;
  v22 = v16;
  v7 = v5;
  v23 = v7;
  v24 = self;
  [(NMSPersistentDictionary *)persistentContextStore enumerateObjectsSortedByExpirationDate:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [NSError errorWithDomain:@"NMSErrorDomain" code:2 userInfo:0];
        v15 = sub_10000268C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Expire: %@", buf, 0xCu);
        }

        [(NMSMessageCenter *)self _handleError:v14 context:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)_updateExpireTimerWithDate:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_nextExpireTimerFireDate || [v8 compare:?] == -1)
  {
    expireTimer = self->_expireTimer;
    if (expireTimer)
    {
      [v8 timeIntervalSinceNow];
      if (v5 >= 0.0)
      {
        v6 = (v5 * 1000.0 * 1000000.0);
      }

      else
      {
        v6 = 0;
      }

      v7 = dispatch_time(0, v6);
      dispatch_source_set_timer(expireTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }
  }
}

- (void)resume
{
  [(IDSService *)self->_service addDelegate:self queue:self->_queue];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006291C;
  block[3] = &unk_10008B9F8;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)dropExtantMessages
{
  obj = self->_persistentContextStore;
  objc_sync_enter(obj);
  [(NMSPersistentDictionary *)self->_persistentContextStore removeAllObjects];
  [(NSMutableDictionary *)self->_completionHandlers removeAllObjects];
  objc_sync_exit(obj);
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  v5 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.sendRequest"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062C20;
  block[3] = &unk_10008B700;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(queue, block);
}

- (void)_sendResponse:(id)a3
{
  v4 = a3;
  [v4 setSent:1];
  v5 = [v4 request];
  v6 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService._sendResponse"];
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100063218;
  v11[3] = &unk_10008BA20;
  v12 = v5;
  v13 = v4;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = v4;
  v10 = v5;
  dispatch_async(queue, v11);
}

- (void)_handleError:(id)a3 context:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v6 filePath];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 shouldUnlinkFile];

    if (v11)
    {
      v12 = sub_10000268C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 filePath];
        *v36 = 138412290;
        *&v36[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unlinking %@", v36, 0xCu);
      }

      v14 = [v6 filePath];
      v15 = unlink([v14 fileSystemRepresentation]);

      if (v15)
      {
        v16 = sub_10000268C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v35 = [v6 filePath];
          *v36 = 138412290;
          *&v36[4] = v35;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to unlink %@", v36, 0xCu);
        }
      }
    }
  }

  v17 = [v8 userInfo];
  v18 = [v17 mutableCopy];

  [v18 setObject:v6 forKey:@"NMSContext"];
  v19 = [v8 domain];
  v20 = [v8 code];

  v21 = [NSError errorWithDomain:v19 code:v20 userInfo:v18];

  v22 = [v6 idsIdentifier];

  if (v22)
  {
    persistentContextStore = self->_persistentContextStore;
    v24 = [v6 idsIdentifier];
    [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:v24];

    completionHandlers = self->_completionHandlers;
    v26 = [v6 idsIdentifier];
    v27 = [(NSMutableDictionary *)completionHandlers objectForKey:v26];

    if (v27)
    {
      v28 = [v6 idsIdentifier];
      (v27)[2](v27, v28, v21);
    }

    v29 = self->_completionHandlers;
    v30 = [v6 idsIdentifier];
    [(NSMutableDictionary *)v29 removeObjectForKey:v30];
  }

  errorHandlers = self->_errorHandlers;
  v32 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 messageID]);
  v33 = [(NSMutableDictionary *)errorHandlers objectForKey:v32];

  if (v33)
  {
    *v36 = 0;
    [v33 getValue:v36];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelector:*v36 withObject:v21];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v12 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:v10];
  v13 = v12;
  if (v12)
  {
    if (a6)
    {
      if (([v12 isFromFile] & 1) == 0)
      {
        if (![v13 isFromRequest] || (v14 = self->_responseHandlers, +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", objc_msgSend(v13, "messageID")), v15 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v14, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
        {
          v17 = [v13 isFromRequest];
          v18 = sub_10000268C();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = [v13 messageID];
              responseHandlers = self->_responseHandlers;
              v25 = 138412802;
              v26 = v10;
              v27 = 1024;
              v28 = v20;
              v29 = 2112;
              v30 = responseHandlers;
              v22 = "Removing context for %@ because there is no response handler for %d. Current handlers: %@";
              v23 = v18;
              v24 = 28;
LABEL_14:
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v25, v24);
            }
          }

          else if (v19)
          {
            v25 = 138412290;
            v26 = v10;
            v22 = "Removing context for %@ because it's for a response.";
            v23 = v18;
            v24 = 12;
            goto LABEL_14;
          }

          [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:v10];
        }
      }
    }

    else
    {
      if (!v11)
      {
        v11 = [NSError errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
      }

      [(NMSMessageCenter *)self _handleError:v11 context:v13];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a5;
  v12 = a7;
  queue = self->_queue;
  v14 = a6;
  v15 = a3;
  dispatch_assert_queue_V2(queue);
  device = self->_device;
  v17 = [v15 linkedDeviceForFromID:v14 withRelationship:{-[IDSDevice relationship](device, "relationship")}];

  if (device == v17)
  {
    v18 = [v12 incomingResponseIdentifier];
    v19 = [v11 length];
    if (v18)
    {
      if (v19 >= 2)
      {
        v20 = *[v11 bytes];
        v21 = [v11 subdataWithRange:{2, objc_msgSend(v11, "length") - 2}];
        if (![v18 UTF8String])
        {
          v22 = sub_10000268C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v49) = 67109378;
            HIDWORD(v49) = v20;
            v50 = 2112;
            v51 = v18;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will fail to bind string for message: %hu identifier: %@", &v49, 0x12u);
          }
        }

        v23 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:v18];
        if (v23)
        {
          [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:v18];
          v24 = sub_10000268C();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(NMSIncomingRequest *)v21 length];
            LODWORD(v49) = 67109376;
            HIDWORD(v49) = v20;
            v50 = 2048;
            v51 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received incoming response for message: %hu of size %tu", &v49, 0x12u);
          }

          responseHandlers = self->_responseHandlers;
          v27 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v23 messageID]);
          v28 = [(NSMutableDictionary *)responseHandlers objectForKey:v27];

          if (v28)
          {
            v49 = 0;
            [v28 getValue:&v49];
            v29 = objc_alloc_init(NMSIncomingResponse);
            -[NMSIncomingResponse setMessageID:](v29, "setMessageID:", [v23 messageID]);
            [(NMSIncomingResponse *)v29 setData:v21];
            v30 = -[NMSMessageCenter _pbMappingForMessageID:](self, "_pbMappingForMessageID:", [v23 messageID]);
            if ([v30 responseClass])
            {
              v31 = [objc_alloc(objc_msgSend(v30 "responseClass"))];
              [(NMSIncomingResponse *)v29 setPbResponse:v31];
            }

            [(NMSIncomingResponse *)v29 setIdsIdentifier:v18];
            v32 = [v23 idsIdentifier];
            [(NMSIncomingResponse *)v29 setRequestIDSIdentifier:v32];

            v33 = [v23 date];
            [(NMSIncomingResponse *)v29 setRequestSent:v33];

            v34 = [v23 userInfo];
            [(NMSIncomingResponse *)v29 setRequestPersistentUserInfo:v34];

            [(NMSIncomingResponse *)v29 setContext:v12];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained performSelector:v49 withObject:v29];
          }

          else
          {
            v46 = sub_10000268C();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v49) = 67109120;
              HIDWORD(v49) = v20;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "No registered response handler for message: %hu", &v49, 8u);
            }

            v28 = 0;
          }
        }

        else
        {
          v28 = sub_10000268C();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v49) = 67109378;
            HIDWORD(v49) = v20;
            v50 = 2112;
            v51 = v18;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find context for message: %hu identifier %@", &v49, 0x12u);
          }
        }

LABEL_26:
      }
    }

    else if (v19 >= 3)
    {
      v36 = [v11 bytes];
      v37 = *v36;
      v38 = *(v36 + 2);
      v21 = objc_alloc_init(NMSIncomingRequest);
      [(NMSIncomingRequest *)v21 setMessageCenter:self];
      [(NMSIncomingRequest *)v21 setMessageID:v37];
      v39 = [v12 outgoingResponseIdentifier];
      [(NMSIncomingRequest *)v21 setIdsIdentifier:v39];

      [(NMSIncomingRequest *)v21 setPriority:v38];
      -[NMSIncomingRequest setExpectsResponse:](v21, "setExpectsResponse:", [v12 expectsPeerResponse]);
      v40 = [v11 subdataWithRange:{3, objc_msgSend(v11, "length") - 3}];
      [(NMSIncomingRequest *)v21 setData:v40];

      [(NMSIncomingRequest *)v21 configureResponse];
      [(NMSIncomingRequest *)v21 setContext:v12];
      requestHandlers = self->_requestHandlers;
      v42 = [NSNumber numberWithUnsignedShort:v37];
      v23 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v42];

      if (v23)
      {
        v43 = sub_10000268C();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(NMSIncomingRequest *)v21 data];
          LODWORD(v49) = 67109376;
          HIDWORD(v49) = v37;
          v50 = 2048;
          v51 = [v44 length];
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Received incoming message %hu of size %tu", &v49, 0x12u);
        }

        v49 = 0;
        [v23 getValue:&v49];
        v45 = objc_loadWeakRetained(&self->_delegate);
        [v45 performSelector:v49 withObject:v21];
      }

      else
      {
        [(NMSIncomingRequest *)v21 setExpectsResponse:0];
        v47 = sub_10000268C();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [(NMSIncomingRequest *)v21 data];
          LODWORD(v49) = 67109376;
          HIDWORD(v49) = v37;
          v50 = 2048;
          v51 = [v48 length];
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Received unhandle-able incoming message %hu of size %tu", &v49, 0x12u);
        }

        v23 = 0;
      }

      goto LABEL_26;
    }
  }
}

- (void)sendFile:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.sendFile"];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064370;
  v13[3] = &unk_10008BA48;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(queue, v13);
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = a7;
  v17 = a3;
  v18 = [v14 objectForKeyedSubscript:@"_id"];
  v19 = [v18 intValue];

  device = self->_device;
  v21 = [v17 linkedDeviceForFromID:v16 withRelationship:{-[IDSDevice relationship](device, "relationship")}];

  if (device != v21)
  {
    goto LABEL_17;
  }

  v22 = [v13 pathExtension];
  if ([v22 length])
  {
    v23 = 0;
  }

  else
  {
    v24 = [v14 objectForKeyedSubscript:@"mt"];
    v25 = [v24 integerValue];

    if (v25 != 1)
    {
      v23 = 0;
      goto LABEL_9;
    }

    v22 = [v14 objectForKeyedSubscript:@"ms"];
    v26 = [v22 integerValue];
    v27 = @"nlp";
    if ((v26 & 8) == 0)
    {
      v27 = @"jpg";
    }

    v23 = v27;
  }

LABEL_9:
  v28 = [[NMSIncomingFile alloc] initWithIDSURL:v13 extensionOverride:v23];
  [(NMSIncomingFile *)v28 setMessageID:v19];
  [(NMSIncomingFile *)v28 setMetadata:v14];
  [(NMSIncomingFile *)v28 setContext:v15];
  fileHandlers = self->_fileHandlers;
  v30 = [NSNumber numberWithUnsignedShort:[(NMSIncomingFile *)v28 messageID]];
  v31 = [(NSMutableDictionary *)fileHandlers objectForKeyedSubscript:v30];

  v32 = sub_10000268C();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v35) = 67109378;
      HIDWORD(v35) = [(NMSIncomingFile *)v28 messageID];
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received incoming resourceURL %hu %@", &v35, 0x12u);
    }

    v35 = 0;
    [v31 getValue:&v35];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelector:v35 withObject:v28];
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v35) = 67109378;
      HIDWORD(v35) = [(NMSIncomingFile *)v28 messageID];
      v36 = 2112;
      v37 = v13;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Received unknown incoming resourceURL %hu %@", &v35, 0x12u);
    }
  }

LABEL_17:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v7 = a5;
  v8 = sub_10000268C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS ID: %@", &v25, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    if ([v9 isFromFile] && objc_msgSend(v10, "shouldUnlinkFile"))
    {
      v11 = sub_10000268C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 filePath];
        v25 = 138412290;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unlinking %@", &v25, 0xCu);
      }

      v13 = [v10 filePath];
      v14 = unlink([v13 fileSystemRepresentation]);

      if (v14)
      {
        v15 = sub_10000268C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = [v10 filePath];
          v25 = 138412290;
          v26 = v24;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to unlink %@", &v25, 0xCu);
        }
      }
    }

    persistentContextStore = self->_persistentContextStore;
    v17 = [v10 idsIdentifier];
    [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:v17];

    completionHandlers = self->_completionHandlers;
    v19 = [v10 idsIdentifier];
    v20 = [(NSMutableDictionary *)completionHandlers objectForKey:v19];

    if (v20)
    {
      v21 = [v10 idsIdentifier];
      (v20)[2](v20, v21, 0);
    }

    v22 = self->_completionHandlers;
    v23 = [v10 idsIdentifier];
    [(NSMutableDictionary *)v22 removeObjectForKey:v23];
  }
}

- (int64_t)_messagePriorityWithPriority:(unint64_t)a3
{
  v4 = [(IDSDevice *)self->_device relationship];
  v5 = 200;
  if (a3 == 1)
  {
    v5 = 300;
  }

  if (a3 == 2)
  {
    v5 = 100;
  }

  if ((v4 & 2) != 0)
  {
    return 300;
  }

  else
  {
    return v5;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end