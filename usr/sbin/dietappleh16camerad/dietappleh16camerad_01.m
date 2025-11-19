uint64_t sub_100014AE0(uint64_t a1, xpc_connection_t *a2, void *a3)
{
  if (a3 == &_xpc_error_termination_imminent)
  {
    v6 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001C4C4(a2);
    }
  }

  else if (a3 == &_xpc_error_connection_interrupted)
  {
    v7 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001C444(a2);
    }
  }

  else
  {
    v5 = off_10039DBB0;
    if (a3 == &_xpc_error_connection_invalid)
    {
      if (off_10039DBB0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*a2);
        v10[0] = 67174657;
        v10[1] = pid;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Client disconnecting (pid %{private}d)\n", v10, 8u);
      }
    }

    else
    {
      if (off_10039DBB0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10001C3C4(a2);
      }
    }
  }

  return (*(*a1 + 48))(a1, a2);
}

void sub_100014E0C(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    v7 = *(a1 + 40);

    sub_100014AE0(v4, v7, object);
  }

  else if (type == &_xpc_type_dictionary)
  {
    v8 = *(a1 + 40);
    v9 = *(*v4 + 64);

    v9(v4, v8, object);
  }

  else
  {
    v6 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001C544(a1);
    }
  }
}

void sub_100014F30(uint64_t a1, void *a2)
{
  if (a2 == &_xpc_error_termination_imminent)
  {
    v3 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001C644();
    }
  }

  else if (a2 == &_xpc_error_connection_invalid)
  {
    v4 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001C608();
    }
  }

  else if (a2 == &_xpc_error_connection_interrupted)
  {
    v2 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001C5CC();
    }
  }
}

void sub_10001506C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = *(a1 + 16);
    if (v5 == a1 + 8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8 = v5 + 8;
        v5 = *(v5 + 8);
        v7 = *(v8 + 8);
        if (!*(v7 + 8))
        {
          v6 = v7;
        }
      }

      while (v5 != a1 + 8);
    }

    v9 = strlen(*(a1 + 912));
    if (!strncmp(v4, *(a1 + 912), v9))
    {
      if (!v6)
      {
        operator new();
      }
    }

    else
    {
      v10 = strlen(*(a1 + 920));
      if (!strncmp(v4, *(a1 + 920), v10))
      {
        if (v6)
        {
          v12 = *(*a1 + 48);

          v12(a1, v6);
        }
      }

      else
      {
        v11 = off_10039DBB0;
        if (off_10039DBB0 == &_os_log_default)
        {
          v11 = os_log_create("com.apple.isp", "daemon");
          off_10039DBB0 = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10001C680();
        }
      }
    }
  }
}

uint64_t sub_100015238(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    v2 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "collectDiagState";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s - Collecting ISP Sysdiagnose State\n", &v4, 0xCu);
      v2 = off_10039DBB0;
    }

    if (v2 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "collectDiagState";
      v6 = 2080;
      v7 = "4.109";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s - Assistant Version %s\n", &v4, 0x16u);
    }
  }

  return 0;
}

uint64_t sub_1000153A0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 3758097101;
  }

  if (sub_1000115E0(v2))
  {
    return 0;
  }

  if (sub_100009C60(*(a1 + 72)))
  {
    do
    {
      usleep(0x186A0u);
      v4 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v4 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Camera powered on...waiting\n", v8, 2u);
      }
    }

    while ((sub_100009C60(*(a1 + 72)) & 1) != 0);
  }

  v5 = *(a1 + 928);
  *(a1 + 48) = os_transaction_create();
  v3 = sub_10000E590(*(a1 + 72));
  os_release(*(a1 + 48));
  if (v3)
  {
    v6 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001C6F4();
    }
  }

  return v3;
}

uint64_t sub_100015514(uint64_t a1)
{
  kdebug_trace();
  if (sub_100008BB8((a1 + 64), sub_100013240, 0) || (v5 = *(a1 + 64)) == 0)
  {
    v2 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v2 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v2;
    }

    v3 = 3758097088;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001C7E4();
    }
  }

  else
  {
    if (CFArrayGetCount(*v5))
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 64), v6);
        *(a1 + 72) = ValueAtIndex;
        if (!sub_100012D60(ValueAtIndex, sub_100013248, a1))
        {
          break;
        }

        *(a1 + 72) = 0;
        ++v6;
      }

      while (v6 < CFArrayGetCount(**(a1 + 64)));
    }

    if (*(a1 + 72))
    {
      v3 = sub_1000153A0(a1);
      if (!v3)
      {
        *(a1 + 96) = os_state_add_handler();
        goto LABEL_7;
      }
    }

    else
    {
      v8 = off_10039DBB0;
      if (off_10039DBB0 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "daemon");
        off_10039DBB0 = v8;
      }

      v3 = 3758097088;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001C770();
      }
    }
  }

  (*(*a1 + 24))(a1);
LABEL_7:
  kdebug_trace();
  return v3;
}

uint64_t sub_100015774(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_1000090EC(v2);
    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    sub_10000B7AC(v3);
    a1[9] = 0;
  }

  if (a1[12])
  {
    os_state_remove_handler();
    a1[12] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100008D80(v4);
  }

  return 0;
}

uint64_t sub_1000157EC(uint64_t a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  *(a1 + 944) = v2;
  if (v2)
  {
    dispatch_source_set_event_handler(v2, &stru_1000319E8);
    dispatch_resume(*(a1 + 944));
    mach_service = xpc_connection_create_mach_service(*(a1 + 888), *(a1 + 40), 1uLL);
    *(a1 + 32) = mach_service;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000159F8;
    handler[3] = &unk_100031A08;
    handler[4] = a1;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(*(a1 + 32));
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100015AE0;
    v7[3] = &unk_100031A28;
    v7[4] = a1;
    xpc_set_event_stream_handler("com.apple.iokit.matching", v6, v7);
    dispatch_main();
  }

  v3 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v3 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001C858();
  }

  return 3758097086;
}

void sub_100015970(id a1)
{
  v1 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received SIGTERM - exiting\n", v2, 2u);
  }

  exit(0);
}

void sub_1000159F8(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v5 = *(*v3 + 32);

    v5(v3, object);
  }

  else if (xpc_get_type(object) == &_xpc_type_error)
  {
    v4 = off_10039DBB0;
    if (off_10039DBB0 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10039DBB0 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001C894();
    }
  }
}

void sub_100015AE0(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = *(*v3 + 72);

    v5(v3, object);
  }

  else
  {
    type = xpc_get_type(object);
    if (type == &_xpc_type_error)
    {

      sub_100014F30(type, object);
    }
  }
}

uint64_t sub_100015B98(uint64_t a1)
{
  *a1 = off_100031A58;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 952) = 0;
  *(a1 + 48) = 0;
  *(a1 + 964) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  bzero((a1 + 104), 0x310uLL);
  *(a1 + 888) = "com.apple.dietappleh16camerad";
  *(a1 + 896) = "com.apple.dietappleh16camerad.writer";
  *(a1 + 904) = "com.apple.dietappleh16camerad.assistant_active";
  *(a1 + 912) = "com.apple.dietappleh16camerad.launch";
  *(a1 + 920) = "com.apple.dietappleh16camerad.destroy";
  *(a1 + 928) = "com.apple.dietappleh16camerad.firmware_loading";
  *(a1 + 936) = "com.apple.dietappleh16camerad.photometerManagerSyncQueue";
  *(a1 + 944) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = dispatch_queue_create("com.apple.dietappleh16camerad", 0);
  *(a1 + 56) = dispatch_queue_create(*(a1 + 896), 0);
  sub_100008DF0(@"EnableHawking", @"com.apple.coremedia", 1);
  v2 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Creating H16ISP services assistant\n", v4, 2u);
  }

  return a1;
}

uint64_t sub_100015D24(uint64_t a1)
{
  *a1 = off_100031A58;
  v2 = off_10039DBB0;
  if (off_10039DBB0 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "daemon");
    off_10039DBB0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Destroying H16ISP services assistant\n", v6, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_connection_cancel(v3);
    xpc_release(*(a1 + 32));
  }

  v4 = *(a1 + 944);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 944));
  }

  (*(*a1 + 24))(a1);
  dispatch_release(*(a1 + 40));
  dispatch_sync(*(a1 + 56), &stru_100031AC8);
  dispatch_release(*(a1 + 56));
  sub_100015E9C((a1 + 8));
  return a1;
}

void sub_100015E64(uint64_t a1)
{
  sub_100015D24(a1);

  operator delete();
}

