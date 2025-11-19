void sub_10003F0F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_10003F114(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000867C0();
  }

  [WeakRetained _mainQueue_unblockSessionQueue];
  v6 = [WeakRetained setupLauncher];
  [v6 invalidate];

  [WeakRetained setSetupLauncher:0];
  (*(*(a1 + 32) + 16))();
}

void sub_10003F1C0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F268;
  block[3] = &unk_1000DEA00;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_10003F268(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPresenterSession];
  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000867F4();
    }

    v3 = *(*(a1 + 40) + 16);
  }

  v3();
}

intptr_t sub_10003F620(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100086834();
  }

  return dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10003F814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F838(uint64_t a1, uint64_t a2)
{
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlay Setup lockscreen alert dismiss with response: %lu", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLockscreenAlert:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_10003FD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003FDA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10003FDC0(void *a1)
{
  v2 = objc_alloc_init(CRSetupPromptPresenterSession);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(a1[6] + 8) + 40) setSessionDelegate:a1[4]];
  [*(*(a1[6] + 8) + 40) setConnection:a1[5]];
  v5 = a1[4];
  v6 = *(*(a1[6] + 8) + 40);

  return [v5 setCurrentPresenterSession:v6];
}

void sub_10003FE44(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *buf = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setup prompt service connection interrupted: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FF5C;
  block[3] = &unk_1000DD480;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_10003FF68(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *buf = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setup prompt service connection invalidated: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040080;
  block[3] = &unk_1000DD480;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_100040510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReads];
}

void sub_100040904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100040944(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRemoteXPCSocket:a2];
  [*(a1 + 32) _setupACCTransportClient];
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating read dispatch source for Remote XPC connection", buf, 2u);
  }

  v4 = [*(a1 + 32) remoteXPCSocket];
  v5 = [*(a1 + 32) rxpcQueue];
  v6 = dispatch_source_create(&_dispatch_source_type_read, v4, 0, v5);
  [*(a1 + 32) setRemoteXPCSource:v6];

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v7 = [*(a1 + 32) _lock_wiredCarPlaySimulatorActive];
  v8 = [*(a1 + 32) delegate];
  [v8 setCarPlaySimulatorActive:v7];

  v9 = [*(a1 + 32) delegate];
  [v9 setRemoteDeviceConnected:1];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = [*(a1 + 32) remoteXPCSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100040B18;
  handler[3] = &unk_1000DDA60;
  objc_copyWeak(&v13, (a1 + 40));
  dispatch_source_set_event_handler(v10, handler);

  v11 = [*(a1 + 32) remoteXPCSource];
  dispatch_resume(v11);

  objc_destroyWeak(&v13);
}

void sub_100040B18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  do
  {
    v2 = [WeakRetained remoteXPCSource];
    data = dispatch_source_get_data(v2);

    v4 = &v10 - ((data + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, data);
    v5 = read([WeakRetained remoteXPCSocket], v4, data);
    if (v5 <= 0)
    {
      break;
    }

    v6 = [NSData dataWithBytes:v4 length:v5];
    v7 = [sub_100002980() sharedClient];
    v8 = [WeakRetained endpointUUID];
    [v7 processIncomingData:v6 forEndpointWithUUID:v8];

    if (!data)
    {
      break;
    }

    if ([WeakRetained remoteXPCSocket] < 1)
    {
      break;
    }

    v9 = [WeakRetained remoteXPCSource];
  }

  while (v9);
}

void sub_100040C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLockdownConnection:a2 info:a3];
}

void sub_100041010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100041034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  os_unfair_lock_lock(WeakRetained + 2);
  if ([(os_unfair_lock_s *)WeakRetained lock_lockdownConnection])
  {
    lockdown_get_buffered_read_size();
  }

  os_unfair_lock_unlock(WeakRetained + 2);
}

Class sub_100041624(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100107F60)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100041768;
    v4[4] = &unk_1000DD698;
    v4[5] = v4;
    v5 = off_1000DEAC0;
    v6 = 0;
    qword_100107F60 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100107F60)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ACCTransportClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100086B2C();
  }

  qword_100107F58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100041768(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100107F60 = result;
  return result;
}

void sub_100041910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 supportsLogTransfer];

  if (v4)
  {
    v5 = sub_100002A68(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session connected, setting up the logging file receiver", v8, 2u);
    }

    v6 = [[CRLoggingFileReceiver alloc] initWithSession:*(a1 + 32)];
    v7 = WeakRetained[1];
    WeakRetained[1] = v6;
  }
}

void sub_100041A78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentLoggingFileReceiver];

  if (v2)
  {
    v3 = sub_100002A68(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "session disconnected, removing the logging file receiver", v6, 2u);
    }

    v4 = [WeakRetained currentLoggingFileReceiver];
    [v4 invalidate];

    v5 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

void sub_100041FB0(uint64_t a1)
{
  v2 = sub_100002A68(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saved log archive from vehicle at %@", &v8, 0xCu);
  }

  [*(a1 + 40) setTransaction:0];
  v4 = [*(a1 + 40) currentCompletion];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
    v6 = *(a1 + 40);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

id sub_100042438(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = off_100107F68;
  v10 = off_100107F68;
  if (!off_100107F68)
  {
    v3 = sub_100045C54();
    v8[3] = dlsym(v3, "NSStringFromCRAccNavRole");
    off_100107F68 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100084C30();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(a1);

  return v4;
}

void sub_100042998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100042F24(uint64_t a1)
{
  v2 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100086C40(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeConnection:v4];
}

void sub_100042FA0(uint64_t a1)
{
  v2 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100086CCC(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeConnection:v4];
}

void sub_100043150(uint64_t a1)
{
  v2 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing owners for connection: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) _work_queue_removeNavigationOwnerForConnection:*(a1 + 32)];
  v4 = [*(a1 + 40) observers];
  [v4 removeObject:*(a1 + 32)];
}

void sub_100043884(uint64_t a1)
{
  v2 = [*(a1 + 32) owners];
  v5 = [v2 lastObject];

  v3 = *(a1 + 40);
  v4 = [v5 identifier];
  (*(v3 + 16))(v3, v4);
}

void sub_1000439C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _work_queue_activeNavigationIdentifiers];
  (*(*(a1 + 40) + 16))();
}

void sub_100043B28(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 connection];
  if ([v3 processIdentifier] != *(a1 + 48))
  {

LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = [v8 identifier];
  v6 = [v4 isEqualToString:v5];

  v7 = v8;
  if (v6)
  {
LABEL_7:
    [*(a1 + 40) addObject:v8];
    goto LABEL_8;
  }

LABEL_9:
}

void sub_10004417C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteObjectProxy];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CRCarPlayNavigationOwnerClient])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Informing navigation owner observer: %{public}@", &v12, 0xCu);
    }

    [v5 activeNavigationIdentifiersChangedTo:*(a1 + 32)];
  }

  v7 = [v3 remoteObjectProxy];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___CRNavigationClient])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = sub_100002A68(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[addNavigationIdentifer] Informing navigation observer: %{public}@", &v12, 0xCu);
    }

    [v8 activeNavigationIdentifiersChangedTo:*(a1 + 32)];
    v10 = [*(a1 + 40) accNavProvider];
    v11 = [v10 activeComponents];
    [v8 didUpdateActiveComponents:v11];
  }
}

void sub_100044AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[removeNavigationOwner] Informing navigation observer: %{public}@", &v6, 0xCu);
  }

  v5 = [v3 remoteObjectProxy];
  [v5 activeNavigationIdentifiersChangedTo:*(a1 + 32)];
}

void sub_100044D58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v7 = [v3 connection];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[navigationOwnershipChangedFromCar] Informing navigation owner: %{public}@(%d)", &v9, 0x12u);
  }

  v8 = [v4 remoteObjectProxy];
  [v8 navigationOwnershipChangedTo:*(a1 + 32)];
}

void sub_100044FB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

void sub_10004585C(uint64_t a1)
{
  v2 = sub_100002A68(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) owners];
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "activeComponents=%{public}@ owners=%{public}@", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [*(a1 + 40) owners];
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

        [*(a1 + 40) _work_queue_updateActiveComponents:*(a1 + 32) forOwner:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void *sub_100045C04(uint64_t a1)
{
  v2 = sub_100045C54();
  result = dlsym(v2, "NSStringFromCRAccNavRole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100107F68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100045C54()
{
  v3[0] = 0;
  if (!qword_100107F70)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100045D54;
    v3[4] = &unk_1000DD698;
    v3[5] = v3;
    v4 = off_1000DEBE8;
    v5 = 0;
    qword_100107F70 = _sl_dlopen();
  }

  v0 = qword_100107F70;
  v1 = v3[0];
  if (!qword_100107F70)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100045D54(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100107F70 = result;
  return result;
}

Class sub_100045DC8(uint64_t a1)
{
  sub_100045C54();
  result = objc_getClass("CRAccNavProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100107F78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100086F30();
    return sub_100045E20(v3);
  }

  return result;
}

void *sub_100045E20(uint64_t a1)
{
  v2 = sub_100045C54();
  result = dlsym(v2, "CRNavigationServiceInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100107F80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100045E70(uint64_t a1)
{
  v2 = sub_100045C54();
  result = dlsym(v2, "CRNavigationClientInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100107F88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10004623C(uint64_t a1)
{
  [*(a1 + 32) setAnalyticsCompletion:0];
  v2 = [*(a1 + 32) analyticsTimeout];
  [v2 invalidate];

  [*(a1 + 32) setAnalyticsTimeout:0];
  [*(a1 + 32) setLicensesCompletion:0];
  v3 = [*(a1 + 32) licensesTimeout];
  [v3 invalidate];

  [*(a1 + 32) setLicensesTimeout:0];
  v4 = [*(a1 + 32) channel];
  [v4 setChannelDelegate:0];

  if ([*(a1 + 32) channelIsOpen])
  {
    v5 = [*(a1 + 32) channel];
    [v5 closeChannel];

    [*(a1 + 32) setChannelIsOpen:0];
  }

  v6 = *(a1 + 32);

  return [v6 setTransaction:0];
}

void sub_1000463F8(uint64_t a1)
{
  v8[0] = @"messageType";
  v8[1] = @"data";
  v2 = *(a1 + 32);
  v9[0] = &off_1000E7A98;
  v9[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [*(a1 + 40) _channelQueue_sendMessage:v3];
  v4 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sending video subtitle settings: %{public}@", &v6, 0xCu);
  }
}

void sub_1000465A0(uint64_t a1)
{
  v9[0] = &off_1000E7AB0;
  v8[0] = @"messageType";
  v8[1] = @"data";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v9[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [*(a1 + 32) _channelQueue_sendMessage:v3];
  v4 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v5 = @"enable";
    }

    else
    {
      v5 = @"disable";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sending video diagnostics setting: %{public}@", &v6, 0xCu);
  }
}

void sub_100046798(uint64_t a1)
{
  [*(a1 + 32) setAnalyticsCompletion:*(a1 + 40)];
  v2 = [*(a1 + 32) analyticsTimeout];

  if (v2)
  {
    v3 = [*(a1 + 32) analyticsTimeout];
    [v3 invalidate];

    [*(a1 + 32) setAnalyticsTimeout:0];
  }

  v11 = @"messageType";
  v12 = &off_1000E7AC8;
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [*(a1 + 32) _channelQueue_sendMessage:v4];
  v5 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sending video settings analytics request", &buf, 2u);
  }

  objc_initWeak(&buf, *(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000469CC;
  v8[3] = &unk_1000DE068;
  objc_copyWeak(&v9, &buf);
  v6 = [NSTimer timerWithTimeInterval:0 repeats:v8 block:5.0];
  v7 = +[NSRunLoop mainRunLoop];
  [v7 addTimer:v6 forMode:NSDefaultRunLoopMode];

  [*(a1 + 32) setAnalyticsTimeout:v6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&buf);
}

void sub_1000469A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000469CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100086F58();
  }

  v3 = [WeakRetained channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046A90;
  block[3] = &unk_1000DD480;
  block[4] = WeakRetained;
  dispatch_async(v3, block);
}

void sub_100046B50(uint64_t a1)
{
  [*(a1 + 32) setLicensesCompletion:*(a1 + 40)];
  v2 = [*(a1 + 32) licensesTimeout];

  if (v2)
  {
    v3 = [*(a1 + 32) licensesTimeout];
    [v3 invalidate];

    [*(a1 + 32) setLicensesTimeout:0];
  }

  v11 = @"messageType";
  v12 = &off_1000E7AE0;
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [*(a1 + 32) _channelQueue_sendMessage:v4];
  v5 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sending video settings licenses request", &buf, 2u);
  }

  objc_initWeak(&buf, *(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100046D84;
  v8[3] = &unk_1000DE068;
  objc_copyWeak(&v9, &buf);
  v6 = [NSTimer timerWithTimeInterval:0 repeats:v8 block:5.0];
  v7 = +[NSRunLoop mainRunLoop];
  [v7 addTimer:v6 forMode:NSDefaultRunLoopMode];

  [*(a1 + 32) setLicensesTimeout:v6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&buf);
}

void sub_100046D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100046D84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100086F8C();
  }

  v3 = [WeakRetained channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046E48;
  block[3] = &unk_1000DD480;
  block[4] = WeakRetained;
  dispatch_async(v3, block);
}

void sub_100046F74(uint64_t a1)
{
  v8 = 0;
  objc_opt_class();
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = OPACKDecodeData();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004709C;
    v7[3] = &unk_1000DEC30;
    v7[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v6 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100086FC0(v3, &v8, v6);
    }
  }
}

void sub_10004709C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = v7;
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if ([v9 isEqualToString:@"analytics"])
    {
      v10 = objc_opt_class();
      v11 = v8;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10004777C;
          v19[3] = &unk_1000DD518;
          v19[4] = v10;
          v12 = [NSPredicate predicateWithBlock:v19];
          v13 = [v11 filteredArrayUsingPredicate:v12];
          v14 = [v13 count];

          if (!v14)
          {
            v15 = sub_100002A68(6uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v19[0]) = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received analytics data", v19, 2u);
            }

            [*(a1 + 32) _channelQueue_handleAnalyticsData:v11];
LABEL_17:

LABEL_19:
            v16 = v9;
            goto LABEL_20;
          }
        }
      }

      goto LABEL_18;
    }

    v17 = [v9 isEqualToString:@"licenses"];
    v16 = v9;
    if (v17)
    {
      objc_opt_class();
      v11 = v8;
      if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v18 = sub_100002A68(6uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19[0]) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "received licenses data", v19, 2u);
        }

        [*(a1 + 32) _channelQueue_handleLicensesData:v11];
        goto LABEL_17;
      }

LABEL_18:

      *a4 = 1;
      goto LABEL_19;
    }
  }

  else
  {

    v16 = 0;
    *a4 = 1;
  }

LABEL_20:
}

void sub_1000477A8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100049208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049230(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000492E8;
  v5[3] = &unk_1000DD8E8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000492E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentNextStepAfterResponse:*(a1 + 32)];
}

void sub_100049574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100049590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100049680;
  v6[3] = &unk_1000DD8A0;
  objc_copyWeak(&v9, (a1 + 64));
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 presentBluetoothConfirmationPromptForVehicleName:v4 numericCode:v5 responseHandler:v6];

  objc_destroyWeak(&v9);
}

void sub_100049680(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth confirmation prompt received response: %{public}@", &v11, 0xCu);
  }

  v7 = [NSNumber numberWithBool:a2];
  [WeakRetained setBluetoothConfirmed:v7];

  if (!a2 || ([WeakRetained showBluetoothOnlyOption] & 1) == 0)
  {
    v8 = [WeakRetained promptDelegate];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 pairingPromptFlow:WeakRetained receivedBluetoothConfirmationResponse:a2 forDeviceIdentifier:*(a1 + 32)];
    }
  }

  [WeakRetained setNumericCode:0];
  v9 = *(a1 + 40);
  v10 = [NSNumber numberWithBool:a2];
  (*(v9 + 16))(v9, v10);
}

void sub_100049904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100049920(id *a1, void *a2)
{
  v3 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000499FC;
  v4[3] = &unk_1000DD8A0;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  [v3 presentBluetoothContactsSyncPromptWithResponseHandler:v4];

  objc_destroyWeak(&v7);
}

void sub_1000499FC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth contacts sync prompt received response: %{public}@", &v12, 0xCu);
  }

  v7 = [WeakRetained promptDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 pairingPromptFlow:WeakRetained receivedBluetoothContactsSyncResponse:a2 forDeviceIdentifier:*(a1 + 32)];
  }

  if ([WeakRetained showBluetoothOnlyOption])
  {
    v8 = [WeakRetained bluetoothConfirmed];
    v9 = [v8 BOOLValue];

    if (v7)
    {
      if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 pairingPromptFlow:WeakRetained receivedBluetoothConfirmationResponse:1 forDeviceIdentifier:*(a1 + 32)];
      }
    }
  }

  v10 = *(a1 + 40);
  v11 = [NSNumber numberWithBool:a2];
  (*(v10 + 16))(v10, v11);
}

void sub_100049C80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100049D20;
  v5[3] = &unk_1000DD960;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 presentBluetoothFailedPromptForVehicleName:v4 isTimeout:v3 responseHandler:v5];
}

uint64_t sub_100049D20(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bluetooth failed prompt received response", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100049F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100049F38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004A008;
  v5[3] = &unk_1000DED38;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 presentAllowWhileLockedPromptForVehicleName:v4 responseHandler:v5];

  objc_destroyWeak(&v7);
}

void sub_10004A008(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "allow while locked prompt received response: %{public}@", &v11, 0xCu);
  }

  v7 = [NSNumber numberWithBool:a2];
  [WeakRetained setPairingAccepted:v7];

  v8 = [WeakRetained promptDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 pairingPromptFlow:WeakRetained receivedAllowWhileLockedResponse:a2];
  }

  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithBool:a2];
  (*(v9 + 16))(v9, v10);
}

void sub_10004A4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A4C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004A5C4;
  v8[3] = &unk_1000DED88;
  objc_copyWeak(&v10, (a1 + 48));
  v11 = *(a1 + 72);
  v9 = *(a1 + 40);
  v4 = objc_retainBlock(v8);
  v5 = [*(a1 + 32) _supportsThemeAssets];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v5)
  {
    [v3 presentAssetSupportingUseWirelessPromptWithWirelessEnablement:v6 declineVariant:v7 responseHandler:v4];
  }

  else
  {
    [v3 presentUseWirelessPromptWithWirelessEnablement:v6 declineVariant:v7 responseHandler:v4];
  }

  objc_destroyWeak(&v10);
}

void sub_10004A5C4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "use wireless prompt received response: %{public}@", &v10, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    [WeakRetained _incrementOutOfBandPairingDeclineCount];
  }

  v7 = [WeakRetained promptDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 pairingPromptFlow:WeakRetained receivedUseWirelessResponse:a2 turnOnBluetooth:*(a1 + 48) turnOnWiFi:*(a1 + 49)];
  }

  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithBool:a2];
  (*(v8 + 16))(v8, v9);
}

