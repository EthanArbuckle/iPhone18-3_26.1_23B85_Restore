@interface NDTMessaging
- (NDTMessaging)initWithIDSServiceName:(id)name logging:(id)logging;
- (id)_makeMessageFromWireData:(id)data;
- (id)_makeWireMessageType:(id)type content:(id)content;
- (id)_rawSendData:(id)data type:(id)type responseIdentifier:(id)identifier error:(id *)error;
- (id)_rawSendFile:(id)file type:(id)type responseIdentifier:(id)identifier error:(id *)error;
- (void)registerMessageType:(id)type handler:(id)handler;
- (void)reply:(id)reply to:(id)to completion:(id)completion;
- (void)sendMessage:(id)message responseHandler:(id)handler completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)setPriority:(unsigned int)priority;
@end

@implementation NDTMessaging

- (NDTMessaging)initWithIDSServiceName:(id)name logging:(id)logging
{
  nameCopy = name;
  loggingCopy = logging;
  v20.receiver = self;
  v20.super_class = NDTMessaging;
  v8 = [(NDTMessaging *)&v20 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = objc_opt_new();
    v12 = *(v8 + 2);
    *(v8 + 2) = v11;

    objc_storeStrong(v8 + 6, logging);
    v13 = dispatch_queue_create("NDTMessaging", 0);
    v14 = *(v8 + 3);
    *(v8 + 3) = v13;

    dispatch_suspend(*(v8 + 3));
    *(v8 + 5) = 200;
    *(v8 + 28) = 1;
    v21[0] = IDSSendMessageOptionTimeoutKey;
    v21[1] = IDSSendMessageOptionEncryptPayloadKey;
    v22[0] = &off_1000BB8D8;
    v22[1] = &__kCFBooleanTrue;
    v21[2] = IDSSendMessageOptionBypassDuetKey;
    v22[2] = &__kCFBooleanFalse;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
    v16 = *(v8 + 8);
    *(v8 + 8) = v15;

    v17 = [[IDSService alloc] initWithService:nameCopy];
    v18 = *(v8 + 4);
    *(v8 + 4) = v17;

    [*(v8 + 4) addDelegate:v8 queue:*(v8 + 3)];
  }

  return v8;
}

- (void)registerMessageType:(id)type handler:(id)handler
{
  typeCopy = type;
  v8 = [handler copy];
  v7 = objc_retainBlock(v8);
  [(NSMutableDictionary *)self->_handlers setObject:v7 forKeyedSubscript:typeCopy];
}

- (void)setPriority:(unsigned int)priority
{
  v3 = 200;
  if (priority == 300)
  {
    v3 = 300;
  }

  if (priority == 100)
  {
    v3 = 100;
  }

  self->_priority = v3;
}

- (id)_makeWireMessageType:(id)type content:(id)content
{
  contentCopy = content;
  v6 = [type dataUsingEncoding:4];
  v7 = objc_opt_new();
  if (!([v6 length] >> 32))
  {
    [contentCopy length];
  }

  v9 = [v6 length];
  [v7 appendBytes:&v9 length:4];
  [v7 appendData:v6];
  v9 = [contentCopy length];
  [v7 appendBytes:&v9 length:4];
  [v7 appendData:contentCopy];

  return v7;
}

- (id)_makeMessageFromWireData:(id)data
{
  v10 = 0;
  dataCopy = data;
  [dataCopy getBytes:&v10 range:{0, 4}];
  v4 = [dataCopy subdataWithRange:{4, v10}];
  v5 = [[NSString alloc] initWithData:v4 encoding:4];
  v9 = 0;
  [dataCopy getBytes:&v9 range:{v10 + 4, 4}];
  v6 = [dataCopy subdataWithRange:{v10 + 8, v9}];

  v7 = [[NDTMessage alloc] initWithData:v6];
  [(NDTMessage *)v7 setMsgType:v5];

  return v7;
}

