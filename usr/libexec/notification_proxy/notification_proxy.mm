void sub_100000F38(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 8);
  v3 = v1[1];
  v4 = lockdown_send_message();
  v5 = qword_10000C768;
  if (v4)
  {
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v1[1];
      v7 = *v1;
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lockdown_send_message error, message: %@, connection: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_100003748(v1 + 1, v1);
  }
}

id sub_1000010AC(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 8);
  v3 = lockdown_send_message();
  v4 = qword_10000C768;
  if (v3)
  {
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v1;
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "shutdown error, connection: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_1000037BC(v1);
  }

  return [*v1 cancel];
}

void sub_1000013A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  v4 = lockdown_receive_message();
  if (!v4)
  {
    v10 = qword_10000C768;
    if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "lockdown_receive_message returned NULL";
    v8 = v10;
    v9 = 2;
    goto LABEL_4;
  }

  v5 = v4;
  v6 = qword_10000C768;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v12) = v5;
    v7 = "lockdown_receive_message error: %d";
    v8 = v6;
    v9 = 8;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
  }

LABEL_5:
  dispatch_source_cancel(*(*(a1 + 32) + 16));
}

void sub_10000155C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (!v4)
  {
    v14 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v3;
      v15 = "%@ - Disconnected";
      v16 = v14;
      v17 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 0xCu);
    }

LABEL_15:
    [v3 cancel];
    v7 = 0;
    goto LABEL_29;
  }

  v6 = [v4 objectForKeyedSubscript:@"Command"];
  if (!v6)
  {
    v18 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v3;
      v15 = "%@ - No command in the message";
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = v6;
  if ([v6 isEqualToString:@"PostNotification"])
  {
    v8 = [v4 objectForKeyedSubscript:@"Name"];
    v9 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v3;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ - Got POST_NOTIFICATION command for notification: %@", buf, 0x16u);
    }

    if (v8)
    {
      if (!qword_10000C778)
      {
        v22 = notify_post([v8 UTF8String]);
        if (!v22)
        {
          goto LABEL_28;
        }

        v23 = v22;
        v24 = qword_10000C768;
        if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 138412546;
        v29 = v3;
        v30 = 1024;
        LODWORD(v31) = v23;
        v11 = "%@ - Failed to post notification (%u)";
        v12 = v24;
        v13 = 18;
        goto LABEL_27;
      }

      v10 = qword_10000C768;
      if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v3;
        v30 = 2112;
        v31 = v8;
        v11 = "%@ - Insecure notification service cannot post notification '%@'";
        v12 = v10;
        v13 = 22;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    else
    {
      v21 = qword_10000C768;
      if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v3;
        v11 = "%@ - No name in post notification command";
        v12 = v21;
        v13 = 12;
        goto LABEL_27;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  if ([v7 isEqualToString:@"ObserveNotification"])
  {
    v19 = qword_10000C770;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000270C;
    v25[3] = &unk_100008328;
    v26 = v4;
    v27 = v3;
    dispatch_async(v19, v25);
  }

  else if ([v7 isEqualToString:@"Shutdown"])
  {
    v20 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ - Got SHUTDOWN command", buf, 0xCu);
    }

    [v3 shutdown];
  }

LABEL_29:

  objc_autoreleasePoolPop(v5);
}

void sub_100001950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100001990(WeakRetained);
}

