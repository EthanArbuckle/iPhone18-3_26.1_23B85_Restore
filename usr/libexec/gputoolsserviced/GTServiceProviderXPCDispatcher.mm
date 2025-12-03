@interface GTServiceProviderXPCDispatcher
- (GTServiceProviderXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)allServices:(id)services replyConnection:(id)connection;
- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection;
- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection;
- (void)deregisterService_:(id)service_ replyConnection:(id)connection;
- (void)registerObserver_:(id)observer_ replyConnection:(id)connection;
- (void)registerService_forProcess_:(id)process_ replyConnection:(id)connection;
- (void)waitForService_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)waitForService_error_:(id)service_error_ replyConnection:(id)connection;
@end

@implementation GTServiceProviderXPCDispatcher

- (GTServiceProviderXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v9 = [protocolMethods mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTServiceProviderXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceProvider, service);
  }

  return v11;
}

- (void)allServices:(id)services replyConnection:(id)connection
{
  servicesCopy = services;
  connectionCopy = connection;
  allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
  v9 = gt_xpc_dictionary_create_reply(servicesCopy);
  if (([connectionCopy isTrusted] & 1) == 0)
  {
    v10 = [[NSArray alloc] initWithArray:allServices copyItems:1];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allServices = v10;
    v11 = [allServices countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allServices);
          }

          serviceProperties = [*(*(&v16 + 1) + 8 * v14) serviceProperties];
          [serviceProperties setDeviceUDID:0];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [allServices countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  xpc_dictionary_set_nsobject(v9, "returnValue", allServices);
  [connectionCopy sendMessage:v9];
}

- (void)registerService_forProcess_:(id)process_ replyConnection:(id)connection
{
  process_Copy = process_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(process_Copy);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(process_Copy, "serviceProperties", v9);
  if (nsobject)
  {
    v11 = objc_opt_class();
    v12 = xpc_dictionary_get_nsobject(process_Copy, "processInfo", v11);
    if (!v12)
    {
      v21 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTServiceProvider", @"Invalid processInfo argument passed to registerService"];
      v22 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v19];

      xpc_dictionary_set_nserror(v8, "error", v20);
      [connectionCopy sendMessage:v8];

      goto LABEL_7;
    }

    [(GTServiceProvider *)self->_serviceProvider registerService:nsobject forProcess:v12];
    registeredConnections = self->_registeredConnections;
    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [nsobject servicePort]);
    [(NSMutableDictionary *)registeredConnections setObject:connectionCopy forKeyedSubscript:v14];

    deviceUDID = [nsobject deviceUDID];
    xpc_dictionary_set_string(v8, "deviceUDID", [deviceUDID UTF8String]);

    xpc_dictionary_set_uint64(v8, "servicePort", [nsobject servicePort]);
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTServiceProvider", @"Invalid serviceProperties argument passed to registerService"];
    v24 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v17];

    xpc_dictionary_set_nserror(v8, "error", v12);
  }

  [connectionCopy sendMessage:v8];
LABEL_7:
}

- (void)waitForService_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  string = xpc_dictionary_get_string(handler_Copy, "protocolName");

  if (string)
  {
    string = [NSString stringWithUTF8String:string];
  }

  serviceProvider = self->_serviceProvider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009F70;
  v13[3] = &unk_100040BC0;
  v14 = v8;
  v15 = connectionCopy;
  v11 = connectionCopy;
  v12 = v8;
  [(GTServiceProvider *)serviceProvider waitForService:string completionHandler:v13];
}

- (void)waitForService_error_:(id)service_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  service_error_Copy = service_error_;
  v8 = gt_xpc_dictionary_create_reply(service_error_Copy);
  string = xpc_dictionary_get_string(service_error_Copy, "protocolName");

  if (string)
  {
    string = [NSString stringWithUTF8String:string];
  }

  serviceProvider = self->_serviceProvider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A0D4;
  v13[3] = &unk_100040BC0;
  v14 = v8;
  v15 = connectionCopy;
  v11 = connectionCopy;
  v12 = v8;
  [(GTServiceProvider *)serviceProvider waitForService:string completionHandler:v13];
}

- (void)deregisterService_:(id)service_ replyConnection:(id)connection
{
  uint64 = xpc_dictionary_get_uint64(service_, "servicePort");
  [(GTServiceProvider *)self->_serviceProvider deregisterService:uint64];
  registeredConnections = self->_registeredConnections;
  v7 = [NSNumber numberWithUnsignedLongLong:uint64];
  [(NSMutableDictionary *)registeredConnections removeObjectForKey:v7];
}

- (void)registerObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  v10 = [(GTServiceObserver *)[GTServiceProviderObserver alloc] initWithMessage:observer_Copy notifyConnection:connectionCopy];
  v8 = [(GTServiceProvider *)self->_serviceProvider registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(observer_Copy);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  [(GTServiceProvider *)self->_serviceProvider deregisterObserver:xpc_dictionary_get_uint64(observer_Copy, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(observer_Copy);

  [connectionCopy sendMessage:v8];
}

- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_array(disconnect, "_pathHistory");
  [(GTServiceProvider *)self->_serviceProvider deregisterObserversForConnection:connectionCopy path:v7];
}

@end