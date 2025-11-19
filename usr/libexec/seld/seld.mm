void sub_100006834(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Error %{public}@", v8, ClassName, Name, 816, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 816;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error %{public}@", buf, 0x2Cu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100006B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Error %{public}@", v8, ClassName, Name, 869, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 869;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error %{public}@", buf, 0x2Cu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100006E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Error %{public}@", v8, ClassName, Name, 893, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 893;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error %{public}@", buf, 0x2Cu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_100007B68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i reader session started", v11, ClassName, Name, 926);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v31 = v14;
    v32 = 2082;
    v33 = v15;
    v34 = 2082;
    v35 = v16;
    v36 = 1024;
    v37 = 926;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i reader session started", buf, 0x22u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(*(a1 + 32));
      v20 = class_isMetaClass(v19);
      v27 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 48));
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i %{public}@", v21, v27, v29, 930, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(*(a1 + 32));
      v26 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v31 = v24;
      v32 = 2082;
      v33 = v25;
      v34 = 2082;
      v35 = v26;
      v36 = 1024;
      v37 = 930;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 104));
}

void sub_10000F0FC(void *a1, int a2, double a3)
{
  if (a1)
  {
    v6 = [a1 redirectState];
    v7 = [v6 performanceMetrics];
    [v7 totalNetworkResponseTime];
    [v7 setTotalNetworkResponseTime:v8 + a3];

    v9 = [a1 redirectState];
    v10 = [v9 performanceMetrics];
    [v10 maxNetworkResponseTime];
    v12 = v11;

    if (v12 < a3)
    {
      v13 = [a1 redirectState];
      v14 = [v13 performanceMetrics];
      [v14 setMaxNetworkResponseTime:a3];

      v15 = [a1 redirectState];
      v16 = [v15 performanceMetrics];
      v17 = [v16 totalResponsesWithBody];
      v18 = [a1 redirectState];
      v19 = [v18 performanceMetrics];
      [v19 setTransferWithMaxResponseTime:v17];
    }

    if (a2)
    {
      v21 = [a1 redirectState];
      v20 = [v21 performanceMetrics];
      [v20 setTotalResponsesWithBody:{objc_msgSend(v20, "totalResponsesWithBody") + 1}];
    }
  }
}

void sub_100010298(_DWORD *a1, uint64_t a2)
{
  v3 = a1[9];
  if (v3 > 15)
  {
    if (v3 > 64)
    {
      if (v3 == 65)
      {
        v4 = [a1 redirectState];
        v5 = @"AIDNotFound";
        goto LABEL_26;
      }

      if (v3 != 66)
      {
        goto LABEL_16;
      }
    }

    else if (v3 != 16)
    {
      if (v3 == 28)
      {
        v4 = [a1 redirectState];
        v5 = @"CardNotFound";
LABEL_26:
        v22 = v4;
        [v4 setIncompleteReason:v5];
LABEL_27:

        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    v4 = [a1 redirectState];
    v5 = @"ScriptExecutionError";
    goto LABEL_26;
  }

  if (v3 == 9)
  {
    goto LABEL_15;
  }

  if (v3 == 13 || v3 == 15)
  {
    v4 = [a1 redirectState];
    v5 = @"SEAccessError";
    goto LABEL_26;
  }

LABEL_16:
  if (a2 == 16 || v3 == 7)
  {
    v7 = [[NSString alloc] initWithFormat:@"%@(reason=%ld)", @"Cancel", 5];
    goto LABEL_31;
  }

  if (a2 != 1 && v3 != 3)
  {
    if (a2 <= 2)
    {
      if (!a2)
      {
        return;
      }

      if (a2 == 2)
      {
        v4 = [a1 redirectState];
        v5 = @"NetworkUnavailable";
        goto LABEL_26;
      }
    }

    else
    {
      if (a2 == 3 || a2 == 8)
      {
        return;
      }

      if (a2 == 15)
      {
        v4 = [a1 redirectState];
        v5 = @"NetworkError";
        goto LABEL_26;
      }
    }

    v7 = [[NSString alloc] initWithFormat:@"Unknown error:%d", a1[9], v20];
LABEL_31:
    v22 = v7;
    v8 = [a1 redirectState];
    [v8 setIncompleteReason:v22];

    goto LABEL_27;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_processRedirectInProgressResult:");
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i connection aborted", v14, ClassName, Name, 510);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(a1);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    *buf = 67109890;
    v24 = v17;
    v25 = 2082;
    v26 = object_getClassName(a1);
    v27 = 2082;
    v28 = sel_getName("_processRedirectInProgressResult:");
    v29 = 1024;
    v30 = 510;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i connection aborted", buf, 0x22u);
  }

  v18 = [[NSString alloc] initWithFormat:@"%@(reason=%d)", @"Cancel", objc_msgSend(a1, "abortedReason")];
  v19 = [a1 redirectState];
  [v19 setIncompleteReason:v18];
}

void sub_100012094(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i %{public}@", v12, ClassName, Name, 697, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 2082;
      v25 = v17;
      v26 = 1024;
      v27 = 697;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  else if (([*(a1 + 32) aborted] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  for (i = 0; i != 5; ++i)
  {
    v2 = dword_100040898[i];
    signal(dword_100040898[i], 1);
    v3 = dispatch_source_create(&_dispatch_source_type_signal, v2, 0, 0);
    v4 = qword_10005BA50[i];
    qword_10005BA50[i] = v3;

    dispatch_set_context(qword_10005BA50[i], v2);
    dispatch_source_set_event_handler_f(qword_10005BA50[i], sub_10001477C);
    dispatch_resume(qword_10005BA50[i]);
  }

  [NSError _setFileNameLocalizationEnabled:0];
  NFSetThreadPriority();
  v5 = objc_alloc_init(NFPreferenceObserver);
  [v5 start:&stru_1000547E0];
  v6 = sub_100016628();
  sub_100019B74(v6);

  objc_autoreleasePoolPop(v0);
  do
  {
    v7 = objc_autoreleasePoolPush();
    CFRunLoopGetCurrent();
    v8 = CFRunLoopRunSpecific();
    objc_autoreleasePoolPop(v7);
  }

  while ((v8 - 3) < 0xFFFFFFFE);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Exiting", "main", 141);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "main";
    v14 = 1024;
    v15 = 141;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Exiting", buf, 0x12u);
  }

  return 0;
}

void sub_10001477C(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i Received signal: %lu", "signalHandler", 87, a1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "signalHandler";
    v8 = 1024;
    v9 = 87;
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Received signal: %lu", buf, 0x1Cu);
  }

  v4 = sub_100016628();
  sub_10001A3F4(v4);

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

void sub_1000148B0(id a1)
{
  v1 = sub_100016628();
  sub_10001B738(v1);
}

id sub_10001549C(uint64_t a1)
{
  [*(a1 + 128) lock];
  v2 = *(a1 + 120);
  *(a1 + 120) = v2 + 1;
  if (!v2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_keepAliveTransactionRetain");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(5, "%c[%{public}s %{public}s]:%i creating SELD keep alive transaction", v8, ClassName, Name, 818);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67109890;
      v29 = v11;
      v30 = 2082;
      v31 = object_getClassName(a1);
      v32 = 2082;
      v33 = sel_getName("_keepAliveTransactionRetain");
      v34 = 1024;
      v35 = 818;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i creating SELD keep alive transaction", buf, 0x22u);
    }

    if (*(a1 + 112))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(a1);
        v18 = class_isMetaClass(v17);
        v25 = object_getClassName(a1);
        v27 = sel_getName("_keepAliveTransactionRetain");
        v19 = 45;
        if (v18)
        {
          v19 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v19, v25, v27, 819, "_keepAliveTransaction == ((void*)0)");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = object_getClass(a1);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        v23 = object_getClassName(a1);
        v24 = sel_getName("_keepAliveTransactionRetain");
        *buf = 67110146;
        v29 = v22;
        v30 = 2082;
        v31 = v23;
        v32 = 2082;
        v33 = v24;
        v34 = 1024;
        v35 = 819;
        v36 = 2080;
        v37 = "_keepAliveTransaction == ((void*)0)";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FAILED: %s", buf, 0x2Cu);
      }

      abort();
    }

    v12 = os_transaction_create();
    v13 = *(a1 + 112);
    *(a1 + 112) = v12;
  }

  return [*(a1 + 128) unlock];
}

void sub_100015794(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "_NFRemoteAdminManager NotifyBatteryChange", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[155] == 1)
    {
      sub_100016008(WeakRetained);
      if ((v4[155] & 1) == 0)
      {
        sub_100015830(v4);
      }
    }
  }
}

void sub_100015830(atomic_uchar *a1)
{
  if (a1)
  {
    v2 = atomic_exchange(a1 + 154, 1u);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v4 = Logger;
    if (v2)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_queueStartNextSession");
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v4(6, "%c[%{public}s %{public}s]:%i _startNextSession is already in queued up.", v8, ClassName, Name, 2331);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = object_getClass(a1);
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        *buf = 67109890;
        v23 = v11;
        v24 = 2082;
        v25 = object_getClassName(a1);
        v26 = 2082;
        v27 = sel_getName("_queueStartNextSession");
        v28 = 1024;
        v29 = 2331;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i _startNextSession is already in queued up.", buf, 0x22u);
      }
    }

    else
    {
      if (Logger)
      {
        v12 = object_getClass(a1);
        v13 = class_isMetaClass(v12);
        v14 = object_getClassName(a1);
        v20 = sel_getName("_queueStartNextSession");
        v15 = 45;
        if (v13)
        {
          v15 = 43;
        }

        v4(6, "%c[%{public}s %{public}s]:%i Adding _startNextSession to SessionQueue.", v15, v14, v20, 2326);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = object_getClass(a1);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v23 = v18;
        v24 = 2082;
        v25 = object_getClassName(a1);
        v26 = 2082;
        v27 = sel_getName("_queueStartNextSession");
        v28 = 1024;
        v29 = 2326;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding _startNextSession to SessionQueue.", buf, 0x22u);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002BE98;
      v21[3] = &unk_100054930;
      v21[4] = a1;
      sub_1000198F4(a1, v21);
    }
  }
}

void sub_100015B20(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "_NFRemoteAdminManager NotifyAdapterChange", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(WeakRetained);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(WeakRetained);
    Name = sel_getName(*(a1 + 40));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Charging state changed", v9, ClassName, Name, 178);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(WeakRetained);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(WeakRetained);
    v14 = sel_getName(*(a1 + 40));
    *state = 67109890;
    *&state[4] = v12;
    *&state[8] = 2082;
    *&state[10] = v13;
    v17 = 2082;
    v18 = v14;
    v19 = 1024;
    v20 = 178;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Charging state changed", state, 0x22u);
  }

  if (WeakRetained)
  {
    if (WeakRetained[155] == 1)
    {
      sub_100016008(WeakRetained);
      if ((WeakRetained[155] & 1) == 0)
      {
        sub_100015830(WeakRetained);
      }
    }
  }
}

id *sub_100015D10(id *result)
{
  if (result)
  {
    v1 = result;
    [result[16] lock];
    v2 = v1[15];
    if (v2 <= 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v15 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_keepAliveTransactionRelease");
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v18, ClassName, Name, 829, "_keepAliveTransactionCount > 0");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = object_getClass(v1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        *buf = 67110146;
        v26 = v21;
        v27 = 2082;
        v28 = object_getClassName(v1);
        v29 = 2082;
        v30 = sel_getName("_keepAliveTransactionRelease");
        v31 = 1024;
        v32 = 829;
        v33 = 2080;
        v34 = "_keepAliveTransactionCount > 0";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FAILED: %s", buf, 0x2Cu);
      }

      abort();
    }

    v3 = v2 - 1;
    v1[15] = v3;
    if (!v3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v4 = NFLogGetLogger();
      if (v4)
      {
        v5 = v4;
        v6 = object_getClass(v1);
        v7 = class_isMetaClass(v6);
        v8 = object_getClassName(v1);
        v23 = sel_getName("_keepAliveTransactionRelease");
        v9 = 45;
        if (v7)
        {
          v9 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i releasing SELD keep alive transaction", v9, v8, v23, 832);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = object_getClass(v1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        *buf = 67109890;
        v26 = v12;
        v27 = 2082;
        v28 = object_getClassName(v1);
        v29 = 2082;
        v30 = sel_getName("_keepAliveTransactionRelease");
        v31 = 1024;
        v32 = 832;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i releasing SELD keep alive transaction", buf, 0x22u);
      }

      v13 = v1[14];
      v1[14] = 0;
    }

    return [v1[16] unlock];
  }

  return result;
}

void sub_100016008(uint64_t a1)
{
  if (!a1 || (NFProductIsDevBoard() & 1) != 0 || IOPSGetPercentRemaining())
  {
    return;
  }

  *(a1 + 155) = 0;
  v2 = _os_activity_create(&_mh_execute_header, "stopListeningForBatteryChanges", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  v3 = *(a1 + 156);
  if (v3 == -1)
  {
    v5 = (a1 + 160);
    v4 = *(a1 + 160);
    if (v4 == -1)
    {
      return;
    }
  }

  else
  {
    notify_cancel(v3);
    v5 = (a1 + 160);
    v4 = *(a1 + 160);
    *(a1 + 156) = -1;
    if (v4 == -1)
    {
      goto LABEL_9;
    }
  }

  notify_cancel(v4);
  *v5 = -1;
LABEL_9:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("stopListeningForBatteryChanges");
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Stopped listening for battery notifications", v11, ClassName, Name, 209);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(a1);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(a1);
    v16 = sel_getName("stopListeningForBatteryChanges");
    *state = 67109890;
    *&state[4] = v14;
    *&state[8] = 2082;
    *&state[10] = v15;
    v19 = 2082;
    v20 = v16;
    v21 = 1024;
    v22 = 209;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stopped listening for battery notifications", state, 0x22u);
  }

  sub_100015D10(a1);
}

id sub_100016628()
{
  objc_opt_self();
  if (qword_10005BA88 != -1)
  {
    dispatch_once(&qword_10005BA88, &stru_100054850);
  }

  v0 = qword_10005BA80;

  return v0;
}

void sub_100016680(id a1)
{
  qword_10005BA80 = objc_alloc_init(_NFRemoteAdminManager);

  _objc_release_x1();
}

void sub_100017328(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    switch(a3)
    {
      case 1:
        v7 = "WiFi";
        break;
      case 2:
        v7 = "Cellular";
        break;
      case 4:
        v7 = "Wired";
        break;
      case 8:
        v7 = "Other";
        break;
      default:
        v7 = "Unknown";
        break;
    }

    status = nw_path_get_status(v5);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v10 = Logger;
    if (status == nw_path_status_satisfied)
    {
      if (Logger)
      {
        Class = object_getClass(WeakRetained);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(WeakRetained);
        Name = sel_getName(*(a1 + 40));
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i %s is enabled", v13, ClassName, Name, 347, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(WeakRetained);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(WeakRetained);
        v18 = sel_getName(*(a1 + 40));
        *buf = 67110146;
        v57 = v16;
        v58 = 2082;
        v59 = v17;
        v60 = 2082;
        v61 = v18;
        v62 = 1024;
        v63 = 347;
        v64 = 2080;
        v65 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s is enabled", buf, 0x2Cu);
      }

      if (nw_path_is_constrained(v5))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v20 = v19;
          v21 = object_getClass(WeakRetained);
          v22 = class_isMetaClass(v21);
          v49 = object_getClassName(WeakRetained);
          v53 = sel_getName(*(a1 + 40));
          v23 = 45;
          if (v22)
          {
            v23 = 43;
          }

          v20(6, "%c[%{public}s %{public}s]:%i %s network is constrained", v23, v49, v53, 350, v7);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = object_getClass(WeakRetained);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          v27 = object_getClassName(WeakRetained);
          v28 = sel_getName(*(a1 + 40));
          *buf = 67110146;
          v57 = v26;
          v58 = 2082;
          v59 = v27;
          v60 = 2082;
          v61 = v28;
          v62 = 1024;
          v63 = 350;
          v64 = 2080;
          v65 = v7;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s network is constrained", buf, 0x2Cu);
        }
      }

      if (nw_path_is_expensive(v5))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v30 = v29;
          v31 = object_getClass(WeakRetained);
          v32 = class_isMetaClass(v31);
          v50 = object_getClassName(WeakRetained);
          v54 = sel_getName(*(a1 + 40));
          v33 = 45;
          if (v32)
          {
            v33 = 43;
          }

          v30(6, "%c[%{public}s %{public}s]:%i %s network is expensive", v33, v50, v54, 354, v7);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = object_getClass(WeakRetained);
          if (class_isMetaClass(v35))
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          v37 = object_getClassName(WeakRetained);
          v38 = sel_getName(*(a1 + 40));
          *buf = 67110146;
          v57 = v36;
          v58 = 2082;
          v59 = v37;
          v60 = 2082;
          v61 = v38;
          v62 = 1024;
          v63 = 354;
          v64 = 2080;
          v65 = v7;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s network is expensive", buf, 0x2Cu);
        }
      }

      v39 = WeakRetained[27];
      WeakRetained[27] = v39 | a3;
      if ((v39 & a3) == 0)
      {
        sub_100015830(WeakRetained);
      }
    }

    else
    {
      if (Logger)
      {
        v40 = object_getClass(WeakRetained);
        v41 = class_isMetaClass(v40);
        v51 = object_getClassName(WeakRetained);
        v55 = sel_getName(*(a1 + 40));
        v42 = 45;
        if (v41)
        {
          v42 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i %s is disabled", v42, v51, v55, 366, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = object_getClass(WeakRetained);
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        v46 = object_getClassName(WeakRetained);
        v47 = sel_getName(*(a1 + 40));
        *buf = 67110146;
        v57 = v45;
        v58 = 2082;
        v59 = v46;
        v60 = 2082;
        v61 = v47;
        v62 = 1024;
        v63 = 366;
        v64 = 2080;
        v65 = v7;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s is disabled", buf, 0x2Cu);
      }

      WeakRetained[27] &= ~a3;
    }
  }
}

void sub_1000178E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&_mh_execute_header, "wifiMonitorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  (*(*(a1 + 32) + 16))();
}

void sub_100017974(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&_mh_execute_header, "cellularMonitorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  (*(*(a1 + 32) + 16))();
}

void sub_100017A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&_mh_execute_header, "wiredMonitorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  (*(*(a1 + 32) + 16))();
}

void sub_100017A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&_mh_execute_header, "otherMonitorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  (*(*(a1 + 32) + 16))();
}

void sub_100017B24(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.seld.apsInitTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(WeakRetained);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(WeakRetained);
    Name = sel_getName(*(a1 + 40));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i Timeout waiting for APS, initializing APS anyways.", v9, ClassName, Name, 423);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(WeakRetained);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(WeakRetained);
    v14 = sel_getName(*(a1 + 40));
    *state = 67109890;
    *&state[4] = v12;
    *&state[8] = 2082;
    *&state[10] = v13;
    v17 = 2082;
    v18 = v14;
    v19 = 1024;
    v20 = 423;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout waiting for APS, initializing APS anyways.", state, 0x22u);
  }

  sub_100017CF4(WeakRetained);
}

