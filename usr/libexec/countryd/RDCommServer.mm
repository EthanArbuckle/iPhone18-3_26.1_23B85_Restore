@interface RDCommServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RDCommServer)init;
@end

@implementation RDCommServer

- (RDCommServer)init
{
  v14.receiver = self;
  v14.super_class = RDCommServer;
  v2 = [(RDCommServer *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(RDXPCHandler);
    server = v2->server;
    v2->server = v3;

    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDXPCProtocol];
    interface = v2->interface;
    v2->interface = v5;

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    [(NSXPCInterface *)v2->interface setClasses:v8 forSelector:"updatePeer:withEstimate:" argumentIndex:0 ofReply:0];
    if (v2->interface)
    {
      v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.countryd.update"];
      v10 = v9;
      if (v9)
      {
        [v9 setDelegate:v2];
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v11 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v16 = 0;
          v17 = 2082;
          v18 = "";
          _os_log_impl(&dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:listener is starting connection...}", buf, 0x12u);
        }

        [v10 resume];
        v12 = v2;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedInterface:self->interface];
  [connectionCopy setExportedObject:self->server];
  if (qword_100019008 != -1)
  {
    dispatch_once(&qword_100019008, &stru_100014A98);
  }

  v6 = qword_100019010;
  if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:listener is resuming connection...}", v8, 0x12u);
  }

  [connectionCopy resume];

  return 1;
}

@end