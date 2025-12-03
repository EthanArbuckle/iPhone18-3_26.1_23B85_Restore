@interface PTPCameraDevice
- (BOOL)acceptConnection:(id)connection;
- (NSString)internalUUID;
- (NSXPCListenerEndpoint)endpoint;
- (PTPCameraDevice)initWithDeviceContext:(id)context;
- (id)additionalProperties;
- (id)itemForObjectHandle:(id)handle;
- (void)closeDevice;
- (void)dealloc;
- (void)enumerateContentWithOptions:(id)options;
- (void)registerInterestedEventNotifications:(id)notifications;
- (void)requestDeleteObjectHandle:(id)handle options:(id)options withReply:(id)reply;
- (void)requestDownloadObjectHandle:(id)handle options:(id)options withReply:(id)reply;
- (void)requestEndUsingDevice;
- (void)requestFingerprintForObjectHandle:(id)handle withReply:(id)reply;
- (void)requestMetadataForObjectHandle:(id)handle options:(id)options withReply:(id)reply;
- (void)requestReadDataFromObjectHandle:(id)handle options:(id)options withReply:(id)reply;
- (void)requestStartUsingDeviceWithReply:(id)reply;
- (void)requestThumbnailDataForObjectHandle:(id)handle options:(id)options withReply:(id)reply;
- (void)sendPTPCommand:(id)command andPayload:(id)payload withReply:(id)reply;
- (void)unregisterInterestedEventNotifications:(id)notifications;
@end

@implementation PTPCameraDevice

- (PTPCameraDevice)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = PTPCameraDevice;
  v5 = [(PTPCameraDevice *)&v16 initWithDeviceContext:contextCopy];
  if (v5)
  {
    v6 = [contextCopy objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
    v5->_locationID = [v6 integerValue];

    v7 = objc_alloc_init(NSMutableArray);
    controlBundles = v5->_controlBundles;
    v5->_controlBundles = v7;

    cameraDictionary = [(PTPCameraDevice *)v5 cameraDictionary];
    [cameraDictionary setObject:@"camera" forKeyedSubscript:@"ICDeviceSystemSymbolName"];

    v10 = [contextCopy objectForKeyedSubscript:@"ICDeviceName"];
    cameraDictionary2 = [(PTPCameraDevice *)v5 cameraDictionary];
    [cameraDictionary2 setObject:v10 forKeyedSubscript:@"ICDeviceName"];

    cameraDictionary3 = [(PTPCameraDevice *)v5 cameraDictionary];
    [cameraDictionary3 setObject:@"ICTransportTypeUSB" forKeyedSubscript:@"ICDeviceTransportType"];

    cameraDictionary4 = [(PTPCameraDevice *)v5 cameraDictionary];
    [cameraDictionary4 setObject:@"Camera" forKeyedSubscript:@"ICDeviceType"];

    cameraDictionary5 = [(PTPCameraDevice *)v5 cameraDictionary];
    [cameraDictionary5 setObject:@"Camera" forKeyedSubscript:@"ICDeviceProductKind"];
  }

  return v5;
}

