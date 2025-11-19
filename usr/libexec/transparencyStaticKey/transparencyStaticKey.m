void sub_100001B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_100001F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001F88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_100002368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained timeoutCanOccur])
  {
    [WeakRetained setTimeoutCanOccur:0];
    v1 = [WeakRetained transitionOperation];
    v2 = [v1 timeout:0];

    v3 = objc_alloc_init(NSOperationQueue);
    v4 = [WeakRetained transitionOperation];
    [v3 addOperation:v4];
  }
}

void sub_1000026E0(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002724(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002C28(uint64_t a1, void *a2)
{
  v3 = kKTApplicationIdentifierIDS;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002CD8;
  v6[3] = &unk_100094C30;
  v8 = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = v5;
  v7 = v5;
  [a2 accountKey:v3 complete:v6];
}

void sub_100002CD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002D74(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002DD4(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002E18(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002E5C(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003210(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003254(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003298(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000032DC(id a1, KTIDSSession *a2)
{
  v2 = a2;
  v3 = [(KTIDSSession *)v2 state];
  if ([v3 isEqual:kTransparencyStaticKeyStateCodeAvailable] & 1) != 0 || (objc_msgSend(v3, "isEqual:", kTransparencyStaticKeyStateCodeError))
  {
    v15[0] = kTransparencyStaticKeySessionID;
    v4 = [(KTIDSSession *)v2 sessionID];
    v15[1] = kTransparencyStaticKeyState;
    v16[0] = v4;
    v16[1] = v3;
    v5 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    if (qword_1000AEC70 != -1)
    {
      sub_10006D6AC();
    }

    v6 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      v10 = kTransparencyStaticKeyNotification;
      v11 = 1024;
      v12 = 1;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting notification: %{public}@: options = 0x%08x, %@", &v9, 0x1Cu);
    }

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    [v7 postNotificationName:kTransparencyStaticKeyNotification object:0 userInfo:v5 options:1];
  }

  else
  {
    if (qword_1000AEC70 != -1)
    {
      sub_10006D698();
    }

    v8 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dropped notification: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_100003500(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003544(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003588(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000038E4(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t start()
{
  [NSError _setFileNameLocalizationEnabled:0];
  bzero(buf, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, buf, 0x400uLL) || mkdir(buf, 0x1C0u) && *__error() != 17)
  {
    if (qword_1000AEC70 != -1)
    {
      sub_10006D760();
    }

    v14 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      v24 = 67109378;
      v25 = v16;
      v26 = 2080;
      v27 = v18;
      v19 = "failed to initialize temporary directory (%d): %s";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v19, &v24, 0x12u);
    }

LABEL_24:
    exit(1);
  }

  v0 = realpath_DARWIN_EXTSN(buf, 0);
  if (!v0)
  {
    if (qword_1000AEC70 != -1)
    {
      sub_10006D738();
    }

    v20 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
    {
      v15 = v20;
      v21 = *__error();
      v22 = __error();
      v23 = strerror(*v22);
      v24 = 67109378;
      v25 = v21;
      v26 = 2080;
      v27 = v23;
      v19 = "failed to resolve temporary directory (%d): %s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v1 = v0;
  setenv("SQLITE_TMPDIR", v0, 1);
  free(v1);
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(IDSServiceDelegate);
  v4 = dispatch_queue_create("main-ids-queue", 0);
  [(IDSServiceDelegate *)v3 setXpcQueue:v4];

  v5 = [[KTIDSSessionHandler alloc] initWithTransport:0 transparencyd:0 peerName:0];
  [(IDSServiceDelegate *)v3 setIdsTransport:v5];

  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.transparencyd.ids"];
  [v6 setDelegate:v3];
  [v6 resume];
  v7 = [(IDSServiceDelegate *)v3 xpcQueue];
  signal(15, 1);
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
  v9 = qword_1000AEC80;
  qword_1000AEC80 = v8;

  dispatch_source_set_event_handler(qword_1000AEC80, &stru_100094EA0);
  dispatch_activate(qword_1000AEC80);

  objc_autoreleasePoolPop(v2);
  if (qword_1000AEC70 != -1)
  {
    sub_10006D6E8();
  }

  v10 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "transparencyStaticKey accepting work", buf, 2u);
  }

  v11 = +[NSRunLoop mainRunLoop];
  [v11 run];

  if (qword_1000AEC70 != -1)
  {
    sub_10006D710();
  }

  v12 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "transparencyStaticKey stopping", buf, 2u);
  }

  return 1;
}

void sub_100003E2C(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003E70(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003EB4(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003EF8(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003F3C(id a1)
{
  if (qword_1000AEC70 != -1)
  {
    sub_10006D788();
  }

  v1 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v2, 2u);
  }

  xpc_transaction_exit_clean();
  xpc_transaction_try_exit_clean();
}

void sub_100003FC0(id a1)
{
  qword_1000AEC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100004910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000494C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained allDependentsSuccessful])
    {
      [v2 groupStart];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [v2 error];
        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not running due to some failed dependent: %@", &v4, 0xCu);
      }

      [v2 cancel];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received callback for released object", &v4, 2u);
  }
}

void sub_100004A74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained completeOperation];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received callback for released object", v3, 2u);
  }
}

void sub_1000051F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000052E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000588C(uint64_t a1)
{
  if ([*(a1 + 32) fillInError])
  {
    v2 = *(a1 + 32);
    v3 = [v2 internalSuccesses];
    [v2 allSuccessful:v3];
  }

  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 73) = 1;
}

void sub_100005DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_100006800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006818(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006830(void *a1)
{
  v2 = a1[4];
  v7 = [v2 idsHandleLookup];
  v3 = [v7 objectForKeyedSubscript:a1[5]];
  v4 = [v2 mapMailbox:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100006A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006A6C(void *a1)
{
  v2 = a1[4];
  v7 = [v2 sessionIDLookup];
  v3 = [v7 objectForKeyedSubscript:a1[5]];
  v4 = [v2 mapMailbox:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100006BCC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) sessionIDLookup];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) mapMailbox:*(*(&v10 + 1) + 8 * v7)];
        [v8 addObject:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_100006ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006EEC(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionIDLookup];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 removeMailbox:v4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v6 = [v5 oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006D898(v3);
    }
  }
}

void sub_1000073E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007400(uint64_t a1)
{
  v2 = [*(a1 + 32) peer];
  v3 = [NSMutableArray arrayWithObject:v2];

  v4 = [*(a1 + 32) otherNamesForPeer];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  [*(a1 + 40) dumpState:@"setupMailbox"];
  v6 = [*(a1 + 40) oslog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 componentsJoinedByString:{@", "}];
    *buf = 141558274;
    v48 = 1752392040;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Peer handles for setup: %{mask.hash}@", buf, 0x16u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v44 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v43 + 1) + 8 * v12);
      v14 = [*(a1 + 40) idsHandleLookup];
      v15 = [v14 objectForKeyedSubscript:v13];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v18 = [*(a1 + 40) oslog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(*(*(a1 + 56) + 8) + 40) handleID];
      v20 = [v19 kt_hexString];
      v21 = [*(a1 + 32) peer];
      *buf = 138543874;
      v48 = v20;
      v49 = 2160;
      v50 = 1752392040;
      v51 = 2112;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "connecting existing mailbox %{public}@ peer: %{mask.hash}@", buf, 0x20u);
    }

    [*(*(*(a1 + 56) + 8) + 40) setPeer:*(a1 + 32)];
    [*(*(*(a1 + 56) + 8) + 40) setMyPublicInfo:*(a1 + 48)];
    v22 = [*(*(*(a1 + 56) + 8) + 40) stateMachine];
    v23 = [v22 currentState];

    if (([v23 isEqual:off_1000ADE18]& 1) == 0 && ([v23 isEqual:off_1000ADE20]& 1) == 0)
    {
      v24 = [*(a1 + 40) oslog];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 32) peer];
        *buf = 141558530;
        v48 = 1752392040;
        v49 = 2112;
        v50 = v25;
        v51 = 2114;
        v52 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "resetting mailbox peer: %{mask.hash}@ state: %{public}@", buf, 0x20u);
      }

      [*(*(*(a1 + 56) + 8) + 40) restart];
    }
  }

  else
  {
    v26 = [SKMailbox alloc];
    v27 = [*(a1 + 40) oslog];
    v28 = *(a1 + 48);
    v29 = [*(a1 + 32) peer];
    v30 = [(SKMailbox *)v26 initWithLogging:v27 publicInfo:v28 peerIDSID:v29 session:*(a1 + 40)];
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    [*(*(*(a1 + 56) + 8) + 40) setPeer:*(a1 + 32)];
    [*(*(*(a1 + 56) + 8) + 40) setMyPublicInfo:*(a1 + 48)];
    v23 = [*(a1 + 40) oslog];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 32) peer];
      v34 = [*(a1 + 32) otherNamesForPeer];
      v35 = [v34 allObjects];
      v36 = [v35 componentsJoinedByString:{@", "}];
      v37 = [*(a1 + 32) lastUsedAddressOfMe];
      *buf = 141559298;
      v48 = 1752392040;
      v49 = 2112;
      v50 = v33;
      v51 = 2160;
      v52 = 1752392040;
      v53 = 2112;
      v54 = v36;
      v55 = 2160;
      v56 = 1752392040;
      v57 = 2112;
      v58 = v37;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "starting new mailbox with peer: %{mask.hash}@ other known handles: %{mask.hash}@ lastMe: %{mask.hash}@", buf, 0x3Eu);
    }
  }

  v38 = [*(a1 + 32) lastUsedAddressOfMe];

  if (v38)
  {
    v39 = [*(a1 + 40) oslog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [*(a1 + 32) lastUsedAddressOfMe];
      *buf = 138543362;
      v48 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Using send handle: %{public}@", buf, 0xCu);
    }

    v41 = *(*(*(a1 + 56) + 8) + 40);
    v42 = [*(a1 + 32) lastUsedAddressOfMe];
    [v41 setSourceIDSID:v42];
  }

  [*(a1 + 40) addMailbox:{*(*(*(a1 + 56) + 8) + 40), v43}];
}

void sub_100008334(uint64_t a1)
{
  v2 = [*(a1 + 32) idsHandleLookup];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 56) data];
    [v3 recvCommit:v4];
  }

  else
  {
    v4 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = 141558274;
      v7 = 1752392040;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ktCommit: mb not found for %{mask.hash}@", &v6, 0x16u);
    }
  }
}

void sub_100008524(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) oslog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 141558274;
      v8 = 1752392040;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "runIfHaveContact: have contact for %{mask.hash}@", &v7, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006DA38(a1);
    }
  }
}

void sub_100008850(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) data];
  [v1 recvReplyB:v2];
}

void sub_100008AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) data];
  [v1 recvDiscloseA:v2];
}

void sub_100008D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) data];
  [v1 recvConfirm:v2];
}

void sub_100009328(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006DDE8();
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000093FC;
    v9[3] = &unk_100095048;
    v9[4] = *(a1 + 32);
    [a2 ttr:v7 fromHandle:v8 complete:v9];
  }
}

void sub_1000093FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006DE58();
    }
  }
}

void sub_10000945C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10006DEC8();
  }
}

void sub_100009B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localSessionID];
    v9 = [v8 kt_hexString];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "mailbox-handle: %{public}@ session: %{public}@", &v10, 0x16u);
  }
}

void sub_100009DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006DF38();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009ED0;
    v8[3] = &unk_100095020;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    v10 = *(a1 + 48);
    [a2 haveContact:v9 complete:v8];
  }
}

void sub_100009ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10006DFA8(a1, v4, v5);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100009F58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10006E034();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000A144(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F644(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  [WeakRetained setFinishDate:v1];
}

void sub_10000F9D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000F9EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained finishingBlock];
    v4[2]();

    (*(*(a1 + 32) + 16))();
    v5 = [v3 completionHandlerDidRunCondition];
    [v5 fulfill];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v3 dependencies];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 removeDependency:*(*(&v11 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "completion handler called on deallocated operation instance", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

id sub_10000FD08(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setTimeoutCanOccur:0];
  }

  return result;
}

void sub_1000101F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained timeoutCanOccur])
  {
    v1 = [WeakRetained _onqueueTimeoutError];
    [WeakRetained setError:v1];

    [WeakRetained setTimeoutCanOccur:0];
    [WeakRetained cancel];
  }
}

void sub_100010914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1000116D0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) stateInit];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        [v2 setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = qword_1000AEC90;
  qword_1000AEC90 = v2;
}

void sub_1000118C8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) stateInit];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = qword_1000AECA0;
  qword_1000AECA0 = v2;
}

void sub_100011A64(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"Unlocked"];
  [v1 addObject:@"AccountChanged"];
  [v1 addObject:@"CKAccountChanged"];
  [v1 addObject:@"RepairIDSFlag"];
  [v1 addObject:@"ConfigBagFetch"];
  [v1 addObject:@"ManateeViewChanged"];
  [v1 addObject:@"FetchIDMS"];
  [v1 addObject:@"ValidateSelf"];
  [v1 addObject:@"CheckAccountSignatures"];
  [v1 addObject:@"FetchSelf"];
  [v1 addObject:@"FetchPublicKeys"];
  [v1 addObject:@"CheckIDSRegistration"];
  [v1 addObject:@"ValidateSelfOptIn"];
  [v1 addObject:@"ChangeOptInState"];
  [v1 addObject:@"EnsureIdentity"];
  [v1 addObject:@"CloudKitOutgoing"];
  [v1 addObject:@"CloudKitReboot"];
  [v1 addObject:@"CloudKitZoneRecreate"];
  [v1 addObject:@"OctagonTrustChanged"];
  [v1 addObject:@"CheckKTAccountKey"];
  [v1 addObject:@"StatusUpdate"];
  [v1 addObject:@"CheckKTAccountKeyChanged"];
  [v1 addObject:@"IDSStatusChanged"];
  [v1 addObject:@"CheckServerOptIn"];
  [v1 addObject:@"PokeIDS"];
  [v1 addObject:@"IDSServerBagChanged"];
  [v1 addObject:@"PendingCKVRepair"];
  v2 = qword_1000AECB0;
  qword_1000AECB0 = v1;
}

uint64_t sub_100011C5C()
{
  if (qword_1000AECC0 != -1)
  {
    sub_10006E0B8();
  }

  return qword_1000AECC8;
}

