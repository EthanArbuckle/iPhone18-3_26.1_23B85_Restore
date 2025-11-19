void sub_100000EC0(uint64_t a1)
{
  v2 = [*(a1 + 32) receiveMessageWithError:*(*(a1 + 48) + 8) + 24];
  if (*(*(*(a1 + 48) + 8) + 24) != 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got unexpected incoming message: %@", &v3, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 40));
}

id sub_100000F9C(uint64_t a1, _DWORD *a2)
{
  v3 = lockdown_receive_message();
  if (a2)
  {
    *a2 = v3;
  }

  return 0;
}

void sub_1000027A0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000286C(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return;
  }

  v2 = a1 + 32;
  v3 = recv([*(a1 + 32) localSocket], *(*(*(a1 + 48) + 8) + 24), 0x4000uLL, 0);
  v4 = v3;
  if (v3 <= 0)
  {
    if (v3)
    {
      if (*__error() == 35)
      {
        return;
      }

      if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100009B84(v2);
      }
    }

    else if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009C28(v2);
    }

    goto LABEL_30;
  }

  v5 = send([*(a1 + 32) bridgeSocket], *(*(*(a1 + 48) + 8) + 24), v3, 0);
  if (!v5)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009AEC(v2);
    }

    goto LABEL_30;
  }

  v6 = v5;
  if (v5 < 0)
  {
    if (*__error() == 35)
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
      goto LABEL_23;
    }

    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009A48(v2);
    }

LABEL_30:
    dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
    return;
  }

  v4 -= v5;
  if (!v4)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) serviceName];
      v8 = [*(a1 + 32) servicePort];
      v9 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v6);
      v14 = 138413058;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) LOCAL->IDS: %ld bytes sent.%@", &v14, 0x2Au);
    }

    return;
  }

  v10 = *(*(*(a1 + 48) + 8) + 24) + v5;
LABEL_23:
  *(*(*(a1 + 64) + 8) + 24) = v10;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) serviceName];
    v12 = [*(a1 + 32) servicePort];
    v13 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v6);
    v14 = 138413058;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 2048;
    v19 = v6;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) LOCAL->IDS: %ld bytes sent. Write buffer full.%@", &v14, 0x2Au);
  }

  dispatch_suspend(*(*(*(a1 + 56) + 8) + 40));
  dispatch_resume(*(*(*(a1 + 72) + 8) + 40));
}

__CFString *sub_100002C04(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = [NSData dataWithBytes:a2 length:a3];
    v4 = [NSString stringWithFormat:@" DATA=%@", v3];
  }

  else
  {
    v4 = &stru_100014968;
  }

  return v4;
}

void sub_100002C90(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4 = [*(a1 + 32) localCompletion];
  v4[2]();

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 24);
  if (v6)
  {
    free(v6);
    v5 = *(*(a1 + 56) + 8);
  }

  *(v5 + 24) = 0;
}

void sub_100002D18(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = send([*(a1 + 32) bridgeSocket], *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), 0);
  if (!v3)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009E20(v2);
    }

    goto LABEL_20;
  }

  v4 = v3;
  if (v3 < 0 && *__error() != 35)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009CC0(v2);
    }

LABEL_20:
    dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
    return;
  }

  v5 = *(*(a1 + 40) + 8);
  if (v4 == *(v5 + 24))
  {
    *(v5 + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) serviceName];
      v10 = [*(a1 + 32) servicePort];
      v11 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v4);
      v12 = 138413058;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v4;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) LOCAL->IDS: %ld bytes sent from write src.%@", &v12, 0x2Au);
    }

    dispatch_suspend(*(*(*(a1 + 72) + 8) + 40));
    dispatch_resume(*(*(*(a1 + 56) + 8) + 40));
  }

  else if (v4 < 1)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009D64(v2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += v4;
    *(*(*(a1 + 40) + 8) + 24) -= v4;
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) serviceName];
      v7 = [*(a1 + 32) servicePort];
      v8 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v4);
      v12 = 138413058;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2048;
      v17 = v4;
      v18 = 2112;
      v19 = v8;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) LOCAL->IDS: %ld bytes sent from write src unfinished.%@", &v12, 0x2Au);
    }
  }
}

