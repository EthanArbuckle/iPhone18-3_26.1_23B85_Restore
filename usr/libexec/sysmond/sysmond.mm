uint64_t start()
{
  if (mach_port_allocate(mach_task_self_, 1u, &dword_10000CC68))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100004120();
    }
  }

  else
  {
    if (!mach_port_insert_right(mach_task_self_, dword_10000CC68, dword_10000CC68, 0x14u))
    {
      mach_service = xpc_connection_create_mach_service(SYSMON_XPC_SERVICE_NAME, 0, 1uLL);
      xpc_connection_set_event_handler(mach_service, &stru_1000083B8);
      xpc_connection_resume(mach_service);
      dispatch_main();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100004168();
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_100000C9C(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    v3 = xpc_connection_copy_entitlement_value();
    if (v3 && (v4 = v3, xpc_release(v3), v4 == &_xpc_BOOL_true))
    {
      v5 = _NSConcreteStackBlock;
      *&v6 = 0x40000000;
      *(&v6 + 1) = sub_100000E08;
      v7 = &unk_1000083D8;
      v8 = a2;
      xpc_connection_set_event_handler(a2, &v5);
      xpc_connection_resume(a2);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v5) = 67109378;
        HIDWORD(v5) = xpc_connection_get_pid(a2);
        LOWORD(v6) = 2080;
        *(&v6 + 2) = "com.apple.sysmond.client";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Client %d denied; missing %s entitlement.", &v5, 0x12u);
      }

      xpc_connection_cancel(a2);
    }
  }
}

void sub_100000E08(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v4 = sub_100002668(object);
    if (v4)
    {
      v5 = sub_100002718(v4);
      _os_object_release();
      xpc_dictionary_set_mach_send();
      if (v5)
      {
        xpc_connection_send_message(*(a1 + 32), v5);

        xpc_release(v5);
      }
    }

    else
    {

      xpc_dictionary_set_mach_send();
    }
  }
}

BOOL sub_100000EE8(uint64_t a1)
{
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *value = 0u;
  *v11 = 0u;
  memset(v9, 0, sizeof(v9));
  *v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  *v6 = 0u;
  v2 = sub_1000025F4(a1);
  v3 = proc_pidinfo(v2, 18, 0, v5, 192);
  if (v3 == 192)
  {
    if (HIDWORD(v5[1]) != v2)
    {
      sub_1000041B0();
    }

    sub_100002F68(a1, 1, LODWORD(v5[0]));
    sub_100002F68(a1, 2, HIDWORD(v5[0]));
    sub_100002F68(a1, 3, LODWORD(v5[1]));
    sub_100002F68(a1, 5, LODWORD(v6[0]));
    sub_100002F68(a1, 6, HIDWORD(v6[0]));
    sub_100002F68(a1, 7, LODWORD(v6[1]));
    sub_100002F68(a1, 8, HIDWORD(v6[1]));
    sub_100002F68(a1, 9, LODWORD(v7[0]));
    sub_100002F68(a1, 10, HIDWORD(v7[0]));
    sub_100002F68(a1, 11, LODWORD(v7[1]));
    sub_100003078(a1, 12, &v8);
    sub_100003078(a1, 13, v9);
    sub_100002F68(a1, 14, LODWORD(value[0]));
    sub_100002F68(a1, 15, HIDWORD(value[0]));
    sub_100002F68(a1, 16, LODWORD(value[1]));
    sub_100002F0C(a1, 17, SHIDWORD(value[1]));
    sub_100002F68(a1, 18, LODWORD(v11[0]));
    sub_100002F0C(a1, 19, SHIDWORD(v11[0]));
    sub_10000301C(a1, 20, 1000000000 * v11[1] + 1000 * v12);
    sub_100002F68(a1, 55, LODWORD(v6[0]));
    sub_100002EB0(a1, 56, (v5[0] & 0x800000) != 0);
    sub_100002F68(a1, 69, v13[1]);
    sub_100002F68(a1, 70, v14[0]);
    sub_100002F68(a1, 71, 0);
  }

  return v3 == 192;
}

BOOL sub_10000113C(uint64_t a1)
{
  *v13 = 0u;
  *v14 = 0u;
  v11 = 0u;
  *value = 0u;
  *v9 = 0u;
  v10 = 0u;
  v2 = sub_1000025F4(a1);
  v3 = proc_pidinfo(v2, 4, 0, v9, 96);
  if (v3 == 96)
  {
    sub_100002F68(a1, 21, v9[0]);
    sub_100002F68(a1, 22, v9[1]);
    v4 = sub_1000012E4(v10);
    sub_100002F68(a1, 23, v4);
    v5 = sub_1000012E4(*(&v10 + 1));
    sub_100002F68(a1, 24, v5);
    v6 = sub_1000012E4(v11);
    sub_100002F68(a1, 25, v6);
    v7 = sub_1000012E4(*(&v11 + 1));
    sub_100002F68(a1, 26, v7);
    sub_100002F0C(a1, 27, SLODWORD(value[0]));
    sub_100002F0C(a1, 28, SHIDWORD(value[0]));
    sub_100002F68(a1, 29, value[1] & ~(SLODWORD(value[1]) >> 31));
    sub_100002F0C(a1, 30, SHIDWORD(value[1]));
    sub_100002F0C(a1, 31, SLODWORD(v13[0]));
    sub_100002F0C(a1, 32, SHIDWORD(v13[0]));
    sub_100002F0C(a1, 33, SLODWORD(v13[1]));
    sub_100002F0C(a1, 34, SHIDWORD(v13[1]));
    sub_100002F0C(a1, 35, SLODWORD(v14[0]));
    sub_100002F0C(a1, 36, SHIDWORD(v14[0]));
    sub_100002F0C(a1, 37, SLODWORD(v14[1]));
    sub_100002F0C(a1, 38, SHIDWORD(v14[1]));
  }

  return v3 == 96;
}