id sub_100011CBC(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = [NSMutableArray arrayWithObject:result];
  result = [(NSMutableArray *)v1 count];
  if (!result)
  {
    return result;
  }

  v31 = v43;
  v32 = v45;
  v33 = v41;
  v29 = v39;
  v30 = v47;
  v28 = v49;
  do
  {
    v2 = [(NSMutableArray *)v1 lastObject:v28];
    [(NSMutableArray *)v1 removeLastObject];
    [v2 setUnknownFields:0];
    v3 = [objc_opt_class() descriptor];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = v3[1];
    v5 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (!v5)
    {
      goto LABEL_50;
    }

    v6 = v5;
    v7 = *v51;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        if (*(v9[1] + 30) - 15 <= 1)
        {
          v10 = [*(*(&v50 + 1) + 8 * i) fieldType];
          if (v10 == 2)
          {
            v16 = v2[8];
            if (v16)
            {
              v17 = *(v16 + *(v9[1] + 24));
            }

            else
            {
              v17 = 0;
            }

            v18 = [v9 mapKeyDataType];
            if (v18 > 7)
            {
              if (v18 <= 10)
              {
                if (v18 != 9)
                {
LABEL_43:
                  v40[0] = _NSConcreteStackBlock;
                  v40[1] = 3221225472;
                  v41[0] = sub_1000122C0;
                  v41[1] = &unk_1000954C8;
                  v41[2] = v1;
                  v19 = v40;
                  goto LABEL_47;
                }

LABEL_38:
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v45[0] = sub_1000122B0;
                v45[1] = &unk_100095478;
                v45[2] = v1;
                v19 = v44;
LABEL_47:
                [v17 enumerateKeysAndObjectsUsingBlock:v19];
                continue;
              }

              if (v18 == 11)
              {
LABEL_44:
                v46[0] = _NSConcreteStackBlock;
                v46[1] = 3221225472;
                v47[0] = sub_1000122A8;
                v47[1] = &unk_100095450;
                v47[2] = v1;
                v19 = v46;
                goto LABEL_47;
              }

              if (v18 != 12)
              {
                if (v18 != 14)
                {
                  continue;
                }

                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v39[0] = sub_1000122C8;
                v39[1] = &unk_1000954F0;
                v39[2] = v1;
                v19 = v38;
                goto LABEL_47;
              }

LABEL_45:
              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v43[0] = sub_1000122B8;
              v43[1] = &unk_1000954A0;
              v43[2] = v1;
              v19 = v42;
              goto LABEL_47;
            }

            if (v18 > 3)
            {
              if (v18 != 4)
              {
                if (v18 == 5)
                {
                  goto LABEL_43;
                }

                if (v18 != 7)
                {
                  continue;
                }

                goto LABEL_38;
              }

              goto LABEL_45;
            }

            switch(v18)
            {
              case 0:
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v49[0] = sub_1000122A0;
                v49[1] = &unk_100095428;
                v49[2] = v1;
                v19 = v48;
                goto LABEL_47;
              case 1:
                goto LABEL_44;
              case 2:
                goto LABEL_38;
            }
          }

          else if (v10 == 1)
          {
            v14 = v2[8];
            if (v14)
            {
              v15 = *(v14 + *(v9[1] + 24));
            }

            else
            {
              v15 = 0;
            }

            if ([v15 count])
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v15];
            }
          }

          else
          {
            if (v10)
            {
              continue;
            }

            v11 = v9[1];
            v12 = v11[5];
            if ((v12 & 0x80000000) != 0)
            {
              v13 = v2[8];
              if (*(v13 + 4 * -v12) != v11[4])
              {
                continue;
              }

LABEL_34:
              [(NSMutableArray *)v1 addObject:*(v13 + v11[6])];
              continue;
            }

            v13 = v2[8];
            if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFC)) >> v12))
            {
              goto LABEL_34;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v6);
LABEL_50:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = [v2 extensionsCurrentlySet];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * j);
          if ([v25 dataType] - 15 <= 1)
          {
            v26 = [v25 isRepeated];
            v27 = [v2 getExtension:v25];
            if (v26)
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v27];
            }

            else
            {
              [(NSMutableArray *)v1 addObject:v27];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
      }

      while (v22);
    }

    result = [(NSMutableArray *)v1 count];
  }

  while (result);
  return result;
}

uint64_t sub_100012268(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return *(v2 + *(*(a2 + 8) + 24));
  }

  else
  {
    return 0;
  }
}

id sub_1000122D0(id result)
{
  if (result >= 30008)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled needing at least %d!", 30007, result];
  }

  if (result <= 30000)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Proto generation source compiled against runtime version %d, but this version of the runtime only supports back to %d!", result, 30001];
  }

  return result;
}

id sub_10001239C(id result)
{
  if (result != 30001)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled with version %d!", 30001, result, v1, v2];
  }

  return result;
}

BOOL sub_1000123F4(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 "descriptor")];

  return sub_10001243C(a1, v3);
}

BOOL sub_10001243C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v5 = *(a2 + 8);
    if ((*(v5 + 28) & 0xF02) != 0)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        v7 = *(v6 + *(v5 + 24));
      }

      else
      {
        v7 = 0;
      }

      return [v7 count] != 0;
    }

    else
    {
      v8 = *(v5 + 20);
      if ((v8 & 0x80000000) != 0)
      {
        return *(*(a1 + 64) + 4 * -v8) == *(v5 + 16);
      }

      else
      {
        return (*(*(a1 + 64) + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
      }
    }
  }

  return v4;
}

void sub_10001250C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 20);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) != *(v3 + 16))
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if (((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4) & 1) == 0)
    {
      return;
    }
  }

  if ((*(v3 + 28) & 0xF02) != 0 || *(v3 + 30) - 13 <= 3)
  {
    v6 = *(v3 + 24);

    *(v5 + v6) = 0;
    LODWORD(v4) = *(v3 + 20);
  }

  v7 = *(a1 + 64);
  if ((v4 & 0x80000000) != 0)
  {
    *(v7 + 4 * -v4) = 0;
  }

  else
  {
    *(v7 + 4 * (v4 >> 5)) &= ~(1 << v4);
  }
}

uint64_t sub_1000125FC(uint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = *(result + 64);
  if ((a2 & 0x80000000) != 0)
  {
    if (!a4)
    {
      a3 = 0;
    }

    *(v4 + 4 * -a2) = a3;
  }

  else
  {
    v5 = a2 >> 5;
    v6 = 1 << a2;
    if (a4)
    {
      v7 = *(v4 + 4 * v5) | v6;
    }

    else
    {
      v7 = *(v4 + 4 * v5) & ~v6;
    }

    *(v4 + 4 * v5) = v7;
  }

  return result;
}

void sub_100012650(uint64_t a1, id *a2)
{
  v4 = *(*([a2[2] objectAtIndexedSubscript:0] + 1) + 20);

  sub_1000126BC(a1, a2, v4, 0);
}

void sub_1000126BC(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v5 = *(*(a1 + 64) - 4 * a3);
  if (v5 != a4 && v5 != 0)
  {
    v8 = [a2 fieldWithNumber:?];
    if (v8)
    {
      v9 = v8[1];
      if ((*(v9 + 28) & 0xF02) != 0 || *(v9 + 30) - 13 <= 3)
      {
        v10 = *(a1 + 64);
        v11 = *(v9 + 24);

        *(v10 + v11) = 0;
      }
    }

    v12 = *(a1 + 64);
    if ((a3 & 0x80000000) != 0)
    {
      *(v12 + 4 * -a3) = 0;
    }

    else
    {
      *(v12 + 4 * (a3 >> 5)) &= ~(1 << a3);
    }
  }
}

BOOL sub_100012798(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return *(*(a1 + 64) + 4 * -a2) == a3;
  }

  else
  {
    return (*(*(a1 + 64) + 4 * (a2 >> 5)) >> a2) & 1;
  }
}

void sub_100012800(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3[5];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) == v3[4])
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if ((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4))
    {
      return;
    }
  }

  v6 = v3[6];
  v7 = *(v5 + v6);
  v8 = v7;
  *(v5 + v6) = 0;
  sub_10002B300(v7);
}

uint64_t sub_1000128A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;

  return sub_1000128EC(a1, a2, v5);
}

uint64_t sub_1000128EC(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v6 = a2[1];
  v7 = *(v6 + 30);
  v8 = *(v6 + 28);
  if ((v8 & 0xF02) != 0)
  {
    v9 = *(a1 + 64);
    v10 = *(v6 + 24);
    v11 = *(v9 + v10);
    *(v9 + v10) = a3;
    if (!v11)
    {
      goto LABEL_32;
    }

    if ([a2 fieldType] == 1)
    {
      if ((v7 - 13) <= 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          goto LABEL_29;
        }

LABEL_31:

        goto LABEL_32;
      }

      v12 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
    }

    else if ([a2 mapKeyDataType] == 14 && (v7 - 13) <= 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v12 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
    }

    else
    {
      v12 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
    }

LABEL_29:
    v22 = *v12;
    if (*&v11[v22] == a1)
    {
      *&v11[v22] = 0;
    }

    goto LABEL_31;
  }

  v13 = a2[2];
  if (v13)
  {
    sub_1000126BC(a1, v13, *(v6 + 20), *(v6 + 16));
    v8 = *(v6 + 28);
  }

  v14 = v3 != 0;
  if ((v8 & 0x20) != 0 && ![v3 length])
  {

    v14 = 0;
    v3 = 0;
  }

  v15 = *(v6 + 20);
  v16 = *(a1 + 64);
  if ((v15 & 0x80000000) != 0)
  {
    v19 = *(v6 + 16);
    if (!v14)
    {
      v19 = 0;
    }

    *(v16 + 4 * -v15) = v19;
  }

  else
  {
    v17 = v15 >> 5;
    v18 = 1 << v15;
    if (v14)
    {
      *(v16 + 4 * v17) |= v18;
    }

    else
    {
      *(v16 + 4 * v17) &= ~v18;
    }
  }

  v20 = *(a1 + 64);
  v21 = *(v6 + 24);
  v11 = *(v20 + v21);
  *(v20 + v21) = v3;
  if (v11)
  {
    if ((v7 - 15) <= 1 && sub_10002AFDC(v11, a1))
    {
      sub_10002B300(v11);
    }

    goto LABEL_31;
  }

LABEL_32:

  return sub_10002AFEC(a1);
}

uint64_t sub_100012B14(uint64_t a1, void *a2)
{
  v3 = sub_100012B74(a1, a2);
  if ((*(a2[1] + 28) & 0x1000) == 0)
  {
    if ([a2 isValidEnumValue:v3])
    {
      return v3;
    }

    else
    {
      return 4222467823;
    }
  }

  return v3;
}

id sub_100012B74(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return [a2 defaultValue];
}

id sub_100012C04(void *a1, void *a2, uint64_t a3)
{
  if (([a2 isValidEnumValue:?] & 1) == 0)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"%@.%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), [a2 name], a3);
  }

  return sub_100012CB0(a1, a2, a3);
}

id sub_100012CB0(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000126BC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_10002AFEC(a1);
}

uint64_t sub_100012DB0(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[4];
  v6 = v4[5];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 64);
    if ((*(v7 + ((v6 >> 3) & 0x1FFFFFFC)) >> v6))
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v9) = [a2 defaultValue];
    return v9 & 1;
  }

  v7 = *(a1 + 64);
  if (*(v7 + 4 * -v6) != v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = v4[6];
  if ((v8 & 0x80000000) != 0)
  {
    LOBYTE(v9) = *(v7 + 4 * -v8) == v5;
  }

  else
  {
    v9 = (*(v7 + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
  }

  return v9 & 1;
}

void *sub_100012E5C(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_100012E6C(a1, a2, a3);
    }
  }

  return a1;
}

id sub_100012E6C(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_1000126BC(a1, v6, *(v5 + 20), *(v5 + 16));
  }

  v7 = *(v5 + 24);
  v8 = a1[8];
  if ((v7 & 0x80000000) != 0)
  {
    v11 = *(v5 + 16);
    if (!a3)
    {
      v11 = 0;
    }

    *(v8 + 4 * -v7) = v11;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v7 >> 5;
    v10 = 1 << v7;
    if (a3)
    {
      *(v8 + 4 * v9) |= v10;
LABEL_9:
      v12 = 1;
      goto LABEL_12;
    }

    *(v8 + 4 * v9) &= ~v10;
  }

  v12 = (*(v5 + 28) & 0x20) == 0;
LABEL_12:
  v13 = *(v5 + 20);
  v14 = a1[8];
  if ((v13 & 0x80000000) != 0)
  {
    if (v12)
    {
      v17 = *(v5 + 16);
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 4 * -v13) = v17;
  }

  else
  {
    v15 = v13 >> 5;
    v16 = 1 << v13;
    if (v12)
    {
      *(v14 + 4 * v15) |= v16;
    }

    else
    {
      *(v14 + 4 * v15) &= ~v16;
    }
  }

  return sub_10002AFEC(a1);
}

void *sub_100012FA0(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_100012CB0(a1, a2, a3);
    }
  }

  return a1;
}

id sub_100012FB0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = v2[5];
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *(a1 + 64);
    if (*(v4 + 4 * -v3) == v2[4])
    {
      return *(v4 + v2[6]);
    }
  }

  else
  {
    v4 = *(a1 + 64);
    if ((*(v4 + ((v3 >> 3) & 0x1FFFFFFC)) >> v3))
    {
      return *(v4 + v2[6]);
    }
  }

  return [a2 defaultValue];
}

void *sub_100013024(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_100013034(a1, a2, a3);
    }
  }

  return a1;
}

id sub_100013034(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000126BC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_10002AFEC(a1);
}

float sub_10001312C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  LODWORD(result) = [a2 defaultValue];
  return result;
}

void *sub_1000131BC(void *a1, uint64_t a2, float a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000131CC(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000131CC(void *a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000126BC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_10002AFEC(a1);
}

double sub_1000132C8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return COERCE_DOUBLE([a2 defaultValue]);
}

void *sub_100013358(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_100013368(a1, a2, a3);
    }
  }

  return a1;
}

id sub_100013368(void *a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000126BC(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_10002AFEC(a1);
}

uint64_t sub_100013468(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = [a3 copy];

    return sub_1000128EC(v4, a2, v5);
  }

  return result;
}

uint64_t sub_1000134C8(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = a3;

    return sub_1000128EC(v4, a2, v5);
  }

  return result;
}

__CFString *sub_100013564(void *a1, __CFString *a2)
{
  v2 = &stru_100096EB8;
  if (a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = &stru_100096EB8;
    }

    v2 = +[NSMutableString string];
    sub_1000135C4(a1, v2, v4);
  }

  return v2;
}