void sub_100003070(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return;
  }

  v2 = a1 + 32;
  v3 = recv([*(a1 + 32) bridgeSocket], *(*(*(a1 + 48) + 8) + 24), 0x4000uLL, 0);
  v4 = v3;
  if (v3 <= 0)
  {
    if (v3)
    {
      if (*__error() == 35)
      {
        return;
      }

      if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100009FF4(v2);
      }
    }

    else if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A098(v2);
    }

    goto LABEL_30;
  }

  v5 = send([*(a1 + 32) localSocket], *(*(*(a1 + 48) + 8) + 24), v3, 0);
  if (!v5)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009F5C(v2);
    }

    goto LABEL_30;
  }

  v6 = v5;
  if (v5 < 0)
  {
    if (*__error() == 35)
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
      goto LABEL_23;
    }

    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100009EB8(v2);
    }

LABEL_30:
    dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
    return;
  }

  v4 -= v5;
  if (!v4)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) serviceName];
      v8 = [*(a1 + 32) servicePort];
      v9 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v6);
      v14 = 138413058;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) IDS->LOCAL: %ld bytes sent.%@", &v14, 0x2Au);
    }

    return;
  }

  v10 = *(*(*(a1 + 48) + 8) + 24) + v5;
LABEL_23:
  *(*(*(a1 + 64) + 8) + 24) = v10;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) serviceName];
    v12 = [*(a1 + 32) servicePort];
    v13 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v6);
    v14 = 138413058;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 2048;
    v19 = v6;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) IDS->LOCAL: %ld bytes sent. Write buffer full.%@", &v14, 0x2Au);
  }

  dispatch_suspend(*(*(*(a1 + 56) + 8) + 40));
  dispatch_resume(*(*(*(a1 + 72) + 8) + 40));
}

void sub_100003408(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4 = [*(a1 + 32) bridgeCompletion];
  v4[2]();

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 24);
  if (v6)
  {
    free(v6);
    v5 = *(*(a1 + 56) + 8);
  }

  *(v5 + 24) = 0;
}

void sub_100003490(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = send([*(a1 + 32) localSocket], *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), 0);
  if (!v3)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A290(v2);
    }

    goto LABEL_20;
  }

  v4 = v3;
  if (v3 < 0 && *__error() != 35)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A130(v2);
    }

LABEL_20:
    dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
    return;
  }

  v5 = *(*(a1 + 40) + 8);
  if (v4 == *(v5 + 24))
  {
    *(v5 + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) serviceName];
      v10 = [*(a1 + 32) servicePort];
      v11 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v4);
      v12 = 138413058;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v4;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) IDS->LOCAL: %ld bytes sent from write src.%@", &v12, 0x2Au);
    }

    dispatch_suspend(*(*(*(a1 + 72) + 8) + 40));
    dispatch_resume(*(*(*(a1 + 56) + 8) + 40));
  }

  else if (v4 < 1)
  {
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A1D4(v2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += v4;
    *(*(*(a1 + 40) + 8) + 24) -= v4;
    if (*(a1 + 80) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) serviceName];
      v7 = [*(a1 + 32) servicePort];
      v8 = sub_100002C04(*(a1 + 81), *(*(*(a1 + 48) + 8) + 24), v4);
      v12 = 138413058;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2048;
      v17 = v4;
      v18 = 2112;
      v19 = v8;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@(%lu) IDS->LOCAL: %ld bytes sent from write src unfinished.%@", &v12, 0x2Au);
    }
  }
}

id sub_1000038E8()
{
  v2 = *v0;

  return [v2 servicePort];
}

void sub_100004230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000042CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = NRPairedDeviceRegistryDeviceDidPairNotification;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notification: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handlePairingNotification:v3];
    v6 = [v5 service];
    v7 = [v6 devices];
    [v5 checkNearbyDevices:v7];
  }
}

void sub_1000043DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A328();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handlePairingNotification:v3];
    v6 = [v5 service];
    v7 = [v6 devices];
    [v5 checkNearbyDevices:v7];
  }
}

void sub_10000447C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A3B0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained service];
    v7 = [v6 devices];
    [v5 checkNearbyDevices:v7];
  }
}

void sub_100004510(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A438();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained service];
    v7 = [v6 devices];
    [v5 checkNearbyDevices:v7];
  }
}

void sub_1000050F0(id a1)
{
  qword_100019C88 = objc_alloc_init(CPXIDSRelayCompanion);

  _objc_release_x1();
}

uint64_t sub_1000053B0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A748(a1);
  }

  [*(a1 + 40) stopTimerForUDID:*(a1 + 32)];
  return (*(*(a1 + 48) + 16))();
}

id sub_10000554C(uint64_t a1)
{
  xpc_transaction_begin();
  v2 = *(a1 + 49);
  if (*(a1 + 48))
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      v3 = [*(a1 + 32) wifiPortConnections];
      v4 = [v3 count];

      if (!v4)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "WiFi preferred client connection: Enabling preferWifi for data forwarding to gizmo.", buf, 2u);
        }

        v5 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
        v6 = [v5 service];
        [v6 setPreferInfraWiFi:1];
