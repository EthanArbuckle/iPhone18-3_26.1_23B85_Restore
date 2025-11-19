id sub_100000EA8()
{
  v0 = _CFXPCCreateCFObjectFromXPCObject();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKeyedSubscript:@"Name"];
    v3 = [v1 objectForKeyedSubscript:@"Object"];
    v4 = [v1 objectForKeyedSubscript:@"UserInfo"];
    v5 = [[NSNotification alloc] initWithName:v2 object:v3 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000011A0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) pendingReplies];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 32) pendingReplies];
  [v8 removeAllObjects];
}

void sub_100001370(uint64_t a1)
{
  v3 = [*(a1 + 32) pendingReplies];
  v2 = objc_retainBlock(*(a1 + 40));
  [v3 addObject:v2];
}

void sub_10000148C(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  v4 = [NSString stringWithFormat:@"%@.location-query", v2];

  v3 = CPPowerAssertionCreate();
  [*(a1 + 32) _extensionQueue_deliverLocationPayloadToExtension:*(a1 + 40)];
  CFRelease(v3);
}

void sub_100001944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001980(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  if (a3)
  {
    if (a4)
    {
      v8 = dispatch_get_global_queue(21, 0);
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100002160;
      v68[3] = &unk_10000C340;
      v9 = *(a1 + 40);
      v70 = *(a1 + 56);
      v69 = v9;
      v51 = v8;
      v10 = [BSTimer scheduledTimerWithFireInterval:v8 queue:v68 handler:30.0];
      BSMachAbsoluteTime();
      v12 = v11;
      *v79 = 0;
      *&v79[8] = v79;
      *&v79[16] = 0x3032000000;
      *&v79[24] = sub_100001968;
      v80 = sub_100001978;
      v81 = 0;
      v13 = *(a1 + 40);
      obj = 0;
      v14 = [v13 beginExtensionRequestWithOptions:0 inputItems:0 error:&obj];
      objc_storeStrong(&v81, obj);
      objc_opt_class();
      v15 = v14;
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      [v10 cancel];
      v18 = [*(a1 + 40) _extensionContextForUUID:v17];
      if (!v18)
      {
        if (qword_100010A78 != -1)
        {
          sub_1000050B8();
        }

        v19 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*(*(a1 + 56) + 8) + 40);
          v21 = *(*&v79[8] + 40);
          *buf = 138543618;
          v72 = v20;
          v73 = 2114;
          v74 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not start an extension session: error=%{public}@", buf, 0x16u);
        }
      }

      [*(a1 + 40) pidForRequestIdentifier:v17];
      if (BSPIDIsBeingDebugged())
      {
        if (qword_100010A78 != -1)
        {
          sub_1000050B8();
        }

        v22 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_INFO))
        {
          v23 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138543618;
          v72 = v23;
          v73 = 2114;
          v74 = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] Extension is being debugged, will skip scheduling timers: sessionUUID=%{public}@", buf, 0x16u);
        }

        v24 = 0;
        v25 = 0;
      }

      else
      {
        BSMachAbsoluteTime();
        v35 = v34;
        v36 = [BSTimer alloc];
        v37 = fmax(v12 - v35 + 30.0, 0.0);
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100002230;
        v63[3] = &unk_10000C368;
        v66 = *(a1 + 56);
        v38 = v17;
        v64 = v38;
        v65 = *(a1 + 40);
        v25 = [v36 initWithFireInterval:v51 queue:v63 handler:v37];
        v39 = [BSTimer alloc];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10000230C;
        v59[3] = &unk_10000C390;
        v60 = *(a1 + 40);
        v40 = v38;
        v61 = v40;
        v62 = v18;
        v24 = [v39 initWithFireInterval:v51 queue:v59 handler:25.0];
        if (qword_100010A78 != -1)
        {
          sub_1000050B8();
        }

        v41 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_INFO))
        {
          v42 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138544130;
          v72 = v42;
          v73 = 2114;
          v74 = v40;
          v75 = 2048;
          v76 = v37;
          v77 = 2048;
          v78 = 0x4039000000000000;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "[%{public}@] Extension started, scheduled timers: sessionUUID=%{public}@, serviceTime=%lf, graceTime=%lf", buf, 0x2Au);
        }
      }

      [v25 schedule];
      [v24 schedule];
      v43 = [v18 _auxiliaryConnection];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100002428;
      v55[3] = &unk_10000C3B8;
      v44 = *(a1 + 56);
      v57 = v79;
      v58 = v44;
      v45 = v17;
      v56 = v45;
      v46 = [v43 synchronousRemoteObjectProxyWithErrorHandler:v55];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100002530;
      v52[3] = &unk_10000C340;
      v47 = *(a1 + 48);
      v54 = *(a1 + 56);
      v48 = v45;
      v53 = v48;
      [v46 didReceiveLocationPushPayload:v47 reply:v52];

      v49 = [v18 _auxiliaryConnection];
      v50 = [v49 remoteObjectProxy];
      [v50 serviceExtensionPerformCleanup];

      [v25 cancel];
      [v24 cancel];

      _Block_object_dispose(v79, 8);
    }

    else
    {
      if (qword_100010A78 != -1)
      {
        sub_1000050E0();
      }

      v30 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v32 = v30;
        v33 = [v31 bundleIdentifier];
        *v79 = 68289282;
        *&v79[8] = 2082;
        *&v79[10] = "";
        *&v79[18] = 2114;
        *&v79[20] = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationPush client has spent its allowance., client:%{public, location:escape_only}@}", v79, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_100010A78 != -1)
    {
      sub_1000050E0();
    }

    v26 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = v26;
      v29 = [v27 bundleIdentifier];
      *v79 = 138543362;
      *&v79[4] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Don't yet have non-provisional authorization for %{public}@, bailing...", v79, 0xCu);
    }
  }
}