id sub_1000135C4(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = [a1 descriptor];
  v7 = v6[1];
  v8 = [v7 count];
  v9 = [v6 extensionRanges];
  LODWORD(v10) = [v6 extensionRangesCount];
  v11 = [objc_msgSend(v5 "extensionsCurrentlySet")];
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    v57 = v75;
    v58 = v71;
    v67 = v5;
    v60 = v11;
    v61 = v9;
    v64 = a3;
    v65 = v10;
    v62 = v8;
    v63 = v7;
    do
    {
      if (v14 == v8)
      {
        sub_1000148C4(v5, v13, v9[v15++], a2, a3);
        v14 = v8;
        continue;
      }

      if (v15 != v10)
      {
        v16 = [v7 objectAtIndexedSubscript:v14];
        v17 = &v9[v15];
        if (*(v16[1] + 16) >= *v17)
        {
          ++v15;
          sub_1000148C4(v5, v13, *v17, a2, a3);
          continue;
        }
      }

      v68 = v14 + 1;
      v69 = [v7 objectAtIndexedSubscript:v14];
      v18 = [v69 fieldType];
      v19 = v18;
      if (v18 == 2 || v18 == 1)
      {
        v66 = v15;
        v23 = v5[8];
        if (v23)
        {
          v24 = *(v23 + *(v69[1] + 24));
        }

        else
        {
          v24 = 0;
        }

        v25 = [v24 count];
        if (v25)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18)
        {
          v14 = v68;
          continue;
        }

        v20 = v69[1];
        v21 = *(v20 + 20);
        v66 = v15;
        if ((v21 & 0x80000000) != 0)
        {
          v22 = *(v5[8] + 4 * -v21) == *(v20 + 16);
        }

        else
        {
          v22 = (*(v5[8] + ((v21 >> 3) & 0x1FFFFFFC)) >> v21) & 1;
        }

        v24 = 0;
        v25 = v22;
        if (v22)
        {
LABEL_21:
          v26 = [v69 textFormatName];
          if (![(NSString *)v26 length])
          {
            v26 = [NSString stringWithFormat:@"%u", *(v69[1] + 16)];
            if (v25 == 1)
            {
              a3 = v64;
              v5 = v67;
              v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  # %@", [v69 name]);
LABEL_29:
              if (v19 == 2)
              {
                v28 = [v69 mapKeyDataType];
                a3 = v64;
                v29 = *(v69[1] + 30);
                v59 = [NSString stringWithFormat:@"%@%@ {%@\n", v64, v26, v27, v57, v58];
                v30 = [NSString stringWithFormat:@"%@%@ {\n", v64, v26];
                v31 = [NSString stringWithFormat:@"%@}\n", v64];
                v32 = [NSString stringWithFormat:@"%@  key: ", v64];
                v33 = ":";
                if ((v29 - 15) < 2)
                {
                  v33 = "";
                }

                v34 = [NSString stringWithFormat:@"%@  value%s ", v64, v33];
                v77[0] = 0;
                v77[1] = v77;
                v77[2] = 0x2020000000;
                v78 = 1;
                if (v28 == 14 && (v29 - 13) <= 3)
                {
                  v74[0] = _NSConcreteStackBlock;
                  v74[1] = 3221225472;
                  v75[0] = sub_100014E9C;
                  v75[1] = &unk_100095568;
                  v75[2] = a2;
                  v75[3] = v59;
                  v75[4] = v30;
                  v75[5] = v32;
                  v76 = v29;
                  v75[6] = v34;
                  v75[7] = v64;
                  v75[8] = v31;
                  v75[9] = v77;
                  [v24 enumerateKeysAndObjectsUsingBlock:v74];
                }

                else
                {
                  v70[0] = _NSConcreteStackBlock;
                  v70[1] = 3221225472;
                  v71[0] = sub_100014FE8;
                  v71[1] = &unk_100095590;
                  v71[9] = v31;
                  v71[10] = v77;
                  v71[2] = a2;
                  v71[3] = v59;
                  v72 = v28;
                  v71[4] = v30;
                  v71[5] = v32;
                  v73 = v29;
                  v71[6] = v34;
                  v71[7] = v64;
                  v71[8] = v69;
                  [v24 enumerateForTextFormat:v70];
                }

                _Block_object_dispose(v77, 8);
                v5 = v67;
                v14 = v68;
              }

              else
              {
                v35 = 0;
                v36 = *(v69[1] + 30);
                if ((v36 - 15) >= 2)
                {
                  v37 = ":";
                }

                else
                {
                  v37 = "";
                }

                do
                {
                  [a2 appendFormat:@"%@%@%s ", a3, v26, v37];
                  switch(v36)
                  {
                    case 0:
                      if (v24)
                      {
                        v45 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v45 = sub_100012DB0(v5, v69);
                      }

                      if (v45)
                      {
                        v51 = @"true";
                      }

                      else
                      {
                        v51 = @"false";
                      }

                      [a2 appendString:v51];
                      break;
                    case 1:
                    case 11:
                      if (v24)
                      {
                        v42 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v42 = sub_100012B74(v5, v69);
                      }

                      [a2 appendFormat:@"%u", v42, v56];
                      break;
                    case 2:
                    case 7:
                    case 9:
                      if (v24)
                      {
                        v38 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v38 = sub_100012B74(v5, v69);
                      }

                      [a2 appendFormat:@"%d", v38, v56];
                      break;
                    case 3:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v46 = sub_10001312C(v5, v69);
                      }

                      [a2 appendFormat:@"%.*g", 6, v46];
                      break;
                    case 4:
                    case 12:
                      if (v24)
                      {
                        v40 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v40 = sub_100012FB0(v5, v69);
                      }

                      [a2 appendFormat:@"%llu", v40, v56];
                      break;
                    case 5:
                    case 8:
                    case 10:
                      if (v24)
                      {
                        v39 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v39 = sub_100012FB0(v5, v69);
                      }

                      [a2 appendFormat:@"%lld", v39, v56];
                      break;
                    case 6:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v44 = sub_1000132C8(v5, v69);
                      }

                      [a2 appendFormat:@"%.*lg", 15, *&v44];
                      break;
                    case 13:
                      if (v24)
                      {
                        v49 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v49 = sub_10002C300(v5, v69);
                      }

                      sub_1000143B8(v49, a2);
                      break;
                    case 14:
                      if (v24)
                      {
                        v43 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v43 = sub_10002C300(v5, v69);
                      }

                      sub_100014D04(v43, a2);
                      break;
                    case 15:
                    case 16:
                      if (v24)
                      {
                        v41 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v41 = sub_10002C300(v5, v69);
                      }

                      v50 = v41;
                      [a2 appendFormat:@"{%@\n", v27];
                      sub_1000135C4(v50, a2, [(__CFString *)a3 stringByAppendingString:@"  "]);
                      [a2 appendFormat:@"%@}", a3];
                      v27 = &stru_100096EB8;
                      v5 = v67;
                      break;
                    case 17:
                      if (v24)
                      {
                        v47 = [v24 rawValueAtIndex:v35];
                        v48 = v69;
                      }

                      else
                      {
                        v48 = v69;
                        v47 = sub_100012B74(v5, v69);
                      }

                      v52 = [v48 enumDescriptor];
                      if (v52 && (v53 = [v52 textFormatNameForValue:v47]) != 0)
                      {
                        [a2 appendString:v53];
                      }

                      else
                      {
                        [a2 appendFormat:@"%d", v47];
                      }

                      v5 = v67;
                      a3 = v64;
                      break;
                    default:
                      break;
                  }

                  [a2 appendFormat:@"%@\n", v27];
                  ++v35;
                }

                while (v25 != v35);
                v14 = v68;
              }

              v8 = v62;
              v7 = v63;
              v13 = v60;
              v9 = v61;
              goto LABEL_95;
            }

            [a2 appendFormat:@"%@# %@\n", a3, objc_msgSend(v69, "name")];
          }

          v27 = &stru_100096EB8;
          goto LABEL_29;
        }
      }

      v14 = v68;
LABEL_95:
      v10 = v65;
      v15 = v66;
    }

    while (v14 < v8 || v15 < v10);
  }

  v54 = sub_100013F10([v5 unknownFields], a3);
  result = [(__CFString *)v54 length];
  if (result)
  {
    [a2 appendFormat:@"%@# --- Unknown fields ---\n", a3];
    return [a2 appendString:v54];
  }

  return result;
}

__CFString *sub_100013F10(void *a1, const __CFString *a2)
{
  v2 = &stru_100096EB8;
  if (a1)
  {
    v4 = a2 ? a2 : &stru_100096EB8;
    v2 = +[NSMutableString string];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [a1 sortedFields];
    v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v26)
    {
      v25 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v5;
          v6 = *(*(&v43 + 1) + 8 * v5);
          v7 = [v6 number];
          v8 = [v6 varintList];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100014304;
          v41[3] = &unk_100095518;
          v41[4] = v2;
          v41[5] = v4;
          v42 = v7;
          [v8 enumerateValuesWithBlock:v41];
          v9 = [v6 fixed32List];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_100014340;
          v39[3] = &unk_100095540;
          v39[4] = v2;
          v39[5] = v4;
          v40 = v7;
          [v9 enumerateValuesWithBlock:v39];
          v10 = [v6 fixed64List];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_10001437C;
          v37[3] = &unk_100095518;
          v37[4] = v2;
          v37[5] = v4;
          v38 = v7;
          [v10 enumerateValuesWithBlock:v37];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = v6;
          v11 = [v6 lengthDelimitedList];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                [(__CFString *)v2 appendFormat:@"%@%d: ", v4, v7];
                sub_1000143B8(v16, v2);
                [(__CFString *)v2 appendString:@"\n"];
              }

              v13 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
            }

            while (v13);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v27 groupList];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * j);
                [(__CFString *)v2 appendFormat:@"%@%d: {\n", v4, v7];
                [(__CFString *)v2 appendString:sub_100013F10(v22, [(__CFString *)v4 stringByAppendingString:@"  "])];
                [(__CFString *)v2 appendFormat:@"%@}\n", v4];
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v19);
          }

          v5 = v28 + 1;
        }

        while ((v28 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v26);
    }
  }

  return v2;
}

id sub_1000143B8(void *a1, void *a2)
{
  v4 = [a1 bytes];
  v5 = [a1 length];
  [a2 appendString:@""];
  if (v5 >= 1)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *v4;
      if (*v4 > 0x21u)
      {
        switch(v8)
        {
          case '""':
            v9 = a2;
            v10 = @"\\"";
            goto LABEL_19;
          case '\'':
            v9 = a2;
            v10 = @"\\'";
            goto LABEL_19;
          case '\\':
            v9 = a2;
            v10 = @"\\\";
            goto LABEL_19;
        }
      }

      else
      {
        switch(v8)
        {
          case 9:
            v9 = a2;
            v10 = @"\\t";
            goto LABEL_19;
          case 0xA:
            v9 = a2;
            v10 = @"\\n";
            goto LABEL_19;
          case 0xD:
            v9 = a2;
            v10 = @"\\r";
LABEL_19:
            [v9 appendString:v10];
            goto LABEL_20;
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        if (!__maskrune(*v4, 0x40000uLL))
        {
LABEL_23:
          [a2 appendFormat:@"\\%03o", v8];
          goto LABEL_20;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      [a2 appendFormat:@"%c", v7];
LABEL_20:
      ++v4;
    }

    while (v4 < v6);
  }

  return [a2 appendString:@""];
}

NSString *sub_10001456C(char *a1, int a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v23 = a1;
    v6 = sub_100014750(&v23);
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      while (1)
      {
        v8 = sub_100014750(&v23);
        v9 = v23;
        if (v8 == a2)
        {
          break;
        }

        v10 = v23 + 1;
          ;
        }

        v23 = v10;
        if (v7-- < 2)
        {
          return 0;
        }
      }

      if (*v23)
      {
        v3 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [a3 length]);
        v14 = *v9;
        if (*v9)
        {
          v15 = 0;
          while (1)
          {
            if (v14 < 0)
            {
              [(NSMutableString *)v3 appendString:@"_"];
              v14 = *v9;
            }

            v16 = v14 & 0x1F;
            v17 = v14 & 0x60;
            if (v17 == 32)
            {
              break;
            }

            if (v17 == 64)
            {
              v18 = __toupper([a3 characterAtIndex:v15]);
LABEL_21:
              [(NSMutableString *)v3 appendFormat:@"%c", v18];
              ++v15;
              --v16;
            }

            if (v16 >= 1)
            {
              v19 = v16;
              v20 = v15;
              do
              {
                v21 = [a3 characterAtIndex:v20];
                if (v17 == 96)
                {
                  [(NSMutableString *)v3 appendFormat:@"%c", __toupper(v21)];
                }

                else
                {
                  [(NSMutableString *)v3 appendFormat:@"%C", v21];
                }

                ++v20;
                --v19;
              }

              while (v19);
            }

            v15 += v16;
            v22 = *++v9;
            v14 = v22;
            if (!v22)
            {
              return v3;
            }
          }

          v18 = __tolower([a3 characterAtIndex:v15]);
          goto LABEL_21;
        }
      }

      else
      {
        return [NSString stringWithUTF8String:v23 + 1];
      }
    }
  }

  return v3;
}

uint64_t sub_100014750(char **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  if ((v2 & 0x80000000) != 0)
  {
    v3 = v2 & 0x7F;
    v4 = v1[1];
    *a1 = v1 + 2;
    v5 = v4 << 7;
    if ((v4 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x3F80;
    v6 = v1[2];
    *a1 = v1 + 3;
    v5 = v6 << 14;
    if ((v6 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x1FC000;
    v7 = v1[3];
    *a1 = v1 + 4;
    v5 = v7 << 21;
    if (v7 < 0)
    {
      v9 = v1[4];
      *a1 = v1 + 5;
      v2 = v5 & 0xFE00000 | (v9 << 28) | v3;
      if (v9 < 0)
      {
        v10 = v1 + 6;
        v11 = 5;
        while (1)
        {
          v12 = *(v10 - 1);
          *a1 = v10;
          if ((v12 & 0x80000000) == 0)
          {
            break;
          }

          ++v10;
          if (!--v11)
          {
            [NSException raise:NSParseErrorException format:@"Unable to read varint32"];
            return v2;
          }
        }
      }
    }

    else
    {
      return v5 | v3;
    }
  }

  return v2;
}

BOOL sub_100014840(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v3[i]);
      v6 = Name == a2;
      if (Name == a2)
      {
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  free(v3);
  return v6;
}

id sub_1000148C4(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v28 = result;
  if (result)
  {
    v27 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(a2);
        }

        v30 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        result = [v8 fieldNumber];
        if (result >= a3)
        {
          v9 = result;
          if (result >= HIDWORD(a3))
          {
            return result;
          }

          v10 = [a1 getExtension:v8];
          v11 = [v8 isRepeated];
          if (v11)
          {
            v12 = [v10 count];
            v13 = [v8 singletonName];
            if (v12 != 1)
            {
              [a4 appendFormat:@"%@# [%@]\n", a5, v13];
              v14 = [v8 dataType];
              if (!v12)
              {
                goto LABEL_36;
              }

              v15 = v14;
              v16 = &stru_100096EB8;
              goto LABEL_14;
            }
          }

          else
          {
            v13 = [v8 singletonName];
          }

          v16 = [NSString stringWithFormat:@"  # [%@]", v13];
          v15 = [v8 dataType];
          v12 = 1;
LABEL_14:
          v17 = 0;
          if (v15 - 15 >= 2)
          {
            v18 = ":";
          }

          else
          {
            v18 = "";
          }

          do
          {
            v19 = v10;
            if (v11)
            {
              v19 = [v10 objectAtIndex:v17];
            }

            [a4 appendFormat:@"%@%u%s ", a5, v9, v18];
            switch(v15)
            {
              case 0u:
                if ([v19 BOOLValue])
                {
                  v23 = @"true";
                }

                else
                {
                  v23 = @"false";
                }

                [a4 appendString:v23];
                break;
              case 1u:
              case 0xBu:
                [a4 appendFormat:@"%u", objc_msgSend(v19, "unsignedIntValue"), v24];
                break;
              case 2u:
                v20 = [v19 unsignedIntValue];
                goto LABEL_34;
              case 3u:
                [v19 floatValue];
                [a4 appendFormat:@"%.*g", 6, v21];
                break;
              case 4u:
              case 0xCu:
                [a4 appendFormat:@"%llu", objc_msgSend(v19, "unsignedLongLongValue"), v24];
                break;
              case 5u:
              case 8u:
              case 0xAu:
                [a4 appendFormat:@"%lld", objc_msgSend(v19, "longLongValue"), v24];
                break;
              case 6u:
                [v19 doubleValue];
                [a4 appendFormat:@"%.*lg", 15, v22];
                break;
              case 7u:
              case 9u:
              case 0x11u:
                v20 = [v19 intValue];
LABEL_34:
                [a4 appendFormat:@"%d", v20, v24];
                break;
              case 0xDu:
                sub_1000143B8(v19, a4);
                break;
              case 0xEu:
                sub_100014D04(v19, a4);
                break;
              case 0xFu:
              case 0x10u:
                [a4 appendFormat:@"{%@\n", v16];
                sub_1000135C4(v19, a4, [a5 stringByAppendingString:@"  "]);
                [a4 appendFormat:@"%@}", a5];
                v16 = &stru_100096EB8;
                break;
              default:
                break;
            }

            [a4 appendFormat:@"%@\n", v16];
            ++v17;
          }

          while (v12 != v17);
        }

LABEL_36:
        v7 = v30 + 1;
      }

      while ((v30 + 1) != v28);
      result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v28 = result;
    }

    while (result);
  }

  return result;
}

id sub_100014D04(void *a1, void *a2)
{
  [a2 appendString:@""];
  v4 = [a1 length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; v5 != i; ++i)
    {
      v7 = [a1 characterAtIndex:i];
      if (v7 > 33)
      {
        switch(v7)
        {
          case '""':
            v8 = a2;
            v9 = @"\\"";
            break;
          case '\'':
            v8 = a2;
            v9 = @"\\'";
            break;
          case '\\':
            v8 = a2;
            v9 = @"\\\";
            break;
          default:
LABEL_14:
            if (v7 > 0x1F)
            {
              [a2 appendFormat:@"%C", v7, v11, v12];
            }

            else
            {
              [a2 appendFormat:@"\\%d%d%d", 0, v7 >> 3, v7 & 7];
            }

            continue;
        }
      }

      else
      {
        switch(v7)
        {
          case 9:
            v8 = a2;
            v9 = @"\\t";
            break;
          case 0xA:
            v8 = a2;
            v9 = @"\\n";
            break;
          case 0xD:
            v8 = a2;
            v9 = @"\\r";
            break;
          default:
            goto LABEL_14;
        }
      }

      [v8 appendString:v9];
    }
  }

  return [a2 appendString:@""];
}

