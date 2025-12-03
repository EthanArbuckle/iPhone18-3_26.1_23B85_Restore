@interface NMSMessageCenter
- (NMSMessageCenter)initWithDevice:(id)device service:(id)service;
- (id)_pbMappingForMessageID:(unsigned __int16)d;
- (id)delegate;
- (int64_t)_messagePriorityWithPriority:(unint64_t)priority;
- (void)_expireMessages;
- (void)_handleError:(id)error context:(id)context;
- (void)_sendResponse:(id)response;
- (void)_updateExpireTimerWithDate:(id)date;
- (void)addErrorHandler:(SEL)handler forMessageID:(unsigned __int16)d;
- (void)addIncomingFileHandler:(SEL)handler forMessageID:(unsigned __int16)d;
- (void)addRequestHandler:(SEL)handler forMessageID:(unsigned __int16)d;
- (void)addResponseHandler:(SEL)handler forMessageID:(unsigned __int16)d;
- (void)dealloc;
- (void)dropExtantMessages;
- (void)mapPBRequest:(Class)request toResponse:(Class)response messageID:(unsigned __int16)d;
- (void)resume;
- (void)sendFile:(id)file completionHandler:(id)handler;
- (void)sendRequest:(id)request;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation NMSMessageCenter

- (NMSMessageCenter)initWithDevice:(id)device service:(id)service
{
  deviceCopy = device;
  serviceCopy = service;
  v40.receiver = self;
  v40.super_class = NMSMessageCenter;
  v9 = [(NMSMessageCenter *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_service, service);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uniqueID = [deviceCopy uniqueID];
    v14 = [NSString stringWithFormat:@"%@.%@", v12, uniqueID];
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
    firstObject = [v27 firstObject];

    v29 = [firstObject stringByAppendingPathComponent:@"com.apple.NanoPhotos"];
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v31 = [v29 stringByAppendingPathComponent:uniqueIDOverride];

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

- (void)addRequestHandler:(SEL)handler forMessageID:(unsigned __int16)d
{
  dCopy = d;
  handlerCopy = handler;
  requestHandlers = self->_requestHandlers;
  v6 = [NSValue valueWithBytes:&handlerCopy objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)requestHandlers setObject:v6 forKey:v7];
}

- (void)addErrorHandler:(SEL)handler forMessageID:(unsigned __int16)d
{
  dCopy = d;
  handlerCopy = handler;
  errorHandlers = self->_errorHandlers;
  v6 = [NSValue valueWithBytes:&handlerCopy objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)errorHandlers setObject:v6 forKey:v7];
}

- (void)addResponseHandler:(SEL)handler forMessageID:(unsigned __int16)d
{
  dCopy = d;
  handlerCopy = handler;
  responseHandlers = self->_responseHandlers;
  v6 = [NSValue valueWithBytes:&handlerCopy objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)responseHandlers setObject:v6 forKey:v7];
}

- (void)addIncomingFileHandler:(SEL)handler forMessageID:(unsigned __int16)d
{
  dCopy = d;
  handlerCopy = handler;
  fileHandlers = self->_fileHandlers;
  v6 = [NSValue valueWithBytes:&handlerCopy objCType:":"];
  v7 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)fileHandlers setObject:v6 forKey:v7];
}

- (void)mapPBRequest:(Class)request toResponse:(Class)response messageID:(unsigned __int16)d
{
  dCopy = d;
  v11 = objc_alloc_init(NMSPBMapping);
  [(NMSPBMapping *)v11 setRequestClass:request];
  [(NMSPBMapping *)v11 setResponseClass:response];
  pbMapping = self->_pbMapping;
  v10 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)pbMapping setObject:v11 forKeyedSubscript:v10];
}

