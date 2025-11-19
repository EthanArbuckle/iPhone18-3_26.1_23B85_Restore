@interface BTVCBonjourEndpoint
+ (id)createConnectionParameters;
- (BTVCBonjourEndpoint)initWithConnection:(id)a3 connectionType:(unsigned __int8)a4 localUniqueID:(id)a5 withQueue:(id)a6;
- (id)_getServerRemoteUUIDFromConnectionMetadata:(id)a3 connectionType:(unsigned __int8)a4;
- (void)_handleUUIDHeaders;
- (void)_startConnection;
- (void)cancel;
- (void)receiveNextMessage;
- (void)sendDataMessage:(id)a3 completion:(id)a4;
@end

@implementation BTVCBonjourEndpoint

- (BTVCBonjourEndpoint)initWithConnection:(id)a3 connectionType:(unsigned __int8)a4 localUniqueID:(id)a5 withQueue:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = BTVCBonjourEndpoint;
  v14 = [(BTVCBonjourEndpoint *)&v25 init];
  v15 = v14;
  if (v14)
  {
    if (v12 && v11 && v13)
    {
      objc_storeStrong(&v14->_queue, a6);
      objc_storeStrong(&v15->_connection, a3);
      v16 = nw_connection_copy_endpoint(v15->_connection);
      remoteEndpoint = v15->_remoteEndpoint;
      v15->_remoteEndpoint = v16;

      if (v15->_remoteEndpoint)
      {
        v15->_connectionType = a4;
        objc_storeStrong(&v15->_localUniqueIDString, a5);
        [(BTVCBonjourEndpoint *)v15 _startConnection];
        if ((v15->_connectionType & 2) != 0)
        {
          v18 = objc_alloc_init(NSMutableSet);
          remoteAdvDataSet = v15->_remoteAdvDataSet;
          v15->_remoteAdvDataSet = v18;
        }

        goto LABEL_8;
      }

      v21 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        v22 = "[BTVCBonjourEndpoint] Invalid remoteEndpoint ";
        goto LABEL_13;
      }
    }

    else
    {
      v21 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        v22 = "[BTVCBonjourEndpoint] Invalid arguments to BTVCBonjourEndpoint";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, v24, 2u);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v20 = v15;
LABEL_15:

  return v20;
}

- (void)_startConnection
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] Started connecting to %@", &buf, 0xCu);
  }

  nw_connection_set_queue(self->_connection, self->_queue);
  objc_initWeak(&location, self);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_10004238C;
  v17 = sub_10004265C;
  v18 = 0;
  v5 = self->_connection;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1005B7B88;
  v9 = &unk_100AFF5E8;
  objc_copyWeak(&v12, &location);
  v10 = self;
  p_buf = &buf;
  nw_connection_set_state_changed_handler(v5, &v6);
  [(BTVCBonjourEndpoint *)self _handleUUIDHeaders:v6];
  nw_connection_start(self->_connection);
  objc_destroyWeak(&v12);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (id)_getServerRemoteUUIDFromConnectionMetadata:(id)a3 connectionType:(unsigned __int8)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10004238C;
    v19 = sub_10004265C;
    v20 = 0;
    v7 = nw_protocol_copy_ws_definition();
    v8 = nw_connection_copy_protocol_metadata(v6, v7);

    v9 = nw_ws_metadata_copy_server_response(v8);
    v10 = v9;
    if (v9)
    {
      enumerator[0] = _NSConcreteStackBlock;
      enumerator[1] = 3221225472;
      enumerator[2] = sub_1005B8210;
      enumerator[3] = &unk_100AFF610;
      enumerator[4] = &v15;
      nw_ws_response_enumerate_additional_headers(v9, enumerator);
    }

    v11 = v16[5];
    if (!v11)
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_10084A684();
      }

      v11 = v16[5];
    }

    v12 = v11;

    _Block_object_dispose(&v15, 8);
  }

  return v12;
}

- (void)_handleUUIDHeaders
{
  v3 = nw_connection_copy_parameters(self->_connection);
  v4 = nw_parameters_copy_default_protocol_stack(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10004238C;
  v16 = sub_10004265C;
  v17 = 0;
  iterate_block[0] = _NSConcreteStackBlock;
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_1005B8498;
  iterate_block[3] = &unk_100AFF638;
  iterate_block[4] = &v12;
  nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
  v5 = v13[5];
  if (v5)
  {
    if ((self->_connectionType & 2) != 0)
    {
      nw_ws_options_add_additional_header(v5, "BTVCBonjourEndpointClientUUIDHeader", [(NSString *)self->_localUniqueIDString UTF8String]);
    }

    else
    {
      objc_initWeak(&location, self);
      v6 = v13[5];
      queue = self->_queue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1005B8560;
      handler[3] = &unk_100AFF688;
      objc_copyWeak(&v9, &location);
      nw_ws_options_set_client_request_handler(v6, queue, handler);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_10084A6B8();
  }

  _Block_object_dispose(&v12, 8);
}

- (void)cancel
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (connection)
  {

    nw_connection_cancel(connection);
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_10084A6EC();
  }
}

- (void)receiveNextMessage
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connection)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005B8854;
    v4[3] = &unk_100AFF6B0;
    objc_copyWeak(&v5, &location);
    nw_connection_receive_message(connection, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_10084A720();
  }
}

- (void)sendDataMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connection)
  {
    v8 = dispatch_data_create([v6 bytes], objc_msgSend(v6, "length"), 0, 0);
    metadata = nw_ws_create_metadata(nw_ws_opcode_binary);
    v10 = nw_content_context_create("send");
    nw_content_context_set_metadata_for_protocol(v10, metadata);
    connection = self->_connection;
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_1005B8CB8;
    completion[3] = &unk_100AFF6D8;
    v14 = v6;
    v15 = v7;
    nw_connection_send(connection, v8, v10, 1, completion);

LABEL_5:
    goto LABEL_6;
  }

  if (v7)
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Unable to send message, nil connection";
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:v12];

    (*(v7 + 2))(v7, v8);
    goto LABEL_5;
  }

LABEL_6:
}

+ (id)createConnectionParameters
{
  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, &stru_100AFF718);
  v3 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  options = nw_ws_create_options(nw_ws_version_13);
  nw_ws_options_set_auto_reply_ping(options, 1);
  nw_protocol_stack_prepend_application_protocol(v3, options);
  v5 = nw_interface_create_with_name();
  nw_parameters_require_interface(secure_tcp, v5);

  v6 = nw_interface_create_with_name();
  nw_parameters_prohibit_interface(secure_tcp, v6);

  return secure_tcp;
}

@end