void sub_10004A868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10004A884(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004A988;
  v8[3] = &unk_1000DEDD8;
  objc_copyWeak(&v10, (a1 + 48));
  v11 = *(a1 + 64);
  v9 = *(a1 + 40);
  v4 = objc_retainBlock(v8);
  v5 = [*(a1 + 32) _supportsThemeAssets];
  v6 = *(a1 + 65);
  v7 = *(a1 + 56);
  if (v5)
  {
    [v3 presentAssetSupportingConnectPromptWithBluetoothOnlyOption:v6 wirelessEnablement:v7 responseHandler:v4];
  }

  else
  {
    [v3 presentConnectPromptWithBluetoothOnlyOption:v6 wirelessEnablement:v7 responseHandler:v4];
  }

  objc_destroyWeak(&v10);
}

void sub_10004A988(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connect CarPlay prompt received response: %{public}@", &v11, 0xCu);
  }

  v7 = [NSNumber numberWithBool:a2];
  [WeakRetained setPairingAccepted:v7];

  v8 = [WeakRetained promptDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 pairingPromptFlow:WeakRetained receivedConnectCarPlayResponse:a2 turnOnWiFi:*(a1 + 48)];
  }

  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithBool:a2];
  (*(v9 + 16))(v9, v10);
}

void sub_10004AC48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10004AC64(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004AD68;
  v8[3] = &unk_1000DEDD8;
  objc_copyWeak(&v10, (a1 + 48));
  v11 = *(a1 + 64);
  v9 = *(a1 + 40);
  v4 = objc_retainBlock(v8);
  v5 = [*(a1 + 32) _supportsThemeAssets];
  v6 = *(a1 + 65);
  v7 = *(a1 + 56);
  if (v5)
  {
    [v3 presentAssetSupportingConnectPromptWithBluetoothOnlyOption:v6 wirelessEnablement:v7 responseHandler:v4];
  }

  else
  {
    [v3 presentConnectPromptWithBluetoothOnlyOption:v6 wirelessEnablement:v7 responseHandler:v4];
  }

  objc_destroyWeak(&v10);
}

void sub_10004AD68(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connect CarPlay from car key prompt received response: %{public}@", &v15, 0xCu);
  }

  v7 = [NSNumber numberWithBool:a2];
  [WeakRetained setPairingAccepted:v7];

  v8 = [WeakRetained promptDelegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained vehicleName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [WeakRetained bluetoothDeviceIdentifier];
    }

    v12 = v11;

    [v8 pairingPromptFlow:WeakRetained receivedConnectCarPlayFromCarKeyResponse:a2 vehicleName:v12 turnOnWiFi:*(a1 + 48)];
  }

  v13 = *(a1 + 32);
  v14 = [NSNumber numberWithBool:a2];
  (*(v13 + 16))(v13, v14);
}

void sub_10004B094(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004B0B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004B180;
  v5[3] = &unk_1000DED38;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 presentEnhancedIntegrationPromptForVehicleName:v4 responseHandler:v5];

  objc_destroyWeak(&v7);
}

void sub_10004B180(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enhanced integrated prompt received response: %{public}@", &v10, 0xCu);
  }

  v7 = [WeakRetained promptDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 pairingPromptFlow:WeakRetained receivedEnhancedIntegrationResponse:a2];
  }

  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithBool:a2];
  (*(v8 + 16))(v8, v9);
}

void sub_10004B420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10004B43C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004B574;
  v9[3] = &unk_1000DD960;
  v10 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004B5F8;
  v6[3] = &unk_1000DED38;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v3 presentAssetProgressForVehicleName:v4 progress:v5 completionHandler:v9 cancelHandler:v6];

  objc_destroyWeak(&v8);
}

uint64_t sub_10004B574(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "asset progress prompt completed", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004B5F8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CarPairingLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asset progress prompt: ready soon.", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asset progress prompt: canceled", v7, 2u);
    }

    [WeakRetained _cancelWithRequiredStepsRemaining:1];
  }
}

void sub_10004B7CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004B7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004B8B8;
  v5[3] = &unk_1000DED38;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 presentAssetUnavailableWithDescription:v4 responseHandler:v5];

  objc_destroyWeak(&v7);
}

void sub_10004B8B8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "asset unavailable prompt: check for updates", v7, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [WeakRetained _cancelWithRequiredStepsRemaining:1];
  }
}

void sub_10004BB70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10004BB94(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004BC68;
  v6[3] = &unk_1000DEE70;
  v7 = a1[4];
  v8 = v3;
  v9 = a1[5];
  v5 = v3;
  [WeakRetained _performPresentationAction:v6];
}

void sub_10004BC68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BD08;
  v5[3] = &unk_1000DD960;
  v6 = *(a1 + 48);
  [a2 presentAssetReadyForVehicleName:v3 appClipIDs:v4 confirmationHandler:v5];
}

uint64_t sub_10004BD08(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "asset ready prompt was confirmed", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004BE5C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004BEEC;
  v4[3] = &unk_1000DD960;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 presentAssetReadySoonForVehicleName:v3 confirmationHandler:v4];
}

uint64_t sub_10004BEEC(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "asset ready soon prompt was confirmed", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004C058(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C0F8;
  v5[3] = &unk_1000DD960;
  v6 = *(a1 + 48);
  [a2 presentSetupCarKeysPromptForVehicleName:v3 carKeyInfo:v4 cancelHandler:v5];
}

uint64_t sub_10004C0F8(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setup car keys prompt was canceled", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004C20C(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C298;
  v3[3] = &unk_1000DD960;
  v4 = *(a1 + 32);
  [a2 presentCheckForSoftwareUpdatesWithCompletionHandler:v3];
}

uint64_t sub_10004C298(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "presented check for software updates", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004CB08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "initializeForVehicleAddress: %@ keyIdentifier: %@", &v6, 0x16u);
  }

  [WeakRetained setBluetoothAddress:*(a1 + 32)];
  [WeakRetained setKeyIdentifier:*(a1 + 40)];
  [WeakRetained setActive:1];
  (*(*(a1 + 48) + 16))();
}

void sub_10004CCE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    *buf = 134217984;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "requestPairingForIntent: %lu", buf, 0xCu);
  }

  [WeakRetained setIntent:*(a1 + 48)];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10004D1AC;
  v25[3] = &unk_1000DEFA0;
  objc_copyWeak(&v27, (a1 + 40));
  v26 = *(a1 + 32);
  v5 = objc_retainBlock(v25);
  if ([WeakRetained isPairingAvailable])
  {
    v6 = [WeakRetained bluetoothAddress];
    v7 = [WeakRetained isActive];
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 1) == 0)
    {
      v12 = CarPairingLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000872A0();
      }

      (v5[2])(v5, 5, 0);
      goto LABEL_33;
    }

    v9 = [CRBluetoothManager addressStringForData:v6];
    if ([CRBluetoothManager hasPairingWithAddress:v9])
    {
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cannot start pairing, already paired with %{private}@", buf, 0xCu);
      }

      (v5[2])(v5, 1, 0);
      goto LABEL_32;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004D2A8;
    v21[3] = &unk_1000DEFF0;
    objc_copyWeak(&v24, (a1 + 40));
    v22 = v5;
    v23 = *(a1 + 32);
    [WeakRetained setPromptResponseHandler:v21];
    v13 = CarPairingLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "pairing request setup, waiting on user prompt response", buf, 2u);
    }

    v14 = [WeakRetained carPlayPreferences];
    v15 = [v14 isCCCHeadUnitPairingOverrideEnabled];

    if (!v15 || ![v15 BOOLValue])
    {
LABEL_31:

      objc_destroyWeak(&v24);
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v16 = [WeakRetained carPlayPreferences];
    v17 = [v16 shouldAlwaysAcceptCCCHeadUnitPairing];

    if (!v17)
    {
LABEL_30:

      goto LABEL_31;
    }

    v18 = [v17 BOOLValue];
    if (v18)
    {
      v19 = CarPairingLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "accepting head unit pairing due to preview preference";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
      }
    }

    else
    {
      v19 = CarPairingLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "declining head unit pairing due to preview preference";
        goto LABEL_28;
      }
    }

    [WeakRetained handlePairingPromptResponse:v18];
    goto LABEL_30;
  }

  v11 = CarPairingLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100087264();
  }

  (v5[2])(v5, 2, 0);
LABEL_34:

  objc_destroyWeak(&v27);
}

void sub_10004D148(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_10004D1AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setActive:0];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, 0, 0, 0, 0, 0, v5);
    v8 = +[CARAnalytics sharedInstance];
    v9 = v8;
    v10 = a2 ? 4 : 3;
    [v8 setCarKeyPairingResult:v10];

    if (a2 == 5)
    {
      v11 = CarPairingLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed CCC head unit pairing", v12, 2u);
      }
    }
  }
}

void sub_10004D2A8(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004D410;
    v8[3] = &unk_1000DEFC8;
    v9 = a1[5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D56C;
    v6[3] = &unk_1000DD960;
    v7 = a1[4];
    [WeakRetained _mainQueue_requestLocalOOBDataWithCompletion:v8 errorHandler:v6];
  }

  else
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "declining head unit pairing", buf, 2u);
    }

    (*(a1[4] + 2))();
  }
}

void sub_10004D410(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = CarPairingLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 138478851;
    v19 = v11;
    v20 = 2113;
    v21 = v12;
    v22 = 2113;
    v23 = v13;
    v24 = 2113;
    v25 = v14;
    v26 = 2113;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "replying with this address: %{private}@, c192: %{private}@ r192: %{private}@ c256: %{private}@ r256: %{private}@", &v18, 0x34u);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, 0, v11, v12, v13, v14, v15, 0);
  }
}

uint64_t sub_10004D56C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000872DC();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004D728(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    *buf = 138413058;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "setupVehicleDataC192: %@ r192: %@ c256: %@ r256: %@", buf, 0x2Au);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D8DC;
  v14[3] = &unk_1000DF090;
  v14[4] = WeakRetained;
  v17 = a1[8];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v15 = v13;
  v16 = v12;
  [WeakRetained _mainQueue_performWithPairingAgent:v14];
}

void sub_10004D8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004DBCC;
  v21[3] = &unk_1000DF040;
  v21[4] = *(a1 + 32);
  v22 = *(a1 + 72);
  v6 = objc_retainBlock(v21);
  if ([*(a1 + 32) isActive] && (objc_msgSend(*(a1 + 32), "bluetoothAddress"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [*(a1 + 32) _remoteDeviceFromSession:a3];
    if (v8)
    {
      v9 = v8;
      if (BTPairingAgentClearOOBDataForDevice())
      {
        v10 = CarPairingLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100087318();
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v11 = *(a1 + 40);
        if (v11)
        {
          [v11 bytes];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v12 bytes];
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          [v13 bytes];
        }

        v14 = *(a1 + 64);
        if (v14)
        {
          [v14 bytes];
        }

        if (!BTPairingAgentSetOOBDataForDevice())
        {
          v15 = *(a1 + 32);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10004DCB8;
          v16[3] = &unk_1000DF068;
          v17 = v6;
          v18 = a2;
          v19 = v9;
          v20 = 0;
          [v15 _mainQueue_connectDevice:v9 session:a3 completion:v16];

          goto LABEL_10;
        }

        v10 = CarPairingLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100087388();
        }
      }
    }

    else
    {
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000873F8();
      }
    }
  }

  else
  {
    v10 = CarPairingLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000872A0();
    }
  }

  (v6[2])(v6, 5, 0);
LABEL_10:
}

void sub_10004DBCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setActive:0];
  [*(a1 + 32) _mainQueue_delegateDidFinishWithResult:a2 error:v5];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v7 = +[CARAnalytics sharedInstance];
    v8 = v7;
    v9 = a2 ? 4 : 3;
    [v7 setCarKeyPairingResult:v9];

    if (a2 == 5)
    {
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed CCC head unit pairing", v11, 2u);
      }
    }
  }
}

void sub_10004DCB8(void *a1, int a2)
{
  v4 = CarPairingLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pairing completed successfully", buf, 2u);
    }
  }

  else if (v5)
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pairing completed with failure", v12, 2u);
  }

  (*(a1[4] + 16))();
  v6 = a1[5];
  v7 = a1[6];
  v8 = BTPairingAgentClearOOBDataForDevice();
  v9 = CarPairingLogging();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100087434(a1);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cleared OOB data", v11, 2u);
  }
}

void sub_10004DE94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isActive];
  v3 = CarPairingLogging();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cancelPairing, canceling active session", buf, 2u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004DFC0;
    v5[3] = &unk_1000DF0E0;
    v5[4] = WeakRetained;
    [WeakRetained _mainQueue_performWithPairingAgent:v5];
    [WeakRetained _mainQueue_delegateDidFinishWithResult:4 error:0];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "skipping cancelPairing, no active session", buf, 2u);
    }
  }
}

id sub_10004DFC0(uint64_t a1)
{
  v2 = BTPairingAgentCancelPairing();
  v3 = CarPairingLogging();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000874AC();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully canceled BT pairing", buf, 2u);
  }

  v5 = [*(a1 + 32) bluetoothAddress];

  if (v5)
  {
    v14 = 0;
    v13 = 0;
    v6 = [*(a1 + 32) bluetoothAddress];
    [v6 getBytes:&v13 length:6];

    *buf = 0;
    if (BTDeviceFromAddress())
    {
      v7 = CarPairingLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10008751C();
      }
    }

    else
    {
      v8 = BTPairingAgentClearOOBDataForDevice();
      v9 = CarPairingLogging();
      v7 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10008758C();
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cleared OOB data", v11, 2u);
      }
    }
  }

  return [*(a1 + 32) setActive:0];
}

id sub_10004E67C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = CarPairingLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67240192;
    v9[1] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BT session event: %{public}i", v9, 8u);
  }

  return [a4 _mainQueue_handleEvent:a2 forSession:a1];
}

void sub_10004E740(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004E7E4;
  v2[3] = &unk_1000DDAD8;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

uint64_t sub_10004E7E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, WeakRetained[1]);
    }
  }

  return _objc_release_x1();
}

void sub_10004E8E4(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000877C4();
  }

  v3 = [*(a1 + 32) waitingOnSession];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10004EA4C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EAC4;
  block[3] = &unk_1000DD480;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10004EAC4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v3 = CarPairingLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10008782C();
    }

    v4 = *(*(v1 + 32) + 16);
    BTPairingAgentStop();
    v5 = *(v1 + 32);
    result = BTPairingAgentDestroy();
    *(*(v1 + 32) + 16) = 0;
    v2 = *(v1 + 32);
  }

  if (*(v2 + 8))
  {
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100087860();
    }

    v7 = *(*(v1 + 32) + 8);
    BTServiceRemoveCallbacks();
    v8 = *(v1 + 32);
    result = BTSessionDetachWithQueue();
    *(*(v1 + 32) + 8) = 0;
  }

  return result;
}

void sub_10004EB9C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  if (a3 == 1)
  {
    if (a4 == 12)
    {
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 67240192;
        v12 = a2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "disconnected BT service %{public}i", &v11, 8u);
      }
    }
  }

  else if (!a3 && a4 == 11)
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 67240192;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "connected BT service %{public}i", &v11, 8u);
    }

    [a6 _mainQueue_handleDidConnectDevice:a1 service:a2];
  }
}

id sub_10004EE3C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100087930();
  }

  return [*(a1 + 32) setSessionDetachHandler:0];
}

void sub_10004EF64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004EF80(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = (WeakRetained + 2);
      if (!WeakRetained[2])
      {
        if (BTPairingAgentCreate())
        {
          v9 = CarPairingLogging();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100087964();
          }
        }
      }
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v8[2], a2, v5, v6, v7);
  }
}

void sub_10004F058(uint64_t a1, int a2)
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BT pairing event: %{public}i", v4, 8u);
  }
}

void sub_10004F20C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004F228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v8 = [WeakRetained _localDeviceAddressFromSession:a3];
    if (v8)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004F368;
      v12[3] = &unk_1000DF130;
      v14 = *(a1 + 40);
      v13 = v8;
      [v7 setLocalOOBDataHandler:v12];
      BTPairingAgentGetLocalOOBData();
    }

    else
    {
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000879A0();
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        (*(v11 + 16))();
      }
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

uint64_t sub_10004F368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2, a3, a4, a5);
  }

  return result;
}

void sub_10004F7DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10004F800(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained connectionTimer];

  if (v4)
  {
    v5 = [WeakRetained connectionTimer];
    [v5 invalidate];

    [WeakRetained setConnectionTimer:0];
  }

  v6 = *(a1 + 48);
  BTServiceRemoveCallbacks();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

uint64_t sub_10004F8BC(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connected BT using OOB pairing data", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10004F93C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100087ABC();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004FA24(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothAddress];
  if (v2)
  {
    v3 = [CRBluetoothManager addressStringForData:v2];
    v4 = [*(a1 + 32) _addressStringForDevice:*(a1 + 40)];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if ([v3 isEqualToString:v4])
      {
        v7 = [*(a1 + 32) _intendedServiceMask];
        v13 = 0;
        v8 = *(a1 + 40);
        if (BTDeviceGetConnectedServices())
        {
          v9 = CarPairingLogging();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100087AF8();
          }
        }

        else
        {
          v11 = CarPairingLogging();
          v9 = v11;
          if ((v13 & v7) != 0)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138478083;
              v15 = v5;
              v16 = 1024;
              LODWORD(v17) = v13;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "bluetooth connected to %{private}@ with services: %i", buf, 0x12u);
            }

            v12 = [*(a1 + 32) bluetoothConnectedHandler];
            v9 = v12;
            if (v12)
            {
              (*(v12 + 16))(v12);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100087B68(&v13, v7, v9);
          }
        }
      }

      else
      {
        v10 = CarPairingLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          v15 = v5;
          v16 = 2113;
          v17 = v3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connected address %{private}@ doesn't match expected address %{private}@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_10004FFBC(uint64_t a1)
{
  v2 = SBSGetScreenLockStatus();
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ui locked: %{public}@", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100050100;
  v5[3] = &unk_1000DDB68;
  v6 = *(a1 + 32);
  v7 = v2 != 0;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_100050100(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_1000501E4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000515CC;
  block[3] = &unk_1000DD480;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10005030C(id a1)
{
  qword_100107F90 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarPlayDNDService];

  _objc_release_x1();
}

void sub_100050744(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _createDrivingActivityModeIfNeeded:1];
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setActivatedByUserAction:*(a1 + 48)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050860;
  v6[3] = &unk_1000DEDD8;
  v9 = v5;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  [v4 _setDNDActive:v5 trigger:1 withStartingGeofence:0 completion:v6];

  objc_destroyWeak(&v8);
}

void sub_100050860(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = (a1 + 48);
  if (*(a1 + 48) == a2)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100087CB8(v4, v2, v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005098C;
    v9[3] = &unk_1000DDB90;
    v10 = *(a1 + 32);
    [WeakRetained _setDNDActive:0 trigger:1 withStartingGeofence:0 completion:v9];
  }
}

void sub_100050A64(uint64_t a1)
{
  v7 = +[CARDNDManager sharedManager];
  v2 = [*(a1 + 32) status];
  [v2 setAutomaticDNDTriggeringMethod:0];

  v3 = [*(a1 + 32) status];
  [v3 setHasAdjustedTriggerMethod:0];

  v4 = [*(a1 + 32) status];
  [v4 setActivateWithCarPlay:0];

  v5 = [*(a1 + 32) status];
  [v5 setHasMigratedToDriving:0];

  v6 = [v7 assertionTrap];
  [v6 releaseAllAssertions];

  [v7 setLastKnownReportTime:0.0];
  [v7 _cancelUserDisabledTimer];
}

uint64_t sub_1000510FC(uint64_t a1, unint64_t a2)
{
  v4 = +[CARAnalytics sharedInstance];
  v5 = v4;
  if (a2 > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1000DF2C0[a2];
  }

  v7 = *(a1 + 40);
  if (v7 > 4)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1000DF2C0[v7];
  }

  [v4 userChangedAutoReplyFromAudience:v6 toAudience:v8 messageChanged:0];

  v9 = CARDNDAutoReplyAudience;
  v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  CFPreferencesSetAppValue(v9, v10, CRPreferencesAutomaticDNDDomain);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDAutoReplyAudienceChangedNotification, 0, 0, 1u);
  v12 = *(*(a1 + 32) + 16);

  return v12();
}