LABEL_12:
      }
    }
  }

  else if ((*(a1 + 49) & 1) == 0)
  {
    v7 = [*(a1 + 32) highPriorityPortConnections];
    v8 = [v7 count];

    if (!v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Bluetooth preferred client connection: Enabling BT Classic", buf, 2u);
      }

      v5 = [*(a1 + 32) service];
      v15 = IDSLinkPreferenceOptionPacketsPerSecondKey;
      v16 = &off_1000152F0;
      v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v5 setLinkPreferences:v6];
      goto LABEL_12;
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 49);
  v11 = *(a1 + 48);
  v13.receiver = *(a1 + 32);
  v13.super_class = CPXIDSRelayCompanion;
  return objc_msgSendSuper2(&v13, "acquirePort:isLowPriority:preferWifi:", v9, v10, v11);
}

void sub_1000057AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v13.receiver = *(a1 + 32);
  v13.super_class = CPXIDSRelayCompanion;
  if (!objc_msgSendSuper2(&v13, "releasePort:isLowPriority:preferWifi:", v2, v3, v4) && *(a1 + 40) != 62078)
  {
    [*(a1 + 32) teardownListeningSocket:?];
  }

  v5 = *(a1 + 48);
  if (*(a1 + 49) == 1)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      v6 = [*(a1 + 32) wifiPortConnections];
      v7 = [v6 count];

      if (!v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Wifi preferred client connection: Disabling preferWifi for data forwarding to gizmo.", v12, 2u);
        }

        v8 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
        v9 = [v8 service];
        [v9 setPreferInfraWiFi:0];
LABEL_15:
      }
    }
  }

  else if ((*(a1 + 48) & 1) == 0)
  {
    v10 = [*(a1 + 32) highPriorityPortConnections];
    v11 = [v10 count];

    if (!v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Bluetooth preferred client connection: Disabling BT Classic, Entering LE", v12, 2u);
      }

      v8 = [*(a1 + 32) service];
      v14 = IDSLinkPreferenceOptionPacketsPerSecondKey;
      v15 = &off_100015308;
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v8 setLinkPreferences:v9];
      goto LABEL_15;
    }
  }

  xpc_transaction_end();
}

void sub_10000615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  objc_sync_exit(v30);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_1000061A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 service];
  LOBYTE(v3) = *(a1 + 67);
  [v2 acceptConnection:v4 socket:*(*(*(a1 + 56) + 8) + 24) targetPort:*(a1 + 64) serviceName:*(a1 + 40) requiredHostIP:*(a1 + 48) isLowPriority:*(a1 + 66) preferWifi:v3];
}

void sub_100006224(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 64);
    v4 = *(a1 + 66);
    v11 = 138412802;
    *v12 = v2;
    *&v12[8] = 1024;
    *&v12[10] = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stop accepting %@ connections from companion port %d to gizmo port %lu", &v11, 0x1Cu);
  }

  if (close(*(*(*(a1 + 56) + 8) + 24)) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    v11 = 67109378;
    *v12 = v5;
    *&v12[4] = 2080;
    *&v12[6] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "localSocket conn close error: %d (%s)", &v11, 0x12u);
  }

  v8 = [*(a1 + 40) connectionSources];
  objc_sync_enter(v8);
  v9 = [*(a1 + 40) connectionSources];
  [v9 removeObjectForKey:*(a1 + 48)];

  objc_sync_exit(v8);
  v10 = [*(a1 + 40) connectionSourceGroup];
  dispatch_group_leave(v10);
}

uint64_t sub_100006C7C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error sending message!", &v5, 2u);
  }

  v2 = [*(a1 + 32) connectionMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  [*(a1 + 32) releasePort:*(a1 + 56) isLowPriority:*(a1 + 68) preferWifi:*(a1 + 69)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ending connection for service: %@", &v5, 0xCu);
  }

  return close(*(a1 + 64));
}

