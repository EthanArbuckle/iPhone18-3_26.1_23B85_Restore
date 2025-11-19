@interface DIIOClientDelegate
- (BOOL)setupNewConnection:(id)a3;
- (DIIOClientDelegate)initWithIODaemon:(id)a3;
- (DIIODaemonDelegate)weakDaemon;
- (NSXPCListenerEndpoint)xpcEndpoint;
- (void)addToRefCountWithReply:(id)a3;
- (void)createListener;
@end

@implementation DIIOClientDelegate

- (DIIOClientDelegate)initWithIODaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DIIOClientDelegate;
  v5 = [(DIBaseServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakDaemon, v4);
  }

  return v6;
}

- (void)addToRefCountWithReply:(id)a3
{
  v3 = a3;
  v4 = *__error();
  if (sub_1000E95F0())
  {
    v5 = sub_1000E957C();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v9 = 45;
    v10 = 2080;
    v11 = "[DIIOClientDelegate addToRefCountWithReply:]";
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v9 = 45;
      v10 = 2080;
      v11 = "[DIIOClientDelegate addToRefCountWithReply:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Reached, keeping connection alive", buf, 0x12u);
    }
  }

  *__error() = v4;
  v3[2](v3, 0);
}

- (BOOL)setupNewConnection:(id)a3
{
  v4 = a3;
  v5 = *__error();
  if (sub_1000E95F0())
  {
    location = 0;
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v34 = 41;
    v35 = 2080;
    v36 = "[DIIOClientDelegate setupNewConnection:]";
    LODWORD(v24) = 18;
    v23 = buf;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E957C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v34 = 41;
      v35 = 2080;
      v36 = "[DIIOClientDelegate setupNewConnection:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: A new client has connected to the clients listener", buf, 0x12u);
    }
  }

  *__error() = v5;
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIIOClientProtocol];
  [v4 setExportedInterface:v9];

  [v4 setExportedObject:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100006398;
  v28[3] = &unk_1001F5760;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  [v4 setInvalidationHandler:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100006568;
  v25[3] = &unk_1001F5760;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, &from);
  [v4 setInterruptionHandler:v25];
  v10 = [(DIIOClientDelegate *)self weakDaemon];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    objc_sync_enter(v12);
    v13 = [v12 activeConnections];
    [v13 addObject:v4];

    v14 = *__error();
    if (sub_1000E95F0())
    {
      v15 = sub_1000E957C();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      v16 = [v12 activeConnections];
      v17 = [v16 count];
      *buf = 68158210;
      v34 = 41;
      v35 = 2080;
      v36 = "[DIIOClientDelegate setupNewConnection:]";
      v37 = 2048;
      v38 = v17;
      v18 = _os_log_send_and_compose_impl();

      if (v18)
      {
        fprintf(__stderrp, "%s\n", v18);
        free(v18);
      }
    }

    else
    {
      v19 = sub_1000E957C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v12 activeConnections];
        v21 = [v20 count];
        *buf = 68158210;
        v34 = 41;
        v35 = 2080;
        v36 = "[DIIOClientDelegate setupNewConnection:]";
        v37 = 2048;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: # of active connections: %lu", buf, 0x1Cu);
      }
    }

    *__error() = v14;
    objc_sync_exit(v12);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)createListener
{
  v3 = +[NSXPCListener anonymousListener];
  [(DIBaseServiceDelegate *)self setListener:v3];
}

- (NSXPCListenerEndpoint)xpcEndpoint
{
  v2 = [(DIBaseServiceDelegate *)self listener];
  v3 = [v2 endpoint];

  return v3;
}

- (DIIODaemonDelegate)weakDaemon
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDaemon);

  return WeakRetained;
}

@end