void sub_100001990(void *a1)
{
  v1 = a1;
  v2 = qword_10000C770;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000324C;
  block[3] = &unk_100008350;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_100001DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100001E0C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
      {
        sub_100003874();
      }
    }

    else if (v3 == &_xpc_error_connection_interrupted)
    {
      if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
      {
        sub_100003834();
      }
    }

    else
    {
      v13 = xpc_copy_description(v3);
      v14 = qword_10000C768;
      if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446210;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unexpected RemoteXPC error: %{public}s", &v19, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }
    }

    sub_100001990(WeakRetained);
    v18 = *(*(a1 + 32) + 8);
    xpc_remote_connection_cancel();
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    if (v5)
    {
      v6 = v5;
      string = xpc_dictionary_get_string(v3, [@"Command" UTF8String]);
      if (string)
      {
        v8 = string;
        v9 = xpc_dictionary_get_string(v3, [@"Name" UTF8String]);
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithUTF8String:v8];
          [v6 setObject:v11 forKeyedSubscript:@"Command"];

          v12 = [NSString stringWithUTF8String:v10];
          [v6 setObject:v12 forKeyedSubscript:@"Name"];

          sub_10000155C(WeakRetained, v6);
LABEL_21:

          goto LABEL_25;
        }

        v16 = qword_10000C768;
        if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        LOWORD(v19) = 0;
        v17 = "Failed to read name.";
      }

      else
      {
        v16 = qword_10000C768;
        if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        LOWORD(v19) = 0;
        v17 = "Failed to read command.";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &v19, 2u);
      goto LABEL_21;
    }

    v15 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", &v19, 2u);
    }
  }

LABEL_25:
}

uint64_t start(int a1, char **a2)
{
  v4 = "com.apple.mobile.notification_proxy";
  label = "com.apple.mobile.notification_proxy.remote";
  while (1)
  {
    v5 = getopt(a1, a2, "i");
    if (v5 != 105)
    {
      break;
    }

    v6 = [NSSet setWithObjects:@"com.apple.mobile.lockdown.request_host_buid", @"com.apple.mobile.lockdown.request_pair", @"com.apple.datamigrator.migrationDidFinish", @"com.apple.mobile.lockdown.trust", @"com.apple.mobile.lockdown.do_not_trust", @"com.apple.mobile.lockdown.open_trust_dialog", @"com.apple.mobile.lockdown.cancel_trust_dialog", 0];
    v7 = qword_10000C778;
    qword_10000C778 = v6;

    label = "com.apple.mobile.insecure_notification_proxy.remote";
    v4 = "com.apple.mobile.insecure_notification_proxy";
  }

  if (v5 != -1)
  {
    syslog(3, "unknown option '%c'\n", v5);
    goto LABEL_10;
  }

  v8 = os_log_create(v4, "default");
  v9 = qword_10000C768;
  qword_10000C768 = v8;

  v29[0] = @"com.apple.mobile.application_installed";
  v29[1] = @"com.apple.mobile.application_uninstalled";
  v30[0] = @"com.apple.LaunchServices.applicationRegistered";
  v30[1] = @"com.apple.LaunchServices.applicationUnregistered";
  v10 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v11 = qword_10000C780;
  qword_10000C780 = v10;

  v12 = dispatch_get_global_queue(0, 0);
  v13 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v12);

  dispatch_source_set_event_handler(v13, &stru_100008408);
  dispatch_resume(v13);
  v14 = +[NSMutableDictionary dictionary];
  v15 = qword_10000C788;
  qword_10000C788 = v14;

  v16 = +[NSMutableDictionary dictionary];
  v17 = qword_10000C790;
  qword_10000C790 = v16;

  v18 = +[NSMutableDictionary dictionary];
  v19 = qword_10000C798;
  qword_10000C798 = v18;

  v20 = dispatch_queue_create("com.apple.mobile.notification_proxy_observer_queue", 0);
  v21 = qword_10000C770;
  qword_10000C770 = v20;

  v22 = dispatch_queue_create_with_target_V2(label, &_dispatch_queue_attr_concurrent, &_dispatch_main_q);
  if (!v22)
  {
    v26 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to create queue.", buf, 2u);
    }

LABEL_10:
    exit(1);
  }

  v23 = v22;
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_1000038B4();
  }

  lockdown_checkin_xpc();
  CFRunLoopRun();

  return 0;
}

void sub_1000024F8(id a1)
{
  v1 = qword_10000C768;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Got SIGTERM, exiting now.\n", v2, 2u);
  }

  exit(0);
}