void sub_100007218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000727C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 && *(*(*(a1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22[0] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create IDSDeviceConnection: %@", buf, 0xCu);
    }

    if (close(*(*(*(a1 + 64) + 8) + 24)) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 67109378;
      LODWORD(v22[0]) = v6;
      WORD2(v22[0]) = 2080;
      *(v22 + 6) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "localSocket IDS close error: %d (%s)", buf, 0x12u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412290;
      v22[0] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ending connection for service: %@", buf, 0xCu);
    }

    [*(a1 + 40) releasePort:*(*(*(a1 + 72) + 8) + 24) isLowPriority:*(*(*(a1 + 88) + 8) + 24) preferWifi:*(a1 + 96)];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A870(a1);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007540;
    v17[3] = &unk_1000146C8;
    v10 = *(a1 + 72);
    v11 = *(a1 + 56);
    v17[4] = *(a1 + 40);
    v17[5] = v10;
    v12 = *(a1 + 80);
    v18 = v11;
    v19 = v12;
    v20 = *(a1 + 96);
    v13 = objc_retainBlock(v17);
    v14 = [CPXConnection alloc];
    v15 = *(*(*(a1 + 80) + 8) + 40);
    v16 = [(CPXConnection *)v14 initWithIDSDeviceConnection:*(*(*(a1 + 56) + 8) + 40) idsMessageContext:*(a1 + 48) localSocket:*(*(*(a1 + 64) + 8) + 24) bridgeSocket:a2 localCompletion:v13 bridgeCompletion:&stru_1000146E8 serviceName:v15 servicePort:*(*(*(a1 + 72) + 8) + 24)];
    [*(a1 + 40) handleGenericCPXConnection:v16];
  }
}

id sub_100007540(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A930(a1);
  }

  [*(*(*(a1 + 48) + 8) + 40) close];
  if (close(*(*(*(a1 + 56) + 8) + 24)) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *__error();
    v3 = __error();
    v4 = strerror(*v3);
    v7 = 67109378;
    LODWORD(v8[0]) = v2;
    WORD2(v8[0]) = 2080;
    *(v8 + 6) = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "localSocket completion close error: %d (%s)", &v7, 0x12u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v7 = 138412290;
    v8[0] = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ending connection for service: %@", &v7, 0xCu);
  }

  return [*(a1 + 32) releasePort:*(*(*(a1 + 40) + 8) + 24) isLowPriority:*(*(*(a1 + 72) + 8) + 24) preferWifi:*(a1 + 80)];
}

void sub_1000076BC(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A9B8();
  }
}

BOOL sub_100007ADC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = lockdown_send_message();
  if (a3)
  {
    *a3 = v4;
  }

  return v4 == 0;
}

void sub_100007B14(uint64_t a1, uint64_t a2)
{
  v4 = @"Error";
  v5 = a2;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = lockdown_send_message();

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A9FC(v3);
    }
  }
}

id sub_100007BD0(int a1, char *a2)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0;
  v27 = 0u;
  v15 = 128;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  if (!a2)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v6 = "out_IPv6 can't be NULL";
LABEL_10:
    v7 = 2;
    goto LABEL_11;
  }

  if (a1 < 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v6 = "Invalid socket";
    goto LABEL_10;
  }

  if (getpeername(a1, &v26, &v15))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 67109378;
      LODWORD(v17[0]) = v3;
      WORD2(v17[0]) = 2080;
      *(v17 + 6) = v5;
      v6 = "getpeername failed: %d (%s)";
      v7 = 18;
LABEL_11:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v26.sa_family == 30)
  {
    if (inet_ntop(30, &v26.sa_data[6], v18, 0x80u))
    {
      v10 = 1;
      goto LABEL_22;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315138;
    v17[0] = v14;
    v6 = "Can't convert to ipv6 string: %s";
LABEL_29:
    v7 = 12;
    goto LABEL_11;
  }

  if (v26.sa_family != 2)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 67109120;
    LODWORD(v17[0]) = v26.sa_family;
    v6 = "Unknown socket family %d";
    v7 = 8;
    goto LABEL_11;
  }

  if (!inet_ntop(2, &v26.sa_data[2], v18, 0x80u))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = __error();
    v12 = strerror(*v11);
    *buf = 136315138;
    v17[0] = v12;
    v6 = "Can't convert to ipv4 string: %s";
    goto LABEL_29;
  }

  v10 = 0;
LABEL_22:
  *a2 = v10;
  v8 = [NSString stringWithUTF8String:v18];
LABEL_13:

  return v8;
}

uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AA7C();
  }

  signal(15, 1);
  v0 = dispatch_get_global_queue(0, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);

  if (v1)
  {
    dispatch_source_set_event_handler(v1, &stru_100014730);
    dispatch_resume(v1);
  }

  lockdown_checkin_xpc();
  CFRunLoopRun();

  return 0;
}

void sub_100007F80(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got SIGTERM, performing shutdown.", buf, 2u);
  }

  v1 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
  [v1 teardownAllListeningSockets];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got SIGTERM, exiting now.", v2, 2u);
  }

  exit(0);
}

