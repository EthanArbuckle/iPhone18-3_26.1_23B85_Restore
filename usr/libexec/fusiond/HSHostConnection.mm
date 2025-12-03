@interface HSHostConnection
- (void)acceptConnectionsForService:(id)service InQueue:(id)queue withHandler:(id)handler;
- (void)listen:(id)listen;
@end

@implementation HSHostConnection

- (void)listen:(id)listen
{
  listenCopy = listen;
  *&v78.sa_len = 0;
  *&v78.sa_data[6] = 0;
  cnt = 0;
  fds = 0;
  v5 = launch_activate_socket([listenCopy UTF8String], &fds, &cnt);
  if (v5)
  {
    v6 = v5;
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
    lastPathComponent = [v7 lastPathComponent];
    listenCopy = [NSString stringWithFormat:@"failed to launch_activate_socket with error %s. service Name %@\n", strerror(v6), listenCopy];
    sub_100006E34(4, @"[%@:%d] %@\n", v9, v10, v11, v12, v13, v14, lastPathComponent);
  }

  if (fds)
  {
    v15 = cnt;
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
    lastPathComponent2 = [v16 lastPathComponent];
    if (v15)
    {
      listenCopy2 = [NSString stringWithFormat:@"found %@ socket", listenCopy];
      sub_100006E34(2, @"[%@:%d] %@\n", v18, v19, v20, v21, v22, v23, lastPathComponent2);

      v24 = fds;
      v25 = *fds;
    }

    else
    {
      listenCopy3 = [NSString stringWithFormat:@"could not find %@ socket", listenCopy];
      sub_100006E34(4, @"[%@:%d] %@\n", v26, v27, v28, v29, v30, v31, lastPathComponent2);

      v25 = 0;
      v24 = fds;
    }

    free(v24);
    fds = 0;
  }

  else
  {
    v25 = 0;
  }

  v75 = 16;
  while (1)
  {
    v32 = accept(v25, &v78, &v75);
    if ((v32 & 0x80000000) != 0)
    {
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
      lastPathComponent3 = [v33 lastPathComponent];
      v69 = [NSString stringWithFormat:@"ERROR on accept"];
      sub_100006E34(4, @"[%@:%d] %@\n", v35, v36, v37, v38, v39, v40, lastPathComponent3);
    }

    v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
    lastPathComponent4 = [v41 lastPathComponent];
    v70 = [NSString stringWithFormat:@"Received connection from host."];
    sub_100006E34(2, @"[%@:%d] %@\n", v43, v44, v45, v46, v47, v48, lastPathComponent4);

    queue = [(HSHostConnection *)self queue];
    v50 = xpc_remote_connection_create_with_connected_fd();

    v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
    lastPathComponent5 = [v51 lastPathComponent];
    if (v50)
    {
      v71 = [NSString stringWithFormat:@"Created xpc remote connection 0x%lx from socket: %d", v50, v32, v70];
      sub_100006E34(2, @"[%@:%d] %@\n", v53, v54, v55, v56, v57, v58, lastPathComponent5);

      queue2 = [(HSHostConnection *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000038E8;
      block[3] = &unk_100010588;
      block[4] = self;
      v74 = v50;
      dispatch_async(queue2, block);
    }

    else
    {
      v72 = [NSString stringWithFormat:@"Cannot create xpc remote connection."];
      sub_100006E34(4, @"[%@:%d] %@\n", v60, v61, v62, v63, v64, v65, lastPathComponent5);
    }
  }
}

- (void)acceptConnectionsForService:(id)service InQueue:(id)queue withHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  [(HSHostConnection *)self setQueue:queue];
  [(HSHostConnection *)self setHandler:handlerCopy];

  v10 = [serviceCopy stringByAppendingString:@".listen"];
  v11 = dispatch_queue_create([v10 UTF8String], 0);
  [(HSHostConnection *)self setListeningQueue:v11];

  listeningQueue = [(HSHostConnection *)self listeningQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003B2C;
  v14[3] = &unk_100010588;
  v14[4] = self;
  v15 = serviceCopy;
  v13 = serviceCopy;
  dispatch_async(listeningQueue, v14);
}

@end