void sub_100002554(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_remote_connection)
  {
    v8 = v2;
    v9 = [[MNPRemoteServiceConnection alloc] initWithConnection:v8];

    [(MNPRemoteServiceConnection *)v9 listen];
    goto LABEL_11;
  }

  type = xpc_get_type(v2);
  v4 = xpc_copy_description(v2);
  v5 = qword_10000C768;
  v6 = os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT);
  if (type == &_xpc_type_error)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v10 = 136446210;
    v11 = v4;
    v7 = "Error in remote service listener: %{public}s";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v10 = 136446210;
    v11 = v4;
    v7 = "Unexpected event in remote service listener: %{public}s";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
LABEL_9:
  if (v4)
  {
    free(v4);
  }

LABEL_11:
}

void sub_1000026B4(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v3 = [[MNPLockdownConnection alloc] initWithConnection:a2];
  [(MNPLockdownConnection *)v3 listen];
}

void sub_10000270C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"Name"];
  if (!v2)
  {
    v12 = qword_10000C768;
    if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v13 = *(a1 + 40);
    *buf = 138412290;
    v57 = v13;
    v14 = "%@ - No name in observe notification command";
    v15 = v12;
    v16 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_41;
  }

  v3 = &NSObject__properties;
  if (qword_10000C778 && ([qword_10000C778 containsObject:v2] & 1) == 0)
  {
    v17 = qword_10000C768;
    if (!os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v18 = *(a1 + 40);
    *buf = 138412546;
    v57 = v18;
    v58 = 2112;
    v59 = v2;
    v14 = "%@ - Notification '%@' is not on the allowed list";
    v15 = v17;
    v16 = 22;
    goto LABEL_16;
  }

  v4 = qword_10000C768;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v57 = v5;
    v58 = 2112;
    v59 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ - Got OBSERVE_NOTIFICATION command for notification: %@", buf, 0x16u);
  }

  v6 = [qword_10000C780 objectForKeyedSubscript:v2];
  if (!v6)
  {
    v19 = [qword_10000C788 objectForKeyedSubscript:v2];
    if (v19)
    {
      v7 = v19;
      [v19 addObject:*(a1 + 40)];
    }

    else
    {
      v7 = [NSMutableSet setWithObject:*(a1 + 40)];
      [qword_10000C788 setObject:v7 forKeyedSubscript:v2];
      out_token = 0;
      v34 = [v2 UTF8String];
      v35 = qword_10000C770;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100002F7C;
      handler[3] = &unk_1000084D8;
      v36 = v2;
      v45 = v36;
      v37 = notify_register_dispatch(v34, &out_token, v35, handler);
      if (v37)
      {
        v38 = v37;
        v39 = qword_10000C768;
        if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 40);
          *buf = 138412546;
          v57 = v40;
          v58 = 1024;
          LODWORD(v59) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@ - Failed to register for notification (%u)", buf, 0x12u);
        }

        goto LABEL_40;
      }

      v43 = [NSNumber numberWithInt:out_token];
      [qword_10000C798 setObject:v43 forKeyedSubscript:v36];
    }

    v20 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      *buf = 138412546;
      v57 = v21;
      v58 = 2112;
      v59 = v2;
      v22 = "%@ - Watching for bsd notification %@";
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, 0x16u);
    }

LABEL_40:

    goto LABEL_41;
  }

  v7 = v6;
  v8 = [qword_10000C790 objectForKeyedSubscript:v6];
  if (!v8)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = [qword_10000C780 allKeysForObject:v7];
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v52;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v51 + 1) + 8 * i);
          if ([v31 isEqualToString:v2])
          {
            v32 = v31;

            v28 = v32;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v27);

      v3 = &NSObject__properties;
      if (v28)
      {
        v9 = [NSMutableSet setWithObject:*(a1 + 40)];
        [qword_10000C790 setObject:v9 forKeyedSubscript:v7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100002D08;
        block[3] = &unk_1000084B0;
        v48 = *(a1 + 40);
        v49 = v7;
        v50 = v28;
        v33 = v28;
        dispatch_sync(&_dispatch_main_q, block);

        goto LABEL_9;
      }
    }

    else
    {
    }

    v41 = v3[237];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 40);
      *buf = 138412546;
      v57 = v42;
      v58 = 2112;
      v59 = v2;
      v22 = "%@ - Couldn't find key for %@, not registering notification";
      v23 = v41;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v9 = v8;
  [v8 addObject:*(a1 + 40)];
