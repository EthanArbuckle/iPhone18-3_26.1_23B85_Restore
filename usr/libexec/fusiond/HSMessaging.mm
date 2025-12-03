@interface HSMessaging
- (id)handleMessage:(id)message;
- (void)handleError:(id)error;
- (void)handleEvent:(id)event from:(id)from;
- (void)startMessaging;
@end

@implementation HSMessaging

- (void)startMessaging
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(HSHostConnection);
  [(HSMessaging *)self setHostConnection:v3];

  v4 = dispatch_queue_create("com.apple.horizond.messaging", 0);
  [(HSMessaging *)self setQueue:v4];

  hostConnection = [(HSMessaging *)self hostConnection];
  v6 = off_100014C38;
  queue = [(HSMessaging *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004204;
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
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  lastPathComponent = [v7 lastPathComponent];
  v35 = [NSString stringWithFormat:@"Received something from remote xpc connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v9, v10, v11, v12, v13, v14, lastPathComponent);

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [(HSMessaging *)self handleMessage:object];
    if (v26)
    {
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
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
      [(HSMessaging *)self handleError:object];
    }

    else
    {
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
      lastPathComponent3 = [v17 lastPathComponent];
      v36 = [NSString stringWithFormat:@"Unrecognized message type: %@", v16, 102, v35];
      sub_100006E34(4, @"[%@:%d] %@\n", v19, v20, v21, v22, v23, v24, lastPathComponent3);
    }
  }
}

- (id)handleMessage:(id)message
{
  messageCopy = message;
  length = 0;
  reply = xpc_dictionary_create_reply(messageCopy);
  data = xpc_dictionary_get_data(messageCopy, [@"SerializedMessage" UTF8String], &length);
  if (data)
  {
    v6 = data;
    v7 = objc_alloc_init(HSMessageProcessor);
    v8 = [NSData dataWithBytes:v6 length:length];
    v9 = sub_1000012E4(v8);
    v10 = [v9 objectForKey:@"Command"];

    if (v10)
    {
      v80 = 0;
      v11 = [(HSMessageProcessor *)v7 processMessage:v9 response:&v80];
      v12 = v80;
      v13 = v12;
      if (!v11 && v12 || (sub_10000924C(v12 == 0) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000092E8();
    }

    v70 = [NSNumber numberWithInt:6];
    v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v70, @"Status", @"Failed to get a response from the device.", @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

LABEL_5:
    v14 = sub_1000014A8(v13);

    xpc_dictionary_set_data(reply, [@"SerializedMessage" UTF8String], objc_msgSend(v14, "bytes"), objc_msgSend(v14, "length"));
LABEL_6:

    goto LABEL_20;
  }

  string = xpc_dictionary_get_string(messageCopy, [@"Command" UTF8String]);
  if (string)
  {
    v16 = string;
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
    lastPathComponent = [v17 lastPathComponent];
    v72 = [NSString stringWithFormat:@"Received a horizon command: %s", v16];
    sub_100006E34(2, @"[%@:%d] %@\n", v19, v20, v21, v22, v23, v24, lastPathComponent);

    xpc_dictionary_set_BOOL(reply, "done", 1);
    goto LABEL_20;
  }

  v25 = xpc_dictionary_get_string(messageCopy, [@"Query" UTF8String]);
  if (!v25)
  {
    if (xpc_dictionary_get_data(messageCopy, [@"SerializedObject" UTF8String], &length))
    {
      v78 = objc_alloc_init(HSMessageProcessor);
      v77 = objc_opt_class();
      v76 = objc_opt_class();
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = objc_opt_class();
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = objc_opt_class();
      v49 = objc_opt_class();
      v50 = [NSSet setWithObjects:v77, v76, v42, v43, v44, v45, v46, v47, v48, v49, objc_opt_class(), 0];
      v51 = [NSKeyedUnarchiver unarchiveXPCObject:messageCopy allowedClasses:v50];
      if (sub_10000403C() == 1)
      {
        v52 = @"Ramdisk";
      }

      else
      {
        v52 = @"NonUI";
      }

      [v51 setDeviceEnvironment:v52];
      v79 = 0;
      [(HSMessageProcessor *)v78 processMessagev1:v51 response:&v79];
      v53 = v79;
      v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
      lastPathComponent2 = [v54 lastPathComponent];
      v74 = [NSString stringWithFormat:@"Archiving Message Received from XPC Pluging"];
      sub_100006E34(2, @"[%@:%d] %@\n", v56, v57, v58, v59, v60, v61, lastPathComponent2);

      [NSKeyedArchiver archiveObject:v53 to:reply];
      goto LABEL_20;
    }

    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
    lastPathComponent3 = [(HSMessageProcessor *)v7 lastPathComponent];
    v75 = [NSString stringWithFormat:@"Invalid message from host."];
    sub_100006E34(2, @"[%@:%d] %@\n", v64, v65, v66, v67, v68, v69, lastPathComponent3);

    goto LABEL_6;
  }

  v26 = v25;
  v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  lastPathComponent4 = [v27 lastPathComponent];
  v73 = [NSString stringWithFormat:@"Got a query: %s", v26];
  sub_100006E34(2, @"[%@:%d] %@\n", v29, v30, v31, v32, v33, v34, lastPathComponent4);

  v35 = [NSString stringWithUTF8String:v26];
  if (![&off_100011F80 containsObject:v35])
  {
    v71 = @"Reading gestalt key %@ is not allowed.";
LABEL_29:
    sub_10000937C(v71, v35);
    v37 = 0;
    goto LABEL_13;
  }

  v36 = MGCopyAnswer();
  if (!v36)
  {
    v71 = @"Cannot read gestalt key %@";
    goto LABEL_29;
  }

  v37 = v36;
  v38 = [NSNumber numberWithInt:0];
  v39 = [NSDictionary dictionaryWithObjectsAndKeys:v38, @"Status", &stru_1000108B0, @"Error", &stru_1000108B0, @"Output", v37, @"Data", 0];

  if (!v39)
  {
LABEL_13:
    v40 = [NSNumber numberWithInt:4];
    v39 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v40, @"Status", @"Failed to read gestalt key.", @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];
  }

  v41 = sub_1000014A8(v39);
  xpc_dictionary_set_data(reply, [@"SerializedMessage" UTF8String], objc_msgSend(v41, "bytes"), objc_msgSend(v41, "length"));

LABEL_20:

  return reply;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  v23 = errorCopy;
  if (errorCopy == &_xpc_error_connection_invalid)
  {
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
    lastPathComponent = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client is invalid."];
  }

  else
  {
    if (errorCopy != &_xpc_error_connection_interrupted)
    {
      v4 = xpc_copy_description(errorCopy);
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
      lastPathComponent2 = [v5 lastPathComponent];
      v22 = [NSString stringWithFormat:@"Unrecognized XPC error: %s", v4];
      sub_100006E34(4, @"[%@:%d] %@\n", v7, v8, v9, v10, v11, v12, lastPathComponent2);

      free(v4);
      goto LABEL_7;
    }

    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
    lastPathComponent = [v13 lastPathComponent];
    v21 = [NSString stringWithFormat:@"Connection to client interrupted."];
  }

  sub_100006E34(4, @"[%@:%d] %@\n", v15, v16, v17, v18, v19, v20, lastPathComponent);

LABEL_7:
}

@end