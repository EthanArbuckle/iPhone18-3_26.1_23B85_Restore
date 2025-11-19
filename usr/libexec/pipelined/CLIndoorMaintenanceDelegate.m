@interface CLIndoorMaintenanceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CLIndoorMaintenanceDelegate)initWithService:(id)a3;
- (CLIndoorServiceDelegate)serviceDelegate;
- (void)clearTiles:(id)a3 withCallback:(id)a4;
- (void)eraseAllData:(id)a3;
- (void)numFloors:(id)a3;
- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)a3;
- (void)shutdown;
@end

@implementation CLIndoorMaintenanceDelegate

- (CLIndoorMaintenanceDelegate)initWithService:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CLIndoorMaintenanceDelegate;
  v5 = [(CLIndoorMaintenanceDelegate *)&v10 init];
  if (v5 && (v6 = dispatch_queue_create("com.apple.pipelined.maintenance", 0), q = v5->_q, v5->_q = v6, q, v5->_q))
  {
    v5->_shutdown = 0;
    objc_storeWeak(&v5->_serviceDelegate, v4);
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)a3
{
  v6 = a3;
  v3 = objc_alloc_init(CLIndoorTileEvictionPolicy);
  [(CLIndoorTileEvictionPolicy *)v3 maxModifiedAge];
  v5 = v4;

  v6[2](v5);
}

- (void)eraseAllData:(id)a3
{
  v5 = a3;
  if (qword_10045B070 == -1)
  {
    v6 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387B20();
  v6 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to eraseAllData", v11, 2u);
  }

LABEL_4:
  v5[2](v5);
  v7 = +[NSXPCConnection currentConnection];
  v8 = [CLIndoorServiceDelegate validateEntitlement:@"maintenance" forConnection:v7 forSelector:a2];

  if (v8)
  {
    v9 = objc_alloc_init(CLIndoorTileEvictionPolicy);
    [(CLIndoorTileEvictionPolicy *)v9 setMaxModifiedAge:-1.79769313e308];
    v10 = [(CLIndoorMaintenanceDelegate *)self serviceDelegate];
    [v10 cancelPrefetch];
    [v10 clearTiles:v9];
    [v10 fullyVacuumAllDBs];
  }
}

- (void)clearTiles:(id)a3 withCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (qword_10045B070 != -1)
  {
    sub_100387B20();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 description];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request to evict tiles against policy %{public}@", &v14, 0xCu);
  }

  v8[2](v8);
  v11 = +[NSXPCConnection currentConnection];
  v12 = [CLIndoorServiceDelegate validateEntitlement:@"maintenance" forConnection:v11 forSelector:a2];

  if (v12)
  {
    v13 = [(CLIndoorMaintenanceDelegate *)self serviceDelegate];
    [v13 clearTiles:v7];
  }
}

- (void)shutdown
{
  if (qword_10045B070 == -1)
  {
    v4 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387B20();
  v4 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to shutdown", buf, 2u);
  }

LABEL_4:
  v5 = +[NSXPCConnection currentConnection];
  v6 = [CLIndoorServiceDelegate validateEntitlement:@"maintenance" forConnection:v5 forSelector:a2];

  if ((v6 & 1) == 0)
  {
    return;
  }

  if (self->_shutdown)
  {
    if (qword_10045B070 == -1)
    {
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_100387B34();
    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
LABEL_8:
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "request to shut down but already shutting down", v11, 2u);
    }
  }

LABEL_9:
  self->_shutdown = 1;
  v8 = [(CLIndoorMaintenanceDelegate *)self serviceDelegate];
  [v8 shutdown];
  if (qword_10045B070 != -1)
  {
    sub_100387B34();
    v9 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_11:
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Requesting graceful shutdown when no transaction remains active", v10, 2u);
  }

LABEL_12:
  xpc_transaction_exit_clean();
}

- (void)numFloors:(id)a3
{
  v5 = a3;
  if (qword_10045B070 == -1)
  {
    v6 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387B20();
  v6 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to return number of floors in the database", v10, 2u);
  }

LABEL_4:
  v7 = +[NSXPCConnection currentConnection];
  v8 = [CLIndoorServiceDelegate validateEntitlement:@"maintenance" forConnection:v7 forSelector:a2];

  if (v8)
  {
    v9 = [(CLIndoorMaintenanceDelegate *)self serviceDelegate];
    v5[2](v5, [v9 numFloors]);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [CLIndoorServiceDelegate validateEntitlement:@"maintenance" forConnection:v6 forSelector:a2];
  if (v7)
  {
    if (self->_shutdown)
    {
      if (qword_10045B070 != -1)
      {
        sub_100387B20();
      }

      v8 = qword_10045B078;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67240192;
        DWORD1(buf) = [v6 processIdentifier];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connection request from %{public}d postponing shutdown", &buf, 8u);
      }
    }

    if (qword_10045B070 != -1)
    {
      sub_100387B34();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[CLIndoorServiceDelegate versionString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "New XPC connection to pipelined maintenance %{public}@", &buf, 0xCu);
    }

    [v6 _setQueue:self->_q];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v18 count:5];
    v12 = [NSSet setWithArray:v11];

    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLIndoorMaintenanceProtocol];
    [v13 setClasses:v12 forSelector:"prefetch:callback:when:" argumentIndex:0 ofReply:0];
    [v6 setExportedInterface:v13];
    [v6 setExportedObject:self];
    [v6 setRemoteObjectInterface:0];
    objc_initWeak(&location, v6);
    objc_copyWeak(&to, &location);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3321888768;
    v20 = sub_100350D98;
    v21 = &unk_10044B040;
    objc_copyWeak(&v22, &to);
    v14 = objc_retainBlock(&buf);
    objc_destroyWeak(&v22);
    [v6 setInvalidationHandler:v14];

    objc_destroyWeak(&to);
    [v6 resume];
    objc_destroyWeak(&location);
  }

  return v7;
}

- (CLIndoorServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end