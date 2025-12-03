@interface RDXPCListener
+ (id)sharedListener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)startListening;
- (void)stopListening;
@end

@implementation RDXPCListener

+ (id)sharedListener
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000783F8;
  block[3] = &unk_1000DCE88;
  block[4] = self;
  if (qword_1000EB4A8 != -1)
  {
    dispatch_once(&qword_1000EB4A8, block);
  }

  v2 = qword_1000EB4A0;

  return v2;
}

- (void)startListening
{
  xpcListener = [(RDXPCListener *)self xpcListener];
  [xpcListener resume];
}

- (void)stopListening
{
  xpcListener = [(RDXPCListener *)self xpcListener];
  [xpcListener suspend];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  _xpcConnection = [connectionCopy _xpcConnection];
  __xpc_connection_set_logging();

  v6 = [RDClient clientWithXPCConnection:connectionCopy];
  if ([v6 hasEntitlement:@"com.apple.mobile.keybagd.bubbled.sync"])
  {
    if (qword_1000EB4C8 != -1)
    {
      sub_100098698();
    }

    v7 = qword_1000EB4C0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v36 = 0;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (qword_1000EB4C8 != -1)
    {
      sub_1000986AC();
    }

    v19 = qword_1000EB4C0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v36 = 0;
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v24 = +[RDServer sharedServer];
    [v24 addBubbleClient:v6];

    v25 = +[RDClient sharedBubbleXPCInterface];
    [connectionCopy setRemoteObjectInterface:v25];

    v26 = +[RDServer sharedBubbleXPCInterface];
    [connectionCopy setExportedInterface:v26];

    v27 = +[RDServer sharedServer];
    [connectionCopy setExportedObject:v27];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100078A70;
    v31[3] = &unk_1000DCFF8;
    v16 = &v32;
    v32 = v6;
    [connectionCopy setInvalidationHandler:v31];
    v17 = v30;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v18 = sub_100078AC8;
  }

  else
  {
    v12 = +[RDServer sharedServer];
    [v12 addClient:v6];

    v13 = +[RDClient sharedXPCInterface];
    [connectionCopy setRemoteObjectInterface:v13];

    v14 = +[RDServer sharedXPCInterface];
    [connectionCopy setExportedInterface:v14];

    v15 = +[RDServer sharedServer];
    [connectionCopy setExportedObject:v15];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000789C0;
    v34[3] = &unk_1000DCFF8;
    v16 = &v35;
    v35 = v6;
    [connectionCopy setInvalidationHandler:v34];
    v17 = v33;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v18 = sub_100078A18;
  }

  v17[2] = v18;
  v17[3] = &unk_1000DCFF8;
  v17[4] = v6;
  v28 = v6;
  [connectionCopy setInterruptionHandler:v17];

  [connectionCopy resume];
  return 1;
}

@end