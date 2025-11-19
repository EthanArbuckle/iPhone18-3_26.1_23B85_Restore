void sub_1000006B0(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add_explicit(&xmmword_100022388 + 2, 1u, memory_order_relaxed);
  asl_msg_retain();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000074C;
  v4[3] = &unk_10001C7C0;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(qword_100020040, v4);
}

uint64_t sub_10000074C(uint64_t a1)
{
  v2 = time(0);
  v3 = qword_100022418;
  byte_100020048 = 0;
  v4 = *(a1 + 32);
  val_for_key = asl_msg_get_val_for_key();
  if (val_for_key)
  {
    if (v3)
    {
      v6 = *(v3 + 24);
      if (v6)
      {
        v7 = val_for_key;
        do
        {
          if (!strcmp(v7, *v6))
          {
            sub_1000008F8(v6, *(a1 + 32));
          }

          v6 = *(v6 + 24);
        }

        while (v6);
      }
    }
  }

  else
  {
    if (!dword_10002004C || asl_check_option(*(a1 + 32), "store") == 1)
    {
      sub_1000008C4(*(a1 + 32));
    }

    if (sub_1000008F8(v3, *(a1 + 32)))
    {
      v8 = 1;
    }

    else
    {
      v8 = v3 == 0;
    }

    if (!v8)
    {
      while (1)
      {
        v3 = *(v3 + 24);
        if (!v3)
        {
          break;
        }

        sub_1000008F8(v3, *(a1 + 32));
      }
    }
  }

  v9 = *(a1 + 32);
  if (asl_msg_get_val_for_key())
  {
    v10 = *(a1 + 32);
    asl_msg_set_key_val();
  }

  if (dword_100022404)
  {
    sub_100004068(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    atomic_fetch_add_explicit(&xmmword_100022388, -*(a1 + 40), memory_order_relaxed);
  }

  v11 = *(a1 + 32);
  result = asl_msg_release();
  atomic_fetch_add_explicit(&xmmword_100022388 + 2, 0xFFFFFFFF, memory_order_relaxed);
  if (v2 - qword_100020050 >= 300)
  {
    result = sub_100000D3C(300);
    qword_100020050 = v2;
  }

  return result;
}

void sub_1000008C4(uint64_t a1)
{
  if (!qword_100022418 || (*(qword_100022418 + 8)) && (byte_100020048 & 1) == 0)
  {
    byte_100020048 = 1;
    sub_100007ABC(a1);
  }
}

uint64_t sub_1000008F8(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a1 + 16);
      do
      {
        if ((*(v6 + 8) - 12) <= 2)
        {
          v7 = *(v6 + 24);
          if (v7)
          {
            *(v7 + 72) &= ~0x80000000;
          }
        }

        v6 = *(v6 + 40);
      }

      while (v6);
      do
      {
        if (!*v5)
        {
          goto LABEL_71;
        }

        v8 = *(v5 + 8);
        if ((v8 - 17) < 3)
        {
          goto LABEL_71;
        }

        if (v8 == 5)
        {
          if (asl_msg_cmp() != 1)
          {
            return 0;
          }

          v9 = *v5;
        }

        if (asl_msg_cmp() != 1)
        {
          goto LABEL_71;
        }

        v10 = *(v5 + 8);
        if (v10 > 11)
        {
          if ((v10 - 12) < 2)
          {
            v12 = *(v5 + 24);
            if (!v12)
            {
              goto LABEL_71;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              goto LABEL_71;
            }

            v13 = *(v12 + 72);
            if (v13 < 0)
            {
              goto LABEL_71;
            }

            *(v12 + 72) = v13 | 0x80000000;
            v14 = *(v12 + 192);
            if (v14)
            {
              v15 = v10 == 13;
              v16 = 28;
              if (v15)
              {
                v16 = 36;
              }

              ++*(v14 + v16);
            }

            if ((v13 & 0x400) != 0)
            {
              sub_100001FF4();
              asl_msg_retain();
              v26 = qword_100020060;
              block = _NSConcreteStackBlock;
              v31 = 0x40000000;
              v32 = sub_100002050;
              v27 = &unk_10001C970;
LABEL_62:
              v33 = v27;
              v34 = a1;
              v35 = v5;
              v36 = a2;
              dispatch_async(v26, &block);
              goto LABEL_71;
            }

            sub_100002114(a1, v5);
          }

          else if (v10 == 14)
          {
            if ((*(a1 + 8) & 1) == 0)
            {
              goto LABEL_71;
            }

            v17 = *(v5 + 24);
            if (!v17)
            {
              goto LABEL_71;
            }

            v18 = *(v17 + 192);
            if (!v18)
            {
              goto LABEL_71;
            }

            v19 = *(v17 + 72);
            if (v19 < 0)
            {
              goto LABEL_71;
            }

            *(v17 + 72) = v19 | 0x80000000;
            ++*(v18 + 24);
            if ((v19 & 0x400) != 0)
            {
              sub_100001FF4();
              asl_msg_retain();
              v26 = qword_100020060;
              block = _NSConcreteStackBlock;
              v31 = 0x40000000;
              v32 = sub_10000380C;
              v27 = &unk_10001CAD8;
              goto LABEL_62;
            }

            sub_1000038D0(a1, v5);
          }

          else if (v10 == 16)
          {
            asl_msg_get_val_for_key();
            v11 = *(v5 + 16);
            if (v11)
            {
              if (!strcmp(*(v5 + 16), "enable"))
              {
                v25 = *(a1 + 8) | 1;
              }

              else
              {
                if (strcmp(v11, "disable"))
                {
                  if (!strcmp(v11, "checkpoint") || !strcmp(v11, "rotate"))
                  {
                    sub_100001C94(a1, 0, 1);
                  }

                  goto LABEL_71;
                }

                v25 = *(a1 + 8) & 0xFFFFFFFE;
              }

              *(a1 + 8) = v25;
            }
          }
        }

        else if (v10 > 5)
        {
          switch(v10)
          {
            case 6:
              if (*(a1 + 8))
              {
                v20 = *(v5 + 16);
                if (v20)
                {
                  notify_post(v20);
                }
              }

              break;
            case 8:
              if (*a1 && !strcmp(*a1, "com.apple.asl"))
              {
                v21 = *(v5 + 16);
                v22 = atoi(v21);
                v23 = strchr(v21, 32);
                if (v23)
                {
                  v24 = v23;
                  goto LABEL_64;
                }

                v24 = strchr(v21, 9);
                if (v24)
                {
LABEL_64:
                  *v24++ = 0;
                  v28 = atoi(v24) == -1;
                }

                else
                {
                  v28 = 1;
                }

                if (v22 != -1)
                {
                  v29 = *(v5 + 16);
                  asl_msg_set_key_val();
                }

                if (v24)
                {
                  if (!v28)
                  {
                    asl_msg_set_key_val();
                  }

                  *(v24 - 1) = 32;
                }
              }

              break;
            case 11:
              sub_1000008C4(a2);
              break;
          }
        }

        else
        {
          switch(v10)
          {
            case 1:
              sub_100001E80(a1, *(v5 + 16), 1);
              break;
            case 3:
              return 1;
            case 4:
              return 0;
          }
        }

LABEL_71:
        v5 = *(v5 + 40);
      }

      while (v5);
    }

    return 0;
  }

  return result;
}

void sub_100000D3C(time_t a1)
{
  v2 = time(0);
  v9 = qword_100022418;
  if (qword_100022418)
  {
    v10 = v2;
    while (1)
    {
      v11 = *(v9 + 16);
      if (v11)
      {
        break;
      }

LABEL_30:
      v9 = *(v9 + 24);
      if (!v9)
      {
        return;
      }
    }

    while (1)
    {
      if (!a1)
      {
        v16 = *(v11 + 24);
        if (v16)
        {
          if ((*(v16 + 73) & 4) != 0)
          {
            sub_100002FB0(v11, 3, v3, v4, v5, v6, v7, v8);
            if (*(v11 + 8) != 13)
            {
              sub_1000033F8(v11, 1);
            }
          }
        }

        goto LABEL_29;
      }

      v12 = *(v11 + 8);
      switch(v12)
      {
        case 12:
          v19 = *(v11 + 24);
          if (!v19)
          {
            goto LABEL_29;
          }

          v20 = *(v19 + 192);
          if (!v20 || !*(v20 + 8) || *(v20 + 28))
          {
            goto LABEL_29;
          }

          v15 = *(v20 + 16);
          break;
        case 14:
          v17 = *(v11 + 24);
          if (!v17)
          {
            goto LABEL_29;
          }

          v18 = *(v17 + 192);
          if (!v18 || (*v18 & 0x80000000) != 0 || *(v18 + 24))
          {
            goto LABEL_29;
          }

          v15 = *(v18 + 8);
          break;
        case 13:
          v13 = *(v11 + 24);
          if (!v13)
          {
            goto LABEL_29;
          }

          v14 = *(v13 + 192);
          if (!v14 || !*(v14 + 8) || *(v14 + 36))
          {
            goto LABEL_29;
          }

          v15 = *(v14 + 24);
          break;
        default:
          goto LABEL_29;
      }

      if (v10 - v15 >= a1)
      {
        sub_100002FB0(v11, 3, v3, v4, v5, v6, v7, v8);
      }

LABEL_29:
      v11 = *(v11 + 40);
      if (!v11)
      {
        goto LABEL_30;
      }
    }
  }
}

uint64_t sub_100000E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100020058 != -1)
  {
    sub_1000139F8();
  }

  if (qword_100022418 || (qword_100022418 = asl_out_module_init()) != 0)
  {
    sub_100005CC8("%s: init\n", a2, a3, a4, a5, a6, a7, a8, "asl_action");
    dword_10002004C = 0;
    v8 = qword_100022418;
    if (qword_100022418)
    {
      v9 = 0;
      do
      {
        for (i = *(v8 + 16); i; i = i[5])
        {
          sub_1000016AC(v8, i);
          v11 = i[3];
          if (v11)
          {
            v9 |= *(v11 + 72);
          }
        }

        v8 = *(v8 + 24);
      }

      while (v8);
      v12 = (v9 & 4) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (DWORD2(xmmword_100022428))
    {
      v13 = qword_100022438 ? qword_100022438 : "/var/log/syslogd.log";
      v14 = fopen(v13, "a");
      if (v14)
      {
        v15 = v14;
        for (j = qword_100022418; j; j = *(j + 24))
        {
          v17 = *j;
          if (!*j)
          {
            v17 = "<unknown>";
          }

          if ((*(j + 8) & 2) != 0)
          {
            v18 = " (local)";
          }

          else
          {
            v18 = &unk_100015555;
          }

          fprintf(v15, "module: %s%s\n", v17, v18);
          asl_out_module_print(v15, j);
          fputc(10, v15);
        }

        fclose(v15);
      }
    }

    qword_100020050 = time(0);
    if (!v12)
    {
      sub_100001AF0(0);
      if (!qword_100020070)
      {
        sub_100003F88();
      }
    }
  }

  return 0;
}

void sub_100001034(id a1)
{
  qword_100020040 = dispatch_queue_create("ASL Action Queue", 0);
  qword_100020060 = dispatch_queue_create("iOS CrashLog Queue", 0);
  v1 = qword_100020040;

  notify_register_dispatch("com.apple.crash_mover", &dword_100020000, v1, &stru_10001C840);
}

void sub_1000010AC(id a1, int a2)
{
  state64 = 0;
  v2 = qword_100020068;
  if (!notify_get_state(dword_100020000, &state64) && state64 != (v2 != 0))
  {
    qword_100020068 = 0;
    if (state64 == 1 && (qword_100020068 = time(0)) != 0)
    {
      sub_100005CC8("CrashMover active: suspending crashlog queue and closing files\n", v3, v4, v5, v6, v7, v8, v9, v10);
      dispatch_suspend(qword_100020060);
      sub_100000D3C(0);
    }

    else
    {
      sub_100005CC8("CrashMover finished\n", v3, v4, v5, v6, v7, v8, v9, v10);
      dispatch_resume(qword_100020060);
    }
  }
}

time_t sub_10000118C()
{
  if (qword_100020068)
  {
    dispatch_resume(qword_100020060);
    qword_100020068 = 0;
  }

  dispatch_sync(qword_100020060, &stru_10001CB38);
  v6 = qword_100022418;
  if (qword_100022418)
  {
    v7 = qword_100022418;
    while (1)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        break;
      }

LABEL_25:
      v7 = *(v7 + 24);
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v9 = *(v8 + 8);
      if (v9 > 16)
      {
        if (v9 == 17 || v9 == 18 || v9 == 19)
        {
          sub_100003D38(*(v8 + 32));
        }

        goto LABEL_24;
      }

      if (v9 != 12 && v9 != 13)
      {
        break;
      }

      sub_100002FB0(v8, 4, v0, v1, v2, v3, v4, v5);
      v12 = *(v8 + 24);
      if (v12)
      {
        v13 = *(v12 + 192);
        if (v13)
        {
          free(v13);
          goto LABEL_22;
        }

LABEL_23:
        *(v12 + 192) = 0;
      }

LABEL_24:
      v8 = *(v8 + 40);
      if (!v8)
      {
        goto LABEL_25;
      }
    }

    if (v9 != 14)
    {
      goto LABEL_24;
    }

    sub_100002FB0(v8, 4, v0, v1, v2, v3, v4, v5);
    v10 = *(v8 + 24);
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = *(v10 + 192);
    if (!v11)
    {
      goto LABEL_24;
    }

    if (*(v11 + 16))
    {
      sub_100003BB0(v8);
    }

    sub_1000037AC(v11);
LABEL_22:
    v12 = *(v8 + 24);
    goto LABEL_23;
  }

LABEL_26:
  asl_out_module_free(v6);
  qword_100022418 = 0;
  result = time(0);
  qword_100020050 = result;
  return result;
}