void *sub_100015E9C(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_100015F00(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

double sub_100015FBC(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a3 - a2) / a6 - (a4 - a2) / (a6 + a7);
  v9 = (a4 - a3) / a7;
  *&v8 = v9 + v8;
  v10 = (a5 - a4) / a8 + v9 - (a5 - a3) / (a7 + a8);
  *&v8 = *&v8 * a7;
  v11 = v10 * a7;
  v12 = *&v8;
  v13 = v11;
  *a1 = a3;
  a1[1] = v12;
  v14 = a4 * 3.0 + a3 * -3.0 + v12 * -2.0 - v13;
  result = a4 * -2.0 + a3 * 2.0 + v12 + v13;
  a1[2] = v14;
  a1[3] = result;
  return result;
}

void sub_1000160C0(double *a1, double *a2, double *a3, double a4, double a5)
{
  v10[0] = sub_100016060(a1, a3, a5);
  v10[1] = sub_100016060(a1 + 4, a3, a5);
  v10[2] = sub_100016060(a1 + 8, a3, a5);
  v10[3] = sub_100016060(a1 + 12, a3, a5);
  sub_100016060(v10, a2, a4);
}

void sub_100016190(unsigned __int16 *a1, long double *a2, unsigned int a3)
{
  v3 = a1[7];
  if (a1[7])
  {
    v6 = 0;
    v7 = vcvtd_n_f64_u32(*a1 + 1, 1uLL) + a1[8];
    v8 = a1[6];
    v9 = vcvtd_n_f64_u32(a1[1] + 1, 1uLL) + a1[9];
    v10 = 0.0;
    do
    {
      if (a1[6])
      {
        v11 = a1[4];
        v12 = (a1[5] + v6 * a1[3]) - v9;
        v13 = v12 * v12;
        v14 = a1[6];
        do
        {
          v15 = sqrt((v11 - v7) * (v11 - v7) + v13);
          if (v15 > v10)
          {
            v10 = v15;
          }

          v11 += a1[2];
          --v14;
        }

        while (v14);
      }

      ++v6;
    }

    while (v6 != v3);
    v16 = pow(a3 / 100.0, 0.25);
    v17 = acos(v16);
    v18 = 0;
    v19 = v10 / tan(v17);
    do
    {
      if (v8)
      {
        v20 = a1[4];
        v21 = a1[2];
        v22 = (a1[5] + v18 * a1[3]) - v9;
        v23 = v22 * v22;
        v24 = v8;
        v25 = a2;
        do
        {
          v26 = atan(sqrt((v20 - v7) * (v20 - v7) + v23) / v19);
          v27 = cos(v26);
          *v25++ = pow(v27, 4.0);
          v20 += v21;
          --v24;
        }

        while (v24);
      }

      ++v18;
      a2 += v8;
    }

    while (v18 != v3);
  }
}

uint64_t sub_100016324(uint64_t result, uint64_t a2, unsigned __int16 *a3, _WORD *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, float a12)
{
  v15 = a3[7];
  if (!a3[7])
  {
    return result;
  }

  v16 = 0;
  v17 = a3[3];
  v18 = a3[2];
  v19 = a3[5];
  v20 = a4 + 28;
  v21 = a4 + 170;
  v22 = a3[4];
  v23 = a3[6];
  do
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = 0;
    v25 = (v19 + v16 * v17);
    do
    {
      v26 = (v22 + v24 * v18);
      v27 = a4[20];
      if (a4[20])
      {
        v28 = 0;
        LOWORD(a12) = *a4;
        a12 = LODWORD(a12);
        while (v26 >= (*&v20[2 * v28] * a12))
        {
          if (v27 == ++v28)
          {
            v29 = a4[20];
            goto LABEL_12;
          }
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

LABEL_12:
      v30 = (v29 - 1);
      v31 = a4[21];
      LOWORD(a12) = a4[1];
      v32 = LODWORD(a12);
      if (a4[21])
      {
        v33 = 0;
        while (v25 >= (*&v21[2 * v33] * v32))
        {
          if (v31 == ++v33)
          {
            LOWORD(v33) = a4[21];
            break;
          }
        }

        if (!v29)
        {
          v30 = 0.0;
        }

        if (v33)
        {
          v34 = (v33 - 1);
          goto LABEL_24;
        }
      }

      else if (!v29)
      {
        v30 = 0.0;
      }

      v34 = 0.0;
LABEL_24:
      if (v30 >= (v27 - 2))
      {
        v30 = (v27 - 2);
      }

      v35 = (v31 - 2);
      v36 = vcvtmd_u64_f64(v30);
      if (v34 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      v38 = vcvtmd_u64_f64(v37);
      v39 = v36 + v38 * v27;
      LOBYTE(v37) = *(a2 + v39);
      LOBYTE(v12) = *(a2 + v39 + 1);
      v12 = (*&v12 + -128.0) * 0.125 * 0.0078125 + 1.0;
      v40 = v36 + (v38 + 1) * v27;
      LOBYTE(v13) = *(a2 + v40);
      LOBYTE(v14) = *(a2 + v40 + 1);
      v41 = *&v14;
      v42 = (v41 + -128.0) * 0.125 * 0.0078125 + 1.0;
      LOWORD(v41) = *a4;
      *&v41 = LODWORD(v41);
      v43 = roundf(*&v20[2 * v36] * *&v41);
      v44 = roundf(*&v21[2 * v38] * v32);
      v14 = roundf(*&v20[2 * v36 + 2] * *&v41);
      a12 = roundf(*&v21[2 * v38 + 2] * v32);
      v45 = v26 - v43;
      v46 = v14 - v26;
      v47 = ((*&v13 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v42;
      v13 = v45 + v46;
      v48 = fmax(fmin(((a12 - v25) * ((((*&v37 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v12) / (v45 + v46)) + (v25 - v44) * (v47 / (v45 + v46))) / (v25 - v44 + a12 - v25), 2.0), 0.0);
      HIWORD(a12) = 0;
      *(result + 2 * (v24 + v23 * v16)) = llround(fmin(v48 * 4096.0, 65535.0));
      ++v24;
      v23 = a3[6];
    }

    while (v24 < v23);
    v15 = a3[7];
LABEL_31:
    ++v16;
  }

  while (v16 < v15);
  return result;
}

uint64_t sub_1000165B0(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7, int a8)
{
  v8 = *(a5 + 14);
  if (*(a5 + 14))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a5 + 12);
    do
    {
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = i + v10 * v11;
          v14 = 1 << a6;
          if (a8 != 2)
          {
            LOWORD(v14) = llround(fmin(*(a3 + 8 * v13) / *(a4 + 8 * v13) * (1 << a6), a7));
          }

          *(result + 2 * v13) = v14;
          if (v14 > v9)
          {
            v9 = v14;
          }

          v11 = *(a5 + 12);
        }

        v8 = *(a5 + 14);
      }

      ++v10;
    }

    while (v10 < v8);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100016648(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 12);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = v11 + v7 * v10;
          LOWORD(a6) = *(result + 2 * v12);
          HIWORD(v13) = 17792;
          LOWORD(v13) = *(a3 + 2 * v12);
          a6 = fmin(((LODWORD(a6) * 4096.0) / v13), 65535.0);
          v14 = llround(a6);
          *(result + 2 * v12) = v14;
          if (v9 <= v14)
          {
            v9 = v14;
          }

          v10 = *(a4 + 12);
          ++v11;
        }

        while (v11 < v10);
        v6 = *(a4 + 14);
      }

      ++v8;
      ++v7;
    }

    while (v8 < v6);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1000166E8(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a4 + 12);
    do
    {
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = v10 + v6 * v9;
          v12 = llround(fmin(1.0 / *(a3 + 8 * v11) * (1 << a5), 65535.0));
          *(result + 2 * v11) = v12;
          if (v7 <= v12)
          {
            v7 = v12;
          }

          v9 = *(a4 + 12);
          ++v10;
        }

        while (v10 < v9);
        v5 = *(a4 + 14);
      }

      ++v8;
      ++v6;
    }

    while (v8 < v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100016780(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 14);
  if (*(a3 + 14))
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 12);
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          *(result + 2 * (v8 + v5 * v7)) = llround(fmin((*(a2 + 8 * (v8 + v5 * v7)) + 1.0) * (1 << a4), 65535.0));
          v7 = *(a3 + 12);
          ++v8;
        }

        while (v8 < v7);
        v4 = *(a3 + 14);
      }

      ++v6;
      ++v5;
    }

    while (v6 < v4);
  }

  return result;
}