void sub_100051388(id a1, unint64_t a2, NSError *a3)
{
  v4 = +[CARAnalytics sharedInstance];
  if (a2 > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1000DF2E8[a2];
  }

  v6 = v4;
  [v4 userChangedAutoReplyFromAudience:v5 toAudience:v5 messageChanged:1];
}

void sub_1000515CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 status];
  [v1 _triggerModeChanged:objc_msgSend(v2 mechanism:{"automaticDNDTriggeringMethod"), @"Settings"}];
}

void sub_100052018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005213C;
  block[3] = &unk_1000DF318;
  v15 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = *(&v13 + 1);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v17 = v13;
  v16 = v10;
  v18 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10005213C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) assetIdentifier];
    v3 = [*(a1 + 56) untrackedDownloadProgressForAssetIDs];
    v4 = [v3 objectForKey:v2];

    if (v4)
    {
      v5 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v15 = v2;
        v16 = 2114;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replacing override progress for assetID %{public}@, previous progress: %{public}@", buf, 0x16u);
      }
    }

    v6 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    [v6 setTotalUnitCount:1];
    [v6 setCompletedUnitCount:1];
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v2;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "added override progress for assetID %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) untrackedDownloadProgressForAssetIDs];
    [v8 setObject:v6 forKey:v2];

    [*(a1 + 56) _mainQueue_updateOverallProgress];
    [*(a1 + 56) _mainQueue_hasAsset:*(a1 + 32) forAssetRequest:*(a1 + 48)];
    goto LABEL_13;
  }

  v9 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no override asset to stage that is newer than %@", buf, 0xCu);
  }

  v11 = [*(a1 + 40) accessoryContentVersion];
  v12 = [v11 isEqual:&off_1000E7AF8];

  if (v12)
  {
    v13 = [*(a1 + 48) description];
    v2 = [NSString stringWithFormat:@"override asset %@", v13];

    v4 = [*(a1 + 56) observers];
    v6 = [*(a1 + 64) identifier];
    [v4 notifyFoundNoMatchingAssetForVehicleIdentifier:v6 nextRequiredCompatibilityVersion:*(a1 + 72) requestDescription:v2];
LABEL_13:
  }
}

void sub_1000530CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053100(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000531B4;
  block[3] = &unk_1000DF368;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_1000531B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = CarThemeAssetsLogging();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asset version %@ file send completed", &v8, 0xCu);
    }

    v7 = 2;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087EE8(a1);
    }

    v7 = 3;
  }

  [WeakRetained setCurrentSessionTransferStatus:v7];
  [WeakRetained _mainQueue_invalidateFileSenderSession];
}

void sub_100053614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100087F60();
  }

  v8 = [*(a1 + 32) assetDownloader];
  [v8 removeAssetsBeforeVersion:v6];
}

CRVehicle *__cdecl sub_100054018(id a1, CRVehicle *a2, CRVehicle *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(CRVehicle *)v5 supportsThemeAssets];
  [(CRVehicle *)v4 setSupportsThemeAssets:v6];

  v7 = [(CRVehicle *)v5 clusterAssetIdentifier];
  [(CRVehicle *)v4 setClusterAssetIdentifier:v7];

  v8 = [(CRVehicle *)v5 clusterAssetURL];
  [(CRVehicle *)v4 setClusterAssetURL:v8];

  v9 = [(CRVehicle *)v5 clusterAssetiOSContentVersion];
  [(CRVehicle *)v4 setClusterAssetiOSContentVersion:v9];

  v10 = [(CRVehicle *)v5 clusterAssetVersion];
  [(CRVehicle *)v4 setClusterAssetVersion:v10];

  v11 = [(CRVehicle *)v5 SDKVersion];
  [(CRVehicle *)v4 setSDKVersion:v11];

  v12 = [(CRVehicle *)v5 stagedClusterAssetURL];
  [(CRVehicle *)v4 setStagedClusterAssetURL:v12];

  v13 = [(CRVehicle *)v5 stagedClusterAssetiOSContentVersion];
  [(CRVehicle *)v4 setStagedClusterAssetiOSContentVersion:v13];

  v14 = [(CRVehicle *)v5 stagedClusterAssetVersion];

  [(CRVehicle *)v4 setStagedClusterAssetVersion:v14];

  return v4;
}

id sub_1000543D8(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_removeAssetProgressForVehicleID:*(a1 + 40) assetID:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _mainQueue_handleVehicleAssetConfigurationChanged];
}

id sub_10005448C(uint64_t a1)
{
  [*(a1 + 32) setCurrentSessionTransferStatus:0];
  v2 = *(a1 + 32);

  return [v2 _mainQueue_evaluateAssetTransferIfConnected];
}

void sub_100054564(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_invalidateFileSenderSession];
  [*(a1 + 32) setCurrentSessionTransferStatus:0];
  v2 = [*(a1 + 32) _mainQueue_vehicleForSession:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 32);
    v6 = v2;
    v4 = [v2 identifier];
    v5 = [v6 clusterAssetIdentifier];
    [v3 _mainQueue_removeAssetProgressForVehicleID:v4 assetID:v5];

    [*(a1 + 32) _mainQueue_hintDownloadForVehicle:v6];
    v2 = v6;
  }
}

void sub_1000546D8(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "downloader found no asset for asset request: %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) description];
  v5 = [NSString stringWithFormat:@"online asset %@", v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [*(a1 + 40) _vehiclesForAssetRequest:*(a1 + 32)];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [*(a1 + 40) observers];
        v13 = [v11 identifier];
        [v12 notifyFoundNoMatchingAssetForVehicleIdentifier:v13 nextRequiredCompatibilityVersion:*(a1 + 48) requestDescription:v5];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void sub_10005498C(uint64_t a1)
{
  v2 = [*(a1 + 32) assetIdentifier];
  v3 = [*(a1 + 40) untrackedDownloadProgressForAssetIDs];
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    v5 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v2;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replacing download progress for assetID %{public}@, previous progress: %{public}@", &v10, 0x16u);
    }
  }

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v10 = 138543618;
    v11 = v2;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "added download progress for assetID %{public}@: %{public}@", &v10, 0x16u);
  }

  v8 = [*(a1 + 40) untrackedDownloadProgressForAssetIDs];
  [v8 setObject:*(a1 + 48) forKey:v2];

  [*(a1 + 40) _mainQueue_updateOverallProgress];
  v9 = [*(a1 + 40) observers];
  [v9 notifyAttemptingDownloadForAssetVersion:*(a1 + 56)];
}

void sub_100054BEC(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "failed download for asset %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) observers];
  [v4 notifyFailedDownloadForAssetVersion:*(a1 + 32) error:*(a1 + 48)];
}

void sub_100054D7C(uint64_t a1)
{
  v2 = [*(a1 + 32) assetIdentifier];
  v3 = [*(a1 + 40) untrackedDownloadProgressForAssetIDs];
  v4 = [v3 objectForKey:v2];

  if (!v4)
  {
    v5 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    [v5 setTotalUnitCount:1];
    [v5 setCompletedUnitCount:1];
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v2;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "added completed asset progress for assetID %{public}@: %{public}@", &v8, 0x16u);
    }

    v7 = [*(a1 + 40) untrackedDownloadProgressForAssetIDs];
    [v7 setObject:v5 forKey:v2];

    [*(a1 + 40) _mainQueue_updateOverallProgress];
  }

  [*(a1 + 40) _mainQueue_hasAsset:*(a1 + 48) forAssetRequest:*(a1 + 32)];
}

void sub_100054FAC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _vehicleForVehicleIdentifier:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 clusterAssetIdentifier];
    if (v5)
    {
      v6 = [*(a1 + 32) _assetRequestForVehicle:v4];
      if (v6)
      {
        v7 = [*(a1 + 32) assetDownloader];
        v8 = [v7 assetRequests];
        v9 = [v8 containsObject:v6];

        if ((v9 & 1) == 0)
        {
          v10 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "asset requested before vehicle ever connected, tracking asset request for download anyway: %@", buf, 0xCu);
          }

          [*(a1 + 32) _mainQueue_updateAssetRequests];
        }
      }

      v11 = [*(a1 + 32) _assetVersionForVehicle:v4];
      v12 = [v4 clusterAssetURL];
      v13 = v12;
      v24 = v6;
      if (v11 && v12)
      {
        v14 = [[CARThemeAsset alloc] initWithBaseURL:v12 version:v11];
      }

      else
      {
        v17 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v4;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "vehicle doesn't have an applied asset yet: %@", buf, 0xCu);
        }

        v14 = 0;
      }

      v18 = [*(a1 + 32) _stagedAssetVersionForVehicle:v4];
      v19 = [v4 stagedClusterAssetURL];
      v20 = v19;
      if (v18 && v19)
      {
        v21 = [[CARThemeAsset alloc] initWithBaseURL:v19 version:v18];
      }

      else
      {
        v22 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "vehicle doesn't have a staged asset: %@", buf, 0xCu);
        }

        v21 = 0;
      }

      v23 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v26 = v14;
        v27 = 2114;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "replying with active asset %{public}@, staged asset: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v16 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "vehicle doesn't have an asset ID: %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v15 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000880CC(v2);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_100055470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t sub_1000556E8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clusterAssetIdentifier];
  if (v4 && [a1[4] isEqualToString:v4])
  {
    v5 = [v3 SDKVersion];
    if (v5 && [a1[5] cr_buildVersionCompare:v5] != 1)
    {
      v8 = 1;
    }

    else
    {
      v6 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [a1[6] maximumSDKVersion];
        v10 = 138543618;
        v11 = v7;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "asset from a request with SDK version %{public}@ cannot apply to vehicle with older SDK version: %@", &v10, 0x16u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100055C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) progressForVehicleIDs];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100055CF8;
  v11[3] = &unk_1000DF470;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
}

void sub_100055CF8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = [v8 vehicleStore];
  v11 = [v10 vehicleForIdentifier:v9];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [v11 clusterAssetIdentifier];
    LODWORD(v12) = [v12 isEqual:v13];

    if (v12)
    {
      v14 = [v7 downloadProgress];

      if (!v14)
      {
        [v7 setDownloadProgress:*(a1 + 48)];
        v15 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v7 overallProgress];
          v17 = 138543362;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "added untracked download, overall progress is now: %{public}@", &v17, 0xCu);
        }

        [*(a1 + 56) addObject:*(a1 + 40)];
        *a4 = 1;
      }
    }
  }
}

void sub_100056440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_10005647C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Monitoring service connection interrupted or invalidated; removing connection.", buf, 2u);
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 connectionsQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005658C;
    v6[3] = &unk_1000DD8E8;
    objc_copyWeak(&v7, (a1 + 40));
    v6[4] = v4;
    dispatch_sync(v5, v6);

    objc_destroyWeak(&v7);
  }
}

uint64_t sub_10005658C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _removeConnection:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_10005693C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100056968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addConnection:*(a1 + 32) forCertificateSerial:*(a1 + 40)];
}

uint64_t sub_100056F5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100056F74(uint64_t a1)
{
  v5 = [*(a1 + 32) connections];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100056FD8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000881E4(v2, v3);
  }
}

uint64_t sub_10005703C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v2, v3);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000577B0(uint64_t a1)
{
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100058084;
  v50[3] = &unk_1000DF548;
  v2 = *(a1 + 80);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v52 = v2;
  v50[4] = v4;
  v51 = v3;
  v5 = objc_retainBlock(v50);
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() _carplayLibraryDirectoryForAssetIdentifier:*(a1 + 40)];
  if (v7)
  {
    *&v57 = 0;
    *(&v57 + 1) = &v57;
    v58 = 0x3032000000;
    v59 = sub_100058180;
    v60 = sub_100058190;
    v61 = 0;
    v47 = 0;
    v48[0] = &v47;
    v48[1] = 0x3032000000;
    v48[2] = sub_100058180;
    v48[3] = sub_100058190;
    v49 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_100058180;
    v45 = sub_100058190;
    v46 = 0;
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100058198;
    v40[3] = &unk_1000DF570;
    v40[4] = &v57;
    v40[5] = &v47;
    v40[6] = &v41;
    [v9 _readMetadataFromAsset:v7 assetIdentifier:v10 completion:v40];
    v11 = *(*(&v57 + 1) + 40);
    if (!v11)
    {
      v20 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100088378();
      }

      (v5[2])(v5, 0, 0);
      goto LABEL_19;
    }

    v12 = [v11 iOSContentVersion];
    v13 = [*(*(&v57 + 1) + 40) accessoryContentVersion];
    v14 = *(a1 + 32);
    if ([objc_opt_class() _shouldForceUpdateAsset])
    {
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [*(a1 + 48) integerValue] + 1);

      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) unsignedIntegerValue] + 1);

      v17 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = v15;
        v55 = 2114;
        v56 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "force updating asset versions to: iOS %{public}@, accessory %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v16 = v13;
      v15 = v12;
    }

    v21 = [[CARThemeAssetVersion alloc] initWithIdentifier:*(a1 + 40) iOSContentVersion:v15 accessoryContentVersion:v16];
    if ([*(a1 + 64) compare:v21] == -1)
    {
      if (*(v48[0] + 40))
      {
        v24 = [*(a1 + 72) maximumCompatibilityVersion];
        if ([*(v48[0] + 40) unsignedIntegerValue] <= v24)
        {
          v27 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(v48[0] + 40);
            *buf = 138412546;
            v54 = v28;
            v55 = 2048;
            v56 = v24;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "asset's minimum compatibility version of %@ is valid for supported compatibility version: %lu", buf, 0x16u);
          }

          if (v42[5])
          {
            v29 = [*(a1 + 72) maximumSDKVersion];
            if ([v42[5] cr_buildVersionCompare:v29] + 1 > 1)
            {
              v37 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v42[5];
                *buf = 138412546;
                v54 = v38;
                v55 = 2112;
                v56 = v29;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "override asset's minimum SDK version of %@ is not valid for SDK: %@", buf, 0x16u);
              }

              (v5[2])(v5, 0, 0);
            }

            else
            {
              v30 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = v42[5];
                *buf = 138412546;
                v54 = v31;
                v55 = 2112;
                v56 = v29;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "asset's minimum SDK version of %@ is valid for SDK: %@", buf, 0x16u);
              }

              v32 = CarThemeAssetsLogging();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v54 = v21;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "preparing override asset: %{public}@", buf, 0xCu);
              }

              v33 = [*(a1 + 32) _internalQueue_generatedAssetForSourceAssetURL:v7 version:v21];
              if (v33)
              {
                v34 = [[CARThemeAsset alloc] initWithBaseURL:v33 version:v21];
                v35 = CarThemeAssetsLogging();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v54 = v34;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "prepared override asset %@", buf, 0xCu);
                }

                (v5[2])(v5, v34, 0);
              }

              else
              {
                v39 = CarThemeAssetsLogging();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  sub_10008825C();
                }

                (v5[2])(v5, 0, 0);
              }
            }

            goto LABEL_18;
          }

          v36 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100088290();
          }

          v26 = 0;
        }

        else
        {
          v25 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000882C4(v48, v24, v25);
          }

          v26 = *(v48[0] + 40);
        }

        (v5[2])(v5, 0, v26);
LABEL_18:

LABEL_19:
        _Block_object_dispose(&v41, 8);

        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v57, 8);

        goto LABEL_20;
      }

      v22 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100088344();
      }
    }

    else
    {
      v22 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 64);
        *buf = 138543362;
        v54 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "asset is already the latest overall version: %{public}@", buf, 0xCu);
      }
    }

    (v5[2])(v5, 0, 0);
    goto LABEL_18;
  }

  v18 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    LODWORD(v57) = 138543362;
    *(&v57 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "no override asset available for %{public}@", &v57, 0xCu);
  }

  (v5[2])(v5, 0, 0);
LABEL_20:
}

void sub_100057FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100058084(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005812C;
  v4[3] = &unk_1000DD580;
  v3 = a1[5];
  v4[4] = a1[4];
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_10005812C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainQueue_pendingOverrideAssetIDs];
  [v2 removeObject:*(a1 + 40)];
}

uint64_t sub_100058180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100058198(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_1000590A8(id a1)
{
  qword_100107FA0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarPlayConnectionTimeService];

  _objc_release_x1();
}

uint64_t sub_100059188(uint64_t a1)
{
  [*(a1 + 32) eraseConnectionData];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_100059298(uint64_t a1)
{
  [*(a1 + 32) trimConnectionDataBefore:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100059390(uint64_t a1)
{
  v44 = [*(a1 + 32) sortedConnectionEvents];
  v1 = [v44 valueForKeyPath:@"@distinctUnionOfObjects.identifier"];
  v45 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v1;
  v46 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v46)
  {
    v43 = *v56;
    v50 = CARCarKitVehicleInformationEvent;
    do
    {
      v2 = 0;
      do
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v2;
        v3 = *(*(&v55 + 1) + 8 * v2);
        v48 = objc_alloc_init(NSMutableArray);
        v49 = v3;
        v4 = [NSPredicate predicateWithFormat:@"identifier = %@", v3];
        v5 = [v44 filteredArrayUsingPredicate:v4];

        v6 = CarConnectionTimeLogging();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v5 count];
          *buf = 138412546;
          v60 = v49;
          v61 = 2048;
          v62 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of fetched events for session identifier %@ : %lu", buf, 0x16u);
        }

        v8 = objc_opt_new();
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v9 = v5;
        v10 = [v9 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v52;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = [[CARConnectionEvent alloc] initWithDictionary:*(*(&v51 + 1) + 8 * i)];
              v16 = CarConnectionTimeLogging();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v15 eventName];
                v18 = [v15 eventDate];
                *buf = 138412802;
                v60 = v49;
                v61 = 2112;
                v62 = v17;
                v63 = 2112;
                v64 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetched event for session identifier %@ : %@ with date : %@", buf, 0x20u);
              }

              v19 = [v15 eventName];
              v20 = sub_10005994C(v19);

              v21 = [v15 eventName];
              v22 = [v21 isEqualToString:v50];

              if (v22)
              {
                v23 = [v15 payload];
                v24 = [v23 mutableCopy];

                v8 = v24;
              }

              else
              {
                [v48 addObject:v15];
              }

              v12 |= v20;
            }

            v11 = [v9 countByEnumeratingWithState:&v51 objects:v65 count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        v25 = [NSNumber numberWithUnsignedInteger:v12];
        v26 = [v25 stringValue];
        [v8 setObject:v26 forKeyedSubscript:@"finalEventName"];

        v27 = [[NSUUID alloc] initWithUUIDString:v49];
        v28 = [[CARConnectionSession alloc] initWithEvents:v48 sessionIdentifier:v27 vehicleInformation:v8 maskedEvents:v12];
        [v45 insertObject:v28 atIndex:0];

        v2 = v47 + 1;
      }

      while ((v47 + 1) != v46);
      v46 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v46);
  }

  v29 = [v45 sortedArrayUsingComparator:&stru_1000DF638];
  v30 = [v29 count];
  if (v30 >= 2)
  {
    v31 = v30;
    v32 = objc_opt_new();
    v33 = CARCarKitConnectionSessionEndEvent;
    v34 = 1;
    while (1)
    {
      v35 = [v29 objectAtIndex:v34];
      v36 = [v35 maskedEvents];
      if ((sub_10005994C(v33) & v36) != 0)
      {
        break;
      }

      v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v35 maskedEvents]);
      v38 = [v37 stringValue];
      [v32 insertObject:v38 atIndex:0];

      if (v31 == ++v34)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v39 = [*(a1 + 32) userDefaults];
    [v39 setObject:v32 forKey:@"CARPreviousSessionInfoKey"];
  }

  v40 = *(a1 + 40);
  if (v40)
  {
    (*(v40 + 16))(v40, v29, 0);
  }
}