void sub_100008038(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  context = objc_autoreleasePoolPush();
  v89 = objc_opt_new();
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *handler = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "companion_proxy is incompatible with this device", handler, 2u);
    }

    sub_100007B14(a2, @"UnsupportedDevice");
    v83 = 0;
    goto LABEL_28;
  }

  v83 = CFDictionaryGetValue(a3, kLockdownCheckinClientNameKey);
  v5 = sub_100000F9C(a2, v91 + 6);
  v85 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v91 + 6);
      *handler = 138412546;
      *&handler[4] = v83;
      *&handler[12] = 1024;
      *&handler[14] = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive initial message from client %@: 0x08%x", handler, 0x12u);
    }

    sub_100007B14(a2, @"NoInitialMessage");
LABEL_28:
    obj = 0;
    v84 = 0;
    v85 = 0;
LABEL_29:
    v86 = 0;
LABEL_30:
    lockdown_disconnect();
    goto LABEL_31;
  }

  v86 = [v5 objectForKeyedSubscript:@"Command"];
  if (!v86)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *handler = 138412546;
      *&handler[4] = v83;
      *&handler[12] = 2112;
      *&handler[14] = v85;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive command in message from %@: %@", handler, 0x16u);
    }

    sub_100007B14(a2, @"NoCommandInMessage");
    obj = 0;
    v84 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AB18(v86);
  }

  v84 = [NRPairedDeviceRegistry sharedInstance:a2];
  obj = [v84 getDevices];
  if ([v86 isEqualToString:@"GetDeviceRegistry"])
  {
    v100 = 0u;
    v101 = 0u;
    *v98 = 0u;
    v99 = 0u;
    obj = obj;
    v6 = [obj countByEnumeratingWithState:v98 objects:handler count:16];
    if (v6)
    {
      v7 = *v99;
      v8 = NRDevicePropertyUDID;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v99 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*&v98[8] + 8 * i);
          v11 = [v10 valueForProperty:v8];
          if (v11)
          {
            [v89 addObject:v11];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got nil UDID from device %@", buf, 0xCu);
          }
        }

        v6 = [obj countByEnumeratingWithState:v98 objects:handler count:16];
      }

      while (v6);
    }

    if ([v89 count])
    {
      *v103 = @"PairedDevicesArray";
      v108 = v89;
      v12 = [NSDictionary dictionaryWithObjects:&v108 forKeys:v103 count:1];
      if (!sub_100007ADC(v81, v12, v91 + 6) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v91 + 6);
        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send devices message (%@): 0x%08x", buf, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Companion has no paired devices", buf, 2u);
      }

      sub_100007B14(v81, @"NoPairedWatches");
      v12 = 0;
    }

    goto LABEL_30;
  }

  if (![v86 isEqualToString:@"GetValueFromRegistry"])
  {
    if ([v86 isEqualToString:@"StartListeningForDevices"])
    {
      v25 = [[CPXService alloc] initWithLockdownContext:a2];
      socket = lockdown_get_socket();
      if ((socket & 0x80000000) == 0)
      {
        [(CPXService *)v25 startService];
        v27 = dispatch_get_global_queue(0, 0);
        v28 = dispatch_source_create(&_dispatch_source_type_read, socket, 0, v27);

        *handler = _NSConcreteStackBlock;
        *&handler[8] = 3221225472;
        *&handler[16] = sub_100000EC0;
        v115 = &unk_1000147C0;
        v29 = v25;
        v117 = v28;
        v118 = &v90;
        v116 = v29;
        v30 = v28;
        dispatch_source_set_event_handler(v30, handler);
        *v98 = _NSConcreteStackBlock;
        *&v98[8] = 3221225472;
        *&v99 = sub_100001038;
        *(&v99 + 1) = &unk_1000147E8;
        *&v100 = v29;
        v31 = v29;
        dispatch_source_set_cancel_handler(v30, v98);
        dispatch_resume(v30);

        goto LABEL_31;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *handler = 138412290;
        *&handler[4] = v83;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get socket for connection from client %@", handler, 0xCu);
      }

      sub_100007B14(a2, @"NoSocket");
    }

    else if ([v86 isEqualToString:@"StartForwardingServicePort"])
    {
      LOBYTE(v108) = 0;
      v32 = lockdown_get_socket();
      v33 = sub_100007BD0(v32, &v108);
      if (v33)
      {
        v34 = [v85 objectForKeyedSubscript:@"PreferWifi"];
        v35 = _NSIsNSNumber();

        if (v35)
        {
          v36 = [v85 objectForKeyedSubscript:@"PreferWifi"];
          v37 = [v36 BOOLValue];
        }

        else
        {
          v37 = 0;
        }

        v56 = [v85 objectForKeyedSubscript:@"GizmoRemotePortNumber"];
        if (v56)
        {
          v57 = [v85 objectForKeyedSubscript:@"IsServiceLowPriority"];
          v58 = [v57 BOOLValue];

          v59 = [v85 objectForKeyedSubscript:@"ForwardedServiceName"];
          v60 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
          v61 = [v56 unsignedShortValue];
          v62 = [v60 setupListeningSocket:v61 serviceName:v59 requiredHostIP:v33 ipV6:v108 isLowPriority:v58 preferWifi:v37];

          if (v62)
          {
            *v98 = @"Command";
            *&v98[8] = @"CompanionProxyServicePort";
            *handler = @"CompanionServiceSetup";
            *&handler[8] = v62;
            v63 = [NSDictionary dictionaryWithObjects:handler forKeys:v98 count:2];
            v64 = sub_100007ADC(v81, v63, v91 + 6);

            if (!v64 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(v91 + 6);
              *buf = 67109120;
              *&buf[4] = v65;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send companion service setup message: 0x%08x", buf, 8u);
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *handler = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to setup forwarding port", handler, 2u);
            }

            sub_100007B14(v81, @"ServiceProxySetup");
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *handler = 138412546;
            *&handler[4] = v83;
            *&handler[12] = 2112;
            *&handler[14] = v85;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive port number in message from %@: %@", handler, 0x16u);
          }

          sub_100007B14(v81, @"MalformedCommand");
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *handler = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get required host IP", handler, 2u);
        }

        sub_100007B14(a2, @"ServiceProxySetup");
      }
    }

    else if ([v86 isEqualToString:@"StopForwardingServicePort"])
    {
      v39 = [v85 objectForKeyedSubscript:@"GizmoRemotePortNumber"];
      if (v39)
      {
        v40 = +[CPXIDSRelayCompanion defaultCPXIDSRelayCompanion];
        [v40 teardownListeningSocket:{objc_msgSend(v39, "unsignedIntegerValue")}];

        v41 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v39 intValue];
          *handler = 67109120;
          *&handler[4] = v42;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stopped forwarding to gizmo port %d", handler, 8u);
        }

        *v98 = @"Command";
        *handler = @"ComandSuccess";
        v43 = [NSDictionary dictionaryWithObjects:handler forKeys:v98 count:1];
        v44 = sub_100007ADC(v81, v43, v91 + 6);

        if (!v44 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v91 + 6);
          *buf = 67109120;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send companion service setup message: 0x%08x", buf, 8u);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *handler = 138412546;
          *&handler[4] = v83;
          *&handler[12] = 2112;
          *&handler[14] = v85;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive port number in message from %@: %@", handler, 0x16u);
        }

        sub_100007B14(a2, @"MalformedCommand");
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *handler = 138412546;
        *&handler[4] = v83;
        *&handler[12] = 2112;
        *&handler[14] = v86;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unsupported command from %@: %@", handler, 0x16u);
      }

      sub_100007B14(a2, @"UnsupportedCommand");
    }

    goto LABEL_30;
  }

  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_100009424;
  v112 = sub_100009434;
  v113 = 0;
  v15 = [v85 objectForKeyedSubscript:@"GetValueGizmoUDIDKey"];
  if (!v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *handler = 138412546;
      *&handler[4] = v83;
      *&handler[12] = 2112;
      *&handler[14] = v85;
      v38 = "Failed to receive gizmoUDID in message from %@: %@.";
LABEL_78:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v38, handler, 0x16u);
    }