- (id)_pbMappingForMessageID:(unsigned __int16)d
{
  pbMapping = self->_pbMapping;
  v4 = [NSNumber numberWithUnsignedShort:d];
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
  selfCopy = self;
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

- (void)_updateExpireTimerWithDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_nextExpireTimerFireDate || [dateCopy compare:?] == -1)
  {
    expireTimer = self->_expireTimer;
    if (expireTimer)
    {
      [dateCopy timeIntervalSinceNow];
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

- (void)sendRequest:(id)request
{
  requestCopy = request;
  v5 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.sendRequest"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062C20;
  block[3] = &unk_10008B700;
  v10 = requestCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = requestCopy;
  dispatch_async(queue, block);
}

- (void)_sendResponse:(id)response
{
  responseCopy = response;
  [responseCopy setSent:1];
  request = [responseCopy request];
  v6 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService._sendResponse"];
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100063218;
  v11[3] = &unk_10008BA20;
  v12 = request;
  v13 = responseCopy;
  selfCopy = self;
  v15 = v6;
  v8 = v6;
  v9 = responseCopy;
  v10 = request;
  dispatch_async(queue, v11);
}

- (void)_handleError:(id)error context:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  errorCopy = error;
  dispatch_assert_queue_V2(queue);
  filePath = [contextCopy filePath];
  if (filePath)
  {
    v10 = filePath;
    shouldUnlinkFile = [contextCopy shouldUnlinkFile];

    if (shouldUnlinkFile)
    {
      v12 = sub_10000268C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        filePath2 = [contextCopy filePath];
        *v36 = 138412290;
        *&v36[4] = filePath2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unlinking %@", v36, 0xCu);
      }

      filePath3 = [contextCopy filePath];
      v15 = unlink([filePath3 fileSystemRepresentation]);

      if (v15)
      {
        v16 = sub_10000268C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          filePath4 = [contextCopy filePath];
          *v36 = 138412290;
          *&v36[4] = filePath4;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to unlink %@", v36, 0xCu);
        }
      }
    }
  }

  userInfo = [errorCopy userInfo];
  v18 = [userInfo mutableCopy];

  [v18 setObject:contextCopy forKey:@"NMSContext"];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v21 = [NSError errorWithDomain:domain code:code userInfo:v18];

  idsIdentifier = [contextCopy idsIdentifier];

  if (idsIdentifier)
  {
    persistentContextStore = self->_persistentContextStore;
    idsIdentifier2 = [contextCopy idsIdentifier];
    [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:idsIdentifier2];

    completionHandlers = self->_completionHandlers;
    idsIdentifier3 = [contextCopy idsIdentifier];
    v27 = [(NSMutableDictionary *)completionHandlers objectForKey:idsIdentifier3];

    if (v27)
    {
      idsIdentifier4 = [contextCopy idsIdentifier];
      (v27)[2](v27, idsIdentifier4, v21);
    }

    v29 = self->_completionHandlers;
    idsIdentifier5 = [contextCopy idsIdentifier];
    [(NSMutableDictionary *)v29 removeObjectForKey:idsIdentifier5];
  }

  errorHandlers = self->_errorHandlers;
  v32 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [contextCopy messageID]);
  v33 = [(NSMutableDictionary *)errorHandlers objectForKey:v32];

  if (v33)
  {
    *v36 = 0;
    [v33 getValue:v36];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelector:*v36 withObject:v21];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v12 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:identifierCopy];
  v13 = v12;
  if (v12)
  {
    if (success)
    {
      if (([v12 isFromFile] & 1) == 0)
      {
        if (![v13 isFromRequest] || (v14 = self->_responseHandlers, +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", objc_msgSend(v13, "messageID")), v15 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v14, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
        {
          isFromRequest = [v13 isFromRequest];
          v18 = sub_10000268C();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (isFromRequest)
          {
            if (v19)
            {
              messageID = [v13 messageID];
              responseHandlers = self->_responseHandlers;
              v25 = 138412802;
              v26 = identifierCopy;
              v27 = 1024;
              v28 = messageID;
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
            v26 = identifierCopy;
            v22 = "Removing context for %@ because it's for a response.";
            v23 = v18;
            v24 = 12;
            goto LABEL_14;
          }

          [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:identifierCopy];
        }
      }
    }

    else
    {
      if (!errorCopy)
      {
        errorCopy = [NSError errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
      }

      [(NMSMessageCenter *)self _handleError:errorCopy context:v13];
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  queue = self->_queue;
  dCopy = d;
  serviceCopy = service;
  dispatch_assert_queue_V2(queue);
  device = self->_device;
  v17 = [serviceCopy linkedDeviceForFromID:dCopy withRelationship:{-[IDSDevice relationship](device, "relationship")}];

  if (device == v17)
  {
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    v19 = [dataCopy length];
    if (incomingResponseIdentifier)
    {
      if (v19 >= 2)
      {
        v20 = *[dataCopy bytes];
        v21 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
        if (![incomingResponseIdentifier UTF8String])
        {
          v22 = sub_10000268C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v49) = 67109378;
            HIDWORD(v49) = v20;
            v50 = 2112;
            v51 = incomingResponseIdentifier;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will fail to bind string for message: %hu identifier: %@", &v49, 0x12u);
          }
        }

        v23 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:incomingResponseIdentifier];
        if (v23)
        {
          [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:incomingResponseIdentifier];
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

            [(NMSIncomingResponse *)v29 setIdsIdentifier:incomingResponseIdentifier];
            idsIdentifier = [v23 idsIdentifier];
            [(NMSIncomingResponse *)v29 setRequestIDSIdentifier:idsIdentifier];

            date = [v23 date];
            [(NMSIncomingResponse *)v29 setRequestSent:date];

            userInfo = [v23 userInfo];
            [(NMSIncomingResponse *)v29 setRequestPersistentUserInfo:userInfo];

            [(NMSIncomingResponse *)v29 setContext:contextCopy];
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
            v51 = incomingResponseIdentifier;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find context for message: %hu identifier %@", &v49, 0x12u);
          }
        }

LABEL_26:
      }
    }

    else if (v19 >= 3)
    {
      bytes = [dataCopy bytes];
      v37 = *bytes;
      v38 = *(bytes + 2);
      v21 = objc_alloc_init(NMSIncomingRequest);
      [(NMSIncomingRequest *)v21 setMessageCenter:self];
      [(NMSIncomingRequest *)v21 setMessageID:v37];
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      [(NMSIncomingRequest *)v21 setIdsIdentifier:outgoingResponseIdentifier];

      [(NMSIncomingRequest *)v21 setPriority:v38];
      -[NMSIncomingRequest setExpectsResponse:](v21, "setExpectsResponse:", [contextCopy expectsPeerResponse]);
      v40 = [dataCopy subdataWithRange:{3, objc_msgSend(dataCopy, "length") - 3}];
      [(NMSIncomingRequest *)v21 setData:v40];

      [(NMSIncomingRequest *)v21 configureResponse];
      [(NMSIncomingRequest *)v21 setContext:contextCopy];
      requestHandlers = self->_requestHandlers;
      v42 = [NSNumber numberWithUnsignedShort:v37];
      v23 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v42];

      if (v23)
      {
        v43 = sub_10000268C();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          data = [(NMSIncomingRequest *)v21 data];
          LODWORD(v49) = 67109376;
          HIDWORD(v49) = v37;
          v50 = 2048;
          v51 = [data length];
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
          data2 = [(NMSIncomingRequest *)v21 data];
          LODWORD(v49) = 67109376;
          HIDWORD(v49) = v37;
          v50 = 2048;
          v51 = [data2 length];
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Received unhandle-able incoming message %hu of size %tu", &v49, 0x12u);
        }

        v23 = 0;
      }

      goto LABEL_26;
    }
  }
}