uint64_t sub_10005994C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:CARBluetoothWirelessIAPProfileConnectionAttempt])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:CARBluetoothWirelessIAPProfileConnectionSuccess])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:CARCarKitVehicleInformationEvent])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:CARCarKitAttemptingConnectionEvent])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:CARCarKitTransportEvent])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:CARWiFiBasicAssociationCompleted])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:CARWiFiWPAHSCompleted])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:CARWiFiDHCPCompleted])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:CARAirPlayEndpointSelected])
  {
    v2 = 256;
  }

  else if ([v1 isEqualToString:CARCarKitConnectionSessionEndEvent])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:CARAirPlayCarSentStatistics])
  {
    v2 = 1024;
  }

  else if ([v1 isEqualToString:CARAirPlayConnectionTimeInfo])
  {
    v2 = 2048;
  }

  else if ([v1 isEqualToString:CARiAPConnectionStart])
  {
    v2 = 4096;
  }

  else if ([v1 isEqualToString:CARiAPAuthStarted])
  {
    v2 = 0x2000;
  }

  else if ([v1 isEqualToString:CARiAPAuthComplete])
  {
    v2 = 0x4000;
  }

  else if ([v1 isEqualToString:CARiAPNCMStart])
  {
    v2 = 0x8000;
  }

  else if ([v1 isEqualToString:CARiAP2EndpointCreated])
  {
    v2 = 0x10000;
  }

  else if ([v1 isEqualToString:CARiAPStartSessionReceived])
  {
    v2 = 0x20000;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

int64_t sub_100059BB4(id a1, CARConnectionSession *a2, CARConnectionSession *a3)
{
  v4 = a3;
  v5 = [(CARConnectionSession *)a2 events];
  v6 = [v5 firstObject];
  v7 = [v6 eventDate];

  v8 = [(CARConnectionSession *)v4 events];

  v9 = [v8 firstObject];
  v10 = [v9 eventDate];

  v11 = [v10 compare:v7];
  return v11;
}

void sub_100059D00(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) userDefaults];
    v3 = [v2 arrayForKey:@"CARPreviousSessionInfoKey"];

    (*(*(a1 + 40) + 16))();
  }
}

int64_t sub_100059F80(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = CAREventTimestamp;
  v5 = a3;
  v6 = [(NSDictionary *)a2 objectForKey:v4];
  v7 = [(NSDictionary *)v5 objectForKey:v4];

  v8 = [v7 compare:v6];
  return v8;
}

void sub_10005A0C8(uint64_t a1)
{
  v2 = +[NSDate now];
  v3 = [v2 dateByAddingTimeInterval:180.0];

  v4 = [NSPredicate predicateWithFormat:@"timestamp <= %@", v3];
  v5 = [*(a1 + 32) sortedConnectionEvents];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  v7 = [v6 mutableCopy];
  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:43200.0];

  v10 = [*(a1 + 40) eventDate];
  v11 = [v10 compare:v9];

  if (v11 == 1)
  {
    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) _newInvalidEventDateErrorDueToExceedingTime];
    (*(v12 + 16))(v12, 0, v13);

    goto LABEL_84;
  }

  if ([*(a1 + 40) eventType] == 1)
  {
    v14 = [*(a1 + 32) sessionStatus];
    v15 = [v14 currentSession];

    if (v15)
    {
      v92 = v9;
      v93 = v7;
      v94 = v6;
      v95 = v4;
      v96 = v3;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      obj = v7;
      v16 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v101;
        v19 = CAREventName;
        v20 = CARCarKitConnectionSessionEndEvent;
        v97 = CAREventIdentifier;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v101 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v100 + 1) + 8 * i);
            v23 = [v22 objectForKey:v19];
            if ([v23 isEqualToString:v20])
            {
              v24 = [v22 objectForKey:v97];
              [*(a1 + 32) sessionUUIDString];
              v26 = v25 = a1;
              v27 = [v24 isEqualToString:v26];

              a1 = v25;
              if (v27)
              {
                v53 = CarConnectionTimeLogging();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = [*(a1 + 40) eventName];
                  *buf = 138412290;
                  v105 = v55;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Observed %@ inside of a session, skipping record.", buf, 0xCu);
                }

                v56 = *(a1 + 48);
                v4 = v95;
                v3 = v96;
                v7 = v93;
                v6 = v94;
                v9 = v92;
                if (v56)
                {
                  (*(v56 + 16))(v56, 1, 0);
                }

                goto LABEL_84;
              }
            }

            else
            {
            }
          }

          v17 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v4 = v95;
      v3 = v96;
      v7 = v93;
      v6 = v94;
      v9 = v92;
LABEL_53:
      v62 = [*(a1 + 32) sessionUUIDString];
      v63 = [*(a1 + 40) eventName];
      v64 = v63;
      if (v62)
      {
        v65 = [v63 isEqualToString:CARBluetoothWirelessIAPProfileConnectionAttempt];

        if (!v65)
        {
LABEL_68:
          v75 = [*(a1 + 40) eventName];
          v76 = [v75 isEqualToString:CARCarKitWirelessPairingCreatedEvent];

          if (v76)
          {
            [*(a1 + 32) setWasPairing:1];
          }

          v77 = [*(a1 + 40) eventName];
          v78 = [v77 isEqualToString:CARAirPlayConnectionTimeInfo];

          if (v78)
          {
            v79 = [*(a1 + 40) payload];
            v80 = [v79 valueForKey:@"AP_SIGNPOST_ENDPOINTSELECTED"];
            [v80 doubleValue];
            v82 = v81;

            if (v82 == 0.0)
            {
              v83 = CarConnectionTimeLogging();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Unable to extract the time of AirPlay Endpoint Selected Event", buf, 2u);
              }
            }

            else
            {
              v83 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v82];
              v84 = [CARConnectionEvent eventWithName:CARAirPlayEndpointSelected type:3 date:v83 payload:0];
              [*(a1 + 32) _addConnectionData:v84 toReconnectArray:v7];
            }

            v85 = [*(a1 + 40) payload];
            v86 = [v85 valueForKey:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
            [v86 doubleValue];
            v88 = v87;

            if (v88 == 0.0)
            {
              v89 = CarConnectionTimeLogging();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Unable to extract the time of AirPlay Car Sent Statistics Event", buf, 2u);
              }
            }

            else
            {
              v89 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v88];
              v90 = [CARConnectionEvent eventWithName:CARAirPlayCarSentStatistics type:3 date:v89 payload:0];
              [*(a1 + 32) _addConnectionData:v90 toReconnectArray:v7];
            }
          }

          [*(a1 + 32) _addConnectionData:*(a1 + 40) toReconnectArray:v7];
LABEL_81:
          v91 = *(a1 + 48);
          if (v91)
          {
            (*(v91 + 16))(v91, 1, 0);
          }

          goto LABEL_84;
        }

        if ([*(a1 + 32) wasPairing])
        {
          v66 = v9;
          v67 = CarConnectionTimeLogging();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v105 = v62;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Detected user was previously pairing to CarPlay and we already have a sessionUUID. No new session UUID required. %@", buf, 0xCu);
          }

          v68 = v62;
LABEL_67:

          v62 = v68;
          v9 = v66;
          goto LABEL_68;
        }

LABEL_65:
        v66 = v9;
        v73 = objc_alloc_init(NSUUID);
        v68 = [v73 UUIDString];

        [*(a1 + 32) setSessionUUIDString:v68];
        v67 = CarConnectionTimeLogging();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [*(a1 + 40) eventName];
          *buf = 138412546;
          v105 = v74;
          v106 = 2112;
          v107 = v68;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Expected BluetoothConnectionStarted Event, observed %@. Creating new SessionUUID: %@", buf, 0x16u);
        }

        goto LABEL_67;
      }

      if ([v63 isEqualToString:@"EndpointAvailable"])
      {
      }

      else
      {
        v69 = [*(a1 + 40) eventName];
        v70 = [v69 isEqualToString:@"EndpointActivated"];

        if (!v70)
        {
          goto LABEL_65;
        }
      }

      v71 = CarConnectionTimeLogging();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = [*(a1 + 40) eventName];
        *buf = 138412290;
        v105 = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Observed %@ Outside of a session, skipping record.", buf, 0xCu);
      }

      v62 = 0;
      goto LABEL_81;
    }
  }

  v28 = [*(a1 + 40) eventName];
  if (([v28 isEqualToString:@"CARConnectionEventSessionDetails"] & 1) == 0)
  {

LABEL_25:
    v41 = [*(a1 + 40) eventName];
    v42 = [v41 isEqualToString:@"CARAirPlaySessionEndTimeInfo"];

    if (v42)
    {
      v43 = +[CARAnalytics sharedInstance];
      v44 = [*(a1 + 40) payload];
      [v43 setAirplayScreenDisplayingTimes:v44];

      v45 = CarConnectionTimeLogging();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [*(a1 + 40) payload];
        *buf = 138412290;
        v105 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Observed AirPlay screen displaying event. Saving to analytics. Event payload: %@", buf, 0xCu);
      }

      v47 = *(a1 + 48);
      if (v47)
      {
        (*(v47 + 16))(v47, 1, 0);
      }

      goto LABEL_84;
    }

    if (![v7 count])
    {
      goto LABEL_53;
    }

    v48 = [v7 firstObject];
    v49 = [v48 valueForKey:CAREventTimestamp];

    if (v49)
    {
      v50 = [*(a1 + 40) eventDate];
      [v50 timeIntervalSinceDate:v49];
      if (round(v51) > 180.0)
      {
        v52 = [*(a1 + 40) eventName];
        if (![v52 isEqualToString:@"CARConnectionEventSessionDetails"])
        {
          v57 = [*(a1 + 40) eventName];
          obja = [v57 isEqualToString:@"CARSessionDidDisconnectEvent"];

          if ((obja & 1) == 0)
          {
            v58 = CarConnectionTimeLogging();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [*(a1 + 40) eventName];
              *buf = 138412290;
              v105 = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Observed %@ more than 3 minutes since the previous event. Resetting SessionUUID.", buf, 0xCu);
            }

            [*(a1 + 32) setSessionUUIDString:0];
            [*(a1 + 32) setWasPairing:0];
          }

          goto LABEL_36;
        }
      }
    }

LABEL_36:

    goto LABEL_53;
  }

  v29 = [*(a1 + 32) sessionUUIDString];

  if (v29)
  {
    goto LABEL_25;
  }

  v30 = a1;
  v31 = v9;
  v32 = [v7 firstObject];
  v33 = [v32 valueForKey:CAREventTimestamp];

  v34 = [v7 firstObject];
  v35 = [v34 valueForKey:CAREventName];

  v36 = v7;
  v37 = [v7 firstObject];
  v38 = [v37 valueForKey:CAREventIdentifier];

  if (!v35 || ![v35 isEqualToString:@"CARSessionDidDisconnectEvent"] || !v33)
  {
    goto LABEL_52;
  }

  v39 = [*(v30 + 40) eventDate];
  [v39 timeIntervalSinceDate:v33];
  if (round(v40) > 5.0)
  {

LABEL_52:
    v7 = v36;
    v9 = v31;
    a1 = v30;
    goto LABEL_53;
  }

  if (!v38)
  {
    goto LABEL_52;
  }

  v60 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeSessionDidDisconnectEvent occurred before session details could be added. Applying the previous session ID to this event.", buf, 2u);
  }

  [*(v30 + 32) setSessionUUIDString:v38];
  [*(v30 + 32) _addConnectionData:*(v30 + 40) toReconnectArray:v36];
  [*(v30 + 32) setSessionUUIDString:0];
  v61 = *(v30 + 48);
  if (v61)
  {
    (*(v61 + 16))(v61, 1, 0);
  }

  v7 = v36;
  v9 = v31;
LABEL_84:
}

id sub_10005ADF8(uint64_t a1)
{
  v2 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session disconnected and duration details recorded. Session identifier can be cleared, if any.", v4, 2u);
  }

  return [*(a1 + 32) setSessionUUIDString:0];
}

BOOL sub_10005B190(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:CAREventTimestamp];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 compare:*(a1 + 32)] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_10005B53C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:CAREventTimestamp];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 compare:*(a1 + 32)] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10005CE14(id a1)
{
  qword_100107FB0 = objc_alloc_init(CRDiagnosticsService);

  _objc_release_x1();
}

void sub_10005DB6C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DC1C;
  block[3] = &unk_1000DD6F0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10005DC1C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentDiagnosticsData];
  v3 = [v2 isCAFToolTreeCompletionCalled];

  v4 = CarDiagnosticsLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CAFTool tree already completed? Ignoring...", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attaching CAFTool tree output...", v7, 2u);
    }

    v6 = [*(a1 + 32) currentDiagnosticsData];
    [v6 setIsCAFToolTreeCompletionCalled:1];

    [*(a1 + 40) addTextAttachment:*(a1 + 48) asFilename:@"CAFToolTree.txt"];
  }
}

void sub_10005DD10(uint64_t a1)
{
  v2 = [*(a1 + 32) supportsVehicleData];
  v3 = *(a1 + 40);
  if (v2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005DE44;
    v9[3] = &unk_1000DE268;
    v9[4] = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 64);
    v11 = *(a1 + 56);
    [v3 _mainQueue_displayFetchingVehicleLogsBannerWithCompletion:v9];

    v4 = v10;
  }

  else
  {
    v5 = *(a1 + 64);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005DEF4;
    v7[3] = &unk_1000DD960;
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v3 _mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:v6 isInternal:v5 completion:v7];
    v4 = v8;
  }
}

void sub_10005DE44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DEE4;
  v4[3] = &unk_1000DD960;
  v5 = *(a1 + 48);
  [v1 _mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:v2 isInternal:v3 completion:v4];
}

uint64_t sub_10005DEF4(uint64_t a1)
{
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Vehicle logs gathered", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10005E2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005E394;
  v9[3] = &unk_1000DD580;
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v9);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v7, v8);
}

void sub_10005E394(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CarDiagnosticsLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) localizedDescription];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Error creating draft - %@", &v8, 0x16u);
    }

    [*(a1 + 40) _mainQueue_displayDraftErrorBanner];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Successfully created draft", &v8, 0xCu);
    }
  }
}

void sub_10005E690(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10005E788;
  v15 = &unk_1000DF7A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v19 = v8;
  v9 = v6;
  v10 = v5;
  [v7 _mainQueue_gatherVehicleLogsWithCompletion:&v12];
  v11 = [*(a1 + 32) diagnosticsSerialQueue];
  dispatch_async(v11, &stru_1000DF7C8);
}

id sub_10005E788(void *a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  (*(a1[7] + 16))();

  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];

  return [v4 _backgroundQueue_finishDiagnosticsOperationSemaphore:v5 transaction:v6];
}

void sub_10005E7EC(id a1)
{
  v1 = +[NSDate now];
  [CRDiagnosticsData removeDiagnosticsFoldersBeforeTime:v1];
}

void sub_10005E9FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to query initial Focus state: %@", buf, 0xCu);
    }

    [*(a1 + 32) setFocusModeDescription:@"None"];
  }

  else
  {
    v7 = [a2 activeModeConfiguration];
    v8 = [v7 mode];

    v9 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received updated focus state %@", buf, 0xCu);
    }

    v10 = [v8 modeIdentifier];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v8 name];
      if (v12)
      {
        v13 = [v8 name];
      }

      else
      {
        v13 = @"Unspecified";
      }

      [v8 semanticType];
      v14 = DNDModeSemanticTypeToString();
      v15 = [v8 modeIdentifier];
      v16 = [NSString stringWithFormat:@"%@ (%@ - %@)", v13, v14, v15];
      [*(a1 + 32) setFocusModeDescription:v16];

      if (v12)
      {
      }
    }

    else
    {
      [*(a1 + 32) setFocusModeDescription:@"None"];
    }
  }
}

void sub_10005ECF4(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005EDB4;
  v9[3] = &unk_1000DD580;
  v3 = a2;
  v10 = v3;
  v11 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v9);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v4, v5, v6, v7);
  }
}

id *sub_10005EDB4(id *result)
{
  if (result[4])
  {
    return [result[5] setTranscription:?];
  }

  return result;
}

void sub_10005EEA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005F00C;
  v16[3] = &unk_1000DF890;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v22 = *(a1 + 56);
  v10 = *(a1 + 48);
  v20 = v6;
  v21 = v10;
  v19 = v5;
  v11 = v6;
  v12 = v5;
  [v7 _mainQueue_gatherVehicleLogsWithCompletion:v16];
  v13 = [*(a1 + 32) diagnosticsSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F160;
  block[3] = &unk_1000DD480;
  v15 = *(a1 + 40);
  dispatch_async(v13, block);
}

void sub_10005F00C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v3)
  {
    [*(a1 + 32) addAttachment:v3];
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005F118;
  v11[3] = &unk_1000DF868;
  v7 = *(a1 + 64);
  v10 = *(a1 + 40);
  v8 = *(&v10 + 1);
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = v7;
  v12 = v10;
  v13 = v9;
  [v4 _mainQueue_performSysdiagnoseIncludingData:v5 isInternal:v6 completion:v11];
}

id sub_10005F118(void *a1)
{
  (*(a1[7] + 16))();
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _backgroundQueue_finishDiagnosticsOperationSemaphore:v3 transaction:v4];
}

void sub_10005F160(uint64_t a1)
{
  v1 = [*(a1 + 32) date];
  [CRDiagnosticsData removeDiagnosticsFoldersBeforeTime:v1];
}

void sub_10005F394(id *a1)
{
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "finished waiting on previous diagnostics", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F4FC;
  block[3] = &unk_1000DF8E0;
  v9 = a1[6];
  v7 = a1[4];
  v8 = a1[5];
  dispatch_sync(&_dispatch_main_q, block);
  v3 = a1[4];
  v4 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "timed out waiting on previous diagnostics", buf, 2u);
    }
  }
}

