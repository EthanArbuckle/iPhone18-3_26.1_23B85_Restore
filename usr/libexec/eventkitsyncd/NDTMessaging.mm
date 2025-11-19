@interface NDTMessaging
- (NDTMessaging)initWithIDSServiceName:(id)a3 logging:(id)a4;
- (id)_makeMessageFromWireData:(id)a3;
- (id)_makeWireMessageType:(id)a3 content:(id)a4;
- (id)_rawSendData:(id)a3 type:(id)a4 responseIdentifier:(id)a5 error:(id *)a6;
- (id)_rawSendFile:(id)a3 type:(id)a4 responseIdentifier:(id)a5 error:(id *)a6;
- (void)registerMessageType:(id)a3 handler:(id)a4;
- (void)reply:(id)a3 to:(id)a4 completion:(id)a5;
- (void)sendMessage:(id)a3 responseHandler:(id)a4 completion:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)setPriority:(unsigned int)a3;
@end

@implementation NDTMessaging

- (NDTMessaging)initWithIDSServiceName:(id)a3 logging:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    objc_storeStrong(v8 + 6, a4);
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

    v17 = [[IDSService alloc] initWithService:v6];
    v18 = *(v8 + 4);
    *(v8 + 4) = v17;

    [*(v8 + 4) addDelegate:v8 queue:*(v8 + 3)];
  }

  return v8;
}

- (void)registerMessageType:(id)a3 handler:(id)a4
{
  v6 = a3;
  v8 = [a4 copy];
  v7 = objc_retainBlock(v8);
  [(NSMutableDictionary *)self->_handlers setObject:v7 forKeyedSubscript:v6];
}

- (void)setPriority:(unsigned int)a3
{
  v3 = 200;
  if (a3 == 300)
  {
    v3 = 300;
  }

  if (a3 == 100)
  {
    v3 = 100;
  }

  self->_priority = v3;
}

- (id)_makeWireMessageType:(id)a3 content:(id)a4
{
  v5 = a4;
  v6 = [a3 dataUsingEncoding:4];
  v7 = objc_opt_new();
  if (!([v6 length] >> 32))
  {
    [v5 length];
  }

  v9 = [v6 length];
  [v7 appendBytes:&v9 length:4];
  [v7 appendData:v6];
  v9 = [v5 length];
  [v7 appendBytes:&v9 length:4];
  [v7 appendData:v5];

  return v7;
}

- (id)_makeMessageFromWireData:(id)a3
{
  v10 = 0;
  v3 = a3;
  [v3 getBytes:&v10 range:{0, 4}];
  v4 = [v3 subdataWithRange:{4, v10}];
  v5 = [[NSString alloc] initWithData:v4 encoding:4];
  v9 = 0;
  [v3 getBytes:&v9 range:{v10 + 4, 4}];
  v6 = [v3 subdataWithRange:{v10 + 8, v9}];

  v7 = [[NDTMessage alloc] initWithData:v6];
  [(NDTMessage *)v7 setMsgType:v5];

  return v7;
}

- (id)_rawSendData:(id)a3 type:(id)a4 responseIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(NDTMessaging *)self idsOptions];
  v14 = [v13 mutableCopy];

  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v16 = &IDSSendMessageOptionExpectsPeerResponseKey;
  if (v10)
  {
    v16 = &IDSSendMessageOptionPeerResponseIdentifierKey;
  }

  [v14 setObject:v15 forKeyedSubscript:*v16];
  v17 = [NSNumber numberWithBool:self->_cloudFallback];
  [v14 setObject:v17 forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];

  v18 = [(NDTMessaging *)self _makeWireMessageType:v11 content:v12];

  service = self->_service;
  v20 = [NSSet setWithObject:IDSDefaultPairedDevice];
  priority = self->_priority;
  v29 = 0;
  v22 = [(IDSService *)service sendData:v18 toDestinations:v20 priority:priority options:v14 identifier:&v29 error:a6];
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

    v27 = *a6;
    *buf = 138543362;
    v31 = v27;
    v26 = "_rawSendData has an error: %{public}@";
  }

  _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
LABEL_12:

  return v23;
}

