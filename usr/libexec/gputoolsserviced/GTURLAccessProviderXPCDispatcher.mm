@interface GTURLAccessProviderXPCDispatcher
- (GTURLAccessProviderXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)copyIdentifier_toDevice_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)makeURL_:(id)l_ replyConnection:(id)connection;
- (void)securityScopedURLFromSandboxID_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)transferIdentifier_toDevice_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)urlForPath_:(id)path_ replyConnection:(id)connection;
@end

@implementation GTURLAccessProviderXPCDispatcher

- (GTURLAccessProviderXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTURLAccessProviderXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(handler_Copy, "identifier", v8);
  v23 = 0u;
  v24 = 0u;
  length = 0;
  data = xpc_dictionary_get_data(handler_Copy, "auditToken", &length);
  if (data && length == 32)
  {
    v11 = data[1];
    v23 = *data;
    v24 = v11;
  }

  else
  {
    connection = [connectionCopy connection];
    xpc_connection_get_audit_token();
  }

  v13 = gt_xpc_dictionary_create_reply(handler_Copy);
  service = self->_service;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001A1A8;
  v17[3] = &unk_100040E38;
  v18 = connectionCopy;
  v19 = v13;
  v20 = v23;
  v21 = v24;
  v15 = v13;
  v16 = connectionCopy;
  [(GTURLAccessProvider *)service securityScopedURLFromSandboxID:nsobject completionHandler:v17];
}

- (void)makeURL_:(id)l_ replyConnection:(id)connection
{
  xdict = l_;
  connectionCopy = connection;
  v7 = gt_xpc_dictionary_create_reply(xdict);
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(xdict, "url", v8);
  if (nsobject)
  {
    string = xpc_dictionary_get_string(xdict, "sandboxExtension");
    if (string)
    {
      v11 = [NSData dataWithBytes:string length:strlen(string) + 1];
      _CFURLAttachSecurityScopeToFileURL();
    }

    v12 = [(GTURLAccessProvider *)self->_service makeURL:nsobject];
    if (([connectionCopy isTrusted] & 1) == 0)
    {
      v13 = [NSURLComponents componentsWithURL:v12 resolvingAgainstBaseURL:1];
      [v13 setHost:@"localhost"];
      v14 = [v13 URL];

      v12 = v14;
    }

    xpc_dictionary_set_nsobject(v7, "identifier", v12);
  }

  [connectionCopy sendMessage:v7];
}

- (void)transferIdentifier_toDevice_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(handler_Copy, "identifier", v9);
  string = xpc_dictionary_get_string(handler_Copy, "deviceUDID");

  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001A554;
    v15[3] = &unk_100040E60;
    v16 = v8;
    v17 = connectionCopy;
    [(GTURLAccessProvider *)service transferIdentifier:nsobject toDevice:v13 completionHandler:v15];
  }

  else
  {
    [connectionCopy sendMessage:v8];
  }
}

- (void)copyIdentifier_toDevice_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(handler_Copy, "identifier", v9);
  string = xpc_dictionary_get_string(handler_Copy, "deviceUDID");

  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A850;
    v20[3] = &unk_100040D18;
    v21 = v8;
    v22 = connectionCopy;
    [(GTURLAccessProvider *)service copyIdentifier:nsobject toDevice:v13 completionHandler:v20];
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v15 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10001B5C4();
      }
    }

    else
    {
      v16 = __stderrp;
      v17 = [NSString stringWithFormat:@"Invalid device UDID passed to copyIdentifier"];
      fprintf(v16, "%s\n", [v17 UTF8String]);
    }

    v23 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid device UDID passed to copyIdentifier"];
    v24 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v19];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

- (void)urlForPath_:(id)path_ replyConnection:(id)connection
{
  connectionCopy = connection;
  path_Copy = path_;
  v8 = gt_xpc_dictionary_create_reply(path_Copy);
  string = xpc_dictionary_get_string(path_Copy, "path");

  if (string && ([NSString stringWithUTF8String:string], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(GTURLAccessProvider *)self->_service urlForPath:v10];
    startAccessingSecurityScopedResource = [v12 startAccessingSecurityScopedResource];
    xpc_dictionary_set_nsobject(v8, "result", v12);
    connection = [connectionCopy connection];
    xpc_connection_get_audit_token();

    [v12 fileSystemRepresentation];
    v17 = 0u;
    v18 = 0u;
    v15 = sandbox_extension_issue_file_to_process();
    if (v15)
    {
      v16 = v15;
      xpc_dictionary_set_string(v8, "sandboxExtension", v15);
      free(v16);
    }

    if (startAccessingSecurityScopedResource)
    {
      [v12 stopAccessingSecurityScopedResource];
    }

    [connectionCopy sendMessage:{v8, v17, v18}];
  }

  else
  {
    [connectionCopy sendMessage:v8];
  }
}

- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(handler_Copy, "identifier", v9);
  string = xpc_dictionary_get_string(handler_Copy, "deviceUDID");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = xpc_dictionary_get_nsobject(handler_Copy, "dir", v14);
    if (v15)
    {
      v16 = xpc_dictionary_get_string(handler_Copy, "dirse");
      if (v16)
      {
        v17 = [NSData dataWithBytes:v16 length:strlen(v16) + 1];
        _CFURLAttachSecurityScopeToFileURL();
      }

      service = self->_service;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10001AEB8;
      v30[3] = &unk_100040D18;
      v31 = v8;
      v32 = connectionCopy;
      [(GTURLAccessProvider *)service copyIdentifier:nsobject toDevice:v13 directory:v15 completionHandler:v30];

      v19 = v31;
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v25 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10001B600();
        }
      }

      else
      {
        v26 = __stderrp;
        v27 = [NSString stringWithFormat:@"Invalid destination directory passed to copyIdentifier"];
        fprintf(v26, "%s\n", [v27 UTF8String]);
      }

      v33 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid destination directory passed to copyIdentifier"];
      v34 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v29];

      xpc_dictionary_set_nserror(v8, "error", v19);
      [connectionCopy sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v20 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10001B5C4();
      }
    }

    else
    {
      v21 = __stderrp;
      v22 = [NSString stringWithFormat:@"Invalid device UDID passed to copyIdentifier"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v35 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid device UDID passed to copyIdentifier"];
    v36 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v24];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

@end