void sub_100001300(id a1)
{
  v1 = sub_10000118C();

  sub_100000E7C(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100001328(char *__s2)
{
  v1 = qword_100022418;
  if (qword_100022418 && __s2)
  {
    do
    {
      if (*v1 && !strcmp(*v1, __s2))
      {
        break;
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return v1;
}

uint64_t sub_10000137C(char *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      if (v1 == 64)
      {
        v2 = a1 + 1;
      }

      else
      {
        v2 = a1;
      }

      while (1)
      {
        v3 = *v2;
        if (v3 != 32 && v3 != 9)
        {
          break;
        }

        ++v2;
      }

      v5 = explode(v2, " \t");
      v13 = v5;
      v23[3] = v5;
      if (!v5)
      {
        goto LABEL_16;
      }

      v14 = -1;
      do
      {
        ++v14;
      }

      while (*&v5[8 * v14]);
      if (v14 < 2)
      {
LABEL_16:
        v1 = 0xFFFFFFFFLL;
LABEL_29:
        free_string_list(v13);
        goto LABEL_30;
      }

      if (qword_100022418)
      {
        if (strcasecmp(*(v5 + 1), "define") || **v13 == 42 && !*(*v13 + 1))
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 0x40000000;
          v19[2] = sub_100001B48;
          v19[3] = &unk_10001C910;
          v19[4] = &v22;
          v20 = v14;
          dispatch_sync(qword_100020040, v19);
LABEL_27:
          v1 = 0;
          goto LABEL_28;
        }

        v16 = strdup(v2);
        if (v16)
        {
          v17 = v16;
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_10000158C;
          block[3] = &unk_10001C8E8;
          block[4] = &v22;
          block[5] = v16;
          dispatch_sync(qword_100020040, block);
          free(v17);
          goto LABEL_27;
        }

        v15 = "asl_action_control_set_param: memory allocation failed\n";
      }

      else
      {
        v15 = "asl_action_control_set_param: no modules loaded\n";
      }

      sub_100005CC8(v15, v6, v7, v8, v9, v10, v11, v12, v19[0]);
      v1 = 0xFFFFFFFFLL;
LABEL_28:
      v13 = v23[3];
      goto LABEL_29;
    }
  }

  else
  {
    v1 = 0xFFFFFFFFLL;
  }

LABEL_30:
  _Block_object_dispose(&v22, 8);
  return v1;
}

void sub_10000158C(uint64_t a1)
{
  for (i = *(a1 + 40); ; ++i)
  {
    v2 = *i;
    if (v2 == 32 || v2 == 9)
    {
      break;
    }
  }

  while (v2 == 9 || v2 == 32)
  {
    v4 = *++i;
    LOBYTE(v2) = v4;
  }

  while (v2 != 9 && v2 != 32)
  {
    v5 = *++i;
    LOBYTE(v2) = v5;
  }

  v6 = **(*(*(a1 + 32) + 8) + 24);
  v7 = sub_100001328(v6);
  if (!v7)
  {
    v8 = asl_out_module_new(v6);
    v7 = v8;
    v9 = qword_100022418;
    do
    {
      v10 = v9;
      v9 = *(v9 + 24);
    }

    while (v9);
    *(v10 + 24) = v8;
  }

  v11 = asl_out_module_parse_line(v7, i);
  if (v11)
  {
    v12 = v11;
    sub_1000016AC(v7, v11);
    v13 = v12[3];
    if (v13)
    {
      if ((*(v13 + 72) & 4) != 0)
      {
        sub_100001AF0(0);
        if (!qword_100020070)
        {

          sub_100003F88();
        }
      }
    }
  }
}

void sub_1000016AC(const char **a1, uint64_t *a2)
{
  if (!a1)
  {
    return;
  }

  v4 = qword_100022418;
  if (qword_100022418 != a1)
  {
    v5 = a2[3];
    if (v5)
    {
      if (*(v5 + 8) && qword_100022418 != 0)
      {
        while (1)
        {
          v7 = v4[2];
          if (v7)
          {
            break;
          }

LABEL_14:
          v4 = v4[3];
          if (v4)
          {
            v11 = v4 == a1;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            goto LABEL_23;
          }
        }

        while (1)
        {
          if (*(v7 + 2) == 2)
          {
            v8 = *(v7 + 3);
            if (v8)
            {
              v9 = *(v8 + 8);
              if (v9)
              {
                v10 = a2[3];
                if (!strcmp(*(v10 + 8), v9))
                {
                  break;
                }
              }
            }
          }

          v7 = *(v7 + 5);
          if (!v7)
          {
            goto LABEL_14;
          }
        }

        asl_out_dst_data_release(v10);
        a2[3] = 0;
        if (*(a2 + 2) == 2)
        {
          name = 0;
          asprintf(&name, "[Sender syslogd] [Level 5] [PID %u] [Message Configuration Notice:\nASL Module %s sharing output destination %s with ASL Module %s.\nOutput parameters from ASL Module %s override any specified in ASL Module %s.] [UID 0] [GID 0] [Facility syslog]", dword_10002237C, *a1, *(*(v7 + 3) + 8), *v4, *v4, *a1);
          sub_100006950(name);
          free(name);
        }

        else
        {
          a2[3] = asl_out_dst_data_retain(*(v7 + 3));
        }
      }
    }
  }

LABEL_23:
  v12 = *(a2 + 2);
  if (v12 <= 12)
  {
    if (v12 <= 10)
    {
      if (v12 == 1)
      {
        if (!*a2)
        {
          sub_100001E80(a1, a2[2], 1);
        }
      }

      else if (v12 == 5 && qword_100022418 != a1)
      {
        v17 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
        if (v17)
        {
          v18 = v17;
          name = 0;
          asprintf(&name, "[Sender syslogd] [Level 5] [PID %u] [Message Configuration Notice:\nASL Module %s claims selected messages.\nThose messages may not appear in standard system log files or in the ASL database.] [UID 0] [GID 0] [Facility syslog]", dword_10002237C, *a1);
          sub_100006950(name);
          free(name);
          v19 = *a2;
          *v18 = asl_msg_copy();
          v18[2] = 4;
          v20 = qword_100022418;
          *(v18 + 5) = *(qword_100022418 + 16);
          *(v20 + 16) = v18;
        }

        v21 = a2[2];
        if (!v21 || strcmp(v21, "only"))
        {
          *(a2 + 2) = 0;
        }
      }

      return;
    }

    if (v12 == 11)
    {
      ++dword_10002004C;
      return;
    }

    if (*(a2[3] + 192))
    {
      return;
    }

    v22 = 0x1020040417FDC45;
    v23 = 40;
LABEL_56:
    *(a2[3] + 192) = malloc_type_calloc(1uLL, v23, v22);
    return;
  }

  if (v12 <= 16)
  {
    if (v12 != 13)
    {
      if (v12 == 14)
      {
        v24 = *(a2[3] + 192);
        if (v24 || (v24 = malloc_type_calloc(1uLL, 0x38uLL, 0x10300401EE6F584uLL), (*(a2[3] + 192) = v24) != 0))
        {
          *v24 = -1;
        }
      }

      return;
    }

    if (*(a2[3] + 192))
    {
      return;
    }

    v22 = 0x10200409C53CD5ALL;
    v23 = 72;
    goto LABEL_56;
  }

  switch(v12)
  {
    case 17:
      name = 0;
      v25 = sub_100003EF0(a1, a2);
      if (v25)
      {
        asprintf(&name, "%s%s", "com.apple.system.notify.service.path:0x87:", v25);
        if (name)
        {
          out_token = 0;
          notify_register_dispatch(name, &out_token, qword_100020040, &stru_10001CBF8);
          free(name);
          v26 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
          v27 = out_token;
          if (v26)
          {
LABEL_60:
            *v26 = v27;
            a2[4] = v26;
            return;
          }

LABEL_53:
          notify_cancel(v27);
        }
      }

      break;
    case 18:
      v28 = sub_100003D78(a1, a2);
      notification_key = configuration_profile_create_notification_key();
      free(v28);
      if (!notification_key)
      {
        return;
      }

      LODWORD(name) = 0;
      v15 = qword_100020040;
      v16 = &stru_10001CB78;
LABEL_59:
      notify_register_dispatch(notification_key, &name, v15, v16);
      free(notification_key);
      v26 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      v27 = name;
      if (v26)
      {
        goto LABEL_60;
      }

      goto LABEL_53;
    case 19:
      v13 = sub_100003D78(a1, a2);
      notification_key = configuration_profile_create_notification_key();
      free(v13);
      if (notification_key)
      {
        LODWORD(name) = 0;
        v15 = qword_100020040;
        v16 = &stru_10001CBB8;
        goto LABEL_59;
      }

      break;
  }
}

uint64_t sub_100001AF0(int a1)
{
  for (i = qword_100022418; i; i = *(i + 24))
  {
    sub_100001C94(i, 0, a1);
  }

  return asl_trigger_aslmanager();
}

uint64_t sub_100001B48(uint64_t a1)
{
  result = **(*(*(a1 + 32) + 8) + 24);
  if (*result == 42 && !*(result + 1))
  {
    v3 = qword_100022418;
    for (i = 1; v3; v3 = *(v3 + 24))
    {
LABEL_4:
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v6 = *(v5 + 8);
      result = strcasecmp(v6, "enable");
      if (result)
      {
        result = strcasecmp(v6, "checkpoint");
        if (!result)
        {
          if (*(a1 + 40) < 3u)
          {
            v8 = v3;
            v7 = 0;
          }

          else
          {
            v7 = *(v5 + 16);
            v8 = v3;
          }

          result = sub_100001C94(v8, v7, 1);
        }

        if (!i)
        {
          return result;
        }
      }

      else if (!i || (result = strcmp(*v3, "com.apple.asl"), result))
      {
        if (*(a1 + 40) < 3u || (result = atoi(*(v5 + 16)), result))
        {
          v9 = *(v3 + 8) | 1;
        }

        else
        {
          v9 = *(v3 + 8) & 0xFFFFFFFE;
        }

        *(v3 + 8) = v9;
        if (!i)
        {
          return result;
        }
      }
    }
  }

  else
  {
    result = sub_100001328(result);
    v3 = result;
    i = 0;
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100001C94(uint64_t a1, char *__s2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    if ((*(v3 + 8) | 2) == 0xE)
    {
      v7 = *(v3 + 24);
      if ((*(v7 + 72) & 4) != 0 && (!__s2 || (v8 = *(v7 + 8)) != 0 && (!strcmp(*(v7 + 8), __s2) || (v9 = strrchr(v8, 47)) != 0 && !strcmp(v9 + 1, __s2))) && sub_1000033F8(v3, a3) >= 1)
      {
        sub_100002FB0(v3, 0);
        v6 = 1;
      }
    }

    v3 = *(v3 + 40);
  }

  while (v3);
  return v6;
}

void sub_100001D64(uint64_t a1, uint64_t a2, char a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100001DE0;
  block[3] = &unk_10001C930;
  v4 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(qword_100020040, block);
}

uint64_t sub_100001DE0(uint64_t result)
{
  v1 = qword_100022418;
  if (qword_100022418)
  {
    v2 = result;
    do
    {
      if ((*(v2 + 48) & 1) != 0 || (v3 = *(v2 + 32), v4 = *v1, result = asl_msg_lookup(), !result))
      {
        *(v1 + 8);
        v5 = *(v2 + 40);
        if (*v1)
        {
          v6 = *v1;
        }

        result = asl_msg_set_key_val();
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return result;
}

void sub_100001E80(uint64_t a1, char *a2, int a3)
{
  v6 = explode(a2, " \t");
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = 0;
    ;
  }

  if (v8 != 1)
  {
    v10 = *v6;
    if (!strcasecmp(*v6, "enable"))
    {
      v11 = v8 != 2 && atoi(v7[1]) == 0;
      v13 = *(a1 + 8) & 0xFFFFFFFE | v11 ^ a3;
    }

    else
    {
      if (strcasecmp(v10, "disable"))
      {
        free_string_list(v7);
        if (!strcmp(*a1, "com.apple.asl"))
        {

          sub_1000054EC(a2, a3);
        }

        return;
      }

      if (v8 == 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = atoi(v7[1]);
      }

      v14 = v12 == 0;
      if (a3)
      {
        v14 = v12;
      }

      v15 = !v14;
      v13 = *(a1 + 8) & 0xFFFFFFFE;
      if (v15)
      {
        ++v13;
      }
    }

    *(a1 + 8) = v13;
  }

  free_string_list(v7);
}

void sub_100001FF4()
{
  if (qword_100020068)
  {
    if (time(0) - qword_100020068 >= 61)
    {
      sub_100005CC8("CrashMover timeout: resuming crashlog queue\n", v0, v1, v2, v3, v4, v5, v6, v7);
      dispatch_resume(qword_100020060);
      qword_100020068 = 0;
    }
  }
}

void sub_100002050(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000020D4;
  block[3] = &unk_10001C950;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  dispatch_async(qword_100020040, block);
}

uint64_t sub_1000020D4(uint64_t a1)
{
  v2 = *(a1 + 48);
  sub_100002114(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 48);

  return asl_msg_release();
}

void sub_100002114(const char **a1, uint64_t a2)
{
  if (*(a2 + 8) != 13)
  {
    v17 = *(a2 + 24);
    if (!v17)
    {
      return;
    }

    v18 = *(v17 + 192);
    if (!v18)
    {
      return;
    }

    v19 = *(v18 + 28);
    if (v19)
    {
      *(v18 + 28) = v19 - 1;
    }

    __ptr = 0;
    if (*(v18 + 8))
    {
      ++*v18;
      goto LABEL_18;
    }

    if (sub_1000025EC(a2))
    {
      goto LABEL_32;
    }

    v24 = *(v18 + 8);
    set_position = asl_file_read_set_position();
    if (set_position)
    {
      v26 = set_position;
      asl_core_error();
      sub_100005CC8("_act_store_file_setup: asl_file_read_set_position failed %d %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
    }

    else
    {
      v43 = *(v18 + 8);
      *v18 = *(v43 + 80) + 1;
      if (!fseek(*(v43 + 104), 0, 2))
      {
LABEL_18:
        *(v18 + 16) = time(0);
        *(*(a2 + 24) + 76) = 0;
        v20 = *(v18 + 8);
        __ptr = *v18;
        if (!asl_file_save())
        {
          *(*(a2 + 24) + 184) = *(*(v18 + 8) + 96);
          if (sub_1000033F8(a2, 0) == 1)
          {
            asl_trigger_aslmanager();
          }

          return;
        }

LABEL_32:
        v21 = "_act_store_file";
        v22 = a1;
        v23 = a2;
LABEL_33:
        sub_1000024C8(v21, v22, v23);
        return;
      }

      v44 = *__error();
      v45 = __error();
      strerror(*v45);
      sub_100005CC8("_act_store_file_setup: fseek failed %d %s\n", v46, v47, v48, v49, v50, v51, v52, v44);
    }

    sub_100002FB0(a2, 2);
    goto LABEL_32;
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 192);
    if (v5)
    {
      v6 = *(v5 + 36);
      if (v6)
      {
        *(v5 + 36) = v6 - 1;
      }

      if (asl_msg_get_val_for_key())
      {
        v7 = *(a2 + 24);
        if (v7)
        {
          v8 = *(v7 + 192);
          if (v8)
          {
            if (*(v7 + 8))
            {
              v9 = *(v8 + 16);
              if (sub_1000025EC(a2))
              {
                sub_100005CC8("_act_store_dir_setup: _act_dst_open %s failed\n", v10, v11, v12, v13, v14, v15, v16, *(*(a2 + 24) + 8));
              }

              else
              {
                __ptr = 0;
                rewind(*v8);
                if (fread(&__ptr, 8uLL, 1uLL, *v8) == 1)
                {
                  *(v8 + 16) = asl_core_ntohq() + 1;
                  __ptr = asl_core_htonq();
                  rewind(*v8);
                  if (fwrite(&__ptr, 8uLL, 1uLL, *v8) == 1)
                  {
                    fflush(*v8);
                    if (fseek(*(*(v8 + 8) + 104), 0, 2))
                    {
                      v34 = *__error();
                      v35 = __error();
                      strerror(*v35);
                      sub_100005CC8("_act_store_dir_setup: aslfile fseek failed %d %s\n", v36, v37, v38, v39, v40, v41, v42, v34);
                      sub_100002FB0(a2, 2);
                    }

                    else
                    {
                      *(v5 + 24) = time(0);
                      *(*(a2 + 24) + 76) = 0;
                      v71 = *(v5 + 8);
                      v80 = *(v5 + 16);
                      if (!asl_file_save())
                      {
                        *(*(a2 + 24) + 184) = *(*(v5 + 8) + 96);
                        return;
                      }

                      v72 = asl_core_error();
                      sub_100005CC8("_act_store_dir asl_file_save FAILED %s\n", v73, v74, v75, v76, v77, v78, v79, v72);
                    }
                  }

                  else
                  {
                    v62 = *__error();
                    v63 = __error();
                    strerror(*v63);
                    sub_100005CC8("_act_store_dir_setup: storedata write failed %d %s\n", v64, v65, v66, v67, v68, v69, v70, v62);
                    sub_100002FB0(a2, 2);
                  }
                }

                else
                {
                  v53 = *__error();
                  v54 = __error();
                  strerror(*v54);
                  sub_100005CC8("_act_store_dir_setup: storedata read failed %d %s\n", v55, v56, v57, v58, v59, v60, v61, v53);
                  sub_100002FB0(a2, 2);
                }
              }
            }
          }
        }

        v21 = "_act_store_dir";
        v22 = a1;
        v23 = a2;
        goto LABEL_33;
      }
    }
  }
}

void sub_1000024C8(char a1, const char **a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if ((*(v3 + 73) & 8) == 0)
  {
    ++*(v3 + 76);
    v7 = *a2;
    v23 = *(v3 + 8);
    asl_core_error();
    sub_100005CC8("%s: %s save to %s failed: %s\n", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = *(a3 + 24);
    v16 = *(v15 + 76);
    if (v16 >= 6)
    {
      v24 = 0;
      v17 = *a2;
      v18 = *(v15 + 8);
      v19 = dword_10002237C;
      v20 = asl_core_error();
      asprintf(&v24, "[Sender syslogd] [Level 3] [PID %u] [Facility syslog] [Message Disabling module %s writes to %s following %u failures (%s)]", v19, v17, v18, v16, v20);
      sub_100006950(v24);
      free(v24);
      v21 = *(a3 + 8);
      switch(v21)
      {
        case 12:
          goto LABEL_6;
        case 14:
          sub_1000037AC(*(*(a3 + 24) + 192));
          break;
        case 13:
LABEL_6:
          v22 = *(*(a3 + 24) + 192);
          if (v22)
          {
            free(v22);
          }

          break;
      }

      *(*(a3 + 24) + 192) = 0;
      *(a3 + 8) = 0;
    }
  }
}

uint64_t sub_1000025EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 192);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (v4 == 12)
  {
    if (*(v3 + 1))
    {
      return 0;
    }

    v32 = asl_out_mkpath(qword_100022418, a1);
    v33 = *(a1 + 24);
    if (v32)
    {
      sub_100005CC8("_asl_file_open: asl_out_mkpath %s failed\n", v25, v26, v27, v28, v29, v30, v31, *(v33 + 8));
      return 0xFFFFFFFFLL;
    }

    open = asl_out_dst_file_create_open(v33, 0);
    if (open < 0)
    {
      v79 = *(*(a1 + 24) + 16);
      v80 = *__error();
      v81 = __error();
      strerror(*v81);
      sub_100005CC8("_asl_file_open: _act_file_create_open %s failed %d %s\n", v82, v83, v84, v85, v86, v87, v88, v79);
      return 0xFFFFFFFFLL;
    }

    close(open);
    if (*(*(a1 + 24) + 16))
    {
      if (asl_file_open_write())
      {
        v37 = *(*(a1 + 24) + 16);
        v38 = *__error();
        v39 = __error();
        strerror(*v39);
        sub_100005CC8("_asl_file_open: asl_file_open_write %s failed %d %s\n", v40, v41, v42, v43, v44, v45, v46, v37);
        return 0xFFFFFFFFLL;
      }

      v98 = fileno(*(*(v3 + 1) + 104));
      v99 = *(v3 + 1);
      v100 = dispatch_source_create(&_dispatch_source_type_vnode, v98, 1uLL, qword_100020040);
      *(v3 + 4) = v100;
      if (v100)
      {
        *&v206.st_dev = _NSConcreteStackBlock;
        v206.st_ino = 0x40000000;
        *&v206.st_uid = sub_1000036AC;
        *&v206.st_rdev = &unk_10001CA10;
        v206.st_atimespec.tv_sec = a1;
        dispatch_source_set_event_handler(v100, &v206);
        v108 = *(v3 + 4);
        *&handler[0].tm_sec = _NSConcreteStackBlock;
        *&handler[0].tm_hour = 0x40000000;
        *&handler[0].tm_mon = sub_1000036B8;
        *&handler[0].tm_wday = &unk_10001CA30;
        LODWORD(handler[0].tm_gmtoff) = v98;
        *&handler[0].tm_isdst = v99;
        dispatch_source_set_cancel_handler(v108, handler);
        dispatch_resume(*(v3 + 4));
      }

      sub_100005CC8("_asl_file_open ASL file %s fd %d\n", v101, v102, v103, v104, v105, v106, v107, *(*(a1 + 24) + 16));
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 != 14)
  {
    if (v4 == 13)
    {
      v5 = sub_100003314(a1);
      v13 = *(a1 + 24);
      if (v5)
      {
        sub_100005CC8("_asl_dir_today_open: No directory at path %s\n", v6, v7, v8, v9, v10, v11, v12, *(v13 + 8));
LABEL_8:
        sub_100005CC8("_act_dst_open:_asl_dir_today_open %s FAILED!\n", v14, v15, v16, v17, v18, v19, v20, *(*(a1 + 24) + 8));
        return 0xFFFFFFFFLL;
      }

      v34 = *(v13 + 192);
      memset(handler, 0, 56);
      __ptr = time(0);
      if (!localtime_r(&__ptr, handler))
      {
        v47 = __error();
        v195 = strerror(*v47);
        sub_100005CC8("_asl_dir_today_open: localtime_r error %s\n", v48, v49, v50, v51, v52, v53, v54, v195);
        goto LABEL_8;
      }

      if (sub_1000033F8(a1, 0) == 1)
      {
        asl_trigger_aslmanager();
      }

      if (*(v34 + 8))
      {
        if (__PAIR64__(*(v34 + 40), *(v34 + 44)) == *&handler[0].tm_mon && *(v34 + 48) == handler[0].tm_mday)
        {
          goto LABEL_51;
        }

        sub_100003238(a1);
      }

      v35 = *(a1 + 24);
      if (*(v35 + 73))
      {
        asl_make_timestamp(__ptr, *(v35 + 64), __str, 0x20uLL);
        v55 = *(a1 + 24);
        v196 = *(v55 + 8);
        asprintf((v55 + 16), "%s/%s.asl");
      }

      else
      {
        v194 = *(v35 + 8);
        asprintf((v35 + 16), "%s/%d.%02d.%02d.asl");
      }

      v56 = *(a1 + 24);
      if (!*(v56 + 16))
      {
        v71 = __error();
        v197 = strerror(*v71);
        sub_100005CC8("_asl_dir_today_open: asprintf error %s\n", v72, v73, v74, v75, v76, v77, v78, v197);
        goto LABEL_8;
      }

      v57 = **(v56 + 120);
      v58 = **(v56 + 136);
      v59 = umask(0);
      v60 = *(a1 + 24);
      v61 = *(v60 + 16);
      v62 = *(v60 + 116);
      LODWORD(v57) = asl_file_open_write();
      umask(v59);
      if (v57)
      {
        v63 = *(*(a1 + 24) + 16);
        asl_core_error();
        sub_100005CC8("_asl_dir_today_open: asl_file_open_write %s error %s\n", v64, v65, v66, v67, v68, v69, v70, v63);
LABEL_44:
        free(*(*(a1 + 24) + 16));
        *(*(a1 + 24) + 16) = 0;
        goto LABEL_8;
      }

      if (fseek(*(*(v34 + 8) + 104), 0, 2))
      {
        v89 = *(*(a1 + 24) + 16);
        v90 = __error();
        strerror(*v90);
        sub_100005CC8("_asl_dir_today_open: fseek %s error %s\n", v91, v92, v93, v94, v95, v96, v97, v89);
        goto LABEL_44;
      }

      *(v34 + 40) = vrev64_s32(*&handler[0].tm_mon);
      *(v34 + 48) = handler[0].tm_mday;
      v109 = fileno(*(*(v34 + 8) + 104));
      v110 = *(v34 + 8);
      v111 = dispatch_source_create(&_dispatch_source_type_vnode, v109, 1uLL, qword_100020040);
      *(v34 + 64) = v111;
      if (v111)
      {
        v199 = _NSConcreteStackBlock;
        v200 = 0x40000000;
        v201 = sub_1000035F4;
        v202 = &unk_10001C990;
        v203 = a1;
        dispatch_source_set_event_handler(v111, &v199);
        v119 = *(v34 + 64);
        *&v206.st_dev = _NSConcreteStackBlock;
        v206.st_ino = 0x40000000;
        *&v206.st_uid = sub_100003600;
        *&v206.st_rdev = &unk_10001C9B0;
        LODWORD(v206.st_atimespec.tv_nsec) = v109;
        v206.st_atimespec.tv_sec = v110;
        dispatch_source_set_cancel_handler(v119, &v206);
        dispatch_resume(*(v34 + 64));
      }

      sub_100005CC8("_asl_dir_today_open ASL file %s fd %d\n", v112, v113, v114, v115, v116, v117, v118, *(*(a1 + 24) + 16));
LABEL_51:
      v120 = *(*(a1 + 24) + 192);
      if (!*v120)
      {
        v121 = sub_100003314(a1);
        v129 = *(*(a1 + 24) + 8);
        if (v121)
        {
          sub_100005CC8("_asl_dir_storedata_open: No directory at path %s\n", v122, v123, v124, v125, v126, v127, v128, *(*(a1 + 24) + 8));
LABEL_54:
          sub_100005CC8("_act_dst_open:_asl_dir_storedata_open %s FAILED!  Closing today file\n", v130, v131, v132, v133, v134, v135, v136, *(*(a1 + 24) + 8));
          sub_100003238(a1);
          return 0xFFFFFFFFLL;
        }

        snprintf(handler, 0x400uLL, "%s/%s", *(*(a1 + 24) + 8), "StoreData");
        memset(&v206, 0, sizeof(v206));
        if (stat(handler, &v206))
        {
          if (*__error() != 2)
          {
            v161 = __error();
            v198 = strerror(*v161);
            sub_100005CC8("_asl_dir_storedata_open: stat error %s\n", v162, v163, v164, v165, v166, v167, v168, v198);
            goto LABEL_54;
          }

          v137 = fopen(handler, "w+");
          *v120 = v137;
          if (!v137)
          {
            v177 = __error();
            strerror(*v177);
            sub_100005CC8("_asl_dir_storedata_open: fopen new %s: %s\n", v178, v179, v180, v181, v182, v183, v184, handler);
            goto LABEL_54;
          }

          __ptr = asl_core_htonq();
          if (fwrite(&__ptr, 8uLL, 1uLL, *v120) != 1)
          {
            v185 = *__error();
            v186 = __error();
            strerror(*v186);
            sub_100005CC8("_asl_dir_storedata_open: storedata write failed %d %s\n", v187, v188, v189, v190, v191, v192, v193, v185);
            goto LABEL_54;
          }

          if (chown(handler, **(*(a1 + 24) + 120), **(*(a1 + 24) + 136)))
          {
            v138 = *(a1 + 24);
            v139 = **(v138 + 120);
            v140 = **(v138 + 136);
            v141 = __error();
            strerror(*v141);
            sub_100005CC8("_asl_dir_storedata_open: chown %d %d new %s: %s\n", v142, v143, v144, v145, v146, v147, v148, handler);
            goto LABEL_54;
          }

          v149 = *v120;
        }

        else
        {
          v149 = fopen(handler, "r+");
          *v120 = v149;
          if (!v149)
          {
            v169 = __error();
            strerror(*v169);
            sub_100005CC8("_asl_dir_storedata_open: fopen existing %s: %s\n", v170, v171, v172, v173, v174, v175, v176, handler);
            goto LABEL_54;
          }
        }

        v150 = fileno(v149);
        v151 = *v120;
        v152 = dispatch_source_create(&_dispatch_source_type_vnode, v150, 1uLL, qword_100020040);
        *(v120 + 56) = v152;
        if (v152)
        {
          *__str = _NSConcreteStackBlock;
          v208 = 0x40000000;
          v209 = sub_100003650;
          v210 = &unk_10001C9D0;
          v211 = a1;
          dispatch_source_set_event_handler(v152, __str);
          v160 = *(v120 + 56);
          v199 = _NSConcreteStackBlock;
          v200 = 0x40000000;
          v201 = sub_10000365C;
          v202 = &unk_10001C9F0;
          v204 = v150;
          v203 = v151;
          dispatch_source_set_cancel_handler(v160, &v199);
          dispatch_resume(*(v120 + 56));
        }

        sub_100005CC8("_asl_dir_storedata_open ASL storedata %s fd %d\n", v153, v154, v155, v156, v157, v158, v159, handler);
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if ((*v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v22 = asl_out_dst_file_create_open(v2, 0);
  *v3 = v22;
  if ((v22 & 0x80000000) != 0)
  {
    if (asl_out_mkpath(qword_100022418, a1))
    {
      return 0xFFFFFFFFLL;
    }

    v22 = asl_out_dst_file_create_open(*(a1 + 24), 0);
    *v3 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = dispatch_source_create(&_dispatch_source_type_vnode, v22, 1uLL, qword_100020040);
  *(v3 + 6) = result;
  if (result)
  {
    v23 = *v3;
    *&handler[0].tm_sec = _NSConcreteStackBlock;
    *&handler[0].tm_hour = 0x40000000;
    *&handler[0].tm_mon = sub_100003708;
    *&handler[0].tm_wday = &unk_10001CA50;
    LODWORD(handler[0].tm_gmtoff) = v23;
    *&handler[0].tm_isdst = a1;
    dispatch_source_set_event_handler(result, handler);
    v24 = *(v3 + 6);
    *&v206.st_dev = _NSConcreteStackBlock;
    v206.st_ino = 0x40000000;
    *&v206.st_uid = sub_10000375C;
    *&v206.st_rdev = &unk_10001CA70;
    LODWORD(v206.st_atimespec.tv_sec) = v23;
    dispatch_source_set_cancel_handler(v24, &v206);
    dispatch_resume(*(v3 + 6));
    return 0;
  }

  return result;
}

void sub_100002FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      if (v9[24])
      {
        v10 = a2;
        v11 = *(a1 + 8);
        switch(v11)
        {
          case 12:
            if (!v9[2])
            {
              v32 = v9[1];
            }

            sub_100005CC8("_act_dst_close: %s ASL FILE %s\n", a2, a3, a4, a5, a6, a7, a8, off_10001CA90[a2]);
            v33 = *(a1 + 24);
            if (v33)
            {
              v34 = *(v33 + 192);
              if (*(v34 + 8))
              {
                v35 = *(v34 + 28);
                if (v35)
                {
                  v55 = 0;
                  asprintf(&v55, "[Sender syslogd] [Level 4] [PID %u] [Facility syslog] [Message ASL File %s was closed with %d pending messages]", dword_10002237C, *(v33 + 16), v35);
                  sub_100006950(v55);
                  free(v55);
                }

                v36 = *(v34 + 32);
                if (v36)
                {
                  dispatch_source_cancel(v36);
                  dispatch_release(*(v34 + 32));
                  *(v34 + 32) = 0;
                }

                else
                {
                  v37 = fileno(*(*(v34 + 8) + 104));
                  sub_100005CC8("close ASL fd %d\n", v38, v39, v40, v41, v42, v43, v44, v37);
                  v45 = *(v34 + 8);
                  asl_file_close();
                }

                *(v34 + 8) = 0;
              }
            }

            break;
          case 14:
            if (!v9[2])
            {
              v20 = v9[1];
            }

            sub_100005CC8("_act_dst_close: %s FILE %s\n", a2, a3, a4, a5, a6, a7, a8, off_10001CA90[a2]);
            v28 = *(a1 + 24);
            v29 = *(v28 + 192);
            if ((*v29 & 0x80000000) == 0)
            {
              v30 = *(v29 + 24);
              if (v30)
              {
                v55 = 0;
                asprintf(&v55, "[Sender syslogd] [Level 4] [PID %u] [Facility syslog] [Message File %s was closed with %d pending messages]", dword_10002237C, *(v28 + 16), v30);
                sub_100006950(v55);
                free(v55);
              }

              v31 = *(v29 + 48);
              if (v31)
              {
                dispatch_source_cancel(v31);
                dispatch_release(*(v29 + 48));
                *(v29 + 48) = 0;
              }

              else
              {
                sub_100005CC8("close fd %d\n", v21, v22, v23, v24, v25, v26, v27, *v29);
                close(*v29);
              }

              *v29 = -1;
            }

            break;
          case 13:
            v54 = v9[1];
            sub_100005CC8("_act_dst_close: %s ASL DIR %s\n", a2, a3, a4, a5, a6, a7, a8, off_10001CA90[a2]);
            if (v10)
            {
              v12 = *(*(a1 + 24) + 192);
              if (*v12)
              {
                if (*(v12 + 56))
                {
                  dispatch_source_cancel(*(v12 + 56));
                  dispatch_release(*(v12 + 56));
                }

                else
                {
                  v46 = fileno(*v12);
                  sub_100005CC8("close ASL storedata fd %d\n", v47, v48, v49, v50, v51, v52, v53, v46);
                  fclose(*v12);
                }

                sub_100005CC8("_asl_dir_storedata_close %p\n", v13, v14, v15, v16, v17, v18, v19, *v12);
                *v12 = 0;
              }
            }

            sub_100003238(a1);
            break;
        }
      }
    }
  }
}

void sub_100003238(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 192);
  if (*(v2 + 8))
  {
    v4 = *(v2 + 36);
    if (v4)
    {
      v15 = 0;
      asprintf(&v15, "[Sender syslogd] [Level 4] [PID %u] [Facility syslog] [Message ASL Store %s was closed with %d pending messages]", dword_10002237C, *(v1 + 16), v4);
      sub_100006950(v15);
      free(v15);
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      dispatch_source_cancel(v5);
      dispatch_release(*(v2 + 64));
      *(v2 + 64) = 0;
    }

    else
    {
      v6 = fileno(*(*(v2 + 8) + 104));
      sub_100005CC8("close ASL fd %d\n", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = *(v2 + 8);
      asl_file_close();
    }

    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    free(*(*(a1 + 24) + 16));
    *(*(a1 + 24) + 16) = 0;
    *(v2 + 8) = 0;
  }
}

uint64_t sub_100003314(uint64_t a1)
{
  memset(&v26, 0, sizeof(v26));
  if (stat(*(*(a1 + 24) + 8), &v26))
  {
    if (*__error() == 2)
    {
      result = asl_out_mkpath(qword_100022418, a1);
      if (!result)
      {
        return result;
      }

      sub_100005CC8("_asl_dir_create: asl_out_mkpath failed: %s\n", v10, v11, v12, v13, v14, v15, v16, *(*(a1 + 24) + 8));
    }

    else
    {
      v17 = __error();
      v25 = strerror(*v17);
      sub_100005CC8("_asl_dir_create: stat error %s\n", v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    if ((v26.st_mode & 0xF000) == 0x4000)
    {
      return 0;
    }

    sub_100005CC8("_asl_dir_create: expected a directory at path %s\n", v2, v3, v4, v5, v6, v7, v8, *(*(a1 + 24) + 8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000033F8(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 16);
  if (v5)
  {
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v5 = v22;
    asl_dst_make_current_name(result, 0, v22, 0x400uLL);
    result = *(a1 + 24);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  if ((*(result + 73) & 0x80) == 0)
  {
    v6 = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (!*(result + 152))
  {
    return 0;
  }

  v6 = 1;
LABEL_11:
  st_size = *(result + 184);
  if (st_size && *(result + 176))
  {
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
    if (stat(v5, &v21) < 0)
    {
      if (*__error() == 2)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = *(a1 + 24);
    if (!*(result + 176))
    {
      tv_sec = v21.st_birthtimespec.tv_sec;
      *(result + 176) = v21.st_birthtimespec.tv_sec;
      if (!tv_sec)
      {
        *(result + 176) = v21.st_mtimespec.tv_sec;
      }
    }

    st_size = v21.st_size;
    *(result + 184) = v21.st_size;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (st_size < *(result + 152))
  {
    return 0;
  }

LABEL_22:
  if (*(result + 73))
  {
    sub_100002FB0(a1, 0);
  }

  else
  {
    snprintf(&v21, 0x400uLL, "%s", v5);
    v9 = time(0);
    v10 = *(a1 + 24);
    *(v10 + 176) = v9;
    asl_dst_make_current_name(v10, 256, __s2, 0x400uLL);
    sub_100002FB0(a1, 0);
    if (strcmp(&v21, __s2))
    {
      rename(&v21, __s2, v11);
      sub_100005CC8("CHECKPOINT RENAME %s %s\n", v12, v13, v14, v15, v16, v17, v18, &v21);
    }
  }

  v19 = *(a1 + 24);
  *(v19 + 176) = 0;
  *(v19 + 184) = 0;
  return 1;
}

uint64_t sub_100003600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("cancel/close ASL file fd %d\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);

  return asl_file_close();
}

uint64_t sub_10000365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("cancel/close ASL storedata fd %d\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);

  return fclose(v9);
}

uint64_t sub_1000036B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("cancel/close ASL file fd %d\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);

  return asl_file_close();
}

uint64_t sub_100003708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("dispatch_source DISPATCH_VNODE_DELETE fd %d\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);

  return sub_100002FB0(v9, 1);
}

uint64_t sub_10000375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("cancel/close file fd %d\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
  v9 = *(a1 + 32);

  return close(v9);
}

void sub_1000037AC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if (!*(a1 + 16))
      {
        dispatch_resume(v2);
        v2 = *(a1 + 40);
      }

      dispatch_release(v2);
    }

    free(*(a1 + 32));

    free(a1);
  }
}

void sub_10000380C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100003890;
  block[3] = &unk_10001CAB8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  dispatch_async(qword_100020040, block);
}

uint64_t sub_100003890(uint64_t a1)
{
  v2 = *(a1 + 48);
  sub_1000038D0(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 48);

  return asl_msg_release();
}

void sub_1000038D0(const char **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = *(v3 + 192);
      if (v4)
      {
        v6 = *(v4 + 24);
        if (v6)
        {
          *(v4 + 24) = v6 - 1;
        }

        v19 = 0;
        if ((*(v3 + 73) & 0x40) == 0)
        {
          v7 = time(0);
          v8 = *(a2 + 24);
          v9 = *(v8 + 24);
          v10 = *(v8 + 56);
          v11 = asl_format_message();
          if ((*(*(a2 + 24) + 72) & 8) == 0)
          {
LABEL_8:
            v12 = 0;
            goto LABEL_9;
          }

          if (!*(v4 + 40))
          {
            v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100020040);
            *(v4 + 40) = v13;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 0x40000000;
            handler[2] = sub_100003BA8;
            handler[3] = &unk_10001CAF8;
            handler[4] = a2;
            dispatch_source_set_event_handler(v13, handler);
          }

          v12 = 0;
          if (xmmword_100022460 && v11)
          {
            if (!*(v4 + 32))
            {
              goto LABEL_8;
            }

            v12 = asl_core_string_hash();
            if (*(v4 + 20) == v12 && !strcmp(*(v4 + 32), v11 + 16) && v7 - *(v4 + 8) < xmmword_100022460)
            {
              v14 = *(v4 + 16);
              if (!v14)
              {
                v15 = *(v4 + 40);
                v16 = dispatch_time(0, 1000000000 * xmmword_100022460);
                dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
                dispatch_resume(*(v4 + 40));
                v14 = *(v4 + 16);
              }

              *(v4 + 16) = v14 + 1;
              goto LABEL_11;
            }
          }

LABEL_9:
          if (sub_1000025EC(a2))
          {
            sub_1000024C8("_act_file", a1, a2);
LABEL_11:
            free(v11);
            return;
          }

          *(*(a2 + 24) + 76) = 0;
          if (*(v4 + 16))
          {
            sub_100003BB0(a2);
            if (v11)
            {
              goto LABEL_27;
            }
          }

          else
          {
            free(*(v4 + 32));
            *(v4 + 32) = 0;
            if (v11)
            {
LABEL_27:
              *(v4 + 32) = strdup(v11 + 16);
              *(v4 + 16) = 0;
              *(v4 + 20) = v12;
              *(v4 + 8) = v7;
              if (v19 >= 2)
              {
                v17 = write(*v4, v11, v19 - 1);
                if (v17)
                {
                  *(*(a2 + 24) + 184) += v17;
                }

                if (sub_1000033F8(a2, 0) == 1)
                {
                  asl_trigger_aslmanager();
                }
              }

              goto LABEL_11;
            }
          }

          *(v4 + 16) = 0;
          *(v4 + 20) = v12;
          *(v4 + 8) = v7;
          goto LABEL_11;
        }

        handler[5] = 0;
        asl_msg_lookup();
      }
    }
  }
}

void sub_100003BB0(uint64_t a1)
{
  v19 = time(0);
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(v2 + 192);
      if (v3)
      {
        free(*(v3 + 32));
        *(v3 + 32) = 0;
        if (*(v3 + 16))
        {
          dispatch_suspend(*(v3 + 40));
          *v21 = 0u;
          v22 = 0u;
          ctime_r(&v19, v21);
          BYTE3(v22) = 0;
          v20 = 0;
          v4 = *(v3 + 16);
          v5 = "s";
          if (v4 == 1)
          {
            v5 = &unk_100015555;
          }

          asprintf(&v20, "%s --- last message repeated %u time%s ---\n", &v21[4], v4, v5);
          *(v3 + 16) = 0;
          v6 = v20;
          *(v3 + 8) = v19;
          if (v6)
          {
            open = *v3;
            if ((*v3 & 0x80000000) != 0)
            {
              open = asl_out_dst_file_create_open(*(a1 + 24), 0);
              *v3 = open;
              v6 = v20;
            }

            v8 = strlen(v6);
            v9 = write(open, v6, v8);
            free(v20);
            if (v9 < 0 || v9 < v8)
            {
              v10 = *(*(a1 + 24) + 16);
              v11 = __error();
              strerror(*v11);
              sub_100005CC8("%s: error writing repeat message (%s): %s\n", v12, v13, v14, v15, v16, v17, v18, "asl_action");
            }
          }
        }
      }
    }
  }
}

void sub_100003D38(int *a1)
{
  if (a1)
  {
    notify_cancel(*a1);
  }

  free(a1);
}

uint64_t sub_100003D78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  asl_msg_fetch();
  result = 0;
  *(a2 + 2) = 0;
  return result;
}

void sub_100003E18(int a1)
{
  v2 = qword_100022418;
  if (!qword_100022418)
  {
LABEL_13:

    asl_out_module_free(0);
    return;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      break;
    }

LABEL_12:
    v2 = *(v2 + 24);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v4 = *(v3 + 8);
    if (v4 == 19 || v4 == 18)
    {
      break;
    }

    if (v4 == 17)
    {
      v5 = *(v3 + 32);
      if (v5)
      {
        if (*v5 == a1)
        {

          sub_100003EF0(v2, v3);
          return;
        }
      }
    }

LABEL_11:
    v3 = *(v3 + 40);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v3 + 32);
  if (!v6 || *v6 != a1)
  {
    goto LABEL_11;
  }

  v7 = sub_100003D78(v2, v3);

  free(v7);
}

uint64_t sub_100003EF0(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v3 = *a2;
  asl_msg_fetch();
  result = 0;
  *(a2 + 2) = 0;
  return result;
}

void sub_100003F88()
{
  v2 = time(0);
  if (!qword_100020070)
  {
    memset(&v3, 0, sizeof(v3));
    localtime_r(&v2, &v3);
    *&v3.tm_sec = 0;
    v3.tm_hour = 0;
    ++v3.tm_mday;
    v2 = mktime(&v3);
    when.tv_sec = v2;
    when.tv_nsec = 0;
    v0 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100020040);
    qword_100020070 = v0;
    v1 = dispatch_walltime(&when, 0);
    dispatch_source_set_timer(v0, v1, 0x4E94914F0000uLL, 0);
    dispatch_source_set_event_handler(qword_100020070, &stru_10001CC38);
    dispatch_resume(qword_100020070);
  }
}

void sub_100004068(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    atomic_fetch_add_explicit(&xmmword_100022388 + 3, 1u, memory_order_relaxed);
    asl_msg_retain();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_10000410C;
    v4[3] = &unk_10001CC58;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_async(qword_100020078, v4);
  }
}

uint64_t sub_10000410C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 32))
  {
    v123 = time(0);
    v9 = qword_100020088;
    if (!qword_100020088)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_121;
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *v9;
      if (!v12)
      {
        goto LABEL_111;
      }

      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = *(*(v9 + 6) + 4 * v13);
          if (v15 == -1)
          {
            goto LABEL_22;
          }

          if (v14 != 1 || v15 < 0)
          {
            break;
          }

          ++v13;
          v14 = 1;
          if (v13 >= v12)
          {
            goto LABEL_29;
          }
        }

        if (v14 || v15 != -2)
        {
          val_for_key = asl_msg_get_val_for_key();
          v17 = *(*(v9 + 4) + 8 * v13);
          if (*v17 == 42 && !*(v17 + 1) || (v3 = *(*(v9 + 5) + 4 * v13), v3) && !strncasecmp(*(*(v9 + 4) + 8 * v13), val_for_key, v3) || val_for_key && !strcasecmp(v17, val_for_key))
          {
            if (*(*(v9 + 6) + 4 * v13) == -2)
            {
              v14 = 0;
            }

            else
            {
              v18 = asl_msg_get_val_for_key();
              if (v18)
              {
                v19 = atoi(v18);
                if ((v19 & 0x80000000) == 0 && v19 <= *(*(v9 + 6) + 4 * v13))
                {
                  v14 = 1;
                }
              }
            }
          }
        }

        else
        {
          v14 = 0;
        }

LABEL_22:
        ++v13;
        v12 = *v9;
      }

      while (v13 < v12);
      if (!v14)
      {
        goto LABEL_111;
      }

LABEL_29:
      v126 = 0;
      v125 = 0;
      if (v9[4] != -1)
      {
        goto LABEL_63;
      }

      v127 = 0;
      v20 = *(v9 + 1);
      v21 = *v20;
      if (v21 > 0x2E)
      {
        if (v21 != 64)
        {
          if (v21 != 47)
          {
            goto LABEL_42;
          }

          v22 = open(v20, 131593, 420);
          v9[4] = v22;
          if (v22 < 0)
          {
            v28 = *(v9 + 1);
            v29 = __error();
            strerror(*v29);
            sub_100005CC8("%s: open failed for file: %s (%s)\n", v30, v31, v32, v33, v34, v35, v36, "bsd_out");
            goto LABEL_63;
          }

          v9[5] = 1;
          if (!strcmp(*(v9 + 1), "/dev/console"))
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

LABEL_41:
          v9[5] = v23;
          goto LABEL_63;
        }

        v24 = strdup(v20 + 1);
        if (!v24)
        {
          goto LABEL_63;
        }

        v25 = v24;
        v26 = strrchr(v24, 58);
        if (v26)
        {
          *v26 = 0;
          v27 = v26 + 1;
        }

        else
        {
          v27 = "syslog";
        }

        memset(&v128, 0, sizeof(v128));
        v128.ai_socktype = 2;
        v37 = getaddrinfo(v25, v27, &v128, &v127);
        free(v25);
        if (v37)
        {
          gai_strerror(v37);
          sub_100005CC8("%s: getaddrinfo failed for node %s service %s: (%s)\n", v38, v39, v40, v41, v42, v43, v44, "bsd_out");
          goto LABEL_63;
        }

        v45 = v127;
        if (v127)
        {
          while (1)
          {
            v46 = socket(v45->ai_family, v45->ai_socktype, v45->ai_protocol);
            v9[4] = v46;
            if ((v46 & 0x80000000) == 0)
            {
              break;
            }

            v45 = v45->ai_next;
            if (!v45)
            {
              goto LABEL_57;
            }
          }

          v47 = malloc_type_malloc(v45->ai_addrlen, 0x1000040451B5BE8uLL);
          *(v9 + 3) = v47;
          if (!v47)
          {
            goto LABEL_63;
          }

          memcpy(v47, v45->ai_addr, v45->ai_addrlen);
        }

LABEL_57:
        freeaddrinfo(v127);
        v55 = v9[4];
        if (v55 < 0)
        {
          v120 = *(v9 + 1) + 1;
          sub_100005CC8("%s: connection failed for %s\n", v48, v49, v50, v51, v52, v53, v54, "bsd_out");
        }

        else
        {
          if ((fcntl(v55, 4, 4) & 0x80000000) == 0)
          {
            v23 = 3;
            goto LABEL_41;
          }

          close(v9[4]);
          v9[4] = -1;
          v56 = __error();
          strerror(*v56);
          sub_100005CC8("%s: couldn't set O_NONBLOCK for fd %d: %s\n", v57, v58, v59, v60, v61, v62, v63, "bsd_out");
        }

        free(*(v9 + 3));
        *(v9 + 3) = 0;
        goto LABEL_63;
      }

      if (v21 == 33)
      {
        *(v9 + 2) = 0x5FFFFFFFFLL;
      }

      else
      {
        if (v21 == 42 && !v20[1])
        {
          *(v9 + 2) = 0x4FFFFFFFFLL;
          goto LABEL_63;
        }

LABEL_42:
        v119 = *(v9 + 1);
        sub_100005CC8("%s: unsupported / unknown output name: %s\n", v2, v3, v4, v5, v6, v7, v8, "bsd_out");
      }

LABEL_63:
      if (v9[5] == 5)
      {
        notify_post((*(v9 + 1) + 1));
        goto LABEL_111;
      }

      if (v11 || (v11 = asl_format_message()) != 0)
      {
        if (xmmword_100022460 && *(v9 + 10))
        {
          strlen(v11 + 16);
          v64 = asl_core_string_hash();
          if (v9[14] != v64 || strcmp(*(v9 + 10), v11 + 16))
          {
            v65 = 0;
            goto LABEL_73;
          }

          v106 = v123 - *(v9 + 8);
          v65 = v106 < xmmword_100022460;
          v66 = v106 >= xmmword_100022460;
        }

        else
        {
          v65 = 0;
          v64 = 0;
LABEL_73:
          v66 = 1;
        }

        v67 = v9[5];
        if (v10)
        {
LABEL_75:
          if (v67 == 3)
          {
            v68 = *(v9 + 3);
            if (v68)
            {
              v69 = strlen(v10);
              if ((sendto(v9[4], v10, v69, 0, v68, v68->sa_len) & 0x80000000) != 0)
              {
                v70 = (v9 + 2);
                v71 = "%s: error sending message (%s): %s\n";
                goto LABEL_79;
              }
            }

            goto LABEL_108;
          }

LABEL_84:
          v83 = strlen(v11);
          if (v67 - 1 > 1)
          {
            goto LABEL_108;
          }

          v84 = v83;
          v85 = !v66;
          if (v67 != 1)
          {
            v85 = 1;
          }

          if ((v85 & 1) == 0 && v9[15])
          {
            sub_100005178(v9);
          }

          v86 = asl_msg_get_val_for_key();
          if (!v86)
          {
            v88 = v9[5];
            goto LABEL_95;
          }

          v87 = strcmp(v86, "kern");
          v88 = v9[5];
          if (v87 || (v89 = v84, v88 != 2))
          {
LABEL_95:
            v90 = v88 == 1;
            v91 = !v65;
            if (!v90)
            {
              v91 = 1;
            }

            if (v91)
            {
              v89 = write(v9[4], v11, v84);
            }

            else
            {
              if (!*(v9 + 9))
              {
                v92 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100020078);
                *(v9 + 9) = v92;
                handler[0] = _NSConcreteStackBlock;
                handler[1] = 0x40000000;
                handler[2] = sub_100005340;
                handler[3] = &unk_10001CD78;
                handler[4] = v9;
                dispatch_source_set_event_handler(v92, handler);
              }

              v89 = v84;
              if (!v9[15])
              {
                v93 = *(v9 + 9);
                v94 = dispatch_time(0, 1000000000 * xmmword_100022460);
                dispatch_source_set_timer(v93, v94, 0xFFFFFFFFFFFFFFFFLL, 0);
                dispatch_resume(*(v9 + 9));
                v89 = v84;
              }
            }
          }

          if ((v89 & 0x80000000) == 0 && (v89 & 0x7FFFFFFFu) >= v84)
          {
            goto LABEL_108;
          }

          v70 = (v9 + 2);
          v95 = *(v9 + 1);
          v96 = __error();
          v121 = strerror(*v96);
          sub_100005CC8("%s: error writing message (%s): %s\n", v97, v98, v99, v100, v101, v102, v103, "bsd_out");
          close(v9[4]);
          v104 = open(*(v9 + 1), 131593, 420, v95, v121);
          v9[4] = v104;
          if (v104 < 0)
          {
            v108 = *v70;
            v109 = __error();
            strerror(*v109);
            sub_100005CC8("%s: re-open failed for file: %s (%s)\n", v110, v111, v112, v113, v114, v115, v116, "bsd_out");
          }

          else
          {
            v105 = write(v104, v11, v84);
            if (v105 < 0)
            {
              v71 = "%s: error re-writing message (%s): %s\n";
            }

            else
            {
              v71 = "%s: error re-writing message (%s): %s\n";
              if ((v105 & 0x7FFFFFFFu) >= v84)
              {
                goto LABEL_108;
              }
            }

LABEL_79:
            v72 = *v70;
            v73 = __error();
            strerror(*v73);
            sub_100005CC8(v71, v74, v75, v76, v77, v78, v79, v80, "bsd_out");
LABEL_108:
            if (v65)
            {
              ++v9[15];
            }

            else
            {
              free(*(v9 + 10));
              *(v9 + 10) = 0;
              *(v9 + 10) = strdup(v11 + 16);
              v9[14] = v64;
              v9[15] = 0;
              *(v9 + 8) = v123;
            }
          }
        }

        else
        {
          if (v67 != 3)
          {
            v10 = 0;
            goto LABEL_84;
          }

          v81 = asl_msg_get_val_for_key();
          if (v81)
          {
            v82 = atoi(v81);
          }

          else
          {
            v82 = 7;
          }

          asl_msg_get_val_for_key();
          v107 = asl_syslog_faciliy_name_to_num();
          v126 = 0;
          asprintf(&v126, "<%d>%s", v107 & ~(v107 >> 31) | v82, v11);
          v10 = v126;
          if (v126)
          {
            v67 = v9[5];
            goto LABEL_75;
          }
        }
      }