- (id)_rawSendFile:(id)a3 type:(id)a4 responseIdentifier:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [(NDTMessaging *)self idsOptions];
  v14 = [v13 mutableCopy];

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v16 = &IDSSendMessageOptionExpectsPeerResponseKey;
  if (v11)
  {
    v16 = &IDSSendMessageOptionPeerResponseIdentifierKey;
  }

  [v14 setObject:v15 forKeyedSubscript:*v16];
  v17 = [NSNumber numberWithBool:self->_cloudFallback];
  [v14 setObject:v17 forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];

  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = &stru_1000B7928;
  }

  v33 = @"msgType";
  v34 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  service = self->_service;
  v21 = [NSURL fileURLWithPath:v12];

  v22 = [NSSet setWithObject:IDSDefaultPairedDevice];
  priority = self->_priority;
  v30 = 0;
  LODWORD(service) = [(IDSService *)service sendResourceAtURL:v21 metadata:v19 toDestinations:v22 priority:priority options:v14 identifier:&v30 error:a6];
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

    v28 = *a6;
    *buf = 138543362;
    v32 = v28;
    v27 = "_rawSendFile has an error: %{public}@";
  }

  _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_15:

  return v24;
}

- (void)sendMessage:(id)a3 responseHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  objc_initWeak(&location, self);
  q = self->_q;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100012F6C;
  v17[3] = &unk_1000B4E48;
  objc_copyWeak(&v22, &location);
  v18 = v8;
  v19 = v11;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  dispatch_async(q, v17);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)reply:(id)a3 to:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013304;
  block[3] = &unk_1000B4E70;
  v18 = v8;
  v19 = self;
  v21 = v11;
  v22 = v10;
  v20 = v9;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(q, block);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a7;
  v10 = [(NDTMessaging *)self _makeMessageFromWireData:a5];
  v11 = os_transaction_create();
  v12 = [v9 incomingResponseIdentifier];

  if (!v12)
  {
    v21 = [v9 outgoingResponseIdentifier];
    [v10 setResponseIdentifier:v21];

    handlers = self->_handlers;
    v23 = [v10 msgType];
    v24 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:v23];

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
  v14 = [v9 incomingResponseIdentifier];
  v15 = [(NSMutableDictionary *)outstanding objectForKeyedSubscript:v14];

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
  v19 = [v9 incomingResponseIdentifier];
  [(NSMutableDictionary *)v18 removeObjectForKey:v19];

  v20 = v36;
LABEL_6:

LABEL_12:
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v11 = a5;
  v12 = a8;
  v13 = a6;
  v14 = [NDTMessage alloc];
  v15 = [v11 path];
  v16 = [(NDTMessage *)v14 initWithFile:v15];

  v17 = [v13 objectForKeyedSubscript:@"msgType"];

  [(NDTMessage *)v16 setMsgType:v17];
  strcpy(buf, "/tmp/verifier_data.XXXXXX");
  v18 = v11;
  v19 = [v18 lastPathComponent];
  mkdtemp(buf);
  v20 = [NSString stringWithFormat:@"%s/%@", buf, v19];
  v21 = [v18 fileSystemRepresentation];

  link(v21, [v20 UTF8String]);
  [(NDTMessage *)v16 setPath:v20];

  v22 = os_transaction_create();
  v23 = [v12 incomingResponseIdentifier];

  if (!v23)
  {
    v32 = [v12 outgoingResponseIdentifier];
    [(NDTMessage *)v16 setResponseIdentifier:v32];

    handlers = self->_handlers;
    v34 = [(NDTMessage *)v16 msgType];
    v35 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:v34];

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
  v25 = [v12 incomingResponseIdentifier];
  v26 = [(NSMutableDictionary *)outstanding objectForKeyedSubscript:v25];

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
  v30 = [v12 incomingResponseIdentifier];
  [(NSMutableDictionary *)v29 removeObjectForKey:v30];

  v31 = v46;
LABEL_6:

LABEL_12:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v10 = a5;
  v11 = a7;
  os_log_facility = self->_logFacility->os_log_facility;
  if (os_log_type_enabled(os_log_facility, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109634;
    if (v8)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    v14[1] = v13;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, os_log_facility, OS_LOG_TYPE_DEFAULT, "didSend:%c IDS id: %{public}@, error: %{public}@", v14, 0x1Cu);
  }
}

@end