unint64_t sub_1000012E4(unint64_t a1)
{
  if (qword_10000CC70 != -1)
  {
    sub_1000041CC();
  }

  return (*&qword_10000C9A0 * a1 / *&qword_10000C9A8);
}

BOOL sub_10000133C(uint64_t a1)
{
  value = 0;
  v6 = 0;
  v2 = sub_1000025F4(a1);
  v3 = proc_pidinfo(v2, 12, 0, &value, 16);
  if (v3 == 16)
  {
    sub_100002F68(a1, 39, value);
    sub_100002F68(a1, 40, HIDWORD(value));
    sub_100002F68(a1, 41, v6);
    sub_100002F68(a1, 42, HIDWORD(v6));
  }

  return v3 == 16;
}

BOOL sub_1000013D4(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  v2 = sub_1000025F4(a1);
  v3 = proc_pid_rusage(v2, 2, buffer);
  if (!v3)
  {
    sub_100002F68(a1, 63, v19);
    v4 = mach_absolute_time() - v19;
    v5 = sub_1000012E4(v4);
    sub_100002F68(a1, 61, v5);
    v6 = sub_1000012E4(v15);
    sub_100002F68(a1, 23, v6);
    v7 = sub_1000012E4(*(&v15 + 1));
    sub_100002F68(a1, 24, v7);
    sub_100002F68(a1, 47, v16);
    sub_100002F68(a1, 46, *(&v16 + 1));
    sub_100002F68(a1, 29, v17);
    sub_100002F68(a1, 65, *(&v17 + 1));
    sub_100002F68(a1, 22, v18);
    sub_100002F68(a1, 66, *(&v18 + 1));
    sub_1000025FC(a1);
    pm_sample_task_and_pid();
    pm_energy_impact();
    v9 = v8;
    if (sub_1000025F4(a1))
    {
      v10 = v9 * 1000000000.0;
      sub_100002F68(a1, 60, v10);
      v11 = sub_1000012E4(v4);
      sub_100002FC4(a1, 62, v10 * 100.0 / v11);
    }

    else
    {
      sub_100002F68(a1, 60, 0);
    }

    v12 = xpc_uuid_create(buffer);
    sub_100002E4C(a1, 64, v12);
    xpc_release(v12);
    sub_100002F68(a1, 72, v23);
    sub_100002F68(a1, 73, *(&v23 + 1));
  }

  return v3 == 0;
}

BOOL sub_10000168C(uint64_t a1)
{
  v7 = 0;
  *value = 0u;
  v6 = 0u;
  v2 = sub_1000025F4(a1);
  v3 = proc_pidinfo(v2, 20, 1uLL, value, 40);
  if (v3 == 40)
  {
    sub_100002F68(a1, 75, value[0]);
  }

  return v3 == 40;
}

void sub_1000016FC(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_10000C9A0 = v1;
    *&qword_10000C9A8 = v2;
  }
}

void *sub_100001750(void *a1, uint64_t a2)
{
  v4 = sub_100002948();
  v5 = xpc_retain(a1);
  v4[2] = v5;
  v6 = sub_100002BF8(v5);
  v4[3] = v6;
  v4[4] = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
  v4[5] = a2;
  sub_100002F68(v4, 1, a2);
  return v4;
}

xpc_object_t sub_1000017C8(uint64_t a1)
{
  v2 = xpc_array_create(0, 0);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v22 = sub_1000019DC;
  v23 = &unk_100008520;
  v24 = a1;
  v25 = v2;
  v3 = proc_listpids(1u, 0, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3, 0x7BC15F9DuLL);
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        v7 = proc_listpids(1u, 0, v6, v4);
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        v8 = v7;
        if ((v7 + 4) <= v4)
        {
          v9 = v7 >> 2;
          v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
          v11 = v10;
          if (v8 >= 4)
          {
            v12 = v6;
            v13 = v10;
            v14 = v8 >> 2;
            do
            {
              v15 = *v12++;
              v27 = 0;
              memset(buffer, 0, sizeof(buffer));
              v16 = proc_pidinfo(v15, 20, 1uLL, buffer, 40);
              v17 = *&buffer[0];
              if (v16 != 40)
              {
                v17 = 1;
              }

              *v13++ = v17;
              --v14;
            }

            while (v14);
          }

          free(v6);
          qsort_b(v11, v8 >> 2, 8uLL, &stru_100008560);
          if (*v11 != 1)
          {
            sub_1000041B0();
          }

          v22(v21, 1);
          if (v8 >= 8)
          {
            v18 = 1;
            v19 = 1;
            do
            {
              if (v11[v19] != v18)
              {
                (v22)(v21);
                v18 = v11[v19];
              }

              ++v19;
            }

            while (v9 != v19);
          }

          v6 = v11;
          break;
        }

        v4 += 64;
        v6 = reallocf(v6, v4);
        if (!v6)
        {
          return v2;
        }
      }

      free(v6);
    }
  }

  return v2;
}

