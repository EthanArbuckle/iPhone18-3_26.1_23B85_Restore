@interface GTLaunchServiceXPCProxy
- (BOOL)foregroundService:(unint64_t)service error:(id *)error;
- (BOOL)launchReplayService:(id)service error:(id *)error;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)resumeService:(unint64_t)service error:(id *)error;
- (GTLaunchServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (void)processStateForService:(unint64_t)service completionHandler:(id)handler;
- (void)symbolicatorForService:(unint64_t)service completionHandler:(id)handler;
@end

@implementation GTLaunchServiceXPCProxy

- (GTLaunchServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v23.receiver = self;
  v23.super_class = GTLaunchServiceXPCProxy;
  v8 = [(GTLaunchServiceXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &OBJC_PROTOCOL___GTLaunchService;
    protocolName = [propertiesCopy protocolName];
    v11 = NSStringFromProtocol(v9);
    v12 = [protocolName isEqualToString:v11];

    if (!v12)
    {

      v21 = 0;
      goto LABEL_6;
    }

    v13 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v15;

    v17 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v19 = newSetWithArrayMinusArray(v17, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v19;
  }

  v21 = v8;
LABEL_6:

  return v21;
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
    v9.super_class = GTLaunchServiceXPCProxy;
    v7 = [(GTLaunchServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (BOOL)launchReplayService:(id)service error:(id *)error
{
  serviceCopy = service;
  environment = [serviceCopy environment];
  v9 = [environment mutableCopy];

  sessionUUID = [serviceCopy sessionUUID];
  uUIDString = [sessionUUID UUIDString];
  [v9 setObject:uUIDString forKeyedSubscript:@"GT_LAUNCH_UUID"];

  v12 = [v9 copy];
  [serviceCopy setEnvironment:v12];

  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "request", serviceCopy);

  v15 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:error];
  v16 = v15;
  if (v15)
  {
    nserror = xpc_dictionary_get_nserror(v15, "error");
    v18 = nserror == 0;
    if (error && nserror)
    {
      nserror = nserror;
      *error = nserror;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)foregroundService:(unint64_t)service error:(id *)error
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", service);
  v10 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:error];
  v11 = v10;
  if (v10)
  {
    nserror = xpc_dictionary_get_nserror(v10, "error");
    v13 = nserror == 0;
    if (error && nserror)
    {
      nserror = nserror;
      *error = nserror;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)resumeService:(unint64_t)service error:(id *)error
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", service);
  v10 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:error];
  v11 = v10;
  if (v10)
  {
    nserror = xpc_dictionary_get_nserror(v10, "error");
    v13 = nserror == 0;
    if (error && nserror)
    {
      nserror = nserror;
      *error = nserror;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)symbolicatorForService:(unint64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", service);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D4AC;
  v12[3] = &unk_100040B98;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v12];
}

- (void)processStateForService:(unint64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", service);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D638;
  v12[3] = &unk_100040B98;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v12];
}

@end