uint64_t sub_1000167FC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, unsigned __int16 *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, float a16, uint64_t a17)
{
  if (a3)
  {
    v21 = 0;
    do
    {
      v60[v21] = *(a5 + 4 * v21);
      ++v21;
    }

    while (a3 > v21);
  }

  if (a4)
  {
    v22 = 0;
    do
    {
      v60[v22 + 71] = *(a6 + 4 * v22);
      ++v22;
    }

    while (a4 > v22);
  }

  v23 = a3 - 1;
  v54 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v24 = a4 - 1;
  v64[0] = a1 + 18;
  v64[1] = a1 + 36;
  v64[2] = a1 + 54;
  v64[3] = a1 + 72;
  v53[0] = *(a1 + 14) >> 1;
  v25 = *(a1 + 16) >> 1;
  v53[1] = *(a1 + 16) >> 1;
  v57 = a3;
  v58 = a4;
  v55 = 0.98 / (a3 - 1);
  v56 = 0.98 / (a4 - 1);
  v59 = 0x406F400000000000;
  v61[0] = v53[0];
  v61[1] = v25;
  v62 = *(a1 + 20);
  v63 = *(a1 + 28);
  v52 = HIDWORD(v63);
  sub_100016324(a17, a2, v61, v53, v63, v55, (a4 - 1), a12, a13, a14, a15, a16);
  if (HIWORD(v52))
  {
    v27 = 0;
    v28 = (a8 + (a4 & 0xFFFE));
    v29 = a17;
    do
    {
      if (v52)
      {
        v30 = 0;
        do
        {
          if (v30 < *a7 - 1 || v30 >= a7[v23] || v27 > *(v28 - 1) && v27 < *v28)
          {
            *(v29 + 2 * v30) = 4096;
          }

          ++v30;
        }

        while (v52 != v30);
      }

      ++v27;
      v29 += 2 * v52;
    }

    while (v27 != HIWORD(v52));
  }

  v31 = *a8;
  if (v31 > 1)
  {
    v32 = (v31 - 2);
    v33 = (a17 + 2 * v52 * v32);
    v34 = (a17 + 2 * (v52 + v52 * v32));
    do
    {
      v35 = v52;
      v36 = v34;
      v37 = v33;
      if (v52)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
      }

      v33 -= v52;
      v34 -= v52;
    }

    while (v32-- > 0);
  }

  v40 = a8[v24];
  if (v40 < a4)
  {
    v41 = (a17 + 2 * v52 * a8[v24]);
    v42 = 2 * v52;
    v43 = (a17 + 2 * (v40 - 1) * v52);
    do
    {
      v44 = v52;
      v45 = v43;
      v46 = v41;
      if (v52)
      {
        do
        {
          v47 = *v45++;
          *v46++ = v47;
          --v44;
        }

        while (v44);
      }

      ++v40;
      v41 = (v41 + v42);
      v43 = (v43 + v42);
    }

    while (v40 != a4);
  }

  v48 = 0;
  v49 = a1 + 92;
  do
  {
    v50 = v64[v48];
    v62 = *(v50 + 2);
    v63 = *(v50 + 10);
    result = sub_100016648(v49 + 2 * *(v50 + 6), v50, a17, v61, v63, v26);
    ++v48;
  }

  while (v48 != 4);
  return result;
}

uint64_t sub_100016B14(uint64_t result)
{
  v1 = 0;
  v9[0] = result + 18;
  v9[1] = result + 36;
  v9[2] = result + 54;
  v9[3] = result + 72;
  do
  {
    v2 = v9[v1];
    v3 = (((*(v2 + 14) * *(v2 + 16)) << 32) - 0x100000000) >> 31;
    if (v3 >= 1)
    {
      v4 = *(v2 + 6);
      v5 = (result + 92 + 2 * v4);
      v6 = result + 90 + v3 + 2 * v4;
      do
      {
        v7 = *(v6 + 2);
        *(v6 + 2) = *v5;
        *v5++ = v7;
        v8 = v6 > v5;
        v6 -= 2;
      }

      while (v8);
    }

    ++v1;
  }

  while (v1 != 4);
  return result;
}

unint64_t sub_100016BE4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1[1] * *a1;
  v5 = a1 + 264;
  v6 = (v4 - 1);
  v7 = a2 + v6;
  v8 = &a1[v6 + 264];
  do
  {
    v9 = v5;
    v10 = v8;
    v11 = a2;
    v12 = v7;
    do
    {
      *(v11 + v2) = v10[v2];
      result = v11 + v2 + 1;
      *(v12 + v2) = v9[v2];
      --v12;
      ++v11;
      --v10;
      ++v9;
    }

    while (v12 + v2 >= result);
    ++v3;
    v2 += v4;
  }

  while (v3 != 4);
  return result;
}

uint64_t sub_100016C5C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != *(result + 86))
  {
    sub_10001C8D0();
  }

  v2 = *(result + 34);
  if (v2 != *(result + 88))
  {
    sub_10001C8FC();
  }

  v3 = v2 * v1;
  if (v3)
  {
    v4 = 0;
    v5 = (result + 92 + 2 * *(result + 78));
    v6 = (result + 92 + 2 * *(result + 24));
    do
    {
      v7 = (*v5 + *v6) >> 1;
      *v6++ = v7;
      *v5++ = v7;
      ++v4;
    }

    while (v3 > v4);
  }

  return result;
}

uint64_t sub_100016CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = 0;
  v9 = *(a3 + 14);
  v10 = *(a3 + 16);
  v86[0] = a3 + 18;
  v86[1] = a3 + 36;
  v86[2] = a3 + 54;
  v86[3] = a3 + 72;
  memset(v85, 0, 32);
  do
  {
    v85[v8] = a3 + 92 + 2 * *(v86[v8] + 6);
    ++v8;
  }

  while (v8 != 4);
  v11 = 0;
  v12 = vcvtd_n_f64_u32(v9, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = a5 + v12;
  v15 = a6 + v13;
  v84[0] = 0;
  v84[1] = v9;
  v84[2] = 0;
  v84[3] = v9;
  v81 = 0;
  v82 = v10;
  v83 = v10;
  v80[0] = 0;
  v80[1] = 0;
  v16 = 0.0;
  do
  {
    v17 = (v14 - v84[v11]);
    v18 = (v15 - *(&v81 + v11 * 4));
    v19 = sqrt(v17 * v17 + v18 * v18);
    *(v80 + v11 * 4) = v19;
    if (v16 < v19)
    {
      v16 = v19;
    }

    ++v11;
  }

  while (v11 != 4);
  bzero(v79, 0x808uLL);
  bzero(v78, 0x404uLL);
  v20 = log2f(v16 * 0.0039062);
  v21 = 0;
  v22 = vcvtps_s32_f32(v20);
  *(a1 + 12) = v22;
  v23 = 256 << v22;
  do
  {
    v24 = 0;
    v25 = v86[v21];
    v26 = v25[1];
    v27 = v25[2];
    result = v25[7];
    v29 = v25[8] - 2;
    v30 = v85[v21];
    do
    {
      v31 = 0;
      v32 = 0;
      v33 = v84[v24] - v14;
      v34 = *(v80 + v24);
      v35 = *(&v81 + v24) - v15;
      do
      {
        v36 = vcvts_n_f32_u32(v31, 8uLL);
        if (v36 >= v16)
        {
          v36 = v16;
        }

        v37 = (v14 + ((v36 * v33) / v34)) * 0.5;
        v38 = (v15 + ((v36 * v35) / v34)) * 0.5;
        v39 = (v37 / v26) & ~((v37 / v26) >> 31);
        v40 = (v38 / v27) & ~((v38 / v27) >> 31);
        if (v39 >= result - 2)
        {
          v39 = result - 2;
        }

        if (v40 >= v29)
        {
          v40 = v29;
        }

        v41 = (v30 + 2 * v40 * result + 2 * v39);
        v42 = vcvts_n_f32_u32(*v41, 0xCuLL);
        v43 = vcvts_n_f32_u32(v41[1], 0xCuLL);
        v44 = (v30 + 2 * (v40 + 1) * result + 2 * v39);
        v45 = v39 * v26;
        v46 = v37 - v45;
        v47 = (v26 + v45) - v37;
        v48 = v78[v32];
        v79[v32] = v79[v32] + ((((v40 + 1) * v27) - v38) * ((v47 * v42 + v46 * v43) / (v46 + v47)) + (v38 - (v40 * v27)) * ((v47 * vcvts_n_f32_u32(*v44, 0xCuLL) + v46 * vcvts_n_f32_u32(v44[1], 0xCuLL)) / (v46 + v47))) / (v38 - (v40 * v27) + ((v40 + 1) * v27) - v38);
        v78[v32++] = v48 + 1;
        v31 += v23;
      }

      while (v32 != 257);
      ++v24;
    }

    while (v24 != 4);
    ++v21;
  }

  while (v21 != 4);
  for (i = 0; i != 257; ++i)
  {
    v50 = v78[i];
    v51 = v79[i];
    if (v50 >= 1)
    {
      v51 = v51 / v50;
      v79[i] = v51;
    }

    *(a1 + 14 + 2 * i) = vcvtd_n_s64_f64(1.0 / v51, 0xCuLL);
  }

  if (a2)
  {
    v52 = 0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v86[v52];
      v56 = *(v55 + 14);
      v57 = v85[v52];
      LODWORD(v55) = *(v55 + 16);
      v54 = v54 + vcvts_n_f32_u32(*(v57 + 2 * (v56 >> 1)), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * ((v56 >> 1) + (v55 - 1) * v56)), 0xCuLL);
      v53 = v53 + vcvts_n_f32_u32(*(v57 + 2 * (v55 >> 1) * v56), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * (v56 + (v55 >> 1) * v56 - 1)), 0xCuLL);
      ++v52;
    }

    while (v52 != 4);
    v58 = 0;
    v59 = 0;
    v60 = v54 * 0.125;
    v61 = v53 * 0.125;
    v62 = v79;
    while (*v62 <= v61)
    {
      ++v62;
      --v59;
      v58 -= v23;
      if (v59 == -257)
      {
        v63 = v12;
        goto LABEL_34;
      }
    }

    v64 = ~v59;
    v63 = v12;
    if (v64 <= 0xFF)
    {
      v65 = vcvts_n_f32_u32(-v58, 8uLL);
      v66 = vcvts_n_f32_u32(-(v23 + v58), 8uLL);
      v67 = v79[v64];
      v68 = 0.5;
      if (vabdd_f64(*v62, v67) > 1.0e-10)
      {
        v68 = (v61 - v67) / (*v62 - v67);
      }

      v63 = v68 * v65 + (1.0 - v68) * v66;
    }

