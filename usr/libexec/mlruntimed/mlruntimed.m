void sub_100000F18()
{
  v0 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_100003128(v0);
  }

  signal(15, 1);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  v2 = qword_10000CE20;
  qword_10000CE20 = v1;

  dispatch_source_set_event_handler(qword_10000CE20, &stru_1000083E8);
  dispatch_activate(qword_10000CE20);
}

void sub_100000FB0(id a1)
{
  v1 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000316C(v1);
  }

  xpc_transaction_exit_clean();
}

void start()
{
  if (_set_user_dir_suffix())
  {
    v0 = NSTemporaryDirectory();
    v1 = objc_autoreleasePoolPush();
    v2 = objc_opt_new();
    [v2 registerIfNeeded];
    v3 = [[MLRListenerDelegate alloc] initWithXPCActivityManager:v2];
    v4 = [NSXPCListener alloc];
    v5 = [v4 initWithMachServiceName:DESFullServiceName];
    [v5 setDelegate:v3];
    [v5 resume];
    if (v2 && v3 && v5)
    {
      sub_100000F18();
      objc_autoreleasePoolPop(v1);
      dispatch_main();
    }

    v8 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 134218496;
      v10 = v2;
      v11 = 2048;
      v12 = v3;
      v13 = 2048;
      v14 = v5;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Fail to allocate activityManager=%p, listenerDelegate=%p, listener=%p", &v9, 0x20u);
    }
  }

  else
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = *__error();
      v9 = 67109120;
      LODWORD(v10) = v7;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed™: %{darwin.errno}d", &v9, 8u);
    }
  }

  exit(1);
}

void sub_1000019C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _xpcConnection];
    v5 = xpc_connection_copy_invalidation_reason();
  }

  else
  {
    v5 = 0;
  }

  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2082;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ invalidated, reason: %{public}s", &v8, 0x16u);
  }

  if (v5)
  {
    free(v5);
  }

  [v3 invalidate];
}

void sub_100001DB4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "start donating result=%@, identifier=%@", &v3, 0x16u);
}

void sub_100002554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100002590(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained shouldDeferForXPCActivity:v3])
    {
      [v5 handleDeferActivityTask:*(a1 + 32) withStartTime:*(a1 + 48)];
    }
  }

  else
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100002D68(v6);
    }
  }
}

void sub_100002914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) getStateForForXPCActivity:v3];
  if (!v4)
  {
    v7 = *(a1 + 32);
    v6 = [*(a1 + 40) criteria];
    [v7 setCriteriaForXPCActivityIfNeeded:v3 criteria:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v5 = [*(a1 + 40) activity];

    if (!v5)
    {
      [*(a1 + 40) setActivity:v3];
      [*(a1 + 32) runActivityTask:*(a1 + 40)];
      goto LABEL_8;
    }

    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100002DAC(v6);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_100002DF0(_xpc_activity_s *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  state = xpc_activity_get_state(a1);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to set activity state to %ld. Current state = %lu.", &v4, 0x16u);
}