- (void)sendFile:(id)file completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v8 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.sendFile"];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064370;
  v13[3] = &unk_10008BA48;
  v14 = fileCopy;
  selfCopy = self;
  v16 = v8;
  v17 = handlerCopy;
  v10 = v8;
  v11 = handlerCopy;
  v12 = fileCopy;
  dispatch_async(queue, v13);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  lCopy = l;
  metadataCopy = metadata;
  contextCopy = context;
  dCopy = d;
  serviceCopy = service;
  v18 = [metadataCopy objectForKeyedSubscript:@"_id"];
  intValue = [v18 intValue];

  device = self->_device;
  v21 = [serviceCopy linkedDeviceForFromID:dCopy withRelationship:{-[IDSDevice relationship](device, "relationship")}];

  if (device != v21)
  {
    goto LABEL_17;
  }

  pathExtension = [lCopy pathExtension];
  if ([pathExtension length])
  {
    v23 = 0;
  }

  else
  {
    v24 = [metadataCopy objectForKeyedSubscript:@"mt"];
    integerValue = [v24 integerValue];

    if (integerValue != 1)
    {
      v23 = 0;
      goto LABEL_9;
    }

    pathExtension = [metadataCopy objectForKeyedSubscript:@"ms"];
    integerValue2 = [pathExtension integerValue];
    v27 = @"nlp";
    if ((integerValue2 & 8) == 0)
    {
      v27 = @"jpg";
    }

    v23 = v27;
  }

LABEL_9:
  v28 = [[NMSIncomingFile alloc] initWithIDSURL:lCopy extensionOverride:v23];
  [(NMSIncomingFile *)v28 setMessageID:intValue];
  [(NMSIncomingFile *)v28 setMetadata:metadataCopy];
  [(NMSIncomingFile *)v28 setContext:contextCopy];
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
      v37 = lCopy;
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
      v37 = lCopy;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Received unknown incoming resourceURL %hu %@", &v35, 0x12u);
    }
  }

LABEL_17:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  v8 = sub_10000268C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS ID: %@", &v25, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:identifierCopy];
  v10 = v9;
  if (v9)
  {
    if ([v9 isFromFile] && objc_msgSend(v10, "shouldUnlinkFile"))
    {
      v11 = sub_10000268C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        filePath = [v10 filePath];
        v25 = 138412290;
        v26 = filePath;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unlinking %@", &v25, 0xCu);
      }

      filePath2 = [v10 filePath];
      v14 = unlink([filePath2 fileSystemRepresentation]);

      if (v14)
      {
        v15 = sub_10000268C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          filePath3 = [v10 filePath];
          v25 = 138412290;
          v26 = filePath3;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to unlink %@", &v25, 0xCu);
        }
      }
    }

    persistentContextStore = self->_persistentContextStore;
    idsIdentifier = [v10 idsIdentifier];
    [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:idsIdentifier];

    completionHandlers = self->_completionHandlers;
    idsIdentifier2 = [v10 idsIdentifier];
    v20 = [(NSMutableDictionary *)completionHandlers objectForKey:idsIdentifier2];

    if (v20)
    {
      idsIdentifier3 = [v10 idsIdentifier];
      (v20)[2](v20, idsIdentifier3, 0);
    }

    v22 = self->_completionHandlers;
    idsIdentifier4 = [v10 idsIdentifier];
    [(NSMutableDictionary *)v22 removeObjectForKey:idsIdentifier4];
  }
}

- (int64_t)_messagePriorityWithPriority:(unint64_t)priority
{
  relationship = [(IDSDevice *)self->_device relationship];
  v5 = 200;
  if (priority == 1)
  {
    v5 = 300;
  }

  if (priority == 2)
  {
    v5 = 100;
  }

  if ((relationship & 2) != 0)
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