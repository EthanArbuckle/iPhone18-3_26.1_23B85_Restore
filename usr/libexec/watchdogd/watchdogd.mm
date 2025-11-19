void sub_1000010B0(id a1, RBSProcessMonitor *a2, RBSProcessHandle *a3, RBSProcessStateUpdate *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = [(RBSProcessHandle *)v6 pid];
  v13 = [(RBSProcessStateUpdate *)v5 state];
  v8 = [v13 taskState];
  v9 = [(RBSProcessStateUpdate *)v5 state];

  v10 = [v9 endowmentNamespaces];
  v11 = [(RBSProcessHandle *)v6 bundle];

  v12 = [v11 identifier];
  sub_100001640(v7, v8, v10, v12);
}

uint64_t sub_100001198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  qword_1000270E8 = 0;
  sub_1000017B0(0, "service monitoring thread created", a3, a4, a5, a6, a7, a8, v64);
  *policy_info = 0;
  v71 = 0;
  get_default = 1;
  policy_infoCnt = 4;
  v8 = pthread_self();
  v9 = pthread_mach_thread_np(v8);
  if (thread_policy_get(v9, 2u, policy_info, &policy_infoCnt, &get_default))
  {
    goto LABEL_52;
  }

  v10 = pthread_self();
  v11 = pthread_mach_thread_np(v10);
  if (!thread_policy_set(v11, 2u, policy_info, 4u))
  {
    v12 = qword_100027238;
    v13 = pthread_self();
    pthread_setspecific(v12, v13);
    v14 = pthread_setname_np("watchdogd service monitoring thread");
    sub_10000B9B8(v14, v15, v16, v17, v18, v19, v20, v21);
    LOBYTE(policy_infoCnt) = 0;
    sub_10000372C(&policy_infoCnt, qword_1000270E8);
    if (policy_infoCnt == 1)
    {
      v66 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 30000000000;
    }

    else
    {
      v66 = 0;
    }

    v22 = 10000000000;
    qword_100027210 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v23 = dispatch_time(0, 0);
    *policy_info = 0;
    v24 = &unk_100027000;
    v25 = &unk_100027000;
    v26 = &unk_100027000;
    while (1)
    {
      dispatch_semaphore_wait(v24[70], 0xFFFFFFFFFFFFFFFFLL);
      if (!v25[27])
      {
        goto LABEL_51;
      }

      sub_1000017B0(0, "service monitoring thread resuming monitoring after %s", v27, v28, v29, v30, v31, v32, v25[27]);
      if (v26[512] == 1)
      {
        break;
      }

      if (*policy_info)
      {
        v23 = dispatch_time(0, *policy_info);
        *policy_info = 0;
      }

      v33 = sub_100003648(v23, policy_info);
      if (v33)
      {
        do
        {
LABEL_18:
          sub_100001D9C(v33, v34, v35, v36, v37, v38, v39, v40, v65);
          sub_100001DF4();
          context = objc_autoreleasePoolPush();
          v44 = sub_1000021EC(qword_1000270E8);
          v23 = dispatch_time(0, v22);
          v45 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (byte_1000270F0 == 1)
          {
            v46 = sub_10000666C();
            if (v46)
            {
              v47 = v46;
              if (sub_100006718(v46))
              {
                qword_1000270F8 = v47;
              }

              else
              {
                sub_1000034BC(v47);
                sub_1000035D0();
              }
            }
          }

          v48 = v22;
          sub_10000277C(v44, v45 + v22);
          for (i = qword_1000271F8; i; i = *i)
          {
            if (sub_100002C54(i) && *(i + 68) == 2 && *(i + 208) == 1)
            {
              for (j = *(i + 72); j; j = *(j + 96))
              {
                if (*(i + 1488) < 1)
                {
LABEL_33:
                  if (sub_100002C54(j))
                  {
                    *(j + 80) = 0;
                  }
                }

                else
                {
                  v51 = *(j + 24);
                  v52 = strlen(v51);
                  v53 = *(i + 1488) & 0x7FFFFFFFLL;
                  v54 = (i + 1328);
                  while (v52 != strlen(v54) || strcasecmp(v51, v54))
                  {
                    v54 += 32;
                    if (!--v53)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (*(j + 68) != 3)
                  {
                    _os_assert_log();
                    _os_crash();
                    __break(1u);
LABEL_51:
                    _os_assert_log();
                    _os_crash();
                    __break(1u);
LABEL_52:
                    _os_crash();
                    __break(1u);
                    goto LABEL_53;
                  }

                  if (!sub_100002C54(j))
                  {
                    bzero((j + 112), 0x700uLL);
                    *(j + 80) = 1;
                    *(j + 120) = qword_1000270E8 + 1;
                    *(j + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
                  }
                }
              }
            }
          }

          if ((sub_100002C8C(v45) & 1) == 0)
          {
            sub_100009784(v45);
          }

          sub_1000034BC(qword_100027100);
          qword_100027100 = qword_1000270F8;
          qword_1000270F8 = 0;
          objc_autoreleasePoolPop(context);
          v55 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v22 = v48;
          if (v55 - qword_100027210 >= 0x1BF08EB001)
          {
            sub_1000034F4(v55, v56, v57, v58, v59, v60, v61, v62, v65);
          }

          v24 = &unk_100027000;
          v25 = &unk_100027000;
          v26 = &unk_100027000;
          if (policy_infoCnt == 1 && clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) > v66)
          {
            sub_10000372C(&policy_infoCnt, qword_1000270E8);
            if (policy_infoCnt == 1)
            {
              v66 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 30000000000;
            }
          }

          sub_1000035D0();
          v33 = sub_100003648(v23, policy_info);
          ++qword_1000270E8;
        }

        while (((v33 ^ 1) & 1) == 0);
      }
    }

    v33 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v41 = qword_1000271F8;
    if (qword_1000271F8)
    {
      v42 = v33;
      do
      {
        bzero(v41 + 14, 0x700uLL);
        v33 = sub_100002C54(v41);
        if (v33)
        {
          v43 = qword_1000270E8;
          v41[14] = v42;
          v41[15] = v43;
        }

        v41 = *v41;
      }

      while (v41);
    }

    goto LABEL_18;
  }

LABEL_53:
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t sub_100001640(int a1, int a2, void *a3, const __CFString *a4)
{
  v7 = a3;
  v8 = v7;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      goto LABEL_11;
    }

    if (a2 != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (a2 == 1)
  {
    goto LABEL_11;
  }

  if (a2 == 2)
  {
LABEL_7:
    v11 = v7;
    v7 = [v7 containsObject:@"com.apple.frontboard.visibility"];
    v8 = v11;
    if (v7)
    {
      v7 = sub_100001718(a4);
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1;
      }

LABEL_13:
      dword_100027168 = v9;
      v8 = v11;
      goto LABEL_14;
    }

LABEL_11:
    if (dword_100027168 != a1)
    {
      goto LABEL_14;
    }

    v11 = v8;
    v7 = sub_100001718(@"com.apple.SpringBoard");
    v9 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return _objc_release_x1(v7, v8);
}

uint64_t sub_100001718(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = &stru_100019B70;
  }

  v2 = IORegistryEntrySetCFProperty(dword_100027148, @"IOPMUBootAppName", v1);
  v3 = v2;
  if (v2)
  {
    v17 = mach_error_string(v2);
    sub_1000017B0(2, "failed to record foreground application with error %s", v4, v5, v6, v7, v8, v9, v17);
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    sub_1000017B0(0, "set foreground app %s in PMU", v10, v11, v12, v13, v14, v15, CStringPtr);
  }

  return v3;
}

void sub_100001804(char a1, int a2, uint64_t a3, const char *a4, va_list a5)
{
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  if (a2 == 2)
  {
    v10 = 16;
  }

  else
  {
    v10 = 2 * (a2 == 1);
  }

  if (pthread_getspecific(qword_100027238))
  {
    if (a1)
    {
      _os_assert_log();
      v23 = _os_crash();
      sub_10000D0C8(v23);
    }

    if (!qword_100027170)
    {
      _os_assert_log();
      v24 = _os_crash();
      sub_10000D0C8(v24);
    }

    bzero(&v40, 0x204uLL);
    *&data[4] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    *data = a2;
    v11 = vsnprintf(v41, 0x200uLL, a4, a5);
    if (v11 >= 512)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    v40 = v12;
    v13 = IODataQueueEnqueue(qword_100027170, data, v12 + 16);
    if (v13 != 268435460 && v13)
    {
      if (v13 != -536870168)
      {
        _os_assert_log();
        v25 = _os_crash();
        sub_10000D0C8(v25);
      }

      atomic_fetch_add(&dword_10002725C, 1u);
    }
  }

  else
  {
    if (qword_1000271B8 != -1)
    {
      sub_100003BCC();
    }

    if (dword_1000271C0 && qword_1000271C8 != -1)
    {
      sub_10000D0CC();
    }

    *data = 0;
    v14 = vasprintf(data, a4, a5);
    if (*data && v14 >= 1)
    {
      v15 = qword_1000271A8;
      if ((a1 & 2) == 0)
      {
        v15 = &_os_log_default;
      }

      v16 = v15;
      v17 = v16;
      v18 = qword_100027198;
      v19 = (a1 & 2) >> 1;
      if (a1)
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100002620;
        v31[3] = &unk_1000191C8;
        v20 = v32;
        v22 = v16;
        v34 = v10;
        v32[3] = a3;
        v32[4] = *data;
        v32[0] = v22;
        v32[1] = v36;
        v33 = a2;
        v35 = v19;
        v32[2] = v38;
        dispatch_sync(v18, v31);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001B9C;
        block[3] = &unk_1000191C8;
        v20 = v27;
        v21 = v16;
        v29 = v10;
        v27[3] = a3;
        v27[4] = *data;
        v27[0] = v21;
        v27[1] = v36;
        v28 = a2;
        v30 = v19;
        v27[2] = v38;
        dispatch_async(v18, block);
      }
    }
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void sub_100001B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void sub_100001B9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 76);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *buf = 134218242;
    v10 = v4;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%llu: %s", buf, 0x16u);
  }

  if (qword_1000271A0)
  {
    *(*(*(a1 + 40) + 8) + 24) = sub_100001CF8(*(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 77), (*(*(a1 + 48) + 8) + 24));
    v6 = *(a1 + 48);
    if (*(*(v6 + 8) + 24))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000C708;
      v8[3] = &unk_1000191A0;
      v7 = *(a1 + 40);
      v8[4] = v6;
      v8[5] = v7;
      dispatch_async(qword_1000271A0, v8);
    }
  }

  free(*(a1 + 64));
}

uint64_t sub_100001CF8(const char *a1, uint64_t a2, int a3, int a4, char **a5)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  if (a3 == 2)
  {
    v5 = "ERROR";
    goto LABEL_10;
  }

  if (a3)
  {
    if (dword_1000271C0 >= 3)
    {
      v5 = "DEBUG";
      goto LABEL_10;
    }

    return 0;
  }

  if (dword_1000271C0 < 2)
  {
    return 0;
  }

  v5 = "INFO";
LABEL_10:
  v7 = "";
  if (a4)
  {
    v7 = "service-monitoring thread:";
  }

  return asprintf(a5, "watchdogd: %s %llu: %s: %s\n", v7, a2, v5, a1);
}

void sub_100001D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = IOConnectCallScalarMethod(dword_100026B08, 1u, 0, 0, 0, 0);
  if (v9)
  {
    sub_10000CD90(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  sub_1000017B0(1, "checked in with KEXT", v11, v12, v13, v14, v15, v16, a9);
}

void sub_100001DF4()
{
  v0 = atomic_load(byte_100027248);
  if (v0)
  {
    if (!qword_100027240)
    {
      sub_10000C89C();
    }

    if (os_unfair_lock_trylock(&unk_100027218))
    {
      v1 = qword_100027240;
      if (qword_100027240)
      {
        while (1)
        {
          v2 = v1;
          v1 = *(v1 + 16);
          v3 = v2[1];
          if (*v2 != 2)
          {
            break;
          }

          v14 = qword_1000271F8;
          if (qword_1000271F8)
          {
            v15 = 0;
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  v16 = v14;
                  v14 = *v14;
                  if (!v15)
                  {
                    break;
                  }

                  v16[1] = v15;
                  if (!v14)
                  {
                    goto LABEL_71;
                  }
                }

                v17 = v3[3];
                if (!strcmp(v17, v16[3]))
                {
                  break;
                }

                v15 = 0;
                if (!v14)
                {
                  goto LABEL_71;
                }
              }

              v15 = v16[1];
              if (v15 < qword_1000266B8)
              {
                break;
              }

              sub_1000017B0(0, "service %s is going to be removed", v18, v19, v20, v21, v22, v23, v17);
              sub_10000BAFC(1, v3[3], v24, v25, v26, v27, v28, v29, v61);
              v30 = qword_1000271F8;
              if (qword_1000271F8 == v16)
              {
                v31 = &qword_1000271F8;
              }

              else
              {
                do
                {
                  v31 = v30;
                  v30 = *v30;
                }

                while (v30 != v16);
              }

              *v31 = *v30;
              v32 = v16[3];
              if (v32)
              {
                free(v32);
              }

              v33 = v16[5];
              if (v33)
              {
                free(v33);
              }

              v34 = v16[4];
              if (v34)
              {
                free(v34);
              }

              v35 = v16[6];
              if (v35)
              {
                free(v35);
              }

              free(v16);
              v36 = qword_100027240;
              if (qword_100027240 == v2)
              {
                v38 = &qword_100027240;
              }

              else
              {
                do
                {
                  v37 = v36;
                  v36 = *(v36 + 16);
                }

                while (v36 != v2);
                v38 = (v37 + 16);
              }

              *v38 = *(v36 + 16);
              if (v3)
              {
                v39 = v3[3];
                if (v39)
                {
                  free(v39);
                }

                v40 = v3[5];
                if (v40)
                {
                  free(v40);
                }

                v41 = v3[4];
                if (v41)
                {
                  free(v41);
                }

                v42 = v3[6];
                if (v42)
                {
                  free(v42);
                }

                free(v3);
              }

              free(v2);
              --dword_1000266C0;
              if (!v14)
              {
                goto LABEL_71;
              }
            }

            sub_1000017B0(2, "Not allowed to unregister static watchdog service %s", v18, v19, v20, v21, v22, v23, v17);
            if (!v1)
            {
              goto LABEL_74;
            }
          }

          else
          {
LABEL_71:
            if (!v1)
            {
              goto LABEL_74;
            }
          }
        }

        if (*v2 == 1)
        {
          v4 = &qword_1000271F8;
          do
          {
            v4 = *v4;
            if (!v4)
            {
              if (!sub_10000B8E0(v3, qword_1000270E8))
              {
                goto LABEL_71;
              }

              v49 = 0;
              v50 = dword_1000266C0;
              v3[1] = dword_1000266C0;
              v51 = &qword_1000271F8;
              do
              {
                v52 = v49;
                v51 = *v51;
                v49 = v51;
              }

              while (v51);
              if (!v52)
              {
                sub_10000C89C();
              }

              *v3 = *v52;
              *v52 = v3;
              dword_1000266C0 = v50 + 1;
              sub_1000017B0(0, "service %s enroll successful", v43, v44, v45, v46, v47, v48, v3[3]);
              v53 = qword_100027240;
              if (qword_100027240 == v2)
              {
                v55 = &qword_100027240;
              }

              else
              {
                do
                {
                  v54 = v53;
                  v53 = *(v53 + 16);
                }

                while (v53 != v2);
                v55 = (v54 + 16);
              }

              *v55 = *(v53 + 16);
              goto LABEL_70;
            }

            v5 = v3[3];
          }

          while (strcmp(v5, v4[3]));
          v63 = v4[4];
          v62 = v3[4];
          sub_1000017B0(0, "Service %s:%s has already been enrolled, duplicated with %s:%s", v6, v7, v8, v9, v10, v11, v5);
          v12 = qword_100027240;
          if (qword_100027240 == v2)
          {
            qword_100027240 = *(qword_100027240 + 16);
          }

          else
          {
            do
            {
              v13 = v12;
              v12 = *(v12 + 16);
            }

            while (v12 != v2);
            *(v13 + 16) = *(v12 + 16);
            if (!v3)
            {
              goto LABEL_70;
            }
          }

          v56 = v3[3];
          if (v56)
          {
            free(v56);
          }

          v57 = v3[5];
          if (v57)
          {
            free(v57);
          }

          v58 = v3[4];
          if (v58)
          {
            free(v58);
          }

          v59 = v3[6];
          if (v59)
          {
            free(v59);
          }

          free(v3);
LABEL_70:
          free(v2);
        }

        goto LABEL_71;
      }

LABEL_74:
      os_unfair_lock_unlock(&unk_100027218);
      atomic_store(0, byte_100027248);
      v60 = qword_100027250;

      dispatch_semaphore_signal(v60);
    }

    else
    {
      if (byte_100027108 == 1)
      {
        sub_10000C89C();
      }

      byte_100027108 = 1;
    }
  }
}

