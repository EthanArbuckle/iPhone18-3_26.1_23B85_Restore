@interface GTLoopbackServiceXPCDispatcher
- (GTLoopbackServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)echo_:(id)a3 replyConnection:(id)a4;
- (void)echo_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)echo_repeat_callback_:(id)a3 replyConnection:(id)a4;
- (void)echo_repeat_callback_complete_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTLoopbackServiceXPCDispatcher

- (GTLoopbackServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTLoopbackServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)echo_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  v8 = [(GTLoopbackService *)self->_service echo:nsdictionary_any];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_nsobject(v9, "data", v8);
  [v6 sendMessage:v9];
}

- (void)echo_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  v9 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C738;
  v13[3] = &unk_100040F00;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v9;
  [(GTLoopbackService *)service echo:nsdictionary_any completionHandler:v13];
}

- (void)echo_repeat_callback_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  uint64 = xpc_dictionary_get_uint64(v7, "repeat");
  v10 = xpc_dictionary_get_uint64(v7, "_replyStreamId");
  v11 = xpc_dictionary_get_array(v7, "_pathHistory");

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
  v17 = v6;
  v13 = v6;
  v14 = v11;
  [(GTLoopbackService *)service echo:nsdictionary_any repeat:uint64 callback:v15];

  _Block_object_dispose(v21, 8);
}

- (void)echo_repeat_callback_complete_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v7, "data");
  uint64 = xpc_dictionary_get_uint64(v7, "repeat");
  v10 = xpc_dictionary_get_uint64(v7, "_replyStreamId");
  v11 = xpc_dictionary_get_array(v7, "_pathHistory");
  v12 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001CB7C;
  v20[3] = &unk_100040F50;
  v23 = v10;
  v21 = v11;
  v22 = v6;
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