void sub_100017CF4(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = _os_activity_create(&_mh_execute_header, "initAPSCompletionHandler", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  v3 = a1;
  objc_sync_enter(v3);
  v4 = *(v3 + 56);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v6 = Logger;
  if (v4 == 1)
  {
    if (Logger)
    {
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("initAPSCompletionHandler");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i APS has initialized", v10, ClassName, Name, 454);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v12 = object_getClass(v3);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(v3);
    v15 = sel_getName("initAPSCompletionHandler");
    *state = 67109890;
    *&state[4] = v13;
    *&state[8] = 2082;
    *&state[10] = v14;
    v55 = 2082;
    v56 = v15;
    v57 = 1024;
    v58 = 454;
    v16 = "%c[%{public}s %{public}s]:%i APS has initialized";
    v17 = v11;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_41;
  }

  if (Logger)
  {
    v19 = object_getClass(v3);
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(v3);
    v51 = sel_getName("initAPSCompletionHandler");
    v22 = 45;
    if (v20)
    {
      v22 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Initializing APS", v22, v21, v51, 458);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(v3);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(v3);
    v27 = sel_getName("initAPSCompletionHandler");
    *state = 67109890;
    *&state[4] = v25;
    *&state[8] = 2082;
    *&state[10] = v26;
    v55 = 2082;
    v56 = v27;
    v57 = 1024;
    v58 = 458;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Initializing APS", state, 0x22u);
  }

  *(v3 + 56) = 1;
  [v3[8] stopTimer];
  v28 = v3[8];
  v3[8] = 0;

  v29 = *(v3 + 8);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFLogGetLogger();
  v31 = v30;
  if (v29 == 1)
  {
    if (v30)
    {
      v32 = object_getClass(v3);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(v3);
      v52 = sel_getName("initAPSCompletionHandler");
      v35 = 45;
      if (v33)
      {
        v35 = 43;
      }

      v31(6, "%c[%{public}s %{public}s]:%i Runnning through delayed XPCs", v35, v34, v52, 464);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = object_getClass(v3);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      v39 = object_getClassName(v3);
      v40 = sel_getName("initAPSCompletionHandler");
      *state = 67109890;
      *&state[4] = v38;
      *&state[8] = 2082;
      *&state[10] = v39;
      v55 = 2082;
      v56 = v40;
      v57 = 1024;
      v58 = 464;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Runnning through delayed XPCs", state, 0x22u);
    }

    [v3[21] enumerateObjectsUsingBlock:&stru_100054908];
    [v3[21] removeAllObjects];
    v41 = 0;
    goto LABEL_43;
  }

  if (v30)
  {
    v42 = object_getClass(v3);
    v43 = class_isMetaClass(v42);
    v44 = object_getClassName(v3);
    v53 = sel_getName("initAPSCompletionHandler");
    v45 = 45;
    if (v43)
    {
      v45 = 43;
    }

    v31(4, "%c[%{public}s %{public}s]:%i Skipped delayXPCs processing.", v45, v44, v53, 472);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v46 = object_getClass(v3);
    if (class_isMetaClass(v46))
    {
      v47 = 43;
    }

    else
    {
      v47 = 45;
    }

    v48 = object_getClassName(v3);
    v49 = sel_getName("initAPSCompletionHandler");
    *state = 67109890;
    *&state[4] = v47;
    *&state[8] = 2082;
    *&state[10] = v48;
    v55 = 2082;
    v56 = v49;
    v57 = 1024;
    v58 = 472;
    v16 = "%c[%{public}s %{public}s]:%i Skipped delayXPCs processing.";
    v17 = v11;
    v18 = OS_LOG_TYPE_ERROR;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v17, v18, v16, state, 0x22u);
  }

LABEL_42:

  v41 = 1;
LABEL_43:
  objc_sync_exit(v3);

  if ((v41 & 1) == 0 && (v4 & 1) == 0)
  {
    sub_100015830(v3);
  }
}

void sub_100018248(void **a1)
{
  v45 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = sub_1000355D0(a1[3]);
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v45 addObject:v8];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v10 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("_subscribeToPushTopics");
            v13 = 45;
            if (isMetaClass)
            {
              v13 = 43;
            }

            v10(4, "%c[%{public}s %{public}s]:%i Discarding invalid entry (%{public}@) in registration dictionary", v13, ClassName, Name, 2039, v8);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v14 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = object_getClass(a1);
            if (class_isMetaClass(v15))
            {
              v16 = 43;
            }

            else
            {
              v16 = 45;
            }

            v17 = object_getClassName(a1);
            v18 = sel_getName("_subscribeToPushTopics");
            *buf = 67110146;
            v51 = v16;
            v52 = 2082;
            v53 = v17;
            v54 = 2082;
            v55 = v18;
            v56 = 1024;
            v57 = 2039;
            v58 = 2114;
            v59 = v8;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Discarding invalid entry (%{public}@) in registration dictionary", buf, 0x2Cu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v5);
  }

  if (![v45 count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(a1);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(a1);
      v43 = sel_getName("_subscribeToPushTopics");
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i No push topics registered, setting fake topic", v24, v23, v43, 2045);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(a1);
      v29 = sel_getName("_subscribeToPushTopics");
      *buf = 67109890;
      v51 = v27;
      v52 = 2082;
      v53 = v28;
      v54 = 2082;
      v55 = v29;
      v56 = 1024;
      v57 = 2045;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No push topics registered, setting fake topic", buf, 0x22u);
    }

    [v45 addObject:@"com.apple.seld.fake"];
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v31 = v30;
    v32 = object_getClass(a1);
    v33 = class_isMetaClass(v32);
    v41 = object_getClassName(a1);
    v44 = sel_getName("_subscribeToPushTopics");
    v34 = 45;
    if (v33)
    {
      v34 = 43;
    }

    v31(6, "%c[%{public}s %{public}s]:%i Subscribing to push topics: %{public}@", v34, v41, v44, 2049, v45);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = object_getClass(a1);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(a1);
    v39 = sel_getName("_subscribeToPushTopics");
    *buf = 67110146;
    v51 = v37;
    v52 = 2082;
    v53 = v38;
    v54 = 2082;
    v55 = v39;
    v56 = 1024;
    v57 = 2049;
    v58 = 2114;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Subscribing to push topics: %{public}@", buf, 0x2Cu);
  }

  [a1[6] _setEnabledTopics:v45];
}

id sub_100018770(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v4 setLocale:v5];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss z"];
    v18[0] = @"APNClientConnected";
    v6 = [*(a1 + 48) isConnected];
    v7 = &off_100057390;
    if (v6)
    {
      v7 = &off_100057378;
    }

    v19[0] = v7;
    v18[1] = @"APNTopicsRegistered";
    v8 = [*(a1 + 48) enabledTopics];
    if (v8)
    {
      v9 = [*(a1 + 48) enabledTopics];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }

    v19[1] = v9;
    v18[2] = @"CheckIn";
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = @"manual";
    }

    v16[0] = @"Reason";
    v16[1] = @"PushRxTime";
    v17[0] = v10;
    v11 = +[NSDate date];
    v12 = [v4 stringFromDate:v11];
    v17[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

    if (v8)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100018A60(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 153) = 1;
    sub_100018C20(a1);
    sub_100018CC8(a1, 0.0);
    sub_100018DA4(a1, "com.apple.seld.alarm");
    sub_100018DA4(a1, "com.apple.seld.processing");
    sub_100018DA4(a1, "com.apple.seld.osupdate");
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000190CC;
    handler[3] = &unk_100054958;
    handler[4] = a1;
    handler[5] = "_NFLoadSuccess";
    xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, handler);
    v2 = *(a1 + 104);
    *(a1 + 144) = os_state_add_handler();
    nw_path_monitor_start(*(a1 + 184));
    nw_path_monitor_start(*(a1 + 192));
    nw_path_monitor_start(*(a1 + 200));
    nw_path_monitor_start(*(a1 + 208));
    sub_100015830(a1);
    *(a1 + 8) = 1;
    v3 = *(a1 + 176);
    *(a1 + 176) = 0;
  }
}

void sub_100018BD8(void *a1)
{
  if (a1)
  {
    v2 = a1[22];
    a1[22] = 0;

    sub_100018C20(a1);
  }
}

void sub_100018C20(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if (!obj[4])
    {
      v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.seld.tsmmanager"];
      v2 = obj[4];
      obj[4] = v1;

      [obj[4] setDelegate:?];
      [obj[4] _setQueue:obj[9]];
      [obj[4] resume];
    }

    objc_sync_exit(obj);
  }
}

void sub_100018CC8(uint64_t a1, double a2)
{
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001B7A0;
    v7[3] = &unk_100054A40;
    v7[4] = a1;
    v7[5] = "_initializeWhenSEManagerIsReady:";
    v4 = objc_retainBlock(v7);
    v5 = v4;
    if (a2 == 0.0)
    {
      (v4[2])(v4);
    }

    else
    {
      v6 = dispatch_time(0, (a2 * 1000000000.0));
      dispatch_after(v6, *(a1 + 72), v5);
    }
  }
}

void sub_100018DA4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSString stringWithCString:a2 encoding:4];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelNetworkActivityWithName:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Canceling activity [%@]", v8, ClassName, Name, 791, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v31 = v11;
      v32 = 2082;
      v33 = object_getClassName(a1);
      v34 = 2082;
      v35 = sel_getName("cancelNetworkActivityWithName:");
      v36 = 1024;
      v37 = 791;
      v38 = 2112;
      v39 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Canceling activity [%@]", buf, 0x2Cu);
    }

    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v29 = 0;
    v13 = [v12 cancelTaskRequestWithIdentifier:v3 error:&v29];
    v14 = v29;

    if ((v13 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(a1);
        v18 = class_isMetaClass(v17);
        v19 = object_getClassName(a1);
        v28 = sel_getName("cancelNetworkActivityWithName:");
        v20 = 45;
        if (v18)
        {
          v20 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i Error : Failed to cancel task named %@ : %@", v20, v19, v28, 793, v3, v14);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = object_getClass(a1);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        v24 = object_getClassName(a1);
        v25 = sel_getName("cancelNetworkActivityWithName:");
        *buf = 67110402;
        v31 = v23;
        v32 = 2082;
        v33 = v24;
        v34 = 2082;
        v35 = v25;
        v36 = 1024;
        v37 = 793;
        v38 = 2112;
        v39 = v3;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : Failed to cancel task named %@ : %@", buf, 0x36u);
      }
    }
  }
}

void sub_1000190CC(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v5 = Logger;
  if (string)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i notif: %s", v8, ClassName, Name, 567, string);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      *&buf[4] = v11;
      *v68 = 2082;
      *&v68[2] = v12;
      *&v68[10] = 2082;
      *&v68[12] = v13;
      *&v68[20] = 1024;
      *&v68[22] = 567;
      *&v68[26] = 2080;
      *&v68[28] = string;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i notif: %s", buf, 0x2Cu);
    }

    if (!strncmp("com.apple.nfcd.se.restricted", string, 0x1CuLL))
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v16 = v15;
          v17 = object_getClass(v14);
          v18 = class_isMetaClass(v17);
          v19 = object_getClassName(v14);
          v62 = sel_getName("restrictedModeEntered:");
          v20 = 45;
          if (v18)
          {
            v20 = 43;
          }

          v16(6, "%c[%{public}s %{public}s]:%i ", v20, v19, v62, 2055);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = object_getClass(v14);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          v24 = object_getClassName(v14);
          v25 = sel_getName("restrictedModeEntered:");
          *buf = 67109890;
          *&buf[4] = v23;
          *v68 = 2082;
          *&v68[2] = v24;
          *&v68[10] = 2082;
          *&v68[12] = v25;
          *&v68[20] = 1024;
          *&v68[22] = 2055;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
        }

        *buf = _NSConcreteStackBlock;
        *v68 = 3221225472;
        *&v68[8] = sub_10002AA40;
        *&v68[16] = &unk_100054930;
        *&v68[24] = v14;
        sub_1000198F4(v14, buf);
      }
    }

    if (!strncmp("com.apple.nfcd.se.restricted.exit", string, 0x21uLL))
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v28 = v27;
          v29 = object_getClass(v26);
          v30 = class_isMetaClass(v29);
          v31 = object_getClassName(v26);
          v63 = sel_getName("restrictedModeExited");
          v32 = 45;
          if (v30)
          {
            v32 = 43;
          }

          v28(6, "%c[%{public}s %{public}s]:%i ", v32, v31, v63, 2067);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = object_getClass(v26);
          if (class_isMetaClass(v34))
          {
            v35 = 43;
          }

          else
          {
            v35 = 45;
          }

          v36 = object_getClassName(v26);
          v37 = sel_getName("restrictedModeExited");
          *buf = 67109890;
          *&buf[4] = v35;
          *v68 = 2082;
          *&v68[2] = v36;
          *&v68[10] = 2082;
          *&v68[12] = v37;
          *&v68[20] = 1024;
          *&v68[22] = 2067;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
        }

        *buf = _NSConcreteStackBlock;
        *v68 = 3221225472;
        *&v68[8] = sub_10002AAB4;
        *&v68[16] = &unk_100054930;
        *&v68[24] = v26;
        sub_1000198F4(v26, buf);
      }
    }

    if (!strncmp("com.apple.nfcd.se.restrictedperformance", string, 0x27uLL))
    {
      v38 = *(a1 + 32);
      if (v38)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(v38);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(v38);
          v64 = sel_getName("restrictedPerformanceModeEntered:");
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(6, "%c[%{public}s %{public}s]:%i ", v44, v43, v64, 2080);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = object_getClass(v38);
          if (class_isMetaClass(v46))
          {
            v47 = 43;
          }

          else
          {
            v47 = 45;
          }

          v48 = object_getClassName(v38);
          v49 = sel_getName("restrictedPerformanceModeEntered:");
          *buf = 67109890;
          *&buf[4] = v47;
          *v68 = 2082;
          *&v68[2] = v48;
          *&v68[10] = 2082;
          *&v68[12] = v49;
          *&v68[20] = 1024;
          *&v68[22] = 2080;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
        }

        *buf = _NSConcreteStackBlock;
        *v68 = 3221225472;
        *&v68[8] = sub_10002AB24;
        *&v68[16] = &unk_100054930;
        *&v68[24] = v38;
        sub_1000198F4(v38, buf);
      }
    }

    if (!strncmp("com.apple.system.powermanagement.poweradapter", string, 0x2DuLL))
    {
      v50 = *(a1 + 32);
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100019894;
      v66[3] = &unk_100054930;
      v66[4] = v50;
      sub_1000198F4(v50, v66);
    }
  }

  else
  {
    if (Logger)
    {
      v51 = object_getClass(*(a1 + 32));
      v52 = class_isMetaClass(v51);
      v53 = object_getClassName(*(a1 + 32));
      v65 = sel_getName(*(a1 + 40));
      v54 = 45;
      if (v52)
      {
        v54 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i No event name: skipping", v54, v53, v65, 564);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(*(a1 + 32));
      v59 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      *&buf[4] = v57;
      *v68 = 2082;
      *&v68[2] = v58;
      *&v68[10] = 2082;
      *&v68[12] = v59;
      *&v68[20] = 1024;
      *&v68[22] = 564;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No event name: skipping", buf, 0x22u);
    }
  }
}

void sub_100019894(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 155) == 1)
  {
    sub_100016008(*(a1 + 32));
    if ((*(v1 + 155) & 1) == 0)
    {
      v3 = *(a1 + 32);

      sub_100015830(v3);
    }
  }
}

void sub_1000198F4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_10001549C(a1);
    sub_10001B350(a1);
    v4 = +[NSDate now];
    v5 = a1[13];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BD50;
    block[3] = &unk_100054D10;
    v8 = v4;
    v9 = a1;
    v10 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

_DWORD *sub_1000199D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = objc_opt_new();
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];
  [v2 setObject:v4 forKeyedSubscript:@"seldSettings"];

  v5 = +[NFPowerAssertion sharedPowerAssertion];
  v6 = [v5 dumpState];
  [v2 addEntriesFromDictionary:v6];

  v7 = v1;
  objc_sync_enter(v7);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7[21] count]);
  [v2 setObject:v8 forKeyedSubscript:@"QueuedXPC"];

  objc_sync_exit(v7);
  v9 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];
  v10 = [v9 length];
  v11 = malloc_type_calloc(1uLL, v10 + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  v11[1] = v10;
  __strlcpy_chk();
  memcpy(v11 + 50, [v9 bytes], v10);

  return v11;
}

void sub_100019B74(void *a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "start", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v2, state);
    os_activity_scope_leave(state);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("start");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Seld started", v8, ClassName, Name, 610);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(a1);
      v13 = sel_getName("start");
      *state = 67109890;
      *&state[4] = v11;
      *&state[8] = 2082;
      *&state[10] = v12;
      v31 = 2082;
      v32 = v13;
      v33 = 1024;
      v34 = 610;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Seld started", state, 0x22u);
    }

    v14 = a1;
    objc_sync_enter(v14);
    if ((v14[1] & 1) == 0)
    {
      v15 = +[NFPowerAssertion sharedPowerAssertion];
      [v15 setEnableDebug:NFIsInternalBuild()];

      if (([v14[5] registerForEvents] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v17 = v16;
          v18 = object_getClass(v14);
          v19 = class_isMetaClass(v18);
          v20 = object_getClassName(v14);
          v28 = sel_getName("start");
          v21 = 45;
          if (v19)
          {
            v21 = 43;
          }

          v17(3, "%c[%{public}s %{public}s]:%i Failed to register for power events", v21, v20, v28, 618);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = object_getClass(v14);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          v25 = object_getClassName(v14);
          v26 = sel_getName("start");
          *state = 67109890;
          *&state[4] = v24;
          *&state[8] = 2082;
          *&state[10] = v25;
          v31 = 2082;
          v32 = v26;
          v33 = 1024;
          v34 = 618;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register for power events", state, 0x22u);
        }
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100019EF4;
      v29[3] = &unk_1000549A8;
      v29[4] = v14;
      v29[5] = "start";
      [NFHardwareManager sharedHardwareManager:v29];
    }

    objc_sync_exit(v14);
  }
}

void sub_100019EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getHwSupport];
  if (v4 != 4)
  {
    if (v4 != 2)
    {
      [v3 registerEventListener:*(a1 + 32)];
      v42 = os_transaction_create();
      v43 = *(a1 + 32);
      v44 = *(v43 + 176);
      *(v43 + 176) = v42;

      goto LABEL_48;
    }

    v51 = v3;
    for (i = 29; ; --i)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v52 = 0;
        v7 = [NFSecureElement embeddedSecureElementWithError:&v52];
        v8 = v52;
        v9 = [v7 info];

        if (v9)
        {
          if (v6[9])
          {
            v45 = 1;
          }

          else
          {
            v45 = [v9 restrictedMode];
          }

          v3 = v51;
          v6[9] = v45;
          if (v6[10])
          {
            v46 = 1;
          }

          else
          {
            v46 = [v9 restrictedPerformanceMode];
          }

          v6[10] = v46;

          sub_100018A60(*(a1 + 32));
          goto LABEL_48;
        }

        if (v8)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName("_validateESE");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v11(4, "%c[%{public}s %{public}s]:%i Failed to be eSE - %{public}@", v14, ClassName, Name, 849, v8);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = object_getClass(v6);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            v18 = object_getClassName(v6);
            v19 = sel_getName("_validateESE");
            *buf = 67110146;
            v54 = v17;
            v55 = 2082;
            v56 = v18;
            v57 = 2082;
            v58 = v19;
            v59 = 1024;
            v60 = 849;
            v61 = 2114;
            v62 = v8;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to be eSE - %{public}@", buf, 0x2Cu);
          }
        }
      }

      if (!i)
      {
        sub_100018BD8(*(a1 + 32));
        v3 = v51;
        goto LABEL_48;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v21 = v20;
        v22 = object_getClass(*(a1 + 32));
        v23 = class_isMetaClass(v22);
        v24 = object_getClassName(*(a1 + 32));
        v49 = sel_getName(*(a1 + 40));
        v25 = 45;
        if (v23)
        {
          v25 = 43;
        }

        v21(3, "%c[%{public}s %{public}s]:%i Failed to query JCOP, delaying check by %d seconds", v25, v24, v49, 636, 2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(*(a1 + 32));
        v30 = sel_getName(*(a1 + 40));
        *buf = 67110146;
        v54 = v28;
        v55 = 2082;
        v56 = v29;
        v57 = 2082;
        v58 = v30;
        v59 = 1024;
        v60 = 636;
        v61 = 1024;
        LODWORD(v62) = 2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query JCOP, delaying check by %d seconds", buf, 0x28u);
      }

      sleep(2u);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFLogGetLogger();
  if (v31)
  {
    v32 = v31;
    v33 = object_getClass(*(a1 + 32));
    v34 = class_isMetaClass(v33);
    v35 = object_getClassName(*(a1 + 32));
    v50 = sel_getName(*(a1 + 40));
    v36 = 45;
    if (v34)
    {
      v36 = 43;
    }

    v32(3, "%c[%{public}s %{public}s]:%i nfc not supported, bailing.", v36, v35, v50, 625);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(*(a1 + 32));
    v41 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v54 = v39;
    v55 = 2082;
    v56 = v40;
    v57 = 2082;
    v58 = v41;
    v59 = 1024;
    v60 = 625;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i nfc not supported, bailing.", buf, 0x22u);
  }

  sub_100018BD8(*(a1 + 32));
LABEL_48:
}

