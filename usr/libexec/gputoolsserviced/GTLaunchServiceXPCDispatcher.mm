@interface GTLaunchServiceXPCDispatcher
- (GTLaunchServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)foregroundService_error_:(id)a3 replyConnection:(id)a4;
- (void)launchReplayService_error_:(id)a3 replyConnection:(id)a4;
- (void)processStateForService_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)resumeService_error_:(id)a3 replyConnection:(id)a4;
- (void)symbolicatorForService_completionHandler_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTLaunchServiceXPCDispatcher

- (void)processStateForService_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  uint64 = xpc_dictionary_get_uint64(v7, "servicePort");
  v9 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000205CC;
  v13[3] = &unk_1000410C8;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v9;
  [(GTLaunchService *)service processStateForService:uint64 completionHandler:v13];
}

- (void)symbolicatorForService_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  uint64 = xpc_dictionary_get_uint64(v7, "servicePort");
  v9 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020784;
  v13[3] = &unk_1000410A0;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v9;
  [(GTLaunchService *)service symbolicatorForService:uint64 completionHandler:v13];
}

- (void)resumeService_error_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  uint64 = xpc_dictionary_get_uint64(v7, "servicePort");
  service = self->_service;
  v12 = 0;
  [(GTLaunchService *)service resumeService:uint64 error:&v12];
  v10 = v12;
  v11 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_nserror(v11, "error", v10);
  [v6 sendMessage:v11];
}

- (void)foregroundService_error_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  uint64 = xpc_dictionary_get_uint64(v7, "servicePort");
  service = self->_service;
  v12 = 0;
  [(GTLaunchService *)service foregroundService:uint64 error:&v12];
  v10 = v12;
  v11 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_nserror(v11, "error", v10);
  [v6 sendMessage:v11];
}

- (void)launchReplayService_error_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v7, "request", v8);
  v10 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v13 = 0;
  LOBYTE(v7) = [(GTLaunchService *)service launchReplayService:nsobject error:&v13];
  v12 = v13;
  if ((v7 & 1) == 0)
  {
    xpc_dictionary_set_nserror(v10, "error", v12);
  }

  [v6 sendMessage:v10];
}

- (GTLaunchServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTLaunchServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

@end