LABEL_79:
    sub_100007B14(a2, @"MalformedCommand");
    v54 = 0;
    v46 = 0;
    v47 = 0;
    v16 = 0;
    goto LABEL_80;
  }

  v16 = [v85 objectForKeyedSubscript:@"GetValueKeyKey"];
  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *handler = 138412546;
      *&handler[4] = v83;
      *&handler[12] = 2112;
      *&handler[14] = v85;
      v38 = "Failed to receive GetValueKey in message from %@: %@";
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v106 = 0u;
  v107 = 0u;
  memset(buf, 0, sizeof(buf));
  v17 = obj;
  v18 = [v17 countByEnumeratingWithState:buf objects:handler count:16];
  if (v18)
  {
    v19 = **&buf[16];
    v20 = NRDevicePropertyUDID;
LABEL_40:
    v21 = 0;
    while (1)
    {
      if (**&buf[16] != v19)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*&buf[8] + 8 * v21);
      v23 = [v22 valueForProperty:v20];
      v24 = [v15 isEqualToString:v23];

      if (v24)
      {
        break;
      }

      if (v18 == ++v21)
      {
        v18 = [v17 countByEnumeratingWithState:buf objects:handler count:16];
        if (v18)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }

    v46 = v22;

    if (!v46)
    {
      goto LABEL_72;
    }

    v47 = sub_10000943C(v16);
    if (v47)
    {
      if (qword_100019C98)
      {
        v48 = +[NSDate date];
        v49 = [qword_100019C98 objectForKeyedSubscript:@"CPXAboutInfoDateKey"];
        [v48 timeIntervalSinceDate:v49];
        v51 = v50 < 10.0;

        if (v51)
        {
          v52 = [qword_100019C98 objectForKeyedSubscript:v47];
          v53 = v109[5];
          v109[5] = v52;

          goto LABEL_120;
        }
      }

      v66 = dispatch_get_global_queue(0, 0);
      v67 = [[NSSManager alloc] initWithQueue:v66];
      v68 = dispatch_semaphore_create(0);
      *v103 = 0;
      *&v103[8] = v103;
      *&v103[16] = 0x2020000000;
      v104 = 0;
      *v98 = _NSConcreteStackBlock;
      *&v98[8] = 3221225472;
      *&v99 = sub_1000094A8;
      *(&v99 + 1) = &unk_100014798;
      *(&v101 + 1) = &v108;
      v69 = v47;
      *&v100 = v69;
      v87 = v16;
      *(&v100 + 1) = v87;
      v102 = v103;
      v70 = v68;
      *&v101 = v70;
      [v67 getAboutInfo:v98];
      v71 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v70, v71))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Timeout waiting for reply from getAboutInfo", v97, 2u);
        }

        v72 = @"TimeoutReply";
      }

      else
      {
        v72 = *(*&v103[8] + 24);
        if (!v72)
        {
          v55 = 0;
          v76 = 1;
LABEL_119:

          _Block_object_dispose(v103, 8);
          if ((v76 & 1) == 0)
          {
            v54 = 0;
            v47 = v69;
            v16 = v87;
            goto LABEL_81;
          }

          goto LABEL_120;
        }
      }

      sub_100007B14(v81, v72);
      v76 = 0;
      v55 = 2;
      goto LABEL_119;
    }

    v73 = sub_100009680(v16);
    v74 = [v46 valueForProperty:v73];
    v75 = v109[5];
    v109[5] = v74;

    if (v109[5])
    {
LABEL_120:
      v77 = v109[5];
      v96 = v16;
      *v97 = v77;
      v54 = [NSDictionary dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v94 = @"RetrievedValueDictionary";
      v95 = v54;
      v78 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v79 = sub_100007ADC(v81, v78, v91 + 6);

      if (!v79 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v80 = *(v91 + 6);
        *v103 = 138412546;
        *&v103[4] = v54;
        *&v103[12] = 1024;
        *&v103[14] = v80;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send retrieved value message (%@): 0x%08x", v103, 0x12u);
      }

      v55 = 0;
      goto LABEL_81;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v98 = 138412290;
      *&v98[4] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unsupported key on a Watch: %@", v98, 0xCu);
    }

    sub_100007B14(v81, @"UnsupportedWatchKey");
    v54 = 0;
  }

  else
  {
LABEL_46:

LABEL_72:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v98 = 138412290;
      *&v98[4] = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No gizmo matching UDID: %@", v98, 0xCu);
    }

    sub_100007B14(v81, @"NoMatchingWatch");
    v54 = 0;
    v46 = 0;
  }

  v47 = 0;