uint64_t sub_1000021EC(uint64_t a1)
{
  if (dword_100027258)
  {
    sub_10000C89C();
  }

  if (mach_port_allocate(mach_task_self_, 3u, &dword_100027258))
  {
    sub_10000C89C();
  }

  v8 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v9 = 0;
    do
    {
      bzero((v8 + 200), 0x6A8uLL);
      *(v8 + 204) = 14;
      *(v8 + 210) = 0;
      *(v8 + 1498) = 0;
      if ((*(v8 + 16) & 1) == 0 && *(v8 + 104) && (*(v8 + 68) != 3 || *(v8 + 80) == 1))
      {
        name = 0;
        *&options.flags = xmmword_10000EE38;
        options.reserved[1] = 0;
        if (mach_port_construct(mach_task_self_, &options, 1uLL, &name))
        {
          sub_10000C89C();
        }

        v10 = sub_1000023C0(*(v8 + 104), *(v8 + 8), a1, name, 0);
        *(v8 + 204) = v10;
        if (v10)
        {
          if (v10 == 268435460)
          {
            sub_1000017B0(2, "failed to kickoff alive request to service %s, %s watchdog request handling code likely hung", v11, v12, v13, v14, v15, v16, *(v8 + 40));
          }

          else
          {
            v17 = *(v8 + 40);
            mach_error_string(v10);
            sub_1000017B0(2, "failed to kickoff alive request to service %s with error: %s", v18, v19, v20, v21, v22, v23, v17);
          }

          mach_port_mod_refs(mach_task_self_, name, 1u, -1);
        }

        else
        {
          if (mach_port_insert_member(mach_task_self_, name, dword_100027258))
          {
            sub_10000C89C();
          }

          *(v8 + 200) = name;
          v9 = (v9 + 1);
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  sub_1000017B0(0, "watchdogd sent %d pings for round %llu", v2, v3, v4, v5, v6, v7, v9);
  return v9;
}

uint64_t sub_1000023C0(mach_port_name_t a1, uint64_t a2, uint64_t a3, unsigned int a4, mach_msg_timeout_t timeout)
{
  v11 = a4;
  v12 = 1376256;
  *name = 0u;
  v13 = NDR_record;
  v14 = a2;
  v15 = a3;
  v8 = -2147483629;
  name[1] = a1;
  v10 = 0x1005BB490;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v8);
  }

  v6 = mach_msg(&v8, 17, 0x40u, 0, 0, timeout, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((v8 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, name[2]);
    }

    mach_msg_destroy(&v8);
  }

  return v6;
}

void sub_1000024B0(id a1)
{
  if (IODataQueueWaitForAvailableData(qword_100027170, dword_100027178))
  {
    sub_10000C89C();
  }

  do
  {
    bzero(&data, 0x210uLL);
    dataSize = 528;
    v1 = IODataQueueDequeue(qword_100027170, &data, &dataSize);
    v8 = v1;
    if (v1)
    {
      if (v1 == -536870169)
      {
        return;
      }

      v22 = mach_error_string(v1);
      sub_1000017B0(2, "LOGGING ERROR: IODataQueueDequeue returned %s", v9, v10, v11, v12, v13, v14, v22);
    }

    else
    {
      sub_1000025E0(data, v25, v2, v3, v4, v5, v6, v7, &v26);
      v21 = atomic_exchange(&dword_10002725C, 0);
      if (v21)
      {
        sub_1000017B0(2, "dropped %d messages from service monitoring thread", v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  while (v8 != -536870169);
}

void sub_100002620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 76);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *buf = 134218242;
    v10 = v4;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%llu: %s", buf, 0x16u);
  }

  if (qword_1000271A0)
  {
    *(*(*(a1 + 40) + 8) + 24) = sub_100001CF8(*(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 77), (*(*(a1 + 48) + 8) + 24));
    v6 = *(a1 + 48);
    if (*(*(v6 + 8) + 24))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000C6A0;
      v8[3] = &unk_1000191A0;
      v7 = *(a1 + 40);
      v8[4] = v6;
      v8[5] = v7;
      dispatch_sync(qword_1000271A0, v8);
    }
  }

  free(*(a1 + 64));
}

void sub_10000277C(int a1, __uint64_t a2)
{
  if (a1 < 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (a2 <= v5)
      {
        break;
      }

      v6 = (a2 - v5) / 0xF4240;
      bzero(&msg, 0x538uLL);
      bzero(v29, 0x538uLL);
      v7 = mach_msg(&msg, 1282, 0, 0x57Cu, dword_100027258, v6, 0);
      if (v7 != 268451843)
      {
        if (v7)
        {
          v28 = mach_error_string(v7);
          sub_1000017B0(2, "failed to receive message with error: %s", v14, v15, v16, v17, v18, v19, v28);
        }

        else
        {
          ++v4;
          if (msg.msgh_id == 6009000)
          {
            sub_100002950(&msg, v29);
          }

          else
          {
            sub_1000017B0(0, "received message with an unknown message id: %d (Reply ID should be: %d)", v8, v9, v10, v11, v12, v13, msg.msgh_id);
          }
        }
      }
    }

    while (v4 < a1);
  }

  for (i = qword_1000271F8; i; i = *i)
  {
    v21 = *(i + 200);
    if (v21)
    {
      mach_port_mod_refs(mach_task_self_, v21, 1u, -1);
      *(i + 200) = 0;
    }
  }

  mach_port_mod_refs(mach_task_self_, dword_100027258, 3u, -1);
  dword_100027258 = 0;
  sub_1000017B0(0, "watchdogd_process_replies returning after processing %d replies (%d pings sent)", v22, v23, v24, v25, v26, v27, v4);
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) == 6009000)
  {
    if ((*a1 & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    LODWORD(v6) = *(a1 + 4);
    if ((v6 - 1337) < 0xFFFFFB5F)
    {
      goto LABEL_5;
    }

    v7 = *(a1 + 56);
    if (v7 > 0x400)
    {
      goto LABEL_5;
    }

    if (v6 - 152 < v7)
    {
      goto LABEL_5;
    }

    v9 = (v7 + 3) & 0xFFFFFFFC;
    if (v6 < v9 + 152)
    {
      goto LABEL_5;
    }

    v10 = a1 + v9;
    v11 = *(v10 + 148);
    if (v11 > 5)
    {
      goto LABEL_5;
    }

    v12 = v6 - v9;
    v13 = v11 <= (v12 - 152) >> 5 && v12 == 32 * v11 + 152;
    if (v13 && (v6 >= 0x43C ? (v6 = 1084) : (v6 = v6), memchr((a1 + 60), 0, v6 - 60)))
    {
      *(a2 + 32) = sub_100002AB8(*(a1 + 12), *(a1 + 32), *(a1 + 40), *(a1 + 48), (a1 + 60), *(v10 + 60), v10 + 68, (v10 + 152), v11);
    }

    else
    {
LABEL_5:
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

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

uint64_t sub_100002AB8(int a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, const void *a8, unsigned int a9)
{
  if (dword_1000266C0 <= a2)
  {
    sub_1000017B0(2, "received invalid client ID (%llu) in reply message, skipping message", a3, a4, a5, a6, a7, a8, a2);
    return 5;
  }

  v13 = a4;
  v14 = &qword_1000271F8;
  do
  {
    v14 = *v14;
  }

  while (v14 && v14[1] != a2);
  if (*(v14 + 50) != a1)
  {
    sub_1000017B0(2, "received message for client (with claimed client ID: %llu) doesn't match receive port, skipping message", a3, a4, a5, a6, a7, a8, a2);
    return 5;
  }

  sub_1000017B0(1, "received reply message from %s round: %llu is_alive: %d string: %s", a3, a4, a5, a6, a7, a8, v14[5]);
  if (*(v14 + 51))
  {
    sub_10000C89C();
  }

  *(v14 + 208) = 1;
  *(v14 + 209) = v13 != 0;
  v14[155] = a6;
  if (*a5)
  {
    __strlcpy_chk();
  }

  for (i = 0; i != 10; ++i)
  {
    v22 = *(a7 + i * 8);
    if (v22)
    {
      v14[i + 156] = v22;
    }
  }

  if (*(v14 + 17) != 2)
  {
    return 0;
  }

  sub_1000017B0(0, "reply from controller %s for round: %llu includes %d ephemeral services", v15, v16, v17, v18, v19, v20, v14[5]);
  if (!a9)
  {
    return 0;
  }

  if (a9 >= 6)
  {
    sub_10000C89C();
  }

  memcpy(v14 + 166, a8, 32 * a9);
  result = 0;
  v14[186] = a9;
  return result;
}

uint64_t sub_100002C8C(uint64_t a1)
{
  byte_1000270F0 = 0;
  v2 = (__chkstk_darwin)();
  __chkstk_darwin(v2);
  v91 = &v87[-v4];
  v5 = qword_1000271F8;
  if (!qword_1000271F8)
  {
    v79 = 1;
    return v79 & 1;
  }

  v88 = v3;
  v89 = 0;
  v92 = 0;
  v90 = 0;
  v93 = 0;
  v94 = 1;
  do
  {
    if (!sub_100002C54(v5) || *(v5 + 68) == 3 && *(v5 + 120) == qword_1000270E8 + 1)
    {
      goto LABEL_103;
    }

    if (*(v5 + 209) == 1)
    {
      v12 = qword_1000270E8;
      ++*(v5 + 128);
      *(v5 + 136) = a1;
      *(v5 + 192) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      *(v5 + 144) = v12;
      uuid_clear((v5 + 168));
      *(v5 + 188) = 0;
      *(v5 + 1496) = 0;
      atomic_store(0, (v5 + 184));
      v13 = *(v5 + 40);
      v84 = *(v5 + 128);
      sub_1000017B0(0, "watchdog poll for service %s returned successfully, %lld successful checkins", v14, v15, v16, v17, v18, v19, v13);
      goto LABEL_103;
    }

    v20 = *(v5 + 144);
    if (*(v5 + 120) > v20)
    {
      v20 = *(v5 + 120);
    }

    if (*(v5 + 160))
    {
      v21 = *(v5 + 160);
    }

    else
    {
      v21 = v20;
    }

    if (*(v5 + 192) != dword_1000266C4 && qword_1000270E8 + 2 == v21 + *(v5 + 56))
    {
      sub_1000017B0(2, "marking diagnostic collection next round for %s", v6, v7, v8, v9, v10, v11, *(v5 + 40));
      byte_1000270F0 = 1;
    }

    v22 = v5 + 1498;
    *(v5 + 1866) = 0u;
    *(v5 + 1882) = 0u;
    *(v5 + 1834) = 0u;
    *(v5 + 1850) = 0u;
    *(v5 + 1802) = 0u;
    *(v5 + 1818) = 0u;
    *(v5 + 1770) = 0u;
    *(v5 + 1786) = 0u;
    *(v5 + 1738) = 0u;
    *(v5 + 1754) = 0u;
    *(v5 + 1706) = 0u;
    *(v5 + 1722) = 0u;
    *(v5 + 1674) = 0u;
    *(v5 + 1690) = 0u;
    *(v5 + 1642) = 0u;
    *(v5 + 1658) = 0u;
    *(v5 + 1610) = 0u;
    *(v5 + 1626) = 0u;
    *(v5 + 1578) = 0u;
    *(v5 + 1594) = 0u;
    *(v5 + 1546) = 0u;
    *(v5 + 1562) = 0u;
    *(v5 + 1514) = 0u;
    *(v5 + 1530) = 0u;
    *(v5 + 1498) = 0u;
    v23 = snprintf((v5 + 1498), 0x190uLL, "checkin with service: %s ", *(v5 + 40));
    if (v23 <= 0x190)
    {
      v24 = 400 - v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = snprintf((v22 + v23), v24, "(%d induced crashes) ", *(v5 + 196)) + v23;
    if (v25 <= 0x190)
    {
      v26 = 400 - v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v5 + 204);
    if (v27)
    {
      if (v27 == 268435460)
      {
        v28 = *(v5 + 40);
        v29 = snprintf((v22 + v25), v26, "failed to send ping message, %s watchdog request handling code likely hung ");
      }

      else
      {
        mach_error_string(v27);
        v29 = snprintf((v22 + v25), v26, "failed to send ping message with error %s ");
      }
    }

    else if (*(v5 + 208))
    {
      if (*(v5 + 209))
      {
        sub_10000D02C();
      }

      v29 = snprintf((v22 + v25), v26, "returned not alive ");
    }

    else
    {
      v29 = snprintf((v22 + v25), v26, "didn't receive a reply from the service ");
    }

    v30 = v25 + v29;
    if (v30 <= 0x190)
    {
      v31 = 400 - v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = *(v5 + 1240);
    if (*(v5 + 210))
    {
      if (v32)
      {
        v33 = snprintf((v22 + v30), v31, "with context:\n%s (code 0x%llx)\n");
      }

      else
      {
        v33 = snprintf((v22 + v30), v31, "with context:\n%s\n");
      }

      goto LABEL_39;
    }

    if (v32)
    {
      v81 = *(v5 + 1240);
      v33 = snprintf((v22 + v30), v31, "with code 0x%llx\n");
LABEL_39:
      v30 += v33;
    }

    if (v30 <= 0x190)
    {
      v34 = 400 - v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v5 + 128);
    if (v35)
    {
      v30 += snprintf((v22 + v30), v34, "%lld seconds since last successful checkin, %lld total successful checkins since ", (a1 - *(v5 + 136)) / 0x3B9ACA00uLL, v35);
      if (v30 <= 0x190)
      {
        v36 = 400 - v30;
      }

      else
      {
        v36 = 0;
      }

      if (*(v5 + 68) == 3 && (v37 = *(v5 + 88), *(v5 + 120) != *(v37 + 120)))
      {
        v82 = *(v37 + 40);
        v85 = (a1 - *(v5 + 112)) / 0x3B9ACA00uLL;
        v39 = snprintf((v22 + v30), v36, "monitoring enabled by %s (%lld seconds ago)");
      }

      else
      {
        v38 = (a1 - *(v5 + 112)) / 0x3B9ACA00uLL;
        v39 = snprintf((v22 + v30), v36, "%lld seconds ago");
      }
    }

    else if (*(v5 + 68) == 3 && (v40 = *(v5 + 88), *(v5 + 120) != *(v40 + 120)))
    {
      v83 = *(v40 + 40);
      v86 = (a1 - *(v5 + 112)) / 0x3B9ACA00uLL;
      v39 = snprintf((v22 + v30), v34, "no successful checkins since monitoring enabled by %s (%lld seconds ago)");
    }

    else
    {
      v41 = (a1 - *(v5 + 112)) / 0x3B9ACA00uLL;
      v39 = snprintf((v22 + v30), v34, "no successful checkins since %lld seconds ago");
    }

    v42 = *(v5 + 152);
    if (v42)
    {
      v43 = v30 + v39;
      if (v43 <= 0x190)
      {
        v44 = 400 - v43;
      }

      else
      {
        v44 = 0;
      }

      snprintf((v22 + v43), v44, ", %lld seconds since last crashed by watchdogd, ", (a1 - v42) / 0x3B9ACA00uLL);
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (sub_100005984())
      {
        sub_1000017B0(2, "skipping evaluating or taking action on service %s because watchdogd defanged", v51, v52, v53, v54, v55, v56, *(v5 + 40));
        goto LABEL_103;
      }

      v57 = sub_100005FAC(*(v5 + 24), 0);
      if (v57 >= 1)
      {
        if (sub_100005F00(v57))
        {
          sub_1000017B0(2, "skipping evaluating or taking action on service %s because service being debugged", v45, v46, v47, v48, v49, v50, *(v5 + 24));
          goto LABEL_103;
        }
      }
    }

    sub_1000017B0(2, "%s", v45, v46, v47, v48, v49, v50, v5 - 38);
    if ((byte_100027202 & 1) == 0 && qword_1000270E8 == v21 + *(v5 + 56) / 2)
    {
      v64 = 0;
      v65 = 0;
      v66 = v5 + 1248;
      do
      {
        while (*(v66 + 8 * v64))
        {
          sub_1000017B0(0, "Evaluate Healthiness Found Unresponsive Thread", v58, v59, v60, v61, v62, v63, v87[0]);
          v65 = 1;
          if (v64++ == 9)
          {
            goto LABEL_76;
          }
        }

        ++v64;
      }

      while (v64 != 10);
      if ((v65 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v68 = 0;
      v69 = &v91[112 * v93];
      *v69 = *(v5 + 24);
      *(v69 + 11) = (10 * ((*(v5 + 56) + (*(v5 + 56) >> 31)) >> 1));
      do
      {
        *&v69[v68 + 8] = *(v66 + v68);
        v68 += 8;
      }

      while (v68 != 80);
      uuid_generate((v5 + 168));
      uuid_copy(v69 + 96, (v5 + 168));
      ++v93;
      v90 = 1;
    }

LABEL_79:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_101;
    }

    v72 = 2863311532 * *(v5 + 56);
    if (qword_1000270E8 < v21 + (HIDWORD(v72) + (v72 >> 63)))
    {
      goto LABEL_101;
    }

    v74 = 0;
    v73 = 0;
    atomic_compare_exchange_strong((v5 + 184), &v74, 1u);
    v75 = v74 == 0;
    if (*(v5 + 63) == 1)
    {
      v73 = *(v5 + 188) ^ 1;
    }

    if (!((v74 == 0) | v73 & 1))
    {
      goto LABEL_101;
    }

    if ((v89 & 0x100000000) != 0)
    {
      if (v92)
      {
        goto LABEL_88;
      }
    }

    else if (sub_100006EC4(has_internal_diagnostics, v71, v6, v7, v8, v9, v10, v11))
    {
LABEL_88:
      sub_100001DF4();
      v76 = HIDWORD(v92);
      if ((v92 & 0x100000000) != 0)
      {
        v77 = HIDWORD(v92);
      }

      else
      {
        v77 = 1;
      }

      if (v75)
      {
        v76 = v77;
      }

      LODWORD(v92) = 1;
      HIDWORD(v92) = v76;
      if (v73)
      {
        *(v5 + 188) = 1;
        sub_100007C18(*(v5 + 40));
      }

      goto LABEL_95;
    }

    LODWORD(v92) = 0;
LABEL_95:
    if ((v92 & 0x100000000) != 0 && v75)
    {
      v78 = v88 + 24 * v89;
      *v78 = *(v5 + 40);
      if (uuid_is_null((v5 + 168)))
      {
        uuid_generate((v5 + 168));
      }

      uuid_copy((v78 + 8), (v5 + 168));
      LODWORD(v89) = v89 + 1;
    }

    HIDWORD(v89) = 1;
LABEL_101:
    if (qword_1000270E8 >= v21 + *(v5 + 56))
    {
      v94 = 0;
      *(v5 + 1496) = 1;
    }

LABEL_103:
    v5 = *v5;
  }

  while (v5);
  if ((v92 & 0x100000000) != 0)
  {
    sub_100006F78(v88, v89, &stru_100018EE0);
  }

  v79 = v94;
  if (v92)
  {
    sub_100006F38();
  }

  if (v90)
  {
    sub_100008020(v91, v93, v6, v7, v8, v9, v10, v11, v87[0]);
  }

  return v79 & 1;
}

unsigned __int8 *sub_1000034BC(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    result = stackshot_config_dealloc();
    *v1 = 0;
    atomic_store(0, v1 + 8);
  }

  return result;
}

void sub_1000034F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if (byte_100027160 == 1)
  {

    sub_1000017B0(0, "skipping setting PMU boot stage because -wdt_no_pmu found in boot-args or no-pmu found in EDT", a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (!dword_100027148)
    {
      sub_10000C89C();
    }

    if ((byte_100027164 & 1) == 0)
    {
      if (IORegistryEntrySetCFProperty(dword_100027148, @"IOPMUBootStage", [NSNumber numberWithUnsignedInt:254]))
      {
        sub_1000017B0(2, "Unable to set device boot stage to 0x%x, IORegistryEntrySetCFProperty returned 0x%x", v9, v10, v11, v12, v13, v14, 254);
      }

      byte_100027164 = 1;
    }
  }
}

void *sub_1000035D0()
{
  result = pthread_getspecific(qword_100027238);
  if (!result)
  {
    sub_10000C89C();
  }

  if (byte_100026B44 == 1)
  {
    v1 = atomic_load((qword_100026B38 + 8));
    if ((v1 & 1) == 0)
    {
      v2 = atomic_load((qword_100026B38 + 24));
      if ((v2 & 1) == 0)
      {
        v3 = getpid();
        result = proc_set_dirty(v3, 0);
        byte_100026B44 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100003648(dispatch_time_t timeout, uint64_t a2)
{
  if (!a2)
  {
    sub_10000C89C();
  }

  if (!dispatch_semaphore_wait(qword_100027220, timeout))
  {
    if (dispatch_time_to_nsec())
    {
      sub_10000C89C();
    }

    sub_10000C89C();
  }

  return 1;
}

uint64_t sub_10000372C(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  *a1 = 0;
  v3 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v5 = 0;
    do
    {
      sp = 0;
      if ((*(v3 + 16) & 1) == 0 && *(v3 + 60) == 1)
      {
        v6 = bootstrap_look_up(bootstrap_port, *(v3 + 32), &sp);
        v13 = *(v3 + 32);
        if (v6)
        {
          bootstrap_strerror(v6);
          sub_1000017B0(0, "late checkin service discovery for service %s failed, returned: %s", v14, v15, v16, v17, v18, v19, v13);
          *a1 = 1;
        }

        else
        {
          sub_1000017B0(0, "found late checkin service: %s", v7, v8, v9, v10, v11, v12, *(v3 + 32));
          *(v3 + 104) = sp;
          *(v3 + 60) = 0;
          *(v3 + 120) = a2;
          *(v3 + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          sub_10000BAFC(0, *(v3 + 24), v20, v21, v22, v23, v24, v25, v27);
          v5 = 1;
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10000384C(int a1, int a2, uint64_t a3, intptr_t notificationID, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 == -536870144)
  {
    sub_1000017B0(0, "received system wake notification", a3, notificationID, a5, a6, a7, a8, v26);
    if (byte_100026C94 == 1)
    {
      byte_100026C94 = 0;
      if (qword_1000271F0)
      {
        dispatch_async(qword_1000271F0, &stru_100018D80);
      }

      sub_100003948("wake", v19, v20, v21, v22, v23, v24, v25, a9);
    }
  }

  else
  {
    if (a3 == -536870272)
    {
      sub_1000017B0(0, "received system sleep notification", a3, notificationID, a5, a6, a7, a8, v26);
      byte_100026C94 = 1;
      sub_100008774(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else if (a3 != -536870288)
    {
      return;
    }

    v18 = dword_100026C90;

    IOAllowPowerChange(v18, notificationID);
  }
}

void sub_100003948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = dword_100026C84;
  if (dword_100026C84 <= 0)
  {
    sub_10000C89C();
  }

  --dword_100026C84;
  if (v9 == 1)
  {
    sub_100003998(a1);

    sub_100003A0C(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_100003998(uint64_t a1)
{
  if (qword_1000270D8)
  {
    sub_10000C89C();
  }

  v1 = a1;
  qword_1000270D8 = a1;
  if (qword_1000270E0 != -1)
  {
    sub_10000D018();
  }

  dispatch_semaphore_signal(qword_100027230);
  sub_1000017B0(0, "signaled service monitoring thread to resume for %s", v2, v3, v4, v5, v6, v7, v1);
}

void sub_100003A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = IOConnectCallScalarMethod(dword_100026B08, 4u, 0, 0, 0, 0);
  if (v9)
  {
    sub_10000CDF8(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  sub_1000017B0(0, "called into KEXT to re-enable userspace monitoring", v11, v12, v13, v14, v15, v16, a9);
}

void sub_100003A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 60;
  waitTime = 60;
  if (byte_100026C88 == 1)
  {
    v8 = 120;
    waitTime.tv_sec = 120;
  }

  sub_1000017B0(0, "Wait for IOKit to quiesce in %ds", a3, a4, a5, a6, a7, a8, v8);
  v9 = sub_100003B88();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WatchdogdWaitForIOKitQuiese", &unk_100014123, buf, 2u);
  }

  if (IOKitWaitQuietWithOptions(kIOMainPortDefault, &waitTime, 1u))
  {
    sub_100005A34("Timeout waiting for IOKit to quiesce in 60s");
  }

  v10 = sub_100003B88();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WatchdogdWaitForIOKitQuiese", &unk_100014123, v11, 2u);
  }
}

id sub_100003B88()
{
  if (qword_100027190 != -1)
  {
    sub_10000D0F4();
  }

  v1 = qword_100027188;

  return v1;
}

void wd_optin_service_register(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    sub_10000C89C();
  }

  if (!v6)
  {
    sub_10000C89C();
  }

  v8 = v7;
  if (!v7)
  {
    sub_10000C89C();
  }

  if (sub_100003D54())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018A70);
    xpc_connection_activate(mach_service);
    v10 = sub_100003E6C(v5, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003F94;
    v12[3] = &unk_100018A98;
    v13 = mach_service;
    v14 = v8;
    v11 = mach_service;
    xpc_connection_send_message_with_reply(v11, v10, v6, v12);
  }

  else
  {
    *__error() = 45;
    v8[2](v8, 0);
  }
}

BOOL sub_100003D54()
{
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10000C8B8();
    return 0;
  }

  if (qword_1000266D8 != -1)
  {
    sub_10000C8FC();
  }

  if (byte_1000266D0 == 1)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10000C968();
    return 0;
  }

  if (qword_1000266E0 != -1)
  {
    sub_10000C910();
  }

  if (byte_1000266E8 != 1)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10000C924();
    return 0;
  }

  return result;
}

void sub_100003E24(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

id sub_100003E6C(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "watchdogd_request_command", a2);
  if (!v3)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    xpc_dictionary_set_data(v4, "watchdogd_optin_service_identifier", [v5 bytes], objc_msgSend(v5, "length"));

LABEL_4:
    v7 = v4;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9F0(v6);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

void sub_100003F94(uint64_t a1, void *a2)
{
  sub_100003FE4(a2);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

uint64_t sub_100003FE4(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB4C(v1);
    }

    v3 = __error();
    v2 = 0;
    v4 = 61;
    goto LABEL_7;
  }

  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v1, "watchdogd_request_result");
    if (int64 == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v7 = "optin un-registration successful";
        v8 = &v9;
        goto LABEL_19;
      }
    }

    else
    {
      if (int64 != 1)
      {
        if (int64)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10000CAD0();
          }

          v3 = __error();
          if ((int64 - 3) > 1)
          {
            v2 = 0;
            v4 = 22;
          }

          else
          {
            v2 = 0;
            v4 = 1;
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10000CA8C();
          }

          v3 = __error();
          v2 = 0;
          v4 = 94;
        }

LABEL_7:
        *v3 = v4;
        goto LABEL_8;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v7 = "optin registration successful";
        v8 = &v10;
LABEL_19:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }

    v2 = 1;
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:

  return v2;
}

uint64_t wd_optin_service_register_sync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;
  if (sub_100003D54())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018AB8);
    xpc_connection_activate(mach_service);
    v4 = sub_100003E6C(v2, 0);
    v5 = xpc_connection_send_message_with_reply_sync(mach_service, v4);
    v6 = sub_100003FE4(v5);
    xpc_connection_cancel(mach_service);
  }

  else
  {
    v6 = 0;
    *__error() = 45;
  }

  return v6;
}

void sub_100004248(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

BOOL wd_optin_service_unregister_sync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;
  v3 = sub_100003D54();
  if (v3)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018AD8);
    xpc_connection_activate(mach_service);
    v5 = sub_100003E6C(v2, 1u);
    v6 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
    sub_100003FE4(v6);
    xpc_connection_cancel(mach_service);
  }

  else
  {
    *__error() = 45;
  }

  return v3;
}

void sub_100004358(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

void sub_1000043A0(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1000266D0 = v2 != 0;
  }
}

void sub_1000043FC(id a1)
{
  if (qword_1000266F0 != -1)
  {
    sub_10000CBD8();
  }

  if (os_parse_boot_arg_from_buffer_int())
  {
    byte_1000266E8 = 1;
  }
}

void sub_10000447C(id a1)
{
  v1 = 1024;
  if (sysctlbyname("kern.bootargs", &unk_1000266F8, &v1, 0, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CBEC();
    }

    _os_crash();
    __break(1u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v3 = &unk_1000266F8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "retrieved current device boot-args: %s", buf, 0xCu);
  }
}

void sub_10000457C()
{
  v0 = sub_100008BA4();
  v1 = strlen(v0);
  if (!strnstr(v0, "wdt_test=", v1))
  {
    return;
  }

  v2 = strlen(v0);
  v3 = strnstr(v0, "wdt_controller", v2);
  v4 = strlen(v0);
  v5 = strnstr(v0, "wdt_ephemeral", v4);
  v6 = strlen(v0);
  v7 = strnstr(v0, "wdt_optin", v6);
  v8 = strlen(v0);
  v9 = strnstr(v0, "wdt_exclave", v8);
  v10 = strlen(v0);
  v11 = strnstr(v0, "wdt_unblock", v10);
  bzero(buffer, 0x400uLL);
  bzero(__str, 0x400uLL);
  v18 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v18)
  {
    sub_1000017B0(2, "NVRAM is not supported on this system", v12, v13, v14, v15, v16, v17, v118);
  }

  CFProperty = IORegistryEntryCreateCFProperty(v18, @"boot-args", 0, 0);
  if (!CFProperty)
  {
    sub_1000017B0(2, "No boot-args NVRAM variable found", v19, v20, v21, v22, v23, v24, v118);
  }

  CFStringGetCString(CFProperty, buffer, 1024, 0x8000100u);
  sub_1000017B0(0, "Retrieved current boot-args from NVRAM: %s\n", v26, v27, v28, v29, v30, v31, buffer);
  CFRelease(CFProperty);
  sub_100004E84(buffer, "wdt_test=");
  sub_100004E84(buffer, "wdt_unblock=");
  sub_100004E84(buffer, "wdt_ephemeral=");
  sub_100004E84(buffer, "wdt_controller=");
  sub_100004E84(buffer, "wdt_optin=");
  sub_100004E84(buffer, "wdt_exclave=");
  sub_100004E84(buffer, "wdt=");
  sub_100004E84(buffer, "-wdt_no_pmu");
  snprintf(__str, 0x400uLL, "%s wdt=-1 -wdt_no_pmu", buffer);
  v32 = CFStringCreateWithCString(kCFAllocatorDefault, __str, 0x8000100u);
  v33 = IORegistryEntrySetCFProperty(v18, @"boot-args", v32);
  if (v33)
  {
    mach_error_string(v33);
    sub_1000017B0(2, "Failed to set new boot-args to %s in NVRAM, IORegistryEntrySetCFProperty returned %s", v34, v35, v36, v37, v38, v39, __str);
  }

  CFRelease(v32);
  v40 = IORegistryEntrySetCFProperty(v18, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY");
  if (v40)
  {
    v47 = mach_error_string(v40);
    sub_1000017B0(2, "Failed to flush new boot-args to in NVRAM, IORegistryEntrySetCFProperty returned %s", v48, v49, v50, v51, v52, v53, v47);
  }

  sub_1000017B0(0, "Updated and flushed new boot-args: %s", v41, v42, v43, v44, v45, v46, __str);
  v54 = strlen(v0);
  if (strnstr(v0, "wdt_test=healthy", v54) || (v61 = strlen(v0), strnstr(v0, "wdt_test=tm_nopanic", v61)) || (v62 = strlen(v0), strnstr(v0, "wdt_test=tm_panic", v62)))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args for daemon (controller: %d) (ephemeral: %d) (optin: %d) (exclave :%d) (unblock: %d)", v55, v56, v57, v58, v59, v60, v3 != 0);
    if (dword_1000266C0 <= 2)
    {
      sub_10000C89C();
    }

    memcpy(&unk_10001F728, &unk_10001C318, 0x770uLL);
    if (v11)
    {
      v63 = "-b";
    }

    else
    {
      v63 = 0;
    }

    sub_100004C44(off_10001F740[0], off_10001F748[0], "/usr/local/libexec/watchdogtestdaemon", v63, 0);
    v64 = 1;
    dword_1000266C0 = 1;
    qword_1000266B8 = 1;
    if (v3)
    {
      memcpy(&unk_10001FE98, &unk_10001CA88, 0x770uLL);
      sub_100004C44(off_10001FEB0[0], off_10001FEB8[0], "/usr/local/libexec/watchdogtestcontroller", "-c", 0);
      v64 = ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v5)
    {
      v65 = (&unk_10001F728 + 1904 * v64);
      memcpy(v65, &unk_10001D1F8, 0x770uLL);
      sub_100004C44(v65[3], v65[4], "/usr/local/libexec/watchdogtestephemeral", "-e", 0);
      ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v7)
    {
      sub_100004C44(off_10001D980[0], off_10001D988[0], "/usr/local/libexec/watchdogtestoptin", "-o0", 0);
      sub_100004C44(off_10001E0F0[0], off_10001E0F8[0], "/usr/local/libexec/watchdogtestoptin", "-o1", 0);
    }

    if (v9)
    {
      memcpy(&unk_10001F728 + 1904 * dword_1000266C0, &unk_10001E848, 0x770uLL);
      sub_100004C44(off_10001E860[0], off_10001E868[0], "/usr/local/libexec/watchdogtestexclave", "-m", 0);
      ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v11)
    {
      sub_100004C44(off_10001EFD0[0], off_10001EFD8[0], "/usr/local/libexec/watchdogtestunblock", "-d", "com.apple.watchdogtestd.listener");
    }

    return;
  }

  v66 = strlen(v0);
  if (strnstr(v0, "wdt_test=no_user_checkin", v66))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args to not run, exiting", v67, v68, v69, v70, v71, v72, v119);
    goto LABEL_37;
  }

  v73 = strlen(v0);
  if (strnstr(v0, "wdt_test=cpu_hang", v73))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args to trigger CPU hang", v74, v75, v76, v77, v78, v79, v119);
    sub_100005B58();
  }

  v80 = strlen(v0);
  if (strnstr(v0, "wdt_test=soc_watchdog", v80))
  {
    sub_10000C258(0, "triggering SoC watchdog", v81, v82, v83, v84, v85, v86, v119);
    sub_1000034F4(v87, v88, v89, v90, v91, v92, v93, v94, v120);
    v95 = 0;
LABEL_36:
    sub_100005BAC(v95);
LABEL_37:
    sub_1000087B0();
  }

  v96 = strlen(v0);
  if (strnstr(v0, "wdt_test=panic_soc_watchdog", v96))
  {
    sub_10000C258(0, "triggering panic SoC watchdog", v97, v98, v99, v100, v101, v102, v119);
    sub_1000034F4(v103, v104, v105, v106, v107, v108, v109, v110, v121);
    v95 = 1;
    goto LABEL_36;
  }

  v111 = strlen(v0);
  if (strnstr(v0, "wdt_test=iokit_busy", v111))
  {
    sub_10000C258(0, "triggering IOKit busy", v112, v113, v114, v115, v116, v117, v119);
    sub_100005C00();
  }
}