LABEL_34:
    v69 = 0;
    v70 = 0;
    v71 = v79;
    while (*v71 <= v60)
    {
      ++v71;
      --v70;
      v69 -= v23;
      if (v70 == -257)
      {
        v72 = v13;
        goto LABEL_42;
      }
    }

    v73 = ~v70;
    v72 = v13;
    if (v73 <= 0xFF)
    {
      v74 = vcvts_n_f32_u32(-v69, 8uLL);
      v75 = vcvts_n_f32_u32(-(v23 + v69), 8uLL);
      v76 = v79[v73];
      v77 = 0.5;
      if (vabdd_f64(*v71, v76) > 1.0e-10)
      {
        v77 = (v60 - v76) / (*v71 - v76);
      }

      v72 = v77 * v74 + (1.0 - v77) * v75;
    }

LABEL_42:
    *(a2 + 12) = llround(fmin(v63 / v12 * 4096.0 + 0.5, 65535.0));
    *(a2 + 14) = llround(fmin(v72 / v13 * 4096.0 + 0.5, 65535.0));
  }

  return result;
}

void sub_1000172A8()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v9 = 0;
  v10 = *(v1 + 14);
  v11 = *(v1 + 16);
  v89[0] = v1 + 18;
  v89[1] = v1 + 36;
  v89[2] = v1 + 54;
  v89[3] = v1 + 72;
  memset(v88, 0, 32);
  do
  {
    v88[v9] = v1 + 92 + 2 * *(v89[v9] + 6);
    ++v9;
  }

  while (v9 != 4);
  v12 = vcvtd_n_f64_u32(v11, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = v2 + v13;
  v15 = v3;
  bzero(v87, 0x808uLL);
  bzero(v86, 0x808uLL);
  v16 = (v10 >> 1);
  v17 = log2f(vcvts_n_f32_u32(v10 >> 1, 8uLL));
  v18 = 0;
  v19 = vcvtps_s32_f32(v17);
  *(v8 + 12) = v19;
  v20 = 256 << v19;
  do
  {
    v21 = 0;
    v22 = v89[v18];
    v23 = v22[1];
    v24 = v22[7];
    v25 = v24 - 2;
    v26 = v22[8];
    v27 = 2 * v24;
    do
    {
      v28 = 0;
      v29 = vcvts_n_f32_u32(v20 * v21, 8uLL);
      if (v29 >= v16)
      {
        v30 = v16;
      }

      else
      {
        v30 = v29;
      }

      v31 = v87[v21];
      v32 = 1;
      do
      {
        v33 = *(&unk_10001F3E8 + v28);
        v34 = v32;
        v35 = (v14 + (v33 * v30)) * 0.5;
        v36 = (v35 / v23);
        if (v36 <= 1)
        {
          v36 = 1;
        }

        if (v36 >= v25)
        {
          v36 = v25;
        }

        if (v26)
        {
          v37 = (v88[v18] + 2 * v36);
          v38 = 0.0;
          v39 = v26;
          v40 = 0.0;
          do
          {
            v38 = v38 + vcvts_n_f32_u32(*v37, 0xCuLL);
            v40 = v40 + vcvts_n_f32_u32(v37[v33], 0xCuLL);
            v37 = (v37 + v27);
            --v39;
          }

          while (v39);
        }

        else
        {
          v40 = 0.0;
          v38 = 0.0;
        }

        v32 = 0;
        v31 = ((((v36 + v33) * v23) - v35) * v38 + (v35 - (v36 * v23)) * v40) / (v35 - (v36 * v23) + ((v36 + v33) * v23) - v35) / v26 + v31;
        v28 = 1;
      }

      while ((v34 & 1) != 0);
      v87[v21++] = v31;
    }

    while (v21 != 257);
    ++v18;
  }

  while (v18 != 4);
  for (i = 0; i != 257; ++i)
  {
    v43 = v87[i] * 0.125;
    v87[i] = v43;
    if (v43 <= 0.0)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 1.0 / v43;
    }

    v86[i] = v44;
    *(v8 + 14 + 2 * i) = vcvtd_n_s64_f64(v44, 0xCuLL);
  }

  v42 = v12;
  v45 = v15 + v42;
  bzero(v85, 0x408uLL);
  v46 = v11;
  v47 = v11 - v45;
  if (v45 > v47)
  {
    v47 = v45;
  }

  v48 = log2f((v47 + v47) * 0.0078125);
  v49 = 0;
  v50 = 128 << vcvtps_u32_f32(v48);
  do
  {
    v51 = 0;
    v52 = v89[v49];
    v53 = v52[2];
    v54 = v52[8] - 2;
    v55 = v52[7];
    do
    {
      v56 = v45 + (vcvts_n_f32_u32(v50 * v51, 7uLL) - (v50 >> 1));
      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      if (v56 > v46)
      {
        v56 = v46;
      }

      v57 = v56 * 0.5;
      v58 = (v57 / v53) & ~((v57 / v53) >> 31);
      if (v58 >= v54)
      {
        v58 = v54;
      }

      if (v55)
      {
        v59 = 0;
        v60 = v88[v49];
        v61 = (v60 + 2 * v58 * v55);
        v62 = v58 + 1;
        v63 = (v60 + 2 * (v58 + 1) * v55);
        v64 = 0.0;
        v65 = v55;
        v66 = 0.0;
        do
        {
          v67 = v59 - v14;
          if (v67 < 0.0)
          {
            v67 = -v67;
          }

          if (v67 > v20)
          {
            v67 = v20;
          }

          v68 = v67 / (1 << v19);
          v69 = v68 & ~(v68 >> 31);
          if (v69 >= 127)
          {
            v69 = 127;
          }

          v70 = (v86[v69] * ((v69 + 1) - v68) + (v68 - v69) * v86[v69 + 1]) / (v68 - v69 + (v69 + 1) - v68);
          v71 = *v61++;
          v72 = vcvts_n_f32_u32(v71, 0xCuLL);
          v73 = *v63++;
          v66 = v66 + v72 * v70;
          v64 = v64 + vcvts_n_f32_u32(v73, 0xCuLL) * v70;
          v59 += 2 * v52[1];
          --v65;
        }

        while (v65);
      }

      else
      {
        v62 = v58 + 1;
        v66 = 0.0;
        v64 = 0.0;
      }

      v85[v51] = (((v62 * v53) - v57) * v66 + (v57 - (v58 * v53)) * v64) / (v57 - (v58 * v53) + (v62 * v53) - v57) / v55 + v85[v51];
      ++v51;
    }

    while (v51 != 129);
    ++v49;
  }

  while (v49 != 4);
  v74 = 0;
  v75 = 0.0;
  do
  {
    v76 = v85[v74] * 0.25;
    v85[v74] = v76;
    if (v76 <= 0.0)
    {
      v77 = 0.0;
    }

    else
    {
      v77 = 1.0 / v76;
    }

    if (v77 > v75)
    {
      v75 = v77;
    }

    ++v74;
  }

  while (v74 != 129);
  v78 = 0;
  v79 = 255.0 / v75;
  if (v75 <= 0.0)
  {
    v79 = 1.0;
  }

  do
  {
    v80 = v85[v78];
    if (v80 <= 0.0)
    {
      v81 = 1.0;
    }

    else
    {
      v81 = 1.0 / v80;
    }

    *(v7 + 14 + 2 * v78++) = (v79 * v81);
  }

  while (v78 != 129);
  v82 = 128.0;
  v83 = 14;
  v84 = 128.0 / v79;
  do
  {
    LOWORD(v82) = *(v8 + v83);
    v82 = v84 * *&v82;
    *(v8 + v83) = v82;
    v83 += 2;
  }

  while (v83 != 528);
  if (v5)
  {
    *(v5 + 12) = 4096;
  }

  else
  {
    if (off_10039DBB8 == &_os_log_default)
    {
      off_10039DBB8 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001C928();
    }
  }
}

