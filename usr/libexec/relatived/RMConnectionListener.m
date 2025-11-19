@interface RMConnectionListener
- (BOOL)isEndpointConnectionAllowed:(id)a3;
- (RMConnectionListener)initWithQueue:(id)a3 entitlement:(id)a4 tccService:(id)a5 messageHandlerConstructor:(id)a6;
- (id)_initWithQueue:(id)a3 entitlement:(id)a4 tccService:(id)a5 messageHandlerConstructor:(id)a6;
- (void)endpointWasInterrupted:(id)a3;
- (void)endpointWasInvalidated:(id)a3;
- (void)invalidate;
- (void)startListeningForService:(id)a3;
- (void)traverseEndpointsAsynchronously:(id)a3;
@end

@implementation RMConnectionListener

- (id)_initWithQueue:(id)a3 entitlement:(id)a4 tccService:(id)a5 messageHandlerConstructor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = RMConnectionListener;
  v14 = [(RMConnectionListener *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(RMConnectionListener *)v14 setQueue:v10];
    v16 = objc_opt_new();
    [(RMConnectionListener *)v15 setConnections:v16];

    [(RMConnectionListener *)v15 setMessageHandlerConstructor:v13];
    [(RMConnectionListener *)v15 setEntitlement:v11];
    [(RMConnectionListener *)v15 setTccService:v12];
  }

  return v15;
}

- (RMConnectionListener)initWithQueue:(id)a3 entitlement:(id)a4 tccService:(id)a5 messageHandlerConstructor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      v14 = v13;
      v15 = [(RMConnectionListener *)self _initWithQueue:v10 entitlement:v11 tccService:v12 messageHandlerConstructor:v13];

      return v15;
    }
  }

  else
  {
    sub_100012ED4();
  }

  sub_100012DB0();
  return sub_100007640();
}

- (BOOL)isEndpointConnectionAllowed:(id)a3
{
  v5 = a3;
  v6 = [(RMConnectionListener *)self entitlement];

  if (v6)
  {
    v7 = [(RMConnectionListener *)self entitlement];
    LODWORD(v6) = sub_100012420(v5, v7);
  }

  v8 = [(RMConnectionListener *)self tccService];

  if (v8)
  {
    v9 = [(RMConnectionListener *)self entitlement];

    if (!v9)
    {
      sub_10001300C();
LABEL_27:
      sub_100013130();
      goto LABEL_21;
    }

    v10 = [(RMConnectionListener *)self tccService];
    LODWORD(v8) = sub_1000128E4(v5, v10);
  }

  if (qword_10002C0B8 != -1)
  {
    sub_100012FF8();
  }

  p_info = RMFacePoseCaptureContext.info;
  v11 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    if (v6)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    if (v8)
    {
      v12 = "YES";
    }

    v28 = 136446466;
    v29 = v13;
    v30 = 2082;
    *v31 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client status: Entitled: %{public}s Authorized: %{public}s", &v28, 0x16u);
  }

  if ((v6 | v8))
  {
    goto LABEL_23;
  }

  v14 = [(RMConnectionListener *)self entitlement];

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = [(RMConnectionListener *)self entitlement];
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  v17 = [(RMConnectionListener *)self deprecatedEntitlement];

  if (!v17 || ([(RMConnectionListener *)self deprecatedEntitlement], v18 = objc_claimAutoreleasedReturnValue(), v19 = sub_100012420(v5, v18), v18, !v19))
  {
LABEL_24:
    v26 = 0;
    goto LABEL_25;
  }

  if (qword_10002C0B8 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  v20 = p_info[24];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = v20;
    v22 = sub_100012944(v5);
    v23 = sub_100012990(v5);
    v24 = [(RMConnectionListener *)self deprecatedEntitlement];
    v25 = [(RMConnectionListener *)self entitlement];
    v28 = 138544131;
    v29 = v22;
    v30 = 1025;
    *v31 = v23;
    *&v31[4] = 2114;
    *&v31[6] = v24;
    v32 = 2114;
    v33 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Client %{public}@ (%{private}d) uses deprecated entitlement %{public}@: please use %{public}@ instead", &v28, 0x26u);
  }

LABEL_23:
  v26 = 1;
LABEL_25:

  return v26;
}

- (void)startListeningForService:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = [(RMConnectionListener *)self queue];
  mach_service = xpc_connection_create_mach_service(v5, v6, 1uLL);
  [(RMConnectionListener *)self setListener:mach_service];

  v8 = [(RMConnectionListener *)self listener];

  if (!v8)
  {
    sub_100013158(v4);
  }

  if (qword_10002C0B8 != -1)
  {
    sub_100012FF8();
  }

  v9 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registering handler for service: %{private}@", buf, 0xCu);
  }

  v10 = [(RMConnectionListener *)self listener];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007B84;
  handler[3] = &unk_100024D50;
  handler[4] = self;
  xpc_connection_set_event_handler(v10, handler);

  v11 = [(RMConnectionListener *)self listener];
  xpc_connection_resume(v11);

  if (qword_10002C0B8 != -1)
  {
    sub_100013130();
  }

  v12 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Listener started for service: %{private}@", buf, 0xCu);
  }
}

- (void)traverseEndpointsAsynchronously:(id)a3
{
  v4 = a3;
  v5 = [(RMConnectionListener *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008030;
  v7[3] = &unk_100024D78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)invalidate
{
  v3 = [(RMConnectionListener *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(RMConnectionListener *)self connections];
  v5 = [v4 copy];

  [v5 enumerateObjectsUsingBlock:&stru_100024DB8];
  v6 = [(RMConnectionListener *)self connections];
  [v6 removeAllObjects];

  v7 = [(RMConnectionListener *)self listener];
  xpc_connection_cancel(v7);

  [(RMConnectionListener *)self setListener:0];
}

- (void)endpointWasInterrupted:(id)a3
{
  v3 = a3;
  if (qword_10002C0B8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    if (qword_10002C0B8 != -1)
    {
      dispatch_once(&qword_10002C0B8, &stru_100024DD8);
    }

    v5 = qword_10002C0C0;
    if (os_signpost_enabled(qword_10002C0C0))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Interruption events shouldn't be received by the daemon", "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    if (qword_10002C0B8 != -1)
    {
      dispatch_once(&qword_10002C0B8, &stru_100024DD8);
    }

    v6 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_10001E8F6;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Interruption events shouldn't be received by the daemon, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_13:
    dispatch_once(&qword_10002C0B8, &stru_100024DD8);
  }
}

- (void)endpointWasInvalidated:(id)a3
{
  v4 = a3;
  v5 = [(RMConnectionListener *)self queue];
  dispatch_assert_queue_V2(v5);

  sub_10001540C(v4, 0);
  v6 = sub_100014DC4(v4);

  if (v6)
  {
    sub_10001335C(self, v4);
  }

  else
  {
    v7 = sub_1000133F8();
    [(RMConnectionListener *)v7 deprecatedEntitlement];
  }
}

@end