id sub_100002160(uint64_t a1)
{
  if (qword_100010A78 != -1)
  {
    sub_1000050E0();
  }

  v2 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Extension will be killed because it used its runtime in starting up", &v5, 0xCu);
  }

  return [*(a1 + 32) _kill:9];
}

id sub_100002230(uint64_t a1)
{
  if (qword_100010A78 != -1)
  {
    sub_1000050E0();
  }

  v2 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension exceeded allowed time: sessionUUID=%{public}@", &v6, 0x16u);
  }

  return [*(a1 + 40) cancelExtensionRequestWithIdentifier:*(a1 + 32)];
}

void sub_10000230C(uint64_t a1)
{
  if (qword_100010A78 != -1)
  {
    sub_1000050E0();
  }

  v2 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entering grace time: sessionUUID=%{public}@", &v9, 0x16u);
  }

  v7 = [*(a1 + 48) _auxiliaryConnection];
  v8 = [v7 remoteObjectProxy];
  [v8 serviceExtensionWillTerminate];
}

void sub_100002428(void *a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  if (qword_100010A78 != -1)
  {
    sub_1000050E0();
  }

  v5 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[6] + 8) + 40);
    v7 = a1[4];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension connection encountered an error: sessionUUID=%{public}@, error=%{public}@", &v8, 0x20u);
  }
}

void sub_100002530(uint64_t a1)
{
  if (qword_100010A78 != -1)
  {
    sub_1000050E0();
  }

  v2 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension finished: sessionUUID=%{public}@", &v5, 0x16u);
  }
}

void sub_100002800(id a1)
{
  qword_100010A80 = os_log_create("com.apple.locationpushd", "PushDaemon");

  _objc_release_x1();
}

void sub_100002888(id a1)
{
  qword_100010C10 = objc_alloc_init(LPPushRegistrar);

  _objc_release_x1();
}

void sub_100002AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.locationpushd.app-uninstalled"))
  {
    if (qword_100010A78 != -1)
    {
      sub_100005108();
    }

    v5 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Launched by application uninstalled notification", &v8, 2u);
    }

    v6 = sub_100000EA8();
    if (v6)
    {
      [*(a1 + 32) handleApplicationUninstalledNotification:v6];
    }

    else
    {
      if (qword_100010A78 != -1)
      {
        sub_10000511C();
      }

      v7 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not create notification for XPC event %{public}@", &v8, 0xCu);
      }
    }
  }
}

void sub_100003820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003850(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifierToApplication];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [[LPApplication alloc] initWithAppBundleIdentifier:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (v9)
    {
      v10 = [*(a1 + 32) bundleIdentifierToApplication];
      [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

uint64_t sub_100003FC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _setTopicEnabled:*(a1 + 64) forConnection:v2 appBundleIdentifier:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_1000040D0(uint64_t a1)
{
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v2 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Handling app uninstall %{public}@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 40) _unregisterLocationPushApplication:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_100004450(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifierToApplication];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100004F60(id a1)
{
  qword_100010A80 = os_log_create("com.apple.locationpushd", "PushDaemon");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100010A78 != -1)
  {
    sub_100005144();
  }

  v1 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting locationpushd", v6, 2u);
  }

  v2 = +[LPPushRegistrar sharedInstance];
  objc_autoreleasePoolPop(v0);
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100005074(id a1)
{
  qword_100010A80 = os_log_create("com.apple.locationpushd", "PushDaemon");

  _objc_release_x1();
}