void sub_10001A3F4(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = _os_activity_create(&_mh_execute_header, "stop", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("stop");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Seld stopping", v8, ClassName, Name, 655);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(a1);
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(a1);
    v13 = sel_getName("stop");
    *state = 67109890;
    *&state[4] = v11;
    *&state[8] = 2082;
    *&state[10] = v12;
    v31 = 2082;
    v32 = v13;
    v33 = 1024;
    v34 = 655;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Seld stopping", state, 0x22u);
  }

  v14 = a1;
  objc_sync_enter(v14);
  v15 = sub_10001A730(v14);
  v16 = v15;
  if (v15)
  {
    if ([v15 pendingImmediateRetry])
    {
      goto LABEL_20;
    }

    v17 = [v16 retryInterval];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 16);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (!v20)
    {
      goto LABEL_21;
    }

    v21 = [v16 retryInterval];
    v22 = v21;
    v23 = v21 ? *(v21 + 16) : 0;
    v24 = v23;
    [v24 timeIntervalSinceNow];
    v26 = v25;

    if (v26 <= 120.0)
    {
LABEL_20:
      sub_10001AB8C(v14, "com.apple.seld.processing", 120.0);
    }

    else
    {
      sub_10001B070(v14, v16);
    }
  }

LABEL_21:
  if (*(v14 + 8) == 1)
  {
    nw_path_monitor_cancel(*(v14 + 23));
    nw_path_monitor_cancel(*(v14 + 24));
    nw_path_monitor_cancel(*(v14 + 25));
    nw_path_monitor_cancel(*(v14 + 26));
    [*(v14 + 5) unregisterForEvents];
    [*(v14 + 12) abort:3];
    v27 = v14;
    objc_sync_enter(v27);
    [v27[4] suspend];
    [v27[4] invalidate];
    [v27[4] setDelegate:0];
    v28 = v27[4];
    v27[4] = 0;

    objc_sync_exit(v27);
    *(v14 + 8) = 0;
  }

  objc_sync_exit(v14);
}

id sub_10001A730(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = v1;
  v2 = sub_100038884(v1[3]);
  v3 = [v2 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v3)
  {

    v6 = 0;
    v5 = 0;
LABEL_34:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = sub_100037BB8(v49[3]);
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v53;
      obja = v25;
      do
      {
        v30 = 0;
        do
        {
          v31 = v6;
          if (*v53 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v52 + 1) + 8 * v30);
          v6 = [v32 retryInterval];

          if ([v32 pendingImmediateRetry])
          {
            v47 = v32;

            v28 = v47;
            goto LABEL_61;
          }

          if (v6)
          {
            v33 = v6[2];
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          if (v34)
          {
            v35 = v49[3];
            v36 = [v32 serverIdentifier];
            v37 = sub_10003687C(v35, v36);

            if (v37)
            {
              if (!v28)
              {
                goto LABEL_51;
              }

              v38 = v5 ? v5[2] : 0;
              v39 = v38;
              v40 = v6 ? v6[2] : 0;
              v41 = v40;
              v42 = [v39 compare:v41];

              v43 = v42 == 1;
              v25 = obja;
              if (v43)
              {
LABEL_51:
                v44 = v32;

                v45 = v6;
                v5 = v45;
                v28 = v44;
              }
            }
          }

          v30 = v30 + 1;
        }

        while (v27 != v30);
        v46 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
        v27 = v46;
      }

      while (v46);
    }

    else
    {
      v28 = 0;
    }

LABEL_61:

    objc_sync_exit(v49);
    v7 = v28;
    v24 = v7;
    goto LABEL_62;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *v57;
  obj = v2;
  do
  {
    v9 = 0;
    v10 = v6;
    do
    {
      if (*v57 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v56 + 1) + 8 * v9);
      v6 = [v11 retryInterval];

      if ([v11 pendingImmediateRetry])
      {
        v24 = v11;

        goto LABEL_32;
      }

      if (v6)
      {
        v12 = v6[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6)
        {
          v6[1] = 0;
        }

        v15 = +[NSDate date];
        if (v6)
        {
          objc_setProperty_nonatomic_copy(v6, v14, v15, 16);
        }

        [v11 updateNextRetryInterval:v6];
        [v11 save];
        if (!v7)
        {
LABEL_22:
          v21 = v11;

          v22 = v6;
          v5 = v22;
          v7 = v21;
          goto LABEL_23;
        }
      }

      if (v5)
      {
        v16 = v5[2];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      if (v6)
      {
        v18 = v6[2];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = [v17 compare:v19];

      if (v20 == 1)
      {
        goto LABEL_22;
      }

LABEL_23:
      v9 = v9 + 1;
      v10 = v6;
    }

    while (v4 != v9);
    v23 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    v4 = v23;
  }

  while (v23);

  if (!v7)
  {
    goto LABEL_34;
  }

  v7 = v7;
  v24 = v7;
LABEL_32:
  objc_sync_exit(v49);

LABEL_62:

  return v24;
}

void sub_10001AB8C(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5 = [NSString stringWithCString:a2 encoding:4];
    v6 = vcvtpd_u64_f64(a3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Scheduling [%@] for %lld seconds ", v12, ClassName, Name, 764, v5, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(a1);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110402;
      v48 = v15;
      v49 = 2082;
      v50 = object_getClassName(a1);
      v51 = 2082;
      v52 = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
      v53 = 1024;
      v54 = 764;
      v55 = 2112;
      v56 = v5;
      v57 = 2048;
      v58 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Scheduling [%@] for %lld seconds ", buf, 0x36u);
    }

    v16 = +[BGSystemTaskScheduler sharedScheduler];
    v17 = [v16 taskRequestForIdentifier:v5];

    if (v17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(a1);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(a1);
        v44 = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
        v23 = 45;
        if (v21)
        {
          v23 = 43;
        }

        v19(4, "%c[%{public}s %{public}s]:%i Warning : activity already scheduled..", v23, v22, v44, 769);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(a1);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(a1);
        v28 = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
        *buf = 67109890;
        v48 = v26;
        v49 = 2082;
        v50 = v27;
        v51 = 2082;
        v52 = v28;
        v53 = 1024;
        v54 = 769;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Warning : activity already scheduled..", buf, 0x22u);
      }

      v29 = 0;
      v30 = 0;
    }

    else
    {
      v30 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v5];
      [v30 setRequiresNetworkConnectivity:1];
      [v30 setRequiresExternalPower:0];
      [v30 setScheduleAfter:a3];
      [v30 setRequiresProtectionClass:5];
      [v30 setPriority:2];
      v31 = +[BGSystemTaskScheduler sharedScheduler];
      v46 = 0;
      v32 = [v31 submitTaskRequest:v30 error:&v46];
      v29 = v46;

      if (v32)
      {
        goto LABEL_23;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(a1);
        v45 = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Error : Failed to schedule task named %@ : %@", v38, v37, v45, 781, v5, v29);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v39 = object_getClass(a1);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(a1);
        v42 = sel_getName("scheduleForNetworkActivityWithName:timeDelayInSeconds:");
        *buf = 67110402;
        v48 = v40;
        v49 = 2082;
        v50 = v41;
        v51 = 2082;
        v52 = v42;
        v53 = 1024;
        v54 = 781;
        v55 = 2112;
        v56 = v5;
        v57 = 2112;
        v58 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : Failed to schedule task named %@ : %@", buf, 0x36u);
      }
    }

LABEL_23:
  }
}

void sub_10001B070(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"dd.MM.YY HH:mm:ss"];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v31 = v3;
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(a1);
    if (class_isMetaClass(Class))
    {
      v8 = 43;
    }

    else
    {
      v8 = 45;
    }

    ClassName = object_getClassName(a1);
    Name = sel_getName("scheduleCheckIn:");
    v11 = [v3 retryInterval];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 16);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v4 stringFromDate:v14];
    v6(6, "%c[%{public}s %{public}s]:%i Scheduling retry alarm (%s) for: %{public}@", v8, ClassName, Name, 802, "com.apple.seld.alarm", v15);

    v3 = v31;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(a1);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(a1);
    v20 = sel_getName("scheduleCheckIn:");
    v21 = [v3 retryInterval];
    v22 = v21;
    if (v21)
    {
      v23 = *(v21 + 16);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [v4 stringFromDate:v24];
    *buf = 67110402;
    v33 = v18;
    v34 = 2082;
    v35 = v19;
    v36 = 2082;
    v37 = v20;
    v38 = 1024;
    v39 = 802;
    v40 = 2080;
    v41 = "com.apple.seld.alarm";
    v42 = 2114;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Scheduling retry alarm (%s) for: %{public}@", buf, 0x36u);

    v3 = v31;
  }

  v26 = [v3 retryInterval];
  v27 = v26;
  if (v26)
  {
    v28 = *(v26 + 16);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  [v29 timeIntervalSinceNow];
  sub_10001AB8C(a1, "com.apple.seld.alarm", v30);
}

id sub_10001B350(id result)
{
  if (result)
  {
    v1 = +[NFPowerAssertion sharedPowerAssertion];
    v2 = [v1 holdPowerAssertion:@"RemoteAdmin" behaviourWhenSleepStarted:2];

    return v2;
  }

  return result;
}

void sub_10001B3A4(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NFPowerAssertion sharedPowerAssertion];
    [v1 releasePowerAssertion:@"RemoteAdmin"];
  }
}

void sub_10001B3FC(void *a1)
{
  if (a1)
  {
    sub_100018DA4(a1, "com.apple.seld.processing");

    sub_10001AB8C(a1, "com.apple.seld.processing", 120.0);
  }
}

void sub_10001B454(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.seld.alarmtriggered", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  sub_100018DA4(*(a1 + 32), "com.apple.seld.alarm");
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    sub_100015830(v3);
  }
}

id sub_10001B4DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = *(a1 + 104);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B6CC;
  v12[3] = &unk_1000549F0;
  v9 = v5;
  v13 = v9;
  v10 = [v7 registerForTaskWithIdentifier:v6 usingQueue:v8 launchHandler:v12];

  return v10;
}

void sub_10001B5BC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.seld.processingtriggered", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  sub_100018DA4(*(a1 + 32), "com.apple.seld.processing");
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    sub_100015830(v3);
  }
}

void sub_10001B644(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.seld.osupdatetriggered", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  sub_100018DA4(*(a1 + 32), "com.apple.seld.osupdate");
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    sub_100015830(v3);
  }
}

void sub_10001B6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setExpirationHandler:&stru_1000549C8];
  (*(*(a1 + 32) + 16))();
  [v3 setTaskCompleted];
}

void sub_10001B738(uint64_t a1)
{
  if (a1)
  {
    v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    byte_10005BAB0 = [v1 BOOLForKey:@"LogTSM"];
  }
}

void sub_10001B7A0(uint64_t a1)
{
  v2 = +[NFHardwareManager sharedHardwareManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B83C;
  v4[3] = &unk_100054A18;
  v5 = *(a1 + 32);
  v3 = [v2 startSecureElementManagerSessionWithPriority:v4];
}

void sub_10001B83C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 32)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v32 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v36 = 45;
        if (isMetaClass)
        {
          v36 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Unexpected entitlement issue", v36, ClassName, Name, 887);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        v40 = object_getClassName(*(a1 + 32));
        v41 = sel_getName(*(a1 + 40));
        *buf = 67109890;
        v48 = v39;
        v49 = 2082;
        v50 = v40;
        v51 = 2082;
        v52 = v41;
        v53 = 1024;
        v54 = 887;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected entitlement issue", buf, 0x22u);
      }

      exit(1);
    }

    if ([v7 code] == 7 || objc_msgSend(v7, "code") == 13)
    {
      sub_100018CC8(*(a1 + 32), 5.0);
      goto LABEL_26;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v9 = v8;
      v10 = object_getClass(*(a1 + 32));
      v11 = class_isMetaClass(v10);
      v42 = object_getClassName(*(a1 + 32));
      v43 = sel_getName(*(a1 + 40));
      v12 = 45;
      if (v11)
      {
        v12 = 43;
      }

      v9(4, "%c[%{public}s %{public}s]:%i Permissible error: %{public}@", v12, v42, v43, 899, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v48 = v15;
      v49 = 2082;
      v50 = v16;
      v51 = 2082;
      v52 = v17;
      v53 = 1024;
      v54 = 899;
      v55 = 2114;
      v56 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Permissible error: %{public}@", buf, 0x2Cu);
    }
  }

  [v5 endSession];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(*(a1 + 32));
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(*(a1 + 32));
    v44 = sel_getName(*(a1 + 40));
    v23 = 45;
    if (v21)
    {
      v23 = 43;
    }

    v19(6, "%c[%{public}s %{public}s]:%i secure element session is ready, initializing APS", v23, v22, v44, 903);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(*(a1 + 32));
    v28 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v48 = v26;
    v49 = 2082;
    v50 = v27;
    v51 = 2082;
    v52 = v28;
    v53 = 1024;
    v54 = 903;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i secure element session is ready, initializing APS", buf, 0x22u);
  }

  v29 = *(a1 + 32);
  v30 = *(v29 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BCC8;
  block[3] = &unk_100054930;
  block[4] = v29;
  dispatch_async(v30, block);
LABEL_26:
}

void sub_10001BCC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("initAPS");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i APS init", v7, ClassName, Name, 415);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v10;
      *v41 = 2082;
      *&v41[2] = object_getClassName(v1);
      *&v41[10] = 2082;
      *&v41[12] = sel_getName("initAPS");
      *&v41[20] = 1024;
      *&v41[22] = 415;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i APS init", buf, 0x22u);
    }

    objc_initWeak(&location, v1);
    *(v1 + 56) = 0;
    v11 = [NFTimer alloc];
    *buf = _NSConcreteStackBlock;
    *v41 = 3221225472;
    *&v41[8] = sub_100017B24;
    *&v41[16] = &unk_1000548C8;
    objc_copyWeak(&v41[24], &location);
    v42 = "initAPS";
    v12 = [v11 initWithCallback:buf queue:*(v1 + 104)];
    v13 = *(v1 + 64);
    *(v1 + 64) = v12;

    [*(v1 + 64) startTimer:12.0];
    v14 = [APSConnection alloc];
    v15 = [v14 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.seld.aps" queue:*(v1 + 104)];
    v16 = *(v1 + 48);
    *(v1 + 48) = v15;

    v17 = *(v1 + 48);
    if (!v17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(v1);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(v1);
        v30 = sel_getName("initAPS");
        v23 = 45;
        if (v21)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Unexpected result, exiting", v23, v22, v30, 436);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v1);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(v1);
        v28 = sel_getName("initAPS");
        *v32 = 67109890;
        v33 = v26;
        v34 = 2082;
        v35 = v27;
        v36 = 2082;
        v37 = v28;
        v38 = 1024;
        v39 = 436;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected result, exiting", v32, 0x22u);
      }

      exit(1);
    }

    [v17 setDelegate:v1];
    sub_100018248(v1);
    objc_destroyWeak(&v41[24]);
    objc_destroyWeak(&location);
  }
}

uint64_t sub_10001CBAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001CBD8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didCloseXPCConnection:");
      v10 = [v3 NF_clientName];
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Removing connection for %{public}@ - %{public}@", v11, ClassName, Name, 1015, v10, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(a1);
      v16 = sel_getName("didCloseXPCConnection:");
      v17 = [v3 NF_clientName];
      *buf = 67110402;
      v21 = v14;
      v22 = 2082;
      v23 = v15;
      v24 = 2082;
      v25 = v16;
      v26 = 1024;
      v27 = 1015;
      v28 = 2114;
      v29 = v17;
      v30 = 2114;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing connection for %{public}@ - %{public}@", buf, 0x36u);
    }

    sub_10001CE14(a1, v3);
    v18 = [v3 NF_userInfo];
    v19 = [v18 objectForKeyedSubscript:@"ProxyObjects"];
    [v19 removeAllObjects];
  }
}

void sub_10001CE14(uint64_t a1, void *a2)
{
  if (a1)
  {
    obj = *(a1 + 16);
    v4 = a2;
    objc_sync_enter(obj);
    v5 = [v4 processIdentifier];

    v6 = [NSNumber numberWithUnsignedInteger:v5];
    [*(a1 + 16) removeObjectForKey:v6];

    objc_sync_exit(obj);
  }
}

void sub_10001CEC4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001CF70;
    v5[3] = &unk_100054A90;
    v6 = v3;
    v7 = a1;
    v8 = "_queueNFRemoteAdminStateForServerIdentifiers:";
    sub_1000198F4(a1, v5);
  }
}

