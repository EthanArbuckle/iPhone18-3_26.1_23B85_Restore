uint64_t sub_100000844(uint64_t a1, int *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= 7)
  {
    *a5 = 107;
    v6 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "nlc_simulate";
      v7 = "%s: message too small";
      v8 = v6;
      v9 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, &v15, v9);
      return 5;
    }

    return 5;
  }

  if (*a2 != 21)
  {
    *a5 = 108;
    v11 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v12 = *a2;
      v15 = 136315650;
      v16 = "nlc_simulate";
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = 21;
      v7 = "%s: incompatible version %d, should be %d";
      v8 = v11;
      v9 = 24;
      goto LABEL_9;
    }

    return 5;
  }

  if (a2[1])
  {
    *a5 = 107;
    return 5;
  }

  v14 = sub_100001E44(a2);
  *a5 = v14;
  if (v14 == 1)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000009C0(uint64_t a1, int *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a3 <= 7)
  {
    *a5 = 107;
    v6 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "nlc_stop_simulation";
      v7 = "%s: message too small";
      v8 = v6;
      v9 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, &v16, v9);
      return 5;
    }

    return 5;
  }

  if (*a2 != 21)
  {
    *a5 = 108;
    v13 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v14 = *a2;
      v16 = 136315650;
      v17 = "nlc_stop_simulation";
      v18 = 1024;
      v19 = v14;
      v20 = 1024;
      v21 = 21;
      v7 = "%s: incompatible version %d, should be %d";
      v8 = v13;
      v9 = 24;
      goto LABEL_13;
    }

    return 5;
  }

  if (a2[1] != 1)
  {
    *a5 = 107;
LABEL_11:
    v15 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v7 = "Error stopping simulation";
      v8 = v15;
      v9 = 2;
      goto LABEL_13;
    }

    return 5;
  }

  v11 = sub_100001D44();
  result = 0;
  *a5 = v11;
  if (v11 != 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100000B84(uint64_t a1, int *a2, unsigned int a3, _OWORD *a4, _DWORD *a5, uint64_t a6, _DWORD *a7)
{
  if (a3 > 7)
  {
    if (*a2 == 21)
    {
      if (a2[1] == 2)
      {
        *a5 = 208;
        a4[11] = 0u;
        a4[12] = 0u;
        a4[9] = 0u;
        a4[10] = 0u;
        a4[7] = 0u;
        a4[8] = 0u;
        a4[5] = 0u;
        a4[6] = 0u;
        a4[3] = 0u;
        a4[4] = 0u;
        a4[1] = 0u;
        a4[2] = 0u;
        *a4 = 0u;
        *a4 = 0x200000015;
        sub_100001FD0(a4);
        result = 0;
        *a7 = 1;
        return result;
      }

      *a7 = 107;
      v16 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        v9 = "Error get simulation status";
        v10 = v16;
        v11 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      *a7 = 108;
      v14 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        v15 = *a2;
        v17 = 136315650;
        v18 = "nlc_get_status";
        v19 = 1024;
        v20 = v15;
        v21 = 1024;
        v22 = 21;
        v9 = "%s: incompatible version %d, should be %d";
        v10 = v14;
        v11 = 24;
        goto LABEL_11;
      }
    }
  }

  else
  {
    *a7 = 107;
    v8 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "nlc_get_status";
      v9 = "%s: message too small";
      v10 = v8;
      v11 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v17, v11);
    }
  }

  return 5;
}

double sub_100000D74()
{
  result = 0.0;
  xmmword_10000C04C = 0u;
  unk_10000C05C = 0u;
  xmmword_10000C02C = 0u;
  unk_10000C03C = 0u;
  xmmword_10000C01C = 0u;
  return result;
}

uint64_t sub_100000D90(int a1, _DWORD *a2)
{
  v3 = 0;
  v4 = &xmmword_10000C01C + 1;
  while (1)
  {
    v5 = *v4;
    v4 += 2;
    if (!v5)
    {
      break;
    }

    if (++v3 == 10)
    {
      if (dword_10000C070)
      {
        return 106;
      }

      v3 = 10;
      break;
    }
  }

  v7 = &xmmword_10000C01C + 2 * v3;
  *v7 = a1;
  do
  {
    v8 = random();
    *a2 = v8;
    v7[1] = v8;
  }

  while (!v8);
  ++dword_10000C06C;
  return 1;
}

uint64_t sub_100000E20(int a1, int a2)
{
  v2 = &xmmword_10000C01C + 4;
  v3 = 10;
  v4 = &xmmword_10000C01C + 4;
  while (1)
  {
    v5 = *v4;
    v4 += 8;
    if (v5 == a2 && *(v2 - 1) == a1)
    {
      break;
    }

    v2 = v4;
    if (!--v3)
    {
      return 103;
    }
  }

  return 1;
}

uint64_t sub_100000E64(int a1, int a2)
{
  v2 = 10;
  for (i = &xmmword_10000C01C; *i != a1 || *(i + 1) != a2; i = (i + 8))
  {
    if (!--v2)
    {
      return 103;
    }
  }

  *i = 0;
  --dword_10000C06C;
  return 1;
}

uint64_t sub_100000EB8(uint64_t a1, mach_port_name_t *a2, _DWORD *a3, int *a4, _OWORD *a5)
{
  previous = 0;
  v8 = a5[1];
  *token.val = *a5;
  *&token.val[4] = v8;
  v26 = 0;
  v9 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v10 = SecTaskCopyValueForEntitlement(v9, @"com.apple.private.nlcd-control", &v26);
  CFRelease(v9);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFBooleanGetTypeID())
  {
    CFRelease(v10);
    goto LABEL_9;
  }

  Value = CFBooleanGetValue(v10);
  CFRelease(v10);
  if (!Value)
  {
LABEL_9:
    v16 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Process not entitled for this action", &token, 2u);
    }

    v15 = 0;
    v14 = 5;
    goto LABEL_12;
  }

  if (dword_10000C06C >= 11)
  {
    v13 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No more connections available to nlcd", &token, 2u);
    }

    v14 = 5;
    v15 = 106;
    goto LABEL_12;
  }

  v18 = mach_port_allocate(mach_task_self_, 1u, a2);
  if (v18)
  {
    v14 = v18;
    v19 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Unable to allocate port for client", &token, 2u);
    }

    goto LABEL_24;
  }

  inserted = mach_port_insert_right(mach_task_self_, *a2, *a2, 0x14u);
  if (inserted)
  {
    v14 = inserted;
    v21 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      v22 = "Insert right failed on client port";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, &token, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v23 = mach_port_move_member(mach_task_self_, *a2, dword_10000C080);
  if (v23)
  {
    v14 = v23;
    v21 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      v22 = "Unable to add client port to portset";
      goto LABEL_22;
    }

LABEL_23:
    mach_port_destroy(mach_task_self_, *a2);
LABEL_24:
    v15 = 105;
    goto LABEL_12;
  }

  if (mach_port_request_notification(mach_task_self_, *a2, 70, 1u, *a2, 0x15u, &previous))
  {
    v24 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Unable to register for notifications on client port", &token, 2u);
    }

    mach_port_destroy(mach_task_self_, *a2);
    v14 = 5;
    goto LABEL_24;
  }

  if (sub_100000D90(*a2, a3) == 1)
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v25 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Unable to create session for client", &token, 2u);
    }

    mach_port_destroy(mach_task_self_, *a2);
    v14 = 5;
    v15 = 102;
  }

