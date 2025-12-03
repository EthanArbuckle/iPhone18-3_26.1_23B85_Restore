@interface GTLoopbackServiceXPCDispatcher
- (GTLoopbackServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)echo_:(id)echo_ replyConnection:(id)connection;
- (void)echo_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)echo_repeat_callback_:(id)echo_repeat_callback_ replyConnection:(id)connection;
- (void)echo_repeat_callback_complete_:(id)echo_repeat_callback_complete_ replyConnection:(id)connection;
@end

@implementation GTLoopbackServiceXPCDispatcher

- (GTLoopbackServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTLoopbackServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)echo_:(id)echo_ replyConnection:(id)connection
{
  connectionCopy = connection;
  echo_Copy = echo_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(echo_Copy, "data");
  v8 = [(GTLoopbackService *)self->_service echo:nsdictionary_any];
  v9 = gt_xpc_dictionary_create_reply(echo_Copy);

  xpc_dictionary_set_nsobject(v9, "data", v8);
  [connectionCopy sendMessage:v9];
}

- (void)echo_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(handler_Copy, "data");
  v9 = gt_xpc_dictionary_create_reply(handler_Copy);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C738;
  v13[3] = &unk_100040F00;
  v14 = v9;
  v15 = connectionCopy;
  v11 = connectionCopy;
  v12 = v9;
  [(GTLoopbackService *)service echo:nsdictionary_any completionHandler:v13];
}

- (void)echo_repeat_callback_:(id)echo_repeat_callback_ replyConnection:(id)connection
{
  connectionCopy = connection;
  echo_repeat_callback_Copy = echo_repeat_callback_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(echo_repeat_callback_Copy, "data");
  uint64 = xpc_dictionary_get_uint64(echo_repeat_callback_Copy, "repeat");
  v10 = xpc_dictionary_get_uint64(echo_repeat_callback_Copy, "_replyStreamId");
  v11 = xpc_dictionary_get_array(echo_repeat_callback_Copy, "_pathHistory");

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  service = self->_service;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001C8E8;
  v15[3] = &unk_100040F28;
  v18 = v21;
  v19 = v10;
  v20 = uint64;
  v16 = v11;
  v17 = connectionCopy;
  v13 = connectionCopy;
  v14 = v11;
  [(GTLoopbackService *)service echo:nsdictionary_any repeat:uint64 callback:v15];

  _Block_object_dispose(v21, 8);
}

- (void)echo_repeat_callback_complete_:(id)echo_repeat_callback_complete_ replyConnection:(id)connection
{
  connectionCopy = connection;
  echo_repeat_callback_complete_Copy = echo_repeat_callback_complete_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(echo_repeat_callback_complete_Copy, "data");
  uint64 = xpc_dictionary_get_uint64(echo_repeat_callback_complete_Copy, "repeat");
  v10 = xpc_dictionary_get_uint64(echo_repeat_callback_complete_Copy, "_replyStreamId");
  v11 = xpc_dictionary_get_array(echo_repeat_callback_complete_Copy, "_pathHistory");
  v12 = gt_xpc_dictionary_create_reply(echo_repeat_callback_complete_Copy);

  service = self->_service;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001CB7C;
  v20[3] = &unk_100040F50;
  v23 = v10;
  v21 = v11;
  v22 = connectionCopy;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001CC24;
  v17[3] = &unk_100040F00;
  v18 = v12;
  v19 = v22;
  v14 = v22;
  v15 = v12;
  v16 = v11;
  [(GTLoopbackService *)service echo:nsdictionary_any repeat:uint64 callback:v20 complete:v17];
}

@end