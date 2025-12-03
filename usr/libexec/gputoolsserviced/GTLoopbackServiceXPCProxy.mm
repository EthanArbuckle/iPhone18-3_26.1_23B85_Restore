@interface GTLoopbackServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTLoopbackServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)echo:(id)echo;
- (void)echo:(id)echo completionHandler:(id)handler;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete;
@end

@implementation GTLoopbackServiceXPCProxy

- (GTLoopbackServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = GTLoopbackServiceXPCProxy;
  v8 = [(GTLoopbackServiceXPCProxy *)&v18 init];
  if (v8)
  {
    v9 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&OBJC_PROTOCOL___GTLoopbackService];
    protocolMethods = [propertiesCopy protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;
  }

  return v8;
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
    v9.super_class = GTLoopbackServiceXPCProxy;
    v7 = [(GTLoopbackServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)echo:(id)echo
{
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v9 = v8;
  if (v8)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v8, "data");
  }

  else
  {
    nsdictionary_any = 0;
  }

  return nsdictionary_any;
}

- (void)echo:(id)echo completionHandler:(id)handler
{
  handlerCopy = handler;
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

  connection = self->_connection;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C0AC;
  v13[3] = &unk_100040B98;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(GTServiceConnection *)connection sendMessage:empty replyHandler:v13];
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback
{
  callbackCopy = callback;
  echoCopy = echo;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_nsobject(xdict, "data", echoCopy);

  xpc_dictionary_set_uint64(xdict, "repeat", repeat);
  v12 = [[GTLoopbackReplyStream alloc] initWithCallback:callbackCopy];

  [(GTLoopbackReplyStream *)v12 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v12]];
  [(GTServiceConnection *)self->_connection sendMessage:xdict withReplyStreamId:[(GTLoopbackReplyStream *)v12 dispatcherId]];
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete
{
  completeCopy = complete;
  callbackCopy = callback;
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

  xpc_dictionary_set_uint64(empty, "repeat", repeat);
  v16 = [[GTLoopbackReplyStream alloc] initWithCallback:callbackCopy];

  [(GTLoopbackReplyStream *)v16 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v16]];
  connection = self->_connection;
  dispatcherId = [(GTLoopbackReplyStream *)v16 dispatcherId];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001C3D8;
  v21[3] = &unk_100040ED8;
  v22 = v16;
  v23 = completeCopy;
  v21[4] = self;
  v19 = v16;
  v20 = completeCopy;
  [(GTServiceConnection *)connection sendMessage:empty withReplyStreamId:dispatcherId replyHandler:v21];
}

@end