id sub_100014E9C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 88) + 8) + 24) = 0;
  [*(a1 + 32) appendString:*(a1 + 56)];
  sub_100014D04(a2, *(a1 + 32));
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:*(a1 + 64)];
  v8 = *(a1 + 96);
  switch(v8)
  {
    case 13:
      sub_1000143B8(a3, *(a1 + 32));
      break;
    case 15:
      [*(a1 + 32) appendString:@"{\n"];
      sub_1000135C4(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
      break;
    case 14:
      sub_100014D04(a3, *(a1 + 32));
      break;
  }

  [*(a1 + 32) appendString:@"\n"];
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);

  return [v9 appendString:v10];
}

id sub_100014FE8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 96) + 8) + 24) = 0;
  v8 = *(a1 + 32);
  if (*(a1 + 104) == 14)
  {
    [v8 appendString:*(a1 + 56)];
    sub_100014D04(a2, *(a1 + 32));
    [*(a1 + 32) appendString:@"\n"];
  }

  else
  {
    [v8 appendFormat:@"%@%@\n", *(a1 + 56), a2];
  }

  [*(a1 + 32) appendString:*(a1 + 64)];
  v9 = *(a1 + 105);
  if (v9 > 0xE)
  {
    if (v9 == 15)
    {
      [*(a1 + 32) appendString:@"{\n"];
      sub_1000135C4(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
    }

    else
    {
      if (v9 != 17)
      {
LABEL_15:
        v14 = *(a1 + 32);
        v13 = a3;
        goto LABEL_16;
      }

      v10 = [a3 intValue];
      v11 = [*(a1 + 80) enumDescriptor];
      if (v11)
      {
        v12 = [v11 textFormatNameForValue:v10];
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 32);
LABEL_16:
          [v14 appendString:v13];
          goto LABEL_20;
        }
      }

      [*(a1 + 32) appendFormat:@"%d", v10];
    }
  }

  else
  {
    if (v9 != 13)
    {
      if (v9 == 14)
      {
        sub_100014D04(a3, *(a1 + 32));
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    sub_1000143B8(a3, *(a1 + 32));
  }

LABEL_20:
  [*(a1 + 32) appendString:@"\n"];
  v15 = *(a1 + 32);
  v16 = *(a1 + 88);

  return [v15 appendString:v16];
}

void sub_10001527C(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 copy];
  [a3 addField:v4];
}

int sub_1000155B4(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

int sub_100015728(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id sub_100015800(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSize];
  *a3 += result;
  return result;
}

id sub_1000158A0(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSizeAsMessageSetExtension];
  *a3 += result;
  return result;
}

void sub_100015AB8(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 number];
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  v6 = [a3 mutableFieldForNumber:v5 create:0];
  if (v6)
  {

    [v6 mergeFromField:a2];
  }

  else
  {
    v7 = [a2 copy];
    [a3 addField:v7];
  }
}

void sub_100015F8C(id a1)
{
  xpc_transaction_exit_clean();

  xpc_transaction_try_exit_clean();
}

id sub_100016360(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v3, 2u);
  }

  return [*(a1 + 32) signalEventHandler];
}

unint64_t sub_1000165C4()
{
  if (!atomic_load(&qword_1000AED00))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBSyntax" valueNames:"SyntaxProto2" values:&unk_10008BF04 count:2 enumVerifier:sub_100016644 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1000AED00, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_1000AED00);
}

unint64_t sub_100016650()
{
  if (!atomic_load(&qword_1000AED08))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Kind" valueNames:"TypeUnknown" values:&unk_10008BFE0 count:19 enumVerifier:sub_1000166D0 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1000AED08, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_1000AED08);
}

unint64_t sub_1000166DC()
{
  if (!atomic_load(&qword_1000AED10))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Cardinality" valueNames:"CardinalityUnknown" values:&unk_10008C07C count:4 enumVerifier:sub_10001675C flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1000AED10, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_1000AED10);
}

