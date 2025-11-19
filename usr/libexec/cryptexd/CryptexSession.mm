@interface CryptexSession
- (BOOL)sessionAddCptxWithBundleID:(const char *)a3 withType:(int64_t)a4 dmgFd:(int *)a5 trustCacheFD:(int *)a6 manifestFD:(int *)a7 volumeHashFD:(int *)a8 infoPlistFd:(int *)a9 cx1Properties:(id)a10;
- (CryptexSession)initWithCore:(id)a3;
- (char)copySessionName;
- (int)activate;
- (void)cancelPeerConnections;
- (void)parseCommandFromMessage:(id)a3 fromPeer:(id)a4;
- (void)sessionAddParseXPC:(id)a3;
- (void)sessionEventNotify:(int64_t)a3;
- (void)sessionMessageReply:(id)a3;
- (void)sessionStart;
- (void)sessionStopWithReason:(int64_t)a3 exitCode:(unint64_t)a4;
- (void)setExitReason:(int64_t)a3 withCode:(unint64_t)a4;
- (void)setupHandler;
@end

@implementation CryptexSession

- (void)cancelPeerConnections
{
  v3 = [(CryptexSession *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CryptexSession *)self peer_array];
    *buf = 134217984;
    v16 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling peer connections: %zu", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CryptexSession *)self peer_array];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        xpc_connection_cancel(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)sessionStart
{
  [(CryptexSession *)self sessionEventNotify:2];
  v3 = [(CryptexSession *)self cs];
  uid = cryptex_session_core_get_uid();

  v5 = [(CryptexSession *)self session_work_group];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(CryptexSession *)self session_work_group];
  dispatch_group_enter(v6);

  v7 = [(CryptexSession *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Searching for LaunchAgents to add to the session", &v18, 2u);
  }

  v8 = codex_copy_system();
  v9 = [(CryptexSession *)self cs];
  v10 = cryptex_session_core_get_overrides();

  v11 = codex_bootstrap_launch_agents_to_session(v8, uid);
  if (v11)
  {
    v12 = v11;
    [(CryptexSession *)self sessionEventNotify:32];
    [(CryptexSession *)self setError:v12];
    v13 = *__error();
    v14 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(CryptexSession *)self error];
      v18 = 138412546;
      v19 = self;
      v20 = 1024;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to start session %@: %{darwin.errno}d", &v18, 0x12u);
    }

    *__error() = v13;
    v16 = [(CryptexSession *)self session_work_group];
    dispatch_group_leave(v16);
  }

  else
  {
    v17 = self;
    cryptex_async_f();
  }
}

- (void)sessionMessageReply:(id)a3
{
  reply = xpc_dictionary_create_reply(a3);
  if (reply)
  {
    if ([(CryptexSession *)self error])
    {
      v5 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109120;
        v10[1] = [(CryptexSession *)self error];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session has an error (code %d), reporting it.", v10, 8u);
      }

      xpc_dictionary_set_int64(reply, "STATE", 1);
      v6 = [(CryptexSession *)self error];
      v7 = "ERROR";
      v8 = reply;
    }

    else
    {
      v7 = "STATE";
      v8 = reply;
      v6 = 0;
    }

    xpc_dictionary_set_int64(v8, v7, v6);
    xpc_dictionary_send_reply();
  }

  else
  {
    v9 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CryptexSession sessionMessageReply:v9];
    }
  }
}

