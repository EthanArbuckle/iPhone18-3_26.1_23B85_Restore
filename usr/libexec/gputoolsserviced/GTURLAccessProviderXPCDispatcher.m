@interface GTURLAccessProviderXPCDispatcher
- (GTURLAccessProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)copyIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)makeURL_:(id)a3 replyConnection:(id)a4;
- (void)securityScopedURLFromSandboxID_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)transferIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)urlForPath_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTURLAccessProviderXPCDispatcher

- (GTURLAccessProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTURLAccessProviderXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v6, "identifier", v8);
  v23 = 0u;
  v24 = 0u;
  length = 0;
  data = xpc_dictionary_get_data(v6, "auditToken", &length);
  if (data && length == 32)
  {
    v11 = data[1];
    v23 = *data;
    v24 = v11;
  }

  else
  {
    v12 = [v7 connection];
    xpc_connection_get_audit_token();
  }

  v13 = gt_xpc_dictionary_create_reply(v6);
  service = self->_service;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001A1A8;
  v17[3] = &unk_100040E38;
  v18 = v7;
  v19 = v13;
  v20 = v23;
  v21 = v24;
  v15 = v13;
  v16 = v7;
  [(GTURLAccessProvider *)service securityScopedURLFromSandboxID:nsobject completionHandler:v17];
}

- (void)makeURL_:(id)a3 replyConnection:(id)a4
{
  xdict = a3;
  v6 = a4;
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
    if (([v6 isTrusted] & 1) == 0)
    {
      v13 = [NSURLComponents componentsWithURL:v12 resolvingAgainstBaseURL:1];
      [v13 setHost:@"localhost"];
      v14 = [v13 URL];

      v12 = v14;
    }

    xpc_dictionary_set_nsobject(v7, "identifier", v12);
  }

  [v6 sendMessage:v7];
}

- (void)transferIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v7, "identifier", v9);
  string = xpc_dictionary_get_string(v7, "deviceUDID");

  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001A554;
    v15[3] = &unk_100040E60;
    v16 = v8;
    v17 = v6;
    [(GTURLAccessProvider *)service transferIdentifier:nsobject toDevice:v13 completionHandler:v15];
  }

  else
  {
    [v6 sendMessage:v8];
  }
}

- (void)copyIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v7, "identifier", v9);
  string = xpc_dictionary_get_string(v7, "deviceUDID");

  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A850;
    v20[3] = &unk_100040D18;
    v21 = v8;
    v22 = v6;
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
    [v6 sendMessage:v8];
  }
}

- (void)urlForPath_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  string = xpc_dictionary_get_string(v7, "path");

  if (string && ([NSString stringWithUTF8String:string], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(GTURLAccessProvider *)self->_service urlForPath:v10];
    v13 = [v12 startAccessingSecurityScopedResource];
    xpc_dictionary_set_nsobject(v8, "result", v12);
    v14 = [v6 connection];
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

    if (v13)
    {
      [v12 stopAccessingSecurityScopedResource];
    }

    [v6 sendMessage:{v8, v17, v18}];
  }

  else
  {
    [v6 sendMessage:v8];
  }
}

- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v6, "identifier", v9);
  string = xpc_dictionary_get_string(v6, "deviceUDID");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = xpc_dictionary_get_nsobject(v6, "dir", v14);
    if (v15)
    {
      v16 = xpc_dictionary_get_string(v6, "dirse");
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
      v32 = v7;
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
      [v7 sendMessage:v8];
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
    [v7 sendMessage:v8];
  }
}

@end