void sub_1000019DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001750(*(a1 + 32), a2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100001AC8;
  v6[3] = &unk_100008500;
  v6[4] = &v7;
  v6[5] = v3;
  sub_100002B50(v4, v6);
  if ((v8[3] & 1) == 0)
  {
    v5 = sub_100002D74(v3);
    xpc_array_set_value(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v5);
    xpc_release(v5);
  }

  j___os_object_release();
  _Block_object_dispose(&v7, 8);
}

uint64_t sub_100001AC8(uint64_t result, int a2)
{
  v3 = result;
  v4 = 12;
  for (i = &off_100008440; ; i += 2)
  {
    if (*(i - 2) == a2)
    {
      result = sub_100002E08(*(v3 + 40), a2);
      if ((result & 1) == 0)
      {
        result = (*i)(*(v3 + 40));
        if ((result & 1) == 0)
        {
          break;
        }
      }
    }

    if (!--v4)
    {
      return result;
    }
  }

  *(*(*(v3 + 32) + 8) + 24) = 1;
  return result;
}

BOOL sub_100001B4C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = coalition_info_resource_usage();
  if (!v3)
  {
    sub_100002F68(a1, 2, 0);
    sub_100002F68(a1, 3, 0);
    sub_100002F68(a1, 4, 0);
    sub_100002F68(a1, 5, 0);
    sub_100002F68(a1, 6, 0);
    sub_100002F68(a1, 7, 0);
    sub_100002F68(a1, 8, 0);
    sub_100002F68(a1, 9, 0);
    pm_energy_impact();
    if (*(a1 + 40) == 1)
    {
      v4 = 0.0;
    }

    sub_100002FC4(a1, 12, v4);
  }

  return v3 == 0;
}

uint64_t sub_100001D04(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    sub_100003078(a1, 13, "com.apple.system");
    sub_100003078(a1, 14, "com.apple.system");
    return 1;
  }

  result = xpc_coalition_copy_info();
  if (result)
  {
    v3 = result;
    if (xpc_get_type(result) == &_xpc_type_dictionary)
    {
      string = xpc_dictionary_get_string(v3, XPC_COALITION_INFO_KEY_NAME);
      if (string)
      {
        sub_100003078(a1, 13, string);
      }

      v5 = xpc_dictionary_get_string(v3, XPC_COALITION_INFO_KEY_BUNDLE_IDENTIFIER);
      if (v5)
      {
        sub_100003078(a1, 14, v5);
      }

      xpc_release(v3);
      return 1;
    }

    return 0;
  }

  return result;
}

int sub_100001DE0(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 > *a3;
  }
}

BOOL sub_100001DF8(uint64_t a1)
{
  *value = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_1000025FC(a1);
  task_info_outCnt = 12;
  v3 = task_info(v2, 0x15u, v5, &task_info_outCnt);
  if (!v3)
  {
    sub_100002F68(a1, 48, value[0]);
    sub_100002F68(a1, 49, value[1]);
  }

  return v3 == 0;
}

uint64_t sub_100001E78(uint64_t a1)
{
  if (sub_1000025F4(a1))
  {
    v2 = sub_1000025FC(a1);
    memset(&basic_info, 0, sizeof(basic_info));
    if (!mach_port_space_basic_info(v2, &basic_info))
    {
      sub_100002F68(a1, 50, basic_info.iisb_table_inuse);
    }
  }

  return 1;
}

BOOL sub_100001ED8(uint64_t a1)
{
  value = 0;
  v2 = sub_1000025FC(a1);
  get_default = 0;
  policy_infoCnt = 2;
  v3 = task_policy_get(v2, 8u, &value, &policy_infoCnt, &get_default);
  if (!v3)
  {
    sub_100002F0C(a1, 57, value);
    sub_100002F0C(a1, 58, SHIDWORD(value));
  }

  return v3 == 0;
}

BOOL sub_100001F54(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  *value = 0u;
  *v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_1000025FC(a1);
  task_info_outCnt = 93;
  v3 = task_info(v2, 0x17u, v5, &task_info_outCnt);
  if (!v3)
  {
    sub_100002F68(a1, 59, value[1]);
    sub_100002F68(a1, 67, v10[1] + v6[0] - value[0]);
    sub_100002F68(a1, 68, v6[1]);
    sub_100002F68(a1, 74, v10[1]);
  }

  return v3 == 0;
}

uint64_t sub_100002038(uint64_t a1)
{
  *v15 = 0x3100000001;
  v16 = sub_1000025F4(a1);
  if (sub_1000025F4(a1))
  {
    if (qword_10000CC78 != -1)
    {
      sub_1000041E0();
    }

    v14 = dword_10000CC80;
    v2 = malloc_type_malloc(dword_10000CC80, 0x7B15123uLL);
    if (sysctl(v15, 3u, v2, &v14, 0, 0))
    {
      v3 = 0;
    }

    else
    {
      v3 = v14 >= 4;
    }

    if (!v3)
    {
      free(v2);
      return 0;
    }

    v6 = *v2;
    v7 = xpc_array_create(0, 0);
    v8 = v14 - 4;
    if (v14 != 4)
    {
      v9 = 0;
      v10 = 0;
      v11 = v2 + 4;
      do
      {
        v12 = v9;
        v9 = *v11;
        if (*v11)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13 && memchr(v11, 0, v8))
        {
          if (v10)
          {
            if (v10 <= v6)
            {
              xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, v11);
            }
          }

          else
          {
            sub_100003078(a1, 43, v11);
          }

          ++v10;
          v9 = *v11;
        }

        ++v11;
        --v8;
      }

      while (v8);
    }

    sub_100002E4C(a1, 44, v7);
    xpc_release(v7);
    free(v2);
  }

  else
  {
    v5 = xpc_array_create(0, 0);
    xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "kernel_task");
    sub_100002E4C(a1, 44, v5);
    xpc_release(v5);
  }

  return 1;
}

