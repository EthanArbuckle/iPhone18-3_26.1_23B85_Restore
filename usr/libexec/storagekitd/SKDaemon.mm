@interface SKDaemon
+ (id)sharedDaemon;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SKDaemon)init;
- (void)handleWithMatchingEvent:(id)a3;
- (void)setupSigtermHandler;
- (void)startServer;
@end

@implementation SKDaemon

+ (id)sharedDaemon
{
  if (qword_100059378 != -1)
  {
    sub_10002E524();
  }

  v3 = qword_100059380;

  return v3;
}

- (void)setupSigtermHandler
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigtermHandler = self->_sigtermHandler;
  self->_sigtermHandler = v3;

  dispatch_source_set_event_handler(self->_sigtermHandler, &stru_100049178);
  v5 = self->_sigtermHandler;

  dispatch_resume(v5);
}

- (SKDaemon)init
{
  v5.receiver = self;
  v5.super_class = SKDaemon;
  v2 = [(SKDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKDaemon *)v2 setupSigtermHandler];
  }

  return v3;
}

- (void)handleWithMatchingEvent:(id)a3
{
  string = xpc_dictionary_get_string(a3, _xpc_event_key_name);
  v4 = string;
  if (string && !strcmp(string, "com.apple.storagekit.resize-match"))
  {
    v15 = 0;
    *buf = 4;
    if (sysctlbyname("kern.hv_vmm_present", &v15, buf, 0, 0) || v15 != 1)
    {
      v5 = sub_10000BFD0();
      if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315138;
      *&buf[4] = "[SKDaemon handleWithMatchingEvent:]";
      v7 = "%s: Ignoring disk resize event, not a VM";
      p_super = &v5->super;
      v9 = 12;
      goto LABEL_7;
    }

    v5 = [[SKIOObject alloc] initWithIOObject:IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/defaults")];
    if (v5)
    {
      v10 = [(SKIOObject *)v5 copyPropertyWithClass:objc_opt_class() key:@"sk-disk-resize"];
      v11 = v10;
      if (v10 && [v10 length]== 8)
      {
        v12 = *[v11 bytes];
        v13 = +[SKDaemonManager sharedManager];
        [v13 performVMDiskResizeWithSize:v12];
      }

      else
      {
        v13 = sub_10000BFD0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          if (v11)
          {
            v14 = [v11 length];
          }

          else
          {
            v14 = 0;
          }

          *buf = 136315394;
          *&buf[4] = "[SKDaemon handleWithMatchingEvent:]";
          v17 = 2048;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to retrieve size to resize (data object length %ld)", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[SKDaemon handleWithMatchingEvent:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Failed to retrieve device tree defaults", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v6 = "empty";
      if (v4)
      {
        v6 = v4;
      }

      *buf = 136315394;
      *&buf[4] = "[SKDaemon handleWithMatchingEvent:]";
      v17 = 2080;
      v18 = v6;
      v7 = "%s: xpcEventName is %s";
      p_super = &v5->super;
      v9 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, v7, buf, v9);
    }
  }

LABEL_25:
}

- (void)startServer
{
  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting SKDaemon...", buf, 2u);
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.storagekitd"];
  [(SKDaemon *)self setListener:v4];

  v5 = [(SKDaemon *)self listener];
  [v5 setDelegate:self];

  v6 = +[SKDaemonManager sharedManager];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012C24;
  handler[3] = &unk_1000491C0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, handler);
  v7 = [(SKDaemon *)self listener];
  [v7 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKDaemon *)self listener];

  v9 = v8 == v7;
  if (v9)
  {
    v11 = [[SKDaemonConnection alloc] initWithConnection:v6];
    if (!v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v12 = v11;
    [(SKDaemon *)self setNumConnectedClients:[(SKDaemon *)self numConnectedClients]+ 1];
    v13 = sub_10000BFD0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v12;
      v24 = 1024;
      v25 = [(SKDaemon *)self numConnectedClients];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ added. There are now %u client(s) connected to storagekitd", buf, 0x12u);
    }

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100012E5C;
    v19 = &unk_100048F38;
    v10 = v12;
    v20 = v10;
    v21 = self;
    [v6 setInvalidationHandler:&v16];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [SKDaemonManager sharedManager:v16];
      [v14 addListener:v10];
    }

    [v6 resume];
  }

  else
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unknown listener (!) rejecting connection", buf, 2u);
    }
  }

LABEL_11:
  return v9;
}

@end