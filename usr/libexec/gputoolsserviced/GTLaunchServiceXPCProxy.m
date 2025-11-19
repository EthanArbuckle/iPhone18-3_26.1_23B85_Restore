@interface GTLaunchServiceXPCProxy
- (BOOL)foregroundService:(unint64_t)a3 error:(id *)a4;
- (BOOL)launchReplayService:(id)a3 error:(id *)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)resumeService:(unint64_t)a3 error:(id *)a4;
- (GTLaunchServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (void)processStateForService:(unint64_t)a3 completionHandler:(id)a4;
- (void)symbolicatorForService:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation GTLaunchServiceXPCProxy

- (GTLaunchServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = GTLaunchServiceXPCProxy;
  v8 = [(GTLaunchServiceXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &OBJC_PROTOCOL___GTLaunchService;
    v10 = [v7 protocolName];
    v11 = NSStringFromProtocol(v9);
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {

      v21 = 0;
      goto LABEL_6;
    }

    v13 = [GTServiceConnection alloc];
    v14 = [v7 deviceUDID];
    v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", v6, v14, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v15;

    v17 = [GTServiceProperties protocolMethods:v9];
    v18 = [v7 protocolMethods];
    v19 = newSetWithArrayMinusArray(v17, v18);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v19;
  }

  v21 = v8;
LABEL_6:

  return v21;
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
    v9.super_class = GTLaunchServiceXPCProxy;
    v7 = [(GTLaunchServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (BOOL)launchReplayService:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 environment];
  v9 = [v8 mutableCopy];

  v10 = [v7 sessionUUID];
  v11 = [v10 UUIDString];
  [v9 setObject:v11 forKeyedSubscript:@"GT_LAUNCH_UUID"];

  v12 = [v9 copy];
  [v7 setEnvironment:v12];

  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "request", v7);

  v15 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v16 = v15;
  if (v15)
  {
    nserror = xpc_dictionary_get_nserror(v15, "error");
    v18 = nserror == 0;
    if (a4 && nserror)
    {
      nserror = nserror;
      *a4 = nserror;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)foregroundService:(unint64_t)a3 error:(id *)a4
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", a3);
  v10 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v11 = v10;
  if (v10)
  {
    nserror = xpc_dictionary_get_nserror(v10, "error");
    v13 = nserror == 0;
    if (a4 && nserror)
    {
      nserror = nserror;
      *a4 = nserror;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)resumeService:(unint64_t)a3 error:(id *)a4
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", a3);
  v10 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v11 = v10;
  if (v10)
  {
    nserror = xpc_dictionary_get_nserror(v10, "error");
    v13 = nserror == 0;
    if (a4 && nserror)
    {
      nserror = nserror;
      *a4 = nserror;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)symbolicatorForService:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", a3);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D4AC;
  v12[3] = &unk_100040B98;
  v13 = v7;
  v11 = v7;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v12];
}

- (void)processStateForService:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_uint64(empty, "servicePort", a3);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D638;
  v12[3] = &unk_100040B98;
  v13 = v7;
  v11 = v7;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v12];
}

@end