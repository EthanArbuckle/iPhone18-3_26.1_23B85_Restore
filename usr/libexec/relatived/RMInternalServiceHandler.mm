@interface RMInternalServiceHandler
- (RMInternalServiceHandler)initWithEndpoint:(id)endpoint managedListener:(id)listener;
- (void)dealloc;
- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block;
@end

@implementation RMInternalServiceHandler

- (RMInternalServiceHandler)initWithEndpoint:(id)endpoint managedListener:(id)listener
{
  endpointCopy = endpoint;
  listenerCopy = listener;
  v10.receiver = self;
  v10.super_class = RMInternalServiceHandler;
  v8 = [(RMInternalServiceHandler *)&v10 init];
  if (v8)
  {
    sub_10001541C(endpointCopy, v8);
    [(RMInternalServiceHandler *)v8 setEndpoint:endpointCopy];
    [(RMInternalServiceHandler *)v8 setListener:listenerCopy];
  }

  return v8;
}

- (void)dealloc
{
  endpoint = [(RMInternalServiceHandler *)self endpoint];
  sub_10001541C(endpoint, 0);

  [(RMInternalServiceHandler *)self setEndpoint:0];
  v4.receiver = self;
  v4.super_class = RMInternalServiceHandler;
  [(RMInternalServiceHandler *)&v4 dealloc];
}

- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block
{
  endpointCopy = endpoint;
  messageCopy = message;
  dataCopy = data;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100002F24;
  v39[3] = &unk_100024A30;
  v39[4] = self;
  blockCopy = block;
  v40 = blockCopy;
  v14 = objc_retainBlock(v39);
  if ([messageCopy isEqualToString:@"RMSpiGetNumClients"])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x2020000000;
    v43 = 0;
    listener = self->_listener;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000303C;
    v36[3] = &unk_100024A58;
    p_buf = &buf;
    v37 = v14;
    [(RMConnectionListener *)listener traverseEndpointsAsynchronously:v36];

LABEL_5:
    _Block_object_dispose(&buf, 8);
    goto LABEL_6;
  }

  if ([messageCopy isEqualToString:@"RMSpiDisconnectAllClients"])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x2020000000;
    v43 = 0;
    v16 = self->_listener;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100003110;
    v33[3] = &unk_100024A58;
    v35 = &buf;
    v34 = v14;
    [(RMConnectionListener *)v16 traverseEndpointsAsynchronously:v33];

    goto LABEL_5;
  }

  if ([messageCopy isEqualToString:@"RMSpiListClients"])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = sub_1000031EC;
    v44 = sub_1000031FC;
    v45 = objc_opt_new();
    v17 = self->_listener;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100003204;
    v30[3] = &unk_100024A58;
    v32 = &buf;
    v31 = v14;
    [(RMConnectionListener *)v17 traverseEndpointsAsynchronously:v30];

    _Block_object_dispose(&buf, 8);
  }

  else if ([messageCopy isEqualToString:@"RMSpiDisconnectClient"])
  {
    v29 = 0;
    v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v29];
    v19 = v29;
    if (v18)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v42 = 0x2020000000;
      v43 = 0;
      v20 = self->_listener;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000032C0;
      v25[3] = &unk_100024A80;
      v26 = v18;
      v28 = &buf;
      v27 = v14;
      [(RMConnectionListener *)v20 traverseEndpointsAsynchronously:v25];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = [NSKeyedArchiver archivedDataWithRootObject:v19 requiringSecureCoding:1 error:0];
      (v14[2])(v14, @"RMSpiError", v24);
    }
  }

  else
  {
    if (qword_10002C0D8 != -1)
    {
      sub_100011FB0();
    }

    v21 = qword_10002C0E0;
    if (os_log_type_enabled(qword_10002C0E0, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = messageCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unknown message: %@", &buf, 0xCu);
    }

    v22 = [NSError errorWithDomain:@"RMSpiError" code:-699 userInfo:0];
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
    (v14[2])(v14, @"RMSpiError", v23);
  }

LABEL_6:
}

@end