LABEL_111:
      v9 = *(v9 + 11);
      if (!v9)
      {
LABEL_121:
        free(v11);
        free(v10);
        v1 = a1;
        v117 = *(a1 + 32);
        break;
      }
    }
  }

  result = asl_msg_release();
  atomic_fetch_add_explicit(&xmmword_100022388, -*(v1 + 40), memory_order_relaxed);
  atomic_fetch_add_explicit(&xmmword_100022388 + 3, 0xFFFFFFFF, memory_order_relaxed);
  return result;
}

uint64_t sub_100004978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005CC8("%s: init\n", a2, a3, a4, a5, a6, a7, a8, "bsd_out");
  qword_100020088 = 0;
  qword_100020090 = &qword_100020088;
  v8 = fopen("/etc/syslog.conf", "r");
  if (v8)
  {
    v9 = v8;
    line_from_file = get_line_from_file(v8);
    if (line_from_file)
    {
      v11 = line_from_file;
      v50 = v9;
      do
      {
        for (i = v11; ; ++i)
        {
          v13 = *i;
          if (v13 != 9 && v13 != 32)
          {
            break;
          }
        }

        if (v13 != 35)
        {
          v51 = explode(i, "; \t");
          if (v51)
          {
            v14 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B004011DEFA78uLL);
            if (v14)
            {
              v15 = v14;
              v16 = -1;
              v14[4] = -1;
              v17 = *v51;
              if (*v51)
              {
                v18 = 0;
                do
                {
                  if (*v17)
                  {
                    v16 = v18;
                  }

                  v17 = *&v51[8 * v18++ + 8];
                }

                while (v17);
              }

              v19 = strdup(*&v51[8 * v16]);
              *(v15 + 1) = v19;
              if (v19)
              {
                v20 = v51;
                if (v16 >= 1)
                {
                  v21 = 0;
                  v48 = v16;
                  do
                  {
                    v22 = v20[v21];
                    if (*v22)
                    {
                      v23 = explode(v22, ",.");
                      v24 = v23;
                      v25 = *v23;
                      if (*v23)
                      {
                        v26 = 0;
                        LODWORD(v27) = -1;
                        do
                        {
                          if (*v25)
                          {
                            v27 = v26;
                          }

                          else
                          {
                            v27 = v27;
                          }

                          v25 = *&v23[8 * v26++ + 8];
                        }

                        while (v25);
                        if (v27 >= 1)
                        {
                          v28 = v23;
                          v29 = v27;
                          v49 = v23;
                          do
                          {
                            if (!**v28)
                            {
                              goto LABEL_67;
                            }

                            v30 = v24[v27];
                            if (!v30)
                            {
                              goto LABEL_67;
                            }

                            if (!strcasecmp(v24[v27], "emerg") || !strcasecmp(v30, "panic"))
                            {
                              v31 = 0;
                            }

                            else if (!strcasecmp(v30, "alert"))
                            {
                              v31 = 1;
                            }

                            else if (!strcasecmp(v30, "crit"))
                            {
                              v31 = 2;
                            }

                            else if (!strcasecmp(v30, "err") || !strcasecmp(v30, "error"))
                            {
                              v31 = 3;
                            }

                            else if (!strcasecmp(v30, "warn") || !strcasecmp(v30, "warning"))
                            {
                              v31 = 4;
                            }

                            else if (!strcasecmp(v30, "notice"))
                            {
                              v31 = 5;
                            }

                            else if (!strcasecmp(v30, "info"))
                            {
                              v31 = 6;
                            }

                            else if (!strcasecmp(v30, "debug") || *v30 == 42 && !v30[1])
                            {
                              v31 = 7;
                            }

                            else
                            {
                              if (strcasecmp(v30, "none"))
                              {
                                goto LABEL_67;
                              }

                              v31 = -2;
                            }

                            if (*v15)
                            {
                              *(v15 + 4) = reallocf(*(v15 + 4), 8 * (*v15 + 1));
                              *(v15 + 5) = reallocf(*(v15 + 5), 4 * (*v15 + 1));
                              v32 = reallocf(*(v15 + 6), 4 * (*v15 + 1));
                            }

                            else
                            {
                              *(v15 + 4) = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
                              *(v15 + 5) = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
                              v32 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
                            }

                            *(v15 + 6) = v32;
                            if (!*(v15 + 4) || !v32 || !*(v15 + 5))
                            {
                              goto LABEL_79;
                            }

                            v33 = *v28;
                            if (*v28 && (v34 = strlen(*v28), (v35 = v34) != 0))
                            {
                              v36 = *v33;
                              if (v36 == 39 || v36 == 34)
                              {
                                if ((++v33)[v34 - 2] == v36)
                                {
                                  v37 = -2;
                                }

                                else
                                {
                                  v37 = -1;
                                }

                                v35 = v37 + v34;
                              }

                              v38 = malloc_type_calloc(1uLL, v35 + 1, 0x68E6F8B2uLL);
                              v39 = v38;
                              if (v38)
                              {
                                memcpy(v38, v33, v35);
                              }
                            }

                            else
                            {
                              v39 = 0;
                            }

                            v40 = *v15;
                            *(*(v15 + 4) + 8 * v40) = v39;
                            v41 = *(v15 + 4);
                            if (!*(v41 + 8 * v40))
                            {
                              goto LABEL_79;
                            }

                            v42 = *(v15 + 5);
                            *(v42 + 4 * v40) = 0;
                            v43 = *v15;
                            v44 = *(v41 + 8 * v43);
                            v45 = strchr(v44, 42);
                            if (v45)
                            {
                              *(v42 + 4 * v43) = v45 - v44;
                              v43 = *v15;
                            }

                            *(*(v15 + 6) + 4 * v43) = v31;
                            ++*v15;
                            v24 = v49;
LABEL_67:
                            ++v28;
                            --v29;
                          }

                          while (v29);
                        }
                      }

                      free_string_list(v24);
                      v20 = v51;
                    }

                    ++v21;
                  }

                  while (v21 != v48);
                }

                free_string_list(v20);
                *(v15 + 11) = 0;
                v46 = qword_100020090;
                *(v15 + 12) = qword_100020090;
                *v46 = v15;
                qword_100020090 = (v15 + 22);
              }
            }
          }
        }

LABEL_79:
        free(v11);
        v9 = v50;
        v11 = get_line_from_file(v50);
      }

      while (v11);
    }

    fclose(v9);
  }

  if (qword_100020080 != -1)
  {
    sub_100013A0C();
  }

  return 0;
}

void sub_100004EA0(id a1)
{
  qword_100020078 = dispatch_queue_create("BSD Out Queue", 0);
  qword_100020098 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100020078);
  dispatch_source_set_event_handler(qword_100020098, &stru_10001CCD8);
  v1 = qword_100020098;
  v2 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(v1, v2, 0x45D964B800uLL, 0);
  v3 = qword_100020098;

  dispatch_resume(v3);
}

void sub_100004F4C(id a1)
{
  v1 = time(0);
  v2 = qword_100020088;
  if (qword_100020088)
  {
    v3 = v1;
    do
    {
      if (*(v2 + 20) == 1 && !*(v2 + 60) && (v3 - *(v2 + 64)) >= 0x12D)
      {
        v4 = *(v2 + 24);
        if (!v4 || (free(v4), *(v2 + 24) = 0, v5 = *(v2 + 20), (v5 - 1) < 2) || v5 == 3)
        {
          v6 = *(v2 + 16);
          if ((v6 & 0x80000000) == 0)
          {
            close(v6);
          }

          *(v2 + 16) = -1;
        }
      }

      v2 = *(v2 + 88);
    }

    while (v2);
  }
}

void sub_100005024()
{
  v0 = qword_100020088;
  if (qword_100020088)
  {
    do
    {
      v1 = *(v0 + 11);
      v2 = *(v0 + 9);
      if (v2)
      {
        if (v0[15])
        {
          sub_100005178(v0);
          v2 = *(v0 + 9);
        }

        dispatch_source_cancel(v2);
        dispatch_resume(*(v0 + 9));
        dispatch_release(*(v0 + 9));
      }

      free(*(v0 + 1));
      free(*(v0 + 3));
      free(*(v0 + 10));
      free(*(v0 + 5));
      free(*(v0 + 6));
      v3 = v0[4];
      if ((v3 & 0x80000000) == 0)
      {
        close(v3);
      }

      v4 = *(v0 + 4);
      if (v4)
      {
        if (*v0)
        {
          v5 = 0;
          do
          {
            free(*(*(v0 + 4) + 8 * v5++));
          }

          while (v5 < *v0);
          v4 = *(v0 + 4);
        }

        free(v4);
      }

      v6 = *(v0 + 11);
      v7 = *(v0 + 12);
      v8 = (v6 + 96);
      if (!v6)
      {
        v8 = &qword_100020090;
      }

      *v8 = v7;
      *v7 = v6;
      free(v0);
      v0 = v1;
    }

    while (v1);
  }
}