uint64_t sub_10001787C()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v6 = v0;
  v7 = 0;
  v8 = *(v1 + 14);
  v9 = *(v1 + 16);
  v94[0] = v1 + 18;
  v94[1] = v1 + 36;
  v94[2] = v1 + 54;
  v94[3] = v1 + 72;
  memset(v93, 0, 32);
  do
  {
    v93[v7] = v1 + 92 + 2 * *(v94[v7] + 6);
    ++v7;
  }

  while (v7 != 4);
  v10 = vcvtd_n_f64_u32(v9, 1uLL);
  v11 = vcvtd_n_f64_u32(v8, 1uLL);
  v12 = v2 + v11;
  v13 = v3;
  bzero(v92, 0x808uLL);
  bzero(v91, 0x808uLL);
  v14 = (v8 >> 1);
  v15 = log2f(vcvts_n_f32_u32(v8 >> 1, 8uLL));
  v16 = 0;
  v17 = vcvtps_s32_f32(v15);
  v18 = 256 << v17;
  v19 = vcvtd_n_f64_u32(v5, 8uLL);
  do
  {
    v20 = 0;
    v21 = v94[v16];
    v22 = v21[1];
    v23 = v21[7];
    v24 = v23 - 2;
    v25 = v21[8];
    v26 = 2 * v23;
    do
    {
      v27 = 0;
      v28 = vcvts_n_f32_u32(v18 * v20, 8uLL);
      if (v28 >= v14)
      {
        v29 = v14;
      }

      else
      {
        v29 = v28;
      }

      v30 = v92[v20];
      v31 = 1;
      do
      {
        v32 = *(&unk_10001F3E8 + v27);
        v33 = v31;
        v34 = (v12 + (v32 * v29)) * 0.5;
        v35 = (v34 / v22);
        if (v35 <= 1)
        {
          v35 = 1;
        }

        if (v35 >= v24)
        {
          v35 = v24;
        }

        if (v25)
        {
          v36 = (v93[v16] + 2 * v35);
          v37 = 0.0;
          v38 = v25;
          v39 = 0.0;
          do
          {
            v37 = v37 + v19 * (vcvts_n_f32_u32(*v36, 0xCuLL) + -1.0) + 1.0;
            v39 = v39 + v19 * (vcvts_n_f32_u32(v36[v32], 0xCuLL) + -1.0) + 1.0;
            v36 = (v36 + v26);
            --v38;
          }

          while (v38);
        }

        else
        {
          v39 = 0.0;
          v37 = 0.0;
        }

        v31 = 0;
        v30 = ((((v35 + v32) * v22) - v34) * v37 + (v34 - (v35 * v22)) * v39) / (v34 - (v35 * v22) + ((v35 + v32) * v22) - v34) / v25 + v30;
        v27 = 1;
      }

      while ((v33 & 1) != 0);
      v92[v20++] = v30;
    }

    while (v20 != 257);
    ++v16;
  }

  while (v16 != 4);
  v40 = 0;
  v41 = v10;
  v42 = v13 + v41;
  do
  {
    v43 = v92[v40] * 0.125;
    v92[v40] = v43;
    if (v43 <= 0.0)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 1.0 / v43;
    }

    v91[v40++] = v44;
  }

  while (v40 != 257);
  v45 = 1 << v17;
  bzero(v90, 0x408uLL);
  v46 = v9;
  v47 = v9 - v42;
  if (v42 > v47)
  {
    v47 = v42;
  }

  v48 = log2f((v47 + v47) * 0.0078125);
  v49 = 0;
  v50 = 128 << vcvtps_u32_f32(v48);
  do
  {
    v51 = 0;
    v52 = v94[v49];
    v53 = v52[2];
    v54 = v52[8] - 2;
    result = v52[7];
    do
    {
      v56 = v42 + (vcvts_n_f32_u32(v50 * v51, 7uLL) - (v50 >> 1));
      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      if (v56 > v46)
      {
        v56 = v46;
      }

      v57 = v56 * 0.5;
      v58 = (v57 / v53) & ~((v57 / v53) >> 31);
      if (v58 >= v54)
      {
        v58 = v54;
      }

      if (result)
      {
        v59 = 0;
        v60 = v93[v49];
        v61 = (v60 + 2 * v58 * result);
        v62 = v58 + 1;
        v63 = (v60 + 2 * (v58 + 1) * result);
        v64 = 0.0;
        v65 = result;
        v66 = 0.0;
        do
        {
          v67 = v59 - v12;
          if (v67 < 0.0)
          {
            v67 = -v67;
          }

          if (v67 > v18)
          {
            v67 = v18;
          }

          v68 = v67 / v45;
          v69 = v68 & ~(v68 >> 31);
          if (v69 >= 127)
          {
            v69 = 127;
          }

          v70 = v69;
          v71 = v91[v69];
          v72 = v69 + 1;
          v73 = v68;
          v74 = v73 - v70;
          v75 = v72 - v73;
          v76 = v71 * v75 + v74 * v91[v72];
          v77 = *v61++;
          v78 = v74 + v75;
          *&v74 = vcvts_n_f32_u32(v77, 0xCuLL);
          v79 = v76 / v78;
          v80 = *v63++;
          v66 = v66 + (v19 * (*&v74 + -1.0) + 1.0) * v79;
          v64 = v64 + (v19 * (vcvts_n_f32_u32(v80, 0xCuLL) + -1.0) + 1.0) * v79;
          v59 += 2 * v52[1];
          --v65;
        }

        while (v65);
      }

      else
      {
        v62 = v58 + 1;
        v66 = 0.0;
        v64 = 0.0;
      }

      v90[v51] = (((v62 * v53) - v57) * v66 + (v57 - (v58 * v53)) * v64) / (v57 - (v58 * v53) + (v62 * v53) - v57) / result + v90[v51];
      ++v51;
    }

    while (v51 != 129);
    ++v49;
  }

  while (v49 != 4);
  v81 = 0;
  v82 = 0.0;
  do
  {
    v83 = v90[v81] * 0.25;
    v90[v81] = v83;
    if (v83 <= 0.0)
    {
      v84 = 0.0;
    }

    else
    {
      v84 = 1.0 / v83;
    }

    if (v84 > v82)
    {
      v82 = v84;
    }

    ++v81;
  }

  while (v81 != 129);
  v85 = 0;
  v86 = 255.0 / v82;
  if (v82 <= 0.0)
  {
    v86 = 1.0;
  }

  do
  {
    v87 = v90[v85];
    if (v87 <= 0.0)
    {
      v88 = 1.0;
    }

    else
    {
      v88 = 1.0 / v87;
    }

    *(v6 + 14 + 2 * v85++) = (v86 * v88);
  }

  while (v85 != 129);
  for (i = 0; i != 257; ++i)
  {
    *(v6 + 272 + 2 * i) = (v91[i] * 4096.0 * 128.0 / v86);
  }

  *(v6 + 12) = v5;
  return result;
}