uint64_t sub_1000167D8(uint64_t a1)
{
  v2 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_100016824(void *a1, int a2)
{
  v4 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t sub_1000168FC(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_100016948(void *a1, int a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t sub_10001699C(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_1000169E8(void *a1, int a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t sub_100016AAC(uint64_t a1)
{
  v2 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_100016AF8(void *a1, int a2)
{
  v4 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t sub_1000173DC(_BYTE *a1)
{
  LOBYTE(v1) = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v2 = (1025 * (v2 + v1)) ^ ((1025 * (v2 + v1)) >> 6);
      v1 = a1[v3++];
    }

    while (v1);
    v4 = 9 * v2;
  }

  else
  {
    v4 = 0;
  }

  return 32769 * (v4 ^ (v4 >> 11));
}

uint64_t sub_100017494(objc_class *a1, const char *a2)
{
  result = sub_100017574(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_100013520("getClassValue", 0);
    Name = class_getName(a1);
    MetaClass = objc_getMetaClass(Name);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000176C8;
    block[3] = &unk_100095690;
    block[4] = v5;
    v9 = imp_implementationWithBlock(block);
    return class_addMethod(MetaClass, a2, v9, v6) || sub_100014840(MetaClass, a2);
  }

  return result;
}

const void *sub_100017574(objc_class *a1, SEL sel)
{
  Name = sel_getName(sel);
  v4 = *Name;
  if (v4 != 95)
  {
    v6 = Name;
    v7 = 1;
    if (!*Name)
    {
LABEL_6:
      v8 = class_getName(a1);
      v9 = strlen(v8);
      __chkstk_darwin();
      v11 = &v14 - v10;
      bzero(&v14 - v10, v12 + 1);
      memcpy(v11, v8, v9);
      v11[v9] = 95;
      memcpy(&v11[v9 + 1], v6, v7 - 1);
      v11[v9 + v7] = 0;
      os_unfair_lock_lock(&unk_1000AED50);
      Value = CFDictionaryGetValue(qword_1000AED40, v11);
      os_unfair_lock_unlock(&unk_1000AED50);
      return Value;
    }

    while (v4 != 58)
    {
      v4 = Name[v7++];
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

uint64_t sub_1000177A0(uint64_t a1)
{
  v2 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_1000177EC(void *a1, int a2)
{
  v4 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t sub_1000178C4(uint64_t a1)
{
  v2 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_100017910(void *a1, int a2)
{
  v4 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

uint64_t *sub_100017BD4(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_10001ABDC(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = BYTE3(a2);
  v12 = v3[2];
  if (v12 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v12 = v3[2];
  }

  v13 = *v3;
  v3[2] = v12 + 1;
  *(v13 + v12) = BYTE4(a2);
  v14 = v3[2];
  if (v14 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v14 = v3[2];
  }

  v15 = *v3;
  v3[2] = v14 + 1;
  *(v15 + v14) = BYTE5(a2);
  v16 = v3[2];
  if (v16 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v16 = v3[2];
  }

  v17 = *v3;
  v3[2] = v16 + 1;
  *(v17 + v16) = BYTE6(a2);
  v18 = v3[2];
  if (v18 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v18 = v3[2];
  }

  v19 = *v3;
  v3[2] = v18 + 1;
  *(v19 + v18) = HIBYTE(a2);
  return result;
}

uint64_t *sub_100017DBC(uint64_t *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_10001ABDC(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = HIBYTE(a2);
  return result;
}

uint64_t *sub_100017EF4(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_10001ABDC(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_100018054(uint64_t *result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return sub_100017EF4(result, a2);
  }

  else
  {
    return sub_10001837C(result, a2);
  }
}

uint64_t *sub_10001837C(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_10001ABDC(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_10001ABDC(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_100018744(uint64_t *a1, int a2, unsigned int a3)
{
  v5 = sub_100025184(a2, 0);
  sub_10001837C(a1, v5);

  return sub_10001837C(a1, a3);
}

uint64_t sub_100018EE4(uint64_t a1, unint64_t a2)
{
  result = sub_10001AEA4(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000190E8(uint64_t a1, unint64_t a2)
{
  result = sub_10001AEA4(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000192E8(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_100019340(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_100019548(uint64_t result, unsigned int a2)
{
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (a2 >> 28)
  {
    v5 = 5;
  }

  if (a2 >= 0x200000)
  {
    v4 = v5;
  }

  if (a2 >= 0x4000)
  {
    v3 = v4;
  }

  if (a2 >= 0x80)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_100019594(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100019B48(uint64_t result, int a2)
{
  v2 = (2 * a2) ^ (a2 >> 31);
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v2 >> 28)
  {
    v5 = 5;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if (v2 >= 0x4000)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t sub_100019B9C(int a1)
{
  v1 = (2 * a1) ^ (a1 >> 31);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100019DA0(uint64_t a1, uint64_t a2)
{
  result = sub_10001AEA4((2 * a2) ^ (a2 >> 63));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10001A54C(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void *sub_10001ABDC(void *result)
{
  v1 = result;
  if (!result[3])
  {
    result = [NSException raise:@"OutOfSpace" format:&stru_100096EB8];
  }

  if (v1[2])
  {
    result = [v1[3] write:*v1 maxLength:?];
    if (result != v1[2])
    {
      result = [NSException raise:@"WriteFailed" format:&stru_100096EB8];
    }

    v1[2] = 0;
  }

  return result;
}

uint64_t sub_10001AEA4(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (a1 < 0x200000)
  {
    return 3;
  }

  if (!(a1 >> 28))
  {
    return 4;
  }

  if (!(a1 >> 35))
  {
    return 5;
  }

  if (!(a1 >> 42))
  {
    return 6;
  }

  if (!(a1 >> 49))
  {
    return 7;
  }

  v2 = 9;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 10;
  }

  if (HIBYTE(a1))
  {
    return v2;
  }

  else
  {
    return 8;
  }
}

char *sub_10001AF34(void *a1)
{
  v1 = [a1 lengthOfBytesUsingEncoding:4];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_10001AF8C(void *a1)
{
  v1 = [a1 serializedSize];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_10001AFDC(void *a1)
{
  v1 = [a1 length];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

uint64_t sub_10001B02C(int a1)
{
  v1 = sub_100025184(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (v1 >> 28)
  {
    v4 = 13;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t sub_10001B07C(int a1)
{
  v1 = sub_100025184(a1, 0);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10001B0CC(int a1)
{
  v1 = sub_100025184(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (v1 >> 28)
  {
    v4 = 9;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_10001B11C(int a1, unint64_t a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_10001AEA4(a2) + v7;
}

uint64_t sub_10001B184(int a1, unsigned int a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 10;
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (a2 >> 28)
  {
    v12 = 5;
  }

  if (a2 >= 0x200000)
  {
    v11 = v12;
  }

  if (a2 >= 0x4000)
  {
    v10 = v11;
  }

  if (a2 >= 0x80)
  {
    v9 = v10;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_10001B224(int a1)
{
  v1 = sub_100025184(a1, 0);
  v2 = 3;
  v3 = 4;
  v4 = 5;
  if (v1 >> 28)
  {
    v4 = 6;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

char *sub_10001B274(int a1, void *a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 lengthOfBytesUsingEncoding:4];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_10001B318(int a1, void *a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 4;
  v5 = 6;
  v6 = 10;
  if (!(v3 >> 28))
  {
    v6 = 8;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  return [a2 serializedSize] + v7;
}

char *sub_10001B384(int a1, void *a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 serializedSize];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_10001B424(int a1, void *a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 length];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

uint64_t sub_10001B4C4(int a1, unsigned int a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 1;
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (a2 >> 28)
  {
    v11 = 5;
  }

  if (a2 >= 0x200000)
  {
    v10 = v11;
  }

  if (a2 >= 0x4000)
  {
    v9 = v10;
  }

  if (a2 >= 0x80)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_10001B558(int a1, int a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >= 0x4000)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  return v12 + v4;
}

uint64_t sub_10001B5F4(int a1, uint64_t a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_10001AEA4((2 * a2) ^ (a2 >> 63)) + v7;
}

char *sub_10001B660(unsigned int a1, void *a2)
{
  v4 = sub_100025184(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_10001B4C4(2, a1) + v8;
  return &sub_10001B384(3, a2)[v9];
}

char *sub_10001B6F0(unsigned int a1, void *a2)
{
  v4 = sub_100025184(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_10001B4C4(2, a1) + v8;
  return &sub_10001B424(3, a2)[v9];
}

uint64_t sub_10001B780(int a1, int a2)
{
  v3 = sub_100025184(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  return v4 << (a2 == 16);
}

id sub_10001BA50(uint64_t a1)
{
  [*(a1 + 32) setInitialDelay:*(a1 + 40)];
  [*(a1 + 32) setCurrentDelay:{objc_msgSend(*(a1 + 32), "initialDelay")}];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48) / v2;
  }

  else
  {
    v3 = 1.0;
  }

  [*(a1 + 32) setBackoff:v3];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v5 setMaximumDelay:v4];
}

void sub_10001BE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v2 = [WeakRetained liveRequestReceived];
  [v2 fulfill];

  if (*(a1 + 40) == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  [WeakRetained _onqueueTrigger:v3 maximumDelay:?];
}

void sub_10001C210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v1 = [WeakRetained liveRequestReceived];
  [v1 fulfill];

  [WeakRetained _onqueueTrigger:0 maximumDelay:-1];
}

void sub_10001C664(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueTimerTick];
}

void sub_10001C72C(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) timer];
    v5 = dispatch_source_testcancel(v4);

    if (!v5)
    {
      v6 = [*(a1 + 32) timer];
      dispatch_source_cancel(v6);
    }
  }
}

SEL sub_10001DC0C(char *__s, char *str, const char *a3, int a4)
{
  if (!__s && !a3 && (a4 & 1) == 0)
  {

    return sel_getUid(str);
  }

  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(str);
  v11 = v10;
  if (a3)
  {
    v10 = strlen(a3);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v18 = &v18;
  v13 = v11 + v9 + v12;
  v14 = v13 + 2;
  if (a4)
  {
    v15 = v13 + 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  __chkstk_darwin(v10);
  v17 = &v18 - v16;
  bzero(&v18 - v16, v15);
  if (!__s)
  {
    memcpy(v17, str, v11);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memcpy(v17, __s, v9);
  memcpy(&v17[v9], str, v11);
  v17[v9] = __toupper(v17[v9]);
  if (a3)
  {
LABEL_18:
    memcpy(&v17[v9 + v11], a3, v12);
  }

LABEL_19:
  if (a4)
  {
    v17[v14 - 2] = 58;
  }

  v17[v15 - 1] = 0;
  return sel_getUid(v17);
}

uint64_t sub_10001E05C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 28);
  if ((v2 & 0xF00) != 0)
  {
    v3 = 15;
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = *(v1 + 30);
    v4 = (v2 >> 2) & 1;
  }

  v5 = sub_1000251AC(v3, v4);
  v6 = *(v1 + 16);

  return sub_100025184(v6, v5);
}

uint64_t sub_10001E0B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1000251AC(*(v1 + 30), (*(v1 + 28) & 4) == 0);
  v3 = *(v1 + 16);

  return sub_100025184(v3, v2);
}

void sub_10001F608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F648(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(KTCondition);
  v4 = [*(a1 + 32) mutableStateConditions];
  [v4 setObject:v5 forKeyedSubscript:v3];
}

void sub_10001F6CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F774;
  block[3] = &unk_100094F10;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

void sub_10001F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F8B0(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableStateConditions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001FECC(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000202A0(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000202E4(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020328(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000204B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002056C;
  v4[3] = &unk_100094F80;
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_sync(v3, v4);
}

id sub_10002056C(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E130();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 nextState];
    v6 = [*(a1 + 32) intendedState];
    v7 = [*(a1 + 40) currentFlags];
    v8 = [v7 contentsAsString];
    v9 = [*(a1 + 40) pendingFlagsString];
    v10 = *(a1 + 32);
    v11 = [v10 error];
    v12 = v11;
    *buf = 138544642;
    v13 = @"(no error)";
    v41 = v5;
    if (v11)
    {
      v13 = v11;
    }

    v42 = 2114;
    v43 = v6;
    v44 = 2114;
    v45 = v8;
    v46 = 2114;
    v47 = v9;
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finishing state transition attempt (ending in %{public}@, intended: %{public}@, f:[%{public}@], p:[%{public}@]): %{public}@ %{public}@", buf, 0x3Eu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [*(a1 + 40) stateMachineWatchers];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v36;
    *&v16 = 138543362;
    v34 = v16;
    do
    {
      v19 = 0;
      do
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        if (qword_1000AED78 != -1)
        {
          sub_10006E144();
        }

        v21 = qword_1000AED80;
        if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v34;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "notifying watcher: %{public}@", buf, 0xCu);
        }

        [v20 onqueueHandleTransition:{*(a1 + 32), v34}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  v22 = [*(a1 + 40) stateMachineWatchers];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [*(a1 + 40) stateMachineWatchers];
    v25 = [v24 count];

    if (v25 >= 1)
    {
      v26 = v25 + 1;
      do
      {
        v27 = [*(a1 + 40) stateMachineWatchers];
        v28 = [v27 objectAtIndexedSubscript:v26 - 2];
        v29 = [v28 result];
        v30 = [v29 isFinished];

        if (v30)
        {
          v31 = [*(a1 + 40) stateMachineWatchers];
          [v31 removeObjectAtIndex:v26 - 2];
        }

        --v26;
      }

      while (v26 > 1);
    }
  }

  v32 = [*(a1 + 32) nextState];
  [*(a1 + 40) setCurrentState:v32];

  [*(a1 + 40) setNextStateMachineCycleOperation:0];
  return [*(a1 + 40) _onqueueStartNextStateMachineOperation:1];
}

void sub_100020910(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020954(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002104C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000210E0;
  block[3] = &unk_100094F10;
  block[4] = WeakRetained;
  dispatch_sync(v2, block);
}

id sub_1000210E0(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E16C();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished waiting for operation", v4, 2u);
  }

  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_100021168(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021374(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) pendingFlags];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) pendingFlags];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 description];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1000215F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002160C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) currentFlags];
  v3 = [v2 dumpFlags];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(*(a1 + 40) + 8) + 40) setObject:*(*(&v8 + 1) + 8 * v7) forKeyedSubscript:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100021C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100021CB8(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021CFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021D98;
    block[3] = &unk_100094F10;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

id sub_100021D98(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E1D0();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unlock occurred", v4, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFELL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_100021E40(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021E84(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021EC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021F64;
    block[3] = &unk_100094F10;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

id sub_100021F64(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E1E4();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network is reachable", v4, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFDLL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_10002200C(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100022584(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000225C8(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002260C(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100022704(uint64_t a1)
{
  v2 = [*(a1 + 32) testHoldStates];
  [v2 addObject:*(a1 + 40)];
}

id sub_10002280C(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E270();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing state machine test pause from %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) testHoldStates];
  [v4 removeObject:*(a1 + 32)];

  return [*(a1 + 40) _onqueuePokeStateMachine];
}

void sub_1000228EC(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000229F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022A08(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStateMachineCycleOperation];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

void sub_100022B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022B5C(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStateMachineCycleOperation];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

void sub_100022C34(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    v5 = *(a1 + 32);

    [v5 setHoldStateMachineOperation:0];
  }
}

id sub_100022D70(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    [*(a1 + 32) setHoldStateMachineOperation:0];
  }

  [*(a1 + 32) setHalted:1];
  [*(a1 + 32) setAllowPendingFlags:0];
  v5 = *(a1 + 32);

  return [v5 _onqueuePokeStateMachine];
}

id sub_100022ED0(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineRequests];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onqueuePokeStateMachine];
}

id sub_100022FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineWatchers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onqueuePokeStateMachine];
}

void sub_100023460(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000234A4(uint64_t a1)
{
  if (qword_1000AED78 != -1)
  {
    sub_10006E298();
  }

  v2 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 error];
    v7 = v6;
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Returning '%{public}@' result: %{public}@", &v11, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) error];
  (*(v9 + 16))(v9, v10);
}

void sub_1000235CC(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100023A94(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100023AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1000AED78 != -1)
  {
    sub_10006E2C0();
  }

  v4 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 result];
    v9 = [v8 error];
    v10 = v9;
    v11 = @"no error";
    if (v9)
    {
      v11 = v9;
    }

    v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning '%{public}@' result: %{public}@", &v17, 0x16u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [*(a1 + 40) result];
    v14 = [v13 error];
    (*(v12 + 16))(v12, v14);
  }

  v15 = [*(a1 + 40) result];
  v16 = [v15 error];
  [v3 setError:v16];
}

void sub_100023C6C(id a1)
{
  qword_1000AED80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100023FE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 45))
  {
    if ((*(v5 + 45) & 2) != 0)
    {
      [a3 writeTag:*(v5 + 40) format:2];
      v10 = *(v5 + 44);
      if (v10 > 6)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v12 = 0;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(a2);
              }

              v12 += sub_100024ECC(*(v5 + 44), *(*(&v24 + 1) + 8 * i));
            }

            v14 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v11 = qword_10008C0D8[v10];
        v12 = [a2 count] * v11;
      }

      [a3 writeRawVarintSizeTAs32:v12];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
      if (result)
      {
        v17 = result;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(a2);
            }

            switch(*(v5 + 44))
            {
              case 0:
                [a3 writeBoolNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "BOOLValue")}];
                break;
              case 1:
                [a3 writeFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 2:
                [a3 writeSFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 3:
                [*(*(&v20 + 1) + 8 * v19) floatValue];
                [a3 writeFloatNoTag:?];
                break;
              case 4:
                [a3 writeFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 5:
                [a3 writeSFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 6:
                [*(*(&v20 + 1) + 8 * v19) doubleValue];
                [a3 writeDoubleNoTag:?];
                break;
              case 7:
                [a3 writeInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 8:
                [a3 writeInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 9:
                [a3 writeSInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 0xA:
                [a3 writeSInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 0xB:
                [a3 writeUInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 0xC:
                [a3 writeUInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 0xD:
                [a3 writeBytesNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xE:
                [a3 writeStringNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xF:
                [a3 writeMessageNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x10:
                [a3 writeGroupNoTag:*(v5 + 40) value:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x11:
                [a3 writeEnumNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              default:
                break;
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
          v17 = result;
        }

        while (result);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(a2);
            }

            sub_10002449C(*(*(&v28 + 1) + 8 * v9), v5, a3);
            v9 = v9 + 1;
          }

          while (v7 != v9);
          result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = result;
        }

        while (result);
      }
    }
  }

  else
  {

    return sub_10002449C(a2, v5, a3);
  }

  return result;
}

id sub_10002449C(id result, uint64_t a2, void *a3)
{
  switch(*(a2 + 44))
  {
    case 0:
      v4 = *(a2 + 40);
      v5 = [result BOOLValue];

      result = [a3 writeBool:v4 value:v5];
      break;
    case 1:
      v22 = *(a2 + 40);
      v23 = [result unsignedIntValue];

      result = [a3 writeFixed32:v22 value:v23];
      break;
    case 2:
      v16 = *(a2 + 40);
      v17 = [result intValue];

      result = [a3 writeSFixed32:v16 value:v17];
      break;
    case 3:
      v19 = *(a2 + 40);
      [result floatValue];

      result = [a3 writeFloat:v19 value:?];
      break;
    case 4:
      v10 = *(a2 + 40);
      v11 = [result unsignedLongLongValue];

      result = [a3 writeFixed64:v10 value:v11];
      break;
    case 5:
      v26 = *(a2 + 40);
      v27 = [result longLongValue];

      result = [a3 writeSFixed64:v26 value:v27];
      break;
    case 6:
      v29 = *(a2 + 40);
      [result doubleValue];

      result = [a3 writeDouble:v29 value:?];
      break;
    case 7:
      v20 = *(a2 + 40);
      v21 = [result intValue];

      result = [a3 writeInt32:v20 value:v21];
      break;
    case 8:
      v32 = *(a2 + 40);
      v33 = [result longLongValue];

      result = [a3 writeInt64:v32 value:v33];
      break;
    case 9:
      v14 = *(a2 + 40);
      v15 = [result intValue];

      result = [a3 writeSInt32:v14 value:v15];
      break;
    case 0xA:
      v30 = *(a2 + 40);
      v31 = [result longLongValue];

      result = [a3 writeSInt64:v30 value:v31];
      break;
    case 0xB:
      v8 = *(a2 + 40);
      v9 = [result unsignedIntValue];

      result = [a3 writeUInt32:v8 value:v9];
      break;
    case 0xC:
      v12 = *(a2 + 40);
      v13 = [result unsignedLongLongValue];

      result = [a3 writeUInt64:v12 value:v13];
      break;
    case 0xD:
      v28 = *(a2 + 40);

      result = [a3 writeBytes:v28 value:result];
      break;
    case 0xE:
      v7 = *(a2 + 40);

      result = [a3 writeString:v7 value:result];
      break;
    case 0xF:
      v18 = *(a2 + 40);
      if ((*(a2 + 45) & 4) != 0)
      {

        result = [a3 writeMessageSetExtension:v18 value:result];
      }

      else
      {

        result = [a3 writeMessage:v18 value:result];
      }

      break;
    case 0x10:
      v6 = *(a2 + 40);

      result = [a3 writeGroup:v6 value:result];
      break;
    case 0x11:
      v24 = *(a2 + 40);
      v25 = [result intValue];

      result = [a3 writeEnum:v24 value:v25];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000248B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 45))
  {
    if ((*(v3 + 45) & 2) != 0)
    {
      v11 = *(v3 + 44);
      if (v11 > 6)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v14 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v13 = 0;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(a2);
              }

              v13 += sub_100024ECC(*(v3 + 44), *(*(&v19 + 1) + 8 * i));
            }

            v15 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v12 = qword_10008C0D8[v11];
        v13 = [a2 count] * v12;
      }

      v18 = sub_10001B07C(*(v3 + 40));
      return v18 + v13 + sub_100019594(v13);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v20;
        do
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(a2);
            }

            v8 += sub_100024B00(v3, *(*(&v19 + 1) + 8 * j));
          }

          v7 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      else
      {
        return 0;
      }
    }

    return v8;
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_100024B00(v4, a2);
  }
}

uint64_t sub_100024B00(uint64_t result, void *a2)
{
  switch(*(result + 44))
  {
    case 0:
      v2 = *(result + 40);
      [a2 BOOLValue];

      return sub_10001B224(v2);
    case 1:
      v22 = *(result + 40);
      [a2 unsignedIntValue];
      v15 = v22;

      return sub_10001B0CC(v15);
    case 2:
      v14 = *(result + 40);
      [a2 intValue];
      v15 = v14;

      return sub_10001B0CC(v15);
    case 3:
      v18 = *(result + 40);
      [a2 floatValue];
      v15 = v18;

      return sub_10001B0CC(v15);
    case 4:
      v7 = *(result + 40);
      [a2 unsignedLongLongValue];
      v8 = v7;

      return sub_10001B02C(v8);
    case 5:
      v24 = *(result + 40);
      [a2 longLongValue];
      v8 = v24;

      return sub_10001B02C(v8);
    case 6:
      v26 = *(result + 40);
      [a2 doubleValue];
      v8 = v26;

      return sub_10001B02C(v8);
    case 7:
      v19 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v19;

      goto LABEL_35;
    case 8:
      v29 = *(result + 40);
      v10 = [a2 longLongValue];
      v11 = v29;

      goto LABEL_19;
    case 9:
      v12 = *(result + 40);
      v13 = [a2 intValue];

      return sub_10001B558(v12, v13);
    case 0xA:
      v27 = *(result + 40);
      v28 = [a2 longLongValue];

      return sub_10001B5F4(v27, v28);
    case 0xB:
      v5 = *(result + 40);
      v6 = [a2 unsignedIntValue];

      return sub_10001B4C4(v5, v6);
    case 0xC:
      v9 = *(result + 40);
      v10 = [a2 unsignedLongLongValue];
      v11 = v9;

LABEL_19:
      result = sub_10001B11C(v11, v10);
      break;
    case 0xD:
      v25 = *(result + 40);

      result = sub_10001B424(v25, a2);
      break;
    case 0xE:
      v4 = *(result + 40);

      result = sub_10001B274(v4, a2);
      break;
    case 0xF:
      v16 = *(result + 45);
      v17 = *(result + 40);
      if ((v16 & 4) != 0)
      {

        result = sub_10001B660(v17, a2);
      }

      else
      {

        result = sub_10001B384(v17, a2);
      }

      break;
    case 0x10:
      v3 = *(result + 40);

      result = sub_10001B318(v3, a2);
      break;
    case 0x11:
      v23 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v23;

LABEL_35:
      result = sub_10001B184(v21, v20);
      break;
    default:
      return result;
  }

  return result;
}

id sub_100024ECC(id result, void *a2)
{
  switch(result)
  {
    case 0:
      [a2 BOOLValue];

      return sub_10001A380();
    case 1:
      [a2 unsignedIntValue];

      return sub_100018D20();
    case 2:
      [a2 intValue];

      return sub_100018D20();
    case 3:
      [a2 floatValue];

      return sub_100018D20();
    case 4:
      [a2 unsignedLongLongValue];

      return sub_100018B44();
    case 5:
      [a2 longLongValue];

      return sub_100018B44();
    case 6:
      [a2 doubleValue];

      return sub_100018B44();
    case 7:
      v5 = [a2 intValue];

      goto LABEL_34;
    case 8:
      v3 = [a2 longLongValue];

      goto LABEL_19;
    case 9:
      v4 = [a2 intValue];

      return sub_100019B9C(v4);
    case 10:
      v6 = [a2 longLongValue];

      return sub_100019DE0(v6);
    case 11:
      v2 = [a2 unsignedIntValue];

      return sub_100019594(v2);
    case 12:
      v3 = [a2 unsignedLongLongValue];

LABEL_19:
      result = sub_100018F20(v3);
      break;
    case 13:

      result = sub_10001AFDC(a2);
      break;
    case 14:

      result = sub_10001AF34(a2);
      break;
    case 15:

      result = sub_10001AF8C(a2);
      break;
    case 16:

      result = [a2 serializedSize];
      break;
    case 17:
      v5 = [a2 intValue];

LABEL_34:
      result = sub_100019340(v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000251AC(int a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return dword_10008C110[a1];
  }
}

void sub_10002557C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 handleFlag:off_1000ADDD8];
}

void sub_100025E0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) onQueueMapMailbox];
  (*(v1 + 16))(v1, v2);
}

void sub_100025F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025F84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100025F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) onQueueMapMailbox];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10002638C(id a1)
{
  v4[0] = off_1000ADDD0;
  v4[1] = off_1000ADDD8;
  v4[2] = off_1000ADDE0;
  v4[3] = off_1000ADDE8;
  v4[4] = off_1000ADDF0;
  v4[5] = off_1000ADDF8;
  v4[6] = off_1000ADE00;
  v4[7] = off_1000ADE08;
  v4[8] = off_1000ADE10;
  v1 = [NSArray arrayWithObjects:v4 count:9];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000AED98;
  qword_1000AED98 = v2;
}

void sub_1000264C4(id a1)
{
  v4[0] = off_1000ADE18;
  v4[1] = off_1000ADE20;
  v4[2] = off_1000ADE28;
  v4[3] = off_1000ADE30;
  v4[4] = off_1000ADE38;
  v4[5] = off_1000ADE40;
  v4[6] = off_1000ADE48;
  v4[7] = off_1000ADE50;
  v4[8] = off_1000ADE58;
  v4[9] = off_1000ADE60;
  v4[10] = off_1000ADE68;
  v4[11] = off_1000ADE70;
  v4[12] = off_1000ADE78;
  v1 = [NSArray arrayWithObjects:v4 count:13];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000AEDA8;
  qword_1000AEDA8 = v2;
}

void sub_1000267FC(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) handleID];
    v4 = [v3 kt_hexString];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "got announce %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) setGotAnnounceData:*(a1 + 40)];
  if ([*(a1 + 32) beforeRatelimit] < 1)
  {
    v5 = [*(a1 + 32) recvRatelimit];
    [v5 trigger];
  }

  else
  {
    [*(a1 + 32) setBeforeRatelimit:{objc_msgSend(*(a1 + 32), "beforeRatelimit") - 1}];
    v5 = [*(a1 + 32) stateMachine];
    [v5 _onqueueHandleFlag:off_1000ADDD8];
  }
}

void sub_100026BE0(uint64_t a1)
{
  [*(a1 + 32) setGotCommitData:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADDE0];
}

void sub_100026E30(uint64_t a1)
{
  [*(a1 + 32) setGotReplyBData:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADDE8];
}

void sub_1000270A0(uint64_t a1)
{
  [*(a1 + 32) setGotRevealData:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADDF0];
}

void sub_1000272E8(uint64_t a1)
{
  [*(a1 + 32) setGotConfirmData:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADDF8];
}

void sub_10002748C(uint64_t a1)
{
  [*(a1 + 32) setGotSelected:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADE10];
}

void sub_100027840(uint64_t a1)
{
  [*(a1 + 32) setGotTeardown:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandleFlag:off_1000ADE00];
}

void sub_100028968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) myPublicInfo];

  v5 = *(a1 + 32);
  if (!v4)
  {
    v21 = [v5 log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10006E74C();
    }

    goto LABEL_12;
  }

  v6 = [v5 gotAnnounceData];

  v7 = *(a1 + 32);
  if (!v6)
  {
    v21 = [*(a1 + 32) log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10006E780();
    }

LABEL_12:

    goto LABEL_15;
  }

  v8 = [*(a1 + 32) gotAnnounceData];
  v9 = [v7 validateAnnounce:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) peerSessionID];
    v11 = [*(a1 + 32) peerAnnounce];
    v12 = [v11 sessionId];
    v13 = [v10 isEqual:v12];

    v14 = [*(a1 + 32) peerAnnounce];
    v15 = [v14 sessionId];
    [*(a1 + 32) setPeerSessionID:v15];

    v16 = [*(a1 + 32) peerAnnounce];
    v17 = [v16 peerSessionId];
    v18 = [*(a1 + 32) localSessionID];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        [*(a1 + 32) sendAnnounce];
      }

      [*(a1 + 32) updateState];
      v20 = off_1000ADE30;
    }

    else
    {
      [*(a1 + 32) sendAnnounce];
      v20 = off_1000ADE28;
    }

    [v3 setNextState:v20];
  }

LABEL_15:
}

void sub_100028B58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) peerAnnounce];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 peerAnnounce];
    v7 = [*(a1 + 32) localSessionID];
    v8 = [v6 sessionId];
    v9 = [KTIDSSessionHandler compareLocalSessionID:v7 remoteSessionID:v8];

    switch(v9)
    {
      case 0:
        v27 = [*(a1 + 32) log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [*(a1 + 32) peer];
          v29 = [*(a1 + 32) localSessionID];
          v30 = [v29 kt_hexString];
          v31 = [v6 sessionId];
          v32 = [v31 kt_hexString];
          v42 = 141558786;
          v43 = 1752392040;
          v44 = 2112;
          v45 = v28;
          v46 = 2114;
          v47 = v30;
          v48 = 2114;
          v49 = v32;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "ktAnnounce picking session from me %{mask.hash}@ negotiated: %{public}@ peer %{public}@", &v42, 0x2Au);
        }

        v33 = [KTVaudenaySAS alloc];
        v34 = [*(a1 + 32) myPublicInfo];
        v35 = +[KTVaudenaySASConfiguration sha256Transparency];
        v36 = [v33 initInitiatorWithPublic:v34 configuration:v35];
        [*(a1 + 32) setSas:v36];

        v37 = [*(a1 + 32) localSessionID];
        [*(a1 + 32) setNegotiatedSessionID:v37];

        v38 = [v6 sessionId];
        v39 = [NSData dataWithData:v38];
        [*(a1 + 32) setPeerSessionID:v39];

        v40 = [*(a1 + 32) session];
        v41 = [*(a1 + 32) negotiatedSessionID];
        [v40 negotiatedSessionID:v41 forMailbox:*(a1 + 32)];

        [*(a1 + 32) sendCommitA];
        [v3 setNextState:off_1000ADE40];
        goto LABEL_17;
      case 2:
        v19 = [*(a1 + 32) log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*(a1 + 32) peer];
          v42 = 141558274;
          v43 = 1752392040;
          v44 = 2112;
          v45 = v26;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ktAnnounce invalid session %{mask.hash}@", &v42, 0x16u);
        }

        break;
      case 1:
        v10 = [*(a1 + 32) log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 32) peer];
          v12 = [v6 sessionId];
          v13 = [v12 kt_hexString];
          v14 = [*(a1 + 32) localSessionID];
          v15 = [v14 kt_hexString];
          v42 = 141558786;
          v43 = 1752392040;
          v44 = 2112;
          v45 = v11;
          v46 = 2114;
          v47 = v13;
          v48 = 2114;
          v49 = v15;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ktAnnounce picking session from peer %{mask.hash}@ negotiated: %{public}@ local: %{public}@", &v42, 0x2Au);
        }

        v16 = [v6 sessionId];
        v17 = [NSData dataWithData:v16];
        [*(a1 + 32) setPeerSessionID:v17];

        v18 = [*(a1 + 32) peerSessionID];
        [*(a1 + 32) setNegotiatedSessionID:v18];

        v19 = +[KTVaudenaySASConfiguration sha256Transparency];
        v20 = [KTVaudenaySAS alloc];
        v21 = [*(a1 + 32) myPublicInfo];
        v22 = [v20 initAcceptorWithPublic:v21 configuration:v19];
        [*(a1 + 32) setSas:v22];

        v23 = [*(a1 + 32) session];
        v24 = [*(a1 + 32) negotiatedSessionID];
        [v23 negotiatedSessionID:v24 forMailbox:*(a1 + 32)];

        [*(a1 + 32) sendSelected];
        [v3 setNextState:off_1000ADE38];
        break;
      default:
LABEL_17:

        goto LABEL_18;
    }

    goto LABEL_17;
  }

  v25 = [v5 log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10006E7B4();
  }

  [v3 setNextState:off_1000ADE70];
LABEL_18:
}

void sub_1000290E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sas];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 gotCommitData];

    if (v6)
    {
      v7 = [_TtC21transparencyStaticKey10GSASCommit alloc];
      v8 = [*(a1 + 32) gotCommitData];
      v24 = 0;
      v9 = [(GSASCommit *)v7 initWithData:v8 error:&v24];
      v10 = v24;

      if (v9)
      {
        v11 = [(GSASCommit *)v9 publicInfo];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [(GSASCommit *)v9 aCommitRandom];
          v14 = [v13 length];

          if (v14)
          {
            v15 = [(GSASCommit *)v9 publicInfo];
            [*(a1 + 32) setPeerPublicInfo:v15];

            v16 = [*(a1 + 32) sas];
            v17 = [(GSASCommit *)v9 publicInfo];
            [v16 setPeerPublic:v17];

            v18 = [*(a1 + 32) sas];
            v19 = [(GSASCommit *)v9 aCommitRandom];
            [v18 setInitiatorUndisclosedRandom:v19];

            [*(a1 + 32) sendSetupB];
            v20 = [v3 intendedState];
            [v3 setNextState:v20];

LABEL_20:
            goto LABEL_21;
          }

          v23 = [*(a1 + 32) log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10006E7E8();
          }
        }

        else
        {
          v23 = [*(a1 + 32) log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10006E81C();
          }
        }

        v22 = off_1000ADE68;
      }

      else
      {
        v21 = [*(a1 + 32) log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10006E850();
        }

        [*(a1 + 32) setGotCommitData:0];
        v22 = off_1000ADE48;
      }

      [v3 setNextState:v22];
      goto LABEL_20;
    }

    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006E8C0();
    }
  }

  else
  {
    v10 = [v5 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006E8F4();
    }
  }

LABEL_21:
}