void sub_100004C44(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v10 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v11 = objc_autoreleasePoolPush();
  v12 = launch_data_new_string(a1);
  launch_data_dict_insert(v10, v12, "Label");
  v13 = launch_data_alloc(LAUNCH_DATA_ARRAY);
  v14 = launch_data_new_string(a3);
  launch_data_array_set_index(v13, v14, 0);
  if (a4)
  {
    v15 = launch_data_new_string(a4);
    launch_data_array_set_index(v13, v15, 1uLL);
  }

  launch_data_dict_insert(v10, v13, "ProgramArguments");
  v16 = launch_data_new_string("Interactive");
  launch_data_dict_insert(v10, v16, "POSIXSpawnType");
  v17 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v10, v17, "EnablePressuredExit");
  v18 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v10, v18, "EnableTransactions");
  v19 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v20 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v19, v20, "SuccessfulExit");
  launch_data_dict_insert(v10, v19, "KeepAlive");
  v21 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v22 = launch_data_new_BOOL(1);
  launch_data_dict_insert(v21, v22, a2);
  if (a5)
  {
    v23 = launch_data_new_BOOL(1);
    launch_data_dict_insert(v21, v23, a5);
  }

  launch_data_dict_insert(v10, v21, "MachServices");
  objc_autoreleasePoolPop(v11);
  v24 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  if (!v24)
  {
    sub_10000C89C();
  }

  v25 = v24;
  launch_data_dict_insert(v24, v10, "SubmitJob");
  v26 = launch_msg(v25);
  if (v26)
  {
    v27 = v26;
    if (launch_data_get_type(v26) != LAUNCH_DATA_ERRNO || !launch_data_get_errno(v27))
    {
      launch_data_free(v25);
      v25 = v27;
      goto LABEL_11;
    }

LABEL_15:
    sub_10000CC74(a2);
  }

  if (*__error())
  {
    goto LABEL_15;
  }

LABEL_11:

  launch_data_free(v25);
}

void sub_100004E84(char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  if (v4 > v5)
  {
    __s2 = 0;
    v6 = strnstr(a1, a2, v5);
    if (!v6)
    {
      asprintf(&__s2, " %s", a2);
      v7 = __s2;
      v8 = strstr(a1, __s2);
      free(v7);
      if (!v8)
      {
        sub_1000017B0(0, "No existing %s boot-arg to remove.\n", v9, v10, v11, v12, v13, v14, a2);
        return;
      }

      v6 = v8 + 1;
    }

    v15 = &v6[strcspn(v6, " ")];
    v16 = &v15[strspn(v15, " ")];
    do
    {
      v17 = v6--;
    }

    while (v6 >= a1 && *v6 == 32);
    if (*v16)
    {
      v18 = &v16[-(v17 != a1)];
      v19 = strlen(v18);
      memmove(v17, v18, v19 + 1);
    }

    else
    {
      *v17 = 0;
    }
  }
}

uint64_t sub_100004FB4()
{
  __chkstk_darwin();
  v98 = 0;
  bzero(&v105, 0x878uLL);
  v104[1] = 0;
  v104[0] = 0;
  v103[1] = 0;
  v103[0] = 0;
  v97 = 0;
  v102 = 0;
  *uu = 0;
  v0 = +[NSMutableArray array];
  if (!qword_1000271E8)
  {
    sub_10000C89C();
  }

  v1 = v0;
  if (statfs("/", &v105))
  {
    v2 = __error();
    v89 = strerror(*v2);
    v9 = "failed to statfs root with error: %s";
LABEL_4:
    sub_1000017B0(2, v9, v3, v4, v5, v6, v7, v8, v89);
LABEL_5:
    v10 = 0;
    goto LABEL_36;
  }

  sub_100005558(v105.f_mntfromname, v104, v103, &v98);
  v11 = APFSContainerVolumeGroupGet();
  if (v11 == 49197)
  {
    goto LABEL_11;
  }

  v12 = v11;
  if (v11 == 49154)
  {
    goto LABEL_11;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  if (uuid_is_null(uu))
  {
    if (uuid_is_null(uu))
    {
LABEL_11:
      v19 = [NSString stringWithFormat:@"%ss%d", v103, v98];
      [v1 addObject:v19];

      goto LABEL_13;
    }

LABEL_12:
    v20 = strerror(v12 & 0x3FFF);
    sub_1000017B0(2, "error looking up volume group: %s", v21, v22, v23, v24, v25, v26, v20);
    goto LABEL_13;
  }

  sub_1000017B0(0, "root volume is part of a volume group looking up volumes to monitor...", v13, v14, v15, v16, v17, v18, v88);
  *&v100.f_bsize = 0;
  Volumes = APFSContainerVolumeGroupGetVolumes();
  if (Volumes)
  {
    strerror(Volumes & 0x3FFF);
    sub_1000017B0(2, "failed to get volume group from disk: %s with error: %s", v42, v43, v44, v45, v46, v47, v104);
    goto LABEL_5;
  }

  if (CFArrayGetCount(*&v100.f_bsize) < 1)
  {
    sub_10000C89C();
  }

  if (CFArrayGetCount(*&v100.f_bsize) >= 1)
  {
    v85 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*&v100.f_bsize, v85);
      notification = 0;
      if (!CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &notification))
      {
        sub_10000C89C();
      }

      v87 = [NSString stringWithFormat:@"%ss%d", v103, notification];
      [v1 addObject:v87];

      ++v85;
    }

    while (CFArrayGetCount(*&v100.f_bsize) > v85);
  }

  CFRelease(*&v100.f_bsize);