void sub_10001CF70(uint64_t a1)
{
  v1 = a1;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v2 = *(a1 + 32);
  v64 = [v2 countByEnumeratingWithState:&v67 objects:v85 count:16];
  if (v64)
  {
    v3 = 0;
    v63 = *v68;
    v66 = v1;
    obj = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v68 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v67 + 1) + 8 * v4);
        v6 = sub_100037550(*(*(v1 + 40) + 24), v5);
        v7 = v6;
        if (v6)
        {
          v8 = [v6 retryInterval];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          v65 = v5;
          if (Logger)
          {
            v10 = Logger;
            Class = object_getClass(*(v1 + 40));
            if (class_isMetaClass(Class))
            {
              v12 = 43;
            }

            else
            {
              v12 = 45;
            }

            ClassName = object_getClassName(*(v1 + 40));
            Name = sel_getName(*(v1 + 48));
            v15 = [v7 serverIdentifier];
            if (v8)
            {
              v17 = v8[1];
              v16 = v8[2];
            }

            else
            {
              v17 = 0;
              v16 = 0;
            }

            v18 = v16;
            v10(6, "%c[%{public}s %{public}s]:%i serverState id = %{public}@, retryCount = %lu, retryAfter = %{public}@", v12, ClassName, Name, 1038, v15, v17, v18);

            v5 = v65;
            v1 = v66;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = object_getClass(*(v1 + 40));
            if (class_isMetaClass(v20))
            {
              v21 = 43;
            }

            else
            {
              v21 = 45;
            }

            v22 = object_getClassName(*(v1 + 40));
            v23 = sel_getName(*(v1 + 48));
            v24 = [v7 serverIdentifier];
            if (v8)
            {
              v26 = v8[1];
              v25 = v8[2];
            }

            else
            {
              v26 = 0;
              v25 = 0;
            }

            v27 = v25;
            *buf = 67110658;
            v72 = v21;
            v73 = 2082;
            v74 = v22;
            v75 = 2082;
            v76 = v23;
            v77 = 1024;
            v78 = 1038;
            v79 = 2114;
            v80 = v24;
            v81 = 2048;
            v82 = v26;
            v83 = 2114;
            v84 = v27;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i serverState id = %{public}@, retryCount = %lu, retryAfter = %{public}@", buf, 0x40u);

            v5 = v65;
            v1 = v66;
          }

          v3 = 1;
          [v7 setPendingImmediateRetry:1];
          [v7 save];
        }

        else
        {
          v8 = 0;
        }

        v28 = sub_100038CE4(*(*(v1 + 40) + 24), v5);

        if (v28)
        {
          v29 = [v28 retryInterval];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v31 = v30;
            v32 = object_getClass(*(v1 + 40));
            if (class_isMetaClass(v32))
            {
              v33 = 43;
            }

            else
            {
              v33 = 45;
            }

            v34 = object_getClassName(*(v1 + 40));
            v35 = sel_getName(*(v1 + 48));
            v36 = [v28 serverIdentifier];
            if (v29)
            {
              v38 = v29[1];
              v37 = v29[2];
            }

            else
            {
              v38 = 0;
              v37 = 0;
            }

            v39 = v37;
            v31(6, "%c[%{public}s %{public}s]:%i redirectState id = %{public}@, retryCount = %lu, retryAfter = %{public}@", v33, v34, v35, 1051, v36, v38, v39);

            v1 = v66;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = object_getClass(*(v1 + 40));
            if (class_isMetaClass(v41))
            {
              v42 = 43;
            }

            else
            {
              v42 = 45;
            }

            v43 = object_getClassName(*(v1 + 40));
            v44 = sel_getName(*(v1 + 48));
            v45 = [v28 serverIdentifier];
            if (v29)
            {
              v47 = v29[1];
              v46 = v29[2];
            }

            else
            {
              v47 = 0;
              v46 = 0;
            }

            v48 = v46;
            *buf = 67110658;
            v72 = v42;
            v73 = 2082;
            v74 = v43;
            v75 = 2082;
            v76 = v44;
            v77 = 1024;
            v78 = 1051;
            v79 = 2114;
            v80 = v45;
            v81 = 2048;
            v82 = v47;
            v83 = 2114;
            v84 = v48;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i redirectState id = %{public}@, retryCount = %lu, retryAfter = %{public}@", buf, 0x40u);

            v1 = v66;
          }

          v3 = 1;
          [v28 setPendingImmediateRetry:1];
          [v28 save];
        }

        else
        {
          if (!v7)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v49 = NFLogGetLogger();
            if (v49)
            {
              v50 = v49;
              v51 = object_getClass(*(v1 + 40));
              isMetaClass = class_isMetaClass(v51);
              v60 = object_getClassName(*(v1 + 40));
              v61 = sel_getName(*(v1 + 48));
              v53 = 45;
              if (isMetaClass)
              {
                v53 = 43;
              }

              v50(3, "%c[%{public}s %{public}s]:%i Unable to find state for registration: %{public}@", v53, v60, v61, 1058, v5);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v54 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = object_getClass(*(v1 + 40));
              if (class_isMetaClass(v55))
              {
                v56 = 43;
              }

              else
              {
                v56 = 45;
              }

              v57 = object_getClassName(*(v66 + 40));
              v58 = sel_getName(*(v66 + 48));
              *buf = 67110146;
              v72 = v56;
              v1 = v66;
              v73 = 2082;
              v74 = v57;
              v75 = 2082;
              v76 = v58;
              v77 = 1024;
              v78 = 1058;
              v79 = 2114;
              v80 = v5;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to find state for registration: %{public}@", buf, 0x2Cu);
            }
          }

          v29 = v8;
        }

        v4 = v4 + 1;
      }

      while (v64 != v4);
      v59 = [obj countByEnumeratingWithState:&v67 objects:v85 count:16];
      v64 = v59;
    }

    while (v59);

    if (v3)
    {
      sub_100015830(*(v1 + 40));
    }
  }

  else
  {
  }
}

id sub_10001D610(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10001CBAC;
    v70 = sub_10001CBBC;
    v71 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = +[NFHardwareManager sharedHardwareManager];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10001DD5C;
    v63[3] = &unk_100054AB8;
    v65 = &v66;
    v8 = v6;
    v64 = v8;
    v9 = [v7 startSecureElementManagerSession:v63];

    if (v9)
    {
      if (v5)
      {
        v10 = [v9 activateWithToken:v5];
      }

      else
      {
        v10 = 0;
      }

      v18 = dispatch_time(0, 3000000000);
      if (!dispatch_semaphore_wait(v8, v18))
      {
        v44 = v67[5];
        if (v44 | v10)
        {
          v62 = a3;
          if (!v44)
          {
            v44 = v10;
          }

          v45 = v44;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v47 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("_getSeSessionWithToken:error:");
            v51 = 45;
            if (isMetaClass)
            {
              v51 = 43;
            }

            v47(3, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", v51, ClassName, Name, 1135, v45);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v52 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = object_getClass(a1);
            if (class_isMetaClass(v53))
            {
              v54 = 43;
            }

            else
            {
              v54 = 45;
            }

            v55 = object_getClassName(a1);
            v56 = sel_getName("_getSeSessionWithToken:error:");
            *buf = 67110146;
            v73 = v54;
            v74 = 2082;
            v75 = v55;
            v76 = 2082;
            v77 = v56;
            v78 = 1024;
            v79 = 1135;
            v80 = 2114;
            v81 = v45;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", buf, 0x2Cu);
          }

          if (v62)
          {
            v57 = v45;
            *v62 = v45;
          }

          v42 = 0;
        }

        else
        {
          v42 = v9;
          v10 = 0;
        }

        goto LABEL_22;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(a1);
        v22 = v8;
        v23 = v9;
        v24 = v10;
        v25 = v5;
        v26 = a3;
        v27 = class_isMetaClass(v21);
        v28 = object_getClassName(a1);
        v58 = sel_getName("_getSeSessionWithToken:error:");
        v29 = !v27;
        a3 = v26;
        v5 = v25;
        v10 = v24;
        v9 = v23;
        v8 = v22;
        v30 = 45;
        if (!v29)
        {
          v30 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Exceeded session acquisition time expectation.", v30, v28, v58, 1127);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(a1);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(a1);
        v35 = sel_getName("_getSeSessionWithToken:error:");
        *buf = 67109890;
        v73 = v33;
        v74 = 2082;
        v75 = v34;
        v76 = 2082;
        v77 = v35;
        v78 = 1024;
        v79 = 1127;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Exceeded session acquisition time expectation.", buf, 0x22u);
      }

      if (a3)
      {
        v61 = a3;
        v36 = [NSError alloc];
        v37 = [NSString stringWithUTF8String:"nfcd"];
        v82[0] = NSLocalizedDescriptionKey;
        v38 = [NSString stringWithUTF8String:"Timeout"];
        v83[0] = v38;
        v83[1] = &off_1000573C0;
        v82[1] = @"Line";
        v82[2] = @"Method";
        v39 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getSeSessionWithToken:error:")];
        v83[2] = v39;
        v82[3] = NSDebugDescriptionErrorKey;
        v40 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getSeSessionWithToken:error:"), 1128];
        v83[3] = v40;
        v41 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:4];
        *v61 = [v36 initWithDomain:v37 code:5 userInfo:v41];
      }
    }

    else
    {
      if (a3)
      {
        v60 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v84[0] = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:"Session not active"];
        v85[0] = v12;
        v85[1] = &off_1000573A8;
        v84[1] = @"Line";
        v84[2] = @"Method";
        v13 = v5;
        v14 = a3;
        v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getSeSessionWithToken:error:")];
        v85[2] = v15;
        v84[3] = NSDebugDescriptionErrorKey;
        v16 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getSeSessionWithToken:error:"), 1114];
        v85[3] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
        *v14 = [v60 initWithDomain:v11 code:54 userInfo:v17];
        v5 = v13;
      }

      v10 = 0;
    }

    v42 = 0;
LABEL_22:

    _Block_object_dispose(&v66, 8);
    goto LABEL_23;
  }

  v42 = 0;
LABEL_23:

  return v42;
}

