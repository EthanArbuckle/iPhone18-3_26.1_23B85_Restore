@interface GTFileWriterServiceXPCDispatcher
- (GTFileWriterServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)initiateTransfer_basePath_fromDevice_options_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)startTransfer_basePath_fromDevice_options_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)startTransfer_basePath_fromDevice_toDirectory_options_completionHandler_:(id)handler_ replyConnection:(id)connection;
- (void)writeFileData_sessionID_completionHandler_:(id)handler_ replyConnection:(id)connection;
@end

@implementation GTFileWriterServiceXPCDispatcher

- (GTFileWriterServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTFileWriterServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)initiateTransfer_basePath_fromDevice_options_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(handler_Copy, "fileEntries", v9);
  string = xpc_dictionary_get_string(handler_Copy, "path");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(handler_Copy, "deviceUDID");
    if (v14 && ([NSString stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(handler_Copy, "options", v17);
      service = self->_service;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100011EDC;
      v30[3] = &unk_100040BC0;
      v31 = v8;
      v32 = connectionCopy;
      [(GTFileWriterService *)service initiateTransfer:nsarray basePath:v13 fromDevice:v16 options:nsobject completionHandler:v30];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v25 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100013AA4();
        }
      }

      else
      {
        v26 = __stderrp;
        v27 = [NSString stringWithFormat:@"Invalid device UDID passed to initiateTransfer"];
        fprintf(v26, "%s\n", [v27 UTF8String]);
      }

      v33 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to initiateTransfer"];
      v34 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v29];

      xpc_dictionary_set_nserror(v8, "error", v16);
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
        sub_100013AD8();
      }
    }

    else
    {
      v21 = __stderrp;
      v22 = [NSString stringWithFormat:@"Invalid path passed to initiateTransfer"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v35 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to initiateTransfer"];
    v36 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v24];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

- (void)startTransfer_basePath_fromDevice_options_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(handler_Copy, "fileEntries", v9);
  string = xpc_dictionary_get_string(handler_Copy, "path");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(handler_Copy, "deviceUDID");
    if (v14 && ([NSString stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(handler_Copy, "options", v17);
      service = self->_service;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100012378;
      v30[3] = &unk_100040D18;
      v31 = v8;
      v32 = connectionCopy;
      [(GTFileWriterService *)service startTransfer:nsarray basePath:v13 fromDevice:v16 options:nsobject completionHandler:v30];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v25 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100013B0C();
        }
      }

      else
      {
        v26 = __stderrp;
        v27 = [NSString stringWithFormat:@"Invalid device UDID passed to startTransfer"];
        fprintf(v26, "%s\n", [v27 UTF8String]);
      }

      v33 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to startTransfer"];
      v34 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v29];

      xpc_dictionary_set_nserror(v8, "error", v16);
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
        sub_100013B40();
      }
    }

    else
    {
      v21 = __stderrp;
      v22 = [NSString stringWithFormat:@"Invalid path passed to startTransfer"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v35 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to startTransfer"];
    v36 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v24];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

- (void)startTransfer_basePath_fromDevice_toDirectory_options_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(handler_Copy, "fileEntries", v9);
  string = xpc_dictionary_get_string(handler_Copy, "path");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(handler_Copy, "deviceUDID");
    if (v14 && ([NSString stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(handler_Copy, "directory", v17);
      if (nsobject)
      {
        v19 = xpc_dictionary_get_string(handler_Copy, "sandboxExtension");
        if (v19)
        {
          v20 = [NSData dataWithBytes:v19 length:strlen(v19) + 1];
          _CFURLAttachSecurityScopeToFileURL();
        }

        v21 = objc_opt_class();
        v22 = xpc_dictionary_get_nsobject(handler_Copy, "options", v21);
        service = self->_service;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000129FC;
        v39[3] = &unk_100040D18;
        v40 = v8;
        v41 = connectionCopy;
        [(GTFileWriterService *)service startTransfer:nsarray basePath:v13 fromDevice:v16 toDirectory:nsobject options:v22 completionHandler:v39];
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v34 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_100013B74();
          }
        }

        else
        {
          v35 = __stderrp;
          v36 = [NSString stringWithFormat:@"Invalid destination directory passed to initiateTransfer"];
          fprintf(v35, "%s\n", [v36 UTF8String]);
        }

        v42 = NSLocalizedDescriptionKey;
        v37 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid destination directory passed to initiateTransfer"];
        v43 = v37;
        v38 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v22 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v38];

        xpc_dictionary_set_nserror(v8, "error", v22);
        [connectionCopy sendMessage:v8];
      }
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v29 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100013B0C();
        }
      }

      else
      {
        v30 = __stderrp;
        v31 = [NSString stringWithFormat:@"Invalid device UDID passed to startTransfer"];
        fprintf(v30, "%s\n", [v31 UTF8String]);
      }

      v44 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to startTransfer"];
      v45 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v33];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [connectionCopy sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v24 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100013B40();
      }
    }

    else
    {
      v25 = __stderrp;
      v26 = [NSString stringWithFormat:@"Invalid path passed to startTransfer"];
      fprintf(v25, "%s\n", [v26 UTF8String]);
    }

    v46 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to startTransfer"];
    v47 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v28];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

- (void)beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  handler_Copy = handler_;
  connectionCopy = connection;
  v8 = gt_xpc_dictionary_create_reply(handler_Copy);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(handler_Copy, "fileEntries", v9);
  string = xpc_dictionary_get_string(handler_Copy, "path");
  if (string && ([NSString stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(handler_Copy, "deviceUDID");
    if (v14 && ([NSString stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(handler_Copy, "options", v17);
      uint64 = xpc_dictionary_get_uint64(handler_Copy, "sessionID");
      service = self->_service;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100012EE0;
      v31[3] = &unk_100040BC0;
      v32 = v8;
      v33 = connectionCopy;
      [(GTFileWriterService *)service beginTransferSessionWithFileEntries:nsarray basePath:v13 toDevice:v16 options:nsobject sessionID:uint64 completionHandler:v31];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v26 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100013BA8();
        }
      }

      else
      {
        v27 = __stderrp;
        v28 = [NSString stringWithFormat:@"Invalid device UDID passed to beginTransferSessionWithFileEntries"];
        fprintf(v27, "%s\n", [v28 UTF8String]);
      }

      v34 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to beginTransferSessionWithFileEntries"];
      v35 = v29;
      v30 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v30];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [connectionCopy sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v21 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100013BDC();
      }
    }

    else
    {
      v22 = __stderrp;
      v23 = [NSString stringWithFormat:@"Invalid path passed to beginTransferSessionWithFileEntries"];
      fprintf(v22, "%s\n", [v23 UTF8String]);
    }

    v36 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to beginTransferSessionWithFileEntries"];
    v37 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v25];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [connectionCopy sendMessage:v8];
  }
}

- (void)writeFileData_sessionID_completionHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(handler_Copy, "data");
  uint64 = xpc_dictionary_get_uint64(handler_Copy, "sessionID");
  v10 = gt_xpc_dictionary_create_reply(handler_Copy);

  service = self->_service;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100013040;
  v14[3] = &unk_100040BC0;
  v15 = v10;
  v16 = connectionCopy;
  v12 = connectionCopy;
  v13 = v10;
  [(GTFileWriterService *)service writeFileData:nsdata_nocopy sessionID:uint64 completionHandler:v14];
}

@end