void sub_10000222C(id a1)
{
  v1 = 4;
  if (sysctlbyname("kern.argmax", &dword_10000CC80, &v1, 0, 0))
  {
    dword_10000CC80 = 0x40000;
  }
}

xpc_object_t sub_100002280(uint64_t a1)
{
  v2 = xpc_array_create(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v14 = sub_1000023F8;
  v15 = &unk_100008AA8;
  v16 = a1;
  v17 = v2;
  v3 = proc_listpids(1u, 0, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3, 0x8EA3EAEDuLL);
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        v7 = proc_listpids(1u, 0, v6, v4);
        v8 = v7;
        if ((v7 & 0x80000000) != 0)
        {
LABEL_7:
          qsort_b(v6, v8 >> 2, 4uLL, &stru_100008AE8);
          goto LABEL_8;
        }

        if ((v7 + 4) <= v4)
        {
          break;
        }

        v4 += 64;
        v6 = reallocf(v6, v4);
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v10 = v7 >> 2;
      qsort_b(v6, v10, 4uLL, &stru_100008AE8);
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = 4 * v10;
        do
        {
          v14(v13, *&v6[v11]);
          v11 += 4;
        }

        while (v12 != v11);
      }

LABEL_8:
      free(v6);
    }
  }

  return v2;
}