LABEL_12:
  *a4 = v15;
  return v14;
}

uint64_t sub_100001254(int a1, int a2, int *a3)
{
  v4 = 10;
  v5 = &xmmword_10000C01C + 1;
  while (*v5 != a2 || *(v5 - 1) != a1)
  {
    v5 += 2;
    if (!--v4)
    {
LABEL_10:
      v8 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to disconnect", v11, 2u);
      }

      v9 = 103;
      goto LABEL_13;
    }
  }

  v6 = &xmmword_10000C01C;
  v7 = 10;
  while (*v6 != a1 || *(v6 + 1) != a2)
  {
    v6 = (v6 + 8);
    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  *v6 = 0;
  --dword_10000C06C;
  v9 = 1;
LABEL_13:
  *a3 = v9;
  return 0;
}

uint64_t sub_10000134C()
{
  v8 = 0;
  v7 = 0;
  if ((sub_100001408(&v8, &v7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v0 = 40268;
LABEL_3:
  v1 = v0 + 1;
  v2 = v7;
  v3 = v8;
  if (v7 >= 0x160)
  {
    while (*v3 == 0x4000)
    {
      if (v1 == *(v3 + 2))
      {
        if (v0++ >= 0xFFFF)
        {
          break;
        }

        goto LABEL_3;
      }

      v4 = 184 * *(v3 + 67) + 352;
      v3 += v4;
      v2 -= v4;
      if (v2 < 0x160)
      {
        break;
      }
    }
  }

  if (v8)
  {
    free(v8);
  }

  return v1;
}

uint64_t sub_100001408(void *a1, socklen_t *a2)
{
  v4 = 0;
  v5 = 1024;
  v16 = 1024;
  do
  {
    v6 = v16;
    if (v16 < v5)
    {
      goto LABEL_7;
    }

    v7 = 2 * v5;
    v5 = 2 * v5 + 200;
    v16 = v7 + 200;
    v8 = malloc_type_realloc(v4, (v7 + 200), 0x55149AD0uLL);
    if (!v8)
    {
      v10 = off_10000C010;
      if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315138;
      v18 = "get_dummynet_rules";
      v11 = "%s: realloc\n";
      v12 = v10;
      v13 = 12;
      goto LABEL_12;
    }

    v4 = v8;
  }

  while ((sub_1000016E4(64, v8, &v16) & 0x80000000) == 0);
  if (*__error() == 55)
  {
    v16 = 0;
    free(v4);
    v4 = 0;
    v6 = v16;
LABEL_7:
    *a1 = v4;
    *a2 = v6;
    return 1;
  }

  free(v4);
  v14 = off_10000C010;
  if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    v15 = *__error();
    *buf = 136315394;
    v18 = "get_dummynet_rules";
    v19 = 1024;
    v20 = v15;
    v11 = "%s: IP_DUMMYNET_GET failed (%d)\n";
    v12 = v14;
    v13 = 18;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
  }

  return 0xFFFFFFFFLL;
}

void sub_1000015C0(int a1)
{
  memset(v11, 0, sizeof(v11));
  DWORD2(v11[0]) = a1;
  v4 = 352;
  if (sub_1000016E4(61, v11, &v4))
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v3 = *__error();
      *buf = 136315650;
      v6 = "delete_pipe";
      v7 = 1024;
      v8 = a1;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: IP_DUMMYNET_DEL(pipe %d) failed (%d)\n", buf, 0x18u);
    }
  }
}

uint64_t sub_1000016E4(int a1, void *a2, socklen_t *a3)
{
  v6 = dword_10000C000;
  if (dword_10000C000 == -1)
  {
    v6 = socket(2, 3, 255);
    dword_10000C000 = v6;
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if (a1 == 64)
      {

        return getsockopt(v6, 0, 64, a2, a3);
      }

      else
      {
        v9 = *a3;

        return setsockopt(v6, 0, a1, a2, v9);
      }
    }
  }

  else if ((dword_10000C000 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v8 = off_10000C010;
  if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "do_cmd";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: socket unavailable\n", &v10, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100001870(int a1, float *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = a2[2];
  DWORD2(v12) = a1;
  if (v2 != 0.0)
  {
    v3 = v2;
    if (v2 < 0.0)
    {
      v3 = 0.0;
    }

    if (v2 <= 1.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1.0;
    }

    HIDWORD(v24) = (v4 * 2147483650.0);
  }

  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

  *(&v12 + 3) = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v7 = 1000000;
  }

  else
  {
    v7 = 1000;
  }

  LODWORD(v5) *= v7;
  *(&v12 + 3) = v5;
LABEL_14:
  if ((LODWORD(v5) & 0x80000000) == 0)
  {
LABEL_15:
    if (*(a2 + 3))
    {
      *&v13 = a2[3];
    }

    if (*(a2 + 4))
    {
      *(&v24 + 2) = a2[4];
      if (*(a2 + 5) == 1)
      {
        WORD1(v23) = 8;
      }
    }

    v10 = 352;
    if (sub_1000016E4(60, &v12, &v10))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  v9 = off_10000C010;
  if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "config_pipe";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: bandwidth too large\n", &v10, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100001A18(int a1, uint64_t a2)
{
  v17 = 0;
  v16 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if ((sub_100001408(&v17, &v16) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v17;
  v5 = v16;
  v6 = v17;
  do
  {
    if (v5 < 0x160 || (v7 = v6, *v6 != 0x4000))
    {
      v11 = 0;
      if (!v17)
      {
        return v11;
      }

      goto LABEL_15;
    }

    v8 = 184 * *(v6 + 67) + 352;
    v6 += v8;
    v5 -= v8;
  }

  while (*(v7 + 2) != a1);
  v9 = *(v7 + 51);
  if (v9)
  {
    if (v9 == 0x7FFFFFFF)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9 / 2147483650.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  v12 = *(v7 + 4);
  v13 = *(v7 + 3) / 1000;
  *(a2 + 8) = v10;
  *a2 = v13;
  *(a2 + 4) = 0;
  v14 = *(v7 + 50);
  *(a2 + 12) = v12;
  *(a2 + 16) = v14;
  *(a2 + 20) = (*(v7 + 89) >> 3) & 1;
  v11 = 1;
  if (v4)
  {
LABEL_15:
    free(v4);
  }

  return v11;
}

BOOL sub_100001B48()
{
  v4 = 0;
  v3 = 4;
  v0 = sysctlbyname("net.link.generic.system.enable_netagent", &v4, &v3, 0, 0);
  if (v0)
  {
    v1 = v0;
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100004E9C(v1);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "enable_netagent = 0x%x\n", buf, 8u);
    }

    return v4 == 1;
  }

  return result;
}

void sub_100001C48(int a1)
{
  v4 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "set enable_netagent %d", buf, 8u);
  }

  v2 = sysctlbyname("net.link.generic.system.enable_netagent", 0, 0, &v4, 4uLL);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004F40(&v4, v3);
    }
  }
}