- (void)dealloc
{
  __ICOSLogCreate();
  v3 = @"PTPCamera";
  if ([@"PTPCamera" length] >= 0x15)
  {
    v4 = [@"PTPCamera" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  transport = [(PTPInitiator *)self->_initiator transport];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p | %16s - 0x%08X", self, "dealloc locID", [transport locationID]);

  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(PTPInitiator *)self->_initiator setDelegate:0];
  initiator = self->_initiator;
  self->_initiator = 0;

  deviceOperationQueue = [(PTPCameraDevice *)self deviceOperationQueue];
  [deviceOperationQueue waitUntilAllOperationsAreFinished];

  self->_locationID = 0;
  v12.receiver = self;
  v12.super_class = PTPCameraDevice;
  [(PTPCameraDevice *)&v12 dealloc];
}

- (NSXPCListenerEndpoint)endpoint
{
  listener = [(PTPCameraDevice *)self listener];
  endpoint = [listener endpoint];

  return endpoint;
}

- (NSString)internalUUID
{
  cameraDictionary = [(PTPCameraDevice *)self cameraDictionary];
  v3 = [cameraDictionary objectForKeyedSubscript:@"ICInternalDeviceUUID"];

  return v3;
}

- (void)requestEndUsingDevice
{
  __ICOSLogCreate();
  v3 = [NSString stringWithFormat:@"requestEndUsingDevice"];
  v4 = __ICLogTypeEnabled();
  v5 = _gICOSLog;
  if (v4)
  {
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D0A8(v3, v5);
  }

  sessionManager = [(PTPCameraDevice *)self sessionManager];
  v7 = +[NSXPCConnection currentConnection];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
  [sessionManager removeSessionsWithProcessIdentifier:v8];
}

- (void)requestStartUsingDeviceWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSXPCConnection currentConnection];
  v6 = v5;
  memset(&error[1], 0, 32);
  if (v5)
  {
    [v5 auditToken];
  }

  token = *&error[1];
  v7 = SecTaskCreateWithAuditToken(0, &token);
  error[0] = 0;
  v8 = SecTaskCopySigningIdentifier(v7, error);
  CFRelease(v7);
  if (([(__CFString *)v8 isEqualToString:@"com.apple.Photos"]& 1) != 0 || [(__CFString *)v8 isEqualToString:@"com.apple.MobileSlideShow"])
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = &__kCFBooleanFalse;
  }

  __ICOSLogCreate();
  v10 = @"requestStart";
  if ([@"requestStart" length] >= 0x15)
  {
    v11 = [@"requestStart" substringWithRange:{0, 18}];
    v10 = [v11 stringByAppendingString:@".."];
  }

  bOOLValue = [v9 BOOLValue];
  v13 = "NO";
  if (bOOLValue)
  {
    v13 = "YES";
  }

  v14 = [NSString stringWithFormat:@"Process: %@, Request Order Ascending: %s", v8, v13];
  v15 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v10;
    v17 = v15;
    uTF8String = [(__CFString *)v10 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = uTF8String;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001B08;
  v21[3] = &unk_10002C7F8;
  v21[4] = self;
  v22 = v9;
  v23 = replyCopy;
  v19 = replyCopy;
  v20 = [NSBlockOperation blockOperationWithBlock:v21];
  [(PTPCameraDevice *)self addInteractiveOperation:v20];
}

- (void)registerInterestedEventNotifications:(id)notifications
{
  notificationsCopy = notifications;
  +[NSXPCConnection currentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002AC4;
  v8[3] = &unk_10002C820;
  v8[4] = self;
  v10 = v9 = notificationsCopy;
  v5 = v10;
  v6 = notificationsCopy;
  v7 = [NSBlockOperation blockOperationWithBlock:v8];
  [(PTPCameraDevice *)self addInteractiveOperation:v7];
}

- (void)unregisterInterestedEventNotifications:(id)notifications
{
  notificationsCopy = notifications;
  +[NSXPCConnection currentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002C00;
  v8[3] = &unk_10002C820;
  v8[4] = self;
  v10 = v9 = notificationsCopy;
  v5 = v10;
  v6 = notificationsCopy;
  v7 = [NSBlockOperation blockOperationWithBlock:v8];
  [(PTPCameraDevice *)self addInteractiveOperation:v7];
}

- (void)requestMetadataForObjectHandle:(id)handle options:(id)options withReply:(id)reply
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100002D5C;
  v15 = &unk_10002C848;
  selfCopy = self;
  handleCopy = handle;
  optionsCopy = options;
  replyCopy = reply;
  v8 = replyCopy;
  v9 = optionsCopy;
  v10 = handleCopy;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(PTPCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, selfCopy];
}

- (void)requestThumbnailDataForObjectHandle:(id)handle options:(id)options withReply:(id)reply
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100002F34;
  v15 = &unk_10002C848;
  selfCopy = self;
  handleCopy = handle;
  optionsCopy = options;
  replyCopy = reply;
  v8 = replyCopy;
  v9 = optionsCopy;
  v10 = handleCopy;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(PTPCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, selfCopy];
}

- (void)requestDownloadObjectHandle:(id)handle options:(id)options withReply:(id)reply
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000030E0;
  v13 = &unk_10002C870;
  optionsCopy = options;
  replyCopy = reply;
  v7 = replyCopy;
  v8 = optionsCopy;
  v9 = [NSBlockOperation blockOperationWithBlock:&v10];
  [(PTPCameraDevice *)self addInteractiveOperation:v9, v10, v11, v12, v13];
}