void sub_10005F734(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  (*(*(a1 + 32) + 16))();
}

void sub_10005F9D4(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005FA84;
  v9[3] = &unk_1000DD580;
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  dispatch_async(&_dispatch_main_q, v9);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6, v7);
  }
}

id sub_10005FA84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CarDiagnosticsLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) localizedDescription];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Error creating draft - %@", &v9, 0x16u);
    }

    return [*(a1 + 40) _mainQueue_displayDraftErrorBanner];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Successfully created draft", &v9, 0xCu);
    }

    [*(a1 + 40) setPendingDrafts:{objc_msgSend(*(a1 + 40), "pendingDrafts") + 1}];
    return [*(a1 + 40) _mainQueue_displayDraftCountBanner];
  }
}

void sub_10005FBC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000889B4(a1, v7);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

int64_t sub_10005FCD0(id a1, AFAccount *a2, AFAccount *a3)
{
  if ([(AFAccount *)a3 isActive])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_10005FFD4(uint64_t a1)
{
  v14 = [*(a1 + 32) currentDiagnosticsData];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 type];
    [v3 coordinate];
    v6 = v5;
    [v3 coordinate];
    v8 = v7;
    v9 = sub_100063588(v4);
    if (+[CRDiagnosticsService _accessorySupportsLocationDeadReckoning])
    {
      v10 = @"Yes";
    }

    else
    {
      v10 = @"No";
    }

    v11 = [v3 timestamp];

    v12 = CRStringForDate();
    v13 = [NSString stringWithFormat:@"Coordinates: (%f, %f)\nSource: %d (%@) [Dead Reckoning: %@]\nTime: %@", v6, v8, v4, v9, v10, v12];
  }

  else
  {
    v13 = @"No location information";
  }

  [v14 setLocationDescription:v13];
}

void sub_10006021C(uint64_t a1)
{
  v14 = [*(a1 + 32) currentDiagnosticsData];
  v2 = [*(a1 + 40) firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type];
    [v3 coordinate];
    v6 = v5;
    [v3 coordinate];
    v8 = v7;
    v9 = sub_100063588(v4);
    if (+[CRDiagnosticsService _accessorySupportsLocationDeadReckoning])
    {
      v10 = @"Yes";
    }

    else
    {
      v10 = @"No";
    }

    v11 = [v3 timestamp];
    v12 = CRStringForDate();
    v13 = [NSString stringWithFormat:@"Coordinates: (%f, %f)\nSource: %d (%@) [Dead Reckoning: %@]\nTime: %@", v6, v8, v4, v9, v10, v12];
  }

  else
  {
    v13 = @"No location information";
  }

  [v14 setLocationDescription:v13];
}

id sub_1000606CC(uint64_t a1, uint64_t a2)
{
  v4 = CarDiagnosticsLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dictation will begin", buf, 2u);
    }

    return [*(a1 + 32) _beginDictationWithCompletion:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dictation dismissed", v7, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void sub_100060894(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060974;
  block[3] = &unk_1000DF9D8;
  v18 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v16 = v7;
  v17 = v10;
  v11 = v7;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100060974(uint64_t a1)
{
  if (*(a1 + 32))
  {
LABEL_2:
    v2 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 64) + 1;
      if (v3 >= 6)
      {
        v4 = [NSString stringWithFormat:@"Unknown (%ld)", *(a1 + 64)];
      }

      else
      {
        v4 = *(&off_1000DFAD8 + v3);
      }

      v6 = *(a1 + 32);
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dictation failed: state %@, error %@", buf, 0x16u);
    }

    if (*(a1 + 64) == -1)
    {
      v8 = [@"Dictation Error. " stringByAppendingString:@"Please make sure you have Dictation enabled."];
    }

    else
    {
      v7 = [*(a1 + 32) localizedDescription];
      v8 = [@"Dictation Error. " stringByAppendingString:v7];
    }

    v9 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100060C6C;
    v17[3] = &unk_1000DE970;
    v18 = *(a1 + 56);
    [v9 _mainQueue_presentCarAlertWithTitle:v8 dismissTime:v17 completion:10.0];

    goto LABEL_15;
  }

  v5 = *(a1 + 64);
  if (v5 == 4)
  {
    v8 = [*(a1 + 48) transcription];
    v11 = [v8 length];
    v12 = CarDiagnosticsLogging();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 138477827;
        v20 = v8;
        v14 = "Dictation transcribed: %{private}@";
        v15 = v12;
        v16 = 12;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else if (v13)
    {
      *buf = 0;
      v14 = "Dictation stopped without transcription.";
      v15 = v12;
      v16 = 2;
      goto LABEL_25;
    }

    (*(*(a1 + 56) + 16))();
LABEL_15:

    return;
  }

  if (v5 != 1)
  {
    if (v5 != -1)
    {
      return;
    }

    goto LABEL_2;
  }

  v10 = *(a1 + 40);

  [v10 _mainQueue_presentCarAlertWithTitle:@"Dictation in Progress. Tap to Stop" dismissTime:&stru_1000DF9B0 completion:30.0];
}

void sub_100060C80(id a1, unint64_t a2)
{
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping dictation.", v4, 2u);
  }

  v3 = +[CRDictationService sharedInstance];
  [v3 stopRecording];
}

void sub_100060D54(id a1)
{
  v1 = [NSMutableDictionary dictionaryWithObject:&off_1000E7B28 forKey:kAudioServicesPlaySystemSoundOptionFlagsKey];
  [v1 setObject:&off_1000E8D28 forKey:kAudioServicesPlaySystemSoundOptionVibrationPatternKey];
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiating vibrate for sysdiagnose", v4, 2u);
  }

  v3 = [v1 copy];
  AudioServicesPlaySystemSoundWithOptions();
}

id sub_1000614D4(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [v5 componentsSeparatedByCharactersInSet:v7];

    if ([v8 count] < 2 || (v9 = objc_msgSend(v8, "count"), v10 = v9 - 1, v9 == 1))
    {
LABEL_7:
      v6 = 0;
    }

    else
    {
      while (1)
      {
        v11 = [NSIndexSet indexSetWithIndexesInRange:0, v10];
        v12 = [v8 objectsAtIndexes:v11];
        v13 = [v12 componentsJoinedByString:@" "];

        if ([*(a1 + 32) containsObject:v13])
        {
          break;
        }

        if (!--v10)
        {
          goto LABEL_7;
        }
      }

      v6 = [*(a1 + 40) objectForKeyedSubscript:v13];
    }
  }

  return v6;
}

void sub_100061BB8(uint64_t a1)
{
  v2 = objc_alloc_init(NSTask);
  [v2 setLaunchPath:@"/usr/local/bin/CAFTool"];
  [v2 setArguments:&off_1000E8CA0];
  v3 = +[NSPipe pipe];
  [v2 setStandardOutput:v3];

  v4 = objc_alloc_init(NSMutableData);
  v5 = [v2 standardOutput];
  v6 = [v5 fileHandleForReading];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100061E3C;
  v19[3] = &unk_1000DFA70;
  v7 = v4;
  v20 = v7;
  [v6 setReadabilityHandler:v19];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061E94;
  v16[3] = &unk_1000DFA98;
  v8 = v7;
  v17 = v8;
  v18 = *(a1 + 32);
  [v2 setTerminationHandler:v16];
  v9 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062154;
  block[3] = &unk_1000DD988;
  v14 = v2;
  v15 = *(a1 + 32);
  v10 = v2;
  dispatch_after(v9, &_dispatch_main_q, block);
  v11 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CAFTool tree task launched", v12, 2u);
  }

  [v10 launch];
  [v10 waitUntilExit];
}

void sub_100061E3C(uint64_t a1, void *a2)
{
  v3 = [a2 availableData];
  [*(a1 + 32) appendData:v3];
}

void sub_100061E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CAFTool tree termination handler called", &v15, 2u);
  }

  if ([v3 terminationStatus])
  {
    v5 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 terminationStatus]);
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 terminationReason]);
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CAFTool exited with status %@ reason %@", &v15, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v3 standardOutput];
    v9 = [v8 fileHandleForReading];
    [v9 setReadabilityHandler:0];

    v10 = [[NSString alloc] initWithData:*(a1 + 32) encoding:4];
    v11 = [NSRegularExpression regularExpressionWithPattern:@"(?:\\x{1B}[@-_]|[\\x{80}-\\x{9F}])[0-?]*[ -/]*[@-~]" options:1 error:0];
    v12 = [v11 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{objc_msgSend(v10, "length"), &stru_1000E1378}];
    v13 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 length]);
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CAFTool received output with length %@", &v15, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id sub_100062154(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if (result)
  {
    [*(a1 + 32) terminate];
    v3 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CAFTool tree task terminated", v4, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

id sub_100063330(uint64_t a1)
{
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session disconnect", v4, 2u);
  }

  [*(a1 + 32) setInitialDiagnosticsBannerPresented:0];
  [*(a1 + 32) setPendingDrafts:0];
  return [*(a1 + 32) setLoggingFileReceiver:0];
}

void sub_100063570(id a1)
{
  v1 = qword_100107FC0;
  qword_100107FC0 = &off_1000E8D78;
}

const __CFString *sub_100063588(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000DFB08 + (a1 - 1));
  }
}

void sub_100063C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarDNDWDLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 eventBody];
    v6 = [v5 semanticModeIdentifier];
    v7 = [v3 eventBody];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 starting]);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Store sink event received for mode %@ starting %@", &v9, 0x16u);
  }

  [*(a1 + 32) _drivingModeChanged:v3];
}

void sub_100063E90(uint64_t a1)
{
  v2 = objc_alloc_init(CARDNDGeofencingObserver);
  [(CARDNDGeofencingObserver *)v2 setDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

void sub_100063F6C(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  v3 = [v2 shouldActivateWithCarPlay];

  if (v3)
  {
    if (CRIsTestContext() & 1) != 0 || ([*(a1 + 32) _hasDrivingActivityMode])
    {
      v4 = CarDNDWDLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay session started, engaging Driving from preferences.", buf, 2u);
      }

      v5 = +[CARAnalytics sharedInstance];
      [v5 DNDStartedWithTrigger:3 vehicleHints:{objc_msgSend(*(a1 + 32), "lastKnownVehicularHints")}];

      v6 = *(a1 + 32);
      v7 = 1;
LABEL_14:
      [v6 _setDNDActive:v7 trigger:3 completion:0];
      return;
    }

    v11 = CarDNDWDLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring CarPlay Driving activation request; no driving mode available.", v15, 2u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) activatedByUserAction];
    v9 = CarDNDWDLogging();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v10)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay session started, disabling Driving from preferences.", v12, 2u);
      }

      v6 = *(a1 + 32);
      v7 = 0;
      goto LABEL_14;
    }

    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay session started; leaving Driving as-is because of user activation.", v13, 2u);
    }
  }
}

void sub_1000647F0(uint64_t a1)
{
  v2 = [*(a1 + 32) isDNDValid];
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    v4 = CarDNDWDLogging();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = [*(a1 + 40) activeAssertionsDebugString];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Driving temporarily disabled due to %@", &v9, 0xCu);
      }

      if ([*(a1 + 40) hasAssertion:2])
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      [*(a1 + 32) _setDNDActive:0 trigger:v7 completion:0];
    }

    else
    {
      if (v5)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Driving re-enabled after last temporary assertion released.", &v9, 2u);
      }
    }
  }

  else
  {
    v8 = CarDNDWDLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Driving assertion trap toggled, but no action needed.", &v9, 2u);
    }

    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _drivingModeEnded];
    }
  }
}

void sub_100064A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100064A94(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = (a1 + 52);
  if (*(a1 + 52) == a2)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }

  else
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100088AB8(v4, v2, v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setDNDActive:0 trigger:*(a1 + 48) withStartingGeofence:0 completion:*(a1 + 32)];
  }
}

void sub_1000653E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100065404(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5 = +[CARAnalytics sharedInstance];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [v5 DNDEndedWithTrigger:2 vehicleHints:objc_msgSend(WeakRetained context:{"lastKnownVehicularHints"), 0}];
  }
}

void sub_100065D10(id a1, int64_t a2)
{
  v3 = CarDNDWDLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v4)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User indicated incorrect vehicle detection.", v9, 2u);
      }

      v5 = +[CARAnalytics sharedInstance];
      v3 = v5;
      v6 = @"Incorrect Detection (Radar)";
      goto LABEL_20;
    }

    if (a2 == 3)
    {
      if (v4)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User indicated other.", v8, 2u);
      }

      v5 = +[CARAnalytics sharedInstance];
      v3 = v5;
      v6 = @"Other";
      goto LABEL_20;
    }
  }

  else
  {
    if (!a2)
    {
      if (v4)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User indicated passenger.", v11, 2u);
      }

      v5 = +[CARAnalytics sharedInstance];
      v3 = v5;
      v6 = @"Passenger";
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User indicated pulled over.", buf, 2u);
      }

      v5 = +[CARAnalytics sharedInstance];
      v3 = v5;
      v6 = @"Pulled Over";
LABEL_20:
      [v5 userIndicatedNotDrivingWithReason:v6];
      goto LABEL_21;
    }
  }

  if (v4)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User indicated unknown not driving reason.", v7, 2u);
  }

LABEL_21:
}

void sub_1000663E8(uint64_t a1)
{
  v1 = [*(a1 + 32) preferences];
  [v1 setHasMigratedToDriving:1];
}

void sub_100066F70(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInAirplaneMode];
}

BOOL sub_100066FCC(uint64_t a1)
{
  result = [CRBluetoothManager hasPairingSupportingCarPlayWithAddress:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000675EC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100107FD8;
  qword_100107FD8 = v1;

  [qword_100107FD8 setTimeStyle:1];
  [qword_100107FD8 setDateStyle:1];
  v3 = +[NSLocale currentLocale];
  [qword_100107FD8 setLocale:v3];
}

void sub_100067678(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100067B2C(id a1, BOOL a2, NSError *a3)
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recording startedConnectionAttemptOnTransport", v4, 2u);
  }
}

void sub_100067CDC(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 transportType];

  v4 = +[CARAnalytics sharedInstance];
  [v4 reconnectEndedOnTransport:v3];

  if (v3 == 3)
  {
    v5 = *(a1 + 40);

    [v5 stopWaitingForConnection];
  }
}

void sub_100067E04(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 transportType];

  if (v3 == 3)
  {
    v4 = [*(a1 + 40) messagingConnector];
    v5 = [*(a1 + 32) MFiCertificateSerialNumber];
    v35 = [v4 vehicleAccessoryForCertificateSerial:v5];

    v6 = [*(a1 + 32) configuration];
    v7 = [v35 analyticsDescription];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

    v9 = [*(a1 + 32) sourceVersion];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"Unknown";
    }

    [v8 setObject:v11 forKeyedSubscript:@"SourceVersion"];

    v12 = [v6 vehicleFirmwareVersion];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"Unknown";
    }

    [v8 setObject:v14 forKeyedSubscript:@"vehicleFirmwareVersion"];

    v15 = [v6 vehicleHardwareVersion];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"Unknown";
    }

    [v8 setObject:v17 forKeyedSubscript:@"vehicleHardwareVersion"];

    v18 = [v6 vehicleManufacturer];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = @"Unknown";
    }

    [v8 setObject:v20 forKeyedSubscript:@"vehicleManufacturer"];

    v21 = [v6 vehicleModelName];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = @"Unknown";
    }

    [v8 setObject:v23 forKeyedSubscript:@"vehicleModel"];

    v24 = [v6 PPID];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = @"Unknown";
    }

    [v8 setObject:v26 forKeyedSubscript:@"ppid"];

    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 supportsVehicleData]);
    [v8 setObject:v27 forKeyedSubscript:@"nextGenCarPlaySession"];

    v28 = [*(a1 + 40) storedVehicleProvider];
    v29 = [v28 storedVehicleForSession:*(a1 + 32)];

    if (v29)
    {
      v30 = [v29 supportsStartSessionRequest];
      if ([v30 BOOLValue])
      {
        v31 = @"StartSession";
      }

      else
      {
        v31 = @"Bonjour";
      }

      [v8 setObject:v31 forKeyedSubscript:@"sessionType"];

      if ([v29 supportsBluetoothLE])
      {
        v32 = @"BLE";
      }

      else
      {
        v32 = @"BT Classic";
      }

      [v8 setObject:v32 forKeyedSubscript:@"bluetoothType"];
    }

    v33 = +[CARAnalytics sharedInstance];
    [v33 wirelessSessionEndedWithPayload:v8];

    v34 = +[CARAnalytics sharedInstance];
    [v34 setWifiChannel:0];

    [*(a1 + 40) stopWaitingForConnection];
  }

  else
  {
    v35 = +[CARAnalytics sharedInstance];
    [v35 wiredSessionEnded];
  }
}

void sub_10006839C(id a1)
{
  v1 = os_log_create("com.apple.carkitd", "Default");
  v2 = qword_100107FE8[0];
  qword_100107FE8[0] = v1;

  v3 = os_log_create("com.apple.carkitd", "BluetoothService");
  v4 = qword_100107FF8;
  qword_100107FF8 = v3;

  v5 = os_log_create("com.apple.carkitd", "ClusterControl");
  v6 = qword_100108000;
  qword_100108000 = v5;

  v7 = os_log_create("com.apple.carkitd", "FileTransfer");
  v8 = qword_100108008;
  qword_100108008 = v7;

  v9 = os_log_create("com.apple.carkitd", "NavigationOwnership");
  v10 = qword_100107FF0;
  qword_100107FF0 = v9;

  v11 = os_log_create("com.apple.carkitd", "StatisticsStream");
  v12 = qword_100108010;
  qword_100108010 = v11;

  qword_100108018 = os_log_create("com.apple.carkitd", "VideoSettings");

  _objc_release_x1();
}