uint64_t sub_100001D44()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v1 = 136315650;
    v2 = "kc_stop_simulation";
    v3 = 1024;
    v4 = dword_10000C070;
    v5 = 1024;
    v6 = sub_10000202C();
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: kc_was_netagent_disabled %d netem_is_simulation_on() %d", &v1, 0x18u);
  }

  if (sub_10000202C())
  {
    return sub_100002858();
  }

  if (dword_10000C070 == 1)
  {
    sub_100001C48(1);
    LOBYTE(dword_10000C070) = 0;
  }

  return sub_100005AF8();
}

uint64_t sub_100001E44(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "kc_start_simulation";
    v7 = 1024;
    v8 = dword_10000C070;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: kc_was_netagent_disabled %d", &v5, 0x12u);
  }

  v2 = sub_100002038(a1);
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (!v2)
  {
    if (v3)
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "simulation using packetfilter", &v5, 2u);
    }

    if (sub_100001B48())
    {
      sub_100001C48(0);
      LOBYTE(dword_10000C070) = 1;
    }

    return sub_100005C7C(a1);
  }

  if (v3)
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "simulation using NetEm", &v5, 2u);
  }

  result = sub_1000022AC(a1);
  if (result != 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004FD0();
    }

    return sub_100005C7C(a1);
  }

  return result;
}

uint64_t sub_100001FD0(uint64_t a1)
{
  if (sub_10000202C())
  {

    return sub_100002944(a1);
  }

  else
  {

    return sub_1000054E0(a1);
  }
}

uint64_t sub_100002038(_DWORD *a1)
{
  v6 = 0;
  v5 = 4;
  if (sysctlbyname("net.link.generic.system.if_attach_nx", &v6, &v5, 0, 0))
  {
    return 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "if_attach_nx = 0x%x\n", buf, 8u);
  }

  if ((~v6 & 7) != 0)
  {
    return 0;
  }

  if (a1[2])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v2 = "NetEm doesn't support secondary condition";
LABEL_20:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v2, buf, 2u);
      return 0;
    }

    return 0;
  }

  if (!a1[29])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v2 = "NetEm doesn't support loopback";
      goto LABEL_20;
    }

    return 0;
  }

  if (a1[28] || a1[40] || a1[42] || a1[41] || a1[49] || a1[50] || a1[51])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v2 = "NetEm doesn't support family/proto/port config";
      goto LABEL_20;
    }

    return 0;
  }

  if (a1[38] || a1[39] || a1[47] || a1[48])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v2 = "NetEm doesn't support qsize config";
    goto LABEL_20;
  }

  v3 = 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "use NetEm simulation", buf, 2u);
  }

  return v3;
}

uint64_t sub_1000022AC(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  LODWORD(v13) = 1;
  v1 = *(a1 + 172);
  if (v1)
  {
    v2 = *(a1 + 176);
    if (v2 == 1)
    {
      v3 = 1000000;
    }

    else
    {
      if (v2)
      {
        goto LABEL_8;
      }

      v3 = 1000;
    }

    v1 = v1 * v3;
  }

  else
  {
    v1 = -1;
  }

LABEL_8:
  *(&v13 + 1) = v1;
  v4 = *(a1 + 180) * 100000.0;
  LODWORD(v14) = *(a1 + 184);
  LODWORD(v15) = v4;
  LODWORD(v17) = 1;
  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = *(a1 + 140);
    if (v6 == 1)
    {
      v7 = 1000000;
    }

    else
    {
      if (v6)
      {
        goto LABEL_15;
      }

      v7 = 1000;
    }

    v5 = v5 * v7;
  }

  else
  {
    v5 = -1;
  }

LABEL_15:
  *(&v17 + 1) = v5;
  v9 = *(a1 + 120);
  v8 = a1 + 120;
  v10 = *(v8 + 24) * 100000.0;
  LODWORD(v18) = *(v8 + 28);
  LODWORD(v19) = v10;
  if (v9)
  {
    if (sub_10000240C(v8, v12))
    {
      return 0;
    }
  }

  else if (sub_1000026D8(v12, 1))
  {
    return 0;
  }

  result = 1;
  BYTE1(dword_10000C070) = 1;
  return result;
}

uint64_t sub_10000240C(char *a1, uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  if (a1)
  {
    *__error() = 0;
    v4 = socket(2, 2, 0);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      __strlcpy_chk();
      if (ioctl(v5, 0xC02069D8uLL, &v16) < 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v9 = __error();
          v10 = strerror(*v9);
          *buf = 136315394;
          v13 = v10;
          v14 = 2080;
          v15 = a1;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ioctl get no traffic shaping error %s on %s", buf, 0x16u);
        }
      }

      else if (v17)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v13 = a1;
          v6 = "no traffic shaping on %s";
          v7 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v6, buf, 0xCu);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      __strlcpy_chk();
      if ((ioctl(v5, 0xC0F06991uLL, a2) & 0x80000000) == 0 || *__error() == 2 || *__error() == 6 || *__error() == 19)
      {
        if (*__error() == 6)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10000512C();
          }
        }

        else
        {
          if (*__error() != 19)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v13 = a1;
              v6 = "set interface link parameters on %s";
              v7 = OS_LOG_TYPE_INFO;
              goto LABEL_25;
            }

LABEL_26:
            v8 = 0;
            goto LABEL_27;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000050B4();
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100005018();
      }

      v8 = 0xFFFFFFFFLL;