- (void)sessionStopWithReason:(int64_t)a3 exitCode:(unint64_t)a4
{
  v38 = codex_copy_system();
  v7 = *__error();
  v8 = [(CryptexSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v49) = [(CryptexSession *)self error];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "sessionStopWithReason occurred.: %{darwin.errno}d", buf, 8u);
  }

  *__error() = v7;
  if ([(CryptexSession *)self session_removal_begun])
  {

    v9 = 0;
  }

  else
  {
    [(CryptexSession *)self setSession_removal_begun:1];
    v10 = [(CryptexSession *)self session_work_group];
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

    v11 = [(CryptexSession *)self session_work_group];
    dispatch_group_enter(v11);

    [(CryptexSession *)self setExitReason:a3 withCode:a4];
    [(CryptexSession *)self sessionEventNotify:8];
    v12 = [(CryptexSession *)self quire_array];
    v13 = [v12 count] == 0;

    if (v13)
    {
      [(CryptexSession *)self sessionEventNotify:16];
      [(CryptexSession *)self cancelPeerConnections];
    }

    else
    {
      v14 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(CryptexSession *)self quire_array];
        v16 = [v15 count];
        *buf = 134217984;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Taking down quires: count %zu", buf, 0xCu);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = [(CryptexSession *)self quire_array];
      v17 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v17)
      {
        v19 = *v44;
        *&v18 = 134217984;
        v36 = v18;
        do
        {
          v20 = 0;
          do
          {
            if (*v44 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v43 + 1) + 8 * v20);
            v22 = [(CryptexSession *)self log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v36;
              v49 = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "unmounting %p", buf, 0xCu);
            }

            v23 = [(CryptexSession *)self session_work_group];
            dispatch_group_enter(v23);

            v24 = daemon_get_main_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __49__CryptexSession_sessionStopWithReason_exitCode___block_invoke;
            block[3] = &unk_100071FD0;
            v40 = v38;
            v41 = v21;
            v42 = self;
            dispatch_async(v24, block);

            v20 = v20 + 1;
          }

          while (v17 != v20);
          v17 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v17);
      }
    }

    v25 = [(CryptexSession *)self cs];
    v9 = cryptex_session_core_get_overrides();

    v26 = [(CryptexSession *)self cs];
    uid = cryptex_session_core_get_uid();

    v28 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v49) = uid;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Destroying the launchd session with uid %d", buf, 8u);
    }

    v29 = [(CryptexSession *)self log];
    v30 = launchd_session_destroy(uid, v29);

    if (v30)
    {
      v31 = *__error();
      v32 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v30;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to destroy launchd session: %@", buf, 0xCu);
      }

      *__error() = v31;
    }

    v33 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Searching for LaunchAgents to remove from the session", buf, 2u);
    }

    codex_unbootstrap_launch_agents_from_session(v38, uid);
    v34 = [(CryptexSession *)self session_work_group];
    dispatch_group_leave(v34);

    v35 = +[CryptexSessionList sharedList];
    [v35 removeCryptexSession:self];

    if (v30)
    {
      CFRelease(v30);
    }
  }
}

uint64_t __49__CryptexSession_sessionStopWithReason_exitCode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return codex_unbootstrap(v1, v2, 1uLL, v3, _session_unbootstrap_codex_callback);
}

- (void)sessionAddParseXPC:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [(CryptexSession *)self setError:22];
    v10 = *__error();
    v11 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = [(CryptexSession *)self error];
      v12 = "No payload sent for add.: %{darwin.errno}d";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 8u);
    }

LABEL_10:

    *__error() = v10;
    goto LABEL_15;
  }

  v6 = xpc_dictionary_get_dictionary(v4, "PAYLOAD");
  if (!v6)
  {
    [(CryptexSession *)self setError:22];
    v10 = *__error();
    v11 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = [(CryptexSession *)self error];
      v12 = "Payload format incorrect: %{darwin.errno}d";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v7 = v6;
  v8 = xpc_dictionary_get_array(v6, "CRYPTEXES");
  if (v8)
  {
    v9 = v8;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = __37__CryptexSession_sessionAddParseXPC___block_invoke;
    applier[3] = &unk_100071FF8;
    applier[4] = self;
    xpc_array_apply(v8, applier);
  }

  else
  {
    [(CryptexSession *)self setError:22];
    v13 = *__error();
    v14 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = [(CryptexSession *)self error];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "session_add incorrectly formatted: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v13;
  }

LABEL_15:
}