void sub_10001DD5C(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10001DDC0(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000355D0(a1[3]);
  v8 = [v7 allKeys];

  v59 = v6;
  if ([v8 count])
  {
    v9 = a1[3];
    v10 = sub_100018770(a1, v6);
    sub_100037160(v9, v10);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(5, "%c[%{public}s %{public}s]:%i No registered server identifiers", v16, ClassName, Name, 1150);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = object_getClass(a1);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      buf = 67109890;
      v76 = v19;
      v77 = 2082;
      v78 = object_getClassName(a1);
      v79 = 2082;
      v80 = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
      v81 = 1024;
      v82 = 1150;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No registered server identifiers", &buf, 0x22u);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(a1);
    v23 = class_isMetaClass(v22);
    v55 = object_getClassName(a1);
    v57 = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
    v24 = 45;
    if (v23)
    {
      v24 = 43;
    }

    v21(6, "%c[%{public}s %{public}s]:%i registeredIdArray=%{public}@", v24, v55, v57, 1156, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = object_getClass(a1);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(a1);
    v29 = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
    buf = 67110146;
    v76 = v27;
    v77 = 2082;
    v78 = v28;
    v79 = 2082;
    v80 = v29;
    v81 = 1024;
    v82 = 1156;
    v83 = 2114;
    v84 = v8;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i registeredIdArray=%{public}@", &buf, 0x2Cu);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v30 = v8;
  v31 = [v30 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v70;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v70 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = sub_100037550(a1[3], *(*(&v69 + 1) + 8 * i));
        [v35 setPendingImmediateRetry:1];
        [v35 save];
      }

      v32 = [v30 countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v32);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v30;
  v62 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (!v62)
  {
    v63 = 0;
    goto LABEL_60;
  }

  v63 = 0;
  v61 = *v66;
  do
  {
    for (j = 0; j != v62; j = j + 1)
    {
      if (*v66 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v65 + 1) + 8 * j);
      v38 = sub_100037550(a1[3], v37);
      v64 = 0;
      do
      {
        v39 = sub_10001E43C(a1, v38, 1, v5, &v64);
        if (v64 != 1)
        {
          goto LABEL_41;
        }

        v40 = sub_100038CE4(a1[3], v37);

        if (v40)
        {
          v38 = v40;
          if (v39)
          {
            break;
          }

          continue;
        }

        v41 = sub_100037550(a1[3], v37);
        if (v41)
        {
          v38 = v41;
LABEL_41:
          if (v39)
          {
            break;
          }

          continue;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(a1);
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(a1);
          v58 = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v43(4, "%c[%{public}s %{public}s]:%i Missing expected state info", v47, v46, v58, 1180);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = object_getClass(a1);
          if (class_isMetaClass(v49))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          v51 = object_getClassName(a1);
          v52 = sel_getName("_connectToAllRegisteredServersWithSession:reasonString:");
          buf = 67109890;
          v76 = v50;
          v77 = 2082;
          v78 = v51;
          v79 = 2082;
          v80 = v52;
          v81 = 1024;
          v82 = 1180;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing expected state info", &buf, 0x22u);
        }

        v38 = 0;
        v64 = 0;
        if (v39)
        {
          break;
        }
      }

      while ((v64 & 1) != 0);
      if (v39)
      {
        v53 = v39;

        v63 = v53;
      }
    }

    v62 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  }

  while (v62);
LABEL_60:

  return v63;
}

id sub_10001E43C(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v434 = a4;
  if (!a1)
  {
    goto LABEL_409;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    v15 = a5;
    Name = sel_getName("_processRemoteAdminState:oneTime:secureElementManagerSession:outStateStorageUpdated:");
    v17 = [v9 serverIdentifier];
    v404 = Name;
    a5 = v15;
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i serverIdentifier=%{public}@", v18, ClassName, v404, 2207, v17);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(a1);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(a1);
    v23 = sel_getName("_processRemoteAdminState:oneTime:secureElementManagerSession:outStateStorageUpdated:");
    v24 = [v9 serverIdentifier];
    *buf = 67110146;
    *&buf[4] = v21;
    v441 = 2082;
    v442 = v22;
    v443 = 2082;
    v444 = v23;
    v445 = 1024;
    v446 = 2207;
    v447 = 2114;
    v448 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i serverIdentifier=%{public}@", buf, 0x2Cu);
  }

  if (a5)
  {
    *a5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v9;
    v26 = v434;
    PLLogRegisteredEvent();
    v27 = a1;
    objc_sync_enter(v27);
    objc_opt_class();
    sel = v26;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[NFRemoteAdminReaderSession alloc] initWithState:v25 oneTimeConnection:a3 secureElementManagerSession:v26];
      if (v28)
      {
        v28->_delegate = v27;
      }

      v29 = v27[12];
      v27[12] = v28;

      v30 = v25;
    }

    else
    {
      v109 = [[NFRemoteAdminRedirectSession alloc] initWithState:v25 oneTimeConnection:a3 secureElementManagerSession:v26];
      v110 = v27[12];
      v27[12] = v109;

      v30 = 0;
    }

    objc_sync_exit(v27);

    sub_100016008(v27);
    v428 = a5;
    if (*(v27 + 155))
    {
      v111 = 1;
    }

    else
    {
      v111 = [v27[12] run];
    }

    v112 = v27;
    objc_sync_enter(v112);
    if ([v25 isComplete])
    {
      v113 = sub_100033310();
      sub_100038960(v113, v25);
    }

    if (v30)
    {
      v114 = [v30 stateUpdateOnSessionEndedCallback];

      if (v114)
      {
        v115 = v112[12];
        if (v115)
        {
          v116 = v115[19];
        }

        else
        {
          v116 = 0;
        }

        a3 = [v30 stateUpdateOnSessionEndedCallback];
        (*(a3 + 16))(a3, v30, v116);

        [v30 setStateUpdateOnSessionEndedCallback:0];
      }
    }

    v117 = v112[12];
    v112[12] = 0;

    objc_sync_exit(v112);
    PLLogRegisteredEvent();
    v118 = [v30 spStatusCode];
    if (v118)
    {
      a3 = [v30 spStatusCode];
      if (![a3 unsignedIntegerValue])
      {
        goto LABEL_119;
      }
    }

    v142 = [v30 spStatusCode];
    if (v142)
    {
    }

    else
    {
      v143 = [v30 httpStatus];
      if (v143)
      {
        v144 = v143;
        v145 = v9;
        v146 = [v30 httpStatus];
        if ([v146 unsignedIntegerValue] == 200)
        {

          v9 = v145;
          if (!v118)
          {
LABEL_120:
            v119 = [v30 parameters];
            if (!v119)
            {
              goto LABEL_145;
            }

            v120 = v119;
            v121 = [v30 parameters];
            v122 = [v121 objectForKeyedSubscript:@"cardSessionToken"];

            if (v122)
            {
              v123 = &off_100057598;
            }

            else
            {
LABEL_145:
              v123 = &off_1000575C0;
            }

            [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v123];
            goto LABEL_147;
          }

LABEL_119:

          goto LABEL_120;
        }

        v432 = v25;
        v237 = v111;
        v238 = [v30 httpStatus];
        v239 = [v238 unsignedIntegerValue];

        if (v118)
        {
        }

        v9 = v145;
        v111 = v237;
        v25 = v432;
        if (v239 == 204)
        {
          goto LABEL_120;
        }

LABEL_147:
        v436 = v111;
        switch(v111)
        {
          case 0:
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v310 = NFLogGetLogger();
              if (v310)
              {
                v311 = v310;
                v312 = object_getClass(v112);
                v313 = class_isMetaClass(v312);
                v314 = object_getClassName(v112);
                v419 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
                v315 = 45;
                if (v313)
                {
                  v315 = 43;
                }

                v311(6, "%c[%{public}s %{public}s]:%i [TSM] Success", v315, v314, v419, 2741);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v316 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
              {
                v317 = object_getClass(v112);
                if (class_isMetaClass(v317))
                {
                  v318 = 43;
                }

                else
                {
                  v318 = 45;
                }

                v319 = object_getClassName(v112);
                v320 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
                *buf = 67109890;
                *&buf[4] = v318;
                v441 = 2082;
                v442 = v319;
                v443 = 2082;
                v444 = v320;
                v445 = 1024;
                v446 = 2741;
                _os_log_impl(&_mh_execute_header, v316, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Success", buf, 0x22u);
              }

              v159 = 0;
              a5 = v428;
              goto LABEL_402;
            }

            v159 = 0;
            a5 = v428;
            goto LABEL_403;
          case 1:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Session aborted";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v321 = NFLogGetLogger();
            if (v321)
            {
              v322 = v321;
              v323 = object_getClass(v112);
              v324 = class_isMetaClass(v323);
              v325 = object_getClassName(v112);
              v420 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v326 = 45;
              if (v324)
              {
                v326 = 43;
              }

              v322(6, "%c[%{public}s %{public}s]:%i [TSM] Session aborted", v326, v325, v420, 2770);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v327 = object_getClass(v112);
              if (class_isMetaClass(v327))
              {
                v328 = 43;
              }

              else
              {
                v328 = 45;
              }

              v329 = object_getClassName(v112);
              v330 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v328;
              v441 = 2082;
              v442 = v329;
              v443 = 2082;
              v444 = v330;
              v445 = 1024;
              v446 = 2770;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Session aborted", buf, 0x22u);
            }

            v158 = "Session aborted";
            goto LABEL_386;
          case 2:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Network unavailable";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v290 = NFLogGetLogger();
            if (v290)
            {
              v291 = v290;
              v292 = object_getClass(v112);
              v293 = class_isMetaClass(v292);
              v294 = object_getClassName(v112);
              v417 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v295 = 45;
              if (v293)
              {
                v295 = 43;
              }

              v291(6, "%c[%{public}s %{public}s]:%i [TSM] Network Unavailable", v295, v294, v417, 2755);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v296 = object_getClass(v112);
              if (class_isMetaClass(v296))
              {
                v297 = 43;
              }

              else
              {
                v297 = 45;
              }

              v298 = object_getClassName(v112);
              v299 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v297;
              v441 = 2082;
              v442 = v298;
              v443 = 2082;
              v444 = v299;
              v445 = 1024;
              v446 = 2755;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Network Unavailable", buf, 0x22u);
            }

            v158 = "Network unavailable";
            goto LABEL_386;
          case 3:
          case 6:
          case 11:
          case 13:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Unexpected result.";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v148 = NFLogGetLogger();
            if (v148)
            {
              v149 = v148;
              v150 = object_getClass(v112);
              v151 = class_isMetaClass(v150);
              v402 = object_getClassName(v112);
              v407 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v152 = 45;
              if (v151)
              {
                v152 = 43;
              }

              v149(6, "%c[%{public}s %{public}s]:%i [TSM] Unexpected error %lu", v152, v402, v407, 2798, v436);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = object_getClass(v112);
              if (class_isMetaClass(v154))
              {
                v155 = 43;
              }

              else
              {
                v155 = 45;
              }

              v156 = object_getClassName(v112);
              v157 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67110146;
              *&buf[4] = v155;
              v441 = 2082;
              v442 = v156;
              v443 = 2082;
              v444 = v157;
              v445 = 1024;
              v446 = 2798;
              v447 = 2048;
              v448 = v436;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Unexpected error %lu", buf, 0x2Cu);
            }

            v158 = "Unexpected result.";
            goto LABEL_386;
          case 4:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Unable to connect. Long retry cycle";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v260 = NFLogGetLogger();
            if (v260)
            {
              v261 = v260;
              v262 = object_getClass(v112);
              v263 = class_isMetaClass(v262);
              v264 = object_getClassName(v112);
              v414 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v265 = 45;
              if (v263)
              {
                v265 = 43;
              }

              v261(6, "%c[%{public}s %{public}s]:%i [TSM] Long retry", v265, v264, v414, 2745);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v266 = object_getClass(v112);
              if (class_isMetaClass(v266))
              {
                v267 = 43;
              }

              else
              {
                v267 = 45;
              }

              v268 = object_getClassName(v112);
              v269 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v267;
              v441 = 2082;
              v442 = v268;
              v443 = 2082;
              v444 = v269;
              v445 = 1024;
              v446 = 2745;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Long retry", buf, 0x22u);
            }

            v158 = "Unable to connect. Long retry cycle";
            goto LABEL_386;
          case 5:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Invalid parameter";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v270 = NFLogGetLogger();
            if (v270)
            {
              v271 = v270;
              v272 = object_getClass(v112);
              v273 = class_isMetaClass(v272);
              v274 = object_getClassName(v112);
              v415 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v275 = 45;
              if (v273)
              {
                v275 = 43;
              }

              v271(6, "%c[%{public}s %{public}s]:%i [TSM] Invalid parameter", v275, v274, v415, 2775);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v276 = object_getClass(v112);
              if (class_isMetaClass(v276))
              {
                v277 = 43;
              }

              else
              {
                v277 = 45;
              }

              v278 = object_getClassName(v112);
              v279 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v277;
              v441 = 2082;
              v442 = v278;
              v443 = 2082;
              v444 = v279;
              v445 = 1024;
              v446 = 2775;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Invalid parameter", buf, 0x22u);
            }

            v158 = "Invalid parameter";
            goto LABEL_386;
          case 7:
            if (byte_10005BAB0 != 1)
            {
              v158 = "External Tag Unavailable";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v331 = NFLogGetLogger();
            if (v331)
            {
              v332 = v331;
              v333 = object_getClass(v112);
              v334 = class_isMetaClass(v333);
              v335 = object_getClassName(v112);
              v421 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v336 = 45;
              if (v334)
              {
                v336 = 43;
              }

              v332(6, "%c[%{public}s %{public}s]:%i [TSM] External Tag Unavailable", v336, v335, v421, 2750);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v337 = object_getClass(v112);
              if (class_isMetaClass(v337))
              {
                v338 = 43;
              }

              else
              {
                v338 = 45;
              }

              v339 = object_getClassName(v112);
              v340 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v338;
              v441 = 2082;
              v442 = v339;
              v443 = 2082;
              v444 = v340;
              v445 = 1024;
              v446 = 2750;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] External Tag Unavailable", buf, 0x22u);
            }

            v158 = "External Tag Unavailable";
            goto LABEL_386;
          case 8:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Session Error";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v361 = NFLogGetLogger();
            if (v361)
            {
              v362 = v361;
              v363 = object_getClass(v112);
              v364 = class_isMetaClass(v363);
              v365 = object_getClassName(v112);
              v424 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v366 = 45;
              if (v364)
              {
                v366 = 43;
              }

              v362(6, "%c[%{public}s %{public}s]:%i [TSM] Session error", v366, v365, v424, 2780);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v367 = object_getClass(v112);
              if (class_isMetaClass(v367))
              {
                v368 = 43;
              }

              else
              {
                v368 = 45;
              }

              v369 = object_getClassName(v112);
              v370 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v368;
              v441 = 2082;
              v442 = v369;
              v443 = 2082;
              v444 = v370;
              v445 = 1024;
              v446 = 2780;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Session error", buf, 0x22u);
            }

            v158 = "Session Error";
            goto LABEL_386;
          case 9:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Unsupported tag";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v280 = NFLogGetLogger();
            if (v280)
            {
              v281 = v280;
              v282 = object_getClass(v112);
              v283 = class_isMetaClass(v282);
              v284 = object_getClassName(v112);
              v416 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v285 = 45;
              if (v283)
              {
                v285 = 43;
              }

              v281(6, "%c[%{public}s %{public}s]:%i [TSM] Unsupported tag", v285, v284, v416, 2785);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v286 = object_getClass(v112);
              if (class_isMetaClass(v286))
              {
                v287 = 43;
              }

              else
              {
                v287 = 45;
              }

              v288 = object_getClassName(v112);
              v289 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v287;
              v441 = 2082;
              v442 = v288;
              v443 = 2082;
              v444 = v289;
              v445 = 1024;
              v446 = 2785;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Unsupported tag", buf, 0x22u);
            }

            v158 = "Unsupported tag";
            goto LABEL_386;
          case 10:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Bad Command error";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v300 = NFLogGetLogger();
            if (v300)
            {
              v301 = v300;
              v302 = object_getClass(v112);
              v303 = class_isMetaClass(v302);
              v304 = object_getClassName(v112);
              v418 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v305 = 45;
              if (v303)
              {
                v305 = 43;
              }

              v301(6, "%c[%{public}s %{public}s]:%i [TSM] Bad Communication Error", v305, v304, v418, 2790);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v306 = object_getClass(v112);
              if (class_isMetaClass(v306))
              {
                v307 = 43;
              }

              else
              {
                v307 = 45;
              }

              v308 = object_getClassName(v112);
              v309 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v307;
              v441 = 2082;
              v442 = v308;
              v443 = 2082;
              v444 = v309;
              v445 = 1024;
              v446 = 2790;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Bad Communication Error", buf, 0x22u);
            }

            v158 = "Bad Command error";
            goto LABEL_386;
          case 12:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Start new session";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v351 = NFLogGetLogger();
            if (v351)
            {
              v352 = v351;
              v353 = object_getClass(v112);
              v354 = class_isMetaClass(v353);
              v355 = object_getClassName(v112);
              v423 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v356 = 45;
              if (v354)
              {
                v356 = 43;
              }

              v352(6, "%c[%{public}s %{public}s]:%i [TSM] Start new session", v356, v355, v423, 2803);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v357 = object_getClass(v112);
              if (class_isMetaClass(v357))
              {
                v358 = 43;
              }

              else
              {
                v358 = 45;
              }

              v359 = object_getClassName(v112);
              v360 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v358;
              v441 = 2082;
              v442 = v359;
              v443 = 2082;
              v444 = v360;
              v445 = 1024;
              v446 = 2803;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Start new session", buf, 0x22u);
            }

            v158 = "Start new session";
            goto LABEL_386;
          case 14:
            if (byte_10005BAB0 != 1)
            {
              v158 = "SE is not available";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v250 = NFLogGetLogger();
            if (v250)
            {
              v251 = v250;
              v252 = object_getClass(v112);
              v253 = class_isMetaClass(v252);
              v254 = object_getClassName(v112);
              v413 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v255 = 45;
              if (v253)
              {
                v255 = 43;
              }

              v251(6, "%c[%{public}s %{public}s]:%i [TSM] SE is not avaliable", v255, v254, v413, 2765);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v256 = object_getClass(v112);
              if (class_isMetaClass(v256))
              {
                v257 = 43;
              }

              else
              {
                v257 = 45;
              }

              v258 = object_getClassName(v112);
              v259 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v257;
              v441 = 2082;
              v442 = v258;
              v443 = 2082;
              v444 = v259;
              v445 = 1024;
              v446 = 2765;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] SE is not avaliable", buf, 0x22u);
            }

            v158 = "SE is not available";
            goto LABEL_386;
          case 15:
            if (byte_10005BAB0 != 1)
            {
              v158 = "Other network error";
              goto LABEL_400;
            }

            v147 = v9;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v341 = NFLogGetLogger();
            if (v341)
            {
              v342 = v341;
              v343 = object_getClass(v112);
              v344 = class_isMetaClass(v343);
              v345 = object_getClassName(v112);
              v422 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              v346 = 45;
              if (v344)
              {
                v346 = 43;
              }

              v342(6, "%c[%{public}s %{public}s]:%i [TSM] Other network error", v346, v345, v422, 2760);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v153 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v347 = object_getClass(v112);
              if (class_isMetaClass(v347))
              {
                v348 = 43;
              }

              else
              {
                v348 = 45;
              }

              v349 = object_getClassName(v112);
              v350 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
              *buf = 67109890;
              *&buf[4] = v348;
              v441 = 2082;
              v442 = v349;
              v443 = 2082;
              v444 = v350;
              v445 = 1024;
              v446 = 2760;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Other network error", buf, 0x22u);
            }

            v158 = "Other network error";
            goto LABEL_386;
          case 16:
            if (byte_10005BAB0 == 1)
            {
              v147 = v9;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v240 = NFLogGetLogger();
              if (v240)
              {
                v241 = v240;
                v242 = object_getClass(v112);
                v243 = class_isMetaClass(v242);
                v244 = object_getClassName(v112);
                v412 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
                v245 = 45;
                if (v243)
                {
                  v245 = 43;
                }

                v241(6, "%c[%{public}s %{public}s]:%i [TSM] XPC related error", v245, v244, v412, 2808);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v153 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
              {
                v246 = object_getClass(v112);
                if (class_isMetaClass(v246))
                {
                  v247 = 43;
                }

                else
                {
                  v247 = 45;
                }

                v248 = object_getClassName(v112);
                v249 = sel_getName("_processRedirect:oneTimeConnection:secureElementManagerSession:");
                *buf = 67109890;
                *&buf[4] = v247;
                v441 = 2082;
                v442 = v248;
                v443 = 2082;
                v444 = v249;
                v445 = 1024;
                v446 = 2808;
                _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] XPC related error", buf, 0x22u);
              }

              v158 = "XPC related error";
LABEL_386:
              a5 = v428;

              v9 = v147;
            }

            else
            {
              v158 = "XPC related error";
LABEL_400:
              a5 = v428;
            }

LABEL_401:
            v371 = [NSError alloc];
            v316 = [NSString stringWithUTF8String:"seld"];
            v439 = NSLocalizedDescriptionKey;
            v372 = [NSString stringWithUTF8String:v158];
            *buf = v372;
            v373 = [NSDictionary dictionaryWithObjects:buf forKeys:&v439 count:1];
            v159 = [v371 initWithDomain:v316 code:v436 userInfo:v373];

LABEL_402:
LABEL_403:

            if (v159)
            {
              goto LABEL_404;
            }

            goto LABEL_410;
          default:
            v158 = 0;
            v159 = 0;
            a5 = v428;
            if (!v111)
            {
              goto LABEL_403;
            }

            goto LABEL_401;
        }
      }
    }

    if (v118)
    {
    }

    goto LABEL_147;
  }

  v427 = v9;
  v31 = v9;
  v431 = v434;
  PLLogRegisteredEvent();
  v32 = a1;
  objc_sync_enter(v32);
  if (*(a1 + 96))
  {
LABEL_425:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v392 = NFLogGetLogger();
    if (v392)
    {
      v393 = v392;
      v394 = object_getClass(v32);
      v395 = class_isMetaClass(v394);
      v403 = object_getClassName(v32);
      v426 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
      v396 = 45;
      if (v395)
      {
        v396 = 43;
      }

      v393(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v396, v403, v426, 2519, "_activeSession == ((void*)0)");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v397 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
    {
      v398 = object_getClass(v32);
      if (class_isMetaClass(v398))
      {
        v399 = 43;
      }

      else
      {
        v399 = 45;
      }

      v400 = object_getClassName(v32);
      v401 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
      *buf = 67110146;
      *&buf[4] = v399;
      v441 = 2082;
      v442 = v400;
      v443 = 2082;
      v444 = v401;
      v445 = 1024;
      v446 = 2519;
      v447 = 2080;
      v448 = "_activeSession == ((void*)0)";
      _os_log_impl(&_mh_execute_header, v397, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FAILED: %s", buf, 0x2Cu);
    }

    abort();
  }

  v429 = 0;
  v430 = 0;
  v33 = 0;
  v435 = v31;
  while (1)
  {
    while (1)
    {
      v34 = [v31 sourceUrl];

      if (!v34)
      {
        v35 = *(a1 + 24);
        v36 = [v31 serverIdentifier];
        v37 = sub_10003687C(v35, v36);

        if (v37)
        {
          v38 = [v37 absoluteString];
          [v31 setSourceUrl:v38];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v39 = NFLogGetLogger();
          if (v39)
          {
            v40 = v39;
            v41 = object_getClass(v32);
            v42 = class_isMetaClass(v41);
            v43 = object_getClassName(v32);
            v44 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
            [v435 serverIdentifier];
            v46 = v45 = a5;
            v47 = 45;
            if (v42)
            {
              v47 = 43;
            }

            v40(6, "%c[%{public}s %{public}s]:%i Unknown server identifier:%{public}@", v47, v43, v44, 2528, v46);

            a5 = v45;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v48 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = object_getClass(v32);
            v50 = a5;
            if (class_isMetaClass(v49))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            v52 = object_getClassName(v32);
            v53 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
            v54 = [v435 serverIdentifier];
            *buf = 67110146;
            *&buf[4] = v51;
            a5 = v50;
            v441 = 2082;
            v442 = v52;
            v443 = 2082;
            v444 = v53;
            v445 = 1024;
            v446 = 2528;
            v447 = 2114;
            v448 = v54;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unknown server identifier:%{public}@", buf, 0x2Cu);
          }

          v55 = [NSError alloc];
          v38 = [NSString stringWithUTF8String:"seld"];
          v438 = NSLocalizedDescriptionKey;
          v439 = @"Unknown server identifier";
          v56 = [NSDictionary dictionaryWithObjects:&v439 forKeys:&v438 count:1];
          v57 = [v55 initWithDomain:v38 code:5 userInfo:v56];

          v33 = 5;
          v430 = v57;
          v31 = v435;
        }
      }

      v58 = [v31 sourceUrl];
      if (v58)
      {
        v59 = v58;
        v60 = [v31 sourceUrl];
        v61 = [NSURL URLWithString:v60];

        if (v61)
        {
          v62 = objc_alloc_init(NFRemoteAdminSession);
          v63 = v62;
          if (v62)
          {
            v62->_delegate = v32;
          }

          sub_10003327C(v62, v435);
          sub_10003328C(v63, v61);
          sub_10002D5F4(v63, v431);
          v64 = *(a1 + 96);
          *(a1 + 96) = v63;
        }
      }

      objc_sync_exit(v32);

      if (*(a1 + 96))
      {
        sub_100016008(v32);
        if (*(a1 + 155))
        {
          v33 = 1;
        }

        else
        {
          v33 = [*(a1 + 96) run];
        }

        v65 = v32;
        objc_sync_enter(v65);
        v66 = *(a1 + 96);
        *(a1 + 96) = 0;

        objc_sync_exit(v65);
      }

      if (v33 == 3)
      {
        break;
      }

      if (v33 <= 3)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            v9 = v427;
            v31 = v435;
            v124 = v430;
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v171 = NFLogGetLogger();
              if (v171)
              {
                v172 = v171;
                v173 = object_getClass(v32);
                v174 = class_isMetaClass(v173);
                v175 = object_getClassName(v32);
                v409 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                v176 = 45;
                if (v174)
                {
                  v176 = 43;
                }

                v172(6, "%c[%{public}s %{public}s]:%i [TSM] Aborted", v176, v175, v409, 2565);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v177 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
              {
                v178 = object_getClass(v32);
                if (class_isMetaClass(v178))
                {
                  v179 = 43;
                }

                else
                {
                  v179 = 45;
                }

                v180 = object_getClassName(v32);
                v181 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                *buf = 67109890;
                *&buf[4] = v179;
                v441 = 2082;
                v442 = v180;
                v443 = 2082;
                v444 = v181;
                v445 = 1024;
                v446 = 2565;
                _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Aborted", buf, 0x22u);
              }
            }

            [v435 save];
            v182 = [NSError alloc];
            v137 = [NSString stringWithUTF8String:"seld"];
            v437 = NSLocalizedDescriptionKey;
            *buf = @"Aborted";
            v138 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
            v139 = v182;
            v140 = v137;
            v141 = 1;
          }

          else
          {
            if (v33 != 2)
            {
              goto LABEL_187;
            }

            v9 = v427;
            v31 = v435;
            v124 = v430;
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v125 = NFLogGetLogger();
              if (v125)
              {
                v126 = v125;
                v127 = object_getClass(v32);
                v128 = class_isMetaClass(v127);
                v129 = object_getClassName(v32);
                v406 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                v130 = 45;
                if (v128)
                {
                  v130 = 43;
                }

                v126(6, "%c[%{public}s %{public}s]:%i [TSM] Network unavailable", v130, v129, v406, 2571);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v131 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
              {
                v132 = object_getClass(v32);
                if (class_isMetaClass(v132))
                {
                  v133 = 43;
                }

                else
                {
                  v133 = 45;
                }

                v134 = object_getClassName(v32);
                v135 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                *buf = 67109890;
                *&buf[4] = v133;
                v441 = 2082;
                v442 = v134;
                v443 = 2082;
                v444 = v135;
                v445 = 1024;
                v446 = 2571;
                _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Network unavailable", buf, 0x22u);
              }
            }

            [v435 setPendingImmediateRetry:1];
            [v435 save];
            v136 = [NSError alloc];
            v137 = [NSString stringWithUTF8String:"seld"];
            v437 = NSLocalizedDescriptionKey;
            *buf = @"Network unavailable.";
            v138 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
            v139 = v136;
            v140 = v137;
            v141 = 2;
          }

          v183 = [v139 initWithDomain:v140 code:v141 userInfo:v138];

          v159 = v183;
          goto LABEL_234;
        }
      }

      else
      {
        if (v33 <= 10)
        {
          if (v33 == 4)
          {
            if ((a3 & 1) == 0)
            {
              goto LABEL_200;
            }

            goto LABEL_88;
          }

          if (v33 == 5)
          {
            v9 = v427;
            v31 = v435;
            v159 = v430;
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v160 = NFLogGetLogger();
              if (v160)
              {
                v161 = v160;
                v162 = object_getClass(v32);
                v163 = class_isMetaClass(v162);
                v164 = object_getClassName(v32);
                v408 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                v165 = 45;
                if (v163)
                {
                  v165 = 43;
                }

                v161(6, "%c[%{public}s %{public}s]:%i [TSM] Invalid remote admin state", v165, v164, v408, 2559);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v166 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
              {
                v167 = object_getClass(v32);
                if (class_isMetaClass(v167))
                {
                  v168 = 43;
                }

                else
                {
                  v168 = 45;
                }

                v169 = object_getClassName(v32);
                v170 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
                *buf = 67109890;
                *&buf[4] = v168;
                v441 = 2082;
                v442 = v169;
                v443 = 2082;
                v444 = v170;
                v445 = 1024;
                v446 = 2559;
                _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Invalid remote admin state", buf, 0x22u);
              }
            }

            sub_10002D00C(v435);
            [v435 save];
            goto LABEL_234;
          }

LABEL_187:
          v184 = +[NSAssertionHandler currentHandler];
          [v184 handleFailureInMethod:"_connectToServer:oneTimeConnection:secureElementManagerSession:" object:v32 file:@"_NFRemoteAdminManager.m" lineNumber:2644 description:{@"Unknown result: %lu", v33}];

          v185 = [NSError alloc];
          v186 = [NSString stringWithUTF8String:"seld"];
          v437 = NSLocalizedDescriptionKey;
          *buf = @"Unexpected result.";
          v187 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
          v159 = [v185 initWithDomain:v186 code:v33 userInfo:v187];

          v31 = v435;
          sub_10002D00C(v435);
          [v435 save];
          v9 = v427;
          goto LABEL_234;
        }

        if (v33 != 11)
        {
          if (v33 == 14)
          {
            goto LABEL_189;
          }

          goto LABEL_187;
        }
      }

      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFLogGetLogger();
        if (v85)
        {
          v86 = v85;
          v87 = object_getClass(v32);
          v88 = class_isMetaClass(v87);
          v89 = object_getClassName(v32);
          v405 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          v90 = 45;
          if (v88)
          {
            v90 = 43;
          }

          v86(6, "%c[%{public}s %{public}s]:%i [TSM] Success", v90, v89, v405, 2633);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v91 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = object_getClass(v32);
          if (class_isMetaClass(v92))
          {
            v93 = 43;
          }

          else
          {
            v93 = 45;
          }

          v94 = object_getClassName(v32);
          v95 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          *buf = 67109890;
          *&buf[4] = v93;
          v441 = 2082;
          v442 = v94;
          v443 = 2082;
          v444 = v95;
          v445 = 1024;
          v446 = 2633;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Success", buf, 0x22u);
        }
      }

      sub_10002D00C(v435);
      [v435 save];
      if (v33 == 11)
      {
        v389 = [NSError alloc];
        v390 = [NSString stringWithUTF8String:"seld"];
        v437 = NSLocalizedDescriptionKey;
        *buf = @"Need to proceed with redirect";
        v391 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
        v159 = [v389 initWithDomain:v390 code:11 userInfo:v391];

        v9 = v427;
        goto LABEL_233;
      }

LABEL_88:
      if ((v33 - 3) > 1 || (a3 & 1) == 0)
      {
        v9 = v427;
        v31 = v435;
        v159 = v430;
        goto LABEL_234;
      }

      v31 = v435;
      if (v429 == 3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v375 = NFLogGetLogger();
        if (v375)
        {
          v376 = v375;
          v377 = object_getClass(v32);
          v378 = class_isMetaClass(v377);
          v379 = object_getClassName(v32);
          v425 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          v380 = 45;
          if (v378)
          {
            v380 = 43;
          }

          v376(3, "%c[%{public}s %{public}s]:%i Out of short retry attempts", v380, v379, v425, 2659);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v381 = NFSharedLogGetLogger();
        v9 = v427;
        if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
        {
          v382 = object_getClass(v32);
          if (class_isMetaClass(v382))
          {
            v383 = 43;
          }

          else
          {
            v383 = 45;
          }

          v384 = object_getClassName(v32);
          v385 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          *buf = 67109890;
          *&buf[4] = v383;
          v441 = 2082;
          v442 = v384;
          v443 = 2082;
          v444 = v385;
          v445 = 1024;
          v446 = 2659;
          _os_log_impl(&_mh_execute_header, v381, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Out of short retry attempts", buf, 0x22u);
        }

        v386 = [NSError alloc];
        v387 = [NSString stringWithUTF8String:"seld"];
        v437 = NSLocalizedDescriptionKey;
        *buf = @"Short retry attempts failed";
        v388 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
        v159 = [v386 initWithDomain:v387 code:3 userInfo:v388];

        goto LABEL_234;
      }

      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v96 = NFLogGetLogger();
        if (v96)
        {
          v97 = v96;
          v98 = object_getClass(v32);
          v99 = class_isMetaClass(v98);
          v100 = object_getClassName(v32);
          v101 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          v102 = 45;
          if (v99)
          {
            v102 = 43;
          }

          v97(6, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", v102, v100, v101, 2655, dword_1000408D8[v429]);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v103 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          v104 = object_getClass(v32);
          if (class_isMetaClass(v104))
          {
            v105 = 43;
          }

          else
          {
            v105 = 45;
          }

          v106 = object_getClassName(v32);
          v107 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
          v108 = dword_1000408D8[v429];
          *buf = 67110146;
          *&buf[4] = v105;
          v441 = 2082;
          v442 = v106;
          v443 = 2082;
          v444 = v107;
          v445 = 1024;
          v446 = 2655;
          v447 = 1024;
          LODWORD(v448) = v108;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", buf, 0x28u);
        }
      }

      sleep(dword_1000408D8[v429]);
      objc_sync_enter(v32);
      LOBYTE(a3) = 1;
      ++v429;
      if (*(a1 + 96))
      {
        goto LABEL_425;
      }
    }

    if (a3)
    {
      goto LABEL_88;
    }

    v31 = v435;
    v67 = [v435 retryInterval];
    v68 = v67;
    if (v67)
    {
      if (v67[1] >= 3uLL)
      {
        break;
      }
    }

    if (byte_10005BAB0 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFLogGetLogger();
      if (v69)
      {
        v70 = v69;
        v71 = object_getClass(v32);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(v32);
        v74 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
        if (v68)
        {
          v75 = v68[1];
        }

        else
        {
          v75 = 0;
        }

        v70(6, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", v72, v73, v74, 2584, dword_1000408D8[v75]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(v32);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(v32);
        v80 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
        if (v68)
        {
          v81 = v68[1];
        }

        else
        {
          v81 = 0;
        }

        v82 = dword_1000408D8[v81];
        *buf = 67110146;
        *&buf[4] = v78;
        v441 = 2082;
        v442 = v79;
        v443 = 2082;
        v444 = v80;
        v445 = 1024;
        v446 = 2584;
        v447 = 1024;
        LODWORD(v448) = v82;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", buf, 0x28u);
      }
    }

    if (v68)
    {
      v83 = v68[1];
      v68[1] = v83 + 1;
      sleep(dword_1000408D8[v83]);
      objc_setProperty_nonatomic_copy(v68, v84, 0, 16);
    }

    else
    {
      sleep(2u);
    }

    [v435 updateNextRetryInterval:v68];

    objc_sync_enter(v32);
    LOBYTE(a3) = 0;
    v33 = 3;
    if (*(a1 + 96))
    {
      goto LABEL_425;
    }
  }

LABEL_189:
  if (byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v188 = NFLogGetLogger();
    if (v188)
    {
      v189 = v188;
      v190 = object_getClass(v32);
      v191 = class_isMetaClass(v190);
      v192 = object_getClassName(v32);
      v410 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
      v193 = 45;
      if (v191)
      {
        v193 = 43;
      }

      v189(6, "%c[%{public}s %{public}s]:%i [TSM] SE is unavailable", v193, v192, v410, 2595);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v194 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      v195 = object_getClass(v32);
      if (class_isMetaClass(v195))
      {
        v196 = 43;
      }

      else
      {
        v196 = 45;
      }

      v197 = object_getClassName(v32);
      v198 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
      *buf = 67109890;
      *&buf[4] = v196;
      v441 = 2082;
      v442 = v197;
      v443 = 2082;
      v444 = v198;
      v445 = 1024;
      v446 = 2595;
      _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] SE is unavailable", buf, 0x22u);
    }
  }

LABEL_200:
  [v435 setPendingImmediateRetry:0];
  v199 = [v435 retryInterval];
  v201 = v199;
  if (!v199)
  {
    v202 = 0;
    goto LABEL_215;
  }

  v202 = *(v199 + 8);
  if (!v202)
  {
    v202 = 3;
    goto LABEL_214;
  }

  if (v202 <= 0x1B)
  {
LABEL_214:
    *(v199 + 8) = v202 + 1;
LABEL_215:
    v204 = v430;
    LODWORD(v200) = dword_1000408D8[v202];
    v215 = v200;
    if (byte_10005BAB0 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v216 = NFLogGetLogger();
      if (v216)
      {
        v217 = v216;
        v218 = object_getClass(v32);
        v219 = class_isMetaClass(v218);
        v220 = object_getClassName(v32);
        v221 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
        v222 = 45;
        if (v219)
        {
          v222 = 43;
        }

        v217(6, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d minute(s)", v222, v220, v221, 2614, (v215 / 60.0));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v223 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
      {
        v224 = object_getClass(v32);
        if (class_isMetaClass(v224))
        {
          v225 = 43;
        }

        else
        {
          v225 = 45;
        }

        v226 = object_getClassName(v32);
        v227 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
        *buf = 67110146;
        *&buf[4] = v225;
        v441 = 2082;
        v442 = v226;
        v443 = 2082;
        v444 = v227;
        v445 = 1024;
        v446 = 2614;
        v447 = 1024;
        LODWORD(v448) = (v215 / 60.0);
        _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d minute(s)", buf, 0x28u);
      }
    }

    v229 = [NSDate dateWithTimeIntervalSinceNow:v215];
    if (v201)
    {
      objc_setProperty_nonatomic_copy(v201, v228, v229, 16);
    }

    [v435 updateNextRetryInterval:v201];
    goto LABEL_229;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v203 = NFLogGetLogger();
  v204 = v430;
  if (v203)
  {
    v205 = v203;
    v206 = object_getClass(v32);
    v207 = class_isMetaClass(v206);
    v208 = object_getClassName(v32);
    v411 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
    v209 = 45;
    if (v207)
    {
      v209 = 43;
    }

    v205(3, "%c[%{public}s %{public}s]:%i Retried too many times.  Giving up.", v209, v208, v411, 2618);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v210 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
  {
    v211 = object_getClass(v32);
    if (class_isMetaClass(v211))
    {
      v212 = 43;
    }

    else
    {
      v212 = 45;
    }

    v213 = object_getClassName(v32);
    v214 = sel_getName("_connectToServer:oneTimeConnection:secureElementManagerSession:");
    *buf = 67109890;
    *&buf[4] = v212;
    v441 = 2082;
    v442 = v213;
    v443 = 2082;
    v444 = v214;
    v445 = 1024;
    v446 = 2618;
    _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Retried too many times.  Giving up.", buf, 0x22u);
  }

  sub_10002D00C(v435);
LABEL_229:
  [v435 save];
  v230 = [NSError alloc];
  v231 = [NSString stringWithUTF8String:"seld"];
  v437 = NSLocalizedDescriptionKey;
  if (v33 == 14)
  {
    *buf = @"SE is unavailable.";
    v232 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
    v233 = v230;
    v234 = v231;
    v235 = 14;
  }

  else
  {
    *buf = @"Unable to connect.";
    v232 = [NSDictionary dictionaryWithObjects:buf forKeys:&v437 count:1];
    v233 = v230;
    v234 = v231;
    v235 = v33;
  }

  v236 = [v233 initWithDomain:v234 code:v235 userInfo:v232];
  v9 = v427;

  v159 = v236;
LABEL_233:
  v31 = v435;
LABEL_234:
  PLLogRegisteredEvent();

  if (v159)
  {
LABEL_404:
    if ([v159 code] != 11 && objc_msgSend(v159, "code") != 12)
    {
      goto LABEL_410;
    }

    if (a5)
    {
      *a5 = 1;
    }

LABEL_409:
    v159 = 0;
  }

LABEL_410:

  return v159;
}

void sub_100021878(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (*(v4 + 56) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v4);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v4);
        Name = sel_getName("_executeNowOrDelayIfNotInitiatlized:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i APS already initialized", v10, ClassName, Name, 1241);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v4);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v13;
        v21 = 2082;
        v22 = object_getClassName(v4);
        v23 = 2082;
        v24 = sel_getName("_executeNowOrDelayIfNotInitiatlized:");
        v25 = 1024;
        v26 = 1241;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i APS already initialized", &buf, 0x22u);
      }

      objc_sync_exit(v4);
      v3[2](v3, 0);
    }

    else
    {
      objc_initWeak(&buf, v4);
      v14 = *(v4 + 21);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100021AFC;
      v17[3] = &unk_100054AE0;
      objc_copyWeak(v19, &buf);
      v19[1] = "_executeNowOrDelayIfNotInitiatlized:";
      v18 = v3;
      v15 = objc_retainBlock(v17);
      [v14 addObject:v15];

      objc_destroyWeak(v19);
      objc_destroyWeak(&buf);
      objc_sync_exit(v4);
    }
  }
}