LABEL_13:
  bzero(&v100, 0x878uLL);
  v95 = 0;
  if (statfs("/private/var", &v100))
  {
    v27 = __error();
    v90 = strerror(*v27);
    sub_1000017B0(2, "failed to statfs data volume with error: %s", v28, v29, v30, v31, v32, v33, v90);
  }

  else
  {
    v34 = APFSVolumeRole();
    mach_error_string(v34);
    sub_1000017B0(2, "Failed to get role of %s, expected data volume, actual role 0x%x, error message: %s\n", v35, v36, v37, v38, v39, v40, v100.f_mntfromname);
  }

  if (![v1 count])
  {
    v9 = "No volumes watchdog needs to monitor are found\n";
    goto LABEL_4;
  }

  notification = 0;
  v48 = IONotificationPortCreate(kIOMainPortDefault);
  if (!v48)
  {
    sub_10000C89C();
  }

  v49 = v48;
  IONotificationPortSetDispatchQueue(v48, qword_1000271E8);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v50 = v1;
  v51 = [v50 countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v92;
    do
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v92 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [*(*(&v91 + 1) + 8 * i) UTF8String];
        v56 = IOBSDNameMatching(kIOMainPortDefault, 0, v55);
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v56);
        if (MatchingService)
        {
          v64 = MatchingService;
          if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
          {
            v71 = IOServiceAddInterestNotification(v49, v64, "IOGeneralInterest", sub_100005648, 0, &notification);
            if (v71)
            {
              mach_error_string(v71);
              sub_1000017B0(2, "failed to register volume interest notification for: %s with error: %s", v78, v79, v80, v81, v82, v83, v55);
            }

            else
            {
              sub_1000017B0(0, "registered volume interest notification for: %s", v72, v73, v74, v75, v76, v77, v55);
            }
          }

          else
          {
            sub_1000017B0(2, "unable to monitor: %s for freeze notifications, not an APFS volume", v65, v66, v67, v68, v69, v70, v55);
          }

          IOObjectRelease(v64);
        }

        else
        {
          sub_1000017B0(2, "failed to find IOKit object for volume: %s", v58, v59, v60, v61, v62, v63, v55);
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v91 objects:v99 count:16];
    }

    while (v52);
  }

  v10 = v97;
LABEL_36:

  return v10 & 1;
}

void sub_100005558(const char *a1, char *a2, char *a3, uint64_t a4)
{
  v17 = 0;
  v8 = strlen(a1);
  v9 = strnstr(a1, "/dev", v8);
  if (v9 && ((v16 = v9, sscanf(v9, "/dev/disk%ds%d", &v17, a4) == 2) || sscanf(v16, "disk%ds%d", &v17, a4) == 2))
  {
    snprintf(a2, 0x10uLL, "/dev/disk%d", v17);
    snprintf(a3, 0x10uLL, "disk%d", v17);
  }

  else
  {
    sub_1000017B0(2, "failed to parse disk information from root_disk_name: %s", v10, v11, v12, v13, v14, v15, a1);
  }
}

void sub_100005648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 <= -536330231)
  {
    if (a3 == -536330234)
    {
      v22 = dword_100026B00;
      if (!dword_100026B00)
      {
        sub_100008774("volume freeze notification", a2, a3, a4, a5, a6, a7, a8);
        v22 = dword_100026B00;
      }

      dword_100026B00 = v22 + 1;
      v9 = "received volume freeze notification";
      goto LABEL_22;
    }

    if (a3 == -536330233)
    {
      if (!--dword_100026B00)
      {
        sub_100003948("volume unfreeze notification", a2, a3, a4, a5, a6, a7, a8, v24);
      }

      v9 = "received volume unfreeze complete notification";
      goto LABEL_22;
    }

LABEL_13:
    sub_1000017B0(0, "ignoring interest notification of type: %u", a3, a4, a5, a6, a7, a8, a3);
    return;
  }

  if (a3 == -536330230)
  {
    if ((byte_100026B04 & 1) == 0)
    {
      byte_100026B04 = 1;
      sub_100008774("volume transcribe start notification", a2, a3, a4, a5, a6, a7, a8);
      v9 = "received volume transcribe start notification";
LABEL_22:
      v23 = 0;
      goto LABEL_23;
    }

    v9 = "duplicated volume transcribe start notification!";
LABEL_20:
    v23 = 2;
LABEL_23:

    sub_1000017B0(v23, v9, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  if (a3 != -536330229)
  {
    goto LABEL_13;
  }

  if (byte_100026B04 != 1)
  {
    v9 = "duplicated volume transcribe stop notification!";
    goto LABEL_20;
  }

  byte_100026B04 = 0;
  sub_100003948("volume transcribe stop notification", a2, a3, a4, a5, a6, a7, a8, v24);
  if (qword_100026AF8)
  {
    if (APFSVolumeNeedsCryptoMigration())
    {
      sub_1000017B0(2, "Cannot determine whether crypto migration for %s is needed with error %d", v16, v17, v18, v19, v20, v21, qword_100026AF8);
    }

    else
    {
      sub_1000017B0(0, "crypto migration finished", v16, v17, v18, v19, v20, v21, v25);
      sub_100008688(0);
    }
  }

  sub_1000017B0(0, "received volume transcribe stop notification", v10, v11, v12, v13, v14, v15, v25);
}

void sub_10000581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = IOServiceMatching("IOWatchdog");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
  if (!MatchingService)
  {
    sub_10000C258(2, "failed to discover watchdog KEXT service", v11, v12, v13, v14, v15, v16, v32);
    if (sub_100008CDC())
    {
      sub_10000C258(0, "detected virtual machine environment and no watchdog KEXT found, exiting...", v26, v27, v28, v29, v30, v31, v33);

      sub_1000087B0();
    }

    sub_10000CD0C();
  }

  v17 = MatchingService;
  v18 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &dword_100026B08);
  IOObjectRelease(v17);
  if (v18)
  {
    v25 = 1;
  }

  else
  {
    v25 = dword_100026B08 == 0;
  }

  if (v25)
  {
    sub_10000CCBC(&v34, v18);
  }

  sub_1000017B0(0, "connected to watchdog KEXT", v19, v20, v21, v22, v23, v24, a9);
}

BOOL sub_100005928()
{
  output = 0;
  outputCnt = 1;
  v0 = IOConnectCallScalarMethod(dword_100026B08, 0, 0, 0, &output, &outputCnt);
  if (v0)
  {
    sub_10000CD28(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return output != 0;
}

BOOL sub_100005984()
{
  output = 0;
  outputCnt = 1;
  v0 = IOConnectCallScalarMethod(dword_100026B08, 5u, 0, 0, &output, &outputCnt);
  if (v0)
  {
    sub_10000CD5C(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return output != 0;
}

void sub_1000059E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = IOConnectCallScalarMethod(dword_100026B08, 3u, 0, 0, 0, 0);
  if (v9)
  {
    sub_10000CDC4(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  sub_1000017B0(0, "called into KEXT to disable userspace monitoring", v11, v12, v13, v14, v15, v16, a9);
}

void sub_100005A34(const char *a1)
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
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
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x800uLL, "%s", a1);
  v1 = IOConnectCallStructMethod(dword_100026B08, 2u, __str, 0x800uLL, 0, 0);
  sub_1000017B0(2, "IOConnectCallStructMethod returned 0x%x", v2, v3, v4, v5, v6, v7, v1);
  _os_crash();
  __break(1u);
}

uint64_t sub_100005AE8(_BYTE *a1)
{
  outputStruct = 0;
  v11 = 2;
  if (!a1)
  {
    sub_10000C89C();
  }

  v2 = IOConnectCallStructMethod(dword_100026B08, 9u, 0, 0, &outputStruct, &v11);
  if (v2)
  {
    sub_10000CE2C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  *a1 = HIBYTE(outputStruct);
  return outputStruct;
}

void sub_100005B58()
{
  v0 = IOConnectCallScalarMethod(dword_100026B08, 6u, 0, 0, 0, 0);
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestCPUHang method, returned : %d", v1, v2, v3, v4, v5, v6, v0);
  _os_crash();
  __break(1u);
}

uint64_t sub_100005BAC(uint64_t a1)
{
  input = a1;
  result = IOConnectCallScalarMethod(dword_100026B08, 7u, &input, 1u, 0, 0);
  if (input)
  {
    sub_10000CE60(result, v2, v3, v4, v5, v6, v7, v8);
  }

  if (result)
  {
    sub_10000CE94(result, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_100005C00()
{
  result = IOConnectCallScalarMethod(dword_100026B08, 8u, 0, 0, 0, 0);
  if (result)
  {
    sub_10000CEC8(result, v1, v2, v3, v4, v5, v6, v7);
  }

  return result;
}

id sub_100005C3C()
{
  if (qword_100026B28 != -1)
  {
    sub_10000CEFC();
  }

  v1 = qword_100026B20;

  return v1;
}

void sub_100005C80(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.service_diagnostics", v3);
  v2 = qword_100026B20;
  qword_100026B20 = v1;

  if (!qword_100026B20)
  {
    sub_10000C89C();
  }
}

id sub_100005CF8(int a1)
{
  qword_100026B30 = malloc_type_calloc(a1, 0x1D0uLL, 0x105004013238DB1uLL);
  if (!qword_100026B30)
  {
    sub_10000C89C();
  }

  qword_100026B38 = malloc_type_calloc(2uLL, 0x10uLL, 0x1080040C20BADFCuLL);
  if (!qword_100026B38)
  {
    sub_10000C89C();
  }

  dword_100026B40 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v2 = dispatch_queue_create("com.apple.watchdogd.enhanced_diags", 0);
    v3 = qword_100026B10;
    qword_100026B10 = v2;

    v4 = dispatch_group_create();
    v5 = qword_100026B18;
    qword_100026B18 = v4;
  }

  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = objc_opt_self();
  v17 = objc_opt_self();
  v18 = objc_opt_self();
  v19 = objc_opt_self();
  v20 = objc_opt_self();
  v21 = objc_opt_self();
  return objc_opt_self();
}

uint64_t sub_100005F00(int a1)
{
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 13, 0, buffer, 64) == 64)
  {
    return (v11 >> 1) & 1;
  }

  v3 = __error();
  strerror(*v3);
  sub_1000017B0(2, "failed to get PROC_PIDT_SHORTBSDINFO on pid %d with error: %s", v4, v5, v6, v7, v8, v9, v1);
  return 0;
}

uint64_t sub_100005FAC(uint64_t a1, char **a2)
{
  v3 = a1;
  v4 = [NSString stringWithUTF8String:a1];
  if (!v4)
  {
    sub_10000C89C();
  }

  v5 = v4;
  v6 = +[OSLaunchdDomain currentDomain];
  v7 = [OSLaunchdJob copyJobWithLabel:v5 domain:v6];

  if (v7 || (+[OSLaunchdDomain systemDomain], v8 = objc_claimAutoreleasedReturnValue(), v7 = [OSLaunchdJob copyJobWithLabel:v5 domain:v8], v8, v7))
  {
    v15 = [v7 getCurrentJobInfo];
    v22 = v15;
    if (!v15)
    {
      sub_1000017B0(2, "failed to get service info for launchd service %s", v16, v17, v18, v19, v20, v21, v3);
      if (a2)
      {
        asprintf(a2, "appears to have been unloaded");
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      goto LABEL_30;
    }

    if ([v15 state] != 4 && objc_msgSend(v22, "state") != 2)
    {
      if ([v22 state] == 3)
      {
        [v22 lastSpawnError];
        strerror([v22 lastSpawnError]);
        asprintf(a2, "failed to spawn with error %d (%s)");
      }

      else if ([v22 state] == 1)
      {
        asprintf(a2, "has not run since boot / load");
      }

      goto LABEL_30;
    }

    v23 = [v22 lastExitStatus];

    if (!v23)
    {
      if ([v22 state] != 2)
      {
        sub_10000C89C();
      }

      asprintf(a2, "has not exited since first loaded");
      goto LABEL_30;
    }

    v24 = [v22 lastExitStatus];
    v25 = [v24 os_reason_namespace];

    v26 = [v22 lastExitStatus];
    v27 = [v26 wait4Status];

    if (!v25)
    {
      if ((v27 & 0x7F) == 0)
      {
        asprintf(a2, "last exited with exit status : %d");
      }

      goto LABEL_30;
    }

    if (v25 == 20)
    {
LABEL_30:
      if ([v22 state] == 2)
      {
        if ([v22 pid] <= 0)
        {
          sub_10000C89C();
        }

        v33 = [v22 pid];
        goto LABEL_35;
      }

      [v22 state];
      sub_1000017B0(2, "failed to get PID for launchd service %s, current OSLaunchdJobState is %d", v36, v37, v38, v39, v40, v41, v3);
LABEL_34:
      v33 = 0xFFFFFFFFLL;
LABEL_35:

      goto LABEL_36;
    }

    v43[0] = &off_100019BB8;
    v43[1] = &off_100019BD0;
    v44[0] = @"JETSAM";
    v44[1] = @"SIGNAL";
    v43[2] = &off_100019BE8;
    v43[3] = &off_100019C00;
    v44[2] = @"CODESIGNING";
    v44[3] = @"HANGTRACER";
    v43[4] = &off_100019C18;
    v43[5] = &off_100019C30;
    v44[4] = @"TEST";
    v44[5] = @"DYLD";
    v43[6] = &off_100019C48;
    v43[7] = &off_100019C60;
    v44[6] = @"LIBXPC";
    v44[7] = @"OBJC";
    v43[8] = &off_100019C78;
    v43[9] = &off_100019C90;
    v44[8] = @"EXEC";
    v44[9] = @"FRONTBOARD";
    v43[10] = &off_100019CA8;
    v43[11] = &off_100019CC0;
    v44[10] = @"TCC";
    v44[11] = @"REPORTCRASH";
    v43[12] = &off_100019CD8;
    v43[13] = &off_100019CF0;
    v44[12] = @"COREANIMATION";
    v44[13] = @"AGGREGATED";
    v43[14] = &off_100019D08;
    v43[15] = &off_100019D20;
    v44[14] = @"RUNNINGBOARD";
    v44[15] = @"SKYWALK";
    v43[16] = &off_100019D38;
    v43[17] = &off_100019D50;
    v44[16] = @"SETTINGS";
    v44[17] = @"LIBSYSTEM";
    v43[18] = &off_100019D68;
    v43[19] = &off_100019D80;
    v44[18] = @"FOUNDATION";
    v44[19] = @"WATCHDOG";
    v43[20] = &off_100019D98;
    v43[21] = &off_100019DB0;
    v44[20] = @"METAL";
    v44[21] = @"WATCHKIT";
    v43[22] = &off_100019DC8;
    v43[23] = &off_100019DE0;
    v44[22] = @"GUARD";
    v44[23] = @"ANALYTICS";
    v43[24] = &off_100019DF8;
    v43[25] = &off_100019E10;
    v44[24] = @"SANDBOX";
    v44[25] = @"SECURITY";
    v43[26] = &off_100019E28;
    v43[27] = &off_100019E40;
    v44[26] = @"ENDPOINTSECURITY";
    v44[27] = @"PAC_EXCEPTION";
    v43[28] = &off_100019E58;
    v43[29] = &off_100019E70;
    v44[28] = @"BLUETOOTH_CHIP";
    v44[29] = @"PORT_SPACE";
    v43[30] = &off_100019E88;
    v43[31] = &off_100019EA0;
    v44[30] = @"WEBKIT";
    v44[31] = @"BACKLIGHTSERVICES";
    v43[32] = &off_100019EB8;
    v43[33] = &off_100019ED0;
    v44[32] = @"ROSETTA";
    v44[33] = @"OS_REASON_AUDIO";
    v43[34] = &off_100019EE8;
    v43[35] = &off_100019F00;
    v44[34] = @"REALITYKIT";
    v44[35] = @"MTE_FAIL";
    v28 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:36];
    v29 = [NSNumber numberWithUnsignedInt:v25];
    v30 = [v28 objectForKey:v29];

    if (v30)
    {
      v31 = [NSNumber numberWithUnsignedInt:v25];
      v32 = [v28 objectForKeyedSubscript:v31];

      if (v32)
      {
LABEL_29:
        v34 = [v32 UTF8String];
        v35 = [v22 lastExitStatus];
        asprintf(a2, "last exited with reason namespace: %s, code %llu", v34, [v35 os_reason_code]);

        goto LABEL_30;
      }
    }

    else
    {
    }

    v32 = [NSString stringWithFormat:@"%d", v25];
    goto LABEL_29;
  }

  sub_1000017B0(2, "did not find a launchd service %s", v9, v10, v11, v12, v13, v14, v3);
  if (a2)
  {
    asprintf(a2, "appears to not exist in launchd");
  }

  v33 = 0xFFFFFFFFLL;
LABEL_36:

  return v33;
}

uint64_t sub_10000666C()
{
  if (!pthread_getspecific(qword_100027238))
  {
    sub_10000C89C();
  }

  v0 = 0;
  v1 = 1;
  atomic_compare_exchange_strong((qword_100026B38 + 8), &v0, 1u);
  if (v0)
  {
    v2 = 0;
    atomic_compare_exchange_strong((qword_100026B38 + 24), &v2, 1u);
    if (v2)
    {
      return 0;
    }
  }

  else
  {
    v1 = 0;
  }

  if ((byte_100026B44 & 1) == 0)
  {
    v3 = getpid();
    proc_set_dirty(v3, 1);
    byte_100026B44 = 1;
  }

  return qword_100026B38 + 16 * v1;
}

BOOL sub_100006718(uint64_t *a1)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  v8 = sub_100006768();
  *a1 = v8;
  if (!v8)
  {
    sub_1000017B0(2, "failed to capture stackshot", v2, v3, v4, v5, v6, v7, v10);
  }

  return v8 != 0;
}

uint64_t sub_100006768()
{
  v0 = stackshot_config_create();
  if (!v0)
  {
    sub_10000C89C();
  }

  v1 = v0;
  if (stackshot_config_set_flags())
  {
    sub_10000C89C();
  }

  v2 = -6;
  while (1)
  {
    v3 = stackshot_capture_with_config();
    v10 = v3;
    if (v3 != 16 && v3 != 60)
    {
      break;
    }

    if (__CFADD__(v2++, 1))
    {
      strerror(v3);
      sub_1000017B0(2, "failed to capture stackshot, syscall returned %d (%s)", v12, v13, v14, v15, v16, v17, v10);
      return 0;
    }
  }

  if (!v3)
  {
    stackshot_size = stackshot_config_get_stackshot_size();
    sub_1000017B0(0, "watchdog captured stackshot (%u bytes)", v19, v20, v21, v22, v23, v24, stackshot_size);
    return v1;
  }

  sub_1000017B0(2, "failed to capture stackshot, syscall returned %d", v4, v5, v6, v7, v8, v9, v3);
  return 0;
}

void sub_100006838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  sub_1000017B0(0, "writing diagnostics for %d services", a3, a4, a5, a6, a7, a8, a3);
  if (!a1)
  {
    sub_10000C89C();
  }

  if (dword_100026B40 < v8)
  {
    sub_10000C89C();
  }

  if (v8 <= 0)
  {
    dword_100026B48 = v8;
  }

  else
  {
    v11 = 0;
    v12 = (a2 + 48);
    do
    {
      v13 = qword_100026B30 + v11;
      *v13 = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 224) = 0u;
      *(v13 + 240) = 0u;
      *(v13 + 256) = 0u;
      *(v13 + 272) = 0u;
      *(v13 + 288) = 0u;
      *(v13 + 304) = 0u;
      *(v13 + 320) = 0u;
      *(v13 + 336) = 0u;
      *(v13 + 352) = 0u;
      *(v13 + 368) = 0u;
      *(v13 + 384) = 0u;
      *(v13 + 400) = 0u;
      *(v13 + 416) = 0u;
      *(v13 + 432) = 0u;
      *(v13 + 448) = 0u;
      *v13 = *(v12 - 3);
      v14 = *(v12 - 3);
      *(v13 + 16) = *(v12 - 4);
      *(v13 + 432) = *(v12 - 2);
      if (*v14)
      {
        __strlcpy_chk();
      }

      uuid_copy((v13 + 444), v12);
      v12 += 64;
      v11 += 464;
    }

    while (464 * v8 != v11);
    v15 = 0;
    dword_100026B48 = v8;
    v16 = 440;
    do
    {
      v17 = qword_100026B30;
      v18 = sub_100005FAC(*(qword_100026B30 + v16 - 440), (qword_100026B30 + v16 - 416));
      if (v18 >= 1)
      {
        *(v17 + v16) = v18;
      }

      ++v15;
      v16 += 464;
    }

    while (v15 < dword_100026B48);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A34;
  block[3] = &unk_100018B98;
  block[4] = a1;
  block[5] = mach_absolute_time();
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  v20 = sub_100005C3C();
  dispatch_async(v20, v19);
}

void sub_100006A34(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  memset(out, 0, 37);
  if (dword_100026B48 >= 1)
  {
    v3 = 0;
    v4 = 444;
    do
    {
      context = objc_autoreleasePoolPush();
      v5 = qword_100026B30;
      v6 = qword_100026B30 + v4;
      v7 = [NSMutableString stringWithFormat:@"(%d monitored services unresponsive): %s", dword_100026B48, qword_100026B30 + v4 - 412];
      v8 = v7;
      v9 = (v6 - 420);
      if (*(v6 - 420))
      {
        [v7 appendFormat:@", %s", *(v6 - 420)];
        free(*v9);
        *v9 = 0;
      }

      if (*(v6 - 4) < 1)
      {
        v17 = [CDStackshotReport alloc];
        v18 = (v5 + v4);
        v19 = [NSString stringWithUTF8String:*(v18 - 436)];
        v15 = [v17 initWithName:v19 reason:v8 exceptionCode:v18 - 12 exceptionCodeCount:1];

        if (*(v6 - 4) < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = [NSNumber numberWithInt:?];
        }

        uuid_unparse(v18, out);
        v26 = [NSString stringWithUTF8String:out];
        [v15 setIncidentID:v26];

        v27 = **(a1 + 32);
        stackshot_buffer = stackshot_config_get_stackshot_buffer();
        v28 = **(a1 + 32);
        stackshot_size = stackshot_config_get_stackshot_size();
        if (!v16)
        {
LABEL_17:
          [v15 useStackshotBuffer:stackshot_buffer size:stackshot_size frontmostPids:&__NSArray0__struct atTime:*(a1 + 40) machTime:0xFFFFFFFFLL sequence:0 isSnapshotDead:Current];
          goto LABEL_18;
        }

        v35 = v16;
        v25 = &v35;
      }

      else
      {
        v34 = 0;
        v33 = xmmword_10000EE20;
        v10 = [CDSystemWatchdogStackshotReport alloc];
        v11 = *(v6 - 4);
        v12 = (v5 + v4);
        v13 = [NSString stringWithUTF8String:*(v12 - 436)];
        v14 = [NSString stringWithUTF8String:*(v12 - 428)];
        v15 = [v10 initWithPid:v11 procName:v13 bundleID:v14 exitSnapshot:&v33 reason:v8];

        if (*(v6 - 4) < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = [NSNumber numberWithInt:?];
        }

        uuid_unparse(v12, out);
        v20 = [NSString stringWithUTF8String:out];
        [v15 setIncidentID:v20];

        v21 = **(a1 + 32);
        stackshot_buffer = stackshot_config_get_stackshot_buffer();
        v23 = **(a1 + 32);
        stackshot_size = stackshot_config_get_stackshot_size();
        if (!v16)
        {
          goto LABEL_17;
        }

        v36 = v16;
        v25 = &v36;
      }

      v29 = [NSArray arrayWithObjects:v25 count:1];
      [v15 useStackshotBuffer:stackshot_buffer size:stackshot_size frontmostPids:v29 atTime:*(a1 + 40) machTime:0xFFFFFFFFLL sequence:0 isSnapshotDead:Current];

LABEL_18:
      [v15 saveWithOptions:0];

      objc_autoreleasePoolPop(context);
      ++v3;
      v4 += 464;
    }

    while (v3 < dword_100026B48);
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *v30;
    stackshot_config_dealloc();
    *v30 = 0;
    atomic_store(0, v30 + 8);
  }

  sync();
}

uint64_t sub_100006E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000017B0(0, "crashing service %s with reason context: %s", a3, a4, a5, a6, a7, a8, a1);
  if (sub_100005FAC(a1, 0) <= 0)
  {
    sub_1000017B0(2, "failed to discover PID for job %s", v9, v10, v11, v12, v13, v14, a1);
    return 0;
  }

  v15 = 1;
  if (terminate_with_reason())
  {
    v16 = __error();
    strerror(*v16);
    sub_1000017B0(2, "failed to terminate service %s, terminate_with_reason() returned %d (%s)", v17, v18, v19, v20, v21, v22, a1);
    return 0;
  }

  return v15;
}

BOOL sub_100006EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  atomic_compare_exchange_strong(byte_1000271D0, &v8, 1u);
  v9 = v8 == 0;
  if (v8)
  {
    sub_1000017B0(2, "skipping collecting enhanced diagnostics because outstanding diagnostics still in progress", a3, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    if (!qword_100026B18)
    {
      sub_10000C89C();
    }

    gettimeofday(&stru_1000271D8, 0);
  }

  return v9;
}

void sub_100006F78(uint64_t a1, int a2, void *a3)
{
  v22 = a3;
  if (&_DRSubmitLog)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v23 = 0;
  }

  memset(out, 0, 37);
  xmmword_100026B4C = 0u;
  unk_100026B5C = 0u;
  xmmword_100026B6C = 0u;
  unk_100026B7C = 0u;
  xmmword_100026B8C = 0u;
  unk_100026B9C = 0u;
  xmmword_100026BAC = 0u;
  unk_100026BBC = 0u;
  xmmword_100026BCC = 0u;
  unk_100026BDC = 0u;
  xmmword_100026BEC = 0u;
  unk_100026BFC = 0u;
  xmmword_100026C0C = 0u;
  unk_100026C1C = 0u;
  xmmword_100026C2C = 0u;
  unk_100026C3C = 0u;
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a2;
    v13 = (a1 + 8);
    do
    {
      v14 = &xmmword_100026B4C + v11;
      v15 = 256 - v11;
      if (v11)
      {
        v16 = snprintf(v14, v15, ", %s");
      }

      else
      {
        v16 = snprintf(v14, v15, "%s");
      }

      if (v16 + v11 >= 256)
      {
        v11 = 256;
      }

      else
      {
        v11 += v16;
      }

      if (&_DRSubmitLog)
      {
        uuid_unparse(v13, out);
        v17 = [NSString stringWithUTF8String:out];
        v18 = [NSString stringWithUTF8String:*(v13 - 1)];
        [v23 setValue:v17 forKey:v18];
      }

      v13 += 24;
      --v12;
    }

    while (v12);
  }

  sub_1000017B0(0, "attempting to dump tailspin for: %s", v5, v6, v7, v8, v9, v10, &xmmword_100026B4C);
  dispatch_group_enter(qword_100026B18);
  v19 = qword_100026B10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000071B4;
  block[3] = &unk_100018BE0;
  v26 = v22;
  v27 = &xmmword_100026B4C;
  v25 = v23;
  v20 = v23;
  v21 = v22;
  dispatch_async(v19, block);
}