id __37__CryptexSession_sessionAddParseXPC___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "BUNDLEID");
  v23 = xpc_dictionary_dup_fd(v4, "DMG");
  v22 = xpc_dictionary_dup_fd(v4, "TCH");
  v21 = xpc_dictionary_dup_fd(v4, "IM4");
  v20 = xpc_dictionary_dup_fd(v4, "INF");
  v19 = xpc_dictionary_dup_fd(v4, "VOLHASH");
  int64 = xpc_dictionary_get_int64(v4, "TYPE");
  v7 = xpc_dictionary_get_dictionary(v4, "CRYPTEX1_PROPERTIES");
  if (v7)
  {
    v8 = cryptex_core_cx1_properties_create_with_xpc_dictionary();
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) sessionAddCptxWithBundleID:string withType:int64 dmgFd:&v23 trustCacheFD:&v22 manifestFD:&v21 volumeHashFD:&v19 infoPlistFd:&v20 cx1Properties:v8];

  if (v19 != -1 && close(v19) == -1)
  {
    v24 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v11 = *__error();
    v25 = 67109120;
    v26 = v11;
    _os_log_send_and_compose_impl();
    v12 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v12);
  }

  if (v20 != -1 && close(v20) == -1)
  {
    v24 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v13 = *__error();
    v25 = 67109120;
    v26 = v13;
    _os_log_send_and_compose_impl();
    v14 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v14);
  }

  if (v21 != -1 && close(v21) == -1)
  {
    v24 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v15 = *__error();
    v25 = 67109120;
    v26 = v15;
    _os_log_send_and_compose_impl();
    v16 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v16);
  }

  if (v22 != -1 && close(v22) == -1)
  {
    v24 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v17 = *__error();
    v25 = 67109120;
    v26 = v17;
    _os_log_send_and_compose_impl();
    v18 = _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1(v18);
  }

  if (v23 != -1 && close(v23) == -1)
  {
    __37__CryptexSession_sessionAddParseXPC___block_invoke_cold_5(&v24, &v27);
  }

  return v9;
}

- (BOOL)sessionAddCptxWithBundleID:(const char *)a3 withType:(int64_t)a4 dmgFd:(int *)a5 trustCacheFD:(int *)a6 manifestFD:(int *)a7 volumeHashFD:(int *)a8 infoPlistFd:(int *)a9 cx1Properties:(id)a10
{
  v12 = a10;
  v13 = cryptex_core_create();
  v14 = cryptex_core_set_assets_from_fds();
  if (v14)
  {
    [(CryptexSession *)self setError:v14];
    v15 = *__error();
    v16 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = 67109120;
      LODWORD(v27) = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to add cryptex assets: %{darwin.errno}d", &v26, 8u);
    }

    *__error() = v15;
  }

  else
  {
    if (v12)
    {
      cryptex_core_set_cryptex1_properties();
    }

    v17 = [(CryptexSession *)self session_work_group];
    dispatch_group_enter(v17);

    v18 = cryptex_host_create();
    cryptex_core_attach_host();
    v19 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = a3;
      v28 = 2112;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Installing cryptex %s to %@", &v26, 0x16u);
    }

    v20 = codex_copy_system();
    v21 = [(CryptexSession *)self cs];
    uid = cryptex_session_core_get_uid();
    started = pipeline_start_state_alloc(v20, 0, self, uid, 0, _session_install_codex_callback);

    codex_install_cryptex(v20, v13, started);
    v24 = [(CryptexSession *)self cs];
    cryptex_session_core_append_to_array();
  }

  return v14 == 0;
}

- (void)parseCommandFromMessage:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CryptexSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(daemon) delivering to %@", &v18, 0xCu);
  }

  type = xpc_get_type(v6);
  if (type != &_xpc_type_dictionary)
  {
    goto LABEL_4;
  }

  v11 = xpc_dictionary_get_value(v6, "COMMAND");

  if (!v11)
  {
    if (xpc_dictionary_get_BOOL(v6, "REMOVE"))
    {
      v16 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Recieved Peer Remove Message", &v18, 2u);
      }

      v10 = [(CryptexSession *)self peer_array];
      [v10 removeObject:v7];
      goto LABEL_20;
    }