void sub_100017E30(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t sub_1000180F4(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v69 = result;
  v70 = a3[7];
  if (a3[7])
  {
    v68 = a3[3];
    v15 = a3[2];
    v67 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v73 = a2 - 2;
    v18 = a3[4];
    v19 = a3[6];
    v71 = 0;
    v72 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v71 == v70)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v67 + v71 * v68);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v69 + 8 * v71 * v19;
    v75 = result;
    while (1)
    {
      v25 = (v18 + v20 * v15);
      if (v22)
      {
        v26 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v25 >= (*(v16 + 4 * v26) * *&v24))
        {
          if (v22 == ++v26)
          {
            LOWORD(v26) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v23)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v27) * *&v24))
          {
            if (v23 == ++v27)
            {
              v28 = v23;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v22 + -3.0 >= v31 ? (v36 = a5 == 0) : (v36 = 1), !v36 ? (v37 = v23 + -3.0 < v34) : (v37 = 1), v37))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v22 - 2))
        {
          v31 = (v22 - 2);
        }

        v52 = vcvtmd_u64_f64(v31);
        if (v34 >= (v23 - 2))
        {
          v53 = (v23 - 2);
        }

        else
        {
          v53 = v34;
        }

        v54 = vcvtmd_u64_f64(v53);
        v55 = v52 + v54 * v22;
        LOBYTE(v53) = *(a2 + v55);
        v56 = *(a4 + 48);
        LOBYTE(a9) = *(a2 + v55 + 1);
        v57 = v52 + (v54 + 1) * v22;
        LOBYTE(a10) = *(a2 + v57);
        LOBYTE(a11) = *(a2 + v57 + 1);
        LOWORD(a13) = *a4;
        v58 = LODWORD(a13);
        v59 = roundf(*(v16 + 4 * v52) * v58);
        LOWORD(v13) = *(a4 + 2);
        v60 = LODWORD(v13);
        v61 = roundf(*(v17 + 4 * v54) * v60);
        a13 = roundf(*(v16 + 4 * (v52 + 1)) * v58);
        v13 = roundf(*(v17 + 4 * (v54 + 1)) * v60);
        v62 = v25 - v59;
        v63 = a13 - v25;
        v64 = *&a10 / v56 * v63 + v62 * (*&a11 / v56);
        a11 = v62 + v63;
        a10 = v64 / (v62 + v63);
        v65 = (*&v53 / v56 * v63 + v62 * (*&a9 / v56)) / (v62 + v63);
        a9 = v13 - v21;
        v66 = fmin(((v13 - v21) * v65 + (v21 - v61) * a10) / (v21 - v61 + v13 - v21), 1.0);
        v24 = 1.0 / v56;
        if (v66 <= 1.0 / v56)
        {
          v66 = 1.0 / v56;
        }

        *(result + 8 * v20) = v66;
      }

      else
      {
        v38 = 0;
        v39 = *(a4 + 48);
        v40 = v35;
        v41 = (v73 + v29 + v22 * v35);
        v42 = v79;
        do
        {
          v43 = 0;
          v78[v38] = *(v16 + 4 * (v38 + v29 - 2));
          v44 = *(v17 + 4 * (v38 + v40));
          v77[v38] = v44;
          v45 = v41;
          do
          {
            LOBYTE(v44) = *v45;
            v44 = *&v44 / v39;
            v42[v43] = v44;
            v45 += v22;
            ++v43;
          }

          while (v43 != 4);
          ++v38;
          ++v41;
          v42 += 4;
        }

        while (v38 != 4);
        LOWORD(v44) = *a4;
        v46 = v25 / *&v44;
        v47 = *(v16 + 4 * v30);
        v48 = v46 - v47;
        *&v49 = (*(v16 + 4 * v29) - v47);
        v50 = v48 / *&v49;
        LOWORD(v49) = *(a4 + 2);
        sub_1000160C0(v79, v78, v77, v50, (v21 / v49 - *(v17 + 4 * v33)) / (*(v17 + 4 * v32) - *(v17 + 4 * v33)));
        v24 = 1.0 / v39;
        if (v51 >= 1.0)
        {
          v19 = v72;
          result = v75;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v72;
          result = v75;
          if (v51 > v24)
          {
            v24 = v51;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void sub_100018560(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t sub_100018824(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v70 = result;
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v15 = a3[2];
    v68 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v18 = a3[4];
    v19 = a3[6];
    v74 = v18;
    v75 = a2 - 4;
    v72 = 0;
    v73 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v72 == v71)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v68 + v72 * v69);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v70 + 8 * v72 * v19;
    v25 = 2 * v22;
    v77 = result;
    while (1)
    {
      v26 = (v18 + v20 * v15);
      if (v22)
      {
        v27 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v26 >= (*(v16 + 4 * v27) * *&v24))
        {
          if (v22 == ++v27)
          {
            LOWORD(v27) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        if (v23)
        {
LABEL_12:
          v28 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v28) * *&v24))
          {
            if (v23 == ++v28)
            {
              v29 = v23;
              goto LABEL_19;
            }
          }

          v29 = v28;
          goto LABEL_19;
        }
      }

LABEL_17:
      v29 = 0;
LABEL_19:
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      v33 = v29;
      v34 = v29 - 1;
      v35 = v34;
      if (v30 < 2 || (v36 = v33 - 2, v33 < 2) || (v22 + -3.0 >= v32 ? (v37 = a5 == 0) : (v37 = 1), !v37 ? (v38 = v23 + -3.0 < v35) : (v38 = 1), v38))
      {
        if (!v30)
        {
          v32 = 0.0;
        }

        if (!v33)
        {
          v35 = 0.0;
        }

        if (v32 >= (v22 - 2))
        {
          v32 = (v22 - 2);
        }

        v53 = vcvtmd_u64_f64(v32);
        if (v35 >= (v23 - 2))
        {
          v54 = (v23 - 2);
        }

        else
        {
          v54 = v35;
        }

        v55 = vcvtmd_u64_f64(v54);
        v56 = v53 + v55 * v22;
        LOWORD(v54) = *(a2 + 2 * v56);
        v57 = *(a4 + 48);
        LOWORD(a9) = *(a2 + 2 * (v56 + 1));
        v58 = v53 + (v55 + 1) * v22;
        LOWORD(a10) = *(a2 + 2 * v58);
        LOWORD(a11) = *(a2 + 2 * (v58 + 1));
        LOWORD(a13) = *a4;
        v59 = LODWORD(a13);
        v60 = roundf(*(v16 + 4 * v53) * v59);
        LOWORD(v13) = *(a4 + 2);
        v61 = LODWORD(v13);
        v62 = roundf(*(v17 + 4 * v55) * v61);
        a13 = roundf(*(v16 + 4 * (v53 + 1)) * v59);
        v13 = roundf(*(v17 + 4 * (v55 + 1)) * v61);
        v63 = v26 - v60;
        v64 = a13 - v26;
        v65 = *&a10 / v57 * v64 + v63 * (*&a11 / v57);
        a11 = v63 + v64;
        a10 = v65 / (v63 + v64);
        v66 = (*&v54 / v57 * v64 + v63 * (*&a9 / v57)) / (v63 + v64);
        a9 = v13 - v21;
        v67 = fmin(((v13 - v21) * v66 + (v21 - v62) * a10) / (v21 - v62 + v13 - v21), 1.0);
        v24 = 1.0 / v57;
        if (v67 <= 1.0 / v57)
        {
          v67 = 1.0 / v57;
        }

        *(result + 8 * v20) = v67;
      }

      else
      {
        v39 = 0;
        v40 = *(a4 + 48);
        v41 = v36;
        v42 = (v75 + 2 * v30 + v25 * v36);
        v43 = v81;
        do
        {
          v44 = 0;
          v80[v39] = *(v16 + 4 * (v39 + (v30 - 2)));
          v45 = *(v17 + 4 * (v39 + v41));
          v79[v39] = v45;
          v46 = v42;
          do
          {
            LOWORD(v45) = *v46;
            v45 = *&v45 / v40;
            v43[v44] = v45;
            v46 = (v46 + v25);
            ++v44;
          }

          while (v44 != 4);
          ++v39;
          ++v42;
          v43 += 4;
        }

        while (v39 != 4);
        LOWORD(v45) = *a4;
        v47 = v26 / *&v45;
        v48 = *(v16 + 4 * v31);
        v49 = v47 - v48;
        *&v50 = (*(v16 + 4 * v30) - v48);
        v51 = v49 / *&v50;
        LOWORD(v50) = *(a4 + 2);
        sub_1000160C0(v81, v80, v79, v51, (v21 / v50 - *(v17 + 4 * v34)) / (*(v17 + 4 * v33) - *(v17 + 4 * v34)));
        v24 = 1.0 / v40;
        if (v52 >= 1.0)
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v52 > v24)
          {
            v24 = v52;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void sub_100018C98(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void sub_100018FCC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v13 = a3[2];
    v14 = a4 + 56;
    v15 = a4 + 124;
    v68 = a3[5];
    v16 = a3[4];
    v17 = a3[6];
    v75 = v16;
    v76 = a2 - 4;
    v74 = v17;
    v72 = 0;
    v73 = v13;
    while (!v17)
    {
LABEL_43:
      if (++v72 == v71)
      {
        return;
      }
    }

    v18 = 0;
    v19 = (v68 + v72 * v69);
    v20 = *(a4 + 40);
    v21 = *(a4 + 42);
    v22 = -3.0;
    v23 = a1 + 8 * v72 * v17;
    v24 = 2 * v20;
    while (1)
    {
      v25 = (v16 + v18 * v13);
      if (v20)
      {
        v26 = 0;
        LOWORD(v22) = *a4;
        *&v22 = LODWORD(v22);
        while (v25 >= (*(v14 + 4 * v26) * *&v22))
        {
          if (v20 == ++v26)
          {
            LOWORD(v26) = v20;
            if (v21)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v21)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v22) = *(a4 + 2);
          *&v22 = LODWORD(v22);
          while (v19 >= (*(v15 + 4 * v27) * *&v22))
          {
            if (v21 == ++v27)
            {
              v28 = v21;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v20 + -3.0 >= v31 ? (v36 = v21 + -3.0 < v34) : (v36 = 1), v36))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v20 - 2))
        {
          v31 = (v20 - 2);
        }

        if (v34 >= (v21 - 2))
        {
          v34 = (v21 - 2);
        }

        v51 = vcvtmd_u64_f64(v31);
        v52 = vcvtmd_u64_f64(v34);
        v53 = v51 + v52 * v20;
        LOWORD(v31) = *(a2 + 2 * v53);
        v54 = *(a4 + 48);
        v55 = *&v31 / v54;
        LOWORD(a8) = *(a2 + 2 * (v53 + 1));
        v56 = *&a8 / v54;
        v57 = v51 + (v52 + 1) * v20;
        LOWORD(a9) = *(a2 + 2 * v57);
        v58 = *&a9 / v54;
        LOWORD(a10) = *(a2 + 2 * (v57 + 1));
        v59 = *&a10 / v54;
        LOWORD(a11) = *a4;
        v60 = LODWORD(a11);
        v61 = roundf(*(v14 + 4 * v51) * v60);
        LOWORD(v11) = *(a4 + 2);
        v62 = LODWORD(v11);
        v63 = roundf(*(v15 + 4 * v52) * v62);
        a11 = roundf(*(v14 + 4 * (v51 + 1)) * v60);
        v11 = roundf(*(v15 + 4 * (v52 + 1)) * v62);
        a10 = v25 - v61;
        v64 = a11 - v25;
        v65 = v58 * v64 + a10 * v59;
        a9 = a10 + v64;
        v66 = v65 / (a10 + v64);
        v67 = (v55 * v64 + a10 * v56) / (a10 + v64);
        a8 = v11 - v19;
        v22 = v19 - v63 + v11 - v19;
        *(v23 + 8 * v18) = fmax(fmin(((v11 - v19) * v67 + (v19 - v63) * v66) / v22, 2.0), 0.5);
      }

      else
      {
        v37 = 0;
        v38 = *(a4 + 48);
        v39 = v35;
        v40 = (v76 + 2 * v29 + v24 * v35);
        v41 = v80;
        do
        {
          v42 = 0;
          v79[v37] = *(v14 + 4 * (v37 + (v29 - 2)));
          v43 = *(v15 + 4 * (v37 + v39));
          v78[v37] = v43;
          v44 = v40;
          do
          {
            LOWORD(v43) = *v44;
            v43 = *&v43 / v38;
            v41[v42] = v43;
            v44 = (v44 + v24);
            ++v42;
          }

          while (v42 != 4);
          ++v37;
          ++v40;
          v41 += 4;
        }

        while (v37 != 4);
        LOWORD(v38) = *a4;
        v45 = v25 / *&v38;
        v46 = *(v14 + 4 * v30);
        v47 = v45 - v46;
        *&v48 = (*(v14 + 4 * v29) - v46);
        v49 = v47 / *&v48;
        LOWORD(v48) = *(a4 + 2);
        sub_1000160C0(v80, v79, v78, v49, (v19 / v48 - *(v15 + 4 * v33)) / (*(v15 + 4 * v32) - *(v15 + 4 * v33)));
        v22 = 2.0;
        if (v50 < 2.0)
        {
          v22 = 0.5;
          if (v50 > 0.5)
          {
            v22 = v50;
          }
        }

        *(v23 + 8 * v18) = v22;
        v13 = v73;
        v17 = v74;
        v16 = v75;
      }

      if (++v18 == v17)
      {
        goto LABEL_43;
      }
    }
  }
}

