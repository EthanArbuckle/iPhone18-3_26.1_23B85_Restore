@interface GTLaunchServiceXPCDispatcher
- (GTLaunchServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)foregroundService_error_:(id)service_error_ replyConnection:(id)connection;
- (void)launchReplayService_error_:(id)service_error_ replyConnection:(id)connection;
- (void)processStateForService_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)resumeService_error_:(id)service_error_ replyConnection:(id)connection;
- (void)symbolicatorForService_completionHandler_:(id)handler_ replyConnection:(id)connection;
@end

@implementation GTLaunchServiceXPCDispatcher

- (void)processStateForService_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  uint64 = xpc_dictionary_get_uint64(handler_Copy, "servicePort");
  v9 = gt_xpc_dictionary_create_reply(handler_Copy);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000205CC;
  v13[3] = &unk_1000410C8;
  v14 = v9;
  v15 = connectionCopy;
  v11 = connectionCopy;
  v12 = v9;
  [(GTLaunchService *)service processStateForService:uint64 completionHandler:v13];
}

- (void)symbolicatorForService_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  uint64 = xpc_dictionary_get_uint64(handler_Copy, "servicePort");
  v9 = gt_xpc_dictionary_create_reply(handler_Copy);

  service = self->_service;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020784;
  v13[3] = &unk_1000410A0;
  v14 = v9;
  v15 = connectionCopy;
  v11 = connectionCopy;
  v12 = v9;
  [(GTLaunchService *)service symbolicatorForService:uint64 completionHandler:v13];
}

- (void)resumeService_error_:(id)service_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  service_error_Copy = service_error_;
  uint64 = xpc_dictionary_get_uint64(service_error_Copy, "servicePort");
  service = self->_service;
  v12 = 0;
  [(GTLaunchService *)service resumeService:uint64 error:&v12];
  v10 = v12;
  v11 = gt_xpc_dictionary_create_reply(service_error_Copy);

  xpc_dictionary_set_nserror(v11, "error", v10);
  [connectionCopy sendMessage:v11];
}

- (void)foregroundService_error_:(id)service_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  service_error_Copy = service_error_;
  uint64 = xpc_dictionary_get_uint64(service_error_Copy, "servicePort");
  service = self->_service;
  v12 = 0;
  [(GTLaunchService *)service foregroundService:uint64 error:&v12];
  v10 = v12;
  v11 = gt_xpc_dictionary_create_reply(service_error_Copy);

  xpc_dictionary_set_nserror(v11, "error", v10);
  [connectionCopy sendMessage:v11];
}

- (void)launchReplayService_error_:(id)service_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  service_error_Copy = service_error_;
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(service_error_Copy, "request", v8);
  v10 = gt_xpc_dictionary_create_reply(service_error_Copy);

  service = self->_service;
  v13 = 0;
  LOBYTE(service_error_Copy) = [(GTLaunchService *)service launchReplayService:nsobject error:&v13];
  v12 = v13;
  if ((service_error_Copy & 1) == 0)
  {
    xpc_dictionary_set_nserror(v10, "error", v12);
  }

  [connectionCopy sendMessage:v10];
}

- (GTLaunchServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTLaunchServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

@end