LABEL_27:
      close(v5);
      return v8;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000051A4();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000026D8(uint64_t a1, char a2)
{
  v9 = 0;
  if (getifaddrs(&v9))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000051E8();
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v9;
  if (v9)
  {
    v6 = 0;
    while (1)
    {
      if (v5->ifa_flags)
      {
        ifa_name = v5->ifa_name;
        if (!v6 || strcmp(v6, v5->ifa_name))
        {
          if (sub_100002C88(ifa_name))
          {
            if (sub_10000240C(v5->ifa_name, a1))
            {
              v6 = ifa_name;
              if (a2)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_19;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10000526C(&v10, &v5->ifa_name, &v11);
          }

          v6 = ifa_name;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000052B0(&v12, v5, &v13);
      }

LABEL_19:
      v5 = v5->ifa_next;
      if (!v5)
      {
        v8 = v9;
        goto LABEL_22;
      }
    }
  }

  v8 = 0;
LABEL_22:
  freeifaddrs(v8);
  return 0;
}

uint64_t sub_100002858()
{
  memset(v2, 0, sizeof(v2));
  if (sub_1000026D8(v2, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000052F4();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "netem simulation stop", v1, 2u);
  }

  BYTE1(dword_10000C070) = 0;
  return 1;
}

uint64_t sub_100002944(uint64_t a1)
{
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0;
  v12 = v13;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000051A4();
    }

    return 0;
  }

  v3 = v2;
  if (getifaddrs(&v11) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000051E8();
  }

  v4 = v11;
  if (!v11)
  {
LABEL_16:
    close(v3);
    return 0;
  }

  while ((v4->ifa_flags & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000537C(&v26, v4, &v27);
    }

LABEL_15:
    v4 = v4->ifa_next;
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  p_ifa_name = &v4->ifa_name;
  if ((sub_100002C88(v4->ifa_name) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000526C(&v24, &v4->ifa_name, &v25);
    }

    goto LABEL_15;
  }

  v6 = *p_ifa_name;
  __strlcpy_chk();
  if (ioctl(v3, 0xC0F06992uLL, &v12) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100005338(&v9, v10);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = *p_ifa_name;
    *buf = 136315138;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "get interface link parameters on %s", buf, 0xCu);
  }

  if (sub_100002BFC(*(&v14 + 1), (a1 + 172), (a1 + 176)) || sub_100002BFC(*(&v18 + 1), (a1 + 136), (a1 + 140)))
  {
    return 0;
  }

  *(a1 + 180) = v16 / 100000.0;
  *(a1 + 144) = v20 / 100000.0;
  *(a1 + 184) = v15;
  *(a1 + 148) = v19;
  return 1;
}

uint64_t sub_100002BFC(unint64_t a1, unsigned int *a2, int *a3)
{
  v3 = a1;
  if (a1 > 0xF4240)
  {
    v4 = 1;
LABEL_5:
    result = 0;
    *a3 = v4;
    *a2 = v3 / 0xF4240;
    return result;
  }

  if (a1 > 0x3E8)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000053C0();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100002C88(const char *a1)
{
  v7 = 0u;
  v8 = 0u;
  v2 = strlen(off_10000C008);
  if (strncmp(a1, off_10000C008, v2))
  {
    v3 = socket(2, 2, 0);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      __strlcpy_chk();
      if (ioctl(v4, 0xC020699FuLL, &v7))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100005438();
        }
      }

      else if (v8 == 6 || v8 == 255 || v8 == 144)
      {
        v5 = 1;
        goto LABEL_14;
      }

      v5 = 0;
LABEL_14:
      close(v4);
      return v5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000051A4();
    }
  }

  return 0;
}

float *sub_100002DE8@<X0>(float *result@<X0>, void *a2@<X2>, uint64_t a3@<X8>, float a4@<S0>)
{
  *result = a4;
  *a2 = a3;
  return result;
}

void sub_100002DF4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_100002E0C(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  mig_reply_setup(a1, a2);
  a2[1].msgh_remote_port = -300;
  msgh_id = a1->msgh_id;
  if ((msgh_id - 78) > 0xFFFFFFF1)
  {
    if (msgh_id == 70)
    {
      a2->msgh_bits = 0;
      a2->msgh_remote_port = 0;
      result = 1;
      a2[1].msgh_remote_port = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_100004E04(a1, a2);
  }

  return result;
}

uint64_t sub_100002E90()
{
  sp = 0;
  if (bootstrap_check_in(bootstrap_port, "com.apple.NetworkLinkConditioner", &sp))
  {
    v1 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "bootstrap_check_in failed, no port to listen on", v2, 2u);
    }

    exit(104);
  }

  mach_port_allocate(mach_task_self_, 3u, &dword_10000C080);
  return mach_port_move_member(mach_task_self_, sp, dword_10000C080);
}

uint64_t start(uint64_t a1, char **a2)
{
  errorbuf = 0;
  if (sandbox_init("nlcd", 1uLL, &errorbuf) == -1)
  {
    sub_1000054B0(&errorbuf);
  }

  v3 = *a2;
  v4 = strrchr(v3, 47);
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = v3;
  }

  qword_10000C078 = v5;
  off_10000C010 = os_log_create("com.apple.nlcd", "default");
  sub_100002E90();
  v6 = time(0);
  srandom(v6);
  sub_100000D74();
  mach_msg_server(sub_100002E0C, 0x2044u, dword_10000C080, 50331648);
  return 0;
}