- (void)requestReadDataFromObjectHandle:(id)handle options:(id)options withReply:(id)reply
{
  handleCopy = handle;
  optionsCopy = options;
  replyCopy = reply;
  v11 = [optionsCopy objectForKeyedSubscript:@"ICReadBufferStreamOpen"];
  if (v11)
  {
  }

  else
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"ICReadBufferStreamClose"];

    if (!v12)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100003314;
      v18 = &unk_10002C848;
      selfCopy = self;
      v20 = handleCopy;
      v21 = optionsCopy;
      v22 = replyCopy;
      v14 = [NSBlockOperation blockOperationWithBlock:&v15];
      [(PTPCameraDevice *)self addInteractiveOperation:v14, v15, v16, v17, v18, selfCopy];

      goto LABEL_5;
    }
  }

  v13 = +[NSMutableDictionary dictionary];
  [v13 addEntriesFromDictionary:optionsCopy];
  [v13 setObject:&off_10002F450 forKeyedSubscript:@"errCode"];
  (*(replyCopy + 2))(replyCopy, v13);

LABEL_5:
}

- (void)requestDeleteObjectHandle:(id)handle options:(id)options withReply:(id)reply
{
  handleCopy = handle;
  optionsCopy = options;
  replyCopy = reply;
  +[NSXPCConnection currentConnection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003710;
  v16[3] = &unk_10002C898;
  v16[4] = self;
  v19 = v17 = handleCopy;
  v20 = replyCopy;
  v18 = optionsCopy;
  v11 = v19;
  v12 = replyCopy;
  v13 = optionsCopy;
  v14 = handleCopy;
  v15 = [NSBlockOperation blockOperationWithBlock:v16];
  [(PTPCameraDevice *)self addInteractiveOperation:v15];
}

- (void)requestFingerprintForObjectHandle:(id)handle withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003A88;
  v9[3] = &unk_10002C7F8;
  v9[4] = self;
  handleCopy = handle;
  replyCopy = reply;
  v6 = replyCopy;
  v7 = handleCopy;
  v8 = [NSBlockOperation blockOperationWithBlock:v9];
  [(PTPCameraDevice *)self addInteractiveOperation:v8];
}

- (void)sendPTPCommand:(id)command andPayload:(id)payload withReply:(id)reply
{
  commandCopy = command;
  payloadCopy = payload;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  v25 = 0u;
  v26 = 0u;
  if (v11)
  {
    [v11 auditToken];
  }

  v23 = v25;
  v24 = v26;
  if (TCCAccessCheckAuditToken())
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100003D58;
    v18 = &unk_10002C848;
    selfCopy = self;
    v20 = commandCopy;
    v21 = payloadCopy;
    v22 = replyCopy;
    v13 = [NSBlockOperation blockOperationWithBlock:&v15];
    [(PTPCameraDevice *)self addInteractiveOperation:v13, v15, v16, v17, v18, selfCopy];
  }

  else
  {
    v14 = +[NSMutableDictionary dictionary];
    [v14 setObject:&off_10002F480 forKeyedSubscript:@"errCode"];
    (*(replyCopy + 2))(replyCopy, v14);
  }
}

