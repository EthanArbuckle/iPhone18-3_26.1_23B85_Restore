@interface EventServer
- (EventServer)initWithEventStream:(const char *)a3;
- (id)broadcastEvent:(unint64_t)a3 forCryptex:(id)a4 withInfo:(id)a5;
- (id)broadcastEvent:(unint64_t)a3 forCryptex:(id)a4 withInfo:(id)a5 toClients:(id)a6;
- (void)activate;
- (void)handlePublisherAddToken:(unint64_t)a3 descriptor:(id)a4;
- (void)handlePublisherError:(int)a3;
- (void)handlePublisherRemoveToken:(unint64_t)a3;
- (void)sendAlreadyInstalledCryptexesToClient:(id)a3;
- (void)withInstalledCryptexList:(id)a3;
@end

@implementation EventServer

- (EventServer)initWithEventStream:(const char *)a3
{
  v16.receiver = self;
  v16.super_class = EventServer;
  v3 = [(EventServer *)&v16 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.security.cryptexd.event_server", 0);
    v5 = xpc_event_publisher_create();
    publisher = v3->_publisher;
    v3->_publisher = v5;

    v7 = os_log_create("com.apple.libcryptex", "event_server");
    log = v3->_log;
    v3->_log = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    clients = v3->_clients;
    v3->_clients = v9;

    v11 = [(EventServer *)v3 publisher];
    v15 = v3;
    xpc_event_publisher_set_handler();

    v12 = [(EventServer *)v15 publisher];
    v14 = v15;
    xpc_event_publisher_set_error_handler();
  }

  return v3;
}

void __35__EventServer_initWithEventStream___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 2)
  {
    [*(a1 + 32) handlePublisherInitialBarrier];
  }

  else if (a2 == 1)
  {
    [*(a1 + 32) handlePublisherRemoveToken:a3];
  }

  else if (a2)
  {
    v8 = *__error();
    v9 = [*(a1 + 32) log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 1024;
      v12 = 22;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Unexpected publisher action: %d: %{darwin.errno}d", v10, 0xEu);
    }

    *__error() = v8;
  }

  else
  {
    [*(a1 + 32) handlePublisherAddToken:a3 descriptor:v7];
  }
}

- (void)activate
{
  v2 = [(EventServer *)self publisher];
  xpc_event_publisher_activate();
}

- (void)withInstalledCryptexList:(id)a3
{
  v3 = a3;
  v5 = codex_copy_system();
  v4 = [v3 copy];

  codex_list_installed(v5, v4, _codex_list_installed_callback);
}

- (void)sendAlreadyInstalledCryptexesToClient:(id)a3
{
  v4 = a3;
  if ([v4 eventMask])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __53__EventServer_sendAlreadyInstalledCryptexesToClient___block_invoke;
    v5[3] = &unk_100072780;
    v5[4] = self;
    v6 = v4;
    [(EventServer *)self withInstalledCryptexList:v5];
  }
}

void __53__EventServer_sendAlreadyInstalledCryptexesToClient___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __53__EventServer_sendAlreadyInstalledCryptexesToClient___block_invoke_2;
  v5[3] = &unk_100072758;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  xpc_array_apply(a3, v5);
}

uint64_t __53__EventServer_sendAlreadyInstalledCryptexesToClient___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  string = xpc_array_get_string(v4, 0);
  v7 = xpc_array_get_string(v4, 1uLL);

  v8 = [NSString stringWithUTF8String:string];
  [v5 setObject:v8 forKeyedSubscript:@"Identifier"];

  v9 = [NSString stringWithUTF8String:v7];
  [v5 setObject:v9 forKeyedSubscript:@"Version"];

  v10 = *(a1 + 32);
  v11 = [NSString stringWithUTF8String:string];
  v15 = *(a1 + 40);
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [v10 broadcastEvent:1 forCryptex:v11 withInfo:v5 toClients:v12];

  return 1;
}