void sub_100021AFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(0);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(0);
      Name = sel_getName(*(a1 + 48));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i self no longer exists.", v9, ClassName, Name, 1248);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(0);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(0);
      v14 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v43 = v12;
      v44 = 2082;
      v45 = v13;
      v46 = 2082;
      v47 = v14;
      v48 = 1024;
      v49 = 1248;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i self no longer exists.", buf, 0x22u);
    }

    v15 = *(a1 + 32);
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v40 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Unknown Error"];
    v41 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v20 = v16;
    v21 = v17;
    v22 = 6;
    goto LABEL_24;
  }

  if ((*(WeakRetained + 56) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(v3);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(v3);
      v37 = sel_getName(*(a1 + 48));
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i APS not initialized", v28, v27, v37, 1251);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(v3);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(v3);
      v33 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v43 = v31;
      v44 = 2082;
      v45 = v32;
      v46 = 2082;
      v47 = v33;
      v48 = 1024;
      v49 = 1251;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i APS not initialized", buf, 0x22u);
    }

    v15 = *(a1 + 32);
    v34 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v38 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Timeout"];
    v39 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v20 = v34;
    v21 = v17;
    v22 = 5;
LABEL_24:
    v35 = [v20 initWithDomain:v21 code:v22 userInfo:v19];
    (*(v15 + 16))(v15, v35);

    goto LABEL_25;
  }

  (*(*(a1 + 32) + 16))();
LABEL_25:
}

void sub_10002222C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = v3;
    if (v2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_setRegistrationInfo:primaryRegionTopic:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i theInfo=%{public}@, thePrimaryRegionTopic=%{public}@", v11, ClassName, Name, 1269, v4, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v2);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110402;
        *&buf[4] = v14;
        v20 = 2082;
        v21 = object_getClassName(v2);
        v22 = 2082;
        v23 = sel_getName("_setRegistrationInfo:primaryRegionTopic:");
        v24 = 1024;
        v25 = 1269;
        v26 = 2114;
        v27 = v4;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i theInfo=%{public}@, thePrimaryRegionTopic=%{public}@", buf, 0x36u);
      }

      sub_100018248(v2);
      if (v4 && v5)
      {
        if (v2[6])
        {
          v15 = v2[3];
          v16 = sub_100018770(v2, 0);
          sub_100037160(v15, v16);

          *buf = v5;
          v17 = [NSArray arrayWithObjects:buf count:1];
          sub_10001CEC4(v2, v17);
        }
      }
    }
  }
}

void sub_100022554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i %{public}@", v11, ClassName, Name, 1325, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v41 = v14;
      v42 = 2082;
      v43 = v15;
      v44 = 2082;
      v45 = v16;
      v46 = 1024;
      v47 = 1325;
      v48 = 2114;
      v49 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v17 = sub_100033310();
    v18 = sub_100037C1C(v17, *(a1 + 40), v5);

    if (v18)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(*(a1 + 32));
        v22 = class_isMetaClass(v21);
        v23 = object_getClassName(*(a1 + 32));
        v37 = sel_getName(*(a1 + 56));
        v24 = 45;
        if (v22)
        {
          v24 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v24, v23, v37, 1332);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        v28 = object_getClassName(*(a1 + 32));
        v29 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v41 = v27;
        v42 = 2082;
        v43 = v28;
        v44 = 2082;
        v45 = v29;
        v46 = 1024;
        v47 = 1332;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
      }

      v30 = *(a1 + 48);
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"seld"];
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Failed to get next request.";
      v33 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v34 = [v31 initWithDomain:v32 code:12 userInfo:v33];
      (*(v30 + 16))(v30, 0, v34);
    }

    [v5 endSession];
  }
}

void sub_1000229F8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);
    v6 = v4;
    if (!v3)
    {
LABEL_29:

      return;
    }

    v7 = v5;
    if (v7)
    {
      v8 = v7;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("_nextRequestForServer:completion:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i %{public}@", v13, ClassName, Name, 1313, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v15 = object_getClass(v3);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v16;
      *v38 = 2082;
      *&v38[2] = object_getClassName(v3);
      *&v38[10] = 2082;
      *&v38[12] = sel_getName("_nextRequestForServer:completion:");
      *&v38[20] = 1024;
      *&v38[22] = 1313;
      *&v38[26] = 2114;
      *&v38[28] = v8;
      v17 = "%c[%{public}s %{public}s]:%i %{public}@";
    }

    else
    {
      v18 = sub_1000368E4(v3[3]);
      if (!v18)
      {
        v30 = [NSError alloc];
        v28 = [NSString stringWithUTF8String:"seld"];
        v41 = NSLocalizedDescriptionKey;
        *buf = @"No registration info.";
        v31 = [NSDictionary dictionaryWithObjects:buf forKeys:&v41 count:1];
        v32 = [v30 initWithDomain:v28 code:39 userInfo:v31];
        (*(v6 + 2))(v6, 0, v32);

        goto LABEL_28;
      }

      v8 = v18;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(v3);
        v22 = class_isMetaClass(v21);
        v34 = object_getClassName(v3);
        v36 = sel_getName("_nextRequestForServer:completion:");
        v23 = 45;
        if (v22)
        {
          v23 = 43;
        }

        v20(6, "%c[%{public}s %{public}s]:%i default = %{public}@", v23, v34, v36, 1316, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        v26 = +[NFHardwareManager sharedHardwareManager];
        *buf = _NSConcreteStackBlock;
        *v38 = 3221225472;
        *&v38[8] = sub_100022554;
        *&v38[16] = &unk_100054B30;
        *&v38[24] = v3;
        v40 = "_nextRequestForServer:completion:";
        v27 = v6;
        *&v38[32] = v8;
        v39 = v27;
        v28 = v8;
        v29 = [v26 startSecureElementManagerSession:buf];

LABEL_28:
        goto LABEL_29;
      }

      v24 = object_getClass(v3);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v25;
      *v38 = 2082;
      *&v38[2] = object_getClassName(v3);
      *&v38[10] = 2082;
      *&v38[12] = sel_getName("_nextRequestForServer:completion:");
      *&v38[20] = 1024;
      *&v38[22] = 1316;
      *&v38[26] = 2114;
      *&v38[28] = v8;
      v17 = "%c[%{public}s %{public}s]:%i default = %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x2Cu);
    goto LABEL_27;
  }

  v2 = *(*(a1 + 48) + 16);

  v2();
}