- (id)_rawSendData:(id)data type:(id)type responseIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  typeCopy = type;
  dataCopy = data;
  idsOptions = [(NDTMessaging *)self idsOptions];
  v14 = [idsOptions mutableCopy];

  if (identifierCopy)
  {
    v15 = identifierCopy;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v16 = &IDSSendMessageOptionExpectsPeerResponseKey;
  if (identifierCopy)
  {
    v16 = &IDSSendMessageOptionPeerResponseIdentifierKey;
  }

  [v14 setObject:v15 forKeyedSubscript:*v16];
  v17 = [NSNumber numberWithBool:self->_cloudFallback];
  [v14 setObject:v17 forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];

  v18 = [(NDTMessaging *)self _makeWireMessageType:typeCopy content:dataCopy];

  service = self->_service;
  v20 = [NSSet setWithObject:IDSDefaultPairedDevice];
  priority = self->_priority;
  v29 = 0;
  v22 = [(IDSService *)service sendData:v18 toDestinations:v20 priority:priority options:v14 identifier:&v29 error:error];
  v23 = v29;

  os_log_facility = self->_logFacility->os_log_facility;
  v25 = os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v31 = v23;
    v26 = "_rawSendData assigned IDS identifier: %@";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    v27 = *error;
    *buf = 138543362;
    v31 = v27;
    v26 = "_rawSendData has an error: %{public}@";
  }

  _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
LABEL_12:

  return v23;
}

- (id)_rawSendFile:(id)file type:(id)type responseIdentifier:(id)identifier error:(id *)error
{
  typeCopy = type;
  identifierCopy = identifier;
  fileCopy = file;
  idsOptions = [(NDTMessaging *)self idsOptions];
  v14 = [idsOptions mutableCopy];

  if (identifierCopy)
  {
    v15 = identifierCopy;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v16 = &IDSSendMessageOptionExpectsPeerResponseKey;
  if (identifierCopy)
  {
    v16 = &IDSSendMessageOptionPeerResponseIdentifierKey;
  }

  [v14 setObject:v15 forKeyedSubscript:*v16];
  v17 = [NSNumber numberWithBool:self->_cloudFallback];
  [v14 setObject:v17 forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];

  if (typeCopy)
  {
    v18 = typeCopy;
  }

  else
  {
    v18 = &stru_1000B7928;
  }

  v33 = @"msgType";
  v34 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  service = self->_service;
  v21 = [NSURL fileURLWithPath:fileCopy];

  v22 = [NSSet setWithObject:IDSDefaultPairedDevice];
  priority = self->_priority;
  v30 = 0;
  LODWORD(service) = [(IDSService *)service sendResourceAtURL:v21 metadata:v19 toDestinations:v22 priority:priority options:v14 identifier:&v30 error:error];
  v24 = v30;

  os_log_facility = self->_logFacility->os_log_facility;
  v26 = os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT);
  if (service)
  {
    if (!v26)
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v32 = v24;
    v27 = "_rawSendFile assigned IDS identifier: %@";
  }

  else
  {
    if (!v26)
    {
      goto LABEL_15;
    }

    v28 = *error;
    *buf = 138543362;
    v32 = v28;
    v27 = "_rawSendFile has an error: %{public}@";
  }

  _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_15:

  return v24;
}