uint64_t start()
{
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_100068C30;
  v54[4] = sub_100068C40;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_100068C30;
  v52[4] = sub_100068C40;
  v53 = 0;
  v0 = objc_autoreleasePoolPush();
  v1 = CarGeneralLogging();
  context = v0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "carkitd launching", buf, 2u);
  }

  v37 = objc_alloc_init(CRBluetoothManager);
  v36 = objc_alloc_init(CRCarPlayPreferences);
  v2 = [[CARSessionStatus alloc] initWithOptions:12];
  v26 = [[CRSessionSilentModeManager alloc] initWithSessionStatus:v2];
  v25 = [[CRNightModeFallbackManager alloc] initWithSessionStatus:v2];
  v3 = objc_alloc_init(CRVehicleStore);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100068C48, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v42 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.reconnectiontime.service"];
  v5 = [CARConnectionTimeServiceAgent alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v41 = [(CARConnectionTimeServiceAgent *)v5 initWithUserDefaults:v6 sessionStatus:v2];

  [v42 setDelegate:v41];
  [v42 resume];
  v40 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.service"];
  v7 = [[CRCarKitServiceAgent alloc] initWithVehicleStore:v3 sessionStatus:v2 bluetoothManager:v37 preferences:v36 connectionTimeServiceAgent:v41];
  [v40 setDelegate:v7];
  [v40 resume];
  v24 = [[CRCarKitIAPRemoteServiceAgent alloc] initWithDelegate:v7];
  v39 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.monitoring.service"];
  v38 = objc_alloc_init(CRCarKitMonitoringServiceAgent);
  [v39 setDelegate:v38];
  [v39 resume];
  [(CRCarKitServiceAgent *)v7 setMonitoringService:v38];
  v35 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.app.service"];
  v8 = [[CRCarPlayAppServiceAgent alloc] initWithSessionStatus:v2 vehicleStore:v3];
  [v35 setDelegate:v8];
  [v35 resume];
  v34 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.navowners.service"];
  v33 = [[CRCarPlayNavigationServiceAgent alloc] initWithSessionStatus:v2];
  [v34 setDelegate:v33];
  [v34 resume];
  v32 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.theme-asset-library"];
  v43 = objc_alloc_init(CARThemeAssetLibraryAgent);
  [v32 setDelegate:v43];
  v9 = [[CRThemeAssetLibrarian alloc] initWithVehicleStore:v3 sessionStatus:v2];
  [v43 setDelegate:v9];
  [(CRThemeAssetLibrarian *)v9 registerObserver:v43];
  [(CRThemeAssetLibrarian *)v9 registerObserver:v7];
  [(CRCarKitServiceAgent *)v7 setVehicleAssetManager:v9];
  v10 = [(CRCarKitServiceAgent *)v7 featuresAvailabilityAgent];
  [v10 setAssetDisabler:v8];

  [v32 resume];
  v31 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.navigation.service"];
  [v31 setDelegate:v33];
  [v31 resume];
  v30 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.setupPromptDirector.service"];
  v29 = objc_alloc_init(CRSetupPromptDirectorAgent);
  [v30 setDelegate:v29];
  [(CRCarKitServiceAgent *)v7 setSetupPromptDirector:v29];
  [v30 resume];
  v28 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.pairing.service"];
  v11 = [[CRWirelessPairingServiceAgent alloc] initWithBluetoothManager:v37 preferences:v36 vehicleStore:v3];
  [v28 setDelegate:v11];
  [(CRWirelessPairingServiceAgent *)v11 setPresenter:v7];
  [(CRCarKitServiceAgent *)v7 setHeadUnitPairingDelegate:v11];
  [v28 resume];
  v12 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.headUnitPairingPrompt.service"];
  [v12 setDelegate:v11];
  [v12 resume];
  v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.certificationOverrides.service"];
  v14 = objc_alloc_init(CRCertificationOverridesServiceAgent);
  [v13 setDelegate:v14];
  [v13 resume];
  v15 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100068CB4;
  handler[3] = &unk_1000DFCF0;
  v16 = v8;
  v50 = v16;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);

  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    [(CRCarKitServiceAgent *)v7 handleAnyMessagingConnectionsToVehicles];
  }

  else
  {
    +[CRVehicleStoreAvailability registerForAvailabilityEvent];
  }

  v17 = dispatch_get_global_queue(2, 0);
  v18 = v3;
  v19 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068E3C;
  block[3] = &unk_1000DE090;
  v20 = v18;
  v45 = v20;
  v21 = v2;
  v46 = v21;
  v47 = v54;
  v48 = v52;
  dispatch_async(v19, block);

  objc_autoreleasePoolPop(context);
  v22 = +[NSRunLoop mainRunLoop];
  [v22 run];

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);

  return 0;
}

void sub_100068C08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100068C30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100068C48()
{
  v0 = CarGeneralLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "system language changed, exiting", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

void sub_100068CB4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = [NSString stringWithUTF8String:string];
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ notification", &v9, 0xCu);
    }

    if (([v4 isEqualToString:@"com.apple.carkit.carplay-attached"] & 1) == 0)
    {
      v6 = +[CRVehicleStoreAvailability notifydEventName];
      v7 = [v4 isEqualToString:v6];

      if (v7)
      {
        +[CRVehicleStoreAvailability handleAvailabilityEvent];
      }

      else if ([v4 isEqualToString:@"com.apple.vehiclePolicy.DNDMode"])
      {
        v8 = +[CARDNDManager sharedManager];
        [v8 _checkVehicleState];
      }

      else if ([v4 isEqualToString:@"com.apple.carkit.capabilities-changed"])
      {
        [*(a1 + 32) requestCarCapabilitiesUpdate];
      }
    }
  }
}

id sub_100068E3C(void *a1)
{
  [CARDNDManager setupSharedManagerWithVehicleStore:a1[4] sessionStatus:a1[5]];
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.carkit.dnd.service"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [[CARDNDServiceAgent alloc] initWithVehicleStore:a1[4]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[6] + 8) + 40) setDelegate:*(*(a1[7] + 8) + 40)];
  v8 = *(*(a1[6] + 8) + 40);

  return [v8 resume];
}

void sub_100069130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100069148(uint64_t a1)
{
  v3 = [*(a1 + 32) service];
  v2 = [v3 activeChannel];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100069268(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() identifier];
  v4 = [*(a1 + 32) dictionaryRepresentation];
  v5 = [*(a1 + 40) plistMessenger];
  v13 = 0;
  v6 = [v5 dataForMessageWithIdentifier:v3 contents:v4 error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = [*(a1 + 40) service];
    v9 = [v8 activeChannel];

    if (v9)
    {
      [v9 sendData:v6];
      v10 = [*(a1 + 40) activeMessagesForDatas];
      [v10 setObject:*(a1 + 32) forKey:v6];
    }

    else
    {
      v12 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no active channel", buf, 2u);
      }

      [*(a1 + 40) _queue_handleFailedToSendMessage:*(a1 + 32)];
    }
  }

  else
  {
    v11 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to encode message contents: %@", buf, 0xCu);
    }

    [*(a1 + 40) _queue_handleFailedToSendMessage:*(a1 + 32)];
  }
}

void sub_100069658(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedShort:*(a1 + 48)];
  v3 = [*(a1 + 32) messageClassesForIdentifiers];
  v4 = [v3 objectForKey:v2];

  if (v4 && ([(objc_class *)v4 conformsToProtocol:&OBJC_PROTOCOL___CARCarPlayServiceMessage]& 1) != 0)
  {
    v5 = (a1 + 40);
    v6 = [[v4 alloc] initWithDictionaryRepresentation:*(a1 + 40)];
    if (v6)
    {
      v7 = [*(a1 + 32) serviceDelegate];
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 carPlayService:*(a1 + 32) didReceiveMessage:v6];
      }
    }

    else
    {
      v10 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100088E38(v5, v10);
      }
    }
  }

  else
  {
    v6 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 40);
      v11[0] = 67109378;
      v11[1] = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unknown message ID: %hu: %@", v11, 0x12u);
    }
  }
}

void sub_1000698B4(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "did open BLE service channel: %@", &v5, 0xCu);
  }

  [*(a1 + 32) setChannelDelegate:*(a1 + 40)];
  v4 = [*(a1 + 40) serviceDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 carPlayServiceDidActivate:*(a1 + 40)];
  }
}

void sub_100069A54(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "did close BLE service channel: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 40) activeMessagesForDatas];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 40);
        v11 = [v10 _queue_popMessageForData:*(*(&v13 + 1) + 8 * i)];
        [v10 _queue_handleFailedToSendMessage:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 40) serviceDelegate];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 carPlayServiceDidDeactivate:*(a1 + 40)];
  }
}

void sub_100069CC8(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_popMessageForData:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) serviceDelegate];
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 carPlayService:*(a1 + 32) didSendMessage:v4];
    }

    v2 = v4;
  }
}

uint64_t sub_100069E0C(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_popMessageForData:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _queue_handleFailedToSendMessage:v2];
  }

  return _objc_release_x1();
}

void sub_100069F24(uint64_t a1)
{
  v2 = [*(a1 + 32) plistMessenger];
  [v2 handleReceivedData:*(a1 + 40)];
}

id sub_10006B244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 address];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 isServiceSupported:0x40000];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10006B384(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10006B680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v5)
  {
    v7 = [v5 BOOLValue];
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      v10 = *(a1 + 48);
      v13 = 138543875;
      if (v7)
      {
        v9 = @"YES";
      }

      v14 = v9;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2113;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "received numeric comparison confirmation response %{public}@ for device %{private, mask.hash}@", &v13, 0x20u);
    }

    v11 = +[BluetoothManager sharedInstance];
    [v11 acceptSSP:v7 ^ 1 forDevice:*(a1 + 40)];
  }

  else
  {
    v12 = CarPairingLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100089074(v6, v12);
    }

    [*(a1 + 32) _pairingFailedForDevice:*(a1 + 40) didTimeout:0];
  }
}

void sub_10006C790(uint64_t a1)
{
  v2 = CarSilentModeLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ringer switch toggled", v4, 2u);
  }

  [*(a1 + 32) setLastModeChangeByCarkitd:0];
  [*(a1 + 32) setShouldResetMuteState:0];
  v3 = [*(a1 + 32) muteStatus];
  [*(a1 + 32) setShouldResetToMuted:{objc_msgSend(v3, "isDeviceSilentModeOn")}];
}

void sub_10006C8D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained muteStatus];
  v2 = [v1 getCarPlaySilentModePreference];

  [WeakRetained setLastModeChangeByCarkitd:1];
  if (v2)
  {
    v3 = @"Unmuted";
    if (v2 == 1)
    {
      v3 = @"Muted";
    }

    v4 = [NSString stringWithFormat:@"CarPlay Silent Mode Panel changed during session. %@", v3];
    [WeakRetained matchDeviceSilentModeToCarPlaySilentModeWithReason:v4];
  }

  else
  {
    [WeakRetained setShouldResetMuteState:0];
    v4 = [WeakRetained muteStatus];
    [v4 setDeviceSilentMode:objc_msgSend(WeakRetained reason:{"shouldResetToMuted"), @"Mirroring last non-CarPlay silent mode set"}];
  }
}

BOOL sub_10006CB58(id a1, MAAsset *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MAAsset *)v3 state]== 2 || [(MAAsset *)v3 state]== 6;

  return v4;
}

void sub_10006D430(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setting tracked theme assets to: %@", &v14, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [NSPredicate predicateWithBlock:&stru_1000DFDC8];
  v6 = [v4 filteredSetUsingPredicate:v5];

  v7 = [v6 count];
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  if (v9)
  {
    if ([v9 isEqual:*(a1 + 32)])
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 40);
  }

  objc_storeStrong((v8 + 16), *(a1 + 32));
  if (*(a1 + 32))
  {
    [*(a1 + 40) _assetQueue_removeUnusedAssets];
    v11 = *(a1 + 40);
    if (v7)
    {
      [*(a1 + 40) _assetQueue_queryInstalledAssetsForAssetRequests:v6];
      v12 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100089208();
      }

      [*(a1 + 40) _assetQueue_requestAssetCatalogDownload];
    }

    else
    {
      v13 = [*(a1 + 40) assetRequests];
      [v11 _assetQueue_queryUpdatedAssetsForRequests:v13];
    }
  }

LABEL_15:
}

void sub_10006D68C(uint64_t a1)
{
  v2 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received download hint for asset request %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) assetRequests];
  v5 = (a1 + 32);
  v6 = [v4 containsObject:*(a1 + 32)];

  if (v6)
  {
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100089244(v5);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = [NSSet setWithObject:*(a1 + 32)];
    [v8 _assetQueue_queryUpdatedAssetsForRequests:v7];
  }
}

void sub_10006DA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarThemeAssetsLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "asset request %{public}@ matches installed asset %@", &v9, 0x16u);
    }

    [*(a1 + 32) _assetQueue_notifyObserverOfAsset:v6 forAssetRequest:v5];
  }

  else
  {
    if (v8)
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "no installed asset matches %{public}@", &v9, 0xCu);
    }
  }
}

void sub_10006DC78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v6 = [*(a1 + 32) assetQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006DD70;
  v8[3] = &unk_1000DFE18;
  objc_copyWeak(v10, &location);
  v10[1] = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void sub_10006DD70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = CarThemeAssetsLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000892F8(a1);
    }

    [WeakRetained setAssetRequests:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "theme assets catalog downloaded", v7, 2u);
    }

    v6 = [WeakRetained assetRequests];
    [WeakRetained _assetQueue_queryUpdatedAssetsForRequests:v6];
  }
}

void sub_10006E194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006E1C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 assetIdentifier];
  if (!(v8 | v9))
  {
    v11 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000894E0();
    }

    v12 = [*(a1 + 32) _assetQueue_nextRequiredCompatibilityVersionToMatchAssetRequest:v7 inAssets:*(a1 + 40)];
    [*(a1 + 32) _assetQueue_notifyObserverOfFoundNoAssetForAssetRequest:v7 nextRequiredCompatibilityVersion:v12];
LABEL_18:

    goto LABEL_19;
  }

  if (v8)
  {
    [*(a1 + 32) _assetQueue_notifyObserverOfAsset:v8 forAssetRequest:v7];
  }

  if (v9)
  {
    v13 = [*(a1 + 48) containsObject:v7];
    v12 = CarThemeAssetsLogging();
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        *buf = 138412290;
        v36 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "theme asset exists for %@ but is not downloaded, requesting download", buf, 0xCu);
      }

      v12 = [v9 cr_assetVersion];
      if (v12)
      {
        v15 = [[NSProgress alloc] initWithParent:0 userInfo:0];
        [*(a1 + 32) _assetQueue_notifyObserverOfDownloadAttemptForAssetRequest:v7 version:v12 progress:v15];
        v16 = objc_alloc_init(MADownloadOptions);
        [v16 setAllowsCellularAccess:1];
        [v16 setDiscretionary:0];
        [v16 setAllowsExpensiveAccess:1];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10006E5AC;
        v33[3] = &unk_1000DFE68;
        v17 = v15;
        v34 = v17;
        [v9 attachProgressCallBack:v33];
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_10006E69C;
        v25 = &unk_1000DFEB8;
        v26 = *(a1 + 32);
        objc_copyWeak(&v32, (a1 + 56));
        v18 = v17;
        v27 = v18;
        v19 = v9;
        v28 = v19;
        v29 = v7;
        v30 = v12;
        v20 = v10;
        v31 = v20;
        [v19 startDownload:v16 completionWithError:&v22];
        v21 = [*(a1 + 32) assetQueue_currentlyDownloadingAssets];
        [v21 setObject:v19 forKey:v20];

        objc_destroyWeak(&v32);
      }

      else
      {
        v18 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100089458(v9);
        }
      }
    }

    else if (v14)
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "newer theme asset exists for %@ but will download at another time", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_10006E588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

id sub_10006E5AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 totalExpected];
  v5 = [v3 totalWritten];

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134349312;
    v9 = v5;
    v10 = 2050;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "asset download progress: %{public}llu of %{public}llu bytes", &v8, 0x16u);
  }

  [*(a1 + 32) setTotalUnitCount:v4];
  return [*(a1 + 32) setCompletedUnitCount:v5];
}

void sub_10006E69C(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] assetQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006E7D4;
  v8[3] = &unk_1000DFE90;
  objc_copyWeak(v15, a1 + 10);
  v15[1] = a2;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = v5;
  v13 = a1[8];
  v14 = a1[9];
  v7 = v5;
  dispatch_async(v6, v8);

  objc_destroyWeak(v15);
}

void sub_10006E7D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (*(a1 + 88))
  {
    v3 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100089550(a1);
    }

    [WeakRetained _assetQueue_notifyObserverOfFailedDownloadForAssetRequest:*(a1 + 48) version:*(a1 + 64) error:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    v4 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "theme asset download successful", v6, 2u);
    }

    [WeakRetained _assetQueue_notifyObserverOfAsset:*(a1 + 40) forAssetRequest:*(a1 + 48)];
  }

  v5 = [WeakRetained assetQueue_currentlyDownloadingAssets];
  [v5 removeObjectForKey:*(a1 + 72)];
}

uint64_t sub_10006EF20(uint64_t a1, void *a2)
{
  v3 = [a2 cr_assetVersion];
  v4 = [v3 identifier];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) assetRequests];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) assetIdentifier];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v12 = 0;
            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_12:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

BOOL sub_10006F1C4(uint64_t a1, void *a2)
{
  v3 = [a2 cr_assetVersion];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

uint64_t sub_10006FC88(uint64_t a1)
{
  qword_100108028 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100070550(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent wirelessReconnectStarted connection event", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000896BC(v4);
  }
}

void sub_10007085C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent _wirelessReconnectEnded connection event", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100089740(v4);
  }
}

void sub_1000709B4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent _wiredReconnectEnded connection event", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000897C4(v4);
  }
}

void sub_100070CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100070D04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v174 = a3;
  v180 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v175 = v5;
  if (![v5 count])
  {
    goto LABEL_167;
  }

  v176 = [v5 firstObject];
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v176 sessionIdentifier];
    v8 = [v176 events];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = [v8 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of events in the lastSession %@: %lu", buf, 0x16u);
  }

  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionBTTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectioniAPTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionWifiTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionAirPlayTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionCarkitTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionTotalTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectioniAPOverBluetoothTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectioniAPOverWiFiTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectioniAPOverUSBTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionWifiBasicAssocTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionWifi4WHSTime"];
  [*(v180 + 32) setObject:@"Unknown" forKeyedSubscript:@"reconnectionWifiDHCPTime"];
  if (!v176)
  {
    v21 = CarGeneralLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No available session for wireless reconnect calculations - exiting.", buf, 2u);
    }

    [WeakRetained sendEvent:8 withDictionary:*(v180 + 32)];
    goto LABEL_166;
  }

  v172 = [NSSet setWithObject:&off_1000E8140];
  [v176 allEventsOfTypes:v172];
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  obj = v214 = 0u;
  v9 = [obj countByEnumeratingWithState:&v213 objects:v226 count:16];
  if (!v9)
  {

    v170 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  v184 = 0;
  v192 = 0;
  v10 = *v214;
  v11 = CARBluetoothWirelessIAPProfileConnectionAttempt;
  v12 = CARBluetoothWirelessIAPProfileConnectionSuccess;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v214 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v213 + 1) + 8 * i);
      v15 = [v14 eventName];
      if ([v15 isEqualToString:v11])
      {
        v16 = [v14 eventDate];
        v17 = v192;
        v192 = v16;
      }

      else
      {
        if (![v15 isEqualToString:v12])
        {
          goto LABEL_15;
        }

        v18 = [v14 eventDate];
        v17 = v184;
        v184 = v18;
      }