uint64_t sub_10000303C(const char *a1, int a2, uint64_t *a3)
{
  v6 = &dword_10000C000;
  if (dword_10000C018)
  {
    v7 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "pf_add_pipe";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:begin", buf, 0xCu);
    }
  }

  if (!a1)
  {
    v11 = off_10000C010;
    if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v56 = "pf_add_pipe";
    v12 = "%s: conf == NULL";
LABEL_55:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
    goto LABEL_56;
  }

  v8 = *a1;
  if (a2)
  {
    if ((v8 & 4) == 0)
    {
      v9 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "pf_add_pipe";
        v10 = "%s: OUTDIR && !(conf->flags & NLC_FLAG_SIMULATE_UPLINK)";
LABEL_14:
        v13 = v9;
        v14 = 12;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v10, buf, v14);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v16 = 28;
  }

  else
  {
    if ((v8 & 8) == 0)
    {
      v9 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "pf_add_pipe";
        v10 = "%s: INDIR && !(conf->flags & NLC_FLAG_SIMULATE_DOWNLINK)";
        goto LABEL_14;
      }

LABEL_16:
      v15 = 0;
      goto LABEL_57;
    }

    v16 = 64;
  }

  v17 = sub_10000134C();
  if (v17 == -1)
  {
    v11 = off_10000C010;
    if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v56 = "pf_add_pipe";
    v12 = "%s: getDummynetPipeNumber() returned -1 ";
    goto LABEL_55;
  }

  v18 = v17;
  v19 = &a1[v16];
  if ((sub_100001870(v17, &a1[v16]) & 0x80000000) != 0)
  {
    v11 = off_10000C010;
    if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v56 = "pf_add_pipe";
    v12 = "%s: config_pipe() returned -1 ";
    goto LABEL_55;
  }

  v20 = 0;
  v21 = 1;
  if (a2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v52 = v18;
  v53 = v18;
  value = v22;
  while (1)
  {
    v23 = v21;
    v24 = xpc_dictionary_create(0, 0, 0);
    if (!v24)
    {
      v48 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "pf_add_pipe";
        v57 = 1024;
        v58 = v52;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create pipe %d failed", buf, 0x12u);
      }

      goto LABEL_75;
    }

    v25 = v24;
    v26 = v6;
    xpc_dictionary_set_uint64(v24, kPFAction, 0xBuLL);
    xpc_dictionary_set_uint64(v25, kPFDirection, value);
    v27 = 1;
    xpc_dictionary_set_BOOL(v25, kPFQuick, 1);
    xpc_dictionary_set_BOOL(v25, kPFAllowOpts, 1);
    v28 = *(a1 + 1);
    v29 = 58;
    v30 = 2;
    if (v28 == 2 || !(v28 | v20) || (v27 = 58, v29 = 1, v30 = 30, v28 == 30) || (v20 & (v28 == 0)) != 0)
    {
      xpc_dictionary_set_uint64(v25, kPFFamily, v30);
      v31 = v19[6];
      if (v31 == v29)
      {
        v32 = v27;
      }

      else
      {
        v32 = v31;
      }

      xpc_dictionary_set_uint64(v25, kPFProtocol, v32);
    }

    v33 = xpc_dictionary_create(0, 0, 0);
    if (!v33)
    {
      v49 = off_10000C010;
      v6 = v26;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v34 = v33;
    xpc_dictionary_set_uint64(v33, kPFSubDummyNetPipe, v53);
    xpc_dictionary_set_uint64(v34, kPFSubDummyNetPipeType, 0x4000uLL);
    xpc_dictionary_set_value(v25, kPFDummyNet, v34);
    xpc_release(v34);
    v35 = v19[8];
    v6 = v26;
    if (!v35)
    {
      goto LABEL_40;
    }

    v36 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "pf_add_pipe";
      v57 = 1024;
      v58 = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s: linkconfig->src_port %u", buf, 0x12u);
    }

    v37 = xpc_dictionary_create(0, 0, 0);
    if (!v37)
    {
      v49 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
LABEL_73:
        *buf = 136315394;
        v56 = "pf_add_pipe";
        v57 = 1024;
        v58 = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create subrule_dn %d failed", buf, 0x12u);
      }

LABEL_74:
      xpc_release(v25);
LABEL_75:
      v15 = 12;
      goto LABEL_57;
    }

    v38 = v37;
    xpc_dictionary_set_string(v37, kPFSubAddressLabel, kPFAny);
    xpc_dictionary_set_uint64(v38, kPFSubLowPort, v19[8]);
    xpc_dictionary_set_uint64(v38, kPFSubPortOperator, 2uLL);
    xpc_dictionary_set_value(v25, kPFFrom, v38);
    xpc_release(v38);
LABEL_40:
    v39 = v19[7];
    if (v39)
    {
      v40 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "pf_add_pipe";
        v57 = 1024;
        v58 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s: linkconfig->dst_port %u", buf, 0x12u);
      }

      v41 = xpc_dictionary_create(0, 0, 0);
      if (!v41)
      {
        v49 = off_10000C010;
        if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      v42 = v41;
      xpc_dictionary_set_string(v41, kPFSubAddressLabel, kPFAny);
      xpc_dictionary_set_uint64(v42, kPFSubLowPort, v19[7]);
      xpc_dictionary_set_uint64(v42, kPFSubPortOperator, 2uLL);
      xpc_dictionary_set_value(v25, kPFTo, v42);
      xpc_release(v42);
    }

    if (a1[12])
    {
      xpc_dictionary_set_string(v25, kPFInterface, a1 + 12);
    }

    v43 = *a3;
    v44 = a3[1];
    v45 = PFUserAddRule();
    xpc_release(v25);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v15 = *(a1 + 1);
    if (v15)
    {
      v51 = off_10000C010;
      if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 136315394;
      v56 = "pf_add_pipe";
      v57 = 1024;
      v58 = v15;
      v10 = "%s: done netlink->family != AF_UNSPEC %u";
      v13 = v51;
      v14 = 18;
      goto LABEL_15;
    }

    v21 = 0;
    v20 = 1;
    if ((v23 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v50 = off_10000C010;
  if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v56 = "pf_add_pipe";
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s: PFUserAddRule failed", buf, 0xCu);
  }

  sub_1000015C0(v52);
LABEL_56:
  v15 = 0xFFFFFFFFLL;
LABEL_57:
  if (v6[6])
  {
    v46 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "pf_add_pipe";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s:end", buf, 0xCu);
    }
  }

  return v15;
}

uint64_t sub_1000038E0(uint64_t *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_noloopbackrule";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v13, 0xCu);
    }
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    xpc_dictionary_set_uint64(v3, kPFAction, 0xCuLL);
    xpc_dictionary_set_uint64(v4, kPFDirection, 0);
    xpc_dictionary_set_BOOL(v4, kPFQuick, 1);
    xpc_dictionary_set_string(v4, kPFInterface, "lo0");
    v5 = *a1;
    v6 = a1[1];
    v7 = PFUserAddRule();
    xpc_release(v4);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "pf_add_noloopbackrule";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: PFUserAddRule failed", &v13, 0xCu);
      }

      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_noloopbackrule";
      v8 = 12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create failed", &v13, 0xCu);
    }

    else
    {
      v8 = 12;
    }
  }

  if (dword_10000C018)
  {
    v11 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_noloopbackrule";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:end", &v13, 0xCu);
    }
  }

  return v8;
}

uint64_t sub_100003B4C(uint64_t *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_allowoptsrule";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v13, 0xCu);
    }
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    xpc_dictionary_set_uint64(v3, kPFAction, 0);
    xpc_dictionary_set_uint64(v4, kPFDirection, 0);
    xpc_dictionary_set_BOOL(v4, kPFAllowOpts, 1);
    v5 = *a1;
    v6 = a1[1];
    v7 = PFUserAddRule();
    xpc_release(v4);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "pf_add_allowoptsrule";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: PFUserAddRule failed", &v13, 0xCu);
      }

      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_allowoptsrule";
      v8 = 12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create", &v13, 0xCu);
    }

    else
    {
      v8 = 12;
    }
  }

  if (dword_10000C018)
  {
    v11 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_add_allowoptsrule";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:end", &v13, 0xCu);
    }
  }

  return v8;
}