void sub_100005150(id a1)
{
  sub_100005024();

  sub_100004978(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_100005178(uint64_t a1)
{
  if (a1 && *(a1 + 20) == 1 && *(a1 + 60))
  {
    dispatch_suspend(*(a1 + 72));
    v28 = time(0);
    *v30 = 0u;
    v31 = 0u;
    ctime_r(&v28, v30);
    BYTE3(v31) = 0;
    __s = 0;
    v2 = *(a1 + 60);
    v3 = "s";
    if (v2 == 1)
    {
      v3 = &unk_100015555;
    }

    asprintf(&__s, "%s: --- last message repeated %u time%s ---\n", &v30[4], v2, v3);
    *(a1 + 60) = 0;
    if (__s)
    {
      v4 = strlen(__s);
      v5 = write(*(a1 + 16), __s, v4);
      if ((v5 & 0x80000000) == 0 && v5 >= v4)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 8);
      v7 = __error();
      v27 = strerror(*v7);
      sub_100005CC8("%s: error writing repeat message (%s): %s\n", v8, v9, v10, v11, v12, v13, v14, "bsd_out");
      close(*(a1 + 16));
      v15 = open(*(a1 + 8), 131593, 420, v6, v27);
      *(a1 + 16) = v15;
      if (v15 < 0)
      {
        v17 = "%s: re-open failed for file: %s (%s)\n";
      }

      else
      {
        v16 = write(v15, __s, v4);
        v17 = "%s: error re-writing message (%s): %s\n";
        if ((v16 & 0x80000000) == 0 && v16 >= v4)
        {
          goto LABEL_15;
        }
      }

      v18 = *(a1 + 8);
      v19 = __error();
      strerror(*v19);
      sub_100005CC8(v17, v20, v21, v22, v23, v24, v25, v26, "bsd_out");
LABEL_15:
      free(__s);
    }
  }
}

uint64_t sub_100005348()
{
  _os_nospin_lock_lock();
  ++dword_10002234C;

  return _os_nospin_lock_unlock();
}

uint64_t sub_10000539C()
{
  _os_nospin_lock_lock();
  if (dword_10002234C >= 1)
  {
    --dword_10002234C;
  }

  return _os_nospin_lock_unlock();
}

uint64_t sub_1000053EC()
{
  _os_nospin_lock_lock();
  dword_10002237C = getpid();
  DWORD2(xmmword_100022428) = 0;
  free(qword_100022438);
  qword_100022438 = 0;
  LODWORD(xmmword_100022408) = 1;
  xmmword_100022448 = xmmword_1000149E0;
  qword_100022458 = 0x1388000001F4;
  xmmword_100022460 = xmmword_1000149F0;
  qword_100022480 = 3072000;
  xmmword_100022470 = xmmword_100014A00;
  qword_100022418 = asl_out_module_init();
  result = _os_nospin_lock_unlock();
  if (qword_100022418)
  {
    for (i = *(qword_100022418 + 16); i; i = *(i + 40))
    {
      if (*(i + 8) == 1 && !*i)
      {
        v2 = *(i + 16);
        result = strncmp(v2, "debug", 5uLL);
        if (!result)
        {
          result = sub_1000054EC(v2, 1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000054EC(char *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (*a1)
  {
    if (v2 == 61)
    {
      ++a1;
    }

    while (1)
    {
      v4 = *a1;
      if (v4 != 32 && v4 != 9)
      {
        break;
      }

      ++a1;
    }

    v6 = explode(a1, " \t");
    if (v6)
    {
      v7 = v6;
      v8 = -4;
      do
      {
        v9 = v6[v8 + 4];
        ++v8;
      }

      while (v9);
      if (v8 == -3)
      {
        goto LABEL_17;
      }

      v10 = *v6;
      if (strcasecmp(*v6, "debug"))
      {
        if (v8 == -2)
        {
LABEL_17:
          v2 = 0xFFFFFFFFLL;
LABEL_91:
          free_string_list(v7);
          return v2;
        }

        if (!strcasecmp(v10, "hostname"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v22 = strdup(v7[1]);
          }

          else
          {
            free(qword_100022440);
            v22 = 0;
          }

          qword_100022440 = v22;
        }

        else if (!strcasecmp(v10, "mark_time"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v23 = atoll(v7[1]);
          }

          else
          {
            v23 = 0;
          }

          *(&xmmword_100022460 + 1) = v23;
        }

        else if (!strcasecmp(v10, "dup_delay"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v24 = atoll(v7[1]);
          }

          else
          {
            v24 = 30;
          }

          *&xmmword_100022460 = v24;
        }

        else if (!strcasecmp(v10, "remote_delay"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v25 = atol(v7[1]);
          }

          else
          {
            v25 = 5000;
          }

          HIDWORD(qword_100022458) = v25;
        }

        else if (!strcasecmp(v10, "utmp_ttl"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v26 = atoll(v7[1]);
          }

          else
          {
            v26 = 31622400;
          }

          *&xmmword_100022470 = v26;
        }

        else if (!strcasecmp(v10, "mps_limit"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v27 = atol(v7[1]);
          }

          else
          {
            v27 = 500;
          }

          LODWORD(qword_100022458) = v27;
        }

        else if (!strcasecmp(v10, "memory_max"))
        {
          _os_nospin_lock_lock();
          if (a2)
          {
            v28 = atoll(v7[1]);
          }

          else
          {
            v28 = 3072000;
          }

          qword_100022480 = v28;
        }

        else
        {
          if (strcasecmp(v10, "stats_interval"))
          {
            if (!strcasecmp(v10, "max_file_size"))
            {
              pthread_mutex_lock(qword_100022398);
              if (xmmword_100022448)
              {
                asl_store_close();
                *&xmmword_1000223E8 = 0;
                if (a2)
                {
                  v30 = atoi(v7[1]);
                }

                else
                {
                  v30 = 25600000;
                }

                DWORD1(xmmword_100022448) = v30;
              }

              pthread_mutex_unlock(qword_100022398);
              goto LABEL_90;
            }

            if (!strcasecmp(v10, "db") || !strcasecmp(v10, "database") || !strcasecmp(v10, "datastore"))
            {
              if (!a2)
              {
                v32 = 2;
                v33 = 25600000;
                v34 = 256;
                v35 = 1024000;
LABEL_122:
                sub_10000C25C(v32, v33, v34, v35);
                goto LABEL_90;
              }

              v13 = v8;
              v14 = v8 + 3;
              v15 = v7[1];
              if (*v15 - 48 > 9)
              {
                if (strcasecmp(v7[1], "file"))
                {
                  if (strncasecmp(v15, "mem", 3uLL))
                  {
                    goto LABEL_17;
                  }

                  if (v14 < 3 || (v36 = v7[2], *v36 == 45) && !v36[1])
                  {
                    v20 = 0;
                    v13 = 0;
                  }

                  else
                  {
                    v13 = atoi(v36);
                    v20 = 0;
                  }

                  v16 = 2;
                  goto LABEL_114;
                }

                if (v14 < 3 || (v37 = v7[2], *v37 == 45) && !v37[1])
                {
                  v20 = 0;
                  v13 = 0;
                  v16 = 1;
                  goto LABEL_114;
                }

                v38 = atoi(v37);
                v13 = 0;
                v20 = 0;
                v16 = 1;
                goto LABEL_113;
              }

              v16 = atoi(v7[1]);
              if (v14 < 3)
              {
                v20 = 0;
                v13 = 0;
                goto LABEL_114;
              }

              v17 = v7[2];
              if (*v17 == 45 && !v17[1])
              {
                v38 = 0;
                if (!v13)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v38 = atoi(v17);
                if (!v13)
                {
                  goto LABEL_112;
                }
              }

              v18 = v7[3];
              if (*v18 == 45 && !v18[1])
              {
                v13 = 0;
              }

              else
              {
                v13 = atoi(v18);
              }

              if (v14 >= 5)
              {
                v19 = v7[4];
                if (*v19 != 45 || v19[1])
                {
                  v20 = atoi(v19);
                  goto LABEL_113;
                }
              }

LABEL_112:
              v20 = 0;
LABEL_113:
              v33 = v38;
              if (v38)
              {
LABEL_115:
                if (v13)
                {
                  v34 = v13;
                }

                else
                {
                  v34 = DWORD2(xmmword_100022448);
                }

                if (v20)
                {
                  v35 = v20;
                }

                else
                {
                  v35 = HIDWORD(xmmword_100022448);
                }

                v32 = v16;
                goto LABEL_122;
              }

LABEL_114:
              v33 = DWORD1(xmmword_100022448);
              goto LABEL_115;
            }

LABEL_90:
            v2 = 0;
            goto LABEL_91;
          }

          _os_nospin_lock_lock();
          if (a2)
          {
            v29 = atoll(v7[1]);
          }

          else
          {
            v29 = 600;
          }

          *(&xmmword_100022470 + 1) = v29;
        }

        _os_nospin_lock_unlock();
        goto LABEL_90;
      }

      if (v8 == -2)
      {
        v11 = a2;
        v12 = 0;
LABEL_56:
        sub_10000C1E4(v11, v12);
        goto LABEL_90;
      }

      v12 = v7[1];
      v21 = *v12;
      if (v21 == 49)
      {
        if (!v12[1])
        {
          v12 = v7[2];
          v11 = 1;
          goto LABEL_56;
        }
      }

      else if (v21 == 48 && !v12[1])
      {
        v12 = v7[2];
        v11 = 0;
        goto LABEL_56;
      }

      v11 = a2;
      goto LABEL_56;
    }

    return 0xFFFFFFFFLL;
  }

  return v2;
}

void sub_100005A9C(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = asl_check_option(a1, "control");
    v12 = v4 != 0;
    if (v4 || byte_1000200A4 != 1)
    {
      goto LABEL_6;
    }

    if (xmmword_100022388 < qword_100022480 / 2)
    {
      sub_100005CC8("Work queue re-enabled at 1/2 max.  size %lld  max %lld\n", v5, v6, v7, v8, v9, v10, v11, xmmword_100022388);
      byte_1000200A4 = 0;
LABEL_6:
      v13 = os_transaction_create();
      v14 = 0;
      v15 = v3;
      do
      {
        v16 = *(v15 + 16);
        v15 = *(v15 + 24);
        v14 += v16;
      }

      while (v15);
      if ((xmmword_100022388 + v14) >= qword_100022480)
      {
        byte_1000200A4 = 1;
        asl_msg_release();
        sub_100005CC8("Work queue disabled.  msize %lld  size %lld  max %lld\n", v17, v18, v19, v20, v21, v22, v23, v14);
        snprintf(__str, 0x100uLL, "[Sender syslogd] [Level 2] [PID %u] [Message Internal memory size limit %lld exceeded - dropping messages] [UID 0] [UID 0] [Facility syslog]", dword_10002237C, qword_100022480);
        v3 = asl_msg_from_string();
      }

      atomic_fetch_add_explicit(&xmmword_100022388, v14, memory_order_relaxed);
      atomic_fetch_add_explicit(&dword_100022380, 1u, memory_order_relaxed);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100005DAC;
      block[3] = &unk_10001CDD8;
      v26 = a2;
      v27 = v12;
      block[4] = v3;
      block[5] = v14;
      block[6] = v13;
      dispatch_async(qword_1000223D0, block);
      return;
    }

    sub_100005CC8("Work queue draining: dropped message.\n", v5, v6, v7, v8, v9, v10, v11, v24);

    asl_msg_release();
  }
}

uint64_t sub_100005CC8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (DWORD2(xmmword_100022428))
  {
    v10 = qword_100022438 ? qword_100022438 : "/var/log/syslogd.log";
    v11 = fopen(v10, "a");
    if (v11)
    {
      v12 = v11;
      fprintf(v11, "W %d %llu", dword_100022380, xmmword_100022388);
      if (*(&xmmword_1000223E8 + 1))
      {
        fprintf(v12, "   M %u %u %lu", *(*(&xmmword_1000223E8 + 1) + 28), *(*(&xmmword_1000223E8 + 1) + 24), *(*(&xmmword_1000223E8 + 1) + 48));
      }

      fwrite(" ; ", 3uLL, 1uLL, v12);
      vfprintf(v12, a1, &a9);
      fclose(v12);
    }
  }

  return 0;
}

void sub_100005DAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_65;
  }

  v3 = *(a1 + 56);
  v4 = time(0);
  val_for_key = asl_msg_get_val_for_key();
  if (val_for_key)
  {
    v6 = atoi(val_for_key);
    if (v6 == 1)
    {
      v7 = asl_msg_get_val_for_key();
      if (v7)
      {
        v8 = atoi(v7);
      }

      else
      {
        v8 = 1;
      }

      v9 = asl_msg_get_val_for_key();
    }

    else
    {
      v8 = v6;
      v9 = 0;
    }
  }

  else
  {
    asl_msg_set_key_val();
    v9 = 0;
    v8 = 0;
  }

  memset(out, 0, 37);
  *uu = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v10 = asl_msg_get_val_for_key();
  if (v3 == 4)
  {
    v11 = 5;
  }

  else
  {
    v11 = 7;
  }

  if (v10 && !v10[1] && (*v10 & 0xF8) == 0x30)
  {
    v11 = (*v10 - 48);
  }

  snprintf(__str, 0x40uLL, "%d", v11);
  asl_msg_set_key_val();
  if (!v8 && qword_100022458 && !HIDWORD(xmmword_100022368))
  {
    if (qword_1000200A8 == v4)
    {
      v12 = dword_1000200B4;
    }

    else
    {
      dword_1000200B0 = qword_100022458;
      v12 = 7;
      dword_1000200B4 = 7;
      qword_1000200A8 = v4;
    }

    if (v12 > v11)
    {
      dword_1000200B4 = v11;
    }

    v14 = dword_1000200B0;
    if (dword_1000200B0 >= 1)
    {
      --dword_1000200B0;
      if (v14 != 1)
      {
LABEL_34:
        v13 = v11;
        goto LABEL_35;
      }

LABEL_32:
      dword_1000200B0 = -1;
      v80[0] = 0;
      asprintf(v80, "*** kernel exceeded %d log message per second limit  -  remaining messages this second discarded ***", qword_100022458);
      if (v80[0])
      {
        asl_msg_set_key_val();
        free(v80[0]);
        v79[0] = dword_1000200B4 + 48;
        v79[1] = 0;
        asl_msg_set_key_val();
      }

      goto LABEL_34;
    }

    if ((dword_1000200B0 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_65:
    atomic_fetch_add_explicit(&xmmword_100022388, -*(a1 + 40), memory_order_relaxed);
    goto LABEL_160;
  }

  v13 = v11;
  if (v8)
  {
    uuid_clear(uu);
    if (proc_pidinfo(v8, 17, 1uLL, uu, 56) == 56)
    {
      uuid_unparse(uu, out);
      asl_msg_set_key_val();
    }
  }

LABEL_35:
  if (!asl_msg_get_val_for_key() || ((v15 = asl_core_parse_time(), v15 >= v4) ? (v16 = v4) : (v16 = v15), !v15))
  {
    v16 = v4;
  }

  snprintf(__str, 0x3FuLL, "%llu", v16);
  asl_msg_set_key_val();
  if (!asl_msg_get_val_for_key())
  {
    if (!qword_100022440)
    {
      if (qword_1000200B8 != -1)
      {
        sub_100013A20();
      }

      LODWORD(v80[0]) = 1;
      if (dword_100020028 < 0 || (v25 = notify_check(dword_100020028, v80), v25 | LODWORD(v80[0])))
      {
        if (gethostname(&qword_1000200C0, 0x100uLL) < 0)
        {
          strcpy(&qword_1000200C0, "localhost");
        }

        else
        {
          v27 = strchr(&qword_1000200C0, 46);
          if (v27)
          {
            *v27 = 0;
          }
        }
      }
    }

    asl_msg_set_key_val();
  }

  v71 = v4;
  v17 = asl_msg_get_val_for_key();
  if (!v17)
  {
LABEL_48:
    asl_msg_set_key_val();
    v19 = -2;
    goto LABEL_49;
  }

  v18 = v17;
  v19 = atoi(v17);
  if (!v19)
  {
    if (*v18 == 48 && !v18[1])
    {
      v19 = 0;
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_49:
  v20 = v9;
  v21 = asl_msg_get_val_for_key();
  if (!v21)
  {
    goto LABEL_53;
  }

  v22 = v21;
  v23 = atoi(v21);
  if (v23)
  {
    goto LABEL_54;
  }

  if (*v22 == 48 && !v22[1])
  {
    v23 = 0;
  }

  else
  {
LABEL_53:
    asl_msg_set_key_val();
    v23 = -2;
  }

LABEL_54:
  if ((v3 - 5) >= 2)
  {
    if (v3 == 4 || v3 == 1)
    {
      asl_msg_set_key_val();
      v19 = 0;
LABEL_58:
      asl_msg_set_key_val();
      goto LABEL_59;
    }

    if (!v19)
    {
      asl_msg_set_key_val();
      v19 = -2;
    }

    if (v23 == 80 || !v23)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v24 = v20;
  if (!v20)
  {
    v24 = asl_msg_get_val_for_key();
    if (!v24)
    {
      if (v3 == 4)
      {
        v26 = "kernel";
      }

      else
      {
        if (v3 != 1)
        {
LABEL_79:
          v24 = 0;
LABEL_85:
          asl_msg_set_key_val();
          goto LABEL_86;
        }

        v26 = "syslogd";
      }

      v24 = v26;
      goto LABEL_85;
    }
  }

  if (v3 != 4 && v19 && !strcmp(v24, "kernel"))
  {
    goto LABEL_79;
  }

LABEL_86:
  v28 = asl_msg_get_val_for_key();
  if (!v28)
  {
    if (v3 == 4)
    {
      v29 = "kern";
    }

    else
    {
      v29 = "user";
    }

    goto LABEL_99;
  }

  v29 = v28;
  if (*v28 == 35)
  {
    v30 = v28 + 1;
    v31 = *(v29 + 1);
    if ((v31 - 48) <= 9 && !(8 * atoi(v30)) && v31 == 48)
    {
      v32 = v29[2] != 0;
    }

    v29 = asl_syslog_faciliy_num_to_name();
    goto LABEL_99;
  }

  v33 = strncmp(v28, "com.apple.system", 0x10uLL);
  if (v19 && !v33)
  {
LABEL_99:
    asl_msg_set_key_val();
  }

  if (v3 == 4)
  {
    asl_msg_set_key_val();
LABEL_103:
    asl_msg_set_key_val();
    goto LABEL_104;
  }

  v34 = v24;
  v35 = asl_msg_get_val_for_key();
  v36 = v35 | asl_msg_get_val_for_key();
  v24 = v34;
  if (!v36)
  {
    goto LABEL_103;
  }

LABEL_104:
  if (!strcmp(v29, "com.apple.system.utmpx") || !strcmp(v29, "com.apple.system.lastlog"))
  {
    snprintf(__str, 0x40uLL, "%llu", xmmword_100022470 + v16);
    asl_msg_set_key_val();
  }

  if (v3 == 4)
  {
    v37 = v13;
    if (v13 <= 3)
    {
      sub_100007EC8(v2);
      goto LABEL_112;
    }
  }

  if (v3 != 1)
  {
    v37 = -1;
LABEL_112:
    if (*(&xmmword_100022470 + 1))
    {
      v38 = xmmword_100022428;
      if (v71 - qword_100022420 >= *(&xmmword_100022470 + 1) && xmmword_100022428)
      {
        v70 = v24;
        v39 = asl_msg_new();
        if (v39)
        {
          v69 = v37;
          asl_msg_set_key_val();
          asl_msg_set_key_val();
          asl_msg_set_key_val();
          snprintf(v80, 0x40uLL, "%d", dword_10002237C);
          asl_msg_set_key_val();
          snprintf(v80, 0x40uLL, "%d", 5);
          asl_msg_set_key_val();
          snprintf(v80, 0x40uLL, "%u", *v38);
          asl_msg_set_key_val();
          snprintf(v80, 0x40uLL, "%u", v38[1]);
          asl_msg_set_key_val();
          v40 = v38[2];
          if (v40)
          {
            for (i = 0; i < v40; ++i)
            {
              v42 = *(*(v38 + 2) + 8 * i);
              if (v42)
              {
                do
                {
                  v72 = 0;
                  v43 = v42[3];
                  v44 = v42[1];
                  snprintf(v79, 0x40uLL, "%llu %llu", v44, v42[2]);
                  asprintf(&v72, "*%s", *v42);
                  if (v72)
                  {
                    asl_msg_set_key_val();
                    v45 = v72;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  free(v45);
                  free(*v42);
                  free(v42);
                  v42 = v43;
                }

                while (v43);
                v40 = v38[2];
              }
            }
          }

          free(*(v38 + 2));
          free(v38);
          v37 = v69;
        }

        sub_100005A9C(v39, 1);
        v24 = v70;
        qword_100022420 = v71;
        *&xmmword_100022428 = 0;
        goto LABEL_129;
      }
    }

    else
    {
      v38 = xmmword_100022428;
    }

    if (v38)
    {
LABEL_134:
      v49 = 0;
      v50 = v2;
      do
      {
        v51 = *(v50 + 16);
        v50 = *(v50 + 24);
        v49 += v51;
      }

      while (v50);
      v52 = asl_msg_get_val_for_key();
      v53 = xmmword_100022428;
      ++*xmmword_100022428;
      if (v52)
      {
        ++*(v53 + 4);
      }

      sub_100007130(v53, "*", v49);
      sub_100007130(xmmword_100022428, v24, v49);
      if (*(a1 + 56) == 4 && (v37 & 0x80000000) == 0)
      {
        v54 = off_10001CD98[v37];
        if ((dword_100020008[v37] & 0x80000000) != 0)
        {
          v55 = off_10001CD98[v37];
          v56 = notify_register_plain();
          if (v56)
          {
            sub_100005CC8("notify_register_plain(%s) failed status %u\n", v57, v58, v59, v60, v61, v62, v63, v56);
          }
        }

        notify_post(v54);
      }

      goto LABEL_144;
    }

LABEL_129:
    v46 = malloc_type_malloc(0x18uLL, 0x1080040216EE090uLL);
    v47 = v46;
    if (v46)
    {
      *(v46 + 2) = 256;
      v48 = malloc_type_calloc(0x100uLL, 8uLL, 0x2004093837F09uLL);
      v47[2] = v48;
      if (v48)
      {
        *v47 = 0;
      }

      else
      {
        free(v47);
        v47 = 0;
      }
    }

    *&xmmword_100022428 = v47;
    goto LABEL_134;
  }

LABEL_144:
  if (!v19 && *(a1 + 60) == 1)
  {
    v64 = *(a1 + 32);
    v65 = asl_msg_get_val_for_key();
    if (v65)
    {
      v66 = v65;
      if (!strncmp(v65, "= reset", 7uLL))
      {
        sub_1000053EC();
        sub_1000012D4();
      }

      else
      {
        if (!strncmp(v66, "= crash", 7uLL))
        {
          abort();
        }

        v67 = *v66;
        if (v67 == 61)
        {
          if (v66[1] == 32)
          {
            sub_1000054EC(v66, 1);
          }
        }

        else if (v67 == 64 && v66[1] == 32)
        {
          sub_10000137C(v66);
        }
      }
    }
  }

  sub_1000006B0(*(a1 + 32), *(a1 + 40));
LABEL_160:
  v68 = *(a1 + 32);
  asl_msg_release();
  atomic_fetch_add_explicit(&dword_100022380, 0xFFFFFFFF, memory_order_relaxed);
  os_release(*(a1 + 48));
}

uint64_t sub_100006950(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = asl_msg_from_string();
  if (!v1)
  {
    return 1;
  }

  sub_100005A9C(v1, 1);
  return 0;
}

void sub_100006990()
{
  v0 = 0;
  asprintf(&v0, "[Sender syslogd] [Level 6] [PID %u] [Message -- MARK --] [UID 0] [UID 0] [Facility syslog]", dword_10002237C);
  sub_100006950(v0);
  free(v0);
}

char *sub_1000069E0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (!a1 || a2 < 1)
  {
    return v4;
  }

  v9 = 0;
  if (a4 == 4)
  {
    v10 = 5;
  }

  else
  {
    v10 = 7;
  }

  v45 = 0;
  while (1)
  {
    v11 = *(a1 + v9);
    if (v11 != 32 && v11 != 9)
    {
      break;
    }

    if (a2 == ++v9)
    {
      return 0;
    }
  }

  v46 = 0;
  memset(&v44, 0, sizeof(v44));
  v43 = 0;
  v14 = (a1 + v9);
  if (v11 == 60)
  {
    if (sscanf(v14 + 1, "%d", &v46) == 1 && (v10 = v46 & 7, v46 >= 8))
    {
      v15 = asl_syslog_faciliy_num_to_name();
    }

    else
    {
      v15 = 0;
    }

    if (v9 + 1 >= a2)
    {
      LODWORD(v9) = v9 + 1;
      ++v14;
    }

    else if (v14[1] == 62)
    {
LABEL_26:
      v14 += 2;
      LODWORD(v9) = v9 + 2;
    }

    else
    {
      while (1)
      {
        v16 = a1 + v9;
        if (a2 - 2 == v9)
        {
          break;
        }

        ++v9;
        if (*(v16 + 2) == 62)
        {
          v14 = (a1 + v9);
          goto LABEL_26;
        }
      }

      v14 = (v16 + 2);
      LODWORD(v9) = a2;
    }
  }

  else
  {
    v15 = 0;
  }

  snprintf(__str, 8uLL, "%d", v10);
  if (a2 - v9 >= 16 && v14[9] == 58 && v14[12] == 58 && v14[15] == 32)
  {
    v17 = malloc_type_malloc(0x10uLL, 0xECEF614DuLL);
    v4 = v17;
    if (!v17)
    {
      return v4;
    }

    v18 = *v14;
    *(v17 + 7) = *(v14 + 7);
    *v17 = v18;
    v17[15] = 0;
    v43 = asl_core_parse_time();
    if (v43 == -1)
    {
      v45 = v4;
    }

    else
    {
      free(v4);
      gmtime_r(&v43, &v44);
      asprintf(&v45, "%d.%02d.%02d %02d:%02d:%02d UTC", v44.tm_year + 1900, v44.tm_mon + 1, v44.tm_mday, v44.tm_hour, v44.tm_min, v44.tm_sec);
    }

    v14 += 16;
    LODWORD(v9) = v9 + 16;
  }

  if (a4 == 4)
  {
    v4 = asl_msg_new();
    if (v4)
    {
      asl_msg_set_key_val();
      asl_msg_set_key_val();
LABEL_41:
      asl_msg_set_key_val();
      return v4;
    }

    return v4;
  }

  if (a4 == 3 && (v19 = strchr(v14, 32)) != 0)
  {
    v20 = v19;
    v21 = v19 - v14;
    v22 = v19 - v14 + 1;
    v23 = malloc_type_malloc(v22, 0x370008B1uLL);
    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    memcpy(v23, v14, v21);
    v24[v21] = 0;
    v14 = v20 + 1;
    LODWORD(v9) = v22 + v9;
  }

  else
  {
    v24 = 0;
  }

  v25 = strchr(v14, 58);
  v26 = strchr(v14, 91);
  if (v25)
  {
    v27 = v26;
    if (v26 && v26 < v25 && *(v25 - 1) == 93)
    {
      v28 = (v26 - v14);
      v29 = malloc_type_malloc((&_mh_execute_header + (v28 << 32)) >> 32, 0xEE154AB1uLL);
      if (!v29)
      {
        return 0;
      }

      v30 = v29;
      v42 = v15;
      v31 = v24;
      memcpy(v29, v14, v28);
      v30[v28] = 0;
      v32 = v27 + 1;
      v33 = malloc_type_malloc(v25 - (v27 + 1), 0x6C78F350uLL);
      if (!v33)
      {
        return 0;
      }

      v34 = v33;
      v35 = ~v32 + v25;
      memcpy(v33, v32, v35);
      v34[v35] = 0;
      v36 = v25 - v14;
    }

    else
    {
      v36 = v25 - v14;
      v37 = malloc_type_malloc((&_mh_execute_header + ((v25 - v14) << 32)) >> 32, 0x96826411uLL);
      if (!v37)
      {
        return 0;
      }

      v30 = v37;
      v42 = v15;
      v31 = v24;
      memcpy(v37, v14, v36);
      v34 = 0;
      v30[v36] = 0;
    }

    v14 = v25 + 1;
    LODWORD(v9) = v9 + v36 + 1;
    v24 = v31;
    v15 = v42;
  }

  else
  {
    v30 = 0;
    v34 = 0;
  }

  if (*v14 == 32)
  {
    v38 = v14 + 1;
  }

  else
  {
    v38 = v14;
  }

  v39 = a2 - v9 - (*v14 == 32);
  if (v39 >= 1)
  {
    v40 = malloc_type_malloc((v39 + 1), 0x1AAE221AuLL);
    if (v40)
    {
      v41 = v40;
      memcpy(v40, v38, v39);
      v41[v39] = 0;
      goto LABEL_65;
    }

    return 0;
  }

  v41 = 0;
LABEL_65:
  if (!v15)
  {
    asl_syslog_faciliy_num_to_name();
  }

  v4 = asl_msg_new();
  if (v4)
  {
    if (v45)
    {
      asl_msg_set_key_val();
      free(v45);
    }

    asl_msg_set_key_val();
    if (v30)
    {
      asl_msg_set_key_val();
      free(v30);
    }

    asl_msg_set_key_val();
    if (v34)
    {
      free(v34);
    }

    if (v41)
    {
      asl_msg_set_key_val();
      free(v41);
    }

    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    if (v24)
    {
      asl_msg_set_key_val();
      free(v24);
      return v4;
    }

    if (!a3)
    {
      return v4;
    }

    goto LABEL_41;
  }

  return v4;
}

char *sub_100006FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a2;
  v11 = a1;
  v12 = "NULL";
  if (a1)
  {
    LOBYTE(v12) = a1;
  }

  sub_100005CC8("asl_input_parse: %s\n", a2, a3, a4, a5, a6, a7, a8, v12);
  if (v11)
  {
    if (!v10)
    {
      v10 = strlen(v11);
    }

    v15 = 0;
    v13 = *v11 == 60 || v10 < 12;
    if (!v13 && sscanf(v11, "%d ", &v15) == 1 && *(v11 + 10) == 32 && *(v11 + 11) == 91)
    {
      *v11;
      v11 = asl_msg_from_string();
      if (v11 && a3)
      {
        asl_msg_set_key_val();
      }
    }

    else
    {
      return sub_1000069E0(v11, v10, a3, v8);
    }
  }

  return v11;
}

int64x2_t sub_100007130(uint64_t a1, char *__s1, uint64_t a3)
{
  if (a1 && __s1)
  {
    v6 = *__s1;
    if (*__s1)
    {
      v7 = 0;
      v8 = __s1 + 1;
      do
      {
        v7 ^= v6 ^ (2 * v7);
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(a1 + 16) + 8 * v10);
    if (v11)
    {
      while (!*v11 || strcmp(__s1, *v11))
      {
        v11 = *(v11 + 24);
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v16.i64[1] = a3;
      result = vaddq_s64(*(v11 + 8), v16);
      *(v11 + 8) = result;
    }

    else
    {
LABEL_12:
      v12 = malloc_type_malloc(0x20uLL, 0x1030040A9292222uLL);
      v13 = strdup(__s1);
      *v12 = v13;
      if (v13)
      {
        v12[1] = 1;
        v12[2] = a3;
        v15 = *(a1 + 16);
        v12[3] = *(v15 + 8 * v10);
        *(v15 + 8 * v10) = v12;
      }

      else
      {

        free(v12);
      }
    }
  }

  return result;
}

void sub_10000724C(int a1)
{
  if (qword_1000201C8 != -1)
  {
    sub_100013A48();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100007310;
  block[3] = &unk_10001CE78;
  v3 = a1;
  dispatch_async(qword_1000201D0, block);
}

uint64_t sub_100007310(uint64_t a1)
{
  if (DWORD2(xmmword_100022368))
  {
    v2 = xmmword_100022368;
  }

  else
  {
    v2 = 0;
    *&xmmword_100022368 = 0;
  }

  result = reallocf(v2, 4 * SDWORD2(xmmword_100022368) + 4);
  *&xmmword_100022368 = result;
  if (result)
  {
    v11 = DWORD2(xmmword_100022368) + 1;
    *(result + 4 * SDWORD2(xmmword_100022368)) = *(a1 + 32);
  }

  else
  {
    result = sub_100005CC8("add_lockdown_session: realloc failed\n", v4, v5, v6, v7, v8, v9, v10, v12);
    v11 = 0;
  }

  DWORD2(xmmword_100022368) = v11;
  HIDWORD(xmmword_100022368) = v11 + dword_1000201D8;
  return result;
}

void sub_100007398(int a1)
{
  if (qword_1000201C8 != -1)
  {
    sub_100013A5C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000745C;
  block[3] = &unk_10001CED8;
  v3 = a1;
  dispatch_async(qword_1000201D0, block);
}

void sub_10000745C(uint64_t a1)
{
  v1 = DWORD2(xmmword_100022368);
  if (SDWORD2(xmmword_100022368) < 1)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 0;
  v4 = xmmword_100022368;
  do
  {
    v5 = *(v4 + 4 * v2);
    if (v5 != *(a1 + 32))
    {
      if (v2 != v3)
      {
        *(v4 + 4 * v3) = v5;
        v1 = DWORD2(xmmword_100022368);
      }

      ++v3;
    }

    ++v2;
  }

  while (v2 < v1);
  if (v3)
  {
    *&xmmword_100022368 = reallocf(xmmword_100022368, 4 * v3);
    if (!xmmword_100022368)
    {
      sub_100005CC8("remove_lockdown_session: realloc failed\n", v6, v7, v8, v9, v10, v11, v12, v13);
      v3 = 0;
    }
  }

  else
  {
LABEL_11:
    free(xmmword_100022368);
    v3 = 0;
    *&xmmword_100022368 = 0;
  }

  DWORD2(xmmword_100022368) = v3;
  HIDWORD(xmmword_100022368) = v3 + dword_1000201D8;
}

void sub_100007514(uint64_t a1)
{
  if (qword_1000201C8 != -1)
  {
    sub_100013A70();
  }

  asl_msg_retain();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000075E0;
  block[3] = &unk_10001CF38;
  block[4] = a1;
  dispatch_async(qword_1000201D0, block);
}

uint64_t sub_1000075E0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  __nbyte = 0;
  v3 = &dword_100020000;
  if (SDWORD2(xmmword_100022368) >= 1)
  {
    if (HIDWORD(qword_100022458))
    {
      v72.tv_sec = 0;
      *&v72.tv_usec = 0;
      if (!gettimeofday(&v72, 0))
      {
        if (xmmword_1000201F8)
        {
          tv_sec = v72.tv_sec;
          if (v72.tv_sec <= xmmword_1000201F8)
          {
            tv_usec = v72.tv_usec;
          }

          else
          {
            tv_sec = --v72.tv_sec;
            tv_usec = v72.tv_usec + 1000000;
            v72.tv_usec += 1000000;
          }

          v6 = 1000000 * (tv_sec - xmmword_1000201F8) - SDWORD2(xmmword_1000201F8) + tv_usec;
          if (v6 < HIDWORD(qword_100022458))
          {
            usleep(v6);
          }
        }

        else
        {
          tv_usec = v72.tv_usec;
        }

        if (tv_usec > 999999)
        {
          ++v72.tv_sec;
          v72.tv_usec = tv_usec - 1000000;
        }

        xmmword_1000201F8 = v72;
      }
    }

    v7 = asl_format_message();
    v8 = v7;
    if (DWORD2(xmmword_100022368))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (write(*(xmmword_100022368 + 4 * v9), v8, __nbyte) < 0)
        {
          v11 = *(xmmword_100022368 + 4 * v9);
          v12 = *__error();
          v13 = __error();
          strerror(*v13);
          sub_100005CC8("send_to_direct_watchers: lockdown %d write error: %d %s\n", v14, v15, v16, v17, v18, v19, v20, v11);
          close(*(xmmword_100022368 + 4 * v9));
          *(xmmword_100022368 + 4 * v9) = -1;
          v10 = 1;
        }

        ++v9;
      }

      while (v9 < DWORD2(xmmword_100022368));
      free(v8);
      if (v10)
      {
        v21 = DWORD2(xmmword_100022368);
        v22 = xmmword_100022368;
        if (SDWORD2(xmmword_100022368) < 1)
        {
          goto LABEL_68;
        }

        v23 = 0;
        v24 = 0;
        do
        {
          v25 = v22[v23];
          if ((v25 & 0x80000000) == 0)
          {
            if (v23 != v24)
            {
              v22[v24] = v25;
              v21 = DWORD2(xmmword_100022368);
            }

            ++v24;
          }

          ++v23;
        }

        while (v23 < v21);
        if (v24)
        {
          *&xmmword_100022368 = reallocf(v22, 4 * v24);
          if (!xmmword_100022368)
          {
            sub_100005CC8("sweep_lockdown_session_fds: realloc failed\n", v26, v27, v28, v29, v30, v31, v32, v67);
            v24 = 0;
          }
        }

        else
        {
LABEL_68:
          free(v22);
          v24 = 0;
          *&xmmword_100022368 = 0;
        }

        DWORD2(xmmword_100022368) = v24;
        HIDWORD(xmmword_100022368) = dword_1000201D8 + v24;
        if (!dword_1000201D8)
        {
          goto LABEL_70;
        }

        goto LABEL_32;
      }
    }

    else
    {
      free(v7);
    }
  }

  if (!dword_1000201D8)
  {
LABEL_70:
    qword_100020208 = 0;
    goto LABEL_71;
  }

LABEL_32:
  if (!qword_100020208)
  {
LABEL_67:
    v3[118] = 0;
    goto LABEL_71;
  }

  v71 = asl_msg_to_string();
  if (v71)
  {
    HIDWORD(__nbyte) = bswap32(__nbyte);
    if (!dword_1000201D8)
    {
      free(v71);
      goto LABEL_71;
    }

    v70 = v1;
    v33 = 0;
    v34 = 0;
    do
    {
      if (send(*(qword_100020208 + 4 * v33), &__nbyte + 4, 4uLL, 0) >= 4)
      {
        if (__nbyte)
        {
          v35 = v3;
          v36 = 0;
          v37 = 0;
          while (2)
          {
            if (v36 <= 0x65)
            {
              v38 = 101;
            }

            else
            {
              v38 = v36;
            }

            v39 = v38 + 1;
            while (1)
            {
              *__error() = 0;
              v40 = send(*(qword_100020208 + 4 * v33), &v71[v37], __nbyte - v37, 0);
              v41 = v40;
              if (v40 > 0)
              {
                break;
              }

              v69 = *__error();
              sub_100005CC8("send_to_direct_watchers: send returned %d (errno %d)\n", v42, v43, v44, v45, v46, v47, v48, v41);
              if (*__error() != 35)
              {
                close(*(qword_100020208 + 4 * v33));
                *(qword_100020208 + 4 * v33) = -1;
                v34 = 1;
                v3 = v35;
                goto LABEL_54;
              }

              if (v39 == ++v36)
              {
                sub_100005CC8("send_to_direct_watchers: exceeded EAGAIN limit - closing connection\n", v49, v50, v51, v52, v53, v54, v55, v68);
                goto LABEL_53;
              }

              *__error() = 0;
              if (v37 >= __nbyte)
              {
                goto LABEL_53;
              }
            }

            v37 += v40;
            if (v37 < __nbyte)
            {
              continue;
            }

            break;
          }

LABEL_53:
          v3 = v35;
        }
      }

      else
      {
        close(*(qword_100020208 + 4 * v33));
        *(qword_100020208 + 4 * v33) = -1;
        v34 = 1;
      }

LABEL_54:
      ++v33;
      v56 = v3[118];
    }

    while (v33 < v56);
    free(v71);
    v1 = v70;
    if (v34)
    {
      v57 = qword_100020208;
      v58 = qword_100020210;
      if (!v56)
      {
        goto LABEL_73;
      }

      v59 = 0;
      v60 = 0;
      do
      {
        v61 = v57[v59];
        if ((v61 & 0x80000000) == 0)
        {
          if (v59 != v60)
          {
            v57[v60] = v61;
            v58[v60] = v58[v59];
          }

          ++v60;
        }

        ++v59;
      }

      while (v56 != v59);
      v3[118] = v60;
      if (!v60)
      {
LABEL_73:
        free(v57);
        qword_100020208 = 0;
        free(v58);
        qword_100020210 = 0;
        goto LABEL_71;
      }

      v62 = reallocf(v57, 4 * v60);
      qword_100020208 = v62;
      v63 = reallocf(v58, 2 * v60);
      v64 = v63;
      qword_100020210 = v63;
      if (!v62 || !v63)
      {
        free(v62);
        qword_100020208 = 0;
        free(v64);
        qword_100020210 = 0;
        goto LABEL_67;
      }
    }
  }

LABEL_71:
  v65 = *(v1 + 32);
  return asl_msg_release();
}

void sub_100007ABC(uint64_t a1)
{
  if (qword_1000201E8 != -1)
  {
    sub_100013A84();
  }

  sub_100007514(a1);
  v2 = xmmword_100022448;
  LODWORD(v3) = v2 | (asl_check_option(a1, "asl_db_file") != 0);
  v4 = v3 | 2;
  if (asl_check_option(a1, "asl_db_memory"))
  {
    v3 = v4;
  }

  else
  {
    v3 = v3;
  }

  sub_100007D4C(v3);
  if (v3)
  {
    if (asl_store_save())
    {
      v5 = asl_core_error();
      sub_100005CC8("asl_store_save: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
      asl_store_release();
      *&xmmword_1000223E8 = 0;
      sub_100007D4C(v3);
      if (asl_store_save())
      {
        v13 = asl_core_error();
        sub_100005CC8("(retry) asl_store_save: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
        asl_store_release();
        *&xmmword_1000223E8 = 0;
        LODWORD(xmmword_100022448) = xmmword_100022448 | 2;
        if (!*(&xmmword_1000223E8 + 1) && asl_memory_open(DWORD2(xmmword_100022448), HIDWORD(xmmword_100022448), &xmmword_1000223E8 + 1))
        {
          v21 = asl_core_error();
          sub_100005CC8("asl_memory_open: %s\n", v22, v23, v24, v25, v26, v27, v28, v21);
        }

        v3 = v4;
      }
    }
  }

  v47 = 0;
  if ((v3 & 2) != 0)
  {
    v47 = 0;
    if (asl_memory_save(*(&xmmword_1000223E8 + 1), a1, &v47))
    {
      v29 = asl_core_error();
      sub_100005CC8("asl_memory_save: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
      asl_memory_close(*(&xmmword_1000223E8 + 1));
      *(&xmmword_1000223E8 + 1) = 0;
      sub_100007D4C(v3);
      v47 = 0;
      if (asl_memory_save(*(&xmmword_1000223E8 + 1), a1, &v47))
      {
        v37 = asl_core_error();
        sub_100005CC8("(retry) asl_memory_save: %s\n", v38, v39, v40, v41, v42, v43, v44, v37);
        asl_memory_close(*(&xmmword_1000223E8 + 1));
        *(&xmmword_1000223E8 + 1) = 0;
      }
    }
  }

  if ((byte_1000201DC & 1) == 0)
  {
    byte_1000201DC = 1;
    v45 = qword_1000201E0;
    v46 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v45, v46, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_1000201E0);
  }
}

void sub_100007CCC(id a1)
{
  qword_1000201E0 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(qword_1000201E0, &stru_10001CFB8);
  byte_1000201DC = 0;
}

void sub_100007D18(id a1)
{
  notify_post("com.apple.system.logger.message");
  dispatch_suspend(qword_1000201E0);
  byte_1000201DC = 0;
}

uint64_t sub_100007D4C(uint64_t result)
{
  v1 = result;
  memset(&v47, 0, sizeof(v47));
  if ((result & 1) == 0 || xmmword_1000223E8)
  {
LABEL_10:
    if ((v1 & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v2 = asl_filesystem_path();
  if (stat(v2, &v47))
  {
    v3 = *__error();
    v4 = asl_filesystem_path();
    v5 = v4;
    if (v3 != 2)
    {
      v30 = __error();
      strerror(*v30);
      return sub_100005CC8("error: can't stat data store %s: %s\n", v31, v32, v33, v34, v35, v36, v37, v5);
    }

    if (mkdir(v4, 0x1EDu))
    {
      v6 = asl_filesystem_path();
      v7 = __error();
      strerror(*v7);
      return sub_100005CC8("error: can't create data store %s: %s\n", v8, v9, v10, v11, v12, v13, v14, v6);
    }
  }

  else if ((v47.st_mode & 0xF000) != 0x4000)
  {
    v46 = asl_filesystem_path();
    return sub_100005CC8("error: %s is not a directory", v38, v39, v40, v41, v42, v43, v44, v46);
  }

  if (asl_store_open_write())
  {
    v15 = asl_core_error();
    result = sub_100005CC8("asl_store_open_write: %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
    goto LABEL_10;
  }

  if (DWORD1(xmmword_100022448))
  {
    asl_store_max_file_size();
  }

  result = asl_trigger_aslmanager();
  if ((v1 & 2) != 0)
  {
LABEL_11:
    if (!*(&xmmword_1000223E8 + 1))
    {
      result = asl_memory_open(DWORD2(xmmword_100022448), HIDWORD(xmmword_100022448), &xmmword_1000223E8 + 1);
      if (result)
      {
        v45 = asl_core_error();
        return sub_100005CC8("asl_memory_open: %s\n", v23, v24, v25, v26, v27, v28, v29, v45);
      }
    }
  }

  return result;
}

uint64_t sub_100007EC8(uint64_t result)
{
  v10 = 0;
  if ((xmmword_100022448 & 2) == 0 && !*(&xmmword_1000223E8 + 1))
  {
    v1 = result;
    if (asl_memory_open(DWORD2(xmmword_100022448), HIDWORD(xmmword_100022448), &xmmword_1000223E8 + 1))
    {
      v2 = asl_core_error();
      return sub_100005CC8("asl_memory_open: %s\n", v3, v4, v5, v6, v7, v8, v9, v2);
    }

    else
    {
      return asl_memory_save(*(&xmmword_1000223E8 + 1), v1, &v10);
    }
  }

  return result;
}

uint64_t sub_100007F48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, int a10)
{
  if (a4 == -1)
  {
    return 2 * (xmmword_100022448 & 1);
  }

  memset(out, 0, 37);
  *uu = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (a10)
  {
    uuid_clear(uu);
    if (proc_pidinfo(a10, 17, 1uLL, uu, 56) == 56)
    {
      v18 = out;
      uuid_unparse(uu, out);
    }

    else
    {
      v18 = "NO ACCESS";
    }
  }

  else
  {
    v18 = 0;
  }

  if (xmmword_100022448 & 2 | dword_100022350)
  {
    return asl_memory_match_restricted_uuid(*(&xmmword_1000223E8 + 1), a1, a2, a7, a3, a4, a5, a6, a8, a9, v18);
  }

  else
  {
    return 9999;
  }
}

void sub_1000080B4()
{
  v0 = 0;
  v1 = &dword_10001CFE0;
  do
  {
    if (!strcmp(*(v1 - 1), "_asl_server_message"))
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    if (v0 > 4)
    {
      break;
    }

    ++v0;
    v1 += 4;
  }

  while (!v2);
  qword_1000201F0 = dispatch_queue_create("ASL Server Queue", 0);
  while (1)
  {
    do
    {
      v3 = malloc_type_calloc(1uLL, 0x94uLL, 0x10820409BC70E29uLL);
    }

    while (!v3);
    v4 = v3;
    v3->msgh_local_port = dword_100022358;
    v3->msgh_size = 148;
    v5 = mach_msg(v3, 50333698, 0, 0x94u, dword_100022354, 0, 0);
    if (v5)
    {
      break;
    }

    msgh_id = v4->msgh_id;
    if (v4->msgh_local_port == dword_10002235C && msgh_id == 72)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_1000082C4;
      block[3] = &unk_10001D038;
      block[4] = v4;
      block[5] = v4;
      dispatch_async(qword_1000201F0, block);
    }

    else if (msgh_id == v2)
    {
      sub_1000083DC(v4);
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_1000085C0;
      v15[3] = &unk_10001D058;
      v15[4] = v4;
      dispatch_async(qword_1000201F0, v15);
    }
  }

  v14 = v5;
  sub_100005CC8("FATAL ERROR: mach_msg() receive failed with status 0x%08x\n", v6, v7, v8, v9, v10, v11, v12, v5);
  snprintf(__str, 0x100uLL, "[Sender syslogd] [Level 1] [PID %u] [Facility syslog] [Message FATAL ERROR: mach_msg() receive failed with status 0x%08x]", dword_10002237C, v14);
  sub_100006950(__str);
  sleep(1u);
  abort();
}

void sub_1000082C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = dword_100020218;
  if (dword_100020218)
  {
    v4 = 0;
    v5 = qword_100020220;
    while (*(qword_100020220 + 4 * v4) != v2)
    {
      if (dword_100020218 == ++v4)
      {
        goto LABEL_12;
      }
    }

    if (dword_100020218 == 1)
    {
      free(qword_100020220);
      qword_100020220 = 0;
      dword_100020218 = 0;
    }

    else
    {
      if (v4 + 1 < dword_100020218)
      {
        do
        {
          v5[v4] = v5[v4 + 1];
          ++v4;
        }

        while (v3 - 1 != v4);
      }

      dword_100020218 = v3 - 1;
      qword_100020220 = reallocf(v5, 4 * (v3 - 1));
    }

    sub_100005CC8("cancel_session: %u\n", v6, v7, v8, v9, v10, v11, v12, v2);
    mach_port_deallocate(mach_task_self_, v2);
    sub_10000539C();
    v2 = *(*(a1 + 32) + 32);
  }

LABEL_12:
  mach_port_deallocate(mach_task_self_, v2);
  v13 = *(a1 + 40);

  free(v13);
}

void sub_1000083DC(mach_msg_header_t *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x8CuLL, 0x1082040114E1719uLL);
  v3 = voucher_mach_msg_adopt(a1);
  asl_ipc_server(a1, v2);
  if ((v2->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v2[1].msgh_remote_port;
    if (msgh_remote_port)
    {
      if (msgh_remote_port == -305)
      {
        v2->msgh_remote_port = 0;
      }

      else if ((a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
      }
    }
  }

  if (!v2->msgh_remote_port)
  {
    if ((v2->msgh_bits & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    mach_msg_destroy(v2);
    goto LABEL_18;
  }

  v5 = mach_msg(v2, 17, v2->msgh_size, 0, 0, 0xAu, 0);
  if ((v5 - 268435459) <= 1)
  {
    goto LABEL_17;
  }

  if (v5)
  {
    if (v5 == 268435469)
    {
      sub_100005CC8("ERROR: mach_msg() send failed with MACH_SEND_NO_BUFFER 0x%08x\n", v5, v6, v7, v8, v9, v10, v11, 13);
      snprintf(__str, 0x100uLL, "[Sender syslogd] [Level 3] [PID %u] [Facility syslog] [Message mach_msg() send failed with status 0x%08x (MACH_SEND_NO_BUFFER)]");
    }

    else
    {
      if (v5 != 268435472)
      {
        sub_100013A98(__str, v5, v6, v7, v8, v9, v10, v11);
      }

      sub_100005CC8("ERROR: mach_msg() send failed with MACH_SEND_INVALID_HEADER 0x%08x\n", v5, v6, v7, v8, v9, v10, v11, 16);
      snprintf(__str, 0x100uLL, "[Sender syslogd] [Level 3] [PID %u] [Facility syslog] [Message mach_msg() send failed with status 0x%08x (MACH_SEND_INVALID_HEADER)]");
    }

    sub_100006950(__str);
    goto LABEL_17;
  }

LABEL_18:
  voucher_mach_msg_revert(v3);
  free(a1);
  free(v2);
}

uint64_t sub_1000085C8(int a1, vm_address_t address, vm_size_t size, uint64_t a4, int a5, char a6, void *a7, _DWORD *a8, void *a9, int *a10, _OWORD *a11)
{
  if (a6)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  sub_10000861C(address, size, a4, a5, 0, v11, a7, a8, a9, a10, a11);
  return 0;
}

void sub_10000861C(vm_address_t address, vm_size_t size, uint64_t a3, int a4, int a5, int a6, void *a7, _DWORD *a8, void *a9, int *a10, _OWORD *a11)
{
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  if (address)
  {
    v15 = size;
    if (*(address + (size - 1)))
    {
      vm_deallocate(mach_task_self_, address, size);
      v17 = 1;
LABEL_4:
      *a10 = v17;
      return;
    }

    v45 = a7;
    v46 = a8;
    v18 = asl_msg_list_from_string();
    vm_deallocate(mach_task_self_, address, v15);
  }

  else
  {
    v45 = a7;
    v46 = a8;
    v18 = asl_msg_list_from_string();
  }

  v50 = 0;
  euidp[0] = -1;
  memset(&euidp[1], 0, 12);
  pidp = -1;
  egidp = -1;
  v19 = a11[1];
  *atoken.val = *a11;
  *&atoken.val[4] = v19;
  audit_token_to_au32(&atoken, 0, euidp, &egidp, 0, 0, &pidp, 0, 0);
  if (v18 && *(v18 + 8) == 1 && asl_check_option(**(v18 + 16), "control"))
  {
    v20 = **(v18 + 16);
    v21 = euidp[0];
    v50 = 0;
    v22 = asl_msg_list_new();
    if (v22)
    {
      v23 = v22;
      v24 = asl_msg_new();
      if (v24)
      {
        v25 = v24;
        v44 = v21;
        v51 = 0;
        asl_msg_list_append();
        v26 = asl_msg_count();
        if (v26 != 1 && asl_msg_lookup())
        {
          goto LABEL_119;
        }

        if (DWORD2(xmmword_100022428))
        {
          snprintf(&atoken, 0x100uLL, "1 %s", qword_100022438);
        }

        else
        {
          LOWORD(atoken.val[0]) = 48;
        }

        asl_msg_set_key_val();
        if (v26 != 1)
        {
LABEL_119:
          if (asl_msg_lookup())
          {
            goto LABEL_118;
          }
        }

        v37 = ((xmmword_100022448 >> 1) & 1) + (xmmword_100022448 & 1);
        if (v37)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          memset(&atoken, 0, sizeof(atoken));
          if (xmmword_100022448)
          {
            __strncat_chk();
            if (v37 != 1)
            {
              __strncat_chk();
            }

            v38 = 2;
          }

          else
          {
            v38 = 1;
          }

          if ((xmmword_100022448 & 2) != 0)
          {
            __strncat_chk();
            if (v38 < v37)
            {
              __strncat_chk();
            }
          }
        }

        asl_msg_set_key_val();
        if (v26 == 1)
        {
          snprintf(&atoken, 0x100uLL, "%u", DWORD1(xmmword_100022448));
          asl_msg_set_key_val();
        }

        else
        {
LABEL_118:
          if (!asl_msg_lookup())
          {
            snprintf(&atoken, 0x100uLL, "%u", DWORD1(xmmword_100022448));
            asl_msg_set_key_val();
          }

          if (asl_msg_lookup())
          {
            goto LABEL_62;
          }
        }

        snprintf(&atoken, 0x100uLL, "%u", DWORD2(xmmword_100022448));
        asl_msg_set_key_val();
        if (v26 == 1)
        {
          snprintf(&atoken, 0x100uLL, "%u", HIDWORD(xmmword_100022448));
          asl_msg_set_key_val();
LABEL_65:
          snprintf(&atoken, 0x100uLL, "%u", qword_100022458);
          asl_msg_set_key_val();
          if (v26 == 1)
          {
            snprintf(&atoken, 0x100uLL, "%llu", xmmword_100022460);
            asl_msg_set_key_val();
LABEL_70:
            snprintf(&atoken, 0x100uLL, "%llu", *(&xmmword_100022460 + 1));
            asl_msg_set_key_val();
            if (v26 == 1)
            {
              snprintf(&atoken, 0x100uLL, "%llu", xmmword_100022470);
              asl_msg_set_key_val();
LABEL_75:
              snprintf(&atoken, 0x100uLL, "%lld", xmmword_100022388);
              asl_msg_set_key_val();
              if (v26 == 1)
              {
                snprintf(&atoken, 0x100uLL, "%lld", qword_100022480);
                asl_msg_set_key_val();
LABEL_80:
                snprintf(&atoken, 0x100uLL, "%lld", *(&xmmword_100022470 + 1));
                asl_msg_set_key_val();
                if (v26 == 1)
                {
                  snprintf(&atoken, 0x100uLL, "%d", dword_100022380);
                  asl_msg_set_key_val();
LABEL_85:
                  snprintf(&atoken, 0x100uLL, "%d", DWORD2(xmmword_100022388));
                  asl_msg_set_key_val();
                  if (v26 == 1)
                  {
                    snprintf(&atoken, 0x100uLL, "%d", HIDWORD(xmmword_100022388));
                    asl_msg_set_key_val();
LABEL_90:
                    snprintf(&atoken, 0x100uLL, "%d", dword_10002234C);
                    asl_msg_set_key_val();
                    if (v26 == 1)
                    {
                      snprintf(&atoken, 0x100uLL, "%d", dword_100022350);
                      asl_msg_set_key_val();
LABEL_95:
                      snprintf(&atoken, 0x100uLL, "%d", DWORD2(xmmword_100022368));
                      asl_msg_set_key_val();
                      if (v26 == 1)
                      {
                        snprintf(&atoken, 0x100uLL, "%u", HIDWORD(qword_100022458));
                        asl_msg_set_key_val();
LABEL_100:
                        snprintf(&atoken, 0x100uLL, "%d", HIDWORD(xmmword_100022368));
                        asl_msg_set_key_val();
LABEL_101:
                        if (dword_100022400)
                        {
                          v39 = 0;
                          do
                          {
                            if (v26 == 1 || (v40 = **(*(&xmmword_100022408 + 1) + 8 * v39), !asl_msg_lookup()))
                            {
                              if (*(*(*(&xmmword_100022408 + 1) + 8 * v39) + 8))
                              {
                                v41 = "enabled";
                              }

                              else
                              {
                                v41 = "disabled";
                              }

                              snprintf(&atoken, 0x100uLL, "%s", v41);
                              v42 = **(*(&xmmword_100022408 + 1) + 8 * v39);
                              asl_msg_set_key_val();
                            }

                            ++v39;
                          }

                          while (v39 < dword_100022400);
                        }

                        sub_100001D64(v20, v25, v26 == 1);
                        if (!asl_msg_lookup())
                        {
                          if (v44)
                          {
                            v43 = -1;
                          }

                          else
                          {
                            v43 = sub_10000137C(v51);
                          }

                          snprintf(&atoken, 0x100uLL, "%d", v43);
                          asl_msg_set_key_val();
                        }

                        asl_msg_release();
                        v35 = 0;
                        v50 = v23;
                        goto LABEL_31;
                      }

LABEL_97:
                      if (!asl_msg_lookup())
                      {
                        snprintf(&atoken, 0x100uLL, "%u", HIDWORD(qword_100022458));
                        asl_msg_set_key_val();
                      }

                      if (asl_msg_lookup())
                      {
                        goto LABEL_101;
                      }

                      goto LABEL_100;
                    }

LABEL_92:
                    if (!asl_msg_lookup())
                    {
                      snprintf(&atoken, 0x100uLL, "%d", dword_100022350);
                      asl_msg_set_key_val();
                    }

                    if (asl_msg_lookup())
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_95;
                  }

LABEL_87:
                  if (!asl_msg_lookup())
                  {
                    snprintf(&atoken, 0x100uLL, "%d", HIDWORD(xmmword_100022388));
                    asl_msg_set_key_val();
                  }

                  if (asl_msg_lookup())
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_90;
                }

LABEL_82:
                if (!asl_msg_lookup())
                {
                  snprintf(&atoken, 0x100uLL, "%d", dword_100022380);
                  asl_msg_set_key_val();
                }

                if (asl_msg_lookup())
                {
                  goto LABEL_87;
                }

                goto LABEL_85;
              }

LABEL_77:
              if (!asl_msg_lookup())
              {
                snprintf(&atoken, 0x100uLL, "%lld", qword_100022480);
                asl_msg_set_key_val();
              }

              if (asl_msg_lookup())
              {
                goto LABEL_82;
              }

              goto LABEL_80;
            }

LABEL_72:
            if (!asl_msg_lookup())
            {
              snprintf(&atoken, 0x100uLL, "%llu", xmmword_100022470);
              asl_msg_set_key_val();
            }

            if (asl_msg_lookup())
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }

LABEL_67:
          if (!asl_msg_lookup())
          {
            snprintf(&atoken, 0x100uLL, "%llu", xmmword_100022460);
            asl_msg_set_key_val();
          }

          if (asl_msg_lookup())
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

LABEL_62:
        if (!asl_msg_lookup())
        {
          snprintf(&atoken, 0x100uLL, "%u", HIDWORD(xmmword_100022448));
          asl_msg_set_key_val();
        }

        if (asl_msg_lookup())
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      asl_msg_list_release();
    }

    v35 = 9;
    goto LABEL_31;
  }

  v27 = pidp;
  if (pidp <= 0)
  {
    v30 = euidp[0];
  }

  else
  {
    v28 = xpc_copy_entitlement_for_token();
    if (v28)
    {
      v29 = v28;
      if (xpc_dictionary_get_BOOL(v28, "com.apple.asl.access_as_root"))
      {
        euidp[0] = 0;
      }

      else
      {
        value = xpc_dictionary_get_value(v29, "com.apple.asl.access_as_uid");
        if (value)
        {
          v32 = value;
          if (xpc_get_type(value) == &_xpc_type_int64)
          {
            euidp[0] = xpc_int64_get_value(v32);
          }
        }

        v33 = xpc_dictionary_get_value(v29, "com.apple.asl.access_as_gid");
        if (v33)
        {
          v34 = v33;
          if (xpc_get_type(v33) == &_xpc_type_int64)
          {
            egidp = xpc_int64_get_value(v34);
          }
        }
      }

      xpc_release(v29);
    }

    v30 = euidp[0];
    if (!euidp[0])
    {
      v27 = 0;
    }
  }

  v35 = sub_100007F48(v18, &v50, a3, a4, a5, a6, a9, v30, egidp, v27);
LABEL_31:
  *a10 = v35;
  asl_msg_list_release();
  if (*a10 == 2)
  {
    if (v50)
    {
      asl_msg_list_release();
    }
  }

  else
  {
    euidp[1] = 0;
    v36 = asl_msg_list_to_string();
    asl_msg_list_release();
    if (v36 && euidp[1])
    {
      if (vm_allocate(mach_task_self_, &euidp[2], euidp[1], 1358954497))
      {
        free(v36);
        v17 = 9999;
        goto LABEL_4;
      }

      memmove(*&euidp[2], v36, euidp[1]);
      free(v36);
      *v45 = *&euidp[2];
      *v46 = euidp[1];
    }
  }
}

uint64_t sub_1000093FC(int a1, vm_address_t address, uint64_t size, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (address)
  {
    v8 = size;
    v10 = size;
    if (*(address + (size - 1)))
    {
LABEL_7:
      vm_deallocate(mach_task_self_, address, v10);
      return 0;
    }

    sub_100005CC8("__asl_server_message: %s\n", address, size, a4, a5, a6, a7, a8, address);
    if ((xmmword_100022388 + v10) > qword_100022480)
    {
      sub_100005CC8("Server queue dropped message.  message size %u  queue size %lld  max %lld\n", v12, v13, v14, v15, v16, v17, v18, v8);
      snprintf(__str, 0x100uLL, "[Sender syslogd] [Level 2] [PID %u] [Message Received message size %u overflows work queue (size %lld limit %lld) - dropping message] [UID 0] [UID 0] [Facility syslog]", dword_10002237C, v8, xmmword_100022388, qword_100022480);
      sub_100006950(__str);
      goto LABEL_7;
    }

    v19 = malloc_type_malloc(v10, 0xB75C3155uLL);
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    memcpy(v19, address, v10);
    vm_deallocate(mach_task_self_, address, v10);
    egidp = -1;
    euidp = -1;
    pidp = -1;
    v21 = a4[1];
    *__str[0].val = *a4;
    *&__str[0].val[4] = v21;
    audit_token_to_au32(__str, 0, &euidp, &egidp, 0, 0, &pidp, 0, 0);
    atomic_fetch_add_explicit(&dword_100022380, 1u, memory_order_relaxed);
    atomic_fetch_add_explicit(&xmmword_100022388, v10, memory_order_relaxed);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000960C;
    block[3] = &unk_10001D078;
    block[4] = v20;
    v24 = v8;
    v25 = euidp;
    v26 = egidp;
    v27 = pidp;
    dispatch_async(qword_1000201F0, block);
  }

  return 0;
}

void sub_10000960C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = *(a1 + 44);
  v5 = *(a1 + 48);
  v4 = *(a1 + 52);
  v6 = asl_msg_from_string();
  free(v1);
  atomic_fetch_add_explicit(&xmmword_100022388, -v3, memory_order_relaxed);
  atomic_fetch_add_explicit(&dword_100022380, 0xFFFFFFFF, memory_order_relaxed);
  if (v6)
  {
    tn = 0;
    if (!task_name_for_pid(mach_task_self_, v4, &tn))
    {
      sub_100009A40(tn);
    }

    snprintf(__str, 0x40uLL, "%d", v2);
    asl_msg_set_key_val();
    snprintf(__str, 0x40uLL, "%d", v5);
    asl_msg_set_key_val();
    snprintf(__str, 0x40uLL, "%d", v4);
    asl_msg_set_key_val();
    sub_100005A9C(v6, 5);
  }
}

uint64_t sub_100009768(int a1, vm_address_t address, uint64_t size, _DWORD *a4, vm_address_t *a5, _DWORD *a6, int *a7, _OWORD *a8)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  if (!address)
  {
    goto LABEL_4;
  }

  v9 = size;
  if (*(address + (size - 1)))
  {
    vm_deallocate(mach_task_self_, address, size);
LABEL_4:
    v11 = 1;
LABEL_5:
    *a7 = v11;
    return 0;
  }

  sub_100005CC8("__asl_server_create_aux_link: %s\n", address, size, a4, a5, a6, a7, a8, address);
  if ((xmmword_100022448 & 1) == 0)
  {
    vm_deallocate(mach_task_self_, address, v9);
    v11 = 2;
    goto LABEL_5;
  }

  v16 = asl_msg_from_string();
  vm_deallocate(mach_task_self_, address, v9);
  if (v16)
  {
    addressa = 0;
    __s = 0;
    egidp = -1;
    euidp = -1;
    pidp = -1;
    v17 = a8[1];
    *atoken.val = *a8;
    *&atoken.val[4] = v17;
    audit_token_to_au32(&atoken, 0, &euidp, &egidp, 0, 0, &pidp, 0, 0);
    tn = 0;
    if (!task_name_for_pid(mach_task_self_, pidp, &tn))
    {
      sub_100009A40(tn);
    }

    snprintf(&atoken, 0x40uLL, "%d", euidp);
    asl_msg_set_key_val();
    snprintf(&atoken, 0x40uLL, "%d", egidp);
    asl_msg_set_key_val();
    snprintf(&atoken, 0x40uLL, "%d", pidp);
    asl_msg_set_key_val();
    *a7 = asl_store_open_aux();
    asl_msg_release();
    if (!*a7)
    {
      if (__s)
      {
        v18 = fileport_makeport();
        close(0);
        v19 = __s;
        if ((v18 & 0x80000000) == 0)
        {
          v20 = strlen(__s) + 1;
          *a6 = v20;
          if (!vm_allocate(mach_task_self_, &addressa, v20, 1358954497))
          {
            memmove(addressa, __s, *a6);
            free(__s);
            *a5 = addressa;
            return 0;
          }

          v19 = __s;
        }

        free(v19);
      }

      else
      {
        close(0);
      }

      v11 = 9999;
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t sub_100009A40(uint64_t name)
{
  if (name)
  {
    v1 = name;
    if (dword_10002235C)
    {
      if (dword_100020218)
      {
        v2 = qword_100020220;
        v3 = dword_100020218;
        while (1)
        {
          v4 = *v2++;
          if (v4 == name)
          {
            break;
          }

          if (!--v3)
          {
            v5 = reallocf(qword_100020220, 4 * (dword_100020218 + 1));
            goto LABEL_9;
          }
        }
      }

      else
      {
        v5 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
LABEL_9:
        qword_100020220 = v5;
        if (v5)
        {
          v13 = dword_100020218;
          v5[dword_100020218] = v1;
          dword_100020218 = v13 + 1;
          sub_100005CC8("register_session: %u   PID %d\n", v6, v7, v8, v9, v10, v11, v12, v1);
          previous = 0;
          mach_port_request_notification(mach_task_self_, v1, 72, 0, dword_10002235C, 0x15u, &previous);
          mach_port_deallocate(mach_task_self_, previous);
          return sub_100005348();
        }
      }
    }

    v14 = mach_task_self_;

    return mach_port_deallocate(v14, v1);
  }

  return name;
}

uint64_t sub_100009B88(uint64_t a1, __int16 a2, _OWORD *a3)
{
  pidp = -1;
  v4 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  sub_100005CC8("__asl_server_register_direct_watch: pid %u port %hu\n", v5, v6, v7, v8, v9, v10, v11, pidp);
  if (qword_1000201C8 != -1)
  {
    sub_100013AFC();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100009CA4;
  block[3] = &unk_10001D0D8;
  v14 = a2;
  dispatch_async(qword_1000201D0, block);
  return 0;
}

void sub_100009CA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = socket(2, 1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      v13.sa_len = 0;
      *&v13.sa_data[6] = 0;
      v13.sa_family = 2;
      *v13.sa_data = v1;
      *&v13.sa_data[2] = 16777343;
      if (!connect(v2, &v13, 0x10u))
      {
        v12 = 1;
        setsockopt(v3, 0xFFFF, 4130, &v12, 4u);
        v12 = 1;
        setsockopt(v3, 6, 1, &v12, 4u);
        v4 = fcntl(v3, 3, 0);
        LODWORD(v5) = v4 | 4;
        if (v4 == -1)
        {
          v5 = 4;
        }

        else
        {
          v5 = v5;
        }

        fcntl(v3, 4, v5);
        if (dword_1000201D8)
        {
          v6 = dword_1000201D8 + 1;
          v7 = reallocf(qword_100020208, 4 * (dword_1000201D8 + 1));
          qword_100020208 = v7;
          v8 = reallocf(qword_100020210, 2 * v6);
        }

        else
        {
          qword_100020208 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
          v8 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
          v7 = qword_100020208;
        }

        qword_100020210 = v8;
        if (v7 && v8)
        {
          v9 = dword_1000201D8;
          v7[dword_1000201D8] = v3;
          v8[v9] = v1;
          v10 = v9 + 1;
          v11 = DWORD2(xmmword_100022368) + v10;
        }

        else
        {
          close(v3);
          free(qword_100020208);
          qword_100020208 = 0;
          free(qword_100020210);
          v10 = 0;
          qword_100020210 = 0;
          v11 = SDWORD2(xmmword_100022368) > 0;
        }

        dword_1000201D8 = v10;
        HIDWORD(xmmword_100022368) = v11;
      }
    }
  }
}

uint64_t sub_100009EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  sub_100005CC8("__asl_server_cancel_direct_watch: %hu\n", a2, a3, a4, a5, a6, a7, a8, bswap32(a2) >> 16);
  if (qword_1000201C8 != -1)
  {
    sub_100013B24();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100009F88;
  block[3] = &unk_10001D138;
  v11 = v8;
  dispatch_async(qword_1000201D0, block);
  return 0;
}

void sub_100009F88(uint64_t a1)
{
  v1 = dword_1000201D8;
  if (dword_1000201D8)
  {
    v2 = 0;
    v3 = qword_100020210;
    while (*(qword_100020210 + 2 * v2) != *(a1 + 32))
    {
      if (dword_1000201D8 == ++v2)
      {
        return;
      }
    }

    if (dword_1000201D8 == 1)
    {
      free(qword_100020208);
      qword_100020208 = 0;
LABEL_13:
      free(v3);
      qword_100020210 = 0;
      dword_1000201D8 = 0;
      HIDWORD(xmmword_100022368) = SDWORD2(xmmword_100022368) > 0;
      return;
    }

    v4 = qword_100020208;
    if (v2 + 1 < dword_1000201D8)
    {
      do
      {
        v4[v2] = v4[v2 + 1];
        *(v3 + v2) = *(v3 + v2 + 1);
        ++v2;
      }

      while (v1 - 1 != v2);
    }

    v5 = v1 - 1;
    dword_1000201D8 = v1 - 1;
    HIDWORD(xmmword_100022368) = DWORD2(xmmword_100022368) + v1 - 1;
    v6 = reallocf(v4, 4 * (v1 - 1));
    qword_100020208 = v6;
    v7 = reallocf(v3, 2 * v5);
    v3 = v7;
    qword_100020210 = v7;
    if (!v6 || !v7)
    {
      free(v6);
      qword_100020208 = 0;
      goto LABEL_13;
    }
  }
}

void sub_10000A0C0(int a1)
{
  v1 = read(a1, &unk_100020228 + dword_100021228, 4096 - dword_100021228);
  if (v1 >= 1)
  {
    v6 = v1;
    v7 = &unk_100020228 + dword_100021228 + 1;
    v8 = dword_100021228 + &unk_100020228;
    v9 = 1;
    v10 = &unk_100020228;
    do
    {
      if (*(v7 - 1) == 10)
      {
        *(v7 - 1) = 0;
        v11 = sub_100006FE8(v10, v8 - v10, 0, 4, v2, v3, v4, v5);
        sub_100005A9C(v11, 4);
        v10 = v7;
      }

      ++v7;
      ++v8;
    }

    while (v6 > v9++);
    if (v10 != &unk_100020228)
    {
      __memmove_chk();
      dword_100021228 = v8 - v10;
    }
  }
}

uint64_t sub_10000A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100021230 != -1)
  {
    sub_100013B38();
  }

  sub_100005CC8("%s: init\n", a2, a3, a4, a5, a6, a7, a8, "klog_in");
  if (dword_10002002C < 0)
  {
    v10 = open("/dev/klog", 0, 0);
    dword_10002002C = v10;
    if (v10 < 0)
    {
      v11 = __error();
      strerror(*v11);
      sub_100005CC8("%s: couldn't open %s: %s\n", v12, v13, v14, v15, v16, v17, v18, "klog_in");
      return 0xFFFFFFFFLL;
    }

    if (fcntl(v10, 4, 4) < 0)
    {
      close(dword_10002002C);
      v8 = 0xFFFFFFFFLL;
      dword_10002002C = -1;
      v19 = __error();
      strerror(*v19);
      sub_100005CC8("%s: couldn't set O_NONBLOCK for fd %d (%s): %s\n", v20, v21, v22, v23, v24, v25, v26, "klog_in");
      return v8;
    }

    qword_100021240 = dispatch_source_create(&_dispatch_source_type_read, dword_10002002C, 0, qword_100021238);
    dispatch_source_set_event_handler(qword_100021240, &stru_10001D1B8);
    dispatch_resume(qword_100021240);
  }

  return 0;
}

uint64_t sub_10000A324()
{
  if (dword_10002002C < 0)
  {
    return 1;
  }

  dispatch_source_cancel(qword_100021240);
  dispatch_release(qword_100021240);
  qword_100021240 = 0;
  close(dword_10002002C);
  result = 0;
  dword_10002002C = -1;
  return result;
}

uint64_t sub_10000A388(int a1)
{
  v2 = 0;
  if (a1 == 2)
  {
    asl_memory_statistics(*(&xmmword_1000223E8 + 1), &v2);
  }

  else if (a1 == 1)
  {
    asl_store_statistics();
  }

  return v2;
}

void sub_10000A3E8(int *a1)
{
  if (!a1)
  {
    goto LABEL_280;
  }

  *out_token = 0;
  v1 = a1[1];
  v2 = *a1;
  free(a1);
  sub_100005CC8("%s %d: starting interactive session for %ssocket %d\n", v3, v4, v5, v6, v7, v8, v9, "remote");
  out_token[0] = -1;
  out_token[1] = -1;
  if ((xmmword_100022448 & 2) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = xmmword_100022448 & 1;
  }

  v175 = v10;
  v183 = 0;
  v191 = 0;
  v192 = 0;
  v190 = 0;
  v179 = v1;
  if (v1)
  {
    sleep(1u);
  }

  v195[0] = 0;
  v193 = 0;
  v189 = 0;
  v188 = 0;
  v186 = 0;
  memset(&v185, 0, sizeof(v185));
  memset(&v184, 0, sizeof(v184));
  strcpy(__s, "\n========================\nASL is here to serve you\n");
  v11 = strlen(__s);
  if (write(v2, __s, v11) < 0)
  {
    close(v2);
    goto LABEL_279;
  }

  if (v1)
  {
    strcpy(__s, "> ");
    v12 = strlen(__s);
    if (write(v2, __s, v12) < 0)
    {
      sub_100005CC8("%s %d: terminating session for %ssocket %d\n", v13, v14, v15, v16, v17, v18, v19, "remote");
      v20 = 0;
      if ((v2 & 0x80000000) == 0)
      {
        v176 = 0;
        LODWORD(v21) = 0;
        goto LABEL_270;
      }

      goto LABEL_275;
    }
  }

  v22 = 0;
  v178 = 0;
  v23 = 0;
  v181 = 1 << v2;
  v180 = v2 >> 5;
  v176 = 0;
  for (i = 1; ; i = 1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
LABEL_14:
          v182 = v23;
          v21 = v22;
          if ((v179 & 1) == 0)
          {
            if (i)
            {
              strcpy(__s, "> ");
              v25 = strlen(__s);
              if (write(v2, __s, v25) < 0)
              {
                goto LABEL_268;
              }
            }
          }

          bzero(__s, 0x400uLL);
          memset(&v185, 0, sizeof(v185));
          if (__darwin_check_fd_set_overflow(v2, &v185, 0))
          {
            v185.fds_bits[v180] |= v181;
          }

          v33 = v21;
          memset(&v184, 0, sizeof(v184));
          if (__darwin_check_fd_set_overflow(v2, &v184, 0))
          {
            v184.fds_bits[v180] |= v181;
          }

          v34 = out_token[1];
          v35 = v2;
          if (out_token[1] != -1)
          {
            if (__darwin_check_fd_set_overflow(out_token[1], &v185, 0))
            {
              *(v185.fds_bits + ((v34 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v34;
            }

            v35 = out_token[1];
            if (out_token[1] <= v2)
            {
              v35 = v2;
            }
          }

          v36 = select(v35 + 1, &v185, 0, &v184, 0);
          i = 1;
          v22 = v33;
          v23 = v182;
        }

        while (!v36);
        LODWORD(v21) = v33;
        if (v36 < 0)
        {
          v157 = *__error();
          v158 = __error();
          strerror(*v158);
          sub_100005CC8("%s %d: select %d %s\n", v159, v160, v161, v162, v163, v164, v165, "remote");
          goto LABEL_268;
        }

        if (__darwin_check_fd_set_overflow(v2, &v184, 0) && (v184.fds_bits[v180] & v181) != 0)
        {
          sub_100005CC8("%s %d: error on socket %d\n", v37, v38, v39, v40, v41, v42, v43, "remote");
          goto LABEL_268;
        }

        v44 = out_token[1];
        if (out_token[1] != -1 && __darwin_check_fd_set_overflow(out_token[1], &v185, 0) && ((*(v185.fds_bits + ((v44 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v44) & 1) != 0)
        {
          read(out_token[1], v195, 4uLL);
        }

        if (__darwin_check_fd_set_overflow(v2, &v184, 0) && (v184.fds_bits[v180] & v181) != 0)
        {
          sub_100005CC8("%s %d: socket %d reported error\n", v45, v46, v47, v48, v49, v50, v51, "remote");
          LODWORD(v21) = v33;
          goto LABEL_268;
        }

        v21 = v33;
        if (!__darwin_check_fd_set_overflow(v2, &v185, 0) || (v185.fds_bits[v180] & v181) == 0)
        {
          goto LABEL_214;
        }

        v52 = read(v2, __s, 0x3FFuLL);
        if (v52 < 1)
        {
          v166 = *__error();
          v167 = __error();
          strerror(*v167);
          sub_100005CC8("%s %d: read error on socket %d: %d %s\n", v168, v169, v170, v171, v172, v173, v174, "remote");
          goto LABEL_268;
        }

        if (v52 != 1)
        {
          do
          {
            v53 = __s[v52 - 1];
            v54 = v53 == 13 || v53 == 10;
            if (!v54)
            {
              break;
            }

            __s[v52 - 1] = 0;
          }

          while (v52-- > 2);
        }

        if (*__s == 113 || !(*__s ^ 0x74697571 | __s[4]) || !(*__s ^ 0x74697865 | __s[4]))
        {
          strcpy(__s, "Goodbye\n");
          v149 = strlen(__s);
          write(v2, __s, v149);
          close(v2);
          sub_100005CC8("%s %d: terminating session for %ssocket %d\n", v150, v151, v152, v153, v154, v155, v156, "remote");
          goto LABEL_272;
        }

        if (*__s == 63 || !(*__s ^ 0x706C6568 | __s[4]))
        {
          strcpy(__s, "Commands\n");
          v61 = strlen(__s);
          if ((write(v2, __s, v61) & 0x8000000000000000) == 0)
          {
            strcpy(__s, "    quit                 exit session\n");
            v62 = strlen(__s);
            if ((write(v2, __s, v62) & 0x8000000000000000) == 0)
            {
              strcpy(__s, "    select [val]         get [set] current database\n");
              v63 = strlen(__s);
              if ((write(v2, __s, v63) & 0x8000000000000000) == 0)
              {
                strcpy(__s, "                         val must be file or mem\n");
                v64 = strlen(__s);
                if ((write(v2, __s, v64) & 0x8000000000000000) == 0)
                {
                  strcpy(__s, "    file [on/off]        enable / disable file store\n");
                  v65 = strlen(__s);
                  if ((write(v2, __s, v65) & 0x8000000000000000) == 0)
                  {
                    strcpy(__s, "    memory [on/off]      enable / disable memory store\n");
                    v66 = strlen(__s);
                    if ((write(v2, __s, v66) & 0x8000000000000000) == 0)
                    {
                      strcpy(__s, "    stats                database statistics\n");
                      v67 = strlen(__s);
                      if ((write(v2, __s, v67) & 0x8000000000000000) == 0)
                      {
                        strcpy(__s, "    flush                flush database\n");
                        v68 = strlen(__s);
                        if ((write(v2, __s, v68) & 0x8000000000000000) == 0)
                        {
                          strcpy(__s, "    dbsize [val]         get [set] database size (# of records)\n");
                          v69 = strlen(__s);
                          if ((write(v2, __s, v69) & 0x8000000000000000) == 0)
                          {
                            strcpy(__s, "    watch                print new messages as they arrive\n");
                            v70 = strlen(__s);
                            if ((write(v2, __s, v70) & 0x8000000000000000) == 0)
                            {
                              strcpy(__s, "    stop                 stop watching for new messages\n");
                              v71 = strlen(__s);
                              if ((write(v2, __s, v71) & 0x8000000000000000) == 0)
                              {
                                strcpy(__s, "    raw                  use raw format for printing messages\n");
                                v72 = strlen(__s);
                                if ((write(v2, __s, v72) & 0x8000000000000000) == 0)
                                {
                                  strcpy(__s, "    std                  use standard format for printing messages\n");
                                  v73 = strlen(__s);
                                  if ((write(v2, __s, v73) & 0x8000000000000000) == 0)
                                  {
                                    strcpy(__s, "    *                    show all log messages\n");
                                    v74 = strlen(__s);
                                    if ((write(v2, __s, v74) & 0x8000000000000000) == 0)
                                    {
                                      strcpy(__s, "    * key val            equality search for messages (single key/value pair)\n");
                                      v75 = strlen(__s);
                                      if ((write(v2, __s, v75) & 0x8000000000000000) == 0)
                                      {
                                        strcpy(__s, "    * op key val         search for matching messages (single key/value pair)\n");
                                        v76 = strlen(__s);
                                        if ((write(v2, __s, v76) & 0x8000000000000000) == 0)
                                        {
                                          strcpy(__s, "    * [op key val] ...   search for matching messages (multiple key/value pairs)\n");
                                          v77 = strlen(__s);
                                          if ((write(v2, __s, v77) & 0x8000000000000000) == 0)
                                          {
                                            strcpy(__s, "                         operators:  =  <  >  ! (not equal)  T (key exists)  R (regex)\n");
                                            v78 = strlen(__s);
                                            if ((write(v2, __s, v78) & 0x8000000000000000) == 0)
                                            {
                                              strcpy(__s, "                         modifiers (must follow operator):\n");
                                              v79 = strlen(__s);
                                              if ((write(v2, __s, v79) & 0x8000000000000000) == 0)
                                              {
                                                strcpy(__s, "                                 C=casefold  N=numeric  S=substring  A=prefix  Z=suffix\n");
                                                v80 = strlen(__s);
                                                if ((write(v2, __s, v80) & 0x8000000000000000) == 0)
                                                {
                                                  strcpy(__s, "\n");
                                                  goto LABEL_91;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_268;
        }

        if (*__s == 1952543859 && *&__s[4] == 115)
        {
          sub_10000A388(v175);
          v83 = asl_format_message();
          write(v2, v83, v189);
          free(v83);
          asl_msg_release();
          i = 1;
          v22 = v33;
          v23 = v182;
          goto LABEL_14;
        }

        if (*__s == 1937075302 && *&__s[4] == 104)
        {
          goto LABEL_214;
        }

        if (*__s != 1701602675 || *&__s[4] != 29795)
        {
          break;
        }

        for (j = &__s[6]; ; ++j)
        {
          v85 = *j;
          if (v85 != 9 && v85 != 32)
          {
            break;
          }
        }

        if (!*j)
        {
          if (v175 == 1)
          {
            strcpy(__s, "file store\n");
            v21 = v33;
          }

          else
          {
            v21 = v33;
            if (v175)
            {
              strcpy(__s, "memory store\n");
            }

            else
            {
              strcpy(__s, "no store\n");
            }
          }

          goto LABEL_91;
        }

        if (!strncmp(j, "file", 4uLL))
        {
          if (xmmword_100022448)
          {
            v107 = 1;
LABEL_185:
            v175 = v107;
            v21 = v33;
            goto LABEL_199;
          }

          strcpy(__s, "file database is not enabled\n");
        }

        else if (v85 == 109 && j[1] == 101 && j[2] == 109)
        {
          if ((xmmword_100022448 & 2) != 0)
          {
            v107 = 2;
            goto LABEL_185;
          }

          strcpy(__s, "memory database is not enabled\n");
        }

        else
        {
          strcpy(__s, "unknown database type\n");
        }

        v103 = strlen(__s);
        v82 = write(v2, __s, v103);
        i = 1;
        LODWORD(v21) = v33;
        v22 = v33;
LABEL_94:
        v23 = v182;
        if (v82 < 0)
        {
          goto LABEL_268;
        }
      }

      if (*__s == 1701603686)
      {
        for (k = &__s[4]; ; ++k)
        {
          v60 = *k;
          if (v60 > 0x1F)
          {
            if (v60 != 32)
            {
              if (v60 != 111 || k[1] != 110 || k[2])
              {
LABEL_145:
                if (!strcmp(k, "off"))
                {
                  v96 = xmmword_100022448 & 0xFFFFFFFE;
                  goto LABEL_198;
                }

LABEL_199:
                strcpy(__s, "OK\n");
                goto LABEL_91;
              }

              v96 = xmmword_100022448 | 1;
LABEL_198:
              LODWORD(xmmword_100022448) = v96;
              goto LABEL_199;
            }
          }

          else if (v60 != 9)
          {
            if (*k)
            {
              goto LABEL_145;
            }

            v93 = &unk_100015555;
            if ((xmmword_100022448 & 1) == 0)
            {
              v93 = "not ";
            }

            snprintf(__s, 0x400uLL, "file database is %senabled\n", v93);
            v94 = strlen(__s);
            if ((write(v2, __s, v94) & 0x8000000000000000) == 0)
            {
              v95 = v175;
              if (xmmword_100022448)
              {
                v95 = 1;
              }

              goto LABEL_174;
            }

LABEL_268:
            sub_100005CC8("%s %d: terminating session for %ssocket %d\n", v26, v27, v28, v29, v30, v31, v32, "remote");
            if ((v2 & 0x80000000) == 0)
            {
              if (v179)
              {
LABEL_270:
                sub_100007398(v2);
              }

LABEL_271:
              close(v2);
            }

LABEL_272:
            if (v21 == 1)
            {
              dispatch_resume(qword_1000223D0);
            }

            v20 = v176;
LABEL_275:
            if ((out_token[0] & 0x80000000) == 0)
            {
              v148 = v20;
              notify_cancel(out_token[0]);
              v20 = v148;
            }

            if (v20)
            {
              asl_msg_release();
            }

LABEL_279:
            a1 = 0;
LABEL_280:
            pthread_exit(a1);
          }
        }
      }

      if (*__s == 1869440365 && *&__s[4] == 31090)
      {
        break;
      }

      if (*__s == 1769169508 && *&__s[4] == 25978)
      {
        v99 = &__s[6];
        if (v175)
        {
          while (1)
          {
            v101 = *v99;
            if (v101 != 9 && v101 != 32)
            {
              break;
            }

            ++v99;
          }

          if (*v99)
          {
            v108 = atoi(v99);
            v195[0] = v108;
            if (v175 == 2)
            {
              DWORD2(xmmword_100022448) = v108;
            }

            else if (v175 == 1)
            {
              DWORD1(xmmword_100022448) = v108;
            }

            goto LABEL_199;
          }

          if (v175 == 2)
          {
            v102 = DWORD2(xmmword_100022448);
          }

          else if (v175 == 1)
          {
            v102 = DWORD1(xmmword_100022448);
          }

          else
          {
            v102 = 0;
          }

          snprintf(__s, 0x400uLL, "DB size %u\n", v102);
LABEL_91:
          v81 = strlen(__s);
          v82 = write(v2, __s, v81);
        }

        else
        {
          strcpy(__s, "no store\n");
          v100 = strlen(__s);
          v82 = write(v2, __s, v100);
          v175 = 0;
        }

        i = 1;
        goto LABEL_93;
      }

      if (!(*__s ^ 0x706F7473 | __s[4]))
      {
        if (v33)
        {
          notify_cancel(out_token[0]);
          out_token[0] = -1;
          out_token[1] = -1;
          v183 = 0;
          if (v176)
          {
            free(v176);
          }

          strcpy(__s, "OK\n");
          v106 = strlen(__s);
          v82 = write(v2, __s, v106);
          v22 = 0;
          v176 = 0;
          v178 = 0;
          LODWORD(v21) = 0;
        }

        else
        {
          strcpy(__s, "not watching!\n");
          v109 = strlen(__s);
          v82 = write(v2, __s, v109);
          v22 = 0;
        }

        i = 1;
        goto LABEL_94;
      }

      i = 1;
      v22 = v33;
      v23 = 1;
      if (*__s == 7823730)
      {
        goto LABEL_14;
      }

      v23 = 0;
      v22 = v33;
      if (*__s == 6583411)
      {
        goto LABEL_14;
      }

      if (*__s != 1668571511 || *&__s[4] != 104)
      {
        v89 = __s[0];
        v90 = __s[0] - 33;
        if (v90 <= 0x33 && ((1 << v90) & 0x8000038000201) != 0)
        {
          v190 = 0;
          v191 = 0;
          v192 = 0;
          if (v176)
          {
            free(v176);
            v89 = __s[0];
          }

          v54 = v89 == 42;
          v91 = __s;
          if (v54)
          {
            v91 = &__s[1];
          }

          while (1)
          {
            v92 = *v91;
            if (v92 > 0x51)
            {
              break;
            }

            if (v92 > 0x3E)
            {
              goto LABEL_262;
            }

            if (((1 << v92) & 0x100000200) == 0)
            {
              if (((1 << v92) & 0x7000000200000000) == 0)
              {
                if (!*v91)
                {
                  v110 = 0;
                  v176 = 0;
                  v111 = v33 == 2;
                  i = 1;
                  if ((v179 & 1) == 0 || (v22 = 2, v23 = v182, v33 != 2))
                  {
LABEL_220:
                    v113 = v21;
                    if (v21)
                    {
                      v114 = v178;
                    }

                    else
                    {
                      v114 = 0;
                    }

                    v193 = 0;
                    v183 = 0;
                    sub_100007F48(&v190, &v193, v114, 0, 0, 0, &v183, 0, 0, 0);
                    if (v183 >= v114)
                    {
                      v115 = v183 + 1;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    if (v111)
                    {
                      v114 = v115;
                    }

                    v116 = v193;
                    v178 = v114;
                    if (v193)
                    {
                      v177 = v113;
                      if (v182)
                      {
                        if (v111)
                        {
                          strcpy(__s, "\n");
                          v117 = strlen(__s);
                          if (write(v2, __s, v117) < 0)
                          {
                            LODWORD(v21) = 2;
                            goto LABEL_268;
                          }
                        }

                        v189 = 0;
                        v118 = asl_msg_list_to_string();
                        write(v2, v118, v189);
                        free(v118);
                        strcpy(__s, "\n");
                        v119 = strlen(__s);
                        if (write(v2, __s, v119) < 0)
                        {
LABEL_267:
                          LODWORD(v21) = v177;
                          goto LABEL_268;
                        }

LABEL_249:
                        v21 = v177;
                      }

                      else
                      {
                        v21 = v113;
                        if ((v113 - 1) <= 1)
                        {
                          strcpy(__s, "\n");
                          v120 = strlen(__s);
                          if (write(v2, __s, v120) < 0)
                          {
                            goto LABEL_268;
                          }

                          v116 = v193;
                        }

                        strcpy(__s, "\n");
                        v195[0] = 0;
                        if (*(v116 + 8))
                        {
                          v121 = 0;
                          while (1)
                          {
                            v122 = *(*(v116 + 16) + 8 * v121);
                            v123 = asl_format_message();
                            do
                            {
                              *__error() = 0;
                              if ((write(v2, v123, v189) & 0x80000000) != 0)
                              {
                                v124 = *(v193 + 8);
                                v125 = *__error();
                                v126 = __error();
                                strerror(*v126);
                                sub_100005CC8("%s %d: %d/%d write data failed: %d %s\n", v127, v128, v129, v130, v131, v132, v133, "remote");
                                if (*__error() != 35)
                                {
                                  free(v123);
                                  asl_msg_list_release();
                                  v193 = 0;
                                  goto LABEL_267;
                                }

                                usleep(0x2710u);
                              }
                            }

                            while (*__error() == 35);
                            free(v123);
                            if (HIDWORD(qword_100022458))
                            {
                              usleep(HIDWORD(qword_100022458));
                            }

                            v121 = v195[0] + 1;
                            v195[0] = v121;
                            v116 = v193;
                            if (v121 >= *(v193 + 8))
                            {
                              goto LABEL_249;
                            }
                          }
                        }
                      }

LABEL_250:
                      asl_msg_list_release();
                      v22 = v21;
                      v23 = v182;
                      if (v21 == 1)
                      {
                        sub_10000724C(v2);
                        dispatch_resume(qword_1000223D0);
                        v22 = 2;
                        v23 = v182;
                      }
                    }

                    else
                    {
                      if (v113)
                      {
                        v21 = v113;
                        i = v110;
                        goto LABEL_250;
                      }

                      strcpy(__s, "-nil-\n");
                      v134 = strlen(__s);
                      if (write(v2, __s, v134) < 0)
                      {
                        LODWORD(v21) = 0;
                        goto LABEL_268;
                      }

                      asl_msg_list_release();
                      v22 = 0;
                      i = 1;
                      v23 = v182;
                    }
                  }

                  goto LABEL_14;
                }

LABEL_262:
                v186 = 0;
                asprintf(&v186, "Q [= %s]");
                goto LABEL_213;
              }

LABEL_212:
              v186 = 0;
              asprintf(&v186, "Q [%s]");
              goto LABEL_213;
            }

            ++v91;
          }

          if (v92 == 82 || v92 == 84)
          {
            goto LABEL_212;
          }

          if (v92 != 91)
          {
            goto LABEL_262;
          }

          v186 = 0;
          asprintf(&v186, "Q %s");
LABEL_213:
          v176 = asl_msg_from_string();
          free(v186);
LABEL_214:
          v110 = 0;
          v112 = 1;
LABEL_215:
          v111 = v21 == 2;
          if ((v179 & 1) == 0 || (i = 1, v22 = 2, v23 = v182, v21 != 2))
          {
            if (v176)
            {
              LODWORD(v191) = 1;
              v188 = v176;
              i = v112;
              v192 = &v188;
            }

            else
            {
              v176 = 0;
              i = v112;
            }

            goto LABEL_220;
          }

          goto LABEL_14;
        }

        strcpy(__s, "unrecognized command\n");
        v145 = strlen(__s);
        if (write(v2, __s, v145) < 0)
        {
          goto LABEL_268;
        }

        strcpy(__s, "enter help for help\n");
LABEL_261:
        v146 = strlen(__s);
        v82 = write(v2, __s, v146);
LABEL_93:
        v22 = v21;
        goto LABEL_94;
      }

      if ((v179 & 1) == 0 && v33)
      {
        strcpy(__s, "already watching!\n");
        goto LABEL_261;
      }

      if (v179)
      {
        dispatch_suspend(qword_1000223D0);
        v21 = 1;
LABEL_264:
        strcpy(__s, "OK\n");
        v147 = strlen(__s);
        if (write(v2, __s, v147) < 0)
        {
          goto LABEL_268;
        }

        v110 = 2;
        v112 = 2;
        goto LABEL_215;
      }

      v135 = notify_register_file_descriptor("com.apple.system.logger.message", &out_token[1], 0, out_token);
      if (!v135)
      {
        v21 = 2;
        goto LABEL_264;
      }

      snprintf(__s, 0x400uLL, "notify_register_file_descriptor failed: %d\n", v135);
      v136 = strlen(__s);
      v137 = write(v2, __s, v136);
      v22 = v33;
      v23 = v182;
      if (v137 < 0)
      {
        sub_100005CC8("%s %d: terminating session for %ssocket %d\n", v138, v139, v140, v141, v142, v143, v144, "remote");
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_271;
        }

        goto LABEL_272;
      }
    }

    for (m = &__s[6]; ; ++m)
    {
      v98 = *m;
      if (v98 <= 0x1F)
      {
        break;
      }

      if (v98 != 32)
      {
        if (v98 == 111 && m[1] == 110 && !m[2])
        {
          v96 = xmmword_100022448 | 2;
          goto LABEL_198;
        }

LABEL_178:
        if (strcmp(m, "off"))
        {
          goto LABEL_199;
        }

        v96 = xmmword_100022448 & 0xFFFFFFFD;
        goto LABEL_198;
      }

LABEL_152:
      ;
    }

    if (v98 == 9)
    {
      goto LABEL_152;
    }

    if (*m)
    {
      goto LABEL_178;
    }

    v104 = &unk_100015555;
    if ((xmmword_100022448 & 2) == 0)
    {
      v104 = "not ";
    }

    snprintf(__s, 0x400uLL, "memory database is %senabled\n", v104);
    v105 = strlen(__s);
    if (write(v2, __s, v105) < 0)
    {
      goto LABEL_268;
    }

    v95 = v175;
    if ((xmmword_100022448 & 2) != 0)
    {
      v95 = 2;
    }

LABEL_174:
    v175 = v95;
    v22 = v33;
    v23 = v182;
  }
}

uint64_t sub_10000BB2C(int a1, int a2)
{
  memset(&v45, 0, sizeof(v45));
  v33 = 0;
  if (a2 == 1)
  {
    v3 = 128;
  }

  else
  {
    v3 = 106;
  }

  v36 = v3;
  v37 = 0;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v4 = accept(a1, &v37, &v36);
  if (v4 == -1)
  {
    v8 = __error();
    strerror(*v8);
    sub_100005CC8("%s: accept: %s\n", v9, v10, v11, v12, v13, v14, v15, "remote");
    return 0;
  }

  v5 = v4;
  v35 = fcntl(v4, 3, 0) & 0xFFFFFFFB;
  if (fcntl(v5, 4, v35) < 0)
  {
    v16 = __error();
    strerror(*v16);
    sub_100005CC8("%s: fcntl: %s\n", v17, v18, v19, v20, v21, v22, v23, "remote");
LABEL_15:
    close(v5);
    return 0;
  }

  v34 = 1;
  setsockopt(v5, 0xFFFF, 4130, &v34, 4u);
  if (a2 == 1)
  {
    v35 = 1;
    setsockopt(v5, 6, 1, &v35, 4u);
  }

  v6 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (!v6)
  {
    v24 = __error();
    strerror(*v24);
    sub_100005CC8("%s: malloc: %s\n", v25, v26, v27, v28, v29, v30, v31, "remote");
    goto LABEL_15;
  }

  v7 = v6;
  *v6 = v5;
  if (!a2)
  {
    v6[1] |= 1u;
  }

  pthread_attr_init(&v45);
  pthread_attr_setdetachstate(&v45, 2);
  pthread_create(&v33, &v45, sub_10000A3E8, v7);
  pthread_attr_destroy(&v45);
  return 0;
}

uint64_t sub_10000BD3C()
{
  v0 = socket(1, 1, 0);
  if ((v0 & 0x80000000) != 0)
  {
    v2 = __error();
    strerror(*v2);
    sub_100005CC8("%s: socket: %s\n", v3, v4, v5, v6, v7, v8, v9, "remote");
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  v45 = 1;
  if (setsockopt(v0, 0xFFFF, 512, &v45, 4u) < 0)
  {
    v10 = __error();
    strerror(*v10);
    sub_100005CC8("%s: setsockopt: %s\n", v11, v12, v13, v14, v15, v16, v17, "remote");
LABEL_12:
    close(v1);
    return 0xFFFFFFFFLL;
  }

  mkdir("/var/run/lockdown", 0x1FFu);
  v46 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v46.sa_family = 1;
  __strlcpy_chk();
  unlink(v46.sa_data);
  if (bind(v1, &v46, 0x69u) < 0)
  {
    v18 = __error();
    strerror(*v18);
    sub_100005CC8("%s: bind: %s\n", v19, v20, v21, v22, v23, v24, v25, "remote");
    goto LABEL_12;
  }

  if (fcntl(v1, 4, 4) < 0)
  {
    v26 = __error();
    strerror(*v26);
    sub_100005CC8("%s: fcntl: %s\n", v27, v28, v29, v30, v31, v32, v33, "remote");
    goto LABEL_12;
  }

  if (listen(v1, 5) < 0)
  {
    v34 = __error();
    strerror(*v34);
    sub_100005CC8("%s: listen: %s\n", v35, v36, v37, v38, v39, v40, v41, "remote");
    goto LABEL_12;
  }

  chmod("/var/run/lockdown/syslog.sock", 0x1B6u);
  qword_100021250 = dispatch_source_create(&_dispatch_source_type_read, v1, 0, qword_100021248);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000BFA8;
  handler[3] = &unk_10001D1D8;
  v44 = v1;
  dispatch_source_set_event_handler(qword_100021250, handler);
  dispatch_resume(qword_100021250);
  return v1;
}

uint64_t sub_10000BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100021258 != -1)
  {
    sub_100013B4C();
  }

  sub_100005CC8("%s: init\n", a2, a3, a4, a5, a6, a7, a8, "remote");
  dword_100020030 = sub_10000BD3C();
  return 0;
}

uint64_t sub_10000C03C()
{
  if ((dword_100020030 & 0x80000000) == 0)
  {
    close(dword_100020030);
  }

  dword_100020030 = -1;
  return 0;
}

uint64_t sub_10000C07C()
{
  v0 = launch_data_new_string("CheckIn");
  qword_100022360 = launch_msg(v0);
  launch_data_free(v0);
  if (!qword_100022360)
  {
    sub_100005CC8("%d launchd checkin failed\n", v1, v2, v3, v4, v5, v6, v7, dword_10002237C);
    goto LABEL_16;
  }

  v8 = launch_data_dict_lookup(qword_100022360, "MachServices");
  if (!v8)
  {
    sub_100005CC8("%d launchd lookup of LAUNCH_JOBKEY_MACHSERVICES failed\n", v9, v10, v11, v12, v13, v14, v15, dword_10002237C);
    goto LABEL_16;
  }

  v16 = launch_data_dict_lookup(v8, "com.apple.system.logger");
  if (!v16)
  {
    sub_100005CC8("%d launchd lookup of SERVICE_NAME failed\n", v17, v18, v19, v20, v21, v22, v23, dword_10002237C);
    goto LABEL_16;
  }

  dword_100022358 = launch_data_get_machport(v16);
  v24 = mach_port_allocate(mach_task_self_, 1u, &dword_10002235C);
  if (v24)
  {
    sub_100005CC8("mach_port_allocate dead_session_port failed: %d", v25, v26, v27, v28, v29, v30, v31, v24);
    goto LABEL_16;
  }

  v32 = mach_port_allocate(mach_task_self_, 3u, &dword_100022354);
  if (v32)
  {
    sub_100005CC8("mach_port_allocate listen_set failed: %d", v33, v34, v35, v36, v37, v38, v39, v32);
    goto LABEL_16;
  }

  v40 = mach_port_move_member(mach_task_self_, dword_100022358, dword_100022354);
  if (v40)
  {
    sub_100005CC8("mach_port_move_member server_port failed: %d", v41, v42, v43, v44, v45, v46, v47, v40);
    goto LABEL_16;
  }

  result = mach_port_move_member(mach_task_self_, dword_10002235C, dword_100022354);
  if (result)
  {
    sub_100005CC8("mach_port_move_member dead_session_port failed (%u)", v49, v50, v51, v52, v53, v54, v55, result);
LABEL_16:
    exit(1);
  }

  return result;
}

uint64_t sub_10000C1E4(int a1, const char *a2)
{
  _os_nospin_lock_lock();
  DWORD2(xmmword_100022428) = a1;
  free(qword_100022438);
  qword_100022438 = 0;
  if (a2)
  {
    qword_100022438 = strdup(a2);
  }

  return _os_nospin_lock_unlock();
}

uint64_t sub_10000C25C(int a1, int a2, int a3, int a4)
{
  pthread_mutex_lock(qword_100022398);
  v8 = xmmword_100022448;
  if (xmmword_100022448)
  {
    asl_store_close();
    *&xmmword_1000223E8 = 0;
    v8 = xmmword_100022448;
  }

  if ((v8 & 2) != 0)
  {
    asl_memory_close(*(&xmmword_1000223E8 + 1));
    *(&xmmword_1000223E8 + 1) = 0;
  }

  LODWORD(xmmword_100022448) = a1;
  DWORD1(xmmword_100022448) = a2;
  DWORD2(xmmword_100022448) = a3;
  HIDWORD(xmmword_100022448) = a4;
  v9 = qword_100022398;

  return pthread_mutex_unlock(v9);
}

void sub_10000C2F8(int a1)
{
  *v8 = 0x1500000001;
  if (!a1)
  {
    v4 = asl_msg_new();
    if (!v4)
    {
      return;
    }

    v2 = v4;
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    snprintf(__str, 0x100uLL, "%u", dword_10002237C);
    asl_msg_set_key_val();
    goto LABEL_10;
  }

  bzero(&v6, 0x280uLL);
  v6.ut_type = 2;
  v6.ut_pid = 1;
  v5 = 16;
  if (sysctl(v8, 2u, &v6.ut_tv, &v5, 0, 0) < 0)
  {
    gettimeofday(&v6.ut_tv, 0);
  }

  pututxline(&v6);
  v1 = asl_msg_new();
  if (v1)
  {
    v2 = v1;
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    snprintf(__str, 0x100uLL, "BOOT_TIME %lu %u", v6.ut_tv.tv_sec, v6.ut_tv.tv_usec);
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    snprintf(__str, 0x100uLL, "%lu", v6.ut_tv.tv_sec);
    asl_msg_set_key_val();
    asl_msg_set_key_val();
    snprintf(__str, 0x100uLL, "%u", v6.ut_tv.tv_usec);
    asl_msg_set_key_val();
    v3 = "000";
    if (!v6.ut_tv.tv_usec)
    {
      v3 = &unk_100015555;
    }

    snprintf(__str, 0x100uLL, "%u%s", v6.ut_tv.tv_usec, v3);
LABEL_10:
    asl_msg_set_key_val();
    sub_100005A9C(v2, 1);
  }
}

void start(int a1, uint64_t a2)
{
  *token = 0;
  *out_token = 0;
  v95 = 0;
  name = 0;
  setiopolicy_np(0, 0, 2);
  unk_100022348 = 0u;
  *&dword_100022358 = 0u;
  xmmword_100022368 = 0u;
  unk_100022378 = 0u;
  xmmword_100022388 = 0u;
  *&qword_100022398 = 0u;
  xmmword_1000223A8 = 0u;
  unk_1000223B8 = 0u;
  unk_1000223C8 = 0u;
  *&qword_1000223D8 = 0u;
  xmmword_1000223E8 = 0u;
  unk_1000223F8 = 0u;
  xmmword_100022408 = 0u;
  *&qword_100022418 = 0u;
  xmmword_100022428 = 0u;
  *&qword_100022438 = 0u;
  xmmword_100022448 = 0u;
  *&qword_100022458 = 0u;
  *(&xmmword_100022460 + 8) = 0u;
  *(&xmmword_100022470 + 8) = 0u;
  qword_100022398 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
  pthread_mutex_init(qword_100022398, 0);
  qword_1000223D0 = dispatch_queue_create("Work Queue", 0);
  dispatch_suspend(qword_1000223D0);
  sub_1000053EC();
  dword_100021260 = 1;
  dword_100020034 = 0;
  _malloc_no_asl_log = 1;
  if (a1 < 2)
  {
    v8 = xmmword_100022448;
LABEL_69:
    if (!v8)
    {
      *&xmmword_100022448 = 0x186A00000000001;
    }

    signal(1, 1);
    *v97 = 0u;
    v98 = 0u;
    v95 = time(0);
    ctime_r(&v95, v97);
    BYTE3(v98) = 0;
    sub_100005CC8("\n%s syslogd PID %d starting\n", v17, v18, v19, v20, v21, v22, v23, v97);
    memset(&v101, 0, sizeof(v101));
    if (stat("/var/run/syslog.pid", &v101))
    {
      v24 = 0;
    }

    else
    {
      v24 = (v101.st_mode & 0xF000) == 0x8000;
    }

    v25 = !v24;
    v26 = fopen("/var/run/syslog.pid", "w");
    if (v26)
    {
      v27 = v26;
      fprintf(v26, "%d\n", dword_10002237C);
      fclose(v27);
    }

    sub_10000C2F8(v25);
    notify_register_plain();
    notify_set_state(token[0], 0);
    sub_100005CC8("reading launch plist\n", v28, v29, v30, v31, v32, v33, v34, v89);
    sub_10000C07C();
    sub_100005CC8("initializing modules\n", v35, v36, v37, v38, v39, v40, v41, v90);
    v42 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00407F658587uLL);
    if (v42)
    {
      v51 = v42;
      *v42 = "asl_action";
      v42[2] = 1;
      *(v42 + 2) = sub_100000E7C;
      *(v42 + 3) = sub_1000012D4;
      *(v42 + 4) = sub_10000115C;
      sub_100000E7C(v42, v43, v44, v45, v46, v47, v48, v49);
      v52 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00407F658587uLL);
      if (v52)
      {
        v53 = v52;
        *v52 = "bsd_out";
        v54 = dword_100020034;
        v52[2] = dword_100020034;
        *(v52 + 2) = sub_100004978;
        *(v52 + 3) = sub_100005124;
        *(v52 + 4) = sub_100004FF4;
        if (v54)
        {
          sub_100004978(v52, v43, v44, v45, v46, v47, v48, v49);
          dword_100022404 = 1;
        }

        v55 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00407F658587uLL);
        if (v55)
        {
          v56 = v55;
          *v55 = "klog_in";
          v57 = dword_100020038;
          v55[2] = dword_100020038;
          *(v55 + 2) = sub_10000A1B0;
          *(v55 + 3) = sub_10000A380;
          *(v55 + 4) = sub_10000A324;
          if (v57)
          {
            sub_10000A1B0(v55, v43, v44, v45, v46, v47, v48, v49);
          }

          v58 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00407F658587uLL);
          if (v58)
          {
            v59 = v58;
            *v58 = "udp_in";
            v60 = dword_10002003C;
            v58[2] = dword_10002003C;
            *(v58 + 2) = sub_10000D384;
            *(v58 + 3) = sub_10000D6B4;
            *(v58 + 4) = sub_10000D638;
            if (v60)
            {
              sub_10000D384(v58, v43, v44, v45, v46, v47, v48, v49);
            }

            v61 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00407F658587uLL);
            if (v61)
            {
              v62 = v61;
              *v61 = "remote";
              v63 = dword_100021260;
              v61[2] = dword_100021260;
              *(v61 + 2) = sub_10000BFB4;
              *(v61 + 3) = sub_10000C074;
              *(v61 + 4) = sub_10000C03C;
              if (v63)
              {
                sub_10000BFB4(v61, v43, v44, v45, v46, v47, v48, v49);
              }

              dword_100022400 = 5;
              v64 = malloc_type_calloc(5uLL, 8uLL, 0x2004093837F09uLL);
              *(&xmmword_100022408 + 1) = v64;
              if (v64)
              {
                *v64 = v51;
                *(*(&xmmword_100022408 + 1) + 8) = v53;
                *(*(&xmmword_100022408 + 1) + 16) = v56;
                *(*(&xmmword_100022408 + 1) + 24) = v59;
                *(*(&xmmword_100022408 + 1) + 32) = v62;
                sub_100005CC8("setting up network change notification handler\n", v43, v44, v45, v46, v47, v48, v49, v91);
                notify_register_dispatch("com.apple.system.config.network_change", &out_token[1], qword_1000223D0, &stru_10001D258);
                sub_100005CC8("setting up quota notification handler\n", v65, v66, v67, v68, v69, v70, v71, v92);
                name = 0;
                asprintf(&name, "%s%s", "com.apple.system.notify.service.path:0x87:", "/etc/asl/.noquota");
                if (name)
                {
                  notify_register_dispatch(name, out_token, &_dispatch_main_q, &stru_10001D298);
                  free(name);
                }

                qword_1000223E0 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, &_dispatch_main_q);
                dispatch_source_set_event_handler(qword_1000223E0, &stru_10001D2D8);
                dispatch_resume(qword_1000223E0);
                notify_register_plain();
                if (*(&xmmword_100022460 + 1))
                {
                  qword_1000223D8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
                  dispatch_source_set_event_handler(qword_1000223D8, &stru_10001D358);
                  v79 = qword_1000223D8;
                  v80 = dispatch_time(0, 1000000000 * *(&xmmword_100022460 + 1));
                  dispatch_source_set_timer(v79, v80, 1000000000 * *(&xmmword_100022460 + 1), 0);
                  dispatch_resume(qword_1000223D8);
                }

                sub_100005CC8("starting mach service\n", v72, v73, v74, v75, v76, v77, v78, v93);
                global_queue = dispatch_get_global_queue(0, 0);
                dispatch_async(global_queue, &stru_10001D398);
                sub_100005CC8("starting work queue\n", v82, v83, v84, v85, v86, v87, v88, v94);
                dispatch_resume(qword_1000223D0);
                dispatch_main();
              }

              v50 = "alloc failed (init_modules)\n";
            }

            else
            {
              v50 = "alloc failed (init_modules remote)\n";
            }
          }

          else
          {
            v50 = "alloc failed (init_modules udp_in)\n";
          }
        }

        else
        {
          v50 = "alloc failed (init_modules klog_in)\n";
        }
      }

      else
      {
        v50 = "alloc failed (init_modules bsd_out)\n";
      }
    }

    else
    {
      v50 = "alloc failed (init_modules asl_action)\n";
    }

    sub_100005CC8(v50, v43, v44, v45, v46, v47, v48, v49, v91);
    exit(1);
  }

  v4 = 1;
  do
  {
    v5 = v4 + 1;
    if (!strcmp(*(a2 + 8 * v4), "-config") && v5 < a1)
    {
      v7 = *(a2 + 8 * v5);
      if (*v7 != 45)
      {
        if (!strcmp(*(a2 + 8 * v5), "mac"))
        {
          *&xmmword_100022448 = 0x186A00000000001;
        }

        else if (!strcmp(v7, "appletv"))
        {
          *&xmmword_100022448 = 0x9C400000000001;
        }

        else if (!strcmp(v7, "iphone"))
        {
          LODWORD(xmmword_100022448) = 2;
          dword_100021260 = 1;
        }

        ++v4;
      }
    }

    ++v4;
  }

  while (v4 < a1);
  v8 = xmmword_100022448;
  v9 = 1;
  while (1)
  {
    v10 = *(a2 + 8 * v9);
    if (*v10 == 45)
    {
      if (*(v10 + 1) == 100 && !*(v10 + 2))
      {
        DWORD2(xmmword_100022428) = 1;
        v11 = v9 + 1;
        if (v9 + 1 >= a1 || (v15 = *(a2 + 8 * v11), *v15 == 45))
        {
LABEL_66:
          LODWORD(v11) = v9;
          goto LABEL_68;
        }

        qword_100022438 = strdup(v15);
        goto LABEL_68;
      }

      if (strcmp(*(a2 + 8 * v9), "-db"))
      {
        if (*(v10 + 1) == 109 && !*(v10 + 2))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          *(&xmmword_100022460 + 1) = 60 * atoll(*(a2 + 8 * v11));
          goto LABEL_68;
        }

LABEL_29:
        if (!strcmp(v10, "-utmp_ttl"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          *&xmmword_100022470 = atol(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-mps_limit"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          LODWORD(qword_100022458) = atol(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-dup_delay"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          *&xmmword_100022460 = atoll(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-klog_in"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          dword_100020038 = atoi(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-udp_in"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          dword_10002003C = atoi(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-launchd_in"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          LODWORD(xmmword_100022408) = atoi(*(a2 + 8 * v11));
        }

        else if (!strcmp(v10, "-bsd_out"))
        {
          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          dword_100020034 = atoi(*(a2 + 8 * v11));
        }

        else
        {
          if (strcmp(v10, "-remote"))
          {
            goto LABEL_66;
          }

          v11 = v9 + 1;
          if (v9 + 1 >= a1)
          {
            goto LABEL_66;
          }

          dword_100021260 = atoi(*(a2 + 8 * v11));
        }

        goto LABEL_68;
      }
    }

    else if (strcmp(*(a2 + 8 * v9), "-db"))
    {
      goto LABEL_29;
    }

    v12 = v9 + 1;
    if (v9 + 1 >= a1)
    {
      goto LABEL_66;
    }

    v13 = *(a2 + 8 * v12);
    if (*v13 == 45)
    {
      goto LABEL_66;
    }

    if (!strcmp(*(a2 + 8 * v12), "file"))
    {
      v8 |= 1u;
      LODWORD(xmmword_100022448) = v8;
      v11 = v9 + 2;
      if (v9 + 2 < a1)
      {
        v16 = *(a2 + 8 * v11);
        if (*v16 != 45)
        {
          DWORD1(xmmword_100022448) = atol(v16);
          goto LABEL_68;
        }
      }

LABEL_59:
      LODWORD(v11) = v9 + 1;
      goto LABEL_68;
    }

    if (strcmp(v13, "memory"))
    {
      goto LABEL_59;
    }

    v8 |= 2u;
    LODWORD(xmmword_100022448) = v8;
    v11 = v9 + 2;
    if (v9 + 2 >= a1)
    {
      goto LABEL_59;
    }

    v14 = *(a2 + 8 * v11);
    if (*v14 == 45)
    {
      goto LABEL_59;
    }

    DWORD2(xmmword_100022448) = atol(v14);
LABEL_68:
    v9 = v11 + 1;
    if (v11 + 1 >= a1)
    {
      goto LABEL_69;
    }
  }
}

void sub_10000D0E4(id a1, int a2)
{
  if (dword_10002003C)
  {
    sub_10000D6B4();
    v2 = vars8;
  }

  if (dword_100020034)
  {

    sub_100005124();
  }
}

void sub_10000D128(id a1, int a2)
{
  memset(&v3, 0, sizeof(v3));
  v2 = 0;
  if (stat("/etc/asl/.noquota", &v3))
  {
    asprintf(&v2, "[Sender syslogd] [Level 2] [PID %u] [Facility syslog] [Message *** MESSAGE QUOTAS ENABLED ***]");
  }

  else
  {
    asprintf(&v2, "[Sender syslogd] [Level 2] [PID %u] [Facility syslog] [Message *** MESSAGE QUOTAS DISABLED FOR ALL PROCESSES ***]");
  }

  sub_100006950(v2);
  free(v2);
}

void sub_10000D1C8(id a1)
{
  v8 = sub_100005CC8("SIGHUP reset\n", v1, v2, v3, v4, v5, v6, v7, v13);
  v9 = dword_100022400;
  if (dword_100022400 >= 1)
  {
    v10 = 0;
    v11 = *(&xmmword_100022408 + 1);
    do
    {
      v12 = *(v11 + 8 * v10);
      if (*(v12 + 8))
      {
        v8 = (*(v12 + 24))(v8);
        v11 = *(&xmmword_100022408 + 1);
        v9 = dword_100022400;
      }

      ++v10;
    }

    while (v10 < v9);
  }
}

void sub_10000D244(int a1)
{
  v18 = 128;
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v1 = recvfrom(a1, byte_100021268, 0x1000uLL, 0, &v20, &v18);
  if (v1 < 1)
  {
    return;
  }

  v2 = v1;
  v19[0] = 0;
  if (v20.sa_family == 2)
  {
    v3 = &v20.sa_data[2];
  }

  else
  {
    if (v20.sa_family != 30)
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = &v20.sa_data[6];
  }

  v4 = v19;
  inet_ntop(v20.sa_family, v3, v19, 0x40u);
  sub_100005CC8("%s: fd %d recvfrom %s len %d\n", v5, v6, v7, v8, v9, v10, v11, "udp_in");
LABEL_8:
  byte_100021268[v2] = 0;
  v12 = strrchr(byte_100021268, 10);
  if (v12)
  {
    *v12 = 0;
  }

  v17 = sub_100006FE8(byte_100021268, v2, v4, 3, v13, v14, v15, v16);
  sub_100005A9C(v17, 3);
}

uint64_t sub_10000D384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100022270 != -1)
  {
    sub_100013B60();
  }

  sub_100005CC8("%s: init\n", a2, a3, a4, a5, a6, a7, a8, "udp_in");
  if (dword_100022280 > 0)
  {
    return 0;
  }

  if (qword_100022360)
  {
    v16 = launch_data_dict_lookup(qword_100022360, "Sockets");
    if (v16)
    {
      v24 = launch_data_dict_lookup(v16, "NetworkListener");
      if (v24)
      {
        v32 = v24;
        dword_100022280 = launch_data_array_get_count(v24);
        if (dword_100022280 < 1)
        {
          sub_100005CC8("%s: launchd fd array is empty\n", v33, v34, v35, v36, v37, v38, v39, "udp_in");
        }

        else
        {
          v40 = 0;
          v71 = 0;
          while (1)
          {
            dword_100022284[v40] = -1;
            index = launch_data_array_get_index(v32, v40);
            if (!index)
            {
              break;
            }

            fd = launch_data_get_fd(index);
            v71 = 0x20000;
            if (setsockopt(fd, 0xFFFF, 4098, &v71, 4u) < 0)
            {
              v50 = __error();
              v67 = fd;
              v68 = strerror(*v50);
              sub_100005CC8("%s: couldn't set receive buffer size for file descriptor %d: %s\n", v51, v52, v53, v54, v55, v56, v57, "udp_in");
            }

            if (fcntl(fd, 4, 4, v67, v68) < 0)
            {
              v58 = __error();
              v67 = fd;
              v68 = strerror(*v58);
              sub_100005CC8("%s: couldn't set O_NONBLOCK for file descriptor %d: %s\n", v59, v60, v61, v62, v63, v64, v65, "udp_in");
            }

            dword_100022284[v40] = fd;
            v66 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, qword_100022278);
            qword_1000222C8[v40] = v66;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 0x40000000;
            handler[2] = sub_10000D630;
            handler[3] = &unk_10001D3F8;
            v70 = fd;
            dispatch_source_set_event_handler(v66, handler);
            dispatch_resume(qword_1000222C8[v40]);
            result = 0;
            if (++v40 >= dword_100022280)
            {
              return result;
            }
          }

          sub_100005CC8("%s: launchd file discriptor array element 0 is NULL\n", v42, v43, v44, v45, v46, v47, v48, "udp_in");
        }
      }

      else
      {
        sub_100005CC8("%s: launchd lookup of UDP_SOCKET_NAME failed\n", v25, v26, v27, v28, v29, v30, v31, "udp_in");
      }
    }

    else
    {
      sub_100005CC8("%s: launchd lookup of LAUNCH_JOBKEY_SOCKETS failed\n", v17, v18, v19, v20, v21, v22, v23, "udp_in");
    }
  }

  else
  {
    sub_100005CC8("%s: launchd dict is NULL\n", v8, v9, v10, v11, v12, v13, v14, "udp_in");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000D638()
{
  v0 = dword_100022280;
  if (!dword_100022280)
  {
    return 0xFFFFFFFFLL;
  }

  if (dword_100022280 >= 1)
  {
    v1 = 0;
    do
    {
      v2 = dword_100022284[v1];
      if (v2 != -1)
      {
        close(v2);
        dword_100022284[v1] = -1;
        v0 = dword_100022280;
      }

      ++v1;
    }

    while (v1 < v0);
  }

  result = 0;
  dword_100022280 = 0;
  return result;
}

uint64_t sub_10000D6B4()
{
  v0 = sub_10000D638();
  if (v0)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_10000D384(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t asl_memory_statistics(uint64_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = asl_msg_new();
  if (!v4)
  {
    return 9;
  }

  v5 = v4;
  v6 = *(a1 + 6);
  v7 = ((*(a1 + 7) + 1) << 7) | 0x40;
  if (v6)
  {
    v8 = *a1;
    do
    {
      v9 = *(*v8 + 8);
      if (v9)
      {
        v7 += strlen(v9) + 17;
      }

      else
      {
        v7 += 16;
      }

      v8 += 8;
      --v6;
    }

    while (v6);
  }

  snprintf(__str, 0x100uLL, "%llu", v7);
  asl_msg_set_key_val();
  if (*(a1 + 7))
  {
    v10 = 0;
    v11 = a1[1];
    v12 = *(a1 + 7);
    do
    {
      v13 = *v11++;
      if (*v13)
      {
        ++v10;
      }

      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  snprintf(__str, 0x100uLL, "%u", *(a1 + 7));
  asl_msg_set_key_val();
  snprintf(__str, 0x100uLL, "%u", v10);
  asl_msg_set_key_val();
  snprintf(__str, 0x100uLL, "%u", *(a1 + 6));
  asl_msg_set_key_val();
  snprintf(__str, 0x100uLL, "%lu", a1[6]);
  asl_msg_set_key_val();
  snprintf(__str, 0x100uLL, "%lu", a1[5]);
  asl_msg_set_key_val();
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t asl_memory_close(dispatch_object_t *a1)
{
  if (a1)
  {
    v2 = a1[7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000D9B4;
    block[3] = &unk_10001D418;
    block[4] = a1;
    dispatch_sync(v2, block);
    dispatch_release(a1[7]);
    free(a1);
  }

  return 0;
}

void sub_10000D9B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    if (*(v2 + 28))
    {
      v4 = 0;
      do
      {
        free(*(*(v2 + 8) + 8 * v4));
        *(*(*(a1 + 32) + 8) + 8 * v4++) = 0;
        v2 = *(a1 + 32);
      }

      while (v4 < *(v2 + 28));
      v3 = *(v2 + 8);
    }

    free(v3);
    *(*(a1 + 32) + 8) = 0;
    v2 = *(a1 + 32);
  }

  free(*(v2 + 16));
  *(*(a1 + 32) + 16) = 0;
  v5 = *(a1 + 32);
  v6 = *v5;
  if (*v5)
  {
    if (*(v5 + 24))
    {
      v7 = 0;
      do
      {
        v8 = *v5;
        v9 = v8[v7];
        if (v9)
        {
          free(*(v9 + 8));
          free(*(**(a1 + 32) + 8 * v7));
          v8 = **(a1 + 32);
        }

        v8[v7++] = 0;
        v5 = *(a1 + 32);
      }

      while (v7 < *(v5 + 24));
      v6 = *v5;
    }

    free(v6);
    **(a1 + 32) = 0;
  }
}

uint64_t asl_memory_open(unsigned int a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 2000;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 4096000;
  }

  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040714EAED2uLL);
  if (v6)
  {
    v7 = v6;
    v8 = dispatch_queue_create("ASL Memory Queue", 0);
    *(v7 + 7) = v8;
    if (v8)
    {
      *(v7 + 5) = v5;
      *(v7 + 7) = v4;
      v9 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
      *(v7 + 1) = v9;
      if (v9)
      {
        v10 = 0;
        while (1)
        {
          *(*(v7 + 1) + 8 * v10) = malloc_type_calloc(1uLL, 0x80uLL, 0x10A00402869003AuLL);
          if (!*(*(v7 + 1) + 8 * v10))
          {
            break;
          }

          if (v4 == ++v10)
          {
            v11 = malloc_type_calloc(1uLL, 0x80uLL, 0x10A00402869003AuLL);
            *(v7 + 2) = v11;
            if (v11)
            {
              result = 0;
              *a3 = v7;
              return result;
            }

            break;
          }
        }

        asl_memory_close(v7);
        return 9;
      }

      dispatch_release(*(v7 + 7));
    }

    free(v7);
  }

  return 9;
}

uint64_t asl_memory_save(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1 && *(a1 + 16))
  {
    v3 = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10000DCBC;
    v6[3] = &unk_10001D440;
    v6[4] = &v7;
    v6[5] = a1;
    v6[6] = a2;
    v6[7] = a3;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 2;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10000DCBC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    if (*(a1 + 48))
    {
      *(v3 + 96) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 120) = 0;
      *(v3 + 122) = 7;
      *(v3 + 92) = xmmword_100014A30;
      *(v3 + 108) = -1;
      *(v3 + 8) = -1;
      *(v3 + 88) = -1;
        ;
      }

      v4 = 0;
    }

    else
    {
      v4 = 5;
    }
  }

  else
  {
    v4 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    v7 = **(a1 + 56);
    if (v7)
    {
      **(v5 + 16) = v7;
      v8 = v6;
    }

    else
    {
      v9 = asl_core_new_msg_id();
      v5 = *(a1 + 40);
      **(v5 + 16) = v9;
      **(a1 + 56) = v9;
      v8 = *(v5 + 32);
    }

    v10 = *(*(v5 + 8) + 8 * v8);
    sub_10000E2F4(v5, v10);
    *(*(*(a1 + 40) + 8) + 8 * *(*(a1 + 40) + 32)) = *(*(a1 + 40) + 16);
    *(*(a1 + 40) + 16) = v10;
    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    if ((v12 + 1) < *(v11 + 28))
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 32) = v13;
    while (1)
    {
      v14 = *(a1 + 40);
      if (*(v14 + 48) <= *(v14 + 40))
      {
        break;
      }

      sub_10000E2F4(v14, *(*(v14 + 8) + 8 * *(v14 + 32)));
      v15 = *(a1 + 40);
      v16 = *(v15 + 28);
      v17 = *(v15 + 32);
      if (v17 + 1 < v16)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = 0;
      }

      *(v15 + 32) = v18;
      if (v18 == v6)
      {
        if (v16)
        {
          v19 = 0;
          do
          {
            v20 = *(*(v15 + 8) + 8 * v19);
            v20[6] = 0uLL;
            v20[7] = 0uLL;
            v20[4] = 0uLL;
            v20[5] = 0uLL;
            v20[2] = 0uLL;
            v20[3] = 0uLL;
            *v20 = 0uLL;
            v20[1] = 0uLL;
            ++v19;
          }

          while (v19 < *(v15 + 28));
        }

        v21 = *v15;
        if (*v15)
        {
          v22 = *(v15 + 24);
          if (v22)
          {
            for (i = 0; i < v22; ++i)
            {
              v24 = *v15;
              v25 = *(*v15 + 8 * i);
              if (v25)
              {
                free(*(v25 + 8));
                free(*(*v15 + 8 * i));
                v24 = *v15;
                v22 = *(v15 + 24);
              }

              v24[i] = 0;
            }

            v21 = *v15;
          }

          free(v21);
          *v15 = 0;
        }

        *(v15 + 24) = 0;
        *(*(*(a1 + 32) + 8) + 24) = 9999;
        return;
      }
    }
  }
}

double sub_10000E2F4(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_10000F9A8(a1, *(a2 + 24));
    sub_10000F9A8(a1, *(a2 + 32));
    sub_10000F9A8(a1, *(a2 + 40));
    sub_10000F9A8(a1, *(a2 + 48));
    sub_10000F9A8(a1, *(a2 + 56));
    sub_10000F9A8(a1, *(a2 + 64));
    sub_10000F9A8(a1, *(a2 + 72));
    if (*(a2 + 116))
    {
      v4 = 0;
      do
      {
        sub_10000F9A8(a1, *(*(a2 + 80) + 8 * v4++));
      }

      while (v4 < *(a2 + 116));
    }

    v5 = *(a2 + 80);
    if (v5)
    {
      free(v5);
    }

    result = 0.0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10000E3C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 2;
  }

  result = 1;
  if (a2 && a3)
  {
    *a3 = 0;
    v6 = asl_msg_new();
    if (v6)
    {
      v7 = v6;
      snprintf(__str, 0x40uLL, "%llu", *a2);
      asl_msg_set_key_val();
      snprintf(__str, 0x40uLL, "%u", *(a2 + 122));
      asl_msg_set_key_val();
      if (*(a2 + 8) != -1)
      {
        snprintf(__str, 0x40uLL, "%llu", *(a2 + 8));
        asl_msg_set_key_val();
      }

      if (*(a2 + 88) != -1)
      {
        snprintf(__str, 0x40uLL, "%u", *(a2 + 88));
        asl_msg_set_key_val();
      }

      v8 = *(a2 + 24);
      if (v8)
      {
        v9 = *(v8 + 8);
        asl_msg_set_key_val();
      }

      v10 = *(a2 + 32);
      if (v10)
      {
        v11 = *(v10 + 8);
        asl_msg_set_key_val();
      }

      v12 = *(a2 + 40);
      if (v12)
      {
        v13 = *(v12 + 8);
        asl_msg_set_key_val();
      }

      v14 = *(a2 + 48);
      if (v14)
      {
        v15 = *(v14 + 8);
        asl_msg_set_key_val();
      }

      v16 = *(a2 + 64);
      if (v16)
      {
        v17 = *(v16 + 8);
        asl_msg_set_key_val();
      }

      v18 = *(a2 + 72);
      if (v18)
      {
        v19 = *(v18 + 8);
        asl_msg_set_key_val();
      }

      if (*(a2 + 92) != -1)
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 92));
        asl_msg_set_key_val();
      }

      if (*(a2 + 112))
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 112));
        asl_msg_set_key_val();
      }

      if (*(a2 + 96) != -2)
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 96));
        asl_msg_set_key_val();
      }

      if (*(a2 + 100) != -2)
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 100));
        asl_msg_set_key_val();
      }

      v20 = *(a2 + 56);
      if (v20)
      {
        v21 = *(v20 + 8);
        asl_msg_set_key_val();
      }

      v22 = *(a2 + 120);
      if (v22)
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 104));
        asl_msg_set_key_val();
        v22 = *(a2 + 120);
      }

      if ((v22 & 2) != 0)
      {
        snprintf(__str, 0x40uLL, "%d", *(a2 + 108));
        asl_msg_set_key_val();
      }

      if (*(a2 + 16))
      {
        snprintf(__str, 0x40uLL, "%llu", *(a2 + 16));
        asl_msg_set_key_val();
      }

      v23 = *(a2 + 116);
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          v25 = *(a2 + 80);
          v26 = *(v25 + 8 * v24);
          v27 = v26 ? *(v26 + 8) : 0;
          v28 = *(v25 + 8 * (v24 + 1));
          if (!v28)
          {
            break;
          }

          v29 = *(v28 + 8);
          if (v27)
          {
            goto LABEL_44;
          }

LABEL_45:
          v24 += 2;
          if (v24 >= v23)
          {
            goto LABEL_50;
          }
        }

        if (!v27)
        {
          goto LABEL_45;
        }

LABEL_44:
        asl_msg_set_key_val();
        v23 = *(a2 + 116);
        goto LABEL_45;
      }

LABEL_50:
      result = 0;
      *a3 = v7;
    }

    else
    {
      return 9;
    }
  }

  return result;
}