LABEL_15:
    }

    v9 = [obj countByEnumeratingWithState:&v213 objects:v226 count:16];
  }

  while (v9);

  v19 = v192;
  v170 = v192 != 0;
  if (!v192)
  {
    goto LABEL_21;
  }

  v20 = v184;
  if (v184)
  {
    if ([v192 compare:v184] != -1)
    {
      v170 = 1;
      v19 = v192;
LABEL_21:
      v20 = v184;
      goto LABEL_26;
    }

    [v184 timeIntervalSinceDate:v192];
    v113 = v112;
    v114 = [NSNumber numberWithDouble:?];
    v115 = [v114 stringValue];
    [*(v180 + 32) setObject:v115 forKeyedSubscript:@"reconnectionBTTime"];

    v116 = CarGeneralLogging();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = [NSNumber numberWithDouble:v113];
      *buf = 138412290;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Bluetooth reconnection time: %@", buf, 0xCu);
    }

    v170 = 1;
  }

  else
  {
LABEL_26:
    v192 = v19;
    v184 = v20;
    [WeakRetained _sendAnalyticsErrorWithNSDate:? endDate:? errorCategory:?];
  }

  if (qword_100108048 != -1)
  {
    sub_100089848();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v225 = 0;
  v22 = qword_100108038;
  v208[0] = _NSConcreteStackBlock;
  v208[1] = 3221225472;
  v208[2] = sub_10007290C;
  v208[3] = &unk_1000DFFB0;
  v173 = v176;
  v209 = v173;
  v212 = buf;
  v210 = *(v180 + 32);
  v211 = WeakRetained;
  [v22 enumerateObjectsUsingBlock:v208];
  if (*(*&buf[8] + 24) > 0.0)
  {
    v23 = [NSNumber numberWithDouble:?];
    v24 = [v23 stringValue];
    [*(v180 + 32) setObject:v24 forKeyedSubscript:@"reconnectioniAPTime"];
  }

  v169 = [NSSet setWithObject:&off_1000E81E8];
  [v173 allEventsOfTypes:?];
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v187 = v205 = 0u;
  v25 = [v187 countByEnumeratingWithState:&v204 objects:v223 count:16];
  if (!v25)
  {

    v36 = 0;
    v35 = 0;
LABEL_49:
    v190 = v36;
    v182 = v35;
    [WeakRetained _sendAnalyticsErrorWithNSDate:? endDate:? errorCategory:?];
    goto LABEL_50;
  }

  v182 = 0;
  v190 = 0;
  v26 = *v205;
  v27 = CARAirPlayEndpointSelected;
  v28 = CARAirPlayCarSentStatistics;
  while (2)
  {
    v29 = 0;
    while (2)
    {
      if (*v205 != v26)
      {
        objc_enumerationMutation(v187);
      }

      v30 = *(*(&v204 + 1) + 8 * v29);
      v31 = [v30 eventName];
      if ([v31 isEqualToString:v27])
      {
        v32 = [v30 eventDate];
        v33 = v190;
        v190 = v32;
        goto LABEL_40;
      }

      if ([v31 isEqualToString:v28])
      {
        v34 = [v30 eventDate];
        v33 = v182;
        v182 = v34;
LABEL_40:
      }

      if (v25 != ++v29)
      {
        continue;
      }

      break;
    }

    v25 = [v187 countByEnumeratingWithState:&v204 objects:v223 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

  if (!v190)
  {
    goto LABEL_46;
  }

  v35 = v182;
  if (!v182)
  {
    v36 = v190;
    goto LABEL_49;
  }

  if ([v190 compare:v182] != -1)
  {
LABEL_46:
    v36 = v190;
    v35 = v182;
    goto LABEL_49;
  }

  [v182 timeIntervalSinceDate:v190];
  v119 = v118;
  v120 = [NSNumber numberWithDouble:?];
  v121 = [v120 stringValue];
  [*(v180 + 32) setObject:v121 forKeyedSubscript:@"reconnectionAirPlayTime"];

  v122 = CarGeneralLogging();
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
    v123 = [NSNumber numberWithDouble:v119];
    *v219 = 138412290;
    v220 = v123;
    _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "AirPlay reconnection time: %@", v219, 0xCu);
  }

LABEL_50:
  v202[0] = _NSConcreteStackBlock;
  v202[1] = 3221225472;
  v202[2] = sub_100072C30;
  v202[3] = &unk_1000DFFD8;
  v178 = objc_opt_new();
  v203 = v178;
  [v187 enumerateObjectsUsingBlock:v202];
  v171 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"AP_SIGNPOST_ALTERNATESCREEN_["];
  v37 = [*(v180 + 40) allKeys];
  v179 = [v37 filteredArrayUsingPredicate:v171];

  if (![v178 count] && (objc_msgSend(WeakRetained, "airplayScreenDisplayingTimes"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count") == 0, v38, v39))
  {
    v67 = CarGeneralLogging();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *v219 = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "AirPlay payloads for Sent Statistics and Screen Displaying times are empty.", v219, 2u);
    }
  }

  else
  {
    v40 = [v178 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
    [v40 doubleValue];
    v42 = v41;

    v43 = [*(v180 + 40) objectForKeyedSubscript:@"AP_SIGNPOST_MAINSCREEN_DISPLAYING"];
    [v43 doubleValue];
    v45 = v44;

    if (v42 <= 0.0 || v45 <= 0.0 || v45 <= v42)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Main Screen Display/UI Bring up time" endDate:v42 errorCategory:v45];
    }

    else
    {
      v46 = [NSNumber numberWithDouble:v45 - v42];
      v47 = [v46 stringValue];
      [*(v180 + 32) setObject:v47 forKeyedSubscript:@"mainScreenUIBringUpTime"];

      v48 = CarGeneralLogging();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [*(v180 + 32) objectForKeyedSubscript:@"mainScreenUIBringUpTime"];
        *v219 = 138412290;
        v220 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Main Screen Display/UI Bring up time: %@", v219, 0xCu);
      }
    }

    for (j = 1; j <= [v179 count]; ++j)
    {
      v51 = [v178 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
      [v51 doubleValue];
      v53 = v52;

      v54 = *(v180 + 40);
      v55 = [v179 objectAtIndex:j - 1];
      v56 = [v54 objectForKeyedSubscript:v55];
      [v56 doubleValue];
      v58 = v57;

      if (v53 <= 0.0 || v58 <= 0.0 || v58 <= v53)
      {
        [WeakRetained _sendAnalyticsErrorWithDouble:@"Alternate Screen Display/UI Bring up time" endDate:v53 errorCategory:v58];
      }

      else
      {
        v59 = [NSNumber numberWithDouble:v58 - v53];
        v60 = [v59 stringValue];
        v61 = *(v180 + 32);
        v62 = [NSString stringWithFormat:@"altScreen%luUIBringUpTime", j];
        [v61 setObject:v60 forKeyedSubscript:v62];

        v63 = CarGeneralLogging();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(v180 + 32);
          v65 = [NSString stringWithFormat:@"altScreen%luUIBringUpTime", j];
          v66 = [v64 objectForKeyedSubscript:v65];
          *v219 = 134218242;
          v220 = j;
          v221 = 2112;
          v222 = v66;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Alternate Screen Display/UI %lu Bring up time: %@", v219, 0x16u);
        }
      }
    }
  }

  v168 = [NSSet setWithObject:&off_1000E8200];
  v68 = [v173 allEventsOfTypes:?];
  v191 = [WeakRetained wirelessReconnectStartDate];
  v183 = [WeakRetained wirelessReconnectEndDate];
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v186 = v68;
  v69 = [v186 countByEnumeratingWithState:&v198 objects:v218 count:16];
  if (v69)
  {
    v70 = *v199;
    v71 = CARCarKitAttemptingConnectionEvent;
    v72 = CARCarKitConnectionSessionEndEvent;
    v73 = CARCarKitWirelessPairingCreatedEvent;
    do
    {
      for (k = 0; k != v69; k = k + 1)
      {
        if (*v199 != v70)
        {
          objc_enumerationMutation(v186);
        }

        v75 = *(*(&v198 + 1) + 8 * k);
        v76 = [v75 eventName];
        if ([v76 isEqualToString:v71])
        {
          [v75 eventDate];
          v191 = v77 = v191;
          goto LABEL_87;
        }

        if ([v76 isEqualToString:v72])
        {
          [v75 eventDate];
          v183 = v77 = v183;
          goto LABEL_87;
        }

        if ([v76 isEqualToString:v73])
        {
          [*(v180 + 32) setObject:@"true" forKeyedSubscript:@"wasPairing"];
          v77 = CarGeneralLogging();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_87;
          }

          *v219 = 0;
          v78 = v77;
          v79 = "CARAnalytics: CARCarKitWirelessPairingCreatedEvent discovered. Marking this event as a first time pairing experience.";
          v80 = 2;
        }

        else
        {
          v77 = CarGeneralLogging();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_87;
          }

          *v219 = 138412546;
          v220 = v75;
          v221 = 2112;
          v222 = v76;
          v78 = v77;
          v79 = "CARAnalytics: Unknown CarKit Event name discovered in allCarKitEvents: %@ : %@";
          v80 = 22;
        }

        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, v79, v219, v80);
LABEL_87:
      }

      v69 = [v186 countByEnumeratingWithState:&v198 objects:v218 count:16];
    }

    while (v69);
  }

  if (v191 && v183)
  {
    if ([v191 compare:v183]== -1)
    {
      [v183 timeIntervalSinceDate:v191];
      v83 = v82;
      v84 = [NSNumber numberWithDouble:?];
      v85 = [v84 stringValue];
      [*(v180 + 32) setObject:v85 forKeyedSubscript:@"reconnectionCarkitTime"];

      v81 = CarGeneralLogging();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v86 = [NSNumber numberWithDouble:v83];
        *v219 = 138412290;
        v220 = v86;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "CarKit reconnection time: %@", v219, 0xCu);
      }
    }

    else
    {
      v81 = CarGeneralLogging();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_1000898E8();
      }
    }
  }

  else if (v191)
  {
    v81 = CarGeneralLogging();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_1000898AC();
    }
  }

  else
  {
    v81 = CarGeneralLogging();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_100089870();
    }
  }

  v87 = [NSSet setWithObject:&off_1000E8218];
  [v173 allEventsOfTypes:v87];
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v185 = v195 = 0u;
  v88 = [v185 countByEnumeratingWithState:&v194 objects:v217 count:16];
  v167 = v87;
  if (!v88)
  {

    v104 = 0;
    v103 = 0;
    v107 = 0;
    v96 = 0;
    goto LABEL_126;
  }

  v89 = 0;
  v189 = 0;
  v193 = 0;
  v90 = *v195;
  v91 = CARWiFiWPAHSCompleted;
  v92 = CARWiFiBasicAssociationCompleted;
  v181 = CARWiFiDHCPCompleted;
  while (2)
  {
    v93 = 0;
    while (2)
    {
      if (*v195 != v90)
      {
        objc_enumerationMutation(v185);
      }

      v94 = *(*(&v194 + 1) + 8 * v93);
      v95 = [v94 eventName];
      v96 = v89;
      if ([v95 isEqualToString:v91] && (!v193 || (objc_msgSend(v94, "eventDate"), v97 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend(v97, "compare:", v193) == -1, v97, v98)))
      {
        v102 = [v94 eventDate];
        v100 = v193;
        v193 = v102;
LABEL_114:
      }

      else
      {
        if ([v95 isEqualToString:v92])
        {
          v99 = [v94 eventDate];
          v100 = v189;
          v189 = v99;
          goto LABEL_114;
        }

        if ([v95 isEqualToString:v181])
        {
          v101 = [v94 eventDate];
          v100 = v96;
          v96 = v101;
          goto LABEL_114;
        }
      }

      v93 = v93 + 1;
      v89 = v96;
      if (v88 != v93)
      {
        continue;
      }

      break;
    }

    v88 = [v185 countByEnumeratingWithState:&v194 objects:v217 count:16];
    if (v88)
    {
      continue;
    }

    break;
  }

  v103 = v193;
  v104 = v193 != 0;
  if (v193)
  {
    v105 = v191 != 0;
  }

  else
  {
    v105 = 0;
  }

  if (v105)
  {
    if ([v191 compare:v193]== -1)
    {
      [v193 timeIntervalSinceDate:v191];
      v125 = v124;
      v126 = [NSNumber numberWithDouble:?];
      v127 = [v126 stringValue];
      [*(v180 + 32) setObject:v127 forKeyedSubscript:@"reconnectionWifiTime"];

      v106 = CarGeneralLogging();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        v128 = [NSNumber numberWithDouble:v125];
        *v219 = 138412290;
        v220 = v128;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Wi-Fi reconnection time: %@", v219, 0xCu);
      }
    }

    else
    {
      v106 = CarGeneralLogging();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        sub_100089924();
      }
    }

    v104 = 1;
    goto LABEL_141;
  }

  v107 = v189;
LABEL_126:
  if (!v191)
  {
    v108 = CarGeneralLogging();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      sub_100089960();
    }

    v109 = v107;
    v110 = v107 != 0;
    v111 = v192;
LABEL_145:
    v129 = v96;
LABEL_146:
    v189 = v109;
    [WeakRetained _sendAnalyticsErrorWithNSDate:v191 endDate:? errorCategory:?];
    goto LABEL_147;
  }

  v193 = v103;
  v106 = CarGeneralLogging();
  v189 = v107;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    sub_10008999C();
  }

LABEL_141:

  if (!v189)
  {
    v110 = 0;
    v109 = 0;
    v111 = v192;
    v103 = v193;
    goto LABEL_145;
  }

  v111 = v192;
  v103 = v193;
  if ([v191 compare:?]!= -1)
  {
    v129 = v96;
    v110 = 1;
    v109 = v189;
    goto LABEL_146;
  }

  [v189 timeIntervalSinceDate:v191];
  v162 = v161;
  v163 = [NSNumber numberWithDouble:?];
  v164 = [v163 stringValue];
  [*(v180 + 32) setObject:v164 forKeyedSubscript:@"reconnectionWifiBasicAssocTime"];

  v165 = CarGeneralLogging();
  if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
  {
    v166 = [NSNumber numberWithDouble:v162];
    *v219 = 138412290;
    v220 = v166;
    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "Wi-Fi basic association reconnection time: %@", v219, 0xCu);
  }

  v110 = 1;
  v111 = v192;
  v103 = v193;
  v129 = v96;
LABEL_147:
  v130 = v129;
  if (v110 && v104 && [v189 compare:v103] == -1)
  {
    [v103 timeIntervalSinceDate:v189];
    v135 = v134;
    v136 = [NSNumber numberWithDouble:?];
    v137 = [v136 stringValue];
    [*(v180 + 32) setObject:v137 forKeyedSubscript:@"reconnectionWifi4WHSTime"];

    v138 = CarGeneralLogging();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      v139 = [NSNumber numberWithDouble:v135];
      *v219 = 138412290;
      v220 = v139;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "Wi-Fi 4-way handshake reconnection time: %@", v219, 0xCu);
    }

    v111 = v192;
    v129 = v130;
  }

  else
  {
    [WeakRetained _sendAnalyticsErrorWithNSDate:v189 endDate:v103 errorCategory:@"Wi-Fi 4-way handshake reconnection time"];
  }

  if (v129)
  {
    v131 = v104;
  }

  else
  {
    v131 = 0;
  }

  if (v131 && [v103 compare:v129] == -1)
  {
    [v129 timeIntervalSinceDate:v103];
    v141 = v140;
    v142 = [NSNumber numberWithDouble:?];
    v143 = [v142 stringValue];
    [*(v180 + 32) setObject:v143 forKeyedSubscript:@"reconnectionWifiDHCPTime"];

    v144 = CarGeneralLogging();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v145 = [NSNumber numberWithDouble:v141];
      *v219 = 138412290;
      v220 = v145;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Wi-Fi DHCP reconnection time: %@", v219, 0xCu);
    }

    v111 = v192;
  }

  else
  {
    [WeakRetained _sendAnalyticsErrorWithNSDate:v103 endDate:v129 errorCategory:@"Wi-Fi DHCP reconnection time"];
  }

  if (v183)
  {
    v132 = v170;
  }

  else
  {
    v132 = 0;
  }

  if (v132 && [v111 compare:v183] == -1)
  {
    [v183 timeIntervalSinceDate:v111];
    v147 = v146;
    v148 = [NSNumber numberWithDouble:?];
    v149 = [v148 stringValue];
    [*(v180 + 32) setObject:v149 forKeyedSubscript:@"reconnectionTotalTime"];

    v150 = CarGeneralLogging();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      v151 = [NSNumber numberWithDouble:v147];
      *v219 = 138412290;
      v220 = v151;
      _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "Total reconnection time: %@", v219, 0xCu);
    }

    if (CRIsInternalInstall())
    {
      v152 = +[CARPrototypePref allowAutomaticConnectionDurationTTR];
      v153 = [v152 internalSettingsState];

      if (v153)
      {
        v154 = +[CARPrototypePref wirelessConnectionDurationTTRThreshold];
        v155 = [v154 internalSettingsValue];

        [v155 doubleValue];
        if (v147 > v156)
        {
          if (v156 <= 7.0)
          {
            v158 = CarGeneralLogging();
            if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
            {
              *v219 = 0;
              _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Reconnection time exceeded user-default threshold but the user-default value is lower than CarPlay spec requirement. No radar draft necessary.", v219, 2u);
            }
          }

          else
          {
            v157 = CarGeneralLogging();
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
            {
              *v219 = 0;
              _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Reconnection time exceeded user-defined threshold. Preparing TTR Draft.", v219, 2u);
            }

            v158 = objc_alloc_init(NSDateComponentsFormatter);
            [v158 setAllowedUnits:192];
            [v158 setZeroFormattingBehavior:0x10000];
            v159 = [v158 stringFromTimeInterval:v147];
            v160 = [NSString stringWithFormat:@"Total Reconnection Time: %@", v159];
            [WeakRetained _prepareConnectionTTRDraftWithConnectionSession:v173 withAdditionalDescription:v160 completionHandler:&stru_1000DFFF8];
          }
        }
      }
    }
  }

  else
  {
    [WeakRetained _sendAnalyticsErrorWithNSDate:v111 endDate:? errorCategory:?];
  }

  [WeakRetained sendEvent:8 withDictionary:*(v180 + 32)];
  v133 = CarGeneralLogging();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
  {
    *v219 = 0;
    _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent wirelessSessionEndedWithPayload event", v219, 2u);
  }

  [WeakRetained sendPreviousSessionData:v175];
  _Block_object_dispose(buf, 8);

LABEL_166:
LABEL_167:
}

void sub_1000728BC(id a1)
{
  v1 = qword_100108038;
  qword_100108038 = &off_1000E8CD0;

  v2 = qword_100108040;
  qword_100108040 = &off_1000E8CE8;
}

void sub_10007290C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSSet setWithObject:v5];
  v7 = [*(a1 + 32) allEventsOfTypes:v6];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v8)
  {
    v11 = 0;
    v10 = 0;
LABEL_20:
    [*(a1 + 48) _sendAnalyticsErrorWithNSDate:v11 endDate:v10 errorCategory:@"iAP reconnection time"];
    goto LABEL_21;
  }

  v9 = v8;
  v31 = a3;
  v32 = a1;
  v33 = v6;
  v34 = v5;
  v10 = 0;
  v11 = 0;
  v12 = *v36;
  v13 = CARiAPConnectionStart;
  v14 = CARiAPAuthComplete;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v35 + 1) + 8 * i);
      v17 = [v16 eventName];
      if ([v17 isEqualToString:v13])
      {
        v18 = [v16 eventDate];
        v19 = v11;
        v11 = v18;
      }

      else
      {
        if (![v17 isEqualToString:v14])
        {
          goto LABEL_11;
        }

        v20 = [v16 eventDate];
        v19 = v10;
        v10 = v20;
      }