uint64_t sub_100003D9C(uint64_t *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "pf_add_scrubrule";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v16, 0xCu);
    }
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    v11 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "pf_add_scrubrule";
      v10 = 12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create", &v16, 0xCu);
      goto LABEL_17;
    }

LABEL_13:
    v10 = 12;
    goto LABEL_17;
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, kPFAction, 2uLL);
  xpc_dictionary_set_uint64(v4, kPFDirection, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    v12 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "pf_add_scrubrule";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: xpc_dictionary_create subrule_scrub failed", &v16, 0xCu);
    }

    xpc_release(v4);
    goto LABEL_13;
  }

  v6 = v5;
  xpc_dictionary_set_uint64(v5, kPFSubScrubFlags, 0x100uLL);
  xpc_dictionary_set_value(v4, kPFScrubOptions, v6);
  xpc_release(v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = PFUserAddRule();
  xpc_release(v4);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v13 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "pf_add_scrubrule";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: PFUserAddRule failed", &v16, 0xCu);
    }

    v10 = 0xFFFFFFFFLL;
  }

LABEL_17:
  if (dword_10000C018)
  {
    v14 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "pf_add_scrubrule";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:end", &v16, 0xCu);
    }
  }

  return v10;
}

uint64_t sub_100004080(uint64_t *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_delete_pipes";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v13, 0xCu);
    }
  }

  v3 = *a1;
  v4 = PFUserCopyRules_S();
  v5 = v4;
  if (v4)
  {
    if (xpc_array_get_count(v4))
    {
      v6 = 0;
      while (1)
      {
        value = xpc_array_get_value(v5, v6);
        if (!value)
        {
          break;
        }

        v8 = sub_100004290(value);
        if (v8 >= 1)
        {
          sub_1000015C0(v8);
        }

        if (xpc_array_get_count(v5) <= ++v6)
        {
          goto LABEL_17;
        }
      }

      v9 = off_10000C010;
      if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "pf_delete_pipes";
        v10 = "%s: pf_delete_pipes failed";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v9 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_delete_pipes";
      v10 = "%s: PFUserCopyRules_S failed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
    }
  }

LABEL_17:
  if (dword_10000C018)
  {
    v11 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "pf_delete_pipes";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:end", &v13, 0xCu);
    }
  }

  if (v5)
  {
    xpc_release(v5);
  }

  return 0;
}

uint64_t sub_100004290(void *a1)
{
  value = xpc_dictionary_get_value(a1, kPFDummyNet);
  if (value && (v2 = value, xpc_dictionary_get_uint64(value, kPFSubDummyNetPipeType) == 0x4000))
  {
    return xpc_dictionary_get_uint64(v2, kPFSubDummyNetPipe);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000042F8(uint64_t *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "makePFContext";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v11, 0xCu);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v3 = PFUserCreate();
  if (v3)
  {
    v4 = v3;
    v5 = PFUserBeginRules();
    if (v5 != -1)
    {
      v6 = v5;
      result = 0;
      *a1 = v4;
      a1[1] = v6;
      return result;
    }

    v9 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "makePFContext";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: PFUserBeginRules failed", &v11, 0xCu);
    }

    PFUserRelease();
  }

  else
  {
    v8 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "makePFContext";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: PFUserCreate failed", &v11, 0xCu);
    }
  }

  if (dword_10000C018)
  {
    v10 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "makePFContext";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:end", &v11, 0xCu);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_100004514(void *a1)
{
  if (dword_10000C018)
  {
    v2 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "cleanPFContext";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:begin", &v4, 0xCu);
    }
  }

  if (*a1)
  {
    PFUserRelease();
  }

  *a1 = 0;
  a1[1] = 0;
  if (dword_10000C018)
  {
    v3 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "cleanPFContext";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:end", &v4, 0xCu);
    }
  }
}

uint64_t sub_100004640(int a1, uint64_t a2)
{
  if (dword_10000C018)
  {
    v4 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "pf_find_token";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:begin", buf, 0xCu);
    }
  }

  *buf = 0uLL;
  if (ioctl(a1, 0xC0104405uLL, buf) < 0)
  {
    if (*__error() == 2)
    {
      goto LABEL_18;
    }

    v11 = off_10000C010;
    if (!os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *v24 = 136315138;
    v25 = "pf_find_token";
    v12 = "%s: DIOCGETSTARTERS failed";
    v13 = v11;
    v14 = 12;
    goto LABEL_17;
  }

  v5 = malloc_type_malloc(2 * *buf, 0xBA60B21uLL);
  if (v5)
  {
    v6 = v5;
    *&buf[8] = v5;
    if (ioctl(a1, 0xC0104405uLL, buf) < 0)
    {
      if (*__error() != 2)
      {
        v17 = off_10000C010;
        if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
        {
          *v24 = 136315138;
          v25 = "pf_find_token";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: DIOCGETSTARTERS failed", v24, 0xCu);
        }
      }
    }

    else
    {
      v7 = *buf;
      if (*buf >= 1)
      {
        v8 = 0;
        v9 = qword_10000C078;
        v10 = *&buf[8] + 20;
        while (strcmp(v10, v9))
        {
          v8 += 84;
          v10 += 84;
          if (v8 >= v7)
          {
            goto LABEL_22;
          }
        }

        v20 = *(v10 - 4);
        *a2 = *(v10 - 20);
        *(a2 + 16) = v20;
        v21 = *(v10 + 12);
        v22 = *(v10 + 28);
        v23 = *(v10 + 44);
        *(a2 + 80) = *(v10 + 60);
        *(a2 + 48) = v22;
        *(a2 + 64) = v23;
        *(a2 + 32) = v21;
        v16 = 1;
        goto LABEL_23;
      }
    }

LABEL_22:
    v16 = 0;
LABEL_23:
    free(v6);
    goto LABEL_24;
  }

  v15 = off_10000C010;
  if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    v12 = "malloc";
    v13 = v15;
    v14 = 2;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, v24, v14);
  }

LABEL_18:
  v16 = 0;
LABEL_24:
  if (dword_10000C018)
  {
    v18 = off_10000C010;
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      *v24 = 136315138;
      v25 = "pf_find_token";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:end", v24, 0xCu);
    }
  }

  return v16;
}

void sub_100004954(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0xCu);
}

BOOL sub_100004980()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_1000049C4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