LABEL_4:
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(v6, _xpc_error_key_description);
      v10 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = string;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Recieved error from peer - %s", &v18, 0xCu);
      }
    }

    else
    {
      v10 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CryptexSession parseCommandFromMessage:v10 fromPeer:?];
      }
    }

LABEL_20:

    goto LABEL_31;
  }

  int64 = xpc_dictionary_get_int64(v6, "COMMAND");
  v13 = [(CryptexSession *)self log];
  v14 = v13;
  switch(int64)
  {
    case 3:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: ADD", &v18, 0xCu);
      }

      [(CryptexSession *)self sessionAddParseXPC:v6];
      break;
    case 2:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: STOP", &v18, 0xCu);
      }

      [(CryptexSession *)self sessionStopWithReason:4 exitCode:0];
      break;
    case 1:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: START", &v18, 0xCu);
      }

      [(CryptexSession *)self sessionStart];
      break;
    default:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CryptexSession parseCommandFromMessage:v14 fromPeer:?];
      }

      break;
  }

  v17 = [(CryptexSession *)self session_work_group];
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  [(CryptexSession *)self sessionMessageReply:v6];
LABEL_31:
}

- (void)setupHandler
{
  v3 = [(CryptexSession *)self listener];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __30__CryptexSession_setupHandler__block_invoke;
  handler[3] = &unk_100071EB0;
  handler[4] = self;
  xpc_connection_set_event_handler(v3, handler);

  v4 = [(CryptexSession *)self listener];
  xpc_connection_activate(v4);

  v5 = [(CryptexSession *)self listener];
  v6 = xpc_endpoint_create(v5);

  v7 = [(CryptexSession *)self cs];
  cryptex_session_core_set_endpoint();
}

void __30__CryptexSession_setupHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type != &_xpc_type_connection)
  {
    v5 = type;
    v6 = [*(a1 + 32) log];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == &_xpc_type_error)
    {
      if (v7)
      {
        *buf = 136315138;
        string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
        v8 = "connection error: %s";
        v9 = v6;
        v10 = 12;
        goto LABEL_10;
      }
    }

    else if (v7)
    {
      *buf = 0;
      v8 = "unrecognized connection event";
      v9 = v6;
      v10 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }

    goto LABEL_12;
  }

  pid = xpc_connection_get_pid(v3);
  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(string) = pid;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "activating peer for %d", buf, 8u);
  }

  v13 = [*(a1 + 32) peer_array];
  [v13 addObject:v3];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __30__CryptexSession_setupHandler__block_invoke_16;
  v15[3] = &unk_100072020;
  v15[4] = *(a1 + 32);
  v14 = v3;
  v16 = v14;
  xpc_connection_set_event_handler(v14, v15);
  xpc_connection_activate(v14);

LABEL_12:
}

- (CryptexSession)initWithCore:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CryptexSession;
  v5 = [(CryptexSession *)&v17 init];
  if (v5)
  {
    v6 = codex_copy_system();
    v7 = cryptex_session_core_copy_name();
    [(CryptexSession *)v5 setCs:v4];
    v8 = [NSString stringWithUTF8String:v7];
    [(CryptexSession *)v5 setName:v8];

    v9 = os_log_create("com.apple.libcryptex", "session_item");
    [(CryptexSession *)v5 setLog:v9];

    v10 = +[NSMutableArray array];
    [(CryptexSession *)v5 setPeer_array:v10];

    v11 = +[NSMutableArray array];
    [(CryptexSession *)v5 setQuire_array:v11];

    [(CryptexSession *)v5 setError:0];
    v12 = cryptex_queue_create_with_target();
    [(CryptexSession *)v5 setDq:v12];

    v13 = [(CryptexSession *)v5 dq];
    v14 = xpc_connection_create(0, v13);
    [(CryptexSession *)v5 setListener:v14];

    v15 = dispatch_group_create();
    [(CryptexSession *)v5 setSession_work_group:v15];

    [(CryptexSession *)v5 setSession_removal_begun:0];
    free(v7);
  }

  return v5;
}

