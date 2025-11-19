@interface GTServiceProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)waitForService:(id)a3 error:(id *)a4;
- (GTServiceProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)allServices;
- (unint64_t)registerObserver:(id)a3;
- (void)deregisterObserver:(unint64_t)a3;
- (void)deregisterService:(unint64_t)a3;
- (void)registerService:(id)a3 forProcess:(id)a4;
- (void)waitForService:(id)a3 completionHandler:(id)a4;
@end

@implementation GTServiceProviderXPCProxy

- (GTServiceProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = GTServiceProviderXPCProxy;
  v8 = [(GTServiceProviderXPCProxy *)&v29 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = &OBJC_PROTOCOL___GTServiceProvider;
  v10 = [v7 protocolName];
  v11 = NSStringFromProtocol(v9);
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [v7 deviceUDID];
    deviceUDID = v8->_deviceUDID;
    v8->_deviceUDID = v13;

    v15 = [GTServiceConnection alloc];
    v16 = [v7 deviceUDID];
    v17 = -[GTServiceConnection initWithConnection:device:port:](v15, "initWithConnection:device:port:", v6, v16, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v17;

    v19 = [GTServiceProperties protocolMethods:v9];
    v20 = [v7 protocolMethods];
    v21 = newSetWithArrayMinusArray(v19, v20);
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

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTServiceProviderXPCProxy;
    v7 = [(GTServiceProviderXPCProxy *)&v9 respondsToSelector:a3];
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

- (void)registerService:(id)a3 forProcess:(id)a4
{
  v15 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "serviceProperties", v15);
  xpc_dictionary_set_nsobject(empty, "processInfo", v7);

  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v11 = v10;
  if (v10)
  {
    [v15 setServicePort:{xpc_dictionary_get_uint64(v10, "servicePort")}];
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
    [v15 setDeviceUDID:v14];
  }

  else
  {
    [v15 setServicePort:0];
    [v15 setDeviceUDID:0];
  }
}

- (void)waitForService:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v11 = [v8 UTF8String];

  xpc_dictionary_set_string(empty, "protocolName", v11);
  connection = self->_connection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000093FC;
  v14[3] = &unk_100040B98;
  v15 = v7;
  v13 = v7;
  [(GTServiceConnection *)connection sendMessage:empty replyHandler:v14];
}

- (BOOL)waitForService:(id)a3 error:(id *)a4
{
  v7 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v10 = [v7 UTF8String];

  xpc_dictionary_set_string(empty, "protocolName", v10);
  v11 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v12 = v11;
  if (v11)
  {
    nserror = xpc_dictionary_get_nserror(v11, "error");
    v14 = nserror == 0;
    if (a4 && nserror)
    {
      nserror = nserror;
      *a4 = nserror;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)deregisterService:(unint64_t)a3
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "servicePort", a3);
  [(GTServiceConnection *)self->_connection sendMessage:xdict];
}

- (unint64_t)registerObserver:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTServiceProviderReplyStream alloc] initWithObserver:v5];

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

- (void)deregisterObserver:(unint64_t)a3
{
  observerIdToPort = self->_observerIdToPort;
  v7 = [NSNumber numberWithUnsignedLongLong:?];
  v8 = [(NSMutableDictionary *)observerIdToPort objectForKeyedSubscript:v7];
  v9 = [v8 unsignedLongValue];

  v10 = self->_observerIdToPort;
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "observerId", a3);
  v13 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:xdict error:0];
  [(GTServiceConnection *)self->_connection deregisterDispatcher:v9];
}

@end