uint64_t sub_1000049F0()
{
  v3 = *v0;

  return xpc_dictionary_get_uint64(v1, v3);
}

uint64_t sub_100004A08(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 40273) >= 0xFFFFFFFB)
  {
    return *(&off_1000082C0 + 5 * (v1 - 40268) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_100004A44(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x11000000000000;
  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = sub_100000EB8(v5, (a2 + 28), (a2 + 48), (a2 + 52), v7);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100004B20(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100001254(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_100004BA4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result[1], (v3 - 1065) >= 0xFFFFFBFF) && (v4 = result[8], v4 <= 0x400) && ((v5 = (v4 + 3) & 0xFFFFFFFC, v3 - 40 >= v4) ? (v6 = v3 == v5 + 40) : (v6 = 0), v6))
  {
    result = sub_100000844(result[3], result + 9, v4, *(result + v5 + 36), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

_DWORD *sub_100004C5C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result[1], (v3 - 1065) >= 0xFFFFFBFF) && (v4 = result[8], v4 <= 0x400) && ((v5 = (v4 + 3) & 0xFFFFFFFC, v3 - 40 >= v4) ? (v6 = v3 == v5 + 40) : (v6 = 0), v6))
  {
    result = sub_1000009C0(result[3], result + 9, v4, *(result + v5 + 36), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

_DWORD *sub_100004D14(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result[1], (v3 - 1065) >= 0xFFFFFBFF) && (v4 = result[8], v4 <= 0x400) && ((v5 = (v4 + 3) & 0xFFFFFFFC, v3 - 40 >= v4) ? (v6 = v3 == v5 + 40) : (v6 = 0), v6))
  {
    v8 = 0;
    *(a2 + 36) = 1024;
    result = sub_100000B84(result[3], result + 9, v4, (a2 + 40), (a2 + 36), *(result + v5 + 36), &v8);
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      v7 = (*(a2 + 36) + 3) & 0xFFFFFFFC;
      *(a2 + 4) = v7 + 44;
      *(a2 + v7 + 40) = v8;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t sub_100004E04(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 40273) >= 0xFFFFFFFB && (v5 = *(&off_1000082C0 + 5 * (v4 - 40268) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100004E9C(int a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "error getting enable_netagent sysctl err(%d) %s", v4, 0x12u);
}

void sub_100004F40(int *a1, int a2)
{
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "error setting enable_netagent sysctl to %d, err(%d)", v3, 0xEu);
}

void sub_100005018()
{
  v0 = __error();
  strerror(*v0);
  sub_100002DDC();
  sub_100002DD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000050B4()
{
  sub_100002DDC();
  sub_100002DD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000512C()
{
  sub_100002DDC();
  sub_100002DD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000051E8()
{
  v5 = *__error();
  sub_100002DD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100005338(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ioctl (get link params)", buf, 2u);
}

void sub_1000053C0()
{
  sub_100002DDC();
  sub_100002DD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005438()
{
  sub_100002DDC();
  sub_100002DD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

BOOL sub_1000054E0(uint64_t a1)
{
  v87 = 0uLL;
  v88 = 0;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v81[0] = 0;
  v81[1] = 0;
  v2 = &off_10000C010;
  if (dword_10000C018 && os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v86 = "pf_list_rules";
    sub_100004974();
    _os_log_impl(v3, v4, v5, v6, v7, v8);
  }

  v9 = sub_1000042F8(v81);
  if (v9)
  {
    goto LABEL_67;
  }

  v10 = PFUserCopyRules_S();
  if (!v10)
  {
    if (sub_1000049C4())
    {
      *buf = 136315138;
      v86 = "pf_list_rules";
      sub_100004974();
      _os_log_impl(v45, v46, v47, v48, v49, v50);
    }

    goto LABEL_67;
  }

  v11 = v10;
  count = xpc_array_get_count(v10);
  *(a1 + 8) = 0u;
  v13 = a1 + 8;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0;
  v14 = v11;
  if (!count)
  {
    goto LABEL_66;
  }

  v15 = count;
  v16 = 0;
  v17 = 0;
  v80 = 0;
  v77 = 0;
  v79 = 0;
  v18 = 0;
  v19 = -1;
  v76 = v14;
  while (1)
  {
    value = xpc_array_get_value(v14, v16);
    if (!value)
    {
      v51 = *v2;
      v52 = sub_1000049AC();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_66;
      }

      *buf = 136315138;
      v86 = "pf_list_rules";
      goto LABEL_64;
    }

    v21 = value;
    v22 = sub_100004290(value);
    if (v22 < 0)
    {
      v37 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        sub_1000049DC();
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s: rule_pipenum %d < 0", buf, 0x12u);
      }

      goto LABEL_52;
    }

    v78 = v18;
    if (v15 > v17 + 1)
    {
      break;
    }

LABEL_22:
    if (sub_100001A18(v22, &v82) <= 0)
    {
      v54 = *v2;
      v55 = sub_1000049AC();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_66;
      }

      *buf = 136315394;
      sub_1000049DC();
      v57 = &_mh_execute_header;
      v58 = "%s: unknown pipe %d";
      v59 = buf;
      v60 = v54;
      v61 = OS_LOG_TYPE_INFO;
      v62 = 18;
      goto LABEL_65;
    }

    uint64 = 0;
    v87 = 0uLL;
    v88 = 0;
    if (!v79)
    {
      uint64 = xpc_dictionary_get_uint64(v21, kPFFamily);
    }

    DWORD2(v83) = xpc_dictionary_get_uint64(v21, kPFProtocol);
    v32 = xpc_dictionary_get_value(v21, kPFFrom);
    if (v32)
    {
      v33 = v32;
      if (xpc_dictionary_get_uint64(v32, kPFSubPortOperator) == 2)
      {
        v84 = xpc_dictionary_get_uint64(v33, kPFSubLowPort);
      }
    }

    v34 = xpc_dictionary_get_value(v21, kPFTo);
    if (v34)
    {
      v35 = v34;
      if (xpc_dictionary_get_uint64(v34, kPFSubPortOperator) == 2)
      {
        HIDWORD(v83) = xpc_dictionary_get_uint64(v35, kPFSubLowPort);
      }
    }

    if (!v80 || uint64 != *v80 && (*v80 == 2 ? (v38 = uint64 == 30) : (v38 = 0), !v38 || DWORD2(v83) != 58 || *(v77 + 6) != 1))
    {
      sub_1000049F0();
LABEL_47:
      if (v19 >= 1)
      {
        v63 = *v2;
        v64 = sub_1000049AC();
        if (!os_log_type_enabled(v64, v65))
        {
          goto LABEL_66;
        }

        *buf = 136315138;
        v86 = "pf_list_rules";
LABEL_64:
        sub_100004974();
LABEL_65:
        _os_log_impl(v57, v60, v61, v58, v59, v62);
        goto LABEL_66;
      }

      v18 = (v13 + 100 * ++v19);
      goto LABEL_49;
    }

    v36 = sub_1000049F0();
    if (v36 == 2)
    {
      v18 = v78;
      if ((*v78 & 4) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v18 = v78;
      if (v36 == 1 && (*v78 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_49:
    *(v18 + 1) = uint64;
    v80 = v18 + 4;
    v39 = v87;
    *(v18 + 6) = v88;
    *(v18 + 8) = v39;
    v40 = sub_1000049F0();
    v41 = *v18;
    if (v40 == 1)
    {
      *v18 = v41 | 8;
      v77 = v18 + 64;
      v42 = v83;
      *(v18 + 4) = v82;
      *(v18 + 5) = v42;
      *(v18 + 24) = v84;
    }

    else
    {
      *v18 = v41 | 4;
      v77 = v18 + 28;
      v43 = v84;
      v44 = v83;
      *(v18 + 28) = v82;
      *(v18 + 44) = v44;
      *(v18 + 15) = v43;
    }

LABEL_52:
    v16 = ++v17;
    if (v15 <= v17)
    {
      goto LABEL_66;
    }
  }

  v23 = v14;
  v24 = v2;
  v25 = xpc_array_get_value(v23, v17 + 1);
  if (v25)
  {
    v26 = v25;
    v27 = sub_100004290(v25);
    if (v27 >= 1 && v22 == v27)
    {
      v75 = sub_1000049F0();
      v29 = xpc_dictionary_get_uint64(v26, kPFDirection);
      v30 = v79;
      if (v75 == v29)
      {
        v30 = 1;
      }

      v79 = v30;
      if (v75 == v29)
      {
        ++v17;
      }
    }

    v2 = v24;
    v14 = v76;
    goto LABEL_22;
  }

  v74 = *v2;
  v14 = v76;
  if (sub_1000049C4())
  {
    *buf = 136315138;
    v86 = "pf_list_rules";
    goto LABEL_64;
  }

LABEL_66:
  xpc_release(v14);
  v9 = 0;
LABEL_67:
  sub_100004514(v81);
  if (dword_10000C018)
  {
    v66 = *v2;
    if (sub_1000049C4())
    {
      *buf = 136315138;
      v86 = "pf_list_rules";
      sub_100004974();
      _os_log_impl(v67, v68, v69, v70, v71, v72);
    }
  }

  return v9 == 0;
}

uint64_t sub_100005AF8()
{
  v20[0] = 0;
  v20[1] = 0;
  if (dword_10000C018 && os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "pf_delete_rules";
    sub_100004974();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  if (sub_1000042F8(v20))
  {
    goto LABEL_9;
  }

  sub_100004080(v20);
  if ((PFUserDeleteRules() & 1) == 0)
  {
    if (os_log_type_enabled(off_10000C010, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "pf_delete_rules";
      sub_100004974();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:
  sub_100004514(v20);
  if (dword_10000C018 && sub_1000049C4())
  {
    v21 = 136315138;
    v22 = "pf_delete_rules";
    sub_100004974();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
  }

  return v6;
}

uint64_t sub_100005C7C(uint64_t a1)
{
  v91 = 0;
  v92 = 0;
  if (dword_10000C018 && sub_1000049C4())
  {
    sub_1000049B8();
    sub_100004974();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }

  if (sub_100005AF8())
  {
    if (sub_1000042F8(&v91) || sub_100003B4C(&v91) || sub_100003D9C(&v91))
    {
      goto LABEL_35;
    }

    v9 = 0;
    v10 = 0;
    v11 = a1 + 8;
    v12 = 1;
    *&v8 = 136315138;
    v84 = v8;
    do
    {
      v13 = v12;
      v14 = (v11 + 100 * v9);
      if (*v14)
      {
        if (v10)
        {
          v10 = 1;
        }

        else if (v14[2])
        {
          sub_1000038E0(&v91);
          v10 = v9 ^ 1;
        }

        else
        {
          v10 = 0;
        }

        if (sub_10000303C((v11 + 100 * v9), 0, &v91))
        {
          goto LABEL_35;
        }

        v18 = sub_1000049AC();
        if (sub_10000303C(v18, v19, v20))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v15 = off_10000C010;
        v16 = sub_1000049AC();
        if (os_log_type_enabled(v16, v17))
        {
          sub_1000049B8();
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: done conf->flags == 0", buf, 0xCu);
        }
      }

      v12 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    if (dword_10000C018)
    {
      v21 = sub_100004980();
      if (v21)
      {
        sub_10000499C(v21, v22, v23, v24, v25, v26, v27, v28, v84);
        sub_100004954(&_mh_execute_header, v29, v30, "%s:begin", v31, v32, v33, v34, v85, v88, v91, v92, buf[0]);
      }
    }

    if (PFUserCommitRules())
    {
      v35 = 0;
    }

    else
    {
      v43 = sub_100004980();
      if (v43)
      {
        sub_10000499C(v43, v44, v45, v46, v47, v48, v49, v50, v84);
        sub_100004954(&_mh_execute_header, v51, v52, "%s: PFUserCommitRules failed", v53, v54, v55, v56, v86, v89, v91, v92, buf[0]);
      }

      v35 = -1;
    }

    if (dword_10000C018)
    {
      v57 = sub_100004980();
      if (v57)
      {
        sub_10000499C(v57, v58, v59, v60, v61, v62, v63, v64, v84);
        sub_100004954(&_mh_execute_header, v65, v66, "%s:end", v67, v68, v69, v70, v87, v90, v91, v92, buf[0]);
      }
    }

    if (v35)
    {
LABEL_35:
      if (sub_100004980())
      {
        sub_1000049B8();
        sub_100004954(&_mh_execute_header, v71, v72, "%s: result != 0", v73, v74, v75, v76, v84, *(&v84 + 1), v91, v92, buf[0]);
      }

      sub_100004080(&v91);
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    sub_100004514(&v91);
    if (dword_10000C018 && sub_1000049C4())
    {
      sub_1000049B8();
      sub_100004974();
      _os_log_impl(v77, v78, v79, v80, v81, v82);
    }
  }

  else
  {
    if (sub_100004980())
    {
      sub_1000049B8();
      sub_100004954(&_mh_execute_header, v36, v37, "%s: pf_delete_rules() failed", v38, v39, v40, v41, v84, *(&v84 + 1), v91, v92, buf[0]);
    }

    return 0;
  }

  return v42;
}