void sub_1000071B4(uint64_t a1)
{
  sub_1000076E0(v100);
  snprintf(__str, 0x100uLL, "watchdog monitored services appear unhealthy: %s", *(a1 + 48));
  snprintf(v98, 0x400uLL, "%s/watchdog-%s.tailspin", "/var/mobile/Library/Logs/CrashReporter", v100);
  if (!&_tailspin_dump_output_with_options_sync)
  {
    v40 = "Tailspin SPI not found";
LABEL_8:
    sub_1000017B0(2, v40, v2, v3, v4, v5, v6, v7, v84);
    return;
  }

  v8 = open(v98, 2562, 416);
  if (v8 < 0)
  {
    v41 = __error();
    v84 = v98;
    strerror(*v41);
    v40 = "Could not create file, skip tailspin: %s %s";
    goto LABEL_8;
  }

  v9 = v8;
  v97[0] = &__kCFBooleanFalse;
  v96[0] = UnsafePointer;
  v96[1] = UnsafePointer;
  v10 = [NSString stringWithUTF8String:__str];
  v97[1] = v10;
  v96[2] = UnsafePointer;
  v11 = [NSNumber numberWithBool:&_DRSubmitLog != 0];
  v97[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:3];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

  v14 = tailspin_dump_output_with_options_sync();
  (*(*(a1 + 40) + 16))();
  if (v14)
  {
    close(v9);
    sub_1000017B0(0, "%s created successfully", v21, v22, v23, v24, v25, v26, v98);
    v91[0] = xmmword_10000EE00;
    v91[1] = xmmword_10000EE10;
    v92 = clock_gettime_nsec_np(_CLOCK_REALTIME) + 604800000000000;
    v93 = 0;
    if (fsctl(v98, 0xC0304A6FuLL, v91, 0))
    {
      v33 = __error();
      strerror(*v33);
      sub_1000017B0(2, "Failed to mark %s as purgeable due to %s", v34, v35, v36, v37, v38, v39, v98);
    }

    else
    {
      sub_1000017B0(0, "Mark %s as purgeable succeeds", v27, v28, v29, v30, v31, v32, v98);
    }

    v53 = +[NSFileManager defaultManager];
    v94[0] = NSFileOwnerAccountName;
    v94[1] = NSFileGroupOwnerAccountName;
    v95[0] = @"root";
    v95[1] = @"_analyticsusers";
    v54 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];
    v55 = [NSString stringWithUTF8String:v98];
    v89 = 0;
    [v53 setAttributes:v54 ofItemAtPath:v55 error:&v89];
    v45 = v89;

    if (!v45)
    {
      if (&_DRSubmitLog)
      {
        v68 = [NSString stringWithUTF8String:*(a1 + 48)];
        v69 = [NSString stringWithUTF8String:__str];
        v70 = *(a1 + 32);
        v71 = [NSString stringWithUTF8String:v98];
        DRSubmitLog();
        v45 = 0;

        if (v45)
        {
          v46 = [v45 localizedDescription];
          v88 = [v46 UTF8String];
          sub_1000017B0(2, "DRSubmitLog: %s", v78, v79, v80, v81, v82, v83, v88);
          goto LABEL_14;
        }

        sub_1000017B0(0, "submitted %s to DiagnosticPipeline", v72, v73, v74, v75, v76, v77, v98);
        if ((sub_100008EE0() & 1) == 0)
        {
          sub_10000775C();
        }

        dispatch_group_leave(qword_100026B18);
      }

      else
      {
        sub_1000017B0(0, "DRSubmitLog is not available", v56, v57, v58, v59, v60, v61, v85);
      }

      v45 = 0;
      goto LABEL_15;
    }

    v46 = [v45 localizedDescription];
    v87 = [v46 UTF8String];
    sub_1000017B0(2, "setAttributes: %s", v62, v63, v64, v65, v66, v67, v87);
LABEL_14:

    goto LABEL_15;
  }

  sub_1000017B0(2, "Failed to save tailspin to file: %s", v15, v16, v17, v18, v19, v20, v98);
  close(v9);
  v42 = +[NSFileManager defaultManager];
  v43 = [NSString stringWithUTF8String:v98];
  v90 = 0;
  v44 = [v42 removeItemAtPath:v43 error:&v90];
  v45 = v90;

  if ((v44 & 1) == 0)
  {
    v46 = [v45 localizedDescription];
    v86 = [v46 UTF8String];
    sub_1000017B0(2, "Cannot remove failed tailspin: %s", v47, v48, v49, v50, v51, v52, v86);
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_1000076E0(char *a1)
{
  memset(&v3, 0, sizeof(v3));
  localtime_r(&stru_1000271D8.tv_sec, &v3);
  return snprintf(a1, 0x80uLL, "%d-%02d-%02d.%02d.%02d.%02d", v3.tm_year + 1900, v3.tm_mon + 1, v3.tm_mday, v3.tm_hour, v3.tm_min, v3.tm_sec);
}

void sub_10000775C()
{
  v0 = +[NSDate date];
  v1 = +[NSCalendar currentCalendar];
  v2 = [v1 components:16 fromDate:qword_100026C60 toDate:v0 options:0];

  if ([v2 day] >= 7)
  {
    v59 = v0;
    sub_1000017B0(0, "Prune the old tailspins in %s", v3, v4, v5, v6, v7, v8, "/var/mobile/Library/Logs/CrashReporter");
    v9 = +[NSFileManager defaultManager];
    v10 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
    v69[0] = NSURLNameKey;
    v69[1] = NSURLIsDirectoryKey;
    v11 = [NSArray arrayWithObjects:v69 count:2];
    v12 = [v9 enumeratorAtURL:v10 includingPropertiesForKeys:v11 options:4 errorHandler:0];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v65;
      v60 = *v65;
      do
      {
        v16 = 0;
        v61 = v14;
        do
        {
          if (*v65 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v64 + 1) + 8 * v16);
          v18 = [v17 lastPathComponent];
          if ([v18 containsString:@".tailspin"])
          {
            v19 = v18;
            v20 = [v19 lastPathComponent];
            if ([v20 containsString:@".tailspin"])
            {
              v21 = [v19 rangeOfString:@".tailspin"];
              if (v21 == 0x7FFFFFFFFFFFFFFFLL)
              {
                sub_10000C89C();
              }
            }

            else
            {
              v21 = 0;
            }

            v22 = 0;
            v23 = -v21;
            do
            {
              v24 = [v20 characterAtIndex:v22++];
              v25 = v23 + 1;
              if (!v23)
              {
                break;
              }

              ++v23;
            }

            while (v24 != 45);
            if (v25 == 1)
            {
              v26 = [v20 UTF8String];
              sub_1000017B0(2, "unable to parse date from filename %s, skipping", v27, v28, v29, v30, v31, v32, v26);
              v33 = 0;
            }

            else
            {
              v34 = [v20 substringWithRange:{v22, -v25}];
              v35 = objc_opt_new();
              v36 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
              [v35 setLocale:v36];
              [v35 setDateFormat:@"yyyy-MM-dd.HH.mm.ss"];
              v33 = [v35 dateFromString:v34];

              v15 = v60;
            }

            if (v33)
            {
              v37 = +[NSCalendar currentCalendar];
              v38 = [v37 components:16 fromDate:v33 toDate:v59 options:0];

              if ([v38 day] >= 8)
              {
                v39 = [v17 absoluteString];
                v40 = [v39 UTF8String];
                sub_1000017B0(0, "Deleting old tailspin %s that was generated %ld days ago", v41, v42, v43, v44, v45, v46, v40);

                v47 = +[NSFileManager defaultManager];
                v63 = 0;
                v48 = [v47 removeItemAtURL:v17 error:&v63];
                v49 = v63;

                if ((v48 & 1) == 0)
                {
                  v50 = [v17 absoluteString];
                  v51 = [v50 UTF8String];
                  v52 = [v49 localizedDescription];
                  [v52 UTF8String];
                  sub_1000017B0(2, "Failed to delete old tailspin %s, error:%s", v53, v54, v55, v56, v57, v58, v51);
                }

                v15 = v60;
              }
            }

            else
            {
              v38 = v2;
            }

            v2 = v38;
            v14 = v61;
          }

          v16 = v16 + 1;
        }

        while (v16 != v14);
        v14 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v14);
    }

    v0 = v59;
    objc_storeStrong(&qword_100026C60, v59);
  }
}

void sub_100007C18(uint64_t a1)
{
  dispatch_group_enter(qword_100026B18);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007CA4;
  block[3] = &unk_100018C00;
  block[4] = a1;
  dispatch_async(qword_100026B10, block);
}

void sub_100007CA4(uint64_t a1)
{
  sub_1000076E0(v52);
  snprintf(__str, 0x400uLL, "%s/watchdog-%s-ddt-%s.txt", "/var/mobile/Library/Logs/CrashReporter", *(a1 + 32), v52);
  __argv[0] = "ddt";
  __argv[1] = "--no-ports";
  v2 = *(a1 + 32);
  __argv[2] = "--no-kevents";
  __argv[3] = v2;
  __argv[4] = "-o";
  __argv[5] = __str;
  __argv[6] = 0;
  *__envp = off_100018C90;
  v49 = 0;
  if (posix_spawnattr_init(&v49))
  {
    sub_10000CF10();
  }

  if (posix_spawnattr_setflags(&v49, 16396))
  {
    sub_10000CF10();
  }

  if (posix_spawnattr_setprocesstype_np())
  {
    sub_10000CF10();
  }

  v48 = 0;
  if (posix_spawnattr_setsigmask(&v49, &v48))
  {
    sub_10000CF10();
  }

  v47 = -1;
  if (posix_spawnattr_setsigdefault(&v49, &v47))
  {
    sub_10000CF10();
  }

  v46 = 0;
  if (posix_spawn_file_actions_init(&v46) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v46, 1, "/dev/console", 131073, 0) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v46, 2, "/dev/console", 131073, 0) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v46, 0, "/dev/null", 0, 0) == -1)
  {
    sub_10000CF2C();
  }

  v45 = 0;
  v3 = posix_spawn(&v45, "/usr/local/bin/ddt", &v46, &v49, __argv, __envp);
  posix_spawn_file_actions_destroy(&v46);
  posix_spawnattr_destroy(&v49);
  if (v3)
  {
    strerror(v3);
    sub_1000017B0(2, "failed to spawn %s with error: %s", v10, v11, v12, v13, v14, v15, "/usr/local/bin/ddt");
    goto LABEL_12;
  }

  sub_1000017B0(0, "%s spawned as %d", v4, v5, v6, v7, v8, v9, "/usr/local/bin/ddt");
  v44 = 0;
  v16 = waitpid(v45, &v44, 0);
  if (v16 != -1)
  {
LABEL_16:
    if (v16 != v45)
    {
      sub_1000017B0(2, "waitpid on %s with PID %d returned %d", v17, v18, v19, v20, v21, v22, "/usr/local/bin/ddt");
      goto LABEL_12;
    }

    if ((v44 & 0x7F) != 0)
    {
      v29 = "%s : did not exit? status : %d";
    }

    else
    {
      if (!BYTE1(v44))
      {
        sub_1000017B0(0, "%s: exited with status %d, saved at %s", v17, v18, v19, v20, v21, v22, "/usr/local/bin/ddt");
        goto LABEL_24;
      }

      v29 = "%s: exited with status %d";
    }

    sub_1000017B0(2, v29, v17, v18, v19, v20, v21, v22, "/usr/local/bin/ddt");
LABEL_24:
    v37 = v44 & 0x7F;
    if ((v44 & 0x7F) != 0 && v37 != 127)
    {
      strsignal(v37);
      sub_1000017B0(2, "%s: exited due to signal %s", v38, v39, v40, v41, v42, v43, "/usr/local/bin/ddt");
    }

    goto LABEL_12;
  }

  while (*__error() == 4)
  {
    sub_1000017B0(2, "waitpid on %s with PID %d returned EINTR, retrying", v23, v24, v25, v26, v27, v28, "/usr/local/bin/ddt");
    v16 = waitpid(v45, &v44, 0);
    if (v16 != -1)
    {
      goto LABEL_16;
    }
  }

  v30 = __error();
  strerror(*v30);
  sub_1000017B0(2, "waitpid on %s with PID %d failed with error %s", v31, v32, v33, v34, v35, v36, "/usr/local/bin/ddt");