void sub_10001941C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void sub_100019754(_WORD *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      sub_10001C9DC();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      sub_10001CA08();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  sub_10001C9B0();
}

uint64_t sub_100019A5C(uint64_t result, uint64_t a2, unsigned __int16 *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v88 = result;
  v89 = a3[7];
  if (a3[7])
  {
    v90 = 0;
    v87 = a3[3];
    v13 = a3[2];
    v14 = (a4 + 7);
    v15 = a4 + 82;
    v94 = a2 - 4;
    v95 = a2 + 2;
    v86 = a3[5];
    v16 = a3[4];
    result = a3[6];
    v96 = a2;
    v92 = result;
    v93 = v16;
    v91 = v13;
    while (!result)
    {
LABEL_77:
      if (++v90 == v89)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = (v86 + v90 * v87);
    v19 = *(a4 + 20);
    v20 = *(a4 + 21);
    v21 = v20;
    v22 = v19 - 1;
    v23 = v88 + 8 * v90 * result;
    v97 = v20 - 1;
    v24 = 2 * v19;
    while (1)
    {
      v25 = (v16 + v17 * v13);
      if (v19)
      {
        break;
      }

      LOWORD(v26) = 0;
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_12:
      v27 = 0;
      LOWORD(v21) = *(a4 + 1);
      *&v21 = LODWORD(v21);
      while (v18 >= (*&v15[2 * v27] * *&v21))
      {
        if (v20 == ++v27)
        {
          LOWORD(v27) = v20;
          break;
        }
      }

LABEL_18:
      v28 = v26 - 1;
      v29 = v28;
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      if (v26 && v27 && (v19 + -2.0 >= v29 ? (v33 = v20 + -2.0 < v32) : (v33 = 1), !v33))
      {
        if (v26 >= 2u)
        {
          v34 = v27 - 2;
          if (v27 >= 2u && v19 + -3.0 >= v29 && v20 + -3.0 >= v32)
          {
            v36 = 0;
            v37 = a4[6];
            v38 = v34;
            v39 = (v94 + 2 * v26 + v24 * v34);
            v40 = v100;
            do
            {
              v41 = 0;
              v99[v36] = *&v14[2 * v36 - 4 + 2 * v26];
              v98[v36] = *&v15[2 * v36 + 2 * v38];
              v42 = v39;
              do
              {
                v40[v41] = *v42 / v37;
                v42 = (v42 + v24);
                ++v41;
              }

              while (v41 != 4);
              ++v36;
              ++v39;
              v40 += 4;
            }

            while (v36 != 4);
            LOWORD(v37) = *a4;
            v43 = v25 / *&v37;
            v44 = *&v14[2 * v28];
            v45 = v43 - v44;
            *&v46 = (*&v14[2 * v26] - v44);
            v47 = v45 / *&v46;
            LOWORD(v46) = *(a4 + 1);
            sub_1000160C0(v100, v99, v98, v47, (v18 / v46 - *&v15[2 * v31]) / (*&v15[2 * v30] - *&v15[2 * v31]));
            v21 = 0.125;
            if (v48 < 0.125)
            {
              v21 = -0.125;
              if (v48 > -0.125)
              {
                v21 = v48;
              }
            }

            *(v23 + 8 * v17) = v21;
            v13 = v91;
            result = v92;
            a2 = v96;
            v16 = v93;
            v22 = v19 - 1;
            goto LABEL_71;
          }
        }

        if (v29 >= (v19 - 2))
        {
          v29 = (v19 - 2);
        }

        if (v32 >= (v20 - 2))
        {
          v32 = (v20 - 2);
        }

        v55 = vcvtmd_u64_f64(v29);
        v56 = vcvtmd_u64_f64(v32);
        v57 = v55 + v56 * v19;
        v58 = a4[6];
        v59 = *(a2 + 2 * v57) / v58;
        v60 = *(a2 + 2 * (v57 + 1)) / v58;
        LOWORD(a11) = *a4;
        v61 = LODWORD(a11);
        v62 = roundf(*&v14[2 * v55] * v61);
        LOWORD(v11) = *(a4 + 1);
        v63 = LODWORD(v11);
        v64 = roundf(*&v15[2 * v56] * v63);
        a11 = roundf(*&v14[2 * v55 + 2] * v61);
        v11 = roundf(*&v15[2 * v56 + 2] * v63);
        v65 = v25 - v62;
        v66 = a11 - v25;
        v67 = (*(a2 + 2 * (v55 + (v56 + 1) * v19)) / v58 * v66 + v65 * (*(a2 + 2 * (v55 + (v56 + 1) * v19 + 1)) / v58)) / (v65 + v66);
        v68 = (v59 * v66 + v65 * v60) / (v65 + v66);
        v69 = v18 - v64;
        v70 = v11 - v18;
      }

      else
      {
        if (!v26)
        {
          v29 = 0.0;
        }

        if (!v27)
        {
          v32 = 0.0;
        }

        if (v29 >= (v19 - 1))
        {
          v29 = (v19 - 1);
        }

        if (v32 >= (v20 - 1))
        {
          v32 = (v20 - 1);
        }

        v49 = vcvtmd_u64_f64(v29);
        v50 = vcvtmd_u64_f64(v32);
        if (!(v49 | v50))
        {
          v51 = *(v95 + 2 * v19);
LABEL_69:
          v21 = a4[6];
          v74 = v51 / v21;
          goto LABEL_70;
        }

        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v97 == v50;
        }

        if (v52)
        {
          v54 = (v20 - 1) * v19 + 1;
          goto LABEL_68;
        }

        if (v22 == v49 && v50 == 0)
        {
          v54 = v19 - 1 + v19;
          goto LABEL_68;
        }

        if (v22 == v49)
        {
          if (v97 == v50)
          {
            v54 = (v20 - 1) * v19 + v19 - 1;
LABEL_68:
            v51 = *(a2 + 2 * v54);
            goto LABEL_69;
          }

          v75 = *a4;
          v76 = *(a4 + 1);
        }

        else
        {
          v75 = *a4;
          v76 = *(a4 + 1);
          if (v49)
          {
            v77 = roundf(*&v14[2 * v49] * v75);
            v78 = roundf(*&v15[2 * v50] * v76);
            v79 = roundf(*&v14[2 * v49 + 2] * v75);
            a11 = roundf(*&v15[2 * v50 + 2] * v76);
            v80 = (*(a2 + 2 * (v49 + v50 * v19)) / a4[6] * (v79 - v25) + (v25 - v77) * (*(a2 + 2 * (v49 + v50 * v19 + 1)) / a4[6])) / (v25 - v77 + v79 - v25);
            v71 = (a11 - v18) * v80 + (v18 - v78) * v80;
            v72 = v18 - v78 + a11 - v18;
            goto LABEL_65;
          }
        }

        v81 = a4[6];
        v82 = *(a2 + 2 * (v49 + (v50 + 1) * v19));
        v83 = *(a2 + 2 * (v49 + v50 * v19)) / v81;
        a11 = roundf(*&v15[2 * v50 + 2] * v76);
        v84 = v25 - roundf(*&v14[2 * v49] * v75);
        v85 = roundf(*&v14[2 * v49 + 2] * v75) - v25;
        v67 = (v82 / v81 * v85 + v84 * (v82 / v81)) / (v84 + v85);
        v68 = (v83 * v85 + v84 * v83) / (v84 + v85);
        v69 = v18 - roundf(*&v15[2 * v50] * v76);
        v70 = a11 - v18;
      }

      v71 = v70 * v68 + v69 * v67;
      v72 = v69 + v70;
LABEL_65:
      v73 = fmin(v71 / v72, 0.125);
      v21 = -0.125;
      v74 = fmax(v73, -0.125);
LABEL_70:
      *(v23 + 8 * v17) = v74;
LABEL_71:
      if (++v17 == result)
      {
        goto LABEL_77;
      }
    }

    v26 = 0;
    LOWORD(v21) = *a4;
    *&v21 = LODWORD(v21);
    while (v25 >= (*&v14[2 * v26] * *&v21))
    {
      if (v19 == ++v26)
      {
        LOWORD(v26) = v19;
        if (v20)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_12;
    }

LABEL_17:
    LOWORD(v27) = 0;
    goto LABEL_18;
  }

  return result;
}

void sub_10001A0FC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 136315394;
  v3 = "SetupDeviceController";
  v4 = 1024;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - Timed out waiting for the driver to register service, deviceArrived = %d\n", &v2, 0x12u);
}