void sub_10002939C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sas];
  if (v4 && (v5 = v4, [*(a1 + 32) gotReplyBData], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [_TtC21transparencyStaticKey10GSASSetupB alloc];
    v8 = [*(a1 + 32) gotReplyBData];
    v23 = 0;
    v9 = [(GSASSetupB *)v7 initWithData:v8 error:&v23];
    v10 = v23;

    v11 = *(a1 + 32);
    v12 = [(GSASSetupB *)v9 sessionId];
    v13 = [v11 matchSession:v12 op:@"replyB"];

    v14 = *(a1 + 32);
    if (v13)
    {
      v15 = [(GSASSetupB *)v9 peerSessionId];
      v16 = [v14 matchPeerSessionID:v15 op:@"replyB"];

      if (v16)
      {
        [v3 setNextState:v16];
      }

      else
      {
        v17 = [(GSASSetupB *)v9 publicInfo];
        [*(a1 + 32) setPeerPublicInfo:v17];

        v18 = [*(a1 + 32) sas];
        v19 = [(GSASSetupB *)v9 publicInfo];
        [v18 setPeerPublic:v19];

        v20 = [*(a1 + 32) sas];
        v21 = [(GSASSetupB *)v9 bRandom];
        [v20 setPeerRandom:v21];

        [*(a1 + 32) sendRevealA];
        [*(a1 + 32) sendConfirm];
        [*(a1 + 32) updateState];
        v22 = [v3 intendedState];
        [v3 setNextState:v22];
      }
    }

    else
    {
      [*(a1 + 32) setGotReplyBData:0];
      [v3 setNextState:off_1000ADE40];
    }
  }

  else
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006E928();
    }
  }
}

void sub_1000295F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sas];

  if (v4)
  {
    v5 = [_TtC21transparencyStaticKey10GSASReveal alloc];
    v6 = [*(a1 + 32) gotRevealData];
    v24 = 0;
    v7 = [(GSASReveal *)v5 initWithData:v6 error:&v24];
    v8 = v24;

    v9 = *(a1 + 32);
    if (!v7)
    {
      v17 = [*(a1 + 32) log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10006E990();
      }

      [v3 setError:v8];
      goto LABEL_19;
    }

    v10 = [(GSASReveal *)v7 sessionId];
    v11 = [v9 matchSession:v10 op:@"DiscloseA"];

    v12 = *(a1 + 32);
    if ((v11 & 1) == 0)
    {
      [*(a1 + 32) setGotRevealData:0];
      [v3 setNextState:off_1000ADE48];
LABEL_19:

      goto LABEL_20;
    }

    v13 = [(GSASReveal *)v7 peerSessionId];
    v14 = [v12 matchPeerSessionID:v13 op:@"DiscloseA"];

    if (v14)
    {
      v15 = v3;
      v16 = v14;
    }

    else
    {
      v18 = [*(a1 + 32) sas];
      v19 = [(GSASReveal *)v7 aRandom];
      v20 = [v18 setPeerRandom:v19];

      v21 = *(a1 + 32);
      if (v20)
      {
        [v21 sendConfirm];
        [*(a1 + 32) updateState];
        v22 = [v3 intendedState];
        [v3 setNextState:v22];

LABEL_18:
        goto LABEL_19;
      }

      v23 = [v21 log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10006E95C();
      }

      v16 = off_1000ADE70;
      v15 = v3;
    }

    [v15 setNextState:v16];
    goto LABEL_18;
  }

  v8 = [*(a1 + 32) log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10006E9C4();
  }