LABEL_11:
    }

    v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v9);
  if (!v11)
  {
    v6 = v33;
    v5 = v34;
    a1 = v32;
    goto LABEL_20;
  }

  v6 = v33;
  v5 = v34;
  a1 = v32;
  if (!v10 || [v11 compare:v10] != -1)
  {
    goto LABEL_20;
  }

  [v10 timeIntervalSinceDate:v11];
  v22 = v21;
  *(*(*(v32 + 56) + 8) + 24) = v21 + *(*(*(v32 + 56) + 8) + 24);
  v23 = [NSNumber numberWithDouble:v21];
  v24 = [v23 stringValue];
  v25 = *(v32 + 40);
  v26 = [qword_100108040 objectAtIndexedSubscript:v31];
  v27 = [v26 unsignedIntegerValue];
  if (v27 > 0xD)
  {
    v28 = @"Unknown";
  }

  else
  {
    v28 = *(&off_1000E00B8 + v27);
  }

  [v25 setObject:v24 forKeyedSubscript:v28];

  v29 = CarGeneralLogging();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [NSNumber numberWithDouble:v22];
    *buf = 138412290;
    v40 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "iAP reconnection time: %@", buf, 0xCu);
  }

LABEL_21:
}

void sub_100072C30(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 eventName];
  if ([v3 isEqualToString:CARAirPlayConnectionTimeInfo])
  {
    v4 = [v6 payload];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = *(a1 + 32);
    v3 = [v6 payload];
    [v5 addEntriesFromDictionary:v3];
  }

LABEL_5:
}

void sub_100072CDC(id a1)
{
  v1 = CarGeneralLogging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "TTR Draft prepared for user.", v2, 2u);
  }
}

void sub_100072DE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100072E04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v208 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v209 = v5;
  v6 = [v5 firstObject];
  v7 = [v6 vehicleInformation];
  v8 = [v7 mutableCopy];
  v9 = v8;
  v10 = MAAsset_ptr;
  if (v8)
  {
    v212 = v8;
  }

  else
  {
    v212 = objc_opt_new();
  }

  v11 = MAAsset_ptr;
  v207 = [NSSet setWithObject:&off_1000E8188];
  [v6 allEventsOfTypes:?];
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v12 = v228 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v225 objects:v234 count:16];
  obj = v12;
  v210 = v6;
  if (!v13)
  {

    v30 = 0;
    v29 = 0;
    v31 = 0;
    v214 = 0;
    v215 = 0;
    goto LABEL_29;
  }

  v214 = 0;
  v215 = 0;
  v216 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *v226;
  v17 = CARiAPConnectionStart;
  v18 = CARiAPAuthComplete;
  v19 = CARiAPAuthStarted;
  v218 = CARiAP2EndpointCreated;
  v213 = CARiAPStartSessionReceived;
  do
  {
    for (i = 0; i != v13; i = (i + 1))
    {
      if (*v226 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v225 + 1) + 8 * i);
      v22 = [v21 eventName];
      if ([v22 isEqualToString:v17])
      {
        v23 = [v21 eventDate];
        v24 = v15;
        v15 = v23;
      }

      else if ([v22 isEqualToString:v18])
      {
        v25 = [v21 eventDate];
        v24 = v14;
        v14 = v25;
      }

      else if ([v22 isEqualToString:v19])
      {
        v26 = [v21 eventDate];
        v24 = v216;
        v216 = v26;
      }

      else if ([v22 isEqualToString:v218])
      {
        v27 = [v21 eventDate];
        v24 = v215;
        v215 = v27;
      }

      else
      {
        if (![v22 isEqualToString:v213])
        {
          goto LABEL_20;
        }

        v28 = [v21 eventDate];
        v24 = v214;
        v214 = v28;
      }

LABEL_20:
    }

    v13 = [obj countByEnumeratingWithState:&v225 objects:v234 count:16];
  }

  while (v13);

  v29 = v14;
  LODWORD(v13) = v14 != 0;
  v30 = v15;
  if (!v15)
  {
    v6 = v210;
    v31 = v216;
    v10 = MAAsset_ptr;
    v11 = MAAsset_ptr;
    goto LABEL_29;
  }

  v6 = v210;
  v10 = MAAsset_ptr;
  v11 = MAAsset_ptr;
  if (!v14)
  {
    goto LABEL_26;
  }

  if ([v15 compare:v14] == -1)
  {
    [v14 timeIntervalSinceDate:v15];
    v191 = v190;
    v192 = [NSNumber numberWithDouble:?];
    v193 = [v192 stringValue];
    [v212 setObject:v193 forKeyedSubscript:@"totalIAPConnectionTime"];

    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v194 = [NSNumber numberWithDouble:v191];
      *buf = 138412290;
      v230 = v194;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Total iAP connection time: %@", buf, 0xCu);
    }

    LODWORD(v13) = 1;
    v29 = v14;
    v30 = v15;
    v31 = v216;
  }

  else
  {
    LODWORD(v13) = 1;
LABEL_26:
    v31 = v216;
LABEL_29:
    [WeakRetained _sendAnalyticsErrorWithNSDate:v30 endDate:v29 errorCategory:@"Total iAP connection time"];
  }

  v205 = v29;
  v206 = v30;
  v217 = v31;
  if (v31 && v13 && [v31 compare:v29] == -1)
  {
    [v29 timeIntervalSinceDate:v31];
    v179 = v178;
    v180 = [NSNumber numberWithDouble:?];
    v181 = [v180 stringValue];
    [v212 setObject:v181 forKeyedSubscript:@"totalIAPAuthTime"];

    v182 = CarGeneralLogging();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
    {
      v183 = [NSNumber numberWithDouble:v179];
      *buf = 138412290;
      v230 = v183;
      _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "Total iAP authentication time: %@", buf, 0xCu);
    }
  }

  else
  {
    [WeakRetained _sendAnalyticsErrorWithNSDate:v31 endDate:v29 errorCategory:@"Total iAP authentication time"];
  }

  v204 = [v11[59] setWithObject:&off_1000E81E8];
  v32 = [v6 allEventsOfTypes:?];
  v33 = v10[55];
  v219 = objc_opt_new();
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v221 objects:v233 count:16];
  if (!v35)
  {
    v37 = 0;
    goto LABEL_50;
  }

  v36 = v35;
  v37 = 0;
  v38 = *v222;
  v39 = CARAirPlayConnectionTimeInfo;
  v40 = CARAirPlayCarSentStatistics;
  while (2)
  {
    v41 = 0;
    while (2)
    {
      if (*v222 != v38)
      {
        objc_enumerationMutation(v34);
      }

      v42 = *(*(&v221 + 1) + 8 * v41);
      v43 = [v42 eventName];
      if ([v43 isEqualToString:v39])
      {
        v44 = [v42 payload];

        if (v44)
        {
          v45 = [v42 payload];
          [v219 addEntriesFromDictionary:v45];
          goto LABEL_45;
        }
      }

      else
      {
      }

      v46 = [v42 eventName];
      v47 = [v46 isEqualToString:v40];

      if (v47)
      {
        [v42 eventDate];
        v37 = v45 = v37;
LABEL_45:
      }

      if (v36 != ++v41)
      {
        continue;
      }

      break;
    }

    v36 = [v34 countByEnumeratingWithState:&v221 objects:v233 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v48 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"AP_SIGNPOST_ALTERNATESCREEN_["];
  v49 = WeakRetained;
  v50 = [WeakRetained airplayScreenDisplayingTimes];
  v51 = [v50 allKeys];
  v52 = [v51 filteredArrayUsingPredicate:v48];

  v53 = [v219 count];
  v54 = [WeakRetained airplayScreenDisplayingTimes];
  v55 = [v54 count];

  if (v53)
  {
    v56 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_AUTHORIZE_START"];
    [v56 doubleValue];
    v58 = v57;

    v59 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_AUTHORIZE_COMPLETE"];
    [v59 doubleValue];
    v61 = v60;

    if (v58 <= 0.0 || v61 <= 0.0 || v61 <= v58)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"AirPlay authentication time" endDate:v58 errorCategory:v61];
    }

    else
    {
      v62 = [NSNumber numberWithDouble:v61 - v58];
      v63 = [v62 stringValue];
      [v212 setObject:v63 forKeyedSubscript:@"mfiAuthTime"];

      v64 = CarGeneralLogging();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [v212 objectForKeyedSubscript:@"mfiAuthTime"];
        *buf = 138412290;
        v230 = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Total AirPlay authentication time: %@", buf, 0xCu);
      }
    }

    v66 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_ENDPOINTSELECTED"];
    [v66 doubleValue];
    v68 = v67;

    v69 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
    [v69 doubleValue];
    v71 = v70;

    if (v68 <= 0.0 || v71 <= 0.0 || v71 <= v68)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"AirPlay/CarPlay activation logic time" endDate:v68 errorCategory:v71];
    }

    else
    {
      v72 = [NSNumber numberWithDouble:v71 - v68];
      v73 = [v72 stringValue];
      [v212 setObject:v73 forKeyedSubscript:@"activationLogicTime"];

      v74 = CarGeneralLogging();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v75 = [v212 objectForKeyedSubscript:@"activationLogicTime"];
        *buf = 138412290;
        v230 = v75;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "AirPlay/CarPlay activation logic time: %@", buf, 0xCu);
      }
    }

    v76 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_PAIRING_START"];
    [v76 doubleValue];
    v78 = v77;

    v79 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_PAIRING_COMPLETE"];
    [v79 doubleValue];
    v81 = v80;

    if (v78 <= 0.0 || v81 <= 0.0 || v81 <= v78)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"AirPlay pairing time" endDate:v78 errorCategory:v81];
    }

    else
    {
      v82 = [NSNumber numberWithDouble:v81 - v78];
      v83 = [v82 stringValue];
      [v212 setObject:v83 forKeyedSubscript:@"airPlayPairingTime"];

      v84 = CarGeneralLogging();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [v212 objectForKeyedSubscript:@"airPlayPairingTime"];
        *buf = 138412290;
        v230 = v85;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "AirPlay pairing time: %@", buf, 0xCu);
      }
    }

    v86 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_INITIALCONNECTION_START"];
    [v86 doubleValue];
    v88 = v87;

    v89 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_INITIALCONNECTION_COMPLETE"];
    [v89 doubleValue];
    v91 = v90;

    if (v88 <= 0.0 || v91 <= 0.0 || v91 <= v88)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Control stream connection time" endDate:v88 errorCategory:v91];
    }

    else
    {
      v92 = [NSNumber numberWithDouble:v91 - v88];
      v93 = [v92 stringValue];
      [v212 setObject:v93 forKeyedSubscript:@"controlStreamConnectionTime"];

      v94 = CarGeneralLogging();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v95 = [v212 objectForKeyedSubscript:@"controlStreamConnectionTime"];
        *buf = 138412290;
        v230 = v95;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Control stream connection time: %@", buf, 0xCu);
      }
    }

    v96 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SETUPMESSAGE_START"];
    [v96 doubleValue];
    v98 = v97;

    v99 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SETUPMESSAGE_COMPLETE"];
    [v99 doubleValue];
    v101 = v100;

    if (v98 <= 0.0 || v101 <= 0.0 || v101 <= v98)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Setup message exchange time" endDate:v98 errorCategory:v101];
    }

    else
    {
      v102 = [NSNumber numberWithDouble:v101 - v98];
      v103 = [v102 stringValue];
      [v212 setObject:v103 forKeyedSubscript:@"setupMessageTime"];

      v104 = CarGeneralLogging();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = [v212 objectForKeyedSubscript:@"setupMessageTime"];
        *buf = 138412290;
        v230 = v105;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Setup message exchange time: %@", buf, 0xCu);
      }
    }

    v106 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_INFOMESSAGE_START"];
    [v106 doubleValue];
    v108 = v107;

    v109 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_INFOMESSAGE_COMPLETE"];
    [v109 doubleValue];
    v111 = v110;

    if (v108 <= 0.0 || v111 <= 0.0 || v111 <= v108)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Info message exchange time" endDate:v108 errorCategory:v111];
    }

    else
    {
      v112 = [NSNumber numberWithDouble:v111 - v108];
      v113 = [v112 stringValue];
      [v212 setObject:v113 forKeyedSubscript:@"infoMessageTime"];

      v114 = CarGeneralLogging();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v115 = [v212 objectForKeyedSubscript:@"infoMessageTime"];
        *buf = 138412290;
        v230 = v115;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Info message exchange time: %@", buf, 0xCu);
      }
    }

    v116 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_STARTEDBROWSE_USB"];
    [v116 doubleValue];
    v118 = v117;

    v119 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_ENDPOINTADDED_USB"];
    [v119 doubleValue];
    v121 = v120;

    if (v118 <= 0.0 || v121 <= 0.0 || v121 <= v118)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Bonjour browse time" endDate:v118 errorCategory:v121];
    }

    else
    {
      v122 = [NSNumber numberWithDouble:v121 - v118];
      v123 = [v122 stringValue];
      [v212 setObject:v123 forKeyedSubscript:@"bonjourBrowseTime"];

      v124 = CarGeneralLogging();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = [v212 objectForKeyedSubscript:@"bonjourBrowseTime"];
        *buf = 138412290;
        v230 = v125;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Bonjour browse time: %@", buf, 0xCu);
      }
    }

    v126 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDSERVER"];
    [v126 doubleValue];
    v128 = v127;

    v129 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_DNS_RESOLVED"];
    [v129 doubleValue];
    v131 = v130;

    if (v128 <= 0.0 || v131 <= 0.0 || v131 <= v128)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"Bonjour to DNS time" endDate:v128 errorCategory:v131];
    }

    else
    {
      v132 = [NSNumber numberWithDouble:v131 - v128];
      v133 = [v132 stringValue];
      [v212 setObject:v133 forKeyedSubscript:@"bonjourToDNSTime"];

      v134 = CarGeneralLogging();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        v135 = [v212 objectForKeyedSubscript:@"bonjourToDNSTime"];
        *buf = 138412290;
        v230 = v135;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Bonjour to DNS time: %@", buf, 0xCu);
      }
    }

    v136 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_STARTSESSION_START"];
    [v136 doubleValue];
    v138 = v137;

    v139 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_STARTSESSION_COMPLETE"];
    [v139 doubleValue];
    v141 = v140;

    if (v138 <= 0.0 || v141 <= 0.0 || v141 <= v138)
    {
      [WeakRetained _sendAnalyticsErrorWithDouble:@"iAP StartSession time" endDate:v138 errorCategory:v141];
    }

    else
    {
      v142 = [NSNumber numberWithDouble:v141 - v138];
      v143 = [v142 stringValue];
      [v212 setObject:v143 forKeyedSubscript:@"iAPStartSessionTime"];

      v144 = CarGeneralLogging();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        v145 = [v212 objectForKeyedSubscript:@"iAPStartSessionTime"];
        *buf = 138412290;
        v230 = v145;
        _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "iAP StartSession total time: %@", buf, 0xCu);
      }
    }

    v146 = v214;
    v147 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_DNS_RESOLVED"];
    [v147 doubleValue];
    v148 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v202 = v146;
    v203 = v48;
    v201 = v148;
    if (v146 && v148 && [v146 compare:v148] == -1)
    {
      [v148 timeIntervalSinceDate:v146];
      v196 = v195;
      v197 = [NSNumber numberWithDouble:?];
      v198 = [v197 stringValue];
      [v212 setObject:v198 forKeyedSubscript:@"iAPStartSessiontoDNSTime"];

      v199 = CarGeneralLogging();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
      {
        v200 = [NSNumber numberWithDouble:v196];
        *buf = 138412290;
        v230 = v200;
        _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "iAP Start Session to DNS time: %@", buf, 0xCu);
      }

      v49 = WeakRetained;
      if (v55)
      {
LABEL_118:
        v149 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
        [v149 doubleValue];
        v151 = v150;

        v152 = [v49 airplayScreenDisplayingTimes];
        v153 = [v152 objectForKeyedSubscript:@"AP_SIGNPOST_MAINSCREEN_DISPLAYING"];
        [v153 doubleValue];
        v155 = v154;

        if (v151 <= 0.0 || v155 <= 0.0 || v155 <= v151)
        {
          [v49 _sendAnalyticsErrorWithDouble:@"Main Screen Display/UI Bring up time" endDate:v151 errorCategory:v155];
        }

        else
        {
          v156 = [NSNumber numberWithDouble:v155 - v151];
          v157 = [v156 stringValue];
          [v212 setObject:v157 forKeyedSubscript:@"mainScreenUIBringUpTime"];

          v158 = CarGeneralLogging();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            v159 = [v212 objectForKeyedSubscript:@"mainScreenUIBringUpTime"];
            *buf = 138412290;
            v230 = v159;
            _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Main Screen Display/UI Bring up time: %@", buf, 0xCu);
          }
        }

        if ([v52 count])
        {
          v160 = 1;
          do
          {
            v161 = [v219 objectForKeyedSubscript:@"AP_SIGNPOST_CAR_SENT_STATISTICS"];
            [v161 doubleValue];
            v163 = v162;

            v164 = v49;
            v165 = [v49 airplayScreenDisplayingTimes];
            v166 = v52;
            v167 = [v52 objectAtIndex:v160 - 1];
            v168 = [v165 objectForKeyedSubscript:v167];
            [v168 doubleValue];
            v170 = v169;

            if (v163 <= 0.0 || (v170 > 0.0 ? (v171 = v170 <= v163) : (v171 = 1), v171))
            {
              v49 = v164;
              [v164 _sendAnalyticsErrorWithDouble:@"Alternate Screen Display/UI Bring up time" endDate:v163 errorCategory:v170];
            }

            else
            {
              v172 = [NSNumber numberWithDouble:v170 - v163];
              v173 = [v172 stringValue];
              v174 = [NSString stringWithFormat:@"altScreen%luUIBringUpTime", v160];
              [v212 setObject:v173 forKeyedSubscript:v174];

              v175 = CarGeneralLogging();
              if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
              {
                v176 = [NSString stringWithFormat:@"altScreen%luUIBringUpTime", v160];
                v177 = [v212 objectForKeyedSubscript:v176];
                *buf = 134218242;
                v230 = v160;
                v231 = 2112;
                v232 = v177;
                _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "Alternate Screen Display/UI %lu Bring up time: %@", buf, 0x16u);
              }

              v49 = v164;
            }

            ++v160;
            v52 = v166;
          }

          while (v160 <= [v166 count]);
        }
      }
    }

    else
    {
      [WeakRetained _sendAnalyticsErrorWithNSDate:v146 endDate:v148 errorCategory:@"iAP Start Session to DNS time"];
      if (v55)
      {
        goto LABEL_118;
      }
    }

    v48 = v203;
  }

  if (v215 && v37 && [v215 compare:v37] == -1)
  {
    [v37 timeIntervalSinceDate:v215];
    v185 = v184;
    v186 = [NSNumber numberWithDouble:?];
    v187 = [v186 stringValue];
    [v212 setObject:v187 forKeyedSubscript:@"endToEndTime"];

    v188 = CarGeneralLogging();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
    {
      v189 = [NSNumber numberWithDouble:v185];
      *buf = 138412290;
      v230 = v189;
      _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "Total End to End Connection time: %@", buf, 0xCu);
    }

    v49 = WeakRetained;
  }

  else
  {
    [v49 _sendAnalyticsErrorWithNSDate:v215 endDate:v37 errorCategory:@"End to End Connection time"];
  }

  [v49 sendEvent:9 withDictionary:v212];
  [v49 sendPreviousSessionData:v209];
}