void sub_1000023F8(uint64_t a1, int a2)
{
  v3 = sub_100002578(*(a1 + 32), a2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000024E4;
  v6[3] = &unk_100008A88;
  v6[4] = &v7;
  v6[5] = v3;
  sub_100002B50(v4, v6);
  if ((v8[3] & 1) == 0)
  {
    v5 = sub_100002D74(v3);
    xpc_array_set_value(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v5);
    xpc_release(v5);
  }

  j___os_object_release();
  _Block_object_dispose(&v7, 8);
}

uint64_t sub_1000024E4(uint64_t result, int a2)
{
  v3 = result;
  v4 = 76;
  for (i = &off_1000085C8; ; i += 2)
  {
    if (*(i - 2) == a2)
    {
      result = sub_100002E08(*(v3 + 40), a2);
      if ((result & 1) == 0)
      {
        result = (*i)(*(v3 + 40));
        if ((result & 1) == 0)
        {
          break;
        }
      }
    }

    if (!--v4)
    {
      return result;
    }
  }

  *(*(*(v3 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t sub_100002578(void *a1, int a2)
{
  v4 = sub_1000028E0();
  v5 = xpc_retain(a1);
  *(v4 + 16) = v5;
  v6 = sub_100002BF8(v5);
  *(v4 + 24) = v6;
  *(v4 + 32) = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
  *(v4 + 40) = a2;
  *(v4 + 44) = 0;
  sub_100002F68(v4, 4, a2);
  return v4;
}

uint64_t sub_1000025FC(uint64_t a1)
{
  result = *(a1 + 44);
  if (!result)
  {
    tn = 0;
    if (*(a1 + 40))
    {
      if (task_read_for_pid())
      {
        return *(a1 + 44);
      }
    }

    else if (task_name_for_pid(mach_task_self_, 0, &tn))
    {
      return *(a1 + 44);
    }

    result = tn;
    *(a1 + 44) = tn;
  }

  return result;
}

uint64_t sub_100002668(void *a1)
{
  v2 = sub_10000297C();
  *(v2 + 16) = xpc_dictionary_get_uint64(a1, SYSMON_XPC_KEY_TYPE);
  value = xpc_dictionary_get_value(a1, SYSMON_XPC_KEY_ATTRIBUTES);
  *(v2 + 24) = value;
  if (value && xpc_get_type(value) == &_xpc_type_data)
  {
    xpc_retain(*(v2 + 24));
    *(v2 + 32) = xpc_dictionary_get_uint64(a1, SYSMON_XPC_KEY_FLAGS);
  }

  else
  {
    _os_assumes_log();
    *(v2 + 24) = 0;
    j___os_object_release();
    return 0;
  }

  return v2;
}

xpc_object_t sub_100002718(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  length = xpc_data_get_length(v1);
  v4 = malloc_type_malloc(length, 0xEDF61A08uLL);
  if (xpc_data_get_bytes(v1, v4, 0, length) != length)
  {
    _os_assumes_log();
  }

  if (v2 == 3)
  {
    v6 = v4 + 1;
    v7 = v4[1];
    if ((v7 & 4) != 0)
    {
      *v4 |= 0x22u;
    }

    if ((v7 & 8) != 0)
    {
      *v4 |= 2u;
      goto LABEL_13;
    }
  }

  else if (v2 == 1)
  {
    v5 = v4[6];
    if ((v5 & 8) != 0)
    {
      *v4 |= 0x10u;
      v4[2] |= 0x80u;
      v4[3] |= 1u;
    }

    if ((v5 & 0x10) != 0)
    {
      *v4 |= 0x10u;
      v6 = v4 + 7;
      v7 = v4[7];
LABEL_13:
      *v6 = v7 | 0x10;
    }
  }

  v8 = xpc_data_create(v4, length);
  free(v4);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v9, SYSMON_XPC_REPLY_KEY_HEADER, v8);
  switch(v2)
  {
    case 3:
      v10 = sub_1000017C8(v8);
      break;
    case 2:
      v10 = sub_1000030D4(v8);
      break;
    case 1:
      v10 = sub_100002280(v8);
      break;
    default:
      goto LABEL_22;
  }

  v11 = v10;
  if (v10)
  {
    xpc_dictionary_set_value(v9, SYSMON_XPC_REPLY_KEY_TABLE, v10);
    xpc_release(v11);
  }

LABEL_22:
  v12 = xpc_date_create_from_current();
  xpc_dictionary_set_value(v9, SYSMON_XPC_REPLY_KEY_TIMESTAMP, v12);
  xpc_release(v12);
  xpc_release(v8);
  return v9;
}

uint64_t sub_1000028E0()
{
  v0 = objc_opt_class();

  return __os_object_alloc(v0, 48);
}

uint64_t sub_100002914()
{
  v0 = objc_opt_class();

  return __os_object_alloc(v0, 48);
}

uint64_t sub_100002948()
{
  v0 = objc_opt_class();

  return __os_object_alloc(v0, 48);
}

uint64_t sub_10000297C()
{
  v0 = objc_opt_class();

  return __os_object_alloc(v0, 40);
}

size_t sub_100002B50(void *a1, uint64_t a2)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  result = xpc_data_get_length(a1);
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      v8 = bytes_ptr[i];
      if (bytes_ptr[i])
      {
        do
        {
          v9 = __clz(__rbit32(v8));
          v8 &= ~(1 << v9);
          result = (*(a2 + 16))(a2, (8 * i) | v9);
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t sub_100002BF8(void *a1)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  for (i = 0; length; --length)
  {
    v5 = *bytes_ptr++;
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    i += v6.u32[0];
  }

  return i;
}

uint64_t sub_100002C54(void *a1, int a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -1;
  v10[3] = -1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100002D1C;
  v4[3] = &unk_100008B10;
  v5 = a2;
  v4[4] = v10;
  v4[5] = &v6;
  sub_100002B50(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

uint64_t sub_100002D1C(uint64_t result, int a2)
{
  ++*(*(*(result + 32) + 8) + 24);
  if (*(result + 48) == a2)
  {
    v2 = *(*(result + 40) + 8);
    if (*(v2 + 24) != -1)
    {
      sub_1000041B0();
    }

    *(v2 + 24) = *(*(*(result + 32) + 8) + 24);
  }

  return result;
}

xpc_object_t sub_100002D74(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      if (!*(*(a1 + 32) + 8 * i))
      {
        v4 = xpc_null_create();
        v2 = *(a1 + 24);
        *(*(a1 + 32) + 8 * i) = v4;
      }
    }
  }

  v5 = xpc_array_create(*(a1 + 32), v2);
  if (*(a1 + 24))
  {
    v6 = 0;
    do
    {
      xpc_release(*(*(a1 + 32) + 8 * v6));
      v7 = *(a1 + 24);
      *(*(a1 + 32) + 8 * v6++) = 0;
    }

    while (v6 < v7);
  }

  return v5;
}

uint64_t sub_100002E4C(uint64_t a1, int a2, uint64_t a3)
{
  result = sub_100002C54(*(a1 + 16), a2);
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = *(a1 + 32);
    if (!*(v6 + 8 * result))
    {
      *(v6 + 8 * result) = a3;
      v7 = *(*(a1 + 32) + 8 * result);

      return xpc_retain(v7);
    }
  }

  return result;
}

void sub_100002EB0(uint64_t a1, int a2, BOOL value)
{
  v5 = xpc_BOOL_create(value);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

void sub_100002F0C(uint64_t a1, int a2, int64_t value)
{
  v5 = xpc_int64_create(value);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

void sub_100002F68(uint64_t a1, int a2, uint64_t value)
{
  v5 = xpc_uint64_create(value);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

void sub_100002FC4(uint64_t a1, int a2, double a3)
{
  v5 = xpc_double_create(a3);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

void sub_10000301C(uint64_t a1, int a2, int64_t interval)
{
  v5 = xpc_date_create(interval);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

void sub_100003078(uint64_t a1, int a2, char *string)
{
  v5 = xpc_string_create(string);
  sub_100002E4C(a1, a2, v5);

  xpc_release(v5);
}

xpc_object_t sub_1000030D4(void *a1)
{
  v2 = xpc_array_create(0, 0);
  v3 = sub_1000031A4(a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100003204;
  v6[3] = &unk_100008D70;
  v6[4] = v3;
  sub_100002B50(a1, v6);
  v4 = sub_100002D74(v3);
  xpc_array_set_value(v2, 0xFFFFFFFFFFFFFFFFLL, v4);
  xpc_release(v4);
  j___os_object_release();
  return v2;
}

uint64_t sub_1000031A4(void *a1)
{
  v2 = sub_100002914();
  v3 = xpc_retain(a1);
  *(v2 + 16) = v3;
  v4 = sub_100002BF8(v3);
  *(v2 + 24) = v4;
  *(v2 + 32) = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_100003204(uint64_t result, int a2)
{
  v3 = result;
  v4 = 36;
  v5 = &off_100008B38;
  do
  {
    if (*(v5 - 2) == a2)
    {
      result = sub_100002E08(*(v3 + 32), a2);
      if ((result & 1) == 0)
      {
        result = (*v5)(*(v3 + 32));
      }
    }

    v5 += 2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_100003270(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    result = mach_host_self();
    *(a1 + 40) = result;
  }

  return result;
}

BOOL sub_1000032A0(uint64_t a1)
{
  *v14 = 0u;
  *v15 = 0u;
  *v12 = 0u;
  *v13 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  *v8 = 0u;
  *v9 = 0u;
  *value = 0u;
  *v7 = 0u;
  v2 = sub_100003270(a1);
  host_info64_outCnt = 40;
  v3 = host_statistics64(v2, 4, value, &host_info64_outCnt);
  if (!v3)
  {
    sub_100002F68(a1, 1, (LODWORD(value[0]) - HIDWORD(v11[1])));
    sub_100002F68(a1, 2, HIDWORD(value[0]));
    sub_100002F68(a1, 3, LODWORD(value[1]));
    sub_100002F68(a1, 4, HIDWORD(value[1]));
    sub_100002F68(a1, 5, v7[0]);
    sub_100002F68(a1, 6, v7[1]);
    sub_100002F68(a1, 7, v8[0]);
    sub_100002F68(a1, 8, v8[1]);
    sub_100002F68(a1, 9, v9[0]);
    sub_100002F68(a1, 10, v9[1]);
    sub_100002F68(a1, 11, v10[0]);
    sub_100002F68(a1, 12, v10[1]);
    sub_100002F68(a1, 13, v11[0]);
    sub_100002F68(a1, 14, LODWORD(v11[1]));
    sub_100002F68(a1, 15, HIDWORD(v11[1]));
    sub_100002F68(a1, 16, v12[0]);
    sub_100002F68(a1, 17, v12[1]);
    sub_100002F68(a1, 18, v13[0]);
    sub_100002F68(a1, 19, v13[1]);
    sub_100002F68(a1, 20, LODWORD(v14[0]));
    sub_100002F68(a1, 21, HIDWORD(v14[0]));
    sub_100002F68(a1, 33, LODWORD(v14[1]));
    sub_100002F68(a1, 34, HIDWORD(v14[1]));
    sub_100002F68(a1, 35, v15[0]);
    if (qword_10000CC90 != -1)
    {
      sub_1000041F4();
    }

    v4 = qword_10000CC88;
    sub_100002F68(a1, 36, qword_10000CC88);
    sub_100002F68(a1, 37, v15[0] + v4);
    sub_100002F68(a1, 38, v4 - (LODWORD(value[0]) - HIDWORD(v11[1])));
  }

  return v3 == 0;
}

uint64_t sub_1000034FC(uint64_t a1)
{
  processor_sets = 0;
  processor_setsCnt = 0;
  v2 = sub_100003270(a1);
  if (host_processor_sets(v2, &processor_sets, &processor_setsCnt))
  {
LABEL_13:
    _os_assumes_log();
    return 0;
  }

  if (processor_setsCnt)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      *info_out = 0;
      v9 = 0;
      info_outCnt = 4;
      if (processor_set_statistics(processor_sets[v3], 4, info_out, &info_outCnt))
      {
        goto LABEL_13;
      }

      v5 = info_out[1];
      if (mach_port_deallocate(mach_task_self_, processor_sets[v3]))
      {
        _os_assumes_log();
      }

      v4 += v5;
      if (++v3 >= processor_setsCnt)
      {
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:
  sub_100002F68(a1, 24, v4);
  if (mach_vm_deallocate(mach_task_self_, processor_sets, 4 * processor_setsCnt))
  {
    _os_assumes_log();
  }

  return 1;
}

void sub_100003618(id a1)
{
  v1 = 8;
  sysctlbyname("hw.memsize", &qword_10000CC88, &v1, 0, 0);
  qword_10000CC88 /= vm_kernel_page_size;
}

uint64_t sub_100003688(void *context)
{
  if (qword_10000CCA0 != -1)
  {
    sub_10000421C();
  }

  dispatch_sync_f(qword_10000CCA8, context, sub_10000374C);
  return 1;
}

void sub_1000036E4(id a1)
{
  qword_10000CCA8 = dispatch_queue_create("process_get_libtop_memory mutex", 0);
  *&v1.version = xmmword_100008DD0;
  *&v1.release = *&off_100008DE0;
  v1.equal = 0;
  qword_10000CC98 = CFDictionaryCreateMutable(0, 0, 0, &v1);
}

void sub_10000374C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1000025F4(a1);
  v3 = sub_1000025FC(v1);
  v4 = malloc_type_calloc(1uLL, 0x4C0uLL, 0x10300403E5244D6uLL);
  *(v4 + 1) = v2;
  v5 = (v4 + 936);
  *(v4 + 234) = 0;
  v6 = qword_10000CCE0;
  if (!qword_10000CCE0)
  {
    qword_10000CCE0 = 12;
    if (sysctlnametomib("sysctl.proc_cputype", dword_10000CCB0, &qword_10000CCE0))
    {
      qword_10000CCE0 = 0;
      goto LABEL_9;
    }

    v6 = qword_10000CCE0;
    if (!qword_10000CCE0)
    {
      goto LABEL_3;
    }
  }

  dword_10000CCB0[v6] = v2;
  v44[0] = 4;
  if (!sysctl(dword_10000CCB0, v6 + 1, v5, v44, 0, 0))
  {
LABEL_3:
    v7 = vm_kernel_page_size;
    size = 0;
    address[0] = 0;
    *(v4 + 302) = 0;
    *info = 0;
    v50 = 0;
    v51 = 0;
    infoCnt = 5;
    object_name = 0;
    if (mach_vm_region(v3, address, &size, 12, info, &infoCnt, &object_name))
    {
      v40 = 0;
      v41 = 0;
      v8 = 0;
      v38 = 0;
      v39 = 0;
      v9 = 0;
      v10 = 0;
LABEL_5:
      *(v4 + 7) = v10;
      *(v4 + 8) = v39;
      v11 = v38 + v41;
      *(v4 + 4) = v38 + v41;
      *(v4 + 5) = v8;
      *(v4 + 6) = v40;
      *(v4 + 18) = v9;
      *(v4 + 19) = 0;
LABEL_6:
      sub_100002F68(v1, 53, v11);
      sub_100002F68(v1, 54, *(v4 + 6));
      goto LABEL_9;
    }

    v9 = 0;
    v10 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v8 = 0;
    v35 = v1;
    v37 = v7;
    while (1)
    {
      v12 = *v5;
      if (*v5 <= 16777222)
      {
        if (v12 == 7)
        {
          goto LABEL_21;
        }

        if (v12 != 12)
        {
          if (v12 != 18)
          {
            goto LABEL_79;
          }

LABEL_21:
          v13 = 0x20000000;
          v14 = 2415919104;
          goto LABEL_28;
        }

        v13 = 0x40000000;
        v14 = 0x40000000;
      }

      else if (v12 > 16777233)
      {
        if (v12 == 16777234)
        {
          v14 = 0x7FFF60000000;
          v13 = 2684354560;
        }

        else
        {
          if (v12 != 33554444)
          {
LABEL_79:
            sub_10000425C(v12);
          }

          v13 = 2281701376;
          v14 = 436207616;
        }
      }

      else if (v12 == 16777223)
      {
        v14 = 0x7FF800000000;
        v13 = 0x7FE000000;
      }

      else
      {
        if (v12 != 16777228)
        {
          goto LABEL_79;
        }

        v13 = 0x180000000;
        v14 = 0x180000000;
      }

LABEL_28:
      v15 = v14 + v13;
      v16 = v51;
      if (v14 <= address[0] && v15 > address[0])
      {
        v10 += v7 * v50;
        if (!*(v4 + 302) && v51 == 3)
        {
          v46 = 0;
          *v44 = 0u;
          v45 = 0u;
          v43 = address[0];
          v42 = size;
          infoCnt = 9;
          if (mach_vm_region(v3, &v43, &v42, 10, v44, &infoCnt, &object_name))
          {
            goto LABEL_5;
          }

          if (v45)
          {
            *(v4 + 302) = 1;
          }

          v16 = v51;
        }

        if (v16 != 2)
        {
          goto LABEL_53;
        }

        ++v9;
      }

      else
      {
        v18 = v3;
        v19 = v10;
        ++v9;
        v20 = info[1];
        if (v51 == 1 && info[1] == 1)
        {
          v10 = v19;
          v3 = v18;
        }

        else
        {
          if (v51 <= 2u)
          {
            if (v51 == 1)
            {
              goto LABEL_55;
            }

            v21 = v51 == 2;
          }

          else
          {
            if (v51 == 3)
            {
              v39 += size;
LABEL_77:
              v10 = v19;
              v3 = v18;
              goto LABEL_53;
            }

            if (v51 == 4)
            {
LABEL_55:
              v23 = *(v4 + 1);
              if (!v23)
              {
                v7 = v37;
                if (v51 == 1)
                {
                  v41 += v37 * v50;
                  v8 += size;
                }

                goto LABEL_77;
              }

              v24 = info[0];
              v34 = HIDWORD(v50);
              v36 = size;
              Value = CFDictionaryGetValue(qword_10000CC98, info[0]);
              if (Value)
              {
                v26 = Value;
                if (*Value == v23)
                {
                  v7 = v37;
                  Value[1] += v36;
                  v27 = *(Value + 7) + 1;
                  *(Value + 7) = v27;
                  v5 = (v4 + 936);
                  v10 = v19;
LABEL_66:
                  v3 = v18;
                  if (v27 >= 2)
                  {
                    v29 = v26[8];
                    if (v29 != 3)
                    {
                      v26[4] = v29;
                    }

                    v38 -= *(v26 + 5);
                    v8 -= *(v26 + 6);
                    v40 -= *(v26 + 7);
                  }

                  v26[8] = 3;
                  *(v26 + 6) = 0;
                  *(v26 + 7) = 0;
                  *(v26 + 5) = 0;
                  v30 = v26[4];
                  if (v30 != 6)
                  {
                    if (v30 == 4 && v26[6] == v27)
                    {
                      v26[8] = 4;
                      v26[4] = 6;
                      v31 = v7 * v26[5];
                      v38 += v31;
                      v32 = *(v26 + 1);
                      *(v26 + 5) = v31;
                      *(v26 + 6) = v32;
                      v8 += v32;
                    }

                    else
                    {
                      v33 = v7 * v26[5];
                      *(v26 + 7) = v33;
                      v40 += v33;
                    }
                  }

                  v1 = v35;
                  if (v51 != 1)
                  {
                    goto LABEL_53;
                  }

                  v22 = v7 * v50;
                  v41 += v22;
                  goto LABEL_52;
                }

                *Value = v23;
                Value[1] += v36;
                v27 = 1;
                *(Value + 7) = 1;
              }

              else
              {
                v28 = malloc_type_malloc(0x40uLL, 0x1000040EA6C7F01uLL);
                if (!v28)
                {
                  v11 = *(v4 + 4);
                  v1 = v35;
                  goto LABEL_6;
                }

                v26 = v28;
                *v28 = v23;
                v28[1] = v24;
                *(v28 + 1) = v36;
                v28[4] = v16;
                v28[5] = v34;
                v28[6] = v20;
                v28[7] = 1;
                CFDictionarySetValue(qword_10000CC98, v24, v28);
                v27 = v26[7];
              }

              v5 = (v4 + 936);
              v10 = v19;
              v26[8] = 3;
              *(v26 + 6) = 0;
              *(v26 + 7) = 0;
              *(v26 + 5) = 0;
              v7 = v37;
              goto LABEL_66;
            }

            v21 = v51 == 8;
          }

          v10 = v19;
          v3 = v18;
          if (!v21)
          {
            sub_100004230();
          }
        }
      }

      v41 += (HIDWORD(v50) + v50) * v7;
      v22 = size;
LABEL_52:
      v8 += v22;
LABEL_53:
      address[0] += size;
      *info = 0;
      v50 = 0;
      v51 = 0;
      infoCnt = 5;
      object_name = 0;
      if (mach_vm_region(v3, address, &size, 12, info, &infoCnt, &object_name))
      {
        goto LABEL_5;
      }
    }
  }

LABEL_9:
  free(v4);
}

uint64_t sub_100003D78(uint64_t a1)
{
  size = 0;
  if (sysctl(dword_10000CC50, 6u, 0, &size, 0, 0) < 0)
  {
    return 0;
  }

  v2 = malloc_type_malloc(size, 0x19E86324uLL);
  if (!v2)
  {
    sub_1000041B0();
  }

  v3 = v2;
  if (sysctl(dword_10000CC50, 6u, v2, &size, 0, 0) < 0)
  {
    free(v3);
    return 0;
  }

  if (size < 1)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v3;
    do
    {
      if (*(v8 + 3) == 18)
      {
        v7 += *(v8 + 9);
        v4 += *(v8 + 7);
        v6 += *(v8 + 13);
        v5 += *(v8 + 12);
      }

      v8 = (v8 + *v8);
    }

    while (v8 < (v3 + size));
  }

  free(v3);
  sub_100002F68(a1, 29, v4);
  sub_100002F68(a1, 31, v7);
  sub_100002F68(a1, 30, v5);
  sub_100002F68(a1, 32, v6);
  return 1;
}

BOOL sub_100003EE4(uint64_t a1)
{
  existing = 0;
  valuePtr = 0;
  properties = 0;
  v2 = IOServiceMatching("IOBlockStorageDriver");
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing);
  if (MatchingServices)
  {
    _os_assumes_log();
  }

  else
  {
    v17 = a1;
    v4 = IOIteratorNext(existing);
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        valuePtr = 0;
        properties = 0;
        if (IORegistryEntryCreateCFProperties(v5, &properties, kCFAllocatorDefault, 0))
        {
          _os_assumes_log();
        }

        else if (properties)
        {
          Value = CFDictionaryGetValue(properties, @"Statistics");
          if (Value)
          {
            v11 = Value;
            v12 = CFDictionaryGetValue(Value, @"Operations (Read)");
            if (v12)
            {
              CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr);
              v6 += valuePtr;
            }

            v13 = CFDictionaryGetValue(v11, @"Bytes (Read)");
            if (v13)
            {
              CFNumberGetValue(v13, kCFNumberSInt64Type, &valuePtr);
              v9 += valuePtr;
            }

            v14 = CFDictionaryGetValue(v11, @"Operations (Write)");
            if (v14)
            {
              CFNumberGetValue(v14, kCFNumberSInt64Type, &valuePtr);
              v7 += valuePtr;
            }

            v15 = CFDictionaryGetValue(v11, @"Bytes (Write)");
            if (v15)
            {
              CFNumberGetValue(v15, kCFNumberSInt64Type, &valuePtr);
              v8 += valuePtr;
            }
          }

          CFRelease(properties);
        }

        IOObjectRelease(v5);
        v5 = IOIteratorNext(existing);
      }

      while (v5);
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
    }

    IOIteratorReset(existing);
    IOObjectRelease(existing);
    sub_100002F68(v17, 27, v9);
    sub_100002F68(v17, 28, v8);
    sub_100002F68(v17, 25, v6);
    sub_100002F68(v17, 26, v7);
    MatchingServices = 0;
  }

  return MatchingServices == 0;
}

void sub_1000041B0()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}