LABEL_20:
}

void sub_100029850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_TtC21transparencyStaticKey11GSASConfirm alloc];
  v5 = [*(a1 + 32) gotConfirmData];
  v14 = 0;
  v6 = [(GSASConfirm *)v4 initWithData:v5 error:&v14];
  v7 = v14;

  v8 = *(a1 + 32);
  v9 = [(GSASConfirm *)v6 sessionId];
  LOBYTE(v8) = [v8 matchSession:v9 op:@"confirm"];

  v10 = *(a1 + 32);
  if (v8)
  {
    v11 = [(GSASConfirm *)v6 peerSessionId];
    v12 = [v10 matchPeerSessionID:v11 op:@"confirm"];

    if (v12)
    {
      [v3 setNextState:v12];
    }

    else
    {
      v13 = [v3 intendedState];
      [v3 setNextState:v13];
    }
  }

  else
  {
    [v10 setGotConfirmData:0];
    [v3 setNextState:off_1000ADE50];
  }
}

void sub_10002A5F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10002A62C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10002AE10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10002AE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [WeakRetained dependencies];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [WeakRetained removeDependency:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void *sub_10002AF98(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(a1);
  v5[4] = a2;
  v5[5] = a3;
  return v5;
}

id sub_10002AFEC(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[5];
    if (v3)
    {
      return sub_1000128A8(result, v3, a1);
    }

    else
    {
      return [result setExtension:a1[6] value:?];
    }
  }

  return result;
}

id sub_10002B014(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 1 && sub_100012268(a1, v9) == a2)
        {
          if (*(v9[1] + 30) - 13 >= 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_10002AFEC(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_10002B180(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 2 && sub_100012268(a1, v9) == a2)
        {
          if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 < 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_10002AFEC(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10002B300(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      *(a1 + 32) = 0;

      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }
  }
}

NSError *sub_10002B60C(void *a1)
{
  if (![objc_msgSend(a1 "name")] || (result = objc_msgSend(objc_msgSend(a1, "userInfo"), "objectForKeyedSubscript:", @"TransparencyGPBCodedInputStreamUnderlyingErrorKey")) == 0)
  {
    v3 = [a1 reason];
    if ([v3 length])
    {
      v5 = @"Reason";
      v6 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }

    return [NSError errorWithDomain:@"TransparencyGPBMessageErrorDomain" code:-100 userInfo:v4];
  }

  return result;
}

void sub_10002BC20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyWithZone:*(a1 + 40)];
  [*(a1 + 32) setObject:v5 forKey:a2];
}

NSMutableDictionary *sub_10002BD04(void *a1, uint64_t a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v4 = -[NSMutableDictionary initWithCapacity:](+[NSMutableDictionary allocWithZone:](NSMutableDictionary, "allocWithZone:", a2), "initWithCapacity:", [a1 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v21 = *v29;
    v22 = v4;
    do
    {
      v8 = 0;
      v23 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [a1 objectForKey:v9];
        v11 = *(v9[1] + 44) - 15;
        if ([v9 isRepeated])
        {
          if (v11 > 1)
          {
            v18 = [v10 mutableCopyWithZone:a2];
            goto LABEL_20;
          }

          v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:a2];
                [v12 addObject:v17];
              }

              v14 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          v4 = v22;
          [(NSMutableDictionary *)v22 setObject:v12 forKey:v9];

          v7 = v21;
          v6 = v23;
        }

        else
        {
          if (v11 <= 1)
          {
            v18 = [v10 copyWithZone:a2];
LABEL_20:
            v19 = v18;
            [(NSMutableDictionary *)v4 setObject:v18 forKey:v9];

            goto LABEL_22;
          }

          [(NSMutableDictionary *)v4 setObject:v10 forKey:v9];
        }

LABEL_22:
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

void *sub_10002C300(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*(v4 + 30) - 15 >= 2)
  {
    if (sub_100012798(a1, *(v4 + 20), *(v4 + 16)))
    {
      return *(*(a1 + 64) + *(a2[1] + 24));
    }

    else
    {
      return [a2 defaultValue];
    }
  }

  else
  {
    v5 = (*(a1 + 64) + *(v4 + 24));
    v6 = atomic_load(v5);
    if (!v6)
    {
      v6 = objc_alloc_init([a2 msgClass]);
      v6[4] = a1;
      v7 = a2;
      v8 = 0;
      v6[5] = v7;
      atomic_compare_exchange_strong(v5, &v8, v6);
      if (v8)
      {
        sub_10002B300(v6);

        return v8;
      }
    }
  }

  return v6;
}

void sub_10002C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10002C708(void *result, void *a2, void *a3, _BYTE *a4)
{
  if (*(a2[1] + 44) - 15 <= 1)
  {
    v6 = result;
    if ([a2 isRepeated])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!result)
      {
        return result;
      }

      v7 = result;
      v8 = *v11;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        result = [*(*(&v10 + 1) + 8 * v9) isInitialized];
        if (!result)
        {
          break;
        }

        if (v7 == ++v9)
        {
          result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v7 = result;
          if (result)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      result = [a3 isInitialized];
      if (result)
      {
        return result;
      }
    }

    *(*(v6[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10002DA1C(uint64_t a1, void *a2)
{
  [a2 containingMessageClass];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"Extension %@ used on wrong class (%@ instead of %@)", [a2 singletonName], objc_opt_class(), objc_msgSend(a2, "containingMessageClass"));
  }

  return result;
}

void sub_10002E3E8(void *a1, int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = sub_100038D20(a3 + 1);
    v10 = sub_1000391A8((a3 + 1), v9);
    while (sub_1000391FC((a3 + 1)))
    {
      v11 = sub_1000327E8(a1, a5, a3, a4, 0);
      if (v11)
      {
        v12 = v11;
        [a5 addExtension:a1 value:v11];
      }
    }

    sub_1000391F4((a3 + 1), v10);
  }

  else
  {
    v13 = a1[1];
    if (*(v13 + 45))
    {
      v15 = sub_1000327E8(a1, a5, a3, a4, 0);
      if (!v15)
      {
        return;
      }

      v17 = v15;
      [a5 addExtension:a1 value:v15];
    }

    else
    {
      if (*(v13 + 44) - 15 > 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [a5 getExistingExtension:a1];
      }

      v16 = sub_1000327E8(a1, a5, a3, a4, v14);
      if (!v16)
      {
        return;
      }

      v17 = v16;
      [a5 setExtension:a1 value:v16];
    }
  }
}

uint64_t sub_10002E5AC(void *a1)
{
  result = a1[1];
  if (!result)
  {
    a1[1] = objc_alloc_init(TransparencyGPBUnknownFieldSet);
    sub_10002AFEC(a1);
    return a1[1];
  }

  return result;
}

uint64_t sub_10002ED1C(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a2[1] + 30);
  v7 = sub_10002FA1C(a1, a2);
  v8 = sub_100038D20((a3 + 8));
  v9 = sub_1000391A8(a3 + 8, v8);
  while (sub_1000391FC(a3 + 8))
  {
    switch(v6)
    {
      case 0:
        v10 = sub_100038DF8((a3 + 8));
        goto LABEL_17;
      case 1:
      case 2:
        v10 = sub_100038D74((a3 + 8));
        goto LABEL_17;
      case 3:
        *&v11 = sub_100038C58((a3 + 8));
        [v7 addValue:v11];
        continue;
      case 4:
      case 5:
        v10 = sub_100038D38((a3 + 8));
        goto LABEL_17;
      case 6:
        [v7 addValue:sub_100038C1C((a3 + 8))];
        continue;
      case 7:
      case 11:
        v10 = sub_100038D20((a3 + 8));
        goto LABEL_17;
      case 8:
      case 12:
        v10 = sub_100038C94(a3 + 8);
        goto LABEL_17;
      case 9:
        v10 = sub_100038DB0((a3 + 8));
        goto LABEL_17;
      case 10:
        v10 = sub_100038DD4((a3 + 8));
LABEL_17:
        [v7 addValue:v10];
        break;
      case 17:
        v12 = sub_100038D20((a3 + 8));
        if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v12])
        {
          [sub_10002E5AC(a1) mergeVarintField:*(a2[1] + 16) value:v12];
        }

        else
        {
          [v7 addRawValue:v12];
        }

        break;
      default:
        continue;
    }
  }

  return sub_1000391F4(a3 + 8, v9);
}

void sub_10002EF5C(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_10002FA1C(a1, a2);
  switch(*(a2[1] + 30))
  {
    case 0:
      sub_100038DF8(a3 + 1);
      goto LABEL_14;
    case 1:
    case 2:
      sub_100038D74(a3 + 1);
      goto LABEL_14;
    case 3:
      *&v9 = sub_100038C58(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 4:
    case 5:
      sub_100038D38(a3 + 1);
      goto LABEL_32;
    case 6:
      v9 = sub_100038C1C(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 7:
    case 0xB:
      sub_100038D20(a3 + 1);
      goto LABEL_14;
    case 8:
    case 0xC:
      sub_100038C94(a3 + 1);
      goto LABEL_32;
    case 9:
      sub_100038DB0(a3 + 1);
LABEL_14:
      v13 = v8;

      goto LABEL_12;
    case 0xA:
      sub_100038DD4(a3 + 1);
LABEL_32:
      v13 = v8;

LABEL_12:
      [v13 addValue:v9];
      return;
    case 0xD:
      v10 = sub_1000390CC(a3 + 1);
      goto LABEL_23;
    case 0xE:
      v10 = sub_100038FC8(a3 + 1);
LABEL_23:
      v12 = v10;
      v17 = v10;
      v11 = v8;
      goto LABEL_24;
    case 0xF:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readMessage:v17 extensionRegistry:a4];
      goto LABEL_9;
    case 0x10:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readGroup:*(a2[1] + 16) message:v17 extensionRegistry:a4];
LABEL_9:
      v11 = v8;
      v12 = v17;
LABEL_24:
      [v11 addObject:v12];

      break;
    case 0x11:
      v14 = sub_100038D20(a3 + 1);
      if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v14])
      {
        v15 = sub_10002E5AC(a1);
        v16 = *(a2[1] + 16);

        [v15 mergeVarintField:v16 value:v14];
      }

      else
      {

        [v8 addRawValue:v14];
      }

      break;
    default:
      return;
  }
}

void *sub_10002F2E8(uint64_t a1, void *a2)
{
  v4 = sub_100012268(a1, a2);
  if (!v4)
  {
    v4 = sub_100032C94(a2, 0);
    sub_1000128EC(a1, a2, v4);
  }

  return v4;
}

void *sub_10002FA1C(uint64_t a1, void *a2)
{
  v4 = sub_100012268(a1, a2);
  if (!v4)
  {
    v4 = sub_10003333C(a2, 0);
    sub_1000128EC(a1, a2, v4);
  }

  return v4;
}