- (void)enumerateContentWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[NSXPCConnection currentConnection];
  [(PTPCameraDevice *)self setPrioritizeSpeed:0];
  v6 = [optionsCopy objectForKeyedSubscript:@"ICEnumerationPrioritizeSpeed"];
  if (v6 && (v7 = v6, [optionsCopy objectForKeyedSubscript:@"ICEnumerationPrioritizeSpeed"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, v9))
  {
    __ICOSLogCreate();
    v10 = @"Enum-Priority";
    if ([@"Enum-Priority" length] >= 0x15)
    {
      v11 = [@"Enum-Priority" substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    v12 = [NSString stringWithFormat:@">>> Set Prioritize Speed"];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v10;
      v15 = v13;
      *buf = 136446466;
      uTF8String = [(__CFString *)v10 UTF8String];
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(PTPCameraDevice *)self setPrioritizeSpeed:1];
  }

  else
  {
    __ICOSLogCreate();
    v16 = @"Enum-Priority";
    if ([@"Enum-Priority" length] >= 0x15)
    {
      v17 = [@"Enum-Priority" substringWithRange:{0, 18}];
      v16 = [v17 stringByAppendingString:@".."];
    }

    v18 = [NSString stringWithFormat:@">>> Set Prioritize Fidelity"];
    v19 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v16;
      v21 = v19;
      *buf = 136446466;
      uTF8String = [(__CFString *)v16 UTF8String];
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000410C;
  v25[3] = &unk_10002C820;
  v25[4] = self;
  v26 = optionsCopy;
  v27 = v5;
  v22 = v5;
  v23 = optionsCopy;
  v24 = [NSBlockOperation blockOperationWithBlock:v25];
  [(PTPCameraDevice *)self addInteractiveOperation:v24];
}

- (id)additionalProperties
{
  v6 = @"ICDeviceAccessRestrictedAppleDevice";
  initiator = [(PTPCameraDevice *)self initiator];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [initiator isAccessRestrictedAppleDevice]);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)itemForObjectHandle:(id)handle
{
  handleCopy = handle;
  initiator = [(PTPCameraDevice *)self initiator];
  unsignedIntegerValue = [handleCopy unsignedIntegerValue];

  v7 = [initiator cameraItemWithObjectID:unsignedIntegerValue];

  return v7;
}

- (BOOL)acceptConnection:(id)connection
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PTPCameraDevice;
  if (![(PTPCameraDevice *)&v15 acceptConnection:connectionCopy])
  {
    v14.receiver = self;
    v14.super_class = PTPCameraDevice;
    if (![(PTPCameraDevice *)&v14 evaulateCommonTCC:connectionCopy])
    {
      v12 = 0;
      goto LABEL_10;
    }

    __ICOSLogCreate();
    v5 = @"TCC Access";
    if ([@"TCC Access" length] >= 0x15)
    {
      v6 = [@"TCC Access" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [NSString stringWithFormat:@"Access has been granted"];
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5;
      v10 = v8;
      uTF8String = [(__CFString *)v5 UTF8String];
      *buf = 136446466;
      v17 = uTF8String;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (void)closeDevice
{
  v3 = dispatch_semaphore_create(0);
  deviceOperationQueue = [(PTPCameraDevice *)self deviceOperationQueue];
  [deviceOperationQueue cancelAllOperations];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100004CF8;
  v22[3] = &unk_10002C900;
  v22[4] = self;
  v5 = v3;
  v23 = v5;
  v6 = [NSBlockOperation blockOperationWithBlock:v22];
  [(PTPCameraDevice *)self addInteractiveOperation:v6];

  v7 = dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  __ICOSLogCreate();
  v8 = [@"closeDevice" length];
  if (v7)
  {
    if (v8 >= 0x15)
    {
      v9 = [@"closeDevice" substringWithRange:{0, 18}];
      v11 = [v9 stringByAppendingString:@".."];
    }

    else
    {
      v11 = @"closeDevice";
    }

    cameraDictionary = [(PTPCameraDevice *)self cameraDictionary];
    v13 = [cameraDictionary objectForKeyedSubscript:@"ICDeviceName"];
    v14 = [NSString stringWithFormat:@">>> Close Timed Out: %@", v13];

    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D134(v11, v15, v14);
    }
  }

  else
  {
    if (v8 >= 0x15)
    {
      v10 = [@"closeDevice" substringWithRange:{0, 18}];
      v11 = [v10 stringByAppendingString:@".."];
    }

    else
    {
      v11 = @"closeDevice";
    }

    cameraDictionary2 = [(PTPCameraDevice *)self cameraDictionary];
    v17 = [cameraDictionary2 objectForKeyedSubscript:@"ICDeviceName"];
    v14 = [NSString stringWithFormat:@">>> Device Closed: %@", v17];

    v18 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v11;
      v20 = v18;
      uTF8String = [(__CFString *)v11 UTF8String];
      *buf = 136446466;
      v25 = uTF8String;
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  [(PTPCameraDevice *)self setInitiator:0];
}

@end