LABEL_12:
  dispatch_group_leave(qword_100026B18);
}

void sub_100008020(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (qword_100026C58 == -1)
  {
    if (!a1)
    {
LABEL_24:

      sub_1000017B0(2, "No valid unblock requests, return", a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  else
  {
    sub_10000CF4C();
    if (!a1)
    {
      goto LABEL_24;
    }
  }

  if (a2 <= 0)
  {
    goto LABEL_24;
  }

  v68 = objc_opt_new();
  sub_1000017B0(0, "Request unblock operation for:", v11, v12, v13, v14, v15, v16, v66);
  v17 = 0;
  v18 = a1;
  do
  {
    v19 = a1 + 112 * v17;
    v20 = sub_100005FAC(*v19, 0);
    if (v20 <= 0)
    {
      sub_1000017B0(2, "Skip evaluating or taking action on service %s because failed to get PID", v21, v22, v23, v24, v25, v26, *v19);
    }

    else
    {
      v27 = v20;
      if (sub_100005F00(v20))
      {
        sub_1000017B0(2, "Skip evaluating or taking action on service %s because service being debugged", v28, v29, v30, v31, v32, v33, *v19);
      }

      else
      {
        v34 = 8;
        while (1)
        {
          v35 = *(v18 + v34);
          if (v35)
          {
            break;
          }

          v34 += 8;
          if (v34 == 88)
          {
            sub_1000017B0(2, "Skip evaluating or taking action on service %s because failed to find blocked thread", v28, v29, v30, v31, v32, v33, *v19);
            goto LABEL_13;
          }
        }

        v36 = [[NSUUID alloc] initWithUUIDBytes:v19 + 96];
        v37 = [[UBStuckService alloc] initForPid:v27 threadID:v35 timeElapsed:v36 incidentUUID:*(v19 + 88)];
        [v68 addObject:v37];
        v38 = *v19;
        v39 = [v36 UUIDString];
        [v39 UTF8String];
        sub_1000017B0(0, "%s : %s", v40, v41, v42, v43, v44, v45, v38);
      }
    }

LABEL_13:
    ++v17;
    v18 += 112;
  }

  while (v17 != a2);
  if ([v68 count])
  {
    v53 = os_transaction_create();
    if (sub_100006768())
    {
      v60 = [NSData alloc];
      stackshot_buffer = stackshot_config_get_stackshot_buffer();
      v62 = [v60 initWithBytes:stackshot_buffer length:stackshot_config_get_stackshot_size()];
    }

    else
    {
      sub_1000017B0(2, "Failed to capture stackshot", v54, v55, v56, v57, v58, v59, v67);
      v62 = 0;
    }

    stackshot_config_dealloc();
    v63 = qword_100026C50;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000083E0;
    block[3] = &unk_100018C70;
    v70 = v68;
    v71 = v62;
    v72 = v53;
    v64 = v53;
    v65 = v62;
    dispatch_async(v63, block);
  }

  else
  {
    sub_1000017B0(0, "No valuable service could be found, return", v47, v48, v49, v50, v51, v52, v67);
  }
}

void sub_100008350(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("com.apple.watchdogd.unblock_diagnostics", attr);
  v3 = qword_100026C50;
  qword_100026C50 = v2;

  if (!qword_100026C50)
  {
    sub_10000C89C();
  }
}

void sub_1000083E0(uint64_t a1)
{
  v2 = objc_alloc_init(UBUnblockClient);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008498;
  v5[3] = &unk_100018C48;
  v6 = *(a1 + 48);
  [v2 recover:v3 stackshotData:v4 replyQueue:0 callback:v5];
}

void sub_100008498(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = [a2 description];
    v7 = [v6 UTF8String];
    sub_1000017B0(2, "Unblock reactive action returns error: %s", v8, v9, v10, v11, v12, v13, v7);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [v4 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          if ([v18 recoveryStatus] == 1)
          {
            v38 = [v18 pid];
            sub_1000017B0(0, "Error occured when trying to recover process %d", v19, v20, v21, v22, v23, v24, v38);
          }

          else if ([v18 recoveryStatus] == 2)
          {
            v39 = [v18 pid];
            sub_1000017B0(0, "Unable to identify recoverable action for process %d", v25, v26, v27, v28, v29, v30, v39);
          }

          else
          {
            v31 = [v18 issueType];
            [v18 pid];
            [v18 recoveryConfidence];
            [v18 recoveryStatus];
            sub_1000017B0(0, "Identified issue %d for process %d with confidence %d, %s", v32, v33, v34, v35, v36, v37, v31);
          }
        }

        v15 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }
  }
}

void sub_100008688(char a1)
{
  if (byte_100026C80 == 1 && (a1 & 1) == 0)
  {
    if (qword_100026C78 != -1)
    {
      sub_10000CF60();
    }

    v1 = qword_1000271F0;
    if (!qword_1000271F0)
    {
      sub_10000C89C();
    }

    dispatch_async(v1, &stru_100018CC0);
  }
}

void sub_1000086F8(id a1)
{
  sub_1000017B0(0, "watchdogd registers iokit monitoring", v1, v2, v3, v4, v5, v6, v9);
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("com.apple.watchdogd.monitoring_iokit", v10);
  v8 = qword_1000271F0;
  qword_1000271F0 = v7;
}

void sub_100008774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = dword_100026C84;
  if (!dword_100026C84)
  {
    sub_1000059E0(a1, a2, a3, a4, a5, a6, a7, a8, v9);
    sub_100008FA4();
    v8 = dword_100026C84;
  }

  dword_100026C84 = v8 + 1;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, &stru_100018CE0);
  if (pthread_key_create(&qword_100027238, 0))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_13:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  sub_10000C2AC();
  sub_10000581C(v1, v2, v3, v4, v5, v6, v7, v8, v37);
  sub_10000BEF4();
  if (!sub_100005928())
  {
    sub_10000C258(0, "userspace monitoring disabled", v9, v10, v11, v12, v13, v14, v38);
    sub_1000034F4(v29, v30, v31, v32, v33, v34, v35, v36, v40);
LABEL_11:
    sleep(2u);
    exit(0);
  }

  sub_1000017B0(0, "userspace monitoring enabled", v9, v10, v11, v12, v13, v14, v38);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    sub_10000457C();
  }

  sub_100001D9C(has_internal_diagnostics, v16, v17, v18, v19, v20, v21, v22, v39);
  byte_100026C80 = sub_100005AE8(&byte_100026C88);
  v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_USER_INITIATED, 0);

  v25 = dispatch_queue_create("com.apple.watchdogd.monitoring_transitions", v24);
  v26 = qword_1000271E8;
  qword_1000271E8 = v25;

  if (!qword_1000271E8)
  {
    goto LABEL_13;
  }

  dispatch_async(qword_1000271E8, &stru_100018D00);
  dispatch_async(qword_1000271E8, &stru_100018D20);
  dispatch_async(qword_1000271E8, &stru_100018D40);
  sub_10000BF84();
  if (os_variant_is_darwinos())
  {
    sub_10000A0EC();
  }

  dispatch_async(qword_1000271E8, &stru_100018D60);
  v27 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  v28 = qword_100026C70;
  qword_100026C70 = v27;

  if (qword_100026C70)
  {
    dispatch_source_set_event_handler_f(qword_100026C70, sub_100008B54);
    signal(15, 1);
    dispatch_resume(qword_100026C70);

    objc_autoreleasePoolPop(v0);
    CFRunLoopRun();
    goto LABEL_11;
  }

LABEL_14:
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000089E4(id a1)
{
  thePortRef = 0;
  dword_100026C90 = IORegisterForSystemPower(0, &thePortRef, sub_10000384C, &dword_100026C8C);
  if (!dword_100026C90)
  {
    sub_10000C89C();
  }

  if (!thePortRef)
  {
    sub_10000C89C();
  }

  IONotificationPortSetDispatchQueue(thePortRef, qword_1000271E8);
}

void sub_100008A50(id a1)
{
  v7 = sub_100004FB4();
  v8 = "No";
  if (v7)
  {
    v8 = "Yes";
  }

  sub_1000017B0(0, "crypto migration needed: %s", v1, v2, v3, v4, v5, v6, v8);

  sub_100008688(v7);
}

void sub_100008ABC(id a1)
{
  if (NSClassFromString(@"UBUnblockService"))
  {
    v7 = +[UBUnblockService sharedInstance];
    v8 = qword_100026C68;
    qword_100026C68 = v7;

    if (![qword_100026C68 setupAndActivate:byte_100027202])
    {
      return;
    }

    v9 = "Failed to bootstrap Unblock Service";
  }

  else
  {
    v9 = "UBUnblockService is not available";
  }

  sub_1000017B0(2, v9, v1, v2, v3, v4, v5, v6, v11);
}

void sub_100008B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000017B0(0, "watchodgd has been SIGTERMed", a3, a4, a5, a6, a7, a8, vars0);
  sub_100001D9C(v8, v9, v10, v11, v12, v13, v14, v15, vars0a);
  if (!os_variant_is_darwinos())
  {
    exit(1);
  }

  sub_10000A02C();
}

void *sub_100008BA4()
{
  if (qword_100026C98 != -1)
  {
    sub_10000CF74();
  }

  return &unk_100026CA0;
}

void sub_100008BDC(id a1)
{
  v7 = 1024;
  if (sysctlbyname("kern.bootargs", &unk_100026CA0, &v7, 0, 0))
  {
    sub_10000CF88();
  }

  sub_1000017B0(0, "retrieved current device boot-args: %s", v1, v2, v3, v4, v5, v6, &unk_100026CA0);
}

uint64_t sub_100008C44()
{
  if (qword_1000270A0 != -1)
  {
    sub_10000CFC8();
  }

  return byte_1000270A8;
}

void sub_100008C7C(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"stress-rack", 0, 0);
    if (!CFProperty)
    {
      v3 = 0;
      goto LABEL_6;
    }

    CFRelease(CFProperty);
  }

  v3 = 1;
LABEL_6:
  byte_1000270A8 = v3;
}

uint64_t sub_100008CDC()
{
  if (qword_1000270B0 != -1)
  {
    sub_10000CFDC();
  }

  return byte_1000270A9;
}

void sub_100008D14(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1000270A9 = v2 != 0;
  }
}

uint64_t sub_100008D70()
{
  if (qword_1000270C0 != -1)
  {
    sub_10000CFF0();
  }

  return byte_1000270B8;
}

void sub_100008DA8(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (v1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"osenvironment", 0, 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      if (Length > 64)
      {
        v12 = 0;
      }

      else
      {
        v11 = Length;
        v16.location = 0;
        v16.length = Length;
        CFDataGetBytes(v9, v16, buffer);
        v12 = strncmp(buffer, "diagnostics", v11) == 0;
      }

      byte_1000270B8 = v12;
      CFRelease(v9);
    }

    else
    {
      byte_1000270B8 = 0;

      sub_1000017B0(2, "Cannot locate osenvironment entry in IORegistry", v3, v4, v5, v6, v7, v8, v15);
    }
  }

  else
  {
    byte_1000270B8 = 0;
  }
}

uint64_t sub_100008EE0()
{
  if (qword_1000270C8 != -1)
  {
    sub_10000D004();
  }

  return byte_1000270D0;
}

void sub_100008F18(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      byte_1000270D0 = 1;
    }

    IOObjectRelease(v2);
  }
}

void sub_100008FA4()
{
  dispatch_semaphore_signal(qword_100027220);
  sub_1000017B0(0, "signaled service monitoring thread to pause", v0, v1, v2, v3, v4, v5, vars0);
  dispatch_semaphore_wait(qword_100027228, 0xFFFFFFFFFFFFFFFFLL);
  sub_1000017B0(0, "service monitoring thread paused", v6, v7, v8, v9, v10, v11, vars0a);
  qword_1000270D8 = 0;
}

void sub_100008FFC(id a1)
{
  v1 = &unk_10001F728;
  if (os_variant_has_internal_diagnostics())
  {
    sub_100008BA4();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = -1;
    if (os_parse_boot_arg_from_buffer_string())
    {
      dword_1000266C4 = 0;
      sub_1000017B0(0, "monitoring for all daemons configured to panic on first timeout (per %s boot-arg)", v2, v3, v4, v5, v6, v7, "-wdt_panic_immediately");
    }

    else if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "detected boot-arg (%s) to panic on first timeout with value: %s", v8, v9, v10, v11, v12, v13, "wdt_panic_when_unresponsive");
      sub_10000953C("wdt_panic_when_unresponsive", &v70, &stru_100018E80);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "detected boot-arg (%s) to capture ddt on timeout with value: %s", v14, v15, v16, v17, v18, v19, "wdt_capture_ddt_on_timeout");
      sub_10000953C("wdt_capture_ddt_on_timeout", &v70, &stru_100018EA0);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      byte_100027200 = 1;
    }

    if ((os_parse_boot_arg_from_buffer_string() & 1) != 0 || !NSClassFromString(@"UBUnblockService") || (_os_feature_enabled_impl() & 1) == 0)
    {
      sub_1000017B0(0, "detected setting for skipping unblock reactive action", v20, v21, v22, v23, v24, v25, v68);
      byte_100027202 = 1;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "Enable tailspin check before crashing service (per %s boot-arg)", v26, v27, v28, v29, v30, v31, "-wdt_skip_crash_without_tailspin");
      byte_100027201 = 1;
    }

    os_parse_boot_arg_from_buffer_int();
    v38 = dword_1000266C0;
    if (dword_1000266C0 >= 1)
    {
      v39 = 0;
      v40 = off_10001F750;
      do
      {
        if (*(v40 - 23) == 1)
        {
          sub_1000017B0(0, "enabled monitoring for internal service : %s", v32, v33, v34, v35, v36, v37, *v40);
          *(v40 - 24) = 0;
          v38 = dword_1000266C0;
        }

        ++v39;
        v40 += 238;
      }

      while (v39 < v38);
    }
  }

  if (sub_100008D70())
  {
    v47 = dword_1000266C0;
    if (dword_1000266C0 >= 1)
    {
      v48 = 0;
      v49 = off_10001F750;
      do
      {
        if (*(v49 + 24) == 1)
        {
          sub_1000017B0(0, "disable monitoring for service : %s at checkerboard mode", v41, v42, v43, v44, v45, v46, *v49);
          *(v49 - 24) = 1;
          v47 = dword_1000266C0;
        }

        ++v48;
        v49 += 238;
      }

      while (v48 < v47);
    }
  }

  v50 = dispatch_semaphore_create(0);
  v51 = qword_100027220;
  qword_100027220 = v50;

  v52 = dispatch_semaphore_create(0);
  v53 = qword_100027228;
  qword_100027228 = v52;

  v54 = dispatch_semaphore_create(0);
  v55 = qword_100027230;
  qword_100027230 = v54;

  sub_100005CF8(dword_1000266C0);
  v56 = dword_1000266C0;
  if (dword_1000266C0 < 1)
  {
    v1 = 0;
  }

  else
  {
    v57 = 0;
    do
    {
      v58 = &unk_10001F728 + 1904 * v57;
      if (*(v58 + 17) == 2)
      {
        v59 = 0;
        *(v58 + 9) = 0;
        v60 = &unk_10001F728;
        v61 = v56;
        do
        {
          if (*(v60 + 17) == 3)
          {
            v62 = *(v60 + 9);
            if (!v62)
            {
              sub_10000C89C();
            }

            v63 = strlen(*(v58 + 5));
            if (!strncmp(*(v58 + 5), v62, v63))
            {
              *(v60 + 12) = v59;
              *(v58 + 9) = v60;
              v59 = v60;
              *(v60 + 11) = v58;
            }
          }

          v60 += 1904;
          --v61;
        }

        while (v61);
      }

      ++v57;
    }

    while (v57 != v56);
    v64 = &qword_10001F780;
    v65 = v56;
    do
    {
      if (*(v64 - 5) == 3 && !*v64)
      {
        sub_10000C89C();
      }

      v64 += 238;
      v65 = (v65 - 1);
    }

    while (v65);
    v66 = v56 + 1;
    v67 = (&unk_10001F728 + 1904 * v56 - 1904);
    do
    {
      *v67 = v65;
      v67[1] = v66 - 2;
      --v66;
      v65 = v67;
      v67 -= 238;
    }

    while (v66 > 1);
  }

  qword_1000271F8 = v1;
  if (pthread_create(&qword_100027208, 0, sub_100001198, 0))
  {
    sub_10000CF10();
  }
}