void sub_100022E90(uint64_t a1)
{
  v2 = sub_100038CE4(*(*(a1 + 32) + 24), *(a1 + 40));
  v3 = v2 == 0;
  if (!v2)
  {
    v4 = sub_100037550(*(*(a1 + 32) + 24), *(a1 + 40));
    if (!v4)
    {
      v35 = *(a1 + 64);
      v36 = [NSError alloc];
      v2 = [NSString stringWithUTF8String:"seld"];
      v54 = NSLocalizedDescriptionKey;
      v55 = @"Unable to create server state";
      v7 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v9 = [v36 initWithDomain:v2 code:34 userInfo:v7];
      v16 = *(v35 + 16);
LABEL_34:
      v16();
      goto LABEL_35;
    }

    v2 = v4;
    [v4 setInitialClientRequestInfo:*(a1 + 48)];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 32);
    v43 = 0;
    v7 = sub_10001D610(v6, v5, &v43);
    v8 = v43;
    v9 = v8;
    if (!v7 || v8)
    {
      if (!v8)
      {
        v10 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v52[0] = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:"No resources"];
        v53[0] = v12;
        v53[1] = &off_1000573D8;
        v52[1] = @"Line";
        v52[2] = @"Method";
        v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
        v53[2] = v13;
        v52[3] = NSDebugDescriptionErrorKey;
        v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 1398];
        v53[3] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
        v9 = [v10 initWithDomain:v11 code:34 userInfo:v15];
      }

      v16 = *(*(a1 + 64) + 16);
      goto LABEL_34;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  v19 = sub_100018770(v17, 0);
  sub_100037160(v18, v19);

  v42 = 0;
  do
  {
    v9 = sub_10001E43C(*(a1 + 32), v2, 1, v7, &v42);
    if (v42 == 1)
    {
      v20 = sub_100038CE4(*(*(a1 + 32) + 24), *(a1 + 40));

      if (v20)
      {
        v2 = v20;
      }

      else
      {
        v21 = sub_100037550(*(*(a1 + 32) + 24), *(a1 + 40));
        v2 = v21;
        if (v21 == 0 || v3)
        {
          if (!v21)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v23 = Logger;
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 72));
              v27 = 45;
              if (isMetaClass)
              {
                v27 = 43;
              }

              v23(4, "%c[%{public}s %{public}s]:%i Missing expected state info", v27, ClassName, Name, 1429);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v28 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v29))
              {
                v30 = 43;
              }

              else
              {
                v30 = 45;
              }

              v31 = object_getClassName(*(a1 + 32));
              v32 = sel_getName(*(a1 + 72));
              *buf = 67109890;
              v45 = v30;
              v46 = 2082;
              v47 = v31;
              v48 = 2082;
              v49 = v32;
              v50 = 1024;
              v51 = 1429;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing expected state info", buf, 0x22u);
            }

            v2 = 0;
            v42 = 0;
          }
        }

        else
        {
          [v21 setInitialClientRequestInfo:*(a1 + 48)];
          v3 = 0;
        }
      }
    }
  }

  while (!v9 && (v42 & 1) != 0);
  if (v7)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000233E8;
    v38[3] = &unk_100054D10;
    v41 = *(a1 + 64);
    v33 = v9;
    v34 = *(a1 + 32);
    v39 = v33;
    v40 = v34;
    [v7 endSessionWithCompletion:v38];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    sub_100015830(*(a1 + 32));
  }

LABEL_35:
}

void sub_1000233E8(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  sub_100015830(v3);
}

void sub_100023720(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 80));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing server connection request from %{public}@", v11, ClassName, Name, 1457, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 80));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    *&buf[4] = v14;
    *v80 = 2082;
    *&v80[2] = v15;
    *&v80[10] = 2082;
    *&v80[12] = v16;
    *&v80[20] = 1024;
    *&v80[22] = 1457;
    *&v80[26] = 2114;
    *&v80[28] = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing server connection request from %{public}@", buf, 0x2Cu);
  }

  if (!v3)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 48);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v18)
    {
LABEL_47:

      goto LABEL_48;
    }

    v26 = v22;
    if (v26)
    {
      v27 = v26;
      v78 = v23;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v18);
        v31 = v22;
        v32 = v24;
        v33 = class_isMetaClass(v30);
        v72 = object_getClassName(v18);
        v75 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
        v34 = !v33;
        v24 = v32;
        v22 = v31;
        v35 = 45;
        if (!v34)
        {
          v35 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i %{public}@", v35, v72, v75, 1361, v27);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = object_getClass(v18);
        v38 = v22;
        v39 = v24;
        if (class_isMetaClass(v37))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(v18);
        v42 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
        *buf = 67110146;
        *&buf[4] = v40;
        v24 = v39;
        v22 = v38;
        *v80 = 2082;
        *&v80[2] = v41;
        *&v80[10] = 2082;
        *&v80[12] = v42;
        *&v80[20] = 1024;
        *&v80[22] = 1361;
        *&v80[26] = 2114;
        *&v80[28] = v27;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v43 = sub_10003687C(v18[3], v27);

      if (!v43)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(v18);
          v47 = class_isMetaClass(v46);
          v73 = object_getClassName(v18);
          v76 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
          v48 = 45;
          if (v47)
          {
            v48 = 43;
          }

          v45(4, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", v48, v73, v76, 1363, v27);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = object_getClass(v18);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(v18);
          v53 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
          *buf = 67110146;
          *&buf[4] = v51;
          *v80 = 2082;
          *&v80[2] = v52;
          *&v80[10] = 2082;
          *&v80[12] = v53;
          *&v80[20] = 1024;
          *&v80[22] = 1363;
          *&v80[26] = 2114;
          *&v80[28] = v27;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", buf, 0x2Cu);
        }

        v54 = [NSError alloc];
        v55 = [NSString stringWithUTF8String:"seld"];
        v85 = NSLocalizedDescriptionKey;
        *buf = @"No registered URL.";
        v56 = [NSDictionary dictionaryWithObjects:buf forKeys:&v85 count:1];
        v57 = [v54 initWithDomain:v55 code:39 userInfo:v56];
        (*(v25 + 2))(v25, v57);

        v23 = v78;
        goto LABEL_46;
      }
    }

    else
    {
      v58 = sub_1000368E4(v18[3]);
      if (!v58)
      {
        v69 = [NSError alloc];
        v27 = [NSString stringWithUTF8String:"seld"];
        v85 = NSLocalizedDescriptionKey;
        *buf = @"No registration info.";
        v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v85 count:1];
        v71 = [v69 initWithDomain:v27 code:39 userInfo:v70];
        (*(v25 + 2))(v25, v71);

        goto LABEL_46;
      }

      v27 = v58;
      v78 = v23;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFLogGetLogger();
      if (v59)
      {
        v60 = v59;
        v61 = object_getClass(v18);
        v62 = class_isMetaClass(v61);
        v74 = object_getClassName(v18);
        v77 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
        v63 = 45;
        if (v62)
        {
          v63 = 43;
        }

        v60(6, "%c[%{public}s %{public}s]:%i default = %{public}@", v63, v74, v77, 1369, v27);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = object_getClass(v18);
        if (class_isMetaClass(v65))
        {
          v66 = 43;
        }

        else
        {
          v66 = 45;
        }

        v67 = object_getClassName(v18);
        v68 = sel_getName("_connectToServer:initialClientRequestInfo:sessionToken:completion:");
        *buf = 67110146;
        *&buf[4] = v66;
        *v80 = 2082;
        *&v80[2] = v67;
        *&v80[10] = 2082;
        *&v80[12] = v68;
        *&v80[20] = 1024;
        *&v80[22] = 1369;
        *&v80[26] = 2114;
        *&v80[28] = v27;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i default = %{public}@", buf, 0x2Cu);
      }
    }

    *buf = _NSConcreteStackBlock;
    *v80 = 3221225472;
    *&v80[8] = sub_100022E90;
    *&v80[16] = &unk_100054B80;
    *&v80[24] = v18;
    *&v80[32] = v27;
    v23 = v78;
    v81 = v78;
    v83 = v25;
    v82 = v24;
    v84 = "_connectToServer:initialClientRequestInfo:sessionToken:completion:";
    v27 = v27;
    sub_1000198F4(v18, buf);

LABEL_46:
    goto LABEL_47;
  }

  (*(*(a1 + 72) + 16))();
LABEL_48:
}

void sub_100023F30(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    if (v7)
    {
      v8 = v7;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_queueServerConnection:callback:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i %{public}@", v13, ClassName, Name, 1475, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(a1);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v60 = v16;
        v61 = 2082;
        v62 = object_getClassName(a1);
        v63 = 2082;
        v64 = sel_getName("_queueServerConnection:callback:");
        v65 = 1024;
        v66 = 1475;
        v67 = 2114;
        v68 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v17 = sub_10003687C(a1[3], v8);

      if (!v17)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v19 = v18;
          v20 = object_getClass(a1);
          v21 = class_isMetaClass(v20);
          v49 = object_getClassName(a1);
          v52 = sel_getName("_queueServerConnection:callback:");
          v22 = 45;
          if (v21)
          {
            v22 = 43;
          }

          v19(4, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", v22, v49, v52, 1477, v8);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = object_getClass(a1);
          if (class_isMetaClass(v24))
          {
            v25 = 43;
          }

          else
          {
            v25 = 45;
          }

          v26 = object_getClassName(a1);
          v27 = sel_getName("_queueServerConnection:callback:");
          *buf = 67110146;
          v60 = v25;
          v61 = 2082;
          v62 = v26;
          v63 = 2082;
          v64 = v27;
          v65 = 1024;
          v66 = 1477;
          v67 = 2114;
          v68 = v8;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", buf, 0x2Cu);
        }

        if (v6)
        {
          v28 = [NSError alloc];
          v29 = [NSString stringWithUTF8String:"seld"];
          v57 = NSLocalizedDescriptionKey;
          v58 = @"No registered URL.";
          v30 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v31 = [v28 initWithDomain:v29 code:39 userInfo:v30];
          v6[2](v6, v31);
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      v32 = sub_1000368E4(a1[3]);
      if (!v32)
      {
        if (v6)
        {
          v44 = [NSError alloc];
          v45 = [NSString stringWithUTF8String:"seld"];
          v55 = NSLocalizedDescriptionKey;
          v56 = @"No registration info.";
          v46 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v47 = [v44 initWithDomain:v45 code:39 userInfo:v46];
          v6[2](v6, v47);
        }

        v8 = 0;
        goto LABEL_40;
      }

      v8 = v32;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v50 = object_getClassName(a1);
        v53 = sel_getName("_queueServerConnection:callback:");
        v37 = 45;
        if (v36)
        {
          v37 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i default = %{public}@", v37, v50, v53, 1483, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = object_getClass(a1);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        *buf = 67110146;
        v60 = v40;
        v61 = 2082;
        v62 = object_getClassName(a1);
        v63 = 2082;
        v64 = sel_getName("_queueServerConnection:callback:");
        v65 = 1024;
        v66 = 1483;
        v67 = 2114;
        v68 = v8;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i default = %{public}@", buf, 0x2Cu);
      }
    }

    v41 = a1[3];
    v42 = sub_100018770(a1, 0);
    sub_100037160(v41, v42);

    v54 = v8;
    v43 = [NSArray arrayWithObjects:&v54 count:1];
    sub_10001CEC4(a1, v43);

    if (v6)
    {
      v6[2](v6, 0);
    }

    goto LABEL_40;
  }

LABEL_41:
}

void sub_100024828(uint64_t a1, uint64_t a2)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1511, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 2082;
    v23 = v16;
    v24 = 1024;
    v25 = 1511;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (!a2)
  {
    sub_100023F30(*(a1 + 32), *(a1 + 48), 0);
  }
}

void sub_100024A04(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v74 = objc_opt_new();
    v7 = a1;
    objc_sync_enter(v7);
    v8 = *(v7 + 56);
    objc_sync_exit(v7);

    if (v8)
    {
      v73 = v6;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v5;
      v9 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
      if (v9)
      {
        v10 = v9;
        v76 = *v78;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v78 != v76)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v77 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = sub_100036950(v7[3], v12);
              if (!v13)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v15 = Logger;
                  Class = object_getClass(v7);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(v7);
                  Name = sel_getName("_queueServerConnectionForApplets:completion:");
                  v18 = 45;
                  if (isMetaClass)
                  {
                    v18 = 43;
                  }

                  v15(4, "%c[%{public}s %{public}s]:%i No server for applet: %{public}@", v18, ClassName, Name, 1542, v12);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v19 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v20 = object_getClass(v7);
                  if (class_isMetaClass(v20))
                  {
                    v21 = 43;
                  }

                  else
                  {
                    v21 = 45;
                  }

                  v22 = object_getClassName(v7);
                  v23 = sel_getName("_queueServerConnectionForApplets:completion:");
                  *buf = 67110146;
                  v82 = v21;
                  v83 = 2082;
                  v84 = v22;
                  v85 = 2082;
                  v86 = v23;
                  v87 = 1024;
                  v88 = 1542;
                  v89 = 2114;
                  v90 = v12;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No server for applet: %{public}@", buf, 0x2Cu);
                }

                v24 = sub_1000368E4(v7[3]);
                if (!v24)
                {
                  v6 = v73;
                  if (v73)
                  {
                    v62 = [NSError alloc];
                    v63 = [NSString stringWithUTF8String:"seld"];
                    v93 = NSLocalizedDescriptionKey;
                    v94 = @"No registration info.";
                    v64 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                    v65 = [v62 initWithDomain:v63 code:39 userInfo:v64];
                    v73[2](v73, v65);
                  }

                  goto LABEL_58;
                }

                v13 = v24;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v25 = NFLogGetLogger();
                if (v25)
                {
                  v26 = v25;
                  v27 = object_getClass(v7);
                  v28 = class_isMetaClass(v27);
                  v67 = object_getClassName(v7);
                  v70 = sel_getName("_queueServerConnectionForApplets:completion:");
                  v29 = 45;
                  if (v28)
                  {
                    v29 = 43;
                  }

                  v26(6, "%c[%{public}s %{public}s]:%i default = %{public}@", v29, v67, v70, 1544, v13);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v30 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = object_getClass(v7);
                  if (class_isMetaClass(v31))
                  {
                    v32 = 43;
                  }

                  else
                  {
                    v32 = 45;
                  }

                  v33 = object_getClassName(v7);
                  v34 = sel_getName("_queueServerConnectionForApplets:completion:");
                  *buf = 67110146;
                  v82 = v32;
                  v83 = 2082;
                  v84 = v33;
                  v85 = 2082;
                  v86 = v34;
                  v87 = 1024;
                  v88 = 1544;
                  v89 = 2114;
                  v90 = v13;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i default = %{public}@", buf, 0x2Cu);
                }
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v35 = NFLogGetLogger();
              if (v35)
              {
                v36 = v35;
                v37 = object_getClass(v7);
                v38 = class_isMetaClass(v37);
                v39 = object_getClassName(v7);
                v71 = sel_getName("_queueServerConnectionForApplets:completion:");
                v40 = 45;
                if (v38)
                {
                  v40 = 43;
                }

                v36(6, "%c[%{public}s %{public}s]:%i %{public}@ => %{public}@", v40, v39, v71, 1553, v12, v13);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v41 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = object_getClass(v7);
                if (class_isMetaClass(v42))
                {
                  v43 = 43;
                }

                else
                {
                  v43 = 45;
                }

                v44 = object_getClassName(v7);
                v45 = sel_getName("_queueServerConnectionForApplets:completion:");
                *buf = 67110402;
                v82 = v43;
                v83 = 2082;
                v84 = v44;
                v85 = 2082;
                v86 = v45;
                v87 = 1024;
                v88 = 1553;
                v89 = 2114;
                v90 = v12;
                v91 = 2114;
                v92 = v13;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ => %{public}@", buf, 0x36u);
              }

              [v74 addObject:v13];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v46 = NFLogGetLogger();
              if (v46)
              {
                v47 = v46;
                v48 = object_getClass(v7);
                v49 = class_isMetaClass(v48);
                v68 = object_getClassName(v7);
                v72 = sel_getName("_queueServerConnectionForApplets:completion:");
                v50 = 45;
                if (v49)
                {
                  v50 = 43;
                }

                v47(4, "%c[%{public}s %{public}s]:%i Skipping invalid aid string (%{public}@)", v50, v68, v72, 1537, v12);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v13 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v51 = object_getClass(v7);
                if (class_isMetaClass(v51))
                {
                  v52 = 43;
                }

                else
                {
                  v52 = 45;
                }

                v53 = object_getClassName(v7);
                v54 = sel_getName("_queueServerConnectionForApplets:completion:");
                *buf = 67110146;
                v82 = v52;
                v83 = 2082;
                v84 = v53;
                v85 = 2082;
                v86 = v54;
                v87 = 1024;
                v88 = 1537;
                v89 = 2114;
                v90 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Skipping invalid aid string (%{public}@)", buf, 0x2Cu);
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v55 = v7[3];
      v56 = sub_100018770(v7, 0);
      sub_100037160(v55, v56);

      sub_10001CEC4(v7, v74);
      v6 = v73;
      if (v73)
      {
        v73[2](v73, 0);
      }
    }

    else if (v6)
    {
      v57 = [NSError alloc];
      v58 = [NSString stringWithUTF8String:"nfcd"];
      v96 = NSLocalizedDescriptionKey;
      v59 = [NSString stringWithUTF8String:"Timeout"];
      v97 = v59;
      v60 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v61 = [v57 initWithDomain:v58 code:5 userInfo:v60];
      v6[2](v6, v61);
    }

LABEL_58:
  }
}

void sub_100025510(uint64_t a1, uint64_t a2)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1578, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 2082;
    v23 = v16;
    v24 = 1024;
    v25 = 1578;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (!a2)
  {
    sub_100024A04(*(a1 + 32), *(a1 + 48), 0);
  }
}

void sub_1000256EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 spStatusCode];
  if (v6)
  {
    v7 = [v5 spStatusCode];
    [v7 unsignedIntegerValue];
  }

  v8 = 0;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        if (byte_10005BAB0 != 1)
        {
          v8 = "External Tag Unavailable";
          goto LABEL_113;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v83 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 48));
          v87 = 45;
          if (isMetaClass)
          {
            v87 = 43;
          }

          v83(6, "%c[%{public}s %{public}s]:%i [TSM] External Tag Unavailable", v87, ClassName, Name, 1655);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v88 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v88))
          {
            v89 = 43;
          }

          else
          {
            v89 = 45;
          }

          v90 = object_getClassName(*(a1 + 32));
          v91 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v117 = v89;
          v118 = 2082;
          v119 = v90;
          v120 = 2082;
          v121 = v91;
          v122 = 1024;
          v123 = 1655;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] External Tag Unavailable", buf, 0x22u);
        }

        v8 = "External Tag Unavailable";
      }

      else
      {
        if (byte_10005BAB0 != 1)
        {
          v8 = "Unsupported tag";
          goto LABEL_113;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(*(a1 + 32));
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(*(a1 + 32));
          v108 = sel_getName(*(a1 + 48));
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v43(6, "%c[%{public}s %{public}s]:%i [TSM] Unsupported tag", v47, v46, v108, 1670);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v48 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          v50 = object_getClassName(*(a1 + 32));
          v51 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v117 = v49;
          v118 = 2082;
          v119 = v50;
          v120 = 2082;
          v121 = v51;
          v122 = 1024;
          v123 = 1670;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Unsupported tag", buf, 0x22u);
        }

        v8 = "Unsupported tag";
      }

      goto LABEL_112;
    }

    switch(a3)
    {
      case 5:
        if (byte_10005BAB0 != 1)
        {
          v8 = "Tag access error";
          break;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFLogGetLogger();
        if (v72)
        {
          v73 = v72;
          v74 = object_getClass(*(a1 + 32));
          v75 = class_isMetaClass(v74);
          v76 = object_getClassName(*(a1 + 32));
          v111 = sel_getName(*(a1 + 48));
          v77 = 45;
          if (v75)
          {
            v77 = 43;
          }

          v73(6, "%c[%{public}s %{public}s]:%i [TSM] Tag access error", v77, v76, v111, 1685);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v78 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v78))
          {
            v79 = 43;
          }

          else
          {
            v79 = 45;
          }

          v80 = object_getClassName(*(a1 + 32));
          v81 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v117 = v79;
          v118 = 2082;
          v119 = v80;
          v120 = 2082;
          v121 = v81;
          v122 = 1024;
          v123 = 1685;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Tag access error", buf, 0x22u);
        }

        v8 = "Tag access error";
        goto LABEL_112;
      case 6:
        if (byte_10005BAB0 != 1)
        {
          v8 = "Bad Command error";
          break;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v92 = NFLogGetLogger();
        if (v92)
        {
          v93 = v92;
          v94 = object_getClass(*(a1 + 32));
          v95 = class_isMetaClass(v94);
          v96 = object_getClassName(*(a1 + 32));
          v113 = sel_getName(*(a1 + 48));
          v97 = 45;
          if (v95)
          {
            v97 = 43;
          }

          v93(6, "%c[%{public}s %{public}s]:%i [TSM] Bad Communication Error", v97, v96, v113, 1675);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v98 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v98))
          {
            v99 = 43;
          }

          else
          {
            v99 = 45;
          }

          v100 = object_getClassName(*(a1 + 32));
          v101 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v117 = v99;
          v118 = 2082;
          v119 = v100;
          v120 = 2082;
          v121 = v101;
          v122 = 1024;
          v123 = 1675;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Bad Communication Error", buf, 0x22u);
        }

        v8 = "Bad Command error";