- (void)handlePublisherAddToken:(unint64_t)a3 descriptor:(id)a4
{
  v6 = a4;
  v21 = 0;
  v22 = 0;
  string = _xpc_dictionary_try_get_string(v6, "CryptexEventClientName", &v22);
  if (string)
  {
    v8 = *__error();
    v9 = [(EventServer *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "CryptexEventClientName";
      v25 = 1024;
      LODWORD(v26) = string;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Subscriber missing expected key '%{public}s'. Ignoring.: %{darwin.errno}d", buf, 0x12u);
    }

    v10 = __error();
LABEL_9:
    *v10 = v8;
    goto LABEL_10;
  }

  uint64 = _xpc_dictionary_try_get_uint64(v6, "CryptexEventMask", &v21);
  if (uint64)
  {
    v8 = *__error();
    v12 = [(EventServer *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = v22;
      v25 = 2082;
      v26 = "CryptexEventMask";
      v27 = 1024;
      LODWORD(v28) = uint64;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Subscriber '%s' missing expected key '%{public}s'. Ignoring.: %{darwin.errno}d", buf, 0x1Cu);
    }

    v10 = __error();
    goto LABEL_9;
  }

  v13 = [EventClient alloc];
  v14 = [NSString stringWithUTF8String:v22];
  v15 = [(EventClient *)v13 initWithToken:a3 name:v14 eventMask:v21];

  v16 = [(EventServer *)self clients];
  objc_sync_enter(v16);
  v17 = [(EventServer *)self clients];
  v18 = [NSNumber numberWithUnsignedLongLong:a3];
  [v17 setObject:v15 forKeyedSubscript:v18];

  objc_sync_exit(v16);
  v19 = *__error();
  v20 = [(EventServer *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = v22;
    v25 = 2048;
    v26 = v21;
    v27 = 2048;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "'%s' subscribed with event mask 0x%llx, token %llu", buf, 0x20u);
  }

  *__error() = v19;
  [(EventServer *)self sendAlreadyInstalledCryptexesToClient:v15];

LABEL_10:
}

- (void)handlePublisherRemoveToken:(unint64_t)a3
{
  v5 = [(EventServer *)self clients];
  objc_sync_enter(v5);
  v6 = [(EventServer *)self clients];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [(EventServer *)self clients];
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  [v9 removeObjectForKey:v10];

  objc_sync_exit(v5);
  v11 = *__error();
  v12 = [(EventServer *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 clientName];
    v14 = 138412546;
    v15 = v13;
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "'%@' unsubscribed with token %llu", &v14, 0x16u);
  }

  *__error() = v11;
}

- (void)handlePublisherError:(int)a3
{
  v5 = *__error();
  v6 = [(EventServer *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "XPC publisher error: %{darwin.errno}d", v7, 8u);
  }

  *__error() = v5;
}

- (id)broadcastEvent:(unint64_t)a3 forCryptex:(id)a4 withInfo:(id)a5
{
  v19 = a4;
  v20 = a5;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(EventServer *)self clients];
  objc_sync_enter(v9);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(EventServer *)self clients];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(EventServer *)self clients];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (([v16 eventMask] & a3) != 0)
        {
          [v8 addObject:v16];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
  v17 = [(EventServer *)self broadcastEvent:a3 forCryptex:v19 withInfo:v20 toClients:v8];

  return v17;
}

- (id)broadcastEvent:(unint64_t)a3 forCryptex:(id)a4 withInfo:(id)a5 toClients:(id)a6
{
  v10 = a4;
  v11 = a5;
  v34 = a6;
  v12 = xpc_dictionary_create(0, 0, 0);
  v36 = a3;
  xpc_dictionary_set_uint64(v12, "CRYPTEX_EVENT_TYPE", a3);
  v37 = v10;
  xdict = v12;
  xpc_dictionary_set_string(v12, "CRYPTEX_EVENT_CRYPTEX_NAME", [v10 UTF8String]);
  v33 = v11;
  if (v11)
  {
    v43 = 0;
    v35 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v43];
    v13 = v43;
    if (!v35)
    {
      v26 = v13;
      v27 = [v13 code];
      v28 = [(EventServer *)self log];

      if (v28)
      {
        v29 = [(EventServer *)self log];
        os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        *buf = 0;
        v30 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 0;
        v30 = _os_log_send_and_compose_impl();
      }

      Error = createError("[EventServer broadcastEvent:forCryptex:withInfo:toClients:]", "event_server.m", 220, "com.apple.security.cryptex", v27, v26, v30);
      free(v30);
      goto LABEL_19;
    }

    v32 = v13;
    v14 = v35;
    xpc_dictionary_set_data(v12, "CRYPTEX_EVENT_INFO", [v35 bytes], objc_msgSend(v35, "length"));
  }

  else
  {
    v35 = 0;
    v32 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = v34;
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v16)
  {
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        v20 = *__error();
        v21 = [(EventServer *)self log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v19 clientName];
          *buf = 134218498;
          v45 = v36;
          v46 = 2112;
          v47 = v37;
          v48 = 2112;
          v49 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "event 0x%llx for cryptex '%@' sent to '%@'", buf, 0x20u);
        }

        *__error() = v20;
        v23 = [(EventServer *)self publisher];
        v24 = [v19 token];
        [v24 unsignedLongLongValue];
        xpc_event_publisher_fire();
      }

      v16 = [v15 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v16);
  }

  Error = 0;
  v26 = v35;
LABEL_19:

  return Error;
}

@end