LABEL_9:
  v10 = v3[237];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    *buf = 138412546;
    v57 = v11;
    v58 = 2112;
    v59 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ - Watching for NSNotification %@", buf, 0x16u);
  }

LABEL_41:
}

void sub_100002D08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  v4 = qword_10000C768;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ - Registering for %@", &v7, 0x16u);
  }

  CFNotificationCenterAddObserver(DistributedCenter, *(a1 + 48), sub_100002DFC, *(a1 + 40), 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  objc_autoreleasePoolPop(v2);
}

void sub_100002DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [[NSString alloc] initWithString:a2];
  v8 = [[NSString alloc] initWithString:a3];
  v9 = qword_10000C768;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = a3;
    v18 = 2112;
    v19 = a5;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Distributed Notification: %@, user info: %@, bsdName %@", buf, 0x20u);
  }

  v10 = qword_10000C770;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000031EC;
  v13[3] = &unk_100008328;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_100002F7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [qword_10000C788 objectForKeyedSubscript:v1];
  sub_100002FDC(v1, v2);
}

void sub_100002FDC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(qword_10000C770);
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_100003928();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = qword_10000C768;
  if (v4)
  {
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
    {
      sub_10000399C(v6, v4, v3);
    }

    v18[0] = @"Command";
    v18[1] = @"Name";
    v19[0] = @"RelayNotification";
    v19[1] = v3;
    v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) sendMessage:{v7, v13}];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  else if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No listeners for %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000031EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [qword_10000C790 objectForKeyedSubscript:*(a1 + 40)];
  sub_100002FDC(v1, v2);
}

void sub_10000324C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_10000C788;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003568;
  v8[3] = &unk_100008500;
  v9 = v2;
  sub_10000334C(v9, v3, v8);
  v4 = *(a1 + 32);
  v5 = qword_10000C790;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003694;
  v6[3] = &unk_100008500;
  v7 = v4;
  sub_10000334C(v7, v5, v6);
}

void sub_10000334C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v19;
    *&v9 = 138412546;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:{v14, v17}];
        if ([v15 containsObject:v5])
        {
          v16 = qword_10000C768;
          if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v5;
            v24 = 2112;
            v25 = v14;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ - removing notification %@", buf, 0x16u);
          }

          [v15 removeObject:v5];
          if (![v15 count])
          {
            v7[2](v7, v14);
            if (v11)
            {
              [v11 addObject:v14];
            }

            else
            {
              v11 = [NSMutableArray arrayWithObject:v14];
            }
          }
        }
      }

      v10 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
    if (v11)
    {
      [v6 removeObjectsForKeys:v11];
    }
  }
}

void sub_100003568(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_100003A50(a1);
  }

  v4 = [qword_10000C798 objectForKeyedSubscript:v3];
  v5 = notify_cancel([v4 intValue]);
  if (v5)
  {
    v6 = v5;
    v7 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ - Failed to cancel notification with status: %u", &v9, 0x12u);
    }
  }

  [qword_10000C798 removeObjectForKey:v3];
}

void sub_100003694(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEBUG))
  {
    sub_100003AC0(a1);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, 0, v3, 0);
}

void sub_10000371C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100003748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003708();
  sub_10000371C(&_mh_execute_header, v4, v5, "  Sent the notification %@ to the host via connection: %@");
}

void sub_1000037BC(uint64_t *a1)
{
  v6 = *a1;
  sub_10000373C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000399C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = 134218242;
  v7 = [a2 count];
  v8 = 2112;
  v9 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%ld watchers for %@", &v6, 0x16u);
}

void sub_100003A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100003708();
  sub_10000371C(&_mh_execute_header, v2, v3, "%@ - no more watchers for BSDNote %@, cancelling notification");
}

void sub_100003AC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100003708();
  sub_10000371C(&_mh_execute_header, v2, v3, "%@ - no more watchers for NSNote %@, removing observer");
}