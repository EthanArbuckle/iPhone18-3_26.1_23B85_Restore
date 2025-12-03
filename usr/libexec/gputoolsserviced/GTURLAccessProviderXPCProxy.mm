@interface GTURLAccessProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTURLAccessProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)makeURL:(id)l;
- (id)urlForPath:(id)path;
- (void)copyIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
- (void)copyIdentifier:(id)identifier toDevice:(id)device directory:(id)directory completionHandler:(id)handler;
- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler;
- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
@end

@implementation GTURLAccessProviderXPCProxy

- (GTURLAccessProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v8 = &OBJC_PROTOCOL___GTURLAccessProvider;
  protocolName = [propertiesCopy protocolName];
  v10 = NSStringFromProtocol(v8);
  v11 = [protocolName isEqualToString:v10];

  if (v11)
  {
    v23.receiver = self;
    v23.super_class = GTURLAccessProviderXPCProxy;
    v12 = [(GTURLAccessProviderXPCProxy *)&v23 init];
    if (v12)
    {
      v13 = [GTServiceConnection alloc];
      deviceUDID = [propertiesCopy deviceUDID];
      v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
      connection = v12->_connection;
      v12->_connection = v15;

      v17 = [GTServiceProperties protocolMethods:v8];
      protocolMethods = [propertiesCopy protocolMethods];
      v19 = newSetWithArrayMinusArray(v17, protocolMethods);
      ignoreMethods = v12->_ignoreMethods;
      v12->_ignoreMethods = v19;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
    v9.super_class = GTURLAccessProviderXPCProxy;
    v7 = [(GTURLAccessProviderXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", dCopy);

  *task_info_out = 0u;
  v22 = 0u;
  task_info_outCnt = 8;
  v11 = task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt);
  if (v11)
  {
    v12 = v11;
    if (GTCoreLogUseOsLog())
    {
      v13 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001B550();
      }
    }

    else
    {
      v14 = __stderrp;
      v15 = [NSString stringWithFormat:@"Failed to get audit token for self (%d)", v12];
      fprintf(v14, "%s\n", [v15 UTF8String]);
    }
  }

  else
  {
    xpc_dictionary_set_data(empty, "auditToken", task_info_out, 0x20uLL);
  }

  connection = self->_connection;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100019508;
  v18[3] = &unk_100040B98;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v18];
}

- (id)makeURL:(id)l
{
  lCopy = l;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "url", lCopy);
  connection = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  [lCopy fileSystemRepresentation];
  v9 = sandbox_extension_issue_file_to_process();
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_set_string(empty, "sandboxExtension", v9);
    free(v10);
  }

  v11 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:0, 0, 0, 0, 0];
  if (v11)
  {
    v12 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v11, "identifier", v12);
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  connection = self->_connection;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000198D0;
  v17[3] = &unk_100040B98;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

- (void)copyIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  connection = self->_connection;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100019AA0;
  v17[3] = &unk_100040B98;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

- (id)urlForPath:(id)path
{
  pathCopy = path;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [pathCopy UTF8String];

  xpc_dictionary_set_string(empty, "path", uTF8String);
  v9 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v9)
  {
    v10 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v9, "result", v10);
    string = xpc_dictionary_get_string(v9, "sandboxExtension");
    if (string)
    {
      v13 = [NSData dataWithBytes:string length:strlen(string) + 1];
      _CFURLAttachSecurityScopeToFileURL();
    }
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

- (void)copyIdentifier:(id)identifier toDevice:(id)device directory:(id)directory completionHandler:(id)handler
{
  handlerCopy = handler;
  directoryCopy = directory;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  xpc_dictionary_set_nsobject(empty, "dir", directoryCopy);
  v27 = 0u;
  v28 = 0u;
  connection = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  [directoryCopy fileSystemRepresentation];
  v25 = 0u;
  v26 = 0u;
  v19 = sandbox_extension_issue_file_to_process();
  if (v19)
  {
    v20 = v19;
    xpc_dictionary_set_string(empty, "dirse", v19);
    free(v20);
  }

  connection = self->_connection;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100019E88;
  v23[3] = &unk_100040B98;
  v24 = handlerCopy;
  v22 = handlerCopy;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v23];
}

@end