void sub_10001A194()
{
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - IONotificationPortGetRunLoopSource returned NULL\n", &v0, 0xCu);
}

void sub_10001A21C()
{
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - IONotificationPortCreate returned NULL\n", &v0, 0xCu);
}

void sub_10001A2A4()
{
  sub_100008BA4();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A320(os_log_t log)
{
  v1 = 136315138;
  v2 = "sendMessageSync";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s - received reply\n", &v1, 0xCu);
}

void sub_10001A424(uint64_t a1)
{
  v25 = 255;
  if (!a1)
  {
    return;
  }

  if (!sub_100012AAC(a1, &v25))
  {
    goto LABEL_42;
  }

  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"LoadHPR", kCFAllocatorDefault, 0);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID() && !CFBooleanGetValue(v5))
    {
      CFRelease(v5);
      v24 = off_10039DB98;
      if (off_10039DB98 == &_os_log_default)
      {
        v24 = os_log_create("com.apple.isp", "general");
        off_10039DB98 = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "LoadFrontIRHPRFile";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s - noHPR boot-arg set\n", buf, 0xCu);
      }

LABEL_42:
      v15 = 0;
      goto LABEL_43;
    }
  }

  v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageChipID", kCFAllocatorDefault, 3u);
  if (v7)
  {
    v8 = v7;
    v9 = AMFDRCreateInstanceString();
    if (v9)
    {
      v10 = v9;
      v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageUID", kCFAllocatorDefault, 3u);
      if (v11)
      {
        v12 = v11;
        v13 = AMFDRCreateInstanceString();
        if (v13)
        {
          v14 = v13;
          v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v10, v13);
          CFRelease(v12);
          CFRelease(v14);
          goto LABEL_11;
        }

        NSLog(@"Couldn't create SavageUID string ref");
        CFRelease(v12);
      }

      else
      {
        NSLog(@"Couldn't read SavageUID");
      }

      v15 = 0;
LABEL_11:
      CFRelease(v8);
      CFRelease(v10);
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    NSLog(@"Couldn't create SavageChipID string ref");
    CFRelease(v8);
  }

  else
  {
    NSLog(@"Couldn't read SavageChipID");
  }

  v15 = 0;
  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_13:
  if (!v15)
  {
    NSLog(@"Couldn't combine frontIR chipIDStr and uidStr");
LABEL_43:
    v21 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v16 = [NSData dataWithContentsOfFile:@"/usr/local/share/firmware/isp/Savage/FrontIRHPR.DER"];
  if (v16)
  {
    v17 = v16;
    NSLog(@"Found FrontIR override (has highest precedence) HPR file - camChannel = %d", v25);
    goto LABEL_16;
  }

  v17 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  if (v17)
  {
LABEL_16:
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v20 = sub_1000119D4(a1, v25 | 0x80000000, BytePtr, Length, 0x501u);
    v21 = CFCopyDescription(v17);
    v22 = off_10039DB98;
    if (off_10039DB98 == &_os_log_default)
    {
      v22 = os_log_create("com.apple.isp", "general");
      off_10039DB98 = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      CStringPtr = CFStringGetCStringPtr(v21, 0);
      *buf = 136315650;
      v27 = "LoadFrontIRHPRFile";
      v28 = 1024;
      v29[0] = v20;
      LOWORD(v29[1]) = 2080;
      *(&v29[1] + 2) = CStringPtr;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s - Status = %08x; HPR - %s\n", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  NSLog(@"No HPR file for frontIR found");
  v21 = 0;
LABEL_20:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void sub_10001A904(const void *a1)
{
  NSLog(@"pDevice is NULL");
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_10001AA08()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AA8C()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10001AB18()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001ACA8(uint64_t *a1)
{
  v6 = *a1;
  sub_100008B98();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10001AD34()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001ADB8(unsigned int *a1)
{
  v1 = *a1;
  sub_100013230();
  sub_100008B98();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001AE44()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B038(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "ISP_PowerOnCamera";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - FTC gain buffer allocation failed\n", buf, 0xCu);
}

void sub_10001B110(uint8_t *buf, _DWORD *a2)
{
  *buf = 67109120;
  *a2 = -536870165;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "LoadSetFile returned 0x%08x - ignoring error\n", buf, 8u);
}

void sub_10001B224(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting FW property: 0x%08x\n", buf, 8u);
}

void sub_10001B270(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error: SetSensorCustomSettings returned an error: 0x%08X\n", buf, 8u);
}

void sub_10001B2BC()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B340()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B548(unsigned int *a1)
{
  v1 = *a1;
  sub_100013230();
  sub_100008B98();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001B5D4()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B75C()
{
  sub_1000131F0();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10001B8F0()
{
  sub_1000131F0();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10001BA84(uint8_t *a1, CFStringRef theString, const char **a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  *a1 = 136315138;
  *a3 = CStringPtr;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't read %s. Sensor is hosed/disconnected.\n", a1, 0xCu);
}

uint64_t sub_10001BAF0(uint64_t a1)
{
  if (off_10039DBA8 == &_os_log_default)
  {
    off_10039DBA8 = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008B98();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  return sub_1000119D4(a1, 0x80000000, 0, 0, 0xCCCC0301);
}

uint64_t sub_10001BDCC(char a1)
{
  sub_100008B98();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

uint64_t sub_10001BE64(char a1)
{
  sub_100008B98();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

void sub_10001BFB4()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C030()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C0AC()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C128()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C1A4()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C220(xpc_connection_t *a1)
{
  xpc_connection_get_pid(*a1);
  sub_100015F74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10001C2BC(uint64_t a1)
{
  v1 = sub_100015F9C(a1);
  xpc_connection_get_pid(v1);
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10001C340(uint64_t a1)
{
  v1 = sub_100015F9C(a1);
  xpc_connection_get_pid(v1);
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10001C3C4(uint64_t a1)
{
  v1 = sub_100015F9C(a1);
  xpc_connection_get_pid(v1);
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10001C444(uint64_t a1)
{
  v1 = sub_100015F9C(a1);
  xpc_connection_get_pid(v1);
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10001C4C4(uint64_t a1)
{
  v1 = sub_100015F9C(a1);
  xpc_connection_get_pid(v1);
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10001C544(uint64_t a1)
{
  xpc_connection_get_pid(**(a1 + 40));
  sub_100015F84();
  sub_100015F74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10001C5CC()
{
  sub_100015F90();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C608()
{
  sub_100015F90();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C644()
{
  sub_100015F90();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C6F4()
{
  sub_1000131CC();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001C770()
{
  sub_100015FA8();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10001C7E4()
{
  sub_100015FA8();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10001C858()
{
  sub_100015F90();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C894()
{
  sub_100015F90();
  sub_100008B98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001C928()
{
  v0 = 136315138;
  v1 = "LSCComputeSNFVerticalGains";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - LSCComputeSNFVerticalGains: null ptr! pRadialGainAsymScaleSet.\n", &v0, 0xCu);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}