uint64_t sub_100030ECC(uint64_t a1)
{
  result = sub_10001A380();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100030F08(uint64_t a1)
{
  result = sub_100018D20();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100030F44(uint64_t a1)
{
  result = sub_100018D20();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100030F80(uint64_t a1)
{
  result = sub_100018D20();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100030FB8(uint64_t a1)
{
  result = sub_100018B44();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100030FF4(uint64_t a1)
{
  result = sub_100018B44();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100031030(uint64_t a1)
{
  result = sub_100018B44();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100031068(uint64_t a1, unsigned int a2)
{
  result = sub_100019340(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000310A4(uint64_t a1, unint64_t a2)
{
  result = sub_100018F20(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000310E0(uint64_t a1, int a2)
{
  result = sub_100019B9C(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10003111C(uint64_t a1, uint64_t a2)
{
  result = sub_100019DE0(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100031158(uint64_t a1, unsigned int a2)
{
  result = sub_100019594(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100031194(uint64_t a1, unint64_t a2)
{
  result = sub_100018F20(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000311D0(uint64_t a1, unsigned int a2)
{
  result = sub_100019340(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_100032420(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    if (*(v6 + 48))
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [NSException raise:NSInvalidArgumentException format:@"%@: %@ can only be set to NO (to clear field).", v5, NSStringFromSelector(v7)];
  }

  v8 = *(a1 + 32);

  sub_10001250C(a2, v8);
}

TransparencyGPBAutocreatedArray *sub_100032508(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  result = atomic_load(v3);
  if (!result)
  {
    result = sub_10003333C(v2, a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, result);
    if (v5)
    {
      if (*(v2[1] + 30) - 13 >= 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
      }

      *(&result->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return result;
}

TransparencyGPBAutocreatedDictionary *sub_1000325A4(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  v4 = atomic_load(v3);
  if (!v4)
  {
    v4 = sub_100032C94(*(a1 + 32), a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, v4);
    if (v5)
    {
      if ([v2 mapKeyDataType] == 14 && *(v2[1] + 30) - 13 < 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
      }

      *(&v4->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return v4;
}

id sub_100032674(uint64_t a1, uint64_t a2)
{
  v2 = sub_100012268(a2, *(a1 + 32));

  return [v2 count];
}

const __CFString *sub_1000327E8(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  switch(*(v5 + 44))
  {
    case 0:
      v21 = [NSNumber alloc];
      v22 = sub_100038DF8(a3 + 1);

      return [v21 initWithBool:v22];
    case 1:
      v11 = [NSNumber alloc];
      v12 = sub_100038D74(a3 + 1);
      goto LABEL_27;
    case 2:
      v15 = [NSNumber alloc];
      v16 = sub_100038D74(a3 + 1);
      goto LABEL_19;
    case 3:
      v17 = [NSNumber alloc];
      sub_100038C58(a3 + 1);

      return [v17 initWithFloat:v18];
    case 4:
      v13 = [NSNumber alloc];
      v14 = sub_100038D38(a3 + 1);
      goto LABEL_10;
    case 5:
      v26 = [NSNumber alloc];
      v27 = sub_100038D38(a3 + 1);
      goto LABEL_42;
    case 6:
      v28 = [NSNumber alloc];
      sub_100038C1C(a3 + 1);

      return [v28 initWithDouble:v29];
    case 7:
      v15 = [NSNumber alloc];
      v16 = sub_100038D20(a3 + 1);
      goto LABEL_19;
    case 8:
      v26 = [NSNumber alloc];
      v27 = sub_100038C94(a3 + 1);
      goto LABEL_42;
    case 9:
      v15 = [NSNumber alloc];
      v16 = sub_100038DB0(a3 + 1);
LABEL_19:
      v19 = v16;
      v20 = v15;
      goto LABEL_20;
    case 0xA:
      v26 = [NSNumber alloc];
      v27 = sub_100038DD4(a3 + 1);
LABEL_42:

      return [v26 initWithLongLong:v27];
    case 0xB:
      v11 = [NSNumber alloc];
      v12 = sub_100038D20(a3 + 1);
LABEL_27:

      return [v11 initWithUnsignedInt:v12];
    case 0xC:
      v13 = [NSNumber alloc];
      v14 = sub_100038C94(a3 + 1);
LABEL_10:

      return [v13 initWithUnsignedLongLong:v14];
    case 0xD:

      return sub_1000390CC(a3 + 1);
    case 0xE:

      return sub_100038FC8(a3 + 1);
    case 0xF:
    case 0x10:
      if (a5)
      {
        v9 = a5;
      }

      else
      {
        v9 = objc_alloc_init([objc_msgSend(objc_msgSend(a1 "msgClass")]);
      }

      v30 = v9;
      if (*(v5 + 44) == 16)
      {
        [a3 readGroup:*(v5 + 40) message:v9 extensionRegistry:a4];
      }

      else if ((*(v5 + 45) & 4) != 0)
      {
        [v9 mergeFromCodedInputStream:a3 extensionRegistry:a4];
      }

      else
      {
        [a3 readMessage:v9 extensionRegistry:a4];
      }

      return v30;
    case 0x11:
      v24 = sub_100038D20(a3 + 1);
      v25 = [a1 enumDescriptor];
      if ([v25 isClosed] && !(objc_msgSend(v25, "enumVerifier"))(v24))
      {
        [sub_10002E5AC(a2) mergeVarintField:*(a1[1] + 40) value:v24];
        return 0;
      }

      else
      {
        v20 = [NSNumber alloc];
        v19 = v24;
LABEL_20:

        return [v20 initWithInt:v19];
      }

    default:
      return 0;
  }
}

TransparencyGPBAutocreatedDictionary *sub_100032C94(void *a1, objc_class *a2)
{
  v4 = [a1 mapKeyDataType];
  result = 0;
  v6 = a1[1];
  v7 = *(v6 + 30);
  switch(v4)
  {
    case 0u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBBoolBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBBoolUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBBoolInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBBoolFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBBoolUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBBoolInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBBoolDoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBBoolObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBBoolEnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 1u:
    case 0xBu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 2u:
    case 7u:
    case 9u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 3u:
    case 6u:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
      return result;
    case 4u:
    case 0xCu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 5u:
    case 8u:
    case 0xAu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 0xEu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBStringBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBStringUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBStringInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBStringFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBStringUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBStringInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBStringDoubleDictionary;
LABEL_67:
          result = objc_alloc_init(v8);
          goto LABEL_68;
        case 0xD:
        case 0xE:
        case 0xF:
          if (a2)
          {
            result = objc_alloc_init(TransparencyGPBAutocreatedDictionary);
            goto LABEL_71;
          }

          result = objc_alloc_init(NSMutableDictionary);
          break;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBStringEnumDictionary;
LABEL_65:
          result = [[v9 alloc] initWithValidationFunction:{objc_msgSend(objc_msgSend(a1, "enumDescriptor"), "enumVerifier")}];
          goto LABEL_68;
        default:
          goto LABEL_68;
      }

      break;
    default:
LABEL_68:
      if (a2)
      {
        if (v4 == 14 && (v7 - 13) <= 3)
        {
LABEL_71:
          v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
        }

        else
        {
          v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
        }

        *(&result->super.super.super.isa + *v10) = a2;
      }

      break;
  }

  return result;
}

TransparencyGPBAutocreatedArray *sub_10003333C(void *a1, objc_class *a2)
{
  v3 = *(a1[1] + 30);
  switch(*(a1[1] + 30))
  {
    case 0:
      v5 = TransparencyGPBBoolArray;
      goto LABEL_14;
    case 1:
    case 0xB:
      v5 = TransparencyGPBUInt32Array;
      goto LABEL_14;
    case 2:
    case 7:
    case 9:
      v5 = TransparencyGPBInt32Array;
      goto LABEL_14;
    case 3:
      v5 = TransparencyGPBFloatArray;
      goto LABEL_14;
    case 4:
    case 0xC:
      v5 = TransparencyGPBUInt64Array;
      goto LABEL_14;
    case 5:
    case 8:
    case 0xA:
      v5 = TransparencyGPBInt64Array;
      goto LABEL_14;
    case 6:
      v5 = TransparencyGPBDoubleArray;
LABEL_14:
      result = objc_alloc_init(v5);
      goto LABEL_15;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      if (a2)
      {
        result = objc_alloc_init(TransparencyGPBAutocreatedArray);
LABEL_17:
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
LABEL_19:
        *(&result->super.super.super.isa + *v6) = a2;
      }

      else
      {

        return objc_alloc_init(NSMutableArray);
      }

      return result;
    case 0x11:
      result = -[TransparencyGPBEnumArray initWithValidationFunction:]([TransparencyGPBEnumArray alloc], "initWithValidationFunction:", [objc_msgSend(a1 "enumDescriptor")]);
      goto LABEL_15;
    default:
      result = 0;
LABEL_15:
      if (!a2)
      {
        return result;
      }

      if ((v3 - 13) <= 3)
      {
        goto LABEL_17;
      }

      v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      goto LABEL_19;
  }
}

uint64_t sub_1000336D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_1000128EC(a2, v4, v5);
}

uint64_t sub_100033718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_1000128EC(a2, v4, v5);
}

void sub_1000337D4(id a1)
{
  qword_1000AEDC8 = objc_alloc_init(TransparencyIDSConfigBag);

  _objc_release_x1();
}

void sub_100033AEC(id a1)
{
  qword_1000AEDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033CF8(id a1)
{
  qword_1000AEDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033F04(id a1)
{
  qword_1000AEDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100034110(id a1)
{
  qword_1000AEDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003431C(id a1)
{
  qword_1000AEDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100034718(void *key, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {

    CFDictionaryApplyFunction(a2, sub_1000347D0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    CFDictionarySetValue(theDict, key, MutableCopy);

    CFRelease(MutableCopy);
  }
}

uint64_t sub_100034FC4(uint64_t a1, unint64_t a2)
{
  result = sub_10001B11C(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100035000(uint64_t a1)
{
  result = sub_10001B0CC(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10003503C(uint64_t a1)
{
  result = sub_10001B02C(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

unint64_t sub_100035A4C()
{
  if (!atomic_load(&qword_1000AEDE0))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBNullValue" valueNames:"NullValue" values:&unk_10008C188 count:1 enumVerifier:sub_100035ACC flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_1000AEDE0, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_1000AEDE0);
}

uint64_t sub_100035BD4(uint64_t a1)
{
  v2 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_100012DA8(a1, v2);
}

id sub_100035C20(void *a1, int a2)
{
  v4 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_100012DAC(a1, v4, a2);
}

void sub_100035C74(uint64_t a1)
{
  v2 = [objc_msgSend(+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  sub_100012650(a1, v2);
}

void sub_10003700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037044(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) transitionOperation];
    v4 = [v3 error];

    if (v4)
    {
      v5 = [v4 domain];
      if ([v5 isEqualToString:@"KTResultOperationError"])
      {
        v6 = [v4 code];

        if (v6 == 3)
        {
          v7 = [WeakRetained queue];
          v8[0] = _NSConcreteStackBlock;
          v8[1] = 3221225472;
          v8[2] = sub_100037174;
          v8[3] = &unk_100094F80;
          v9 = WeakRetained;
          v10 = v4;
          dispatch_sync(v7, v8);
        }
      }

      else
      {
      }
    }
  }
}

void sub_100037180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003722C;
    block[3] = &unk_100094F10;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_10003722C(uint64_t a1)
{
  v2 = [NSError errorWithDomain:@"KTResultOperationError" code:4 description:@"SIGTERM happened"];
  [*(a1 + 32) _onqueuePerformTimeoutWithUnderlyingError:v2];
}

void sub_1000376F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueuePerformTimeoutWithUnderlyingError:0];
}

void sub_100038908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueuePerformTimeoutWithUnderlyingError];
}

id sub_100038ABC(uint64_t a1)
{
  result = [*(a1 + 32) completed];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 onqueueStartFinishOperation:v4];
  }

  return result;
}

double sub_100038C1C(void *a1)
{
  sub_10003905C(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

float sub_100038C58(void *a1)
{
  sub_10003905C(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_100038C98(uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  while (v2 <= 0x3F)
  {
    sub_10003905C(a1, 1);
    v4 = *a1;
    v5 = a1[2];
    a1[2] = v5 + 1;
    LOBYTE(v4) = *(v4 + v5);
    v3 |= (v4 & 0x7F) << v2;
    v2 += 7;
    if ((v4 & 0x80) == 0)
    {
      return v3;
    }
  }

  sub_100038ED0(-105, @"Invalid VarInt64");
  return 0;
}

uint64_t sub_100038D38(void *a1)
{
  sub_10003905C(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t sub_100038D74(void *a1)
{
  sub_10003905C(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_100038E18(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 8) || v2 == *(a1 + 24))
  {
    v3 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v3 = sub_100038C98(a1);
    *(a1 + 32) = v3;
    if (!sub_10002519C(v3))
    {
      sub_100038ED0(-103, @"Invalid wireformat in tag.");
      v3 = *(a1 + 32);
    }

    if (!sub_100025194(v3))
    {
      sub_100038ED0(-103, @"A zero field number on the wire is invalid.");
      return *(a1 + 32);
    }
  }

  return v3;
}

id sub_100038ED0(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v8 = @"Reason";
    v9 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = @"TransparencyGPBCodedInputStreamUnderlyingErrorKey";
  v7 = [NSError errorWithDomain:@"TransparencyGPBCodedInputStreamErrorDomain" code:a1 userInfo:v4];
  return [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"TransparencyGPBCodedInputStreamException"];
}

const __CFString *sub_100038FC8(uint64_t *a1)
{
  v2 = sub_100038C98(a1);
  if (!v2)
  {
    return &stru_100096EB8;
  }

  sub_10003905C(a1, v2);
  result = [[NSString alloc] initWithBytes:*a1 + a1[2] length:v2 encoding:4];
  a1[2] += v2;
  if (!result)
  {
    sub_100038ED0(-104, 0);
    return 0;
  }

  return result;
}

void *sub_10003905C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2] + a2;
  if (v3 > result[1])
  {
    result = sub_100038ED0(-100, 0);
  }

  v4 = v2[3];
  if (v3 > v4)
  {
    v2[2] = v4;

    return sub_100038ED0(-101, 0);
  }

  return result;
}

id sub_1000390CC(uint64_t *a1)
{
  v2 = sub_100038C98(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_10003905C(a1, v3);
  result = [[NSData alloc] initWithBytes:*a1 + a1[2] length:v3];
  a1[2] += v3;
  return result;
}

id sub_100039138(uint64_t *a1)
{
  v2 = sub_100038C98(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_10003905C(a1, v3);
  result = [[NSData alloc] initWithBytesNoCopy:*a1 + a1[2] length:v3 freeWhenDone:0];
  a1[2] += v3;
  return result;
}

unint64_t sub_1000391A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v4 > v3)
  {
    sub_100038ED0(-102, 0);
  }

  *(a1 + 24) = v4;
  return v3;
}

_DWORD *sub_100039208(_DWORD *result, int a2)
{
  if (result[8] != a2)
  {
    return sub_100038ED0(-103, @"Unexpected tag read");
  }

  return result;
}

uint64_t sub_100039AE4(void *a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 30);
  v5 = [a1 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [a1 objectForKeyedSubscript:v7];
      v10 = sub_10001B274(1, v7);
      v11 = &v10[sub_100039BC8(v9, v4)];
      v8 += &v11[sub_100019594(v11)];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = sub_10001B780(*(*(a2 + 8) + 16), 15);
  return v8 + [a1 count] * v12;
}

char *sub_100039BC8(void *a1, int a2)
{
  switch(a2)
  {
    case 13:
      return sub_10001B424(2, a1);
    case 14:
      return sub_10001B274(2, a1);
    case 15:
      return sub_10001B384(2, a1);
  }

  return 0;
}

id sub_100039C10(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 30);
  v7 = sub_100025184(*(v5 + 16), 2);
  v8 = [a2 keyEnumerator];
  result = [v8 nextObject];
  if (result)
  {
    v10 = result;
    do
    {
      v11 = [a2 objectForKeyedSubscript:v10];
      [a1 writeInt32NoTag:v7];
      v12 = sub_10001B274(1, v10);
      [a1 writeInt32NoTag:{sub_100039BC8(v11, v6) + v12}];
      [a1 writeString:1 value:v10];
      sub_100039CFC(a1, v11, v6);
      result = [v8 nextObject];
      v10 = result;
    }

    while (result);
  }

  return result;
}

void *sub_100039CFC(void *a1, const char *a2, int a3)
{
  switch(a3)
  {
    case 13:
      return [a1 writeBytes:2 value:a2];
    case 14:
      return [a1 writeString:2 value:a2];
    case 15:
      return [a1 writeMessage:2 value:a2];
  }

  return a1;
}

BOOL sub_100039D3C(void *a1)
{
  v1 = [a1 objectEnumerator];
  do
  {
    v2 = [v1 nextObject];
    v3 = v2;
  }

  while (v2 && ([v2 isInitialized] & 1) != 0);
  return v3 == 0;
}

void sub_100039D84(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [a4 mapKeyDataType];
  v10 = *(a4[1] + 30);
  v24 = 0;
  v25 = 0;
  if (v10 == 17)
  {
    v24 = [a4 defaultValue];
  }

  v11 = sub_1000251AC(v9, 0);
  v12 = sub_100025184(1, v11);
  v13 = sub_1000251AC(v10, 0);
  v14 = sub_100025184(2, v13);
  while (1)
  {
    while (1)
    {
      v15 = sub_100038E18((a2 + 1));
      if (v15 == v12)
      {
        v16 = &v25;
        v17 = a2;
        v18 = v9;
        goto LABEL_8;
      }

      v19 = v15;
      if (v15 != v14)
      {
        break;
      }

      v16 = &v24;
      v17 = a2;
      v18 = v10;
LABEL_8:
      sub_10003A000(v17, v16, v18, a3, a4);
    }

    if (!v15)
    {
      break;
    }

    if (([a2 skipField:v15] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = v25;
  if (v9 == 14 && !v25)
  {
    v20 = &stru_100096EB8;
    v25 = v20;
  }

  v21 = v24;
  if ((v10 - 13) > 3u || v24)
  {
    goto LABEL_25;
  }

  switch(v10)
  {
    case 13:
      v22 = sub_100011C5C();
      goto LABEL_23;
    case 15:
      v22 = objc_alloc_init([a4 msgClass]);
LABEL_23:
      v21 = v22;
      v24 = v22;
      goto LABEL_25;
    case 14:
      v22 = &stru_100096EB8;
      goto LABEL_23;
  }

  v21 = 0;
LABEL_25:
  if (v9 == 14 && (v10 - 13) <= 3u)
  {
    [a1 setObject:v21 forKey:v20];
    goto LABEL_34;
  }

  if (v10 == 17 && (*(a4[1] + 28) & 0x1000) != 0 && ![a4 isValidEnumValue:v21])
  {
    [a5 addUnknownMapEntry:*(a4[1] + 16) value:{objc_msgSend(a1, "serializedDataForUnknownValue:forKey:keyDataType:", v21, &v25, v9)}];
  }

  else
  {
    [a1 setTransparencyGPBGenericValue:&v24 forTransparencyGPBGenericValueKey:&v25];
  }

LABEL_32:
  if ((v9 - 13) > 3u)
  {
    goto LABEL_35;
  }

  v20 = v25;
LABEL_34:

LABEL_35:
  if ((v10 - 13) <= 3u)
  {
  }
}