- (void)sendMessage:(id)message responseHandler:(id)handler completion:(id)completion
{
  messageCopy = message;
  handlerCopy = handler;
  completionCopy = completion;
  v11 = os_transaction_create();
  objc_initWeak(&location, self);
  q = self->_q;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100012F6C;
  v17[3] = &unk_1000B4E48;
  objc_copyWeak(&v22, &location);
  v18 = messageCopy;
  v19 = v11;
  v20 = handlerCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  v15 = handlerCopy;
  v16 = messageCopy;
  dispatch_async(q, v17);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)reply:(id)reply to:(id)to completion:(id)completion
{
  replyCopy = reply;
  toCopy = to;
  completionCopy = completion;
  v11 = os_transaction_create();
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013304;
  block[3] = &unk_1000B4E70;
  v18 = replyCopy;
  selfCopy = self;
  v21 = v11;
  v22 = completionCopy;
  v20 = toCopy;
  v13 = v11;
  v14 = completionCopy;
  v15 = toCopy;
  v16 = replyCopy;
  dispatch_async(q, block);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  contextCopy = context;
  v10 = [(NDTMessaging *)self _makeMessageFromWireData:data];
  v11 = os_transaction_create();
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    [v10 setResponseIdentifier:outgoingResponseIdentifier];

    handlers = self->_handlers;
    msgType = [v10 msgType];
    v24 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:msgType];

    if (v24)
    {
      v25 = dispatch_get_global_queue(0, 0);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10001374C;
      v28[3] = &unk_1000B4E98;
      v31 = v24;
      v29 = v10;
      v30 = v11;
      v17 = v24;
      dispatch_async(v25, v28);

      v20 = v31;
      goto LABEL_6;
    }

    os_log_facility = self->_logFacility->os_log_facility;
    if (!os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v27 = "Can't find a handler for this message";
LABEL_11:
    _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_12;
  }

  outstanding = self->_outstanding;
  incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
  v15 = [(NSMutableDictionary *)outstanding objectForKeyedSubscript:incomingResponseIdentifier2];

  if (!v15)
  {
    os_log_facility = self->_logFacility->os_log_facility;
    if (!os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v27 = "Incoming reply message but no handler registered.";
    goto LABEL_11;
  }

  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013734;
  block[3] = &unk_1000B4E98;
  v36 = v15;
  v34 = v10;
  v35 = v11;
  v17 = v15;
  dispatch_async(v16, block);

  v18 = self->_outstanding;
  incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
  [(NSMutableDictionary *)v18 removeObjectForKey:incomingResponseIdentifier3];

  v20 = v36;
LABEL_6:

LABEL_12:
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  lCopy = l;
  contextCopy = context;
  metadataCopy = metadata;
  v14 = [NDTMessage alloc];
  path = [lCopy path];
  v16 = [(NDTMessage *)v14 initWithFile:path];

  v17 = [metadataCopy objectForKeyedSubscript:@"msgType"];

  [(NDTMessage *)v16 setMsgType:v17];
  strcpy(buf, "/tmp/verifier_data.XXXXXX");
  v18 = lCopy;
  lastPathComponent = [v18 lastPathComponent];
  mkdtemp(buf);
  v20 = [NSString stringWithFormat:@"%s/%@", buf, lastPathComponent];
  fileSystemRepresentation = [v18 fileSystemRepresentation];

  link(fileSystemRepresentation, [v20 UTF8String]);
  [(NDTMessage *)v16 setPath:v20];

  v22 = os_transaction_create();
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    [(NDTMessage *)v16 setResponseIdentifier:outgoingResponseIdentifier];

    handlers = self->_handlers;
    msgType = [(NDTMessage *)v16 msgType];
    v35 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:msgType];

    if (v35)
    {
      v36 = dispatch_get_global_queue(0, 0);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100013BA8;
      v39[3] = &unk_1000B4E98;
      v42 = v35;
      v40 = v16;
      v41 = v22;
      v28 = v35;
      dispatch_async(v36, v39);

      v31 = v42;
      goto LABEL_6;
    }

    os_log_facility = self->_logFacility->os_log_facility;
    if (!os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v38 = "Can't find a handler for this message";
LABEL_11:
    _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
    goto LABEL_12;
  }

  outstanding = self->_outstanding;
  incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
  v26 = [(NSMutableDictionary *)outstanding objectForKeyedSubscript:incomingResponseIdentifier2];

  if (!v26)
  {
    os_log_facility = self->_logFacility->os_log_facility;
    if (!os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v38 = "Incoming reply message but no handler registered.";
    goto LABEL_11;
  }

  v27 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013B90;
  block[3] = &unk_1000B4E98;
  v46 = v26;
  v44 = v16;
  v45 = v22;
  v28 = v26;
  dispatch_async(v27, block);

  v29 = self->_outstanding;
  incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
  [(NSMutableDictionary *)v29 removeObjectForKey:incomingResponseIdentifier3];

  v31 = v46;
LABEL_6:

LABEL_12:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  os_log_facility = self->_logFacility->os_log_facility;
  if (os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109634;
    if (successCopy)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    v14[1] = v13;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, "didSend:%c IDS id: %{public}@, error: %{public}@", v14, 0x1Cu);
  }
}

@end