void sub_10000953C(char a1, char *a2, void *a3)
{
  __stringp = a2;
  v4 = a3;
  v5 = strsep(&__stringp, ",");
  if (v5)
  {
    v12 = v5;
    while (*v12)
    {
      v13 = dword_1000266C0;
      if (dword_1000266C0 < 1)
      {
LABEL_8:
        sub_1000017B0(2, "%s boot-arg specified for daemon %s which cannot be found in services list", v6, v7, v8, v9, v10, v11, a1);
      }

      else
      {
        v14 = &unk_10001F728;
        while (1)
        {
          v15 = strlen(v14[5]);
          if (!strncasecmp(v14[5], v12, v15))
          {
            break;
          }

          v14 += 238;
          if (!--v13)
          {
            goto LABEL_8;
          }
        }

        v4[2](v4, v14);
      }

      v12 = strsep(&__stringp, ",");
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    sub_1000017B0(2, "%s boot-arg specified with empty daemon name", v6, v7, v8, v9, v10, v11, a1);
  }

LABEL_13:
}

void sub_1000096E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1000000000 * *(a1 + 32) / 0x2540BE400uLL;
  if (*(a2 + 56) >= v8)
  {
    v9 = *(a1 + 32);
    sub_1000017B0(2, "Keep %s default timeout cause %lld seconds (per %s boot-arg) is too short", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  else
  {
    *(a2 + 56) = v8;
    sub_1000017B0(0, "%s configured to timeout in %lld seconds (per %s boot-arg)", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }
}

void sub_100009784(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = qword_1000271F8;
  if (!qword_1000271F8)
  {
    goto LABEL_76;
  }

  v3 = v1;
  do
  {
    v4 = sub_100002C54(v2);
    if (v4 && *(v2 + 1496) == 1 && ((*(v2 + 62) & 1) != 0 || *(v2 + 192) >= dword_1000266C4))
    {
      bzero(v69, 0x800uLL);
      if (*(v2 + 128))
      {
        v5 = *(v2 + 40);
        v58 = *(v2 + 196);
        v60 = (v3 - *(v2 + 136)) / 0x3B9ACA00uLL;
        v6 = snprintf(v69, 0x800uLL, "no successful checkins from %s (%d induced crashes) in %llu seconds\n");
      }

      else if (*(v2 + 68) == 3 && (v7 = *(v2 + 88), *(v2 + 120) != *(v7 + 120)))
      {
        v57 = *(v2 + 40);
        v59 = *(v2 + 196);
        v62 = *(v7 + 40);
        v64 = (v3 - *(v2 + 112)) / 0x3B9ACA00uLL;
        v6 = snprintf(v69, 0x800uLL, "no successful checkins from %s (%d induced crashes) since monitoring enabled by %s (%llu seconds ago)\n");
      }

      else
      {
        v6 = snprintf(v69, 0x800uLL, "no successful checkins from %s (%d induced crashes) \n", *(v2 + 40), *(v2 + 196));
      }

      v8 = v6;
      if (v6 <= 0x800)
      {
        v9 = 2048 - v6;
      }

      else
      {
        v9 = 0;
      }

      if (*(v2 + 210))
      {
        v10 = *(v2 + 1240);
        if (v10)
        {
          v11 = snprintf(&v69[v6], v9, "%s returned not alive with context : %s (code: 0x%llx\n", *(v2 + 40), (v2 + 210), v10);
        }

        else
        {
          v11 = snprintf(&v69[v6], v9, "service returned not alive with context : %s\n", (v2 + 210));
        }

        v8 += v11;
        if (v8 <= 0x800)
        {
          v9 = 2048 - v8;
        }

        else
        {
          v9 = 0;
        }
      }

      v68 = 0;
      sub_100005FAC(*(v2 + 24), &v68);
      if (v68)
      {
        snprintf(&v69[v8], v9, "%s %s\n", *(v2 + 40), v68);
      }

      bzero(v70, 0x800uLL);
      v12 = snprintf(v70, 0x800uLL, "%s", v69);
      v13 = qword_1000271F8;
      if (qword_1000271F8)
      {
        v14 = v12;
        if (v12 <= 0x800)
        {
          v15 = 2048 - v12;
        }

        else
        {
          v15 = 0;
        }

        do
        {
          if (sub_100002C54(v13))
          {
            v16 = &v70[v14];
            v17 = *(v13 + 40);
            if (*(v13 + 196))
            {
              v18 = snprintf(&v70[v14], v15, "service: %s (%d induced crashes), ");
            }

            else
            {
              v18 = snprintf(&v70[v14], v15, "service: %s, ");
            }

            v19 = v18;
            v20 = *(v13 + 136);
            v21 = v15 - v18;
            if (v20)
            {
              v22 = snprintf(&v16[v18], v21, "total successful checkins in %llu seconds: %llu, last successful checkin: %llu seconds ago\n", (v3 - *(v13 + 112)) / 0x3B9ACA00uLL, *(v13 + 128), (v3 - v20) / 0x3B9ACA00uLL);
            }

            else if (*(v13 + 68) == 3 && (v23 = *(v13 + 88), *(v13 + 120) != *(v23 + 120)))
            {
              v61 = *(v23 + 40);
              v63 = (v3 - *(v13 + 112)) / 0x3B9ACA00uLL;
              v22 = snprintf(&v16[v18], v21, "no successful checkins since monitoring enabled by %s (%llu seconds ago)\n");
            }

            else
            {
              v24 = (v3 - *(v13 + 112)) / 0x3B9ACA00uLL;
              v22 = snprintf(&v16[v18], v21, "no successful checkins in %llu seconds\n");
            }

            v14 += v19 + v22;
            if (v14 <= 0x800)
            {
              v15 = 2048 - v14;
            }

            else
            {
              v15 = 0;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }

      sub_100005A34(v70);
    }

    v2 = *v2;
  }

  while (v2);
  v25 = qword_1000271F8;
  __chkstk_darwin(v4);
  v32 = &v66[-8 * v31 - 1];
  if (!v25)
  {
LABEL_76:
    sub_10000C89C();
  }

  v33 = 0;
  do
  {
    if (*(v25 + 1496) != 1)
    {
      goto LABEL_61;
    }

    if (*(v25 + 1497))
    {
      sub_10000D02C();
    }

    v34 = &v32[8 * v33];
    *v34 = *(v25 + 24);
    *(v34 + 1) = *(v25 + 40);
    if (uuid_is_null((v25 + 168)))
    {
      sub_1000017B0(0, "service %s incident_id is null", v35, v36, v37, v38, v39, v40, *(v25 + 40));
      uuid_generate(v34 + 48);
    }

    else
    {
      uuid_copy(v34 + 48, (v25 + 168));
    }

    v42 = *(v25 + 61);
    *(v25 + 1497) = v42;
    if (byte_100027201 == 1)
    {
      v43 = atomic_load((v25 + 184));
      if (v43 == 1)
      {
        sub_1000017B0(0, "skip crashing service %s due to pending tailspin", v41, v26, v27, v28, v29, v30, *(v25 + 24));
        *(v25 + 1497) = 1;
      }

      else if ((*(v25 + 1497) & 1) == 0)
      {
LABEL_59:
        v44 = 313391822;
        goto LABEL_60;
      }
    }

    else if ((v42 & 1) == 0)
    {
      goto LABEL_59;
    }

    v44 = 581827278;
LABEL_60:
    v34[3] = v25 + 1498;
    v34[4] = v44;
    v34[5] = *(v25 + 8);
    v33 = (v33 + 1);
LABEL_61:
    v25 = *v25;
  }

  while (v25);
  if (v33 <= 0)
  {
    goto LABEL_76;
  }

  v45 = qword_100027100;
  if (qword_100027100)
  {
    sub_100006838(qword_100027100, v32, v33, v26, v27, v28, v29, v30);
    qword_100027100 = 0;
  }

  v46 = v33;
  v47 = v32 + 5;
  do
  {
    v48 = *v47;
    v47 += 8;
    v49 = sub_10000B8BC(v48);
    if (!v49)
    {
      sub_10000C89C();
    }

    v55 = v49;
    if ((*(v49 + 1497) & 1) == 0)
    {
      if (sub_100006E04(v49[3], v49 + 1498, v45 != 0, v50, v51, v52, v53, v54))
      {
        ++*(v55 + 49);
        v55[19] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      }

      if (&_AnalyticsSendEventLazy)
      {
        v56 = sub_100005C3C();
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100009EC4;
        v66[3] = &unk_100018F20;
        v66[4] = v55;
        v67 = v45 != 0;
        dispatch_async(v56, v66);
      }
    }

    *(v55 + 1497) = 0;
    v55[20] = qword_1000270E8;
    ++*(v55 + 48);
    atomic_store(0, v55 + 46);
    --v46;
  }

  while (v46);
}

void sub_100009E04(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    os_unfair_lock_lock(&unk_100027218);
    for (i = qword_1000271F8; i; i = *i)
    {
      v8 = 1;
      atomic_compare_exchange_strong((i + 184), &v8, 2u);
      if (v8 == 1)
      {
        sub_1000017B0(0, "update service %s tailspin status to DONE", v1, v2, v3, v4, v5, v6, *(i + 40));
      }
    }

    os_unfair_lock_unlock(&unk_100027218);
  }
}

uint64_t sub_100009EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id sub_100009F44(uint64_t a1)
{
  v6[0] = @"crashedProcess";
  v2 = [NSString stringWithUTF8String:*(*(a1 + 32) + 40)];
  v6[1] = @"diagsCaptured";
  v7[0] = v2;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_10000A02C()
{
  v0 = sub_10000A074();
  dispatch_async(v0, &stru_100018F40);
}

id sub_10000A074()
{
  if (qword_100027120 != -1)
  {
    sub_10000D04C();
  }

  v1 = qword_100027118;

  return v1;
}

void sub_10000A0B8(id a1)
{
  sub_10000C258(0, "bailing out", v1, v2, v3, v4, v5, v6, vars0);

  sub_1000087CC();
}

void sub_10000A0EC()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = +[NSFileManager defaultManager];
  v50 = off_1000266C8;
  v2 = [NSString stringWithFormat:@"%s"];
  v3 = [v1 fileExistsAtPath:v2];

  if (!v3)
  {
    goto LABEL_8;
  }

  v10 = sub_10000AD30();
  memset(value, 0, 37);
  if (getxattr(off_1000266C8, "BootSessionUUID", value, 0x25uLL, 0, 0) == -1)
  {
    v23 = *__error();
    v24 = __error();
    strerror(*v24);
    sub_1000017B0(2, "Cannot get boot session uuid xattr from file with error %d %s", v25, v26, v27, v28, v29, v30, v23);
  }

  else
  {
    v11 = [NSString stringWithCString:value encoding:4];
    v12 = [v11 isEqualToString:v10];

    if (v12)
    {
      v19 = sub_10000A4C4();

      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_create("com.apple.watchdogd.service_recovery", v20);
      v22 = qword_100027110;
      qword_100027110 = v21;

      if (!qword_100027110)
      {
        sub_10000C89C();
      }

      v0 = v19;
      goto LABEL_8;
    }
  }

  sub_1000017B0(0, "Found stashed services info from different boot, try to remove it", v13, v14, v15, v16, v17, v18, v50);
  if (unlink(off_1000266C8))
  {
    sub_10000D060();
  }

LABEL_8:
  sub_1000017B0(0, "watchdogd sets up listener for opt-in service registration", v4, v5, v6, v7, v8, v9, v50);
  qword_100027240 = 0;
  atomic_store(0, byte_100027248);
  v31 = dispatch_semaphore_create(0);
  v32 = qword_100027250;
  qword_100027250 = v31;

  v33 = sub_10000A074();
  mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", v33, 1uLL);
  v35 = qword_100027138;
  qword_100027138 = mach_service;

  v36 = qword_100027138;
  if (!qword_100027138)
  {
    sub_10000C89C();
  }

  *value = _NSConcreteStackBlock;
  *&value[8] = 3221225472;
  *&value[16] = sub_10000AE2C;
  *&value[24] = &unk_100018FD0;
  *&value[32] = v33;
  v37 = v33;
  xpc_connection_set_event_handler(v36, value);
  xpc_connection_activate(qword_100027138);
  sub_1000017B0(0, "watchdogd starts listening incoming opt-in service registration message", v38, v39, v40, v41, v42, v43, v51);

  if ([v0 count])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v44 = v0;
    v45 = [v44 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v54;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v53 + 1) + 8 * i);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000A7B4;
          block[3] = &unk_100018F68;
          block[4] = v49;
          dispatch_async(qword_100027110, block);
        }

        v46 = [v44 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v46);
    }
  }
}

id sub_10000A4C4()
{
  v0 = objc_alloc_init(NSMutableArray);
  v43 = off_1000266C8;
  v1 = [NSString stringWithFormat:@"%s"];
  v50 = 0;
  v2 = [NSData dataWithContentsOfFile:v1 options:0 error:&v50];
  v3 = v50;

  if (v2)
  {
    v49 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v49];
    v5 = v49;

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v4 count])
        {
          v12 = [v4 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v0 addObjectsFromArray:v4];
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v44 = v0;
            v14 = v0;
            v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v46;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v46 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [*(*(&v45 + 1) + 8 * i) objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
                  v20 = [v19 UTF8String];
                  sub_1000017B0(0, "Found previously stashed service %s", v21, v22, v23, v24, v25, v26, v20);
                }

                v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
              }

              while (v16);
            }

            v0 = v44;
          }
        }
      }

      else
      {
        sub_1000017B0(2, "Stashed data seems not compliant with expectation", v6, v7, v8, v9, v10, v11, v43);
      }
    }

    else
    {
      v34 = [v5 description];
      v35 = [v34 UTF8String];
      sub_1000017B0(2, "Failed to parse plist with error : %s", v36, v37, v38, v39, v40, v41, v35);
    }
  }

  else
  {
    v4 = [v3 description];
    v27 = [v4 UTF8String];
    sub_1000017B0(2, "Failed to read stashed service: %s", v28, v29, v30, v31, v32, v33, v27);
    v5 = v3;
  }

  return v0;
}

uint64_t sub_10000A7BC(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;

  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
  if (v3)
  {
    v10 = v3;
    v11 = malloc_type_calloc(1uLL, 0x770uLL, 0x1072040412F3752uLL);
    if (v11)
    {
      v12 = v11;
      v10[1] = v11;
      *v10 = 1;
      v11[17] = 1;
      v13 = 6;
      v11[14] = 6;
      v14 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        *(v12 + 3) = strdup([v14 UTF8String]);
        v15 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_bootstrap_service_name"];

        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          *(v12 + 4) = strdup([v15 UTF8String]);
          v16 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_process_name"];

          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *(v12 + 5) = strdup([v16 UTF8String]);
              v15 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_bundle_id"];

              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                *(v12 + 6) = strdup([v15 UTF8String]);
                v17 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_skip_crashing"];
                if (v17)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 61) = [v17 BOOLValue];
                  }
                }

                v18 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_late_first_checkin"];

                if (v18)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 60) = [v18 BOOLValue];
                  }
                }

                v19 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_internal_builds_only"];

                if (v19)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 17) = [v19 BOOLValue];
                  }
                }

                v20 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_num_rounds_to_timeout"];

                if (v20)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 14) = [v20 unsignedIntValue];
                  }
                }

                v21 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_panic_on_first_timeout"];

                if (v21)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 62) = [v21 BOOLValue];
                  }
                }

                v22 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_capture_ddt_on_timeout"];

                if (v22)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v12 + 63) = [v22 BOOLValue];
                  }
                }

                v10[2] = qword_100027240;
                qword_100027240 = v10;
                atomic_store(1u, byte_100027248);
                sub_1000017B0(0, "wait for service %s to be enrolled", v23, v24, v25, v26, v27, v28, *(v12 + 3));
                dispatch_semaphore_wait(qword_100027250, 0xFFFFFFFFFFFFFFFFLL);
                v35 = atomic_load(byte_100027248);
                if (v35)
                {
                  sub_10000C89C();
                }

                if (!qword_100027240)
                {
                  v13 = 1;
                  v14 = v15;
                  goto LABEL_48;
                }

                sub_1000017B0(2, "watchdogd refuses to pick up opt-in service %s", v29, v30, v31, v32, v33, v34, *(v12 + 3));
                v36 = &qword_100027240;
                v37 = qword_100027240;
                if (qword_100027240 != v10)
                {
                  do
                  {
                    v38 = v37;
                    v37 = *(v37 + 16);
                  }

                  while (v37 != v10);
                  v36 = (v38 + 16);
                }

                *v36 = *(v37 + 16);
                free(v10);
                free(*(v12 + 6));
                *(v12 + 6) = 0;
                v13 = 7;
              }

              else
              {
                v22 = 0;
              }

              free(*(v12 + 5));
              *(v12 + 5) = 0;
            }

            else
            {
              v22 = 0;
              v15 = v16;
            }
          }

          else
          {
            v22 = 0;
            v15 = 0;
          }

          free(*(v12 + 4));
          *(v12 + 4) = 0;
        }

        else
        {
          v22 = 0;
        }

        free(*(v12 + 3));
        v14 = v15;
      }

      else
      {
        v22 = 0;
      }

      free(v12);
LABEL_48:

      goto LABEL_49;
    }

    v39 = "Failed to allocate new watchdog service";
  }

  else
  {
    v39 = "Failed to allocate new optin service";
  }

  sub_1000017B0(2, v39, v4, v5, v6, v7, v8, v9, v41);
  v13 = 5;
LABEL_49:

  return v13;
}

void sub_10000ACB8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.optin_listener", v3);
  v2 = qword_100027118;
  qword_100027118 = v1;

  if (!qword_100027118)
  {
    sub_10000C89C();
  }
}

id sub_10000AD30()
{
  if (qword_100027130 != -1)
  {
    sub_10000D0A0();
  }

  v1 = qword_100027128;

  return v1;
}

void sub_10000AD74(id a1)
{
  memset(v11, 0, sizeof(v11));
  v10 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v11, &v10, 0, 0))
  {
    sub_1000017B0(2, "Failed to get kern.bootsessionuuid", v1, v2, v3, v4, v5, v6, v9);
  }

  else
  {
    v7 = [NSString stringWithCString:v11 encoding:4];
    v8 = qword_100027128;
    qword_100027128 = v7;
  }
}

void sub_10000AE2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v10 = xpc_connection_copy_entitlement_value();
    v17 = v10;
    if (v10 && xpc_get_type(v10) == &_xpc_type_BOOL && xpc_BOOL_get_value(v17))
    {
      sub_1000017B0(0, "Client has correct entitlement", v11, v12, v13, v14, v15, v16, v25);
    }

    else
    {
      sub_1000017B0(2, "Client doesn't have correct entitlement", v11, v12, v13, v14, v15, v16, v25);
      sub_10000AFBC(v3, 3u);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000B048;
    handler[3] = &unk_100018FD0;
    v18 = v3;
    v29 = v18;
    xpc_connection_set_event_handler(v18, handler);
    xpc_connection_set_target_queue(v18, *(a1 + 32));
    xpc_connection_activate(v18);
  }

  else if (xpc_get_type(v3) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    sub_1000017B0(0, "watchdogd received error message %s", v19, v20, v21, v22, v23, v24, string);
  }

  else
  {
    type = xpc_get_type(v3);
    sub_1000017B0(0, "watchdogd received unknown event of type %p", v4, v5, v6, v7, v8, v9, type);
  }
}

void sub_10000AFBC(void *a1, unsigned int a2)
{
  xdict = a1;
  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    sub_10000C89C();
  }

  v4 = reply;
  xpc_dictionary_set_int64(reply, "watchdogd_request_result", a2);
  v5 = xpc_dictionary_get_remote_connection(xdict);
  if (!v5)
  {
    sub_10000C89C();
  }

  v6 = v5;
  xpc_connection_send_message(v5, v4);
}

