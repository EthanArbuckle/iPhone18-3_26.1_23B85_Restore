@interface UpgradeClient
- (UpgradeClient)initWithConn:(id)conn log:(id)log;
- (void)_handleInterfaceLockMessage:(id)message;
- (void)activate;
- (void)dealloc;
- (void)onCancel:(id)cancel;
@end

@implementation UpgradeClient

- (UpgradeClient)initWithConn:(id)conn log:(id)log
{
  connCopy = conn;
  logCopy = log;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  memset(v16, 0, sizeof(v16));
  v15.receiver = self;
  v15.super_class = UpgradeClient;
  v9 = [(UpgradeClient *)&v15 init];
  if (v9)
  {
    pid = xpc_connection_get_pid(connCopy);
    snprintf(__str, 0xFFuLL, "com.apple.security.cryptexd.upgrade_lock.pid%d", pid);
    v11 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v11;

    objc_storeStrong(&v9->_conn, conn);
    objc_storeStrong(&v9->_logHandle, log);
    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x8709206FuLL);
    if (!v13)
    {
      [UpgradeClient initWithConn:v33 log:?];
    }

    v9->_cred = v13;
    xpc_connection_get_audit_token();
    rpc_cred_init_with_audit_token(&v9->_cred->var0, v16);
  }

  return v9;
}

- (void)activate
{
  objc_initWeak(&location, self);
  conn = [(UpgradeClient *)self conn];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __25__UpgradeClient_activate__block_invoke;
  v8 = &unk_100071468;
  objc_copyWeak(&v9, &location);
  xpc_connection_set_event_handler(conn, &v5);

  v4 = [(UpgradeClient *)self conn:v5];
  xpc_connection_activate(v4);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__UpgradeClient_activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterfaceLockMessage:v3];
}

- (void)onCancel:(id)cancel
{
  v4 = objc_retainBlock(cancel);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  _objc_release_x1();
}

- (void)_handleInterfaceLockMessage:(id)message
{
  messageCopy = message;
  conn = [(UpgradeClient *)self conn];
  conn7 = 0;
  is_entitled = cryptex_xpc_connection_is_entitled(conn, "com.apple.private.security.cryptex.upgrade");

  if (is_entitled)
  {
    v9 = xpc_copy_description(messageCopy);
    if (xpc_get_type(messageCopy) == &_xpc_type_error)
    {
      cancelHandler = [(UpgradeClient *)self cancelHandler];
      cancelHandler[2]();

      transaction = self->_transaction;
      self->_transaction = 0;

      conn = self->_conn;
      self->_conn = 0;
    }

    else
    {
      *buffer = *"unknown";
      *&buffer[16] = *&qword_100059128;
      conn2 = [(UpgradeClient *)self conn];
      pid = xpc_connection_get_pid(conn2);
      proc_name(pid, buffer, 0x20u);

      v12 = *__error();
      logHandle = [(UpgradeClient *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        conn3 = [(UpgradeClient *)self conn];
        if (conn3)
        {
          conn4 = [(UpgradeClient *)self conn];
          v15 = xpc_connection_get_pid(conn4);
        }

        else
        {
          v15 = -1;
        }

        v27 = 136315906;
        v28 = buffer;
        v29 = 1024;
        v30 = v15;
        v31 = 2082;
        v32 = v9;
        v33 = 1024;
        v34 = 5;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: unexpected message: %{public}s: %{darwin.errno}d", &v27, 0x22u);
        if (conn3)
        {
        }
      }

      *__error() = v12;
      conn5 = [(UpgradeClient *)self conn];
      xpc_connection_cancel(conn5);
    }
  }

  else
  {
    v16 = [(UpgradeClient *)self conn:*"unknown"];
    v17 = xpc_connection_get_pid(v16);
    proc_name(v17, &v27, 0x20u);

    v18 = *__error();
    logHandle2 = [(UpgradeClient *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      conn6 = [(UpgradeClient *)self conn];
      if (conn6)
      {
        conn7 = [(UpgradeClient *)self conn];
        v21 = xpc_connection_get_pid(conn7);
      }

      else
      {
        v21 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = &v27;
      *&buffer[12] = 1024;
      *&buffer[14] = v21;
      *&buffer[18] = 1024;
      *&buffer[20] = 144;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Client lacks entitlement.: %{darwin.errno}d", buffer, 0x18u);
      if (conn6)
      {
      }
    }

    *__error() = v18;
    conn8 = [(UpgradeClient *)self conn];
    xpc_connection_cancel(conn8);

    v9 = 0;
  }

  free(v9);
}

- (void)dealloc
{
  conn = self->_conn;
  if (conn)
  {
    xpc_connection_cancel(conn);
  }

  free(self->_cred);
  v4.receiver = self;
  v4.super_class = UpgradeClient;
  [(UpgradeClient *)&v4 dealloc];
}

- (void)initWithConn:(uint64_t *)a1 log:(_OWORD *)a2 .cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_0();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end