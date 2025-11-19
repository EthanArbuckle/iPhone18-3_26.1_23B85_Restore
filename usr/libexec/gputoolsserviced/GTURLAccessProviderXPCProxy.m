@interface GTURLAccessProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTURLAccessProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)makeURL:(id)a3;
- (id)urlForPath:(id)a3;
- (void)copyIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
- (void)copyIdentifier:(id)a3 toDevice:(id)a4 directory:(id)a5 completionHandler:(id)a6;
- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4;
- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
@end

@implementation GTURLAccessProviderXPCProxy

- (GTURLAccessProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &OBJC_PROTOCOL___GTURLAccessProvider;
  v9 = [v7 protocolName];
  v10 = NSStringFromProtocol(v8);
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v23.receiver = self;
    v23.super_class = GTURLAccessProviderXPCProxy;
    v12 = [(GTURLAccessProviderXPCProxy *)&v23 init];
    if (v12)
    {
      v13 = [GTServiceConnection alloc];
      v14 = [v7 deviceUDID];
      v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", v6, v14, [v7 servicePort]);
      connection = v12->_connection;
      v12->_connection = v15;

      v17 = [GTServiceProperties protocolMethods:v8];
      v18 = [v7 protocolMethods];
      v19 = newSetWithArrayMinusArray(v17, v18);
      ignoreMethods = v12->_ignoreMethods;
      v12->_ignoreMethods = v19;
    }

    self = v12;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

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
    v9.super_class = GTURLAccessProviderXPCProxy;
    v7 = [(GTURLAccessProviderXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v8);

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
  v19 = v7;
  v17 = v7;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v18];
}

- (id)makeURL:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "url", v5);
  v8 = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  [v5 fileSystemRepresentation];
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

- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v11);

  v14 = [v10 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v14);
  connection = self->_connection;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000198D0;
  v17[3] = &unk_100040B98;
  v18 = v9;
  v16 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

- (void)copyIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v11);

  v14 = [v10 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v14);
  connection = self->_connection;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100019AA0;
  v17[3] = &unk_100040B98;
  v18 = v9;
  v16 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

- (id)urlForPath:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [v5 UTF8String];

  xpc_dictionary_set_string(empty, "path", v8);
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

- (void)copyIdentifier:(id)a3 toDevice:(id)a4 directory:(id)a5 completionHandler:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v14);

  v17 = [v13 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v17);
  xpc_dictionary_set_nsobject(empty, "dir", v12);
  v27 = 0u;
  v28 = 0u;
  v18 = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  [v12 fileSystemRepresentation];
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
  v24 = v11;
  v22 = v11;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v23];
}

@end