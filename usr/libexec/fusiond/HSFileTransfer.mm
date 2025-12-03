@interface HSFileTransfer
- (id)handleMessage:(id)message;
- (void)handleError:(id)error;
- (void)handleEvent:(id)event from:(id)from;
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

  hostConnection = [(HSFileTransfer *)self hostConnection];
  v6 = off_100014C40;
  queue = [(HSFileTransfer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008710;
  v8[3] = &unk_100010640;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [hostConnection acceptConnectionsForService:v6 InQueue:queue withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleEvent:(id)event from:(id)from
{
  object = event;
  fromCopy = from;
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  lastPathComponent = [v7 lastPathComponent];
  v35 = [NSString stringWithFormat:@"Received something from remote xpc connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v9, v10, v11, v12, v13, v14, lastPathComponent);

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [(HSFileTransfer *)self handleMessage:object];
    if (v26)
    {
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
      lastPathComponent2 = [v27 lastPathComponent];
      v37 = [NSString stringWithFormat:@"Server replying."];
      sub_100006E34(2, @"[%@:%d] %@\n", v29, v30, v31, v32, v33, v34, lastPathComponent2);

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
      lastPathComponent3 = [v17 lastPathComponent];
      v36 = [NSString stringWithFormat:@"Unrecognized message type: %@", v16, 48, v35];
      sub_100006E34(4, @"[%@:%d] %@\n", v19, v20, v21, v22, v23, v24, lastPathComponent3);
    }
  }
}

- (id)handleMessage:(id)message
{
  messageCopy = message;
  reply = xpc_dictionary_create_reply(messageCopy);
  string = xpc_dictionary_get_string(messageCopy, "retrieve_file");

  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  lastPathComponent = [v6 lastPathComponent];
  if (string)
  {
    v28 = [NSString stringWithFormat:@"Retrieving file from device to host..."];
    sub_100006E34(2, @"[%@:%d] %@\n", v8, v9, v10, v11, v12, v13, lastPathComponent);

    v14 = [NSString stringWithUTF8String:string];
    stringByStandardizingPath = [v14 stringByStandardizingPath];

    if (stringByStandardizingPath && ([stringByStandardizingPath hasPrefix:@"/var/mobile/Media/FactoryLogs"] & 1) != 0)
    {
      v16 = +[NSFileManager defaultManager];
      v17 = [v16 fileExistsAtPath:stringByStandardizingPath];

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
        sub_100009830(stringByStandardizingPath, reply);
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
    sub_100006E34(2, @"[%@:%d] %@\n", v21, v22, v23, v24, v25, v26, lastPathComponent);

    xpc_dictionary_set_string(reply, "error", "Operation not supported.");
  }

  return reply;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  v23 = errorCopy;
  if (errorCopy == &_xpc_error_connection_invalid)
  {
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
    lastPathComponent = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client is invalid."];
  }

  else
  {
    if (errorCopy != &_xpc_error_connection_interrupted)
    {
      v4 = xpc_copy_description(errorCopy);
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
      lastPathComponent2 = [v5 lastPathComponent];
      v22 = [NSString stringWithFormat:@"Unrecognized XPC error: %s", v4];
      sub_100006E34(4, @"[%@:%d] %@\n", v7, v8, v9, v10, v11, v12, lastPathComponent2);

      free(v4);
      goto LABEL_7;
    }

    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
    lastPathComponent = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client interrupted."];
  }

  sub_100006E34(4, @"[%@:%d] %@\n", v15, v16, v17, v18, v19, v20, lastPathComponent);

LABEL_7:
}

@end