LABEL_80:
  v55 = 2;
LABEL_81:

  _Block_object_dispose(&v108, 8);
  if ((v55 | 2) == 2)
  {
    goto LABEL_30;
  }

LABEL_31:
  _Block_object_dispose(&v90, 8);

  objc_autoreleasePoolPop(context);
}

void sub_100009394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009424(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000943C(void *a1)
{
  v1 = qword_100019CA8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10000AB98();
  }

  v3 = [qword_100019CA0 valueForKey:v2];

  return v3;
}

void sub_1000094A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error on reply from getAboutInfo: %@", &v17, 0xCu);
    }

    v7 = *(*(a1 + 64) + 8);
    v8 = @"ErrorReply";
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:*(a1 + 32)];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v12 = [v5 mutableCopy];
      v13 = qword_100019C98;
      qword_100019C98 = v12;

      v14 = +[NSDate date];
      [qword_100019C98 setObject:v14 forKeyedSubscript:@"CPXAboutInfoDateKey"];

      goto LABEL_8;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NSS value missing for key: %@, %@", &v17, 0x16u);
    }

    v7 = *(*(a1 + 64) + 8);
    v8 = @"UnexpectedReply";
  }

  *(v7 + 24) = v8;
LABEL_8:
  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_100009680(void *a1)
{
  v1 = qword_100019CB8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10000ABAC();
  }

  v3 = [qword_100019CB0 valueForKey:v2];

  return v3;
}