void sub_10000B048(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "watchdogd_request_command");
    if (uint64 != 1)
    {
      if (!uint64)
      {
        v11 = sub_10000B5B4(v3);
        v12 = v11;
        if (v11)
        {
          v13 = sub_10000A7BC(v11);
          if (v13 == 1)
          {
            v12 = v12;
            sub_1000017B0(0, "Try to stash service info into file", v14, v15, v16, v17, v18, v19, v97);
            v20 = objc_alloc_init(NSMutableArray);
            v21 = +[NSFileManager defaultManager];
            v22 = [NSString stringWithFormat:@"%s", off_1000266C8];
            v23 = [v21 fileExistsAtPath:v22];

            if (v23)
            {
              v24 = sub_10000A4C4();

              v20 = v24;
            }

            [v20 addObject:v12];
            sub_10000B69C(off_1000266C8, v20, v23 ^ 1);
            v25 = sub_10000A4C4();

            v26 = 1;
          }

          else
          {
            v26 = v13;
          }

          goto LABEL_44;
        }

        goto LABEL_18;
      }

LABEL_17:
      v12 = 0;
LABEL_18:
      v26 = 5;
LABEL_44:
      sub_10000AFBC(v3, v26);

      goto LABEL_45;
    }

    v33 = sub_10000B5B4(v3);
    if (!v33)
    {
      sub_1000017B0(2, "Unregister: return WATCHDOG_SERVICE_REGISTRATION_ERROR_PARSE_FAILED", v34, v35, v36, v37, v38, v39, v97);
      goto LABEL_17;
    }

    v40 = v33;
    sub_1000017B0(0, "Try to remove service info from stash", v41, v42, v43, v44, v45, v46, v97);
    v47 = objc_alloc_init(NSMutableArray);
    v48 = +[NSFileManager defaultManager];
    v100 = off_1000266C8;
    v49 = [NSString stringWithFormat:@"%s"];
    v50 = [v48 fileExistsAtPath:v49];

    if (v50)
    {
      v57 = sub_10000A4C4();

      v47 = v57;
    }

    else
    {
      sub_1000017B0(2, "Faile to find previously stashed service info", v51, v52, v53, v54, v55, v56, v100);
    }

    [v47 removeObject:v40];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v58 = v47;
    v59 = [v58 countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v102;
      do
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v102 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v101 + 1) + 8 * i) objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
          v64 = [v63 UTF8String];
          sub_1000017B0(0, "Remaining stashed service %s", v65, v66, v67, v68, v69, v70, v64);
        }

        v60 = [v58 countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v60);
    }

    if ([v58 count])
    {
      sub_10000B69C(off_1000266C8, v58, 0);
    }

    else if (unlink(off_1000266C8))
    {
      sub_10000D060();
    }

    v71 = sub_10000A4C4();

    v12 = v40;
    v72 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
    if (v72)
    {
      v79 = v72;
      v80 = malloc_type_calloc(1uLL, 0x770uLL, 0x1072040412F3752uLL);
      if (v80)
      {
        v87 = v80;
        v79[1] = v80;
        *v79 = 2;
        v88 = [v12 objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
        if (v88 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v89 = strdup([v88 UTF8String]);
          v87[3] = v89;
          v79[2] = qword_100027240;
          qword_100027240 = v79;
          atomic_store(1u, byte_100027248);
          sub_1000017B0(0, "wait for service %s to be un-enrolled", v90, v91, v92, v93, v94, v95, v89);
          dispatch_semaphore_wait(qword_100027250, 0xFFFFFFFFFFFFFFFFLL);
          v96 = atomic_load(byte_100027248);
          if (v96)
          {
            sub_10000C89C();
          }

          if (!qword_100027240)
          {
            v26 = 2;
            goto LABEL_43;
          }

          v26 = 7;
        }

        else
        {
          v26 = 6;
        }

        free(v87);
      }

      else
      {
        sub_1000017B0(2, "Failed to allocate new watchdog service", v81, v82, v83, v84, v85, v86, v100);
        v88 = 0;
        v26 = 5;
      }

      free(v79);
    }

    else
    {
      sub_1000017B0(2, "Failed to allocate new watchdog service", v73, v74, v75, v76, v77, v78, v100);
      v88 = 0;
      v26 = 5;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    sub_1000017B0(0, "watchdogd received error message %s", v27, v28, v29, v30, v31, v32, string);
  }

  else
  {
    type = xpc_get_type(v3);
    sub_1000017B0(0, "watchdogd received unknown request type %p", v4, v5, v6, v7, v8, v9, type);
  }

  xpc_connection_cancel(*(a1 + 32));
LABEL_45:
}

id sub_10000B5B4(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "watchdogd_optin_service_identifier", &length);
  if (data)
  {
    v2 = [NSData dataWithBytes:data length:length];
    if (v2)
    {
      v13 = 0;
      v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v13];
      if (!v3)
      {
        v4 = [v13 description];
        v5 = [v4 UTF8String];
        sub_1000017B0(2, "Failed to get the opt-in service identifier with error %s", v6, v7, v8, v9, v10, v11, v5);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000B69C(const char *a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    sub_10000C89C();
  }

  v6 = v5;
  v7 = open(a1, 513, 420);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = __error();
    v21 = strerror(*v20);
    sub_1000017B0(2, "Failed to safely open file : %s", v22, v23, v24, v25, v26, v27, v21);
  }

  else
  {
    v8 = v7;
    v48 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v48];
    v10 = v48;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];
      v13 = [v12 UTF8String];
      sub_1000017B0(2, "Error parsing plist: %s", v14, v15, v16, v17, v18, v19, v13);

      close(v8);
    }

    else
    {
      v28 = [[NSFileHandle alloc] initWithFileDescriptor:v8 closeOnDealloc:0];
      [v28 seekToFileOffset:0];
      v47 = 0;
      [v28 writeData:v9 error:&v47];
      v29 = v47;
      [v28 truncateFileAtOffset:{objc_msgSend(v9, "length")}];
      if (v29)
      {
        v30 = [v29 description];
        v45 = [v30 UTF8String];
        sub_1000017B0(2, "Error persisting submission results: %s", v31, v32, v33, v34, v35, v36, v45);
      }

      else
      {
        v30 = sub_10000AD30();
        v37 = [v30 length];
        if (v30 && a3 && setxattr(a1, "BootSessionUUID", [v30 UTF8String], v37, 0, 0))
        {
          v38 = __error();
          v46 = strerror(*v38);
          sub_1000017B0(2, "setxattr failed with error %s", v39, v40, v41, v42, v43, v44, v46);
        }
      }

      close(v8);
    }
  }
}

uint64_t *sub_10000B8BC(uint64_t a1)
{
  result = &qword_1000271F8;
  do
  {
    result = *result;
  }

  while (result && result[1] != a1);
  return result;
}

uint64_t sub_10000B8E0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  if (*(a1 + 16))
  {
    sub_10000D02C();
  }

  if (*(a1 + 60))
  {
    return 1;
  }

  sp = 0;
  v5 = bootstrap_look_up(bootstrap_port, *(a1 + 32), &sp);
  v3 = v5 == 0;
  v12 = *(a1 + 32);
  if (v5)
  {
    bootstrap_strerror(v5);
    sub_1000017B0(2, "bootstrap_look_up service: %s failed with error: %s", v13, v14, v15, v16, v17, v18, v12);
  }

  else
  {
    sub_1000017B0(0, "discovered port for service: %s", v6, v7, v8, v9, v10, v11, *(a1 + 32));
    *(a1 + 104) = sp;
    *(a1 + 120) = a2;
    *(a1 + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10000BAFC(0, *(a1 + 24), v19, v20, v21, v22, v23, v24, v26);
  }

  return v3;
}

void sub_10000B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v9 = 0;
    do
    {
      sp = 0;
      if ((*(v8 + 16) & 1) == 0)
      {
        if (!*(v8 + 68))
        {
          sub_10000C89C();
        }

        if (!*(v8 + 56))
        {
          sub_10000C89C();
        }

        v10 = *(v8 + 32);
        if (!*v10)
        {
          sub_10000C89C();
        }

        if (!**(v8 + 24))
        {
          sub_10000C89C();
        }

        if (!**(v8 + 40))
        {
          sub_10000C89C();
        }

        if (!**(v8 + 48))
        {
          sub_10000C89C();
        }

        if (*(v8 + 104))
        {
          sub_10000C89C();
        }

        v11 = bootstrap_look_up(bootstrap_port, v10, &sp);
        v18 = *(v8 + 32);
        if (v11)
        {
          bootstrap_strerror(v11);
          sub_1000017B0(2, "bootstrap_look_up service: %s failed with error: %s", v19, v20, v21, v22, v23, v24, v18);
        }

        else
        {
          sub_1000017B0(0, "discovered port for service: %s", v12, v13, v14, v15, v16, v17, *(v8 + 32));
          *(v8 + 104) = sp;
          ++v9;
          sub_10000BAFC(0, *(v8 + 24), v25, v26, v27, v28, v29, v30, v31);
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  sub_1000017B0(0, "found %d services to monitor", a3, a4, a5, a6, a7, a8, v9);
}

void sub_10000BAFC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  client = 0;
  if (&_es_new_client)
  {
    v11 = es_new_client(&client, &stru_100019010);
    if (v11 || !client)
    {
      sub_1000017B0(2, "Failed to create new ES client due to %u", v12, v13, v14, v15, v16, v17, v11);
      return;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BE44;
    block[3] = &unk_100018C00;
    block[4] = client;
    if (qword_100027140 != -1)
    {
      dispatch_once(&qword_100027140, block);
    }

    v18 = [NSString stringWithUTF8String:a2];
    if (!v18)
    {
      sub_10000C89C();
    }

    v19 = v18;
    v20 = +[OSLaunchdDomain currentDomain];
    v21 = [OSLaunchdJob copyJobWithLabel:v19 domain:v20];

    if (v21 || (+[OSLaunchdDomain systemDomain], v22 = objc_claimAutoreleasedReturnValue(), v21 = [OSLaunchdJob copyJobWithLabel:v19 domain:v22], v22, v21))
    {
      v29 = [v21 getCurrentJobInfo];
      v36 = v29;
      if (v29)
      {
        v37 = [v29 program];
      }

      else
      {
        sub_1000017B0(2, "failed to get service info for launchd service %s", v30, v31, v32, v33, v34, v35, a2);
        v37 = 0;
      }

      if (v37)
      {
        if (a1 == 1)
        {
          sub_1000017B0(0, "Notify ESK to unmute service %s", v38, v39, v40, v41, v42, v43, a2);
          v51 = [v37 UTF8String];
          v52 = es_default_unmute_path_events();
          if (!v52)
          {
            v53 = v51;
            v50 = "Notify ESK about %s unenrolled";
            goto LABEL_27;
          }

          sub_1000017B0(2, "Faled to notify ESK about %s unenrolled %d", v44, v45, v46, v47, v48, v49, v51);
          v53 = a2;
          v50 = "Failed to unmute service %s";
        }

        else
        {
          if (a1)
          {
            goto LABEL_28;
          }

          sub_1000017B0(0, "Notify ESK to mute service %s", v38, v39, v40, v41, v42, v43, a2);
          if (sub_10000BE84(client, [v37 UTF8String]))
          {
            goto LABEL_28;
          }

          v53 = a2;
          v50 = "Failed to mute service %s";
        }

        v52 = 2;
LABEL_27:
        sub_1000017B0(v52, v50, v44, v45, v46, v47, v48, v49, v53);
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000017B0(2, "did not find a launchd service %s", v23, v24, v25, v26, v27, v28, a2);
    }

    sub_1000017B0(2, "Failed to query executable path of %s", v38, v39, v40, v41, v42, v43, a2);
    v37 = 0;
LABEL_28:
    es_delete_client(client);

    return;
  }

  sub_1000017B0(0, "ESK seems not available", a3, a4, a5, a6, a7, a8, a9);
}

void sub_10000BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_10000BE84(*(a1 + 32), "/usr/libexec/watchdogd");

  sub_1000017B0(0, "Notify ESK about watchdogd enrolled", v9, v10, v11, v12, v13, v14, a9);
}

BOOL sub_10000BE84(uint64_t a1, char a2)
{
  v9 = es_default_mute_path_events();
  if (v9)
  {
    sub_1000017B0(2, "Faled to notify ESK about %s enrolled %d", v3, v4, v5, v6, v7, v8, a2);
  }

  else
  {
    sub_1000017B0(0, "Notify ESK about %s enrolled", v3, v4, v5, v6, v7, v8, a2);
  }

  return v9 == 0;
}

void sub_10000BEF4()
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if ((byte_100027160 & 1) == 0)
  {
    v0 = IOServiceMatching("IOService");
    if (!v0)
    {
      sub_10000C89C();
    }

    v1 = v0;
    CFDictionarySetValue(v0, @"IOPropertyMatch", &off_100019F40);
    dword_100027148 = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (!dword_100027148)
    {
      sub_10000C89C();
    }
  }
}

void sub_10000BF84()
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if ((byte_100027160 & 1) == 0)
  {
    if (!dword_100027148)
    {
      sub_10000C89C();
    }

    if (!qword_100027150)
    {
      if (objc_opt_class())
      {
        v0 = [RBSProcessMonitor monitorWithConfiguration:&stru_100019058];
        v1 = qword_100027150;
        qword_100027150 = v0;
      }

      v2 = [NSSet setWithObject:@"com.apple.frontboard.visibility"];
      sub_100001640(0, 4, v2, @"com.apple.SpringBoard");
    }
  }
}

void sub_10000C070(id a1, RBSProcessMonitorConfiguring *a2)
{
  v2 = a2;
  v3 = +[RBSProcessStateDescriptor descriptor];
  [v3 setValues:1];
  v8 = @"com.apple.frontboard.visibility";
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setEndowmentNamespaces:v4];

  [(RBSProcessMonitorConfiguring *)v2 setStateDescriptor:v3];
  v5 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(RBSProcessMonitorConfiguring *)v2 setPredicates:v6];

  [(RBSProcessMonitorConfiguring *)v2 setUpdateHandler:&stru_100019098];
}

void sub_10000C190(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    v1 = sub_100008BA4();
    if (strnstr(v1, "-wdt_no_pmu", 0x400uLL))
    {
      byte_100027160 = 1;
    }

    else
    {
      v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/arm-io/wdt");
      if (v2)
      {
        v3 = v2;
        v4 = IORegistryEntrySearchCFProperty(v2, "IODeviceTree", @"no-pmu", kCFAllocatorDefault, 3u);
        if (v4)
        {
          byte_100027160 = 1;
          CFRelease(v4);
        }

        IOObjectRelease(v3);
      }
    }
  }
}

void sub_10000C2AC()
{
  v0 = malloc_type_malloc(0x8000uLL, 0xD04F6A6AuLL);
  qword_100027170 = v0;
  if (!v0)
  {
    sub_10000C89C();
  }

  v1 = v0;
  bzero(v0 + 1, 0x7FFCuLL);
  *v1 = 32728;
  NotificationPort = IODataQueueAllocateNotificationPort();
  dword_100027178 = NotificationPort;
  if (!NotificationPort)
  {
    sub_10000C89C();
  }

  mach_port_insert_right(mach_task_self_, NotificationPort, NotificationPort, 0x14u);
  if (IODataQueueSetNotificationPort(qword_100027170, dword_100027178))
  {
    sub_10000C89C();
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.watchdogd.rt_log", v10);
  v4 = dispatch_source_create(&_dispatch_source_type_mach_recv, dword_100027178, 0, v3);
  v5 = qword_100027180;
  qword_100027180 = v4;

  dispatch_source_set_event_handler(qword_100027180, &stru_1000190D8);
  dispatch_activate(qword_100027180);
  v6 = sub_100008BA4();
  if (sub_100008C44())
  {
    dword_1000271C0 = 1;
  }

  if (v6)
  {
    v7 = strlen(v6);
    v8 = strnstr(v6, "wdt_logging=", v7);
    if (v8)
    {
      v9 = v8;
      if (strlen(v8) >= 0xD)
      {
        dword_1000271C0 = atoi(v9 + 12);
      }
    }
  }

  [OSLaunchdJob setDisableLogging_4watchdogd:1];
}

void sub_10000C444(id a1)
{
  v1 = os_log_create("com.apple.watchdogd", "signpost");
  v2 = qword_100027188;
  qword_100027188 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10000C488(id a1)
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.log", v5);
  v2 = qword_100027198;
  qword_100027198 = v1;

  v3 = os_log_create("com.apple.watchdogd", "service-monitoring-thread");
  v4 = qword_1000271A8;
  qword_1000271A8 = v3;
}

void sub_10000C510(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1000271B0 = fopen("/dev/console", "w+");
  v2 = __error();
  if (qword_1000271B0)
  {
    v3 = dispatch_queue_create("com.apple.watchdogd.serial_log", v1);
    v4 = qword_1000271A0;
    qword_1000271A0 = v3;

    v5 = qword_100027198;
    v6 = &stru_100019178;
  }

  else
  {
    v7 = *v2;
    v5 = qword_100027198;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C604;
    block[3] = &unk_100019158;
    v9 = v7;
    v6 = block;
  }

  dispatch_async(v5, v6);
}

void sub_10000C604(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000D108(a1);
  }
}

void sub_10000C644(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "watchdogd logging to serial enabled", v1, 2u);
  }
}

uint64_t sub_10000C6A0(uint64_t a1)
{
  fwrite(*(*(*(a1 + 32) + 8) + 24), 1uLL, *(*(*(a1 + 40) + 8) + 24), qword_1000271B0);
  free(*(*(*(a1 + 32) + 8) + 24));
  v2 = qword_1000271B0;

  return fflush(v2);
}

uint64_t sub_10000C708(uint64_t a1)
{
  fwrite(*(*(*(a1 + 32) + 8) + 24), 1uLL, *(*(*(a1 + 40) + 8) + 24), qword_1000271B0);
  free(*(*(*(a1 + 32) + 8) + 24));
  v2 = qword_1000271B0;

  return fflush(v2);
}

_DWORD *(*sub_10000C770(uint64_t a1))(_DWORD *result, uint64_t a2)
{
  if (*(a1 + 20) == 6009000)
  {
    return sub_10000C790;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_10000C790(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v3 = result;
  LODWORD(v4) = result[1];
  if ((v4 - 1337) < 0xFFFFFB5F)
  {
    goto LABEL_14;
  }

  v5 = result[14];
  if (v5 > 0x400)
  {
    goto LABEL_14;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = v4 - 152 >= v5 && v4 >= v6 + 152;
  if (v7 && (v8 = result + v6, v9 = *(v8 + 37), v9 <= 5) && ((v10 = v4 - v6, v9 <= (v10 - 152) >> 5) ? (v11 = v10 == 32 * v9 + 152) : (v11 = 0), v11 && (v4 >= 0x43C ? (v4 = 1084) : (v4 = v4), (result = memchr(result + 15, 0, v4 - 60)) != 0)))
  {
    result = sub_100002AB8(v3[3], *(v3 + 4), *(v3 + 5), v3[12], v3 + 60, *(v8 + 60), (v8 + 68), v8 + 152, v9);
    *(a2 + 32) = result;
  }

  else
  {
LABEL_14:
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

void sub_10000C89C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000C9F0(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100004570();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000CB4C(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_100004570();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CBEC()
{
  v0 = __error();
  strerror(*v0);
  sub_100004570();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CC74(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_1000017B0(2, "failed to submit launchd job for %s with error %s", v3, v4, v5, v6, v7, v8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CCBC(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "IOServiceOpen failed with error : 0x%x", a2);
  sub_10000C258(2, "%s", v3, v4, v5, v6, v7, v8, *a1);
  v9 = *a1;
  _os_crash();
  __break(1u);
}

void sub_10000CD28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonCheckEnabled method, returned : 0x%x", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CD5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000017B0(2, "Failed to call kIOWatchdogDaemonCheckUserspaceDefanged method, returned : 0x%x", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CD90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000017B0(2, "Failed to call kIOWatchdogDaemonCheckin method, returned : %d", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CDC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonDisableUserspaceMonitoring method, returned : 0x%x", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CDF8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonReenableUserspaceMonitoring method, returned : 0x%x", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonCheckIOKitMonitoringEnabled method, returned : 0x%x", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestSocWatchdog method, returned : %d", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE94(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestSocWatchdog method, returned : %d", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CEC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestIOKitBusy method, returned : %d", a3, a4, a5, a6, a7, a8, a1);
  _os_crash();
  __break(1u);
}

void sub_10000CF10()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000CF2C()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000CF88()
{
  v0 = __error();
  v1 = strerror(*v0);
  sub_10000C258(2, "could not retrieve device boot-args, failed with error: %s", v2, v3, v4, v5, v6, v7, v1);
  _os_crash();
  __break(1u);
}

void sub_10000D02C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000D060()
{
  v0 = __error();
  v1 = strerror(*v0);
  sub_1000017B0(0, "Failed to unlink prior stashed services info with error %s", v2, v3, v4, v5, v6, v7, v1);
  _os_crash();
  __break(1u);
}

void sub_10000D108(uint64_t a1)
{
  v1 = strerror(*(a1 + 32));
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to open /dev/console with error : %s", &v2, 0xCu);
}