LABEL_112:

        break;
      case 7:
        if (byte_10005BAB0 != 1)
        {
          v8 = "Reader mode protection enabled";
          break;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v10 = v9;
          v11 = object_getClass(*(a1 + 32));
          v12 = class_isMetaClass(v11);
          v13 = object_getClassName(*(a1 + 32));
          v105 = sel_getName(*(a1 + 48));
          v14 = 45;
          if (v12)
          {
            v14 = 43;
          }

          v10(6, "%c[%{public}s %{public}s]:%i [TSM] Reader mode protection enabled", v14, v13, v105, 1690);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v16))
          {
            v17 = 43;
          }

          else
          {
            v17 = 45;
          }

          v18 = object_getClassName(*(a1 + 32));
          v19 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v117 = v17;
          v118 = 2082;
          v119 = v18;
          v120 = 2082;
          v121 = v19;
          v122 = 1024;
          v123 = 1690;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reader mode protection enabled", buf, 0x22u);
        }

        v8 = "Reader mode protection enabled";
        goto LABEL_112;
    }

LABEL_113:
    v102 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"seld"];
    v114 = NSLocalizedDescriptionKey;
    v103 = [NSString stringWithUTF8String:v8];
    v115 = v103;
    v104 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v31 = [v102 initWithDomain:v26 code:a3 userInfo:v104];

    goto LABEL_114;
  }

  if (a3 > 0)
  {
    if (a3 == 1)
    {
      if (byte_10005BAB0 != 1)
      {
        v8 = "Session aborted";
        goto LABEL_113;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(*(a1 + 32));
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(*(a1 + 32));
        v110 = sel_getName(*(a1 + 48));
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(6, "%c[%{public}s %{public}s]:%i [TSM] Session aborted", v67, v66, v110, 1665);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v68 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(*(a1 + 32));
        v71 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v117 = v69;
        v118 = 2082;
        v119 = v70;
        v120 = 2082;
        v121 = v71;
        v122 = 1024;
        v123 = 1665;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Session aborted", buf, 0x22u);
      }

      v8 = "Session aborted";
    }

    else
    {
      if (byte_10005BAB0 != 1)
      {
        v8 = "Network Error";
        goto LABEL_113;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(*(a1 + 32));
        v35 = class_isMetaClass(v34);
        v36 = object_getClassName(*(a1 + 32));
        v107 = sel_getName(*(a1 + 48));
        v37 = 45;
        if (v35)
        {
          v37 = 43;
        }

        v33(6, "%c[%{public}s %{public}s]:%i [TSM] Network Error", v37, v36, v107, 1660);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v38 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        v40 = object_getClassName(*(a1 + 32));
        v41 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v117 = v39;
        v118 = 2082;
        v119 = v40;
        v120 = 2082;
        v121 = v41;
        v122 = 1024;
        v123 = 1660;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Network Error", buf, 0x22u);
      }

      v8 = "Network Error";
    }

    goto LABEL_112;
  }

  if (a3 == -1)
  {
    if (byte_10005BAB0 != 1)
    {
      v8 = "Unknown error";
      goto LABEL_113;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(*(a1 + 32));
      v55 = class_isMetaClass(v54);
      v56 = object_getClassName(*(a1 + 32));
      v109 = sel_getName(*(a1 + 48));
      v57 = 45;
      if (v55)
      {
        v57 = 43;
      }

      v53(6, "%c[%{public}s %{public}s]:%i [TSM] Unknown error", v57, v56, v109, 1680);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v58 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(*(a1 + 32));
      v61 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v117 = v59;
      v118 = 2082;
      v119 = v60;
      v120 = 2082;
      v121 = v61;
      v122 = 1024;
      v123 = 1680;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Unknown error", buf, 0x22u);
    }

    v8 = "Unknown error";
    goto LABEL_112;
  }

  if (a3)
  {
    goto LABEL_113;
  }

  if (byte_10005BAB0 != 1)
  {
    v31 = 0;
    goto LABEL_115;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(*(a1 + 32));
    v23 = class_isMetaClass(v22);
    v24 = object_getClassName(*(a1 + 32));
    v106 = sel_getName(*(a1 + 48));
    v25 = 45;
    if (v23)
    {
      v25 = 43;
    }

    v21(6, "%c[%{public}s %{public}s]:%i [TSM] Success", v25, v24, v106, 1651);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    v29 = object_getClassName(*(a1 + 32));
    v30 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v117 = v28;
    v118 = 2082;
    v119 = v29;
    v120 = 2082;
    v121 = v30;
    v122 = 1024;
    v123 = 1651;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Success", buf, 0x22u);
  }

  v31 = 0;
LABEL_114:

LABEL_115:
  (*(*(a1 + 40) + 16))();
}

void sub_1000263C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 step]);
    v13 = [NSNumber numberWithUnsignedInteger:a3];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i state=%{public}@, spSessionStatus=%{public}@", v14, ClassName, Name, 1719, v12, v13);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(*(a1 + 32));
    v19 = sel_getName(*(a1 + 56));
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 step]);
    v21 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 67110402;
    v31 = v17;
    v32 = 2082;
    v33 = v18;
    v34 = 2082;
    v35 = v19;
    v36 = 1024;
    v37 = 1719;
    v38 = 2114;
    v39 = v20;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i state=%{public}@, spSessionStatus=%{public}@", buf, 0x36u);
  }

  if ([v5 isComplete])
  {
    v22 = sub_100033310();
    sub_1000388F0(v22, *(a1 + 40));

    [*(a1 + 32) handleCardIngestionStatus:11];
    sub_100015830(*(a1 + 32));
  }

  else
  {
    v23 = *(a1 + 48);
    v24 = [NSError alloc];
    v25 = [NSString stringWithUTF8String:"seld"];
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Pending card ingestion exist";
    v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v27 = [v24 initWithDomain:v25 code:2 userInfo:v26];
    (*(v23 + 16))(v23, v27, -1);
  }
}

void sub_10002699C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1747, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 64));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    *&buf[4] = v14;
    v179 = 2082;
    v180 = v15;
    v181 = 2082;
    v182 = v16;
    v183 = 1024;
    v184 = 1747;
    v185 = 2114;
    v186 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (!v3)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    v20 = *(a1 + 48);
    v21 = v19;
    if (!v18)
    {
LABEL_111:

      goto LABEL_112;
    }

    v22 = [v20 serverIdentifier];
    v23 = [v22 hasPrefix:@"http"];
    if (v22)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(v18);
        v27 = class_isMetaClass(v26);
        v147 = object_getClassName(v18);
        v152 = sel_getName("_ingestCard:callback:");
        v28 = 45;
        if (v27)
        {
          v28 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i identifier : %{public}@", v28, v147, v152, 1594, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = object_getClass(v18);
        v31 = v21;
        if (class_isMetaClass(v30))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(v18);
        v34 = sel_getName("_ingestCard:callback:");
        *buf = 67110146;
        *&buf[4] = v32;
        v21 = v31;
        v179 = 2082;
        v180 = v33;
        v181 = 2082;
        v182 = v34;
        v183 = 1024;
        v184 = 1594;
        v185 = 2114;
        v186 = v22;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i identifier : %{public}@", buf, 0x2Cu);
      }

      if ((v23 & 1) == 0)
      {
        v35 = sub_10003687C(v18[3], v22);

        if (!v35)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFLogGetLogger();
          if (v36)
          {
            v37 = v36;
            v38 = object_getClass(v18);
            v39 = class_isMetaClass(v38);
            v148 = object_getClassName(v18);
            v153 = sel_getName("_ingestCard:callback:");
            v40 = 45;
            if (v39)
            {
              v40 = 43;
            }

            v37(4, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", v40, v148, v153, 1596, v22);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = object_getClass(v18);
            if (class_isMetaClass(v42))
            {
              v43 = 43;
            }

            else
            {
              v43 = 45;
            }

            v44 = object_getClassName(v18);
            v45 = sel_getName("_ingestCard:callback:");
            *buf = 67110146;
            *&buf[4] = v43;
            v179 = 2082;
            v180 = v44;
            v181 = 2082;
            v182 = v45;
            v183 = 1024;
            v184 = 1596;
            v185 = 2114;
            v186 = v22;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No registered URL for %{public}@", buf, 0x2Cu);
          }

          v46 = [NSError alloc];
          v47 = [NSString stringWithUTF8String:"seld"];
          *&v187 = NSLocalizedDescriptionKey;
          *buf = @"No registered URL.";
          v48 = [NSDictionary dictionaryWithObjects:buf forKeys:&v187 count:1];
          v49 = v46;
          v50 = v47;
          v51 = 39;
          goto LABEL_50;
        }
      }
    }

    else
    {
      v52 = sub_1000368E4(v18[3]);
      if (!v52)
      {
        v75 = [NSError alloc];
        v76 = [NSString stringWithUTF8String:"seld"];
        *&v187 = NSLocalizedDescriptionKey;
        *buf = @"No registration info.";
        v77 = [NSDictionary dictionaryWithObjects:buf forKeys:&v187 count:1];
        v78 = [v75 initWithDomain:v76 code:39 userInfo:v77];
        (*(v21 + 2))(v21, v78, -1);

        v22 = 0;
LABEL_110:

        goto LABEL_111;
      }

      v22 = v52;
      v53 = v21;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(v18);
        v57 = class_isMetaClass(v56);
        v149 = object_getClassName(v18);
        v154 = sel_getName("_ingestCard:callback:");
        v58 = 45;
        if (v57)
        {
          v58 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i default = %{public}@", v58, v149, v154, 1602, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = object_getClass(v18);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(v18);
        v63 = sel_getName("_ingestCard:callback:");
        *buf = 67110146;
        *&buf[4] = v61;
        v179 = 2082;
        v180 = v62;
        v181 = 2082;
        v182 = v63;
        v183 = 1024;
        v184 = 1602;
        v185 = 2114;
        v186 = v22;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i default = %{public}@", buf, 0x2Cu);
      }

      v21 = v53;
    }

    v64 = [v20 uri];

    if (v64)
    {
      v47 = v18;
      objc_sync_enter(v47);
      v65 = v47[12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = [NSError alloc];
        v67 = [NSString stringWithUTF8String:"seld"];
        *&v187 = NSLocalizedDescriptionKey;
        *buf = @"Card ingestion is in progress";
        v68 = [NSDictionary dictionaryWithObjects:buf forKeys:&v187 count:1];
        v69 = [v66 initWithDomain:v67 code:2 userInfo:v68];
        (*(v21 + 2))(v21, v69, -1);
      }

      else
      {
        v172 = 0;
        v72 = [NFSecureElement embeddedSecureElementWithError:&v172];
        v73 = v172;
        v74 = [v72 serialNumber];

        if (v74)
        {
          v165 = v73;
          if (v23)
          {
            [NSURL URLWithString:v22];
          }

          else
          {
            sub_10003687C(v47[3], v22);
          }
          v94 = ;
          v95 = [NSString alloc];
          v96 = [v20 uri];
          v164 = v74;
          v97 = [v95 initWithFormat:@"v2/%@/%@", v74, v96];

          v162 = v97;
          v163 = v94;
          v98 = [v94 URLByAppendingPathComponent:v97];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v99 = NFLogGetLogger();
          if (v99)
          {
            v100 = v99;
            v101 = object_getClass(v47);
            v102 = class_isMetaClass(v101);
            v151 = object_getClassName(v47);
            v156 = sel_getName("_ingestCard:callback:");
            v103 = 45;
            if (v102)
            {
              v103 = 43;
            }

            v100(6, "%c[%{public}s %{public}s]:%i url: %{public}@", v103, v151, v156, 1636, v98);
          }

          v168 = v21;
          v166 = v3;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v104 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v105 = object_getClass(v47);
            if (class_isMetaClass(v105))
            {
              v106 = 43;
            }

            else
            {
              v106 = 45;
            }

            v107 = object_getClassName(v47);
            v108 = sel_getName("_ingestCard:callback:");
            *buf = 67110146;
            *&buf[4] = v106;
            v179 = 2082;
            v180 = v107;
            v181 = 2082;
            v182 = v108;
            v183 = 1024;
            v184 = 1636;
            v185 = 2114;
            v186 = v98;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i url: %{public}@", buf, 0x2Cu);
          }

          v109 = [NFRemoteAdminReaderState alloc];
          v110 = objc_opt_new();
          v161 = v98;
          v111 = [v98 absoluteString];
          v112 = [(NFRemoteAdminReaderState *)v109 initWithDictionary:v110 sourceURL:v111 originator:v22];

          [(NFRemoteAdminState *)v112 setPendingImmediateRetry:1];
          [(NFRemoteAdminReaderState *)v112 setRequestInfo:v20];
          v169[0] = _NSConcreteStackBlock;
          v169[1] = 3221225472;
          v169[2] = sub_1000256EC;
          v169[3] = &unk_100054BF8;
          v169[4] = v47;
          v171 = "_ingestCard:callback:";
          v160 = v168;
          v170 = v160;
          v167 = v112;
          [(NFRemoteAdminReaderState *)v112 setStateUpdateOnSessionEndedCallback:v169];
          v113 = v20;
          v114 = objc_opt_new();
          v115 = [v113 sessionToken];
          v116 = v115;
          if (v115 && [v115 length])
          {
            [v114 setObject:v116 forKeyedSubscript:@"cardSessionToken"];
          }

          v117 = [v113 cardServiceInfo];
          v118 = [v117 objectForKey:@"technology"];

          if (v118)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v118 length])
            {
              [v114 setObject:v118 forKeyedSubscript:@"technology"];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v119 = NFLogGetLogger();
              if (v119)
              {
                v120 = v119;
                v121 = object_getClass(v47);
                v158 = class_isMetaClass(v121);
                v159 = object_getClassName(v47);
                v157 = sel_getName("_generateReaderParamsFromRequest:");
                v122 = 45;
                if (v158)
                {
                  v122 = 43;
                }

                v120(4, "%c[%{public}s %{public}s]:%i Unexpected technology object type", v122, v159, v157, 1085);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v123 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                v124 = object_getClass(v47);
                if (class_isMetaClass(v124))
                {
                  v125 = 43;
                }

                else
                {
                  v125 = 45;
                }

                v126 = object_getClassName(v47);
                v127 = sel_getName("_generateReaderParamsFromRequest:");
                *buf = 67109890;
                *&buf[4] = v125;
                v179 = 2082;
                v180 = v126;
                v181 = 2082;
                v182 = v127;
                v183 = 1024;
                v184 = 1085;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected technology object type", buf, 0x22u);
              }
            }
          }

          v128 = [v113 cardServiceInfo];
          v129 = [v128 objectForKey:@"version"];

          if (!v129 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v130 = [NSNumber numberWithInt:2];

            v129 = v130;
          }

          [v114 setObject:v129 forKeyedSubscript:@"version"];

          [(NFRemoteAdminReaderState *)v167 setParameters:v114];
          v131 = v47[3];
          v132 = sub_100018770(v47, @"seld");
          sub_100037160(v131, v132);

          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v133 = sub_100033310();
          v134 = sub_100038884(v133);

          v135 = [v134 countByEnumeratingWithState:&v187 objects:buf count:16];
          if (v135)
          {
            v136 = v135;
            v137 = *v188;
            while (2)
            {
              for (i = 0; i != v136; i = i + 1)
              {
                if (*v188 != v137)
                {
                  objc_enumerationMutation(v134);
                }

                v139 = *(*(&v187 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v141 = [v139 stateUpdateOnSessionEndedCallback];

                  if (v141)
                  {
                    v142 = [NSError alloc];
                    v143 = [NSString stringWithUTF8String:"seld"];
                    v177 = NSLocalizedDescriptionKey;
                    v173[0] = @"Pending card ingestion exist";
                    v144 = [NSDictionary dictionaryWithObjects:v173 forKeys:&v177 count:1];
                    v145 = [v142 initWithDomain:v143 code:2 userInfo:v144];
                    (*(v160 + 2))(v160, v145, -1);

                    v3 = v166;
                    v146 = v167;
                  }

                  else
                  {
                    [v139 setPendingImmediateRetry:1];
                    v173[0] = _NSConcreteStackBlock;
                    v173[1] = 3221225472;
                    v173[2] = sub_1000263C8;
                    v173[3] = &unk_100054C20;
                    v173[4] = v47;
                    v176 = "_ingestCard:callback:";
                    v146 = v167;
                    v174 = v167;
                    v175 = v160;
                    [v139 setStateUpdateOnSessionEndedCallback:v173];
                    sub_100015830(v47);

                    v3 = v166;
                  }

                  v21 = v168;

                  goto LABEL_108;
                }
              }

              v136 = [v134 countByEnumeratingWithState:&v187 objects:buf count:16];
              if (v136)
              {
                continue;
              }

              break;
            }
          }

          v140 = sub_100033310();
          sub_1000388F0(v140, v167);

          [v47 handleCardIngestionStatus:11];
          objc_sync_exit(v47);

          sub_100015830(v47);
          v3 = v166;
          v21 = v168;
          goto LABEL_110;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(v47);
          v82 = class_isMetaClass(v81);
          v150 = object_getClassName(v47);
          v155 = sel_getName("_ingestCard:callback:");
          v83 = 45;
          if (v82)
          {
            v83 = 43;
          }

          v80(3, "%c[%{public}s %{public}s]:%i Missing primary SEID - %{public}@", v83, v150, v155, 1622, v73);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v84 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = object_getClass(v47);
          if (class_isMetaClass(v85))
          {
            v86 = 43;
          }

          else
          {
            v86 = 45;
          }

          v87 = object_getClassName(v47);
          v88 = sel_getName("_ingestCard:callback:");
          *buf = 67110146;
          *&buf[4] = v86;
          v179 = 2082;
          v180 = v87;
          v181 = 2082;
          v182 = v88;
          v183 = 1024;
          v184 = 1622;
          v185 = 2114;
          v186 = v73;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing primary SEID - %{public}@", buf, 0x2Cu);
        }

        v89 = v73;
        v90 = [NSError alloc];
        v91 = [NSString stringWithUTF8String:"seld"];
        *&v187 = NSLocalizedDescriptionKey;
        *buf = @"Missing SEID";
        v92 = [NSDictionary dictionaryWithObjects:buf forKeys:&v187 count:1];
        v93 = [v90 initWithDomain:v91 code:15 userInfo:v92];
        (*(v21 + 2))(v21, v93, -1);
      }

LABEL_108:
      objc_sync_exit(v47);
      goto LABEL_109;
    }

    v70 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"seld"];
    *&v187 = NSLocalizedDescriptionKey;
    *buf = @"Missing parameter";
    v48 = [NSDictionary dictionaryWithObjects:buf forKeys:&v187 count:1];
    v49 = v70;
    v50 = v47;
    v51 = 9;
LABEL_50:
    v71 = [v49 initWithDomain:v50 code:v51 userInfo:v48];
    (*(v21 + 2))(v21, v71, -1);

LABEL_109:
    goto LABEL_110;
  }

  (*(*(a1 + 56) + 16))();
LABEL_112:
}