- (void)sessionEventNotify:(int64_t)a3
{
  v5 = [(CryptexSession *)self cs];
  value = cryptex_session_core_get_state();

  [(CryptexSession *)self error];
  v6 = [(CryptexSession *)self cs];
  v23 = a3;
  v7 = cryptex_session_core_transition();

  v8 = [(CryptexSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v30 = a3;
    v31 = 2048;
    v32 = [(CryptexSession *)self exit_code];
    v33 = 2048;
    v34 = [(CryptexSession *)self stop_reason];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sessionNotify event:%lld code: %llu reason: %lld", buf, 0x20u);
  }

  v9 = [(CryptexSession *)self peer_array];
  v10 = [v9 count];

  if (v10)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(CryptexSession *)self peer_array];
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [(CryptexSession *)self cs];
          v18 = cryptex_session_core_copy_xpc_object();

          v19 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_value(v19, "object", v18);
          v20 = v23;
          if (v7 == 6)
          {
            xpc_dictionary_set_int64(v19, "error_event", [(CryptexSession *)self error]);
            v20 = 32;
          }

          xpc_dictionary_set_int64(v19, "start", value);
          xpc_dictionary_set_int64(v19, "event", v20);
          xpc_dictionary_set_int64(v19, "reason", [(CryptexSession *)self stop_reason]);
          xpc_dictionary_set_uint64(v19, "code", [(CryptexSession *)self exit_code]);
          xpc_dictionary_set_int64(v19, "state", v7);
          xpc_connection_send_message(v15, v19);

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }
  }
}

- (int)activate
{
  v3 = [(CryptexSession *)self name];
  [v3 UTF8String];

  v4 = [(CryptexSession *)self cs];
  v5 = cryptex_session_core_copy_homedir();

  v6 = [(CryptexSession *)self cs];
  cryptex_session_core_get_attributes();

  v7 = [(CryptexSession *)self cs];
  cryptex_session_core_get_homedir_size();

  new_user = create_new_user();
  if (new_user)
  {
    v9 = *__error();
    v10 = [(CryptexSession *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 1024;
      v25 = new_user;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create user for %@: %{darwin.errno}d", buf, 0x12u);
    }

    v11 = 0;
    *__error() = v9;
  }

  else
  {
    v12 = copy_homedir_for_user();
    if (v12)
    {
      v13 = [(CryptexSession *)self cs];
      cryptex_session_core_set_homedir();

      v14 = [(CryptexSession *)self cs];
      cryptex_session_core_set_uid();

      v15 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created homedir %s", buf, 0xCu);
      }

      new_user = launchd_session_create_for_uid();
      if (new_user)
      {
        v16 = *__error();
        v17 = [(CryptexSession *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v23 = self;
          v24 = 1024;
          v25 = new_user;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create launchd session for %@: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v16;
      }

      else
      {
        collation_map_initialize_for_user();
        new_user = 0;
      }

      v11 = v12;
    }

    else
    {
      v18 = *__error();
      v19 = [(CryptexSession *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v23) = 22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to find homedir for user.: %{darwin.errno}d", buf, 8u);
      }

      v11 = 0;
      *__error() = v18;
      new_user = 22;
    }
  }

  [(CryptexSession *)self setError:new_user];
  [(CryptexSession *)self sessionEventNotify:1];
  v20 = [(CryptexSession *)self error];
  free(v11);
  free(v5);
  return v20;
}

- (char)copySessionName
{
  v2 = [(CryptexSession *)self cs];
  v3 = cryptex_session_core_copy_name();

  return v3;
}

- (void)setExitReason:(int64_t)a3 withCode:(unint64_t)a4
{
  if (![(CryptexSession *)self stop_reason])
  {
    [(CryptexSession *)self setStop_reason:a3];

    [(CryptexSession *)self setExit_code:a4];
  }
}

void __37__CryptexSession_sessionAddParseXPC___block_invoke_cold_5(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v4 = *__error();
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)parseCommandFromMessage:(uint64_t)a1 fromPeer:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpected command %llu", &v2, 0xCu);
}

@end