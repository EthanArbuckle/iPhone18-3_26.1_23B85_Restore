@interface HSFileTransfer
- (id)handleMessage:(id)a3;
- (void)handleError:(id)a3;
- (void)handleEvent:(id)a3 from:(id)a4;
- (void)startFileTransferService;
@end

@implementation HSFileTransfer

- (void)startFileTransferService
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(HSHostConnection);
  [(HSFileTransfer *)self setHostConnection:v3];

  v4 = dispatch_queue_create("com.apple.horizond.file_transfer", 0);
  [(HSFileTransfer *)self setQueue:v4];

  v5 = [(HSFileTransfer *)self hostConnection];
  v6 = off_100014C40;
  v7 = [(HSFileTransfer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008710;
  v8[3] = &unk_100010640;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v5 acceptConnectionsForService:v6 InQueue:v7 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleEvent:(id)a3 from:(id)a4
{
  object = a3;
  v6 = a4;
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v8 = [v7 lastPathComponent];
  v35 = [NSString stringWithFormat:@"Received something from remote xpc connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v9, v10, v11, v12, v13, v14, v8);

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [(HSFileTransfer *)self handleMessage:object];
    if (v26)
    {
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
      v28 = [v27 lastPathComponent];
      v37 = [NSString stringWithFormat:@"Server replying."];
      sub_100006E34(2, @"[%@:%d] %@\n", v29, v30, v31, v32, v33, v34, v28);

      xpc_remote_connection_send_message();
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    v16 = type;
    if (type == &_xpc_type_error)
    {
      [(HSFileTransfer *)self handleError:object];
    }

    else
    {
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
      v18 = [v17 lastPathComponent];
      v36 = [NSString stringWithFormat:@"Unrecognized message type: %@", v16, 48, v35];
      sub_100006E34(4, @"[%@:%d] %@\n", v19, v20, v21, v22, v23, v24, v18);
    }
  }
}

- (id)handleMessage:(id)a3
{
  v3 = a3;
  reply = xpc_dictionary_create_reply(v3);
  string = xpc_dictionary_get_string(v3, "retrieve_file");

  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v7 = [v6 lastPathComponent];
  if (string)
  {
    v28 = [NSString stringWithFormat:@"Retrieving file from device to host..."];
    sub_100006E34(2, @"[%@:%d] %@\n", v8, v9, v10, v11, v12, v13, v7);

    v14 = [NSString stringWithUTF8String:string];
    v15 = [v14 stringByStandardizingPath];

    if (v15 && ([v15 hasPrefix:@"/var/mobile/Media/FactoryLogs"] & 1) != 0)
    {
      v16 = +[NSFileManager defaultManager];
      v17 = [v16 fileExistsAtPath:v15];

      if (v17)
      {
        v18 = +[NSFileManager defaultManager];
        v19 = [NSString stringWithUTF8String:string];
        v20 = [v18 contentsAtPath:v19];

        if ([v20 length] > 0xA00000)
        {
          sub_1000098FC(reply, v20);
        }

        else
        {
          xpc_dictionary_set_data(reply, "content", [v20 bytes], objc_msgSend(v20, "length"));
        }
      }

      else
      {
        sub_100009830(v15, reply);
      }
    }

    else
    {
      sub_1000099C4(reply);
    }
  }

  else
  {
    v29 = [NSString stringWithFormat:@"Operation not supported."];
    sub_100006E34(2, @"[%@:%d] %@\n", v21, v22, v23, v24, v25, v26, v7);

    xpc_dictionary_set_string(reply, "error", "Operation not supported.");
  }

  return reply;
}

- (void)handleError:(id)a3
{
  v3 = a3;
  v23 = v3;
  if (v3 == &_xpc_error_connection_invalid)
  {
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
    v14 = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client is invalid."];
  }

  else
  {
    if (v3 != &_xpc_error_connection_interrupted)
    {
      v4 = xpc_copy_description(v3);
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
      v6 = [v5 lastPathComponent];
      v22 = [NSString stringWithFormat:@"Unrecognized XPC error: %s", v4];
      sub_100006E34(4, @"[%@:%d] %@\n", v7, v8, v9, v10, v11, v12, v6);

      free(v4);
      goto LABEL_7;
    }

    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
    v14 = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client interrupted."];
  }

  sub_100006E34(4, @"[%@:%d] %@\n", v15, v16, v17, v18, v19, v20, v14);

LABEL_7:
}

@end