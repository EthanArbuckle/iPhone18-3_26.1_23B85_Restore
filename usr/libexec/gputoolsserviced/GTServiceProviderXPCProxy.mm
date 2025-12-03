@interface GTServiceProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)waitForService:(id)service error:(id *)error;
- (GTServiceProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)allServices;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterService:(unint64_t)service;
- (void)registerService:(id)service forProcess:(id)process;
- (void)waitForService:(id)service completionHandler:(id)handler;
@end

@implementation GTServiceProviderXPCProxy

- (GTServiceProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v29.receiver = self;
  v29.super_class = GTServiceProviderXPCProxy;
  v8 = [(GTServiceProviderXPCProxy *)&v29 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = &OBJC_PROTOCOL___GTServiceProvider;
  protocolName = [propertiesCopy protocolName];
  v11 = NSStringFromProtocol(v9);
  v12 = [protocolName isEqualToString:v11];

  if (v12)
  {
    deviceUDID = [propertiesCopy deviceUDID];
    deviceUDID = v8->_deviceUDID;
    v8->_deviceUDID = deviceUDID;

    v15 = [GTServiceConnection alloc];
    deviceUDID2 = [propertiesCopy deviceUDID];
    v17 = -[GTServiceConnection initWithConnection:device:port:](v15, "initWithConnection:device:port:", connectionCopy, deviceUDID2, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v17;

    v19 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v21 = newSetWithArrayMinusArray(v19, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v21;

    v23 = [&__NSDictionary0__struct mutableCopy];
    observerIdToPort = v8->_observerIdToPort;
    v8->_observerIdToPort = v23;

LABEL_4:
    v25 = v8;
    goto LABEL_10;
  }

  if (GTCoreLogUseOsLog())
  {
    v26 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000A4D8(v26);
    }
  }

  else
  {
    v27 = __stderrp;
    v26 = [NSString stringWithFormat:@"Invalid remote properties - unable to locate remote service"];
    fprintf(v27, "%s\n", [v26 UTF8String]);
  }

  v25 = 0;
LABEL_10:

  return v25;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTServiceProviderXPCProxy;
    v7 = [(GTServiceProviderXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)allServices
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v6)
  {
    v7 = objc_opt_class();
    nsarray = xpc_dictionary_get_nsarray(v6, "returnValue", v7);
  }

  else
  {
    nsarray = 0;
  }

  return nsarray;
}

- (void)registerService:(id)service forProcess:(id)process
{
  serviceCopy = service;
  processCopy = process;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "serviceProperties", serviceCopy);
  xpc_dictionary_set_nsobject(empty, "processInfo", processCopy);

  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v11 = v10;
  if (v10)
  {
    [serviceCopy setServicePort:{xpc_dictionary_get_uint64(v10, "servicePort")}];
    string = xpc_dictionary_get_string(v11, "deviceUDID");
    if (string)
    {
      v13 = string;
    }

    else
    {
      v13 = "";
    }

    v14 = [NSString stringWithUTF8String:v13];
    [serviceCopy setDeviceUDID:v14];
  }

  else
  {
    [serviceCopy setServicePort:0];
    [serviceCopy setDeviceUDID:0];
  }
}

- (void)waitForService:(id)service completionHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [serviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "protocolName", uTF8String);
  connection = self->_connection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000093FC;
  v14[3] = &unk_100040B98;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(GTServiceConnection *)connection sendMessage:empty replyHandler:v14];
}

- (BOOL)waitForService:(id)service error:(id *)error
{
  serviceCopy = service;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [serviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "protocolName", uTF8String);
  v11 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:error];
  v12 = v11;
  if (v11)
  {
    nserror = xpc_dictionary_get_nserror(v11, "error");
    v14 = nserror == 0;
    if (error && nserror)
    {
      nserror = nserror;
      *error = nserror;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)deregisterService:(unint64_t)service
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "servicePort", service);
  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTServiceProviderReplyStream alloc] initWithObserver:observerCopy];

  v9 = [(GTServiceConnection *)self->_connection registerDispatcher:v8];
  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty replyStreamId:v9 error:0];
  v11 = v10;
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(v10, "observerId");
    v13 = [NSNumber numberWithUnsignedLongLong:v9];
    observerIdToPort = self->_observerIdToPort;
    v15 = [NSNumber numberWithUnsignedLongLong:uint64];
    [(NSMutableDictionary *)observerIdToPort setObject:v13 forKeyedSubscript:v15];
  }

  else
  {
    uint64 = 0;
  }

  return uint64;
}

- (void)deregisterObserver:(unint64_t)observer
{
  observerIdToPort = self->_observerIdToPort;
  v7 = [NSNumber numberWithUnsignedLongLong:?];
  v8 = [(NSMutableDictionary *)observerIdToPort objectForKeyedSubscript:v7];
  unsignedLongValue = [v8 unsignedLongValue];

  v10 = self->_observerIdToPort;
  v11 = [NSNumber numberWithUnsignedLongLong:observer];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "observerId", observer);
  v13 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:xdict error:0];
  [(GTServiceConnection *)self->_connection deregisterDispatcher:unsignedLongValue];
}

@end