void sub_1000096EC(id a1)
{
  v3[0] = @"BatteryIsCharging";
  v3[1] = @"BatteryCurrentCapacity";
  v4[0] = kNSSAboutBatteryIsChargingKey;
  v4[1] = kNSSAboutBatteryCurrentCapacityKey;
  v3[2] = @"AmountDataAvailable";
  v4[2] = kNSSUsageAvailableStorageKey;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100019CA0;
  qword_100019CA0 = v1;
}

void sub_1000097AC(id a1)
{
  v3[0] = @"HardwareModel";
  v3[1] = @"DeviceName";
  v4[0] = NRDevicePropertyHWModelString;
  v4[1] = NRDevicePropertyName;
  v3[2] = @"DeviceClass";
  v3[3] = @"BluetoothAddress";
  v4[2] = NRDevicePropertyClass;
  v4[3] = NRDevicePropertyBluetoothMACAddress;
  v3[4] = @"RegionInfo";
  v3[5] = @"UniqueDeviceID";
  v4[4] = NRDevicePropertyRegionInfo;
  v4[5] = NRDevicePropertyUDID;
  v3[6] = @"ModelNumber";
  v3[7] = @"BuildVersion";
  v4[6] = NRDevicePropertyModelNumber;
  v4[7] = NRDevicePropertySystemBuildVersion;
  v3[8] = @"ProductType";
  v3[9] = @"ProductName";
  v4[8] = NRDevicePropertyProductType;
  v4[9] = NRDevicePropertySystemName;
  v3[10] = @"SerialNumber";
  v3[11] = @"WiFiAddress";
  v4[10] = NRDevicePropertySerialNumber;
  v4[11] = NRDevicePropertyWIFIMACAddress;
  v3[12] = @"ProductVersion";
  v3[13] = @"DeviceColor";
  v4[12] = NRDevicePropertySystemVersion;
  v4[13] = NRDevicePropertyColor;
  v3[14] = @"DeviceEnclosureColor";
  v3[15] = @"TotalDataCapacity";
  v4[14] = NRDevicePropertyEnclosureColor;
  v4[15] = NRDevicePropertyTotalStorage;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
  v2 = qword_100019CB0;
  qword_100019CB0 = v1;
}

void sub_1000099A8(void *a1, uint8_t *buf, void *a3)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Enabled service socket logging for %@", buf, 0xCu);
}

void sub_100009A48(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100009AEC(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100009B84(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100009C28(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100009CC0(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100009D64(id *a1)
{
  v2 = [*a1 serviceName];
  [*a1 servicePort];
  v3 = __error();
  strerror(*v3);
  sub_1000038BC();
  sub_1000038B0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100009E20(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100009EB8(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100009F5C(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100009FF4(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000A098(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000A130(uint64_t a1)
{
  [sub_100003900(a1 __stack_chk_guard)];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  v2 = __error();
  strerror(*v2);
  sub_100003878();
  sub_1000038B0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000A1D4(id *a1)
{
  v2 = [*a1 serviceName];
  [*a1 servicePort];
  v3 = __error();
  strerror(*v3);
  sub_1000038BC();
  sub_1000038B0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_10000A290(uint64_t a1)
{
  [sub_10000390C(a1) serviceName];
  objc_claimAutoreleasedReturnValue();
  sub_1000038E8();
  sub_10000389C();
  sub_1000038B0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000A548(void *a1)
{
  v6 = [a1 udid];
  sub_1000038B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000A5E8(void *a1)
{
  v6 = [a1 udid];
  sub_1000038B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000A748(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_1000038B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000A870(void *a1)
{
  v6 = *(*(a1[8] + 8) + 24);
  v7 = *(*(a1[9] + 8) + 24);
  v8 = a1[4];
  v9 = *(*(a1[10] + 8) + 40);
  sub_1000038B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10000A930(uint64_t a1)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  sub_1000038B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000A9FC(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Could not send error response to host: 0x%08x", v1, 8u);
}

void sub_10000AA7C()
{
  v0 = 136315394;
  v1 = "Oct 10 2025";
  v2 = 2080;
  v3 = "23:33:22";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "companion_proxy built at %s %s started", &v0, 0x16u);
}

void sub_10000AB18(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received command: %@", &v1, 0xCu);
}