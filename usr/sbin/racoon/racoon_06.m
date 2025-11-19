void sub_10004676C(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void *sub_1000467A8(uint64_t a1, uint64_t a2)
{
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received disconnect all command.\n", v7, 2u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    do
    {
      v6 = *result;
      sub_100047E54(result, a2);
      result = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_100046844(uint64_t *a1)
{
  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "vpncontrol_close_comm.\n", v12, 2u);
    }
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    *(v3 + 8) = v4;
  }

  *v4 = v3;
  if (*(a1 + 4) != -1)
  {
    dispatch_source_cancel(a1[3]);
    *(a1 + 4) = -1;
  }

  v5 = a1[5];
  if (v5)
  {
    free(v5);
    a1[4] = 0;
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    do
    {
      v7 = *v6;
      sub_100038274(v6[4]);
      v8 = *v6;
      v9 = *(v6 + 1);
      if (*v6)
      {
        *(v8 + 8) = v9;
      }

      *v9 = v8;
      v10 = *(v6 + 7);
      if (v10)
      {
        sub_10003D4F0(v10);
      }

      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  free(a1);
  result = sub_100038F0C();
  dword_100090058 = *(qword_1000900B8 + 64) != 0;
  return result;
}

uint64_t sub_100046964(_OWORD *a1)
{
  for (i = *(qword_1000900B8 + 64); i; i = *i)
  {
    v2 = i + 6;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (*(v2 + 5))
      {
        *a1 = *(v2 + 20);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000469B0(uint64_t result, const void *a2, size_t a3)
{
  if (result)
  {
    v5 = result;
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sending vpn_control xauth need info status\n", buf, 2u);
      }
    }

    v7 = malloc_type_malloc(a3 + 20, 0x1000040A86A77D5uLL);
    if (v7)
    {
      v8 = v7;
      v7[1] = 0;
      v9 = sub_100008158(v5);
      if (v9)
      {
        v10 = v9;
        v8[6] = 0;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        v8[7] = bswap32(a3 + 4) >> 16;
        v11 = sub_10004BFB4(v5) ? 641 : 385;
        *v8 = v11;
        *(v8 + 4) = sub_100008158(v5);
        memcpy(v8 + 10, a2, a3);
        for (i = *(qword_1000900B8 + 64); i; i = *i)
        {
          v13 = i + 6;
          while (1)
          {
            v13 = *v13;
            if (!v13)
            {
              break;
            }

            v14 = *(v13 + 4);
            if (v14 == -1 || v14 == v10)
            {
              if (dword_100090058)
              {
                v16 = ne_log_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  v20 = a3 + 20;
                  _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "vpn control writing %zu bytes\n", buf, 0xCu);
                }
              }

              if (send(*(i + 4), v8, a3 + 20, 0) < 0 && dword_100090058)
              {
                v17 = ne_log_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_1000681FC();
                }
              }

              break;
            }
          }
        }
      }

      free(v8);
      return 0;
    }

    else
    {
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100068250();
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100046C2C(unsigned int a1, unsigned int a2, int a3, unsigned int a4, const void *a5)
{
  v10 = a4;
  v11 = a4 + 24;
  v12 = malloc_type_malloc(v11, 0x1000040504FFAC1uLL);
  if (v12)
  {
    v13 = v12;
    *v12 = 384;
    *(v12 + 2) = 0;
    *(v12 + 10) = 0;
    *(v12 + 7) = bswap32(a4 + 8) >> 16;
    *(v12 + 4) = a3;
    *(v12 + 10) = __rev16(a1);
    *(v12 + 11) = __rev16(a2);
    if (a4)
    {
      memcpy(v12 + 24, a5, v10);
    }

    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10006828C();
      }
    }

    for (i = *(qword_1000900B8 + 64); i; i = *i)
    {
      v16 = i + 6;
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        v17 = *(v16 + 4);
        if (v17 == -1 || v17 == a3)
        {
          v19 = send(*(i + 4), v13, v11, 0);
          if (v19 < 0)
          {
            if (dword_100090058)
            {
              v22 = ne_log_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_100068328();
              }
            }
          }

          else if (dword_100090058)
          {
            v20 = v19;
            v21 = ne_log_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v26 = v20;
              v27 = 2048;
              v28 = v11;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Sent %zd/%zu bytes\n", buf, 0x16u);
            }
          }

          break;
        }
      }
    }

    free(v13);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10006837C();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

const char *sub_100046E94(int a1)
{
  if (a1 > 32800)
  {
    if (a1 > 33024)
    {
      if (a1 == 33025)
      {
        return "Need authentication info";
      }

      if (a1 == 33026)
      {
        return "Need re-authentication info";
      }
    }

    else
    {
      if (a1 == 32801)
      {
        return "Phase 2 started";
      }

      if (a1 == 32802)
      {
        return "Phase 2 established";
      }
    }
  }

  else if (a1 > 32785)
  {
    if (a1 == 32786)
    {
      return "Phase 1 started by peer";
    }

    if (a1 == 32787)
    {
      return "Phase 1 established";
    }
  }

  else
  {
    if (a1 == 32769)
    {
      return "IKE failed";
    }

    if (a1 == 32785)
    {
      return "Phase 1 started by us";
    }
  }

  return &unk_100080609;
}

uint64_t sub_100046F84(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v31 = 0;
  if (a1 || !a3 || (v8 = *(a3 + 408)) == 0 || *(v8 + 1144) == 2)
  {
    v30 = 20;
    v9 = malloc_type_malloc(0x14uLL, 0x9209195AuLL);
    v31 = v9;
    v9[1] = 0;
    if (!a3)
    {
      v14 = v9;
      v15 = sub_10000823C(a4);
      if (v15)
      {
        v11 = v15;
        if (a1)
        {
          v16 = -32735;
        }

        else
        {
          v16 = -32734;
        }

        v13 = bswap32(v16) >> 16;
        goto LABEL_18;
      }

      if (dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100068448();
        }
      }

LABEL_50:
      result = v31;
      if (!v31)
      {
        return result;
      }

      free(v31);
      return 0;
    }

LABEL_6:
    v10 = sub_100008158(a3);
    if (v10)
    {
      v11 = v10;
      if (a2)
      {
        v12 = -32750;
      }

      else
      {
        v12 = -32751;
      }

      if (!a1)
      {
        v12 = -32749;
      }

      v13 = bswap32(v12) >> 16;
      v14 = v31;
LABEL_18:
      *v14 = v13;
      if (dword_100090058)
      {
        v17 = ne_log_obj();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        v14 = v31;
        if (v18)
        {
          v19 = sub_100046E94(bswap32(*v31) >> 16);
          *buf = 136315138;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, ">>>>> phase change status = %s\n", buf, 0xCu);
          v14 = v31;
        }
      }

      v14[6] = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      v14[7] = bswap32(v30 - 16) >> 16;
      *(v14 + 4) = v11;
      for (i = *(qword_1000900B8 + 64); i; i = *i)
      {
        v21 = i + 6;
        while (1)
        {
          v21 = *v21;
          if (!v21)
          {
            break;
          }

          v22 = *(v21 + 4);
          if (v22 == -1 || v22 == v11)
          {
            if (dword_100090058)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                v33 = v30;
                _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "vpn control writing %zu bytes\n", buf, 0xCu);
              }
            }

            if (send(*(i + 4), v31, v30, 0) < 0 && dword_100090058)
            {
              v25 = ne_log_obj();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_1000683F4();
              }
            }

            break;
          }
        }
      }

      goto LABEL_50;
    }

    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000683B8();
      }
    }

    goto LABEL_50;
  }

  if (sub_10004870C(a3, &v31, &v30) == 1)
  {
    return 0;
  }

  if (v31)
  {
    goto LABEL_6;
  }

  if (dword_100090058)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100068250();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000472E8(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 440);
  if (!v3 || (*(v3 + 280) & 1) == 0)
  {
    return 0;
  }

  v6 = sub_100008158(a2);
  result = sub_100047364(a1, v6);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(*(a2 + 440) + 280) &= ~1u;
  return result;
}

uint64_t sub_100047364(int a1, int a2)
{
  v13[1] = 0x800000000000000;
  v13[0] = 897;
  v14 = a2;
  v15 = a1;
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v17 = a1;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sending vpn_control status (peer response) message - code=%d  addr=%x.\n", buf, 0xEu);
    }
  }

  v5 = *(qword_1000900B8 + 64);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = v5 + 6;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 4);
      if (v8 == -1 || v8 == a2)
      {
        v10 = send(*(v5 + 4), v13, 0x18uLL, 0);
        result = 0;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100068484();
          }
        }

        break;
      }
    }

    result = v6;
LABEL_18:
    v5 = *v5;
    v6 = result;
  }

  while (v5);
  return result;
}

uint64_t sub_1000474F4(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 272);
  if (!v3 || (*(v3 + 280) & 1) == 0)
  {
    return 0;
  }

  v6 = sub_10000823C(a2);
  result = sub_100047364(a1, v6);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(*(a2 + 272) + 280) &= ~1u;
  return result;
}

uint64_t sub_100047570()
{
  if (!off_10008C4E0)
  {
    result = 0;
    *(qword_1000900B8 + 28) = -1;
    return result;
  }

  cnt = 0;
  *fds = 0;
  v0 = launch_activate_socket("Listeners", fds, &cnt);
  if (v0)
  {
    if (dword_100090058)
    {
      v1 = v0;
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000684D8(v1);
      }
    }
  }

  else if (*fds)
  {
    if (cnt)
    {
      v4 = **fds;
    }

    else
    {
      v4 = 0;
    }

    free(*fds);
    *(qword_1000900B8 + 28) = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  *(qword_1000900B8 + 28) = 0;
LABEL_11:
  unk_10008F272 = 0u;
  xmmword_10008F258 = 0u;
  unk_10008F268 = 0u;
  xmmword_10008F238 = 0u;
  unk_10008F248 = 0u;
  xmmword_10008F218 = 0u;
  unk_10008F228 = 0u;
  BYTE1(xmmword_10008F218) = 1;
  snprintf(&xmmword_10008F218 + 2, 0x68uLL, "%s", off_10008C4E0);
  v5 = socket(1, 1, 0);
  *(qword_1000900B8 + 28) = v5;
  if (v5 == -1)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100068860();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (fcntl(v5, 4, 4) == -1)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100068558();
      }
    }
  }

  unlink(&xmmword_10008F218 + 2);
  if (bind(*(qword_1000900B8 + 28), &xmmword_10008F218, 0x6Au))
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100068594();
      }
    }

LABEL_42:
    close(*(qword_1000900B8 + 28));
    return 0xFFFFFFFFLL;
  }

  if (chown(&xmmword_10008F218 + 2, dword_100090064, dword_100090068))
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100068628();
      }
    }

    goto LABEL_42;
  }

  if (chmod(&xmmword_10008F218 + 2, word_10008C4E8))
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000686E8();
      }
    }

    goto LABEL_42;
  }

  if (listen(*(qword_1000900B8 + 28), 5))
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100068790();
      }
    }

    goto LABEL_42;
  }

  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *fds = 136315138;
      *&fds[4] = &xmmword_10008F218 + 2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "opened %s as racoon management.\n", fds, 0xCu);
    }
  }

LABEL_29:
  v10 = dispatch_source_create(&_dispatch_source_type_read, *(qword_1000900B8 + 28), 0, &_dispatch_main_q);
  *(qword_1000900B8 + 40) = v10;
  if (v10)
  {
    dispatch_source_set_event_handler_f(v10, sub_100045728);
    v11 = *(qword_1000900B8 + 28);
    v12 = *(qword_1000900B8 + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100047990;
    handler[3] = &unk_10008AC30;
    v18 = v11;
    dispatch_source_set_cancel_handler(v12, handler);
    dispatch_resume(*(qword_1000900B8 + 40));
    return 0;
  }

  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100068824();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t *sub_100047998()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "vpncontrol_close.\n", v4, 2u);
    }
  }

  dispatch_source_cancel(*(qword_1000900B8 + 40));
  v1 = qword_1000900B8;
  *(qword_1000900B8 + 40) = 0;
  *(v1 + 28) = -1;
  result = *(v1 + 64);
  if (result)
  {
    do
    {
      v3 = *result;
      sub_100046844(result);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void sub_100047ACC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100047AE4(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  *v4 = 32768528;
  *(v4 + 1) = *(a1 + 16);
  v6 = v4 + 4;
  v7 = sub_100036448(v4);
  if (!v7)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100068A00(v5);
      }
    }

    goto LABEL_12;
  }

  v8 = v7;
  v9 = *(v7 + 37);
  if (v9)
  {
    v10 = sub_10003A790(v9);
    if (!v10)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000688E8();
        }
      }

LABEL_12:
      v12 = 0xFFFFFFFFLL;
      v14 = v5;
LABEL_38:
      free(v14);
      return v12;
    }
  }

  else
  {
    v10 = sub_1000397E0(v5);
    if (!v10)
    {
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000689CC();
        }
      }

      goto LABEL_12;
    }
  }

  v15 = v10;
  v17 = *(a1 + 20);
  v16 = (a1 + 20);
  if (v17)
  {
    *(v6 + 108) = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    *&v5->sa_len = 32775708;
    nw_nat64_synthesize_v6();
  }

  v18 = sub_10003A790(&v5->sa_len);
  v14 = v18;
  if (!v18)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100068998();
      }
    }

    goto LABEL_36;
  }

  sa_family = v18->sa_family;
  if (sa_family != 2 && sa_family != 30)
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10006891C(&v14->sa_family, v26);
      }
    }

    goto LABEL_36;
  }

  *v18->sa_data = *(*v8 + 2);
  v20 = sub_100004F10(v15);
  if (!sub_10003B444(v15, __rev16(v20)))
  {
LABEL_36:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

  if (dword_100090058)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315138;
      v29 = sub_10003A958(v14);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "accept a request to establish IKE-SA: %s\n", &v28, 0xCu);
    }

    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10003A958(v14);
        v28 = 136315138;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IPSec connecting to server %s\n", &v28, 0xCu);
      }
    }
  }

  v12 = (sub_10001FC6C(0, v8, &v14->sa_len, v15, a2, v16) >> 31);
LABEL_37:
  free(v5);
  free(v15);
  if (v14)
  {
    goto LABEL_38;
  }

  return v12;
}

uint64_t sub_100047E54(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v3 = *(a1 + 16);
  v8[0] = 528;
  v8[1] = v3;
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = sub_10003A958(v8);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IPSec disconnecting from server %s\n", &v6, 0xCu);
    }
  }

  sub_10004B1EC(v8, 0, a2);
  if (sub_100007798(v8) >= 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100047F4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v74 = 0;
  v6 = *(a1 + 16);
  v73[0] = 528;
  v73[1] = v6;
  v7 = sub_1000059F8(0, v73);
  if (v7)
  {
    v8 = v7;
    if ((*(v7 + 17) & 0x20) != 0)
    {
      v11 = __rev16(*(a2 + 26));
      v12 = 24 * v11 + 32;
      if (v12 <= a3)
      {
        if (v12 + 8 * (bswap32(*(a2 + 28)) >> 16) <= a3)
        {
          if (!*(a2 + 26))
          {
            return 0;
          }

          v15 = 0;
          v16 = a2 + 32;
          v66 = v7;
          v67 = a2 + 32 + 24 * v11;
          v70 = v5;
          while (1)
          {
            sub_1000380A4();
            if (!v17)
            {
              break;
            }

            v18 = v17;
            if (*(v16 + 4) == -1)
            {
              v19 = 8;
            }

            else
            {
              v19 = 12;
            }

            v20 = sub_10003D3A8(v19);
            *v18 = v20;
            if (!v20)
            {
              if (dword_100090058)
              {
                v59 = ne_log_obj();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
LABEL_99:
                  sub_100068EC0();
                }
              }

LABEL_91:
              sub_1000382F8(v18);
              goto LABEL_92;
            }

            if (*(v16 + 12) == -1)
            {
              v21 = 8;
            }

            else
            {
              v21 = 12;
            }

            v22 = sub_10003D3A8(v21);
            v18[1] = v22;
            if (!v22)
            {
              if (dword_100090058)
              {
                v60 = ne_log_obj();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_99;
                }
              }

              goto LABEL_91;
            }

            v23 = *(*v18 + 8);
            v24 = *(v16 + 4);
            if (v24 == -1)
            {
              v25 = 1;
            }

            else
            {
              *(v23 + 8) = v24;
              v25 = 4;
            }

            *v23 = v25;
            *(v23 + 4) = *v16;
            *(v23 + 2) = *(v16 + 16);
            v26 = *(v16 + 20);
            *(v23 + 1) = v26;
            v27 = v22[1];
            v28 = *(v16 + 12);
            if (v28 == -1)
            {
              v29 = 1;
            }

            else
            {
              *(v27 + 8) = v28;
              v29 = 4;
            }

            *v27 = v29;
            *(v27 + 4) = *(v16 + 8);
            *(v27 + 2) = *(v16 + 18);
            *(v27 + 1) = v26;
            *(v18 + 26) = *(v5 + 16);
            v18[3] = bswap32(*(a2 + 20));
            v69 = v15;
            if (*(a2 + 24))
            {
              v30 = sub_100001C38(5, __rev16(*(a2 + 24)));
              *(v18 + 9) = v30;
              if (v30 == -1)
              {
                if (dword_100090058)
                {
                  v61 = ne_log_obj();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                  {
                    sub_100068A78();
                  }
                }

                goto LABEL_91;
              }
            }

            else
            {
              v31 = *(*(v8 + 408) + 1140);
              if (v31)
              {
                if (*(v8 + 81) == 4)
                {
                  if (dword_100090058)
                  {
                    v32 = ne_log_obj();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100068B00(v77, v8 + 64, &v78, v32);
                    }
                  }

                  v33 = 64;
                  v34 = 188;
                }

                else
                {
                  if (dword_100090058)
                  {
                    v35 = ne_log_obj();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100068AAC(buf, v8 + 72, v76, v35);
                    }
                  }

                  v33 = 72;
                  v34 = 60;
                }

                v31 = *(*(v8 + v33) + v34);
              }

              *(v18 + 9) = v31;
            }

            v68 = v16;
            v71 = v18;
            v72 = v18 + 6;
            if (*(a2 + 28))
            {
              v36 = 0;
              v37 = v67;
              while (1)
              {
                v38 = sub_100038338();
                if (!v38)
                {
                  break;
                }

                v39 = v38;
                v40 = *v37;
                v41 = __rev16(v40);
                v42 = v37[1];
                v43 = __rev16(v42);
                v44 = v37[2];
                v45 = sub_100001C38(v41, v43);
                *v39 = v45;
                if (v45 == -1)
                {
                  v5 = v70;
                  if (dword_100090058)
                  {
                    v51 = ne_log_obj();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      sub_100068C78();
                    }
                  }

                  goto LABEL_83;
                }

                v46 = a2;
                v47 = sub_100001A50(v41, v43);
                if (v47)
                {
                  if (v44)
                  {
                    v47 = __rev16(v44);
                    if ((sub_100001A80(v41, v43, v47) & 0x80000000) != 0)
                    {
                      if (dword_100090058)
                      {
                        v56 = ne_log_obj();
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                        {
                          sub_100068B54(v47, v56);
                        }
                      }

LABEL_90:
                      free(v39);
                      v5 = v70;
                      v18 = v71;
                      goto LABEL_91;
                    }
                  }
                }

                else if (v44)
                {
                  if (dword_100090058)
                  {
                    v57 = ne_log_obj();
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                    {
                      sub_100068BCC();
                    }
                  }

                  goto LABEL_90;
                }

                v39[1] = v47;
                if ((v40 != 256 || v42 != 4608) && sub_10002E944(v41, v43, v47))
                {
                  v52 = sub_100001DA8(v41);
                  if (v52 == 5)
                  {
                    v53 = 2;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  v5 = v70;
                  if (dword_100090058)
                  {
                    v54 = *v39;
                    v55 = ne_log_obj();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      sub_100068C00(v53, v54);
                    }
                  }

LABEL_83:
                  free(v39);
                  v18 = v71;
                  goto LABEL_91;
                }

                sub_100038354(&v72[v41], v39);
                ++v36;
                v37 += 4;
                a2 = v46;
                if (v36 >= bswap32(*(v46 + 28)) >> 16)
                {
                  goto LABEL_62;
                }
              }

              v5 = v70;
              v18 = v71;
              if (dword_100090058)
              {
                v50 = ne_log_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  sub_100068CAC();
                }
              }

              goto LABEL_91;
            }

LABEL_62:
            if (!*v72)
            {
              v5 = v70;
              v18 = v71;
              if (dword_100090058)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  sub_100068E48(v71);
                }
              }

              goto LABEL_91;
            }

            v5 = v70;
            v18 = v71;
            if (!v71[7])
            {
              if (dword_100090058)
              {
                v63 = ne_log_obj();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  sub_100068DD0(v71);
                }
              }

              goto LABEL_91;
            }

            if (!v71[8])
            {
              if (dword_100090058)
              {
                v64 = ne_log_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  sub_100068D58(v71);
                }
              }

              goto LABEL_91;
            }

            v48 = sub_100037CC0(*v71, v71[1], v71[5], 0);
            if (v48 && !*v48 && !*v71)
            {
              if (dword_100090058)
              {
                v65 = ne_log_obj();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  sub_100068CE0(v71);
                }
              }

              goto LABEL_91;
            }

            sub_1000381B4(v71);
            result = 0;
            v15 = v69 + 1;
            v16 = v68 + 24;
            v8 = v66;
            if (v69 + 1 >= bswap32(*(a2 + 26)) >> 16)
            {
              return result;
            }
          }

          if (dword_100090058)
          {
            v58 = ne_log_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              sub_100068EF4();
            }
          }

LABEL_92:
          sub_100038274(*(v5 + 16));
        }

        else if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100068F28();
          }
        }
      }

      else if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100068F9C();
        }
      }
    }

    else if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100069010();
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100069044();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10004870C(uint64_t a1, void *a2, size_t *a3)
{
  *a2 = 0;
  if (!*(*(a1 + 408) + 1192))
  {
    return 1;
  }

  v6 = sub_1000045D0(*(a1 + 56), 0);
  if (!v6)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000690AC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = (**(*(a1 + 408) + 1192) + 44);
  v9 = (**(*(a1 + 408) + 1192) + 44);
  v10 = malloc_type_calloc(1uLL, v9, 0x4DE22020uLL);
  *a2 = v10;
  if (!v10)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100069078();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v10[1] = 256;
  v12 = *(a1 + 56);
  if (*(v12 + 1) == 2)
  {
    *(v10 + 5) = *(v12 + 4);
  }

  *(v10 + 6) = 0;
  v13 = strlen(v7[5]);
  *(v11 + 14) = 0;
  v14 = v11 + 14;
  v14[1] = 0;
  if (v13 >= 0xFu)
  {
    v15 = 15;
  }

  else
  {
    v15 = v13;
  }

  memcpy(v14, v7[5], v15);
  memcpy(v14 + 2, *(*(*(a1 + 408) + 1192) + 8), **(*(a1 + 408) + 1192));
  *a3 = v9;
  if (dword_100090058)
  {
    v16 = ne_log_obj();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration established.\n", v20, 2u);
  }

  return 0;
}

uint64_t sub_1000488CC(int a1, _WORD *a2, size_t a3)
{
  v24 = 0;
  v23[0] = 528;
  v23[1] = a1;
  v5 = sub_1000059F8(0, v23);
  if (!v5)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000691BC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (!*(v5 + 417))
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100069188();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  if (a3 >= 1)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      if ((*v8 & 0x80) == 0)
      {
        v9 = bswap32(v8[1]) >> 16;
        v7 -= v9;
        v8 = (v8 + v9);
      }

      v7 -= 4;
      v8 += 2;
    }

    while (v7 > 0);
  }

  if (v7)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000690E0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v15 = sub_10003D3A8(a3 + 8);
  if (!v15)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100069154();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  *v15[1] = 0;
  v17 = v15[1];
  *(v17 + 2) = bswap32(*v15) >> 16;
  *(v17 + 4) = 2;
  *(v17 + 6) = *(v6 + 416);
  *(v6 + 417) = 0;
  memcpy((v17 + 8), a2, a3);
  if (dword_100090058)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100069114();
    }
  }

  v13 = sub_100041F14(v6, v16, 14, 1, 0, 0, *(v6 + 424));
  v19 = *(v6 + 424);
  if (v19)
  {
    sub_10003D4F0(v19);
    *(v6 + 424) = 0;
  }

  sub_10004C10C(v6);
  if (dword_100090058)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IPSec Extended Authentication sent.\n", v22, 2u);
    }
  }

  sub_10003D4F0(v16);
  return v13;
}

uint64_t sub_100048B70(uint64_t a1, uint64_t a2)
{
  result = sub_10004D3C8(a1, a2);
  if (result)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000691F0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_100048BC8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100048BF4(int a1, unsigned int a2)
{
  v2 = a2 / 0xA;
  if (a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = -2;
  }

  v4 = __CFADD__(v3, a2);
  v5 = v3 + a2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = 8 * v2;
  v7 = 9 * v2;
  if (!a1)
  {
    v7 = v6;
  }

  if (a2 >= 0xA)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100048C34(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315138;
        v4 = sub_10003A5E8((v1 + 128));
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "New IKE Session to %s.\n", &v3, 0xCu);
      }
    }

    return sub_100048CF4(v1);
  }

  return result;
}

uint64_t sub_100048CF4(__int128 *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x6C0uLL, 0x10B00402B0E598BuLL);
    v3 = v2;
    if (v2)
    {
      bzero(v2, 0x6C0uLL);
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      *(v3 + 56) = a1[3];
      *(v3 + 40) = v6;
      *(v3 + 24) = v5;
      *(v3 + 8) = v4;
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *(v3 + 120) = a1[7];
      *(v3 + 104) = v9;
      *(v3 + 88) = v8;
      *(v3 + 72) = v7;
      v10 = a1[8];
      v11 = a1[9];
      v12 = a1[10];
      *(v3 + 184) = a1[11];
      *(v3 + 168) = v12;
      *(v3 + 152) = v11;
      *(v3 + 136) = v10;
      v13 = a1[12];
      v14 = a1[13];
      v15 = a1[14];
      *(v3 + 248) = a1[15];
      *(v3 + 232) = v15;
      *(v3 + 216) = v14;
      *(v3 + 200) = v13;
      *(v3 + 1696) = 0u;
      v16 = qword_100090070;
      *(v3 + 1712) = qword_100090070;
      if (v16)
      {
        *(v16 + 1720) = v3 + 1712;
      }

      qword_100090070 = v3;
      *(v3 + 1720) = &qword_100090070;
    }
  }

  else
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100069224(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100048E14(uint64_t a1)
{
  for (i = *(a1 + 1704); i; i = *(a1 + 1704))
  {
    sub_100048E58(i);
  }

  while (1)
  {
    result = *(a1 + 1696);
    if (!result)
    {
      break;
    }

    sub_100048F2C(result);
  }

  return result;
}

uint64_t sub_100048E58(void *a1)
{
  if (a1 && a1[34])
  {
    sub_100038794(a1);
    if (a1[32])
    {
      a1[32] = 0;
      v2 = a1[39];
      v3 = a1[40];
      if (v2)
      {
        *(v2 + 320) = v3;
      }

      *v3 = v2;
    }

    v4 = a1[37];
    v5 = a1[38];
    if (v4)
    {
      *(v4 + 304) = v5;
    }

    *v5 = v4;
    v6 = a1[34];
    a1[34] = 0;
    v7 = *(v6 + 360) - 1;
    *(v6 + 360) = v7;
    if (!(*(v6 + 352) | v7))
    {
      *(v6 + 280) |= 2u;
      sub_100049CE4(v6);
    }

    sub_100006690(a1);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006929C(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100048F2C(uint64_t a1)
{
  if (a1 && *(a1 + 440))
  {
    if (*(a1 + 80) == 16 && *(a1 + 448))
    {
      sub_100049AAC(a1);
    }

    sub_100038794(a1);
    v2 = *(a1 + 440);
    v3 = *(a1 + 456);
    v4 = *(a1 + 464);
    if (v3)
    {
      *(v3 + 464) = v4;
    }

    *v4 = v3;
    *(a1 + 440) = 0;
    v5 = *(v2 + 352) - 1;
    *(v2 + 352) = v5;
    if (!v5 && !*(v2 + 360))
    {
      *(v2 + 280) |= 2u;
      sub_100049CE4(v2);
    }

    sub_100005B80(a1);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100069314(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100049000(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (!a1 || !a2)
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10006938C(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    return 0;
  }

  v8 = sub_10003B344(a2);
  memset(__s2, 0, sizeof(__s2));
  memset(v48, 0, sizeof(v48));
  memset(v49, 0, sizeof(v49));
  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  memset(v44, 0, sizeof(v44));
  memset(v45, 0, sizeof(v45));
  v9 = *(a1 + 1);
  if (v9 == 30)
  {
    __s2[0] = *a1;
    v18 = __s2[0];
    *&__s2[0].sa_data[10] = *(a1 + 12);
    v48[0] = v18;
    *(v48 + 12) = *&__s2[0].sa_data[10];
    v46[0] = v18;
    *(v46 + 12) = *&__s2[0].sa_data[10];
    v44[0] = v18;
    *(v44 + 12) = *&__s2[0].sa_data[10];
  }

  else if (v9 == 2)
  {
    __s2[0] = *a1;
    v48[0] = __s2[0];
    v46[0] = __s2[0];
    v44[0] = __s2[0];
  }

  sub_10003B444(v48, 0x1F4u);
  sub_10003B444(v46, 0x1194u);
  sub_10003B444(v44, 0);
  v19 = *(a2 + 1);
  if (v19 == 30)
  {
    __s2[8] = *a2;
    v20 = __s2[8];
    *&__s2[8].sa_data[10] = *(a2 + 12);
    v49[0] = v20;
    *(v49 + 12) = *&__s2[8].sa_data[10];
    v47[0] = v20;
    *(v47 + 12) = *&__s2[8].sa_data[10];
    v45[0] = v20;
    *(v45 + 12) = *&__s2[8].sa_data[10];
  }

  else if (v19 == 2)
  {
    __s2[8] = *a2;
    v49[0] = __s2[8];
    v47[0] = __s2[8];
    v45[0] = __s2[8];
  }

  sub_10003B444(v49, 0x1F4u);
  sub_10003B444(v47, 0x1194u);
  sub_10003B444(v45, 0);
  if (dword_100090058)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100069404(a2);
    }
  }

  v22 = qword_100090070;
  if (!qword_100090070)
  {
LABEL_50:
    if (a3)
    {
      if (dword_100090058)
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_1000696CC(__s2);
        }
      }

      return sub_100048CF4(__s2);
    }

    return 0;
  }

  v23 = 0;
  do
  {
    v24 = v23;
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_10006947C(v42, v22, &v43, v25);
      }
    }

    if ((*(v22 + 280) & 2) != 0 || (*(v22 + 264) & 0x20) != 0 || *(v22 + 336) || *(v22 + 344))
    {
      if (dword_100090058)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = sub_10003A5E8((v22 + 136));
          v28 = *(v22 + 352);
          v29 = *(v22 + 360);
          *buf = 136315650;
          v37 = v27;
          v38 = 1024;
          v39 = v28;
          v40 = 1024;
          v41 = v29;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "still searching. skipping... session to %s is already stopped, active ph1 %d ph2 %d.\n", buf, 0x18u);
        }
      }

LABEL_29:
      v23 = v24;
      goto LABEL_30;
    }

    if (a4 && !sub_100005538(v22, a4))
    {
      goto LABEL_29;
    }

    if (!memcmp((v22 + 8), __s2, 0x100uLL))
    {
      if (dword_100090058)
      {
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_100069654(a2);
        }
      }

      return v22;
    }

    if (v8 && v8 != 4500 && v8 != 500)
    {
      goto LABEL_42;
    }

    if (!memcmp((v22 + 8), v48, 0x100uLL))
    {
      if (dword_100090058)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100069560(a2);
        }
      }

      return v22;
    }

    if ((*(v22 + 264) & 2) != 0 && !memcmp((v22 + 8), v46, 0x100uLL))
    {
      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_1000694E8(a2);
        }
      }

      return v22;
    }

    v23 = v22;
    if (memcmp((v22 + 8), v44, 0x100uLL))
    {
LABEL_42:
      if (a4)
      {
        v23 = v22;
      }

      else
      {
        v23 = v24;
      }
    }

LABEL_30:
    v22 = *(v22 + 1712);
  }

  while (v22);
  if (!v23)
  {
    goto LABEL_50;
  }

  if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000695D8(v23);
    }
  }

  return v23;
}

uint64_t sub_100049540(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 64);
    if (v1)
    {
      v2 = v1[57];
      if (v2 || v1[54])
      {
        v3 = *(result + 440);
        if (!v3[93])
        {
          v3[93] = v2;
        }

        if (!v3[94])
        {
          v3[94] = v1[58];
        }

        if (!v3[92])
        {
          v4 = v1[54];
          if (v4 && (v1[56] - 1) <= 1)
          {
            if (v4 <= v2)
            {
              v5 = v2;
            }

            else
            {
              v5 = v1[54];
            }

            if (v4 >= v2)
            {
              v6 = v2;
            }

            else
            {
              v6 = v4;
            }

            if (v2)
            {
              v2 = v6;
            }

            else
            {
              v2 = v6;
              if ((v4 & 0x80000000) == 0)
              {
                v7 = v5 / 0x14u;
                if (v5 < 6)
                {
                  v8 = 1;
                }

                else
                {
                  v8 = 3;
                }

                if (v4 <= 59)
                {
                  v7 = v8;
                }

LABEL_33:
                v3[92] = v7;
                return result;
              }
            }
          }

          else if (!v2)
          {
            return result;
          }

          if (v2 < 6)
          {
            v9 = 1;
          }

          else
          {
            v9 = 3;
          }

          if (v2 <= 59)
          {
            v7 = v9;
          }

          else
          {
            v7 = v2 / 0x14u;
          }

          goto LABEL_33;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100049618(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 272);
    if (v2)
    {
      if (!*(result + 48) && (*(v2 + 264) & 4) == 0)
      {
        v3 = *(result + 128);
        if (v3)
        {
          result = sub_10000CE4C(v3);
          if (result)
          {
            v4 = v1[16];
LABEL_11:
            result = sub_10000CE8C(v4);
            if (!result)
            {
              return result;
            }

            *(v1[34] + 264) &= ~4u;
            *(v1[34] + 264) |= 8u;
            v5 = v1[34];
            v6 = *(v5 + 264) & 0xFFEF;
            goto LABEL_14;
          }
        }

        else
        {
          result = v1[15];
          if (!result)
          {
            return result;
          }

          result = sub_10000CE4C(result);
          if (result)
          {
            v4 = v1[15];
            goto LABEL_11;
          }
        }

        *(v1[34] + 264) &= ~4u;
        *(v1[34] + 264) &= ~8u;
        v5 = v1[34];
        v6 = *(v5 + 264) | 0x10;
LABEL_14:
        *(v5 + 264) = v6;
      }
    }
  }

  return result;
}

uint64_t sub_1000496EC(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    gettimeofday((a1 + 304), 0);
    if (*(a2 + 24))
    {
      *(a1 + 264) = *(a1 + 264) & 0xFFE3 | 4;
    }

    *(a2 + 440) = a1;
    v4 = *(a1 + 1696);
    *(a2 + 456) = v4;
    if (v4)
    {
      *(v4 + 464) = a2 + 456;
    }

    *(a1 + 1696) = a2;
    *(a2 + 464) = a1 + 1696;
    ++*(a1 + 352);
    v5 = *(a1 + 356);
    if ((v5 || *(a2 + 20)) && !*(a2 + 24))
    {
      v6 = *(a1 + 264);
      if (!v5)
      {
LABEL_20:
        *(a1 + 356) = v5 + 1;
        sub_100049540(a2);
        return 0;
      }
    }

    else
    {
      v6 = *(a1 + 264) | 0x400;
      *(a1 + 264) = v6;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    if ((v6 & 1) != 0 && *(a2 + 80) == 16)
    {
      *(a2 + 432) |= 1u;
      v5 = *(a1 + 356);
    }

    goto LABEL_20;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100069748(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10004980C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 272))
    {
      v4 = dword_100090058 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000697C0(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    *(a2 + 272) = a1;
    v13 = *(a1 + 1704);
    *(a2 + 296) = v13;
    if (v13)
    {
      *(v13 + 304) = a2 + 296;
    }

    *(a1 + 1704) = a2;
    *(a2 + 304) = a1 + 1704;
    ++*(a1 + 360);
    v14 = *(a1 + 364);
    if (!v14 && !*(a2 + 60))
    {
      *(a1 + 264) |= 0x400u;
    }

    if (!*(a2 + 48) && v14 && (*(a1 + 264) & 1) != 0 && *(a2 + 61) == 16)
    {
      *(a2 + 264) |= 1u;
      v14 = *(a1 + 364);
    }

    *(a1 + 364) = v14 + 1;
    sub_100049618(a2);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100069838(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100049944(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100069928(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a2[32])
  {
    if (a2[34] || !sub_10004980C(*(a1 + 440), a2))
    {
      sub_100049A20(a1, a2);
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000698B0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2[32] == a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100049A20(uint64_t a1, void *a2)
{
  if (a2[32])
  {
    v4 = dword_100090058 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000699A0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  a2[32] = a1;
  v13 = (a1 + 448);
  v14 = *(a1 + 448);
  a2[39] = v14;
  if (v14)
  {
    *(v14 + 320) = a2 + 39;
  }

  *v13 = a2;
  a2[40] = v13;
}

uint64_t sub_100049AAC(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100069A18(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    return 0;
  }

  v2 = *(a1 + 440);
  if (!v2)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = "ike_session_update_ph1_ph2tree";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "invalid parent session in %s.\n", &v22, 0xCu);
      }
    }

    return 0;
  }

  v3 = *(v2 + 1696);
  if (!v3)
  {
LABEL_7:
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "no ph1bind replacement found. NULL ph1.\n", &v22, 2u);
      }
    }

    v5 = *(a1 + 448);
    if (v5)
    {
      do
      {
        v6 = v5[39];
        if (v5[32])
        {
          v5[32] = 0;
          v7 = v5[40];
          if (v6)
          {
            v6[40] = v7;
          }

          *v7 = v6;
        }

        v5 = v6;
      }

      while (v6);
    }

    return 0;
  }

  while ((*(v3 + 432) & 2) != 0 || (*(v3 + 17) & 0x20) == 0)
  {
    v3 = *(v3 + 456);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (v3 == a1)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "no ph1bind replacement found. same ph1.\n", &v22, 2u);
      }
    }

    v19 = *(a1 + 448);
    if (v19)
    {
      do
      {
        v20 = v19[39];
        if (v19[32])
        {
          v19[32] = 0;
          v21 = v19[40];
          if (v20)
          {
            v20[40] = v21;
          }

          *v21 = v20;
        }

        v19 = v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_100049EAC(a1, v3);
  }

  return v3;
}

void sub_100049CE4(unsigned int *a1)
{
  if (a1)
  {
    v2 = a1[95];
    if (v2)
    {
      sub_100038740(v2);
      a1[95] = 0;
    }

    v3 = a1[96];
    if (v3)
    {
      sub_100038740(v3);
      a1[96] = 0;
    }

    v4 = a1[423];
    if (v4)
    {
      sub_100038740(v4);
      a1[423] = 0;
    }

    if ((*(a1 + 38) || a1[78]) && !*(a1 + 42) && !a1[86])
    {
      gettimeofday(a1 + 21, 0);
    }

    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = sub_10003A5E8((a1 + 34));
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Freeing IKE-Session to %s.\n", &v8, 0xCu);
      }
    }

    v6 = *(a1 + 214);
    v7 = *(a1 + 215);
    if (v6)
    {
      *(v6 + 1720) = v7;
    }

    *v7 = v6;
    free(a1);
  }
}

void *sub_100049E14(void *result)
{
  if (result[32])
  {
    result[32] = 0;
    v1 = result[39];
    v2 = result[40];
    if (v1)
    {
      *(v1 + 320) = v2;
    }

    *v2 = v1;
  }

  return result;
}

uint64_t sub_100049E34(uint64_t a1)
{
  if (a1)
  {
    for (result = *(a1 + 1696); result; result = *(result + 456))
    {
      if ((*(result + 432) & 2) == 0 && (*(result + 17) & 0x20) != 0)
      {
        break;
      }
    }
  }

  else
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100069A90(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    return 0;
  }

  return result;
}

void sub_100049EAC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100069C10(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else if (*(a1 + 440) == *(a2 + 440))
  {
    v19 = *(a1 + 448);
    while (v19)
    {
      v20 = v19;
      v19 = *(v19 + 312);
      if (*(v20 + 272) != *(a2 + 440) && dword_100090058 != 0)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100069B80(&v25, v26, v22);
        }
      }

      if (*(v20 + 256) == a2 && dword_100090058 != 0)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100069BC0(buf, &v28, v24);
        }
      }

      sub_10004A0E8(a2, v20);
    }
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100069B08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t sub_10004A040(uint64_t a1)
{
  if (a1 && !*(a1 + 48))
  {
    v12 = sub_100049E34(*(a1 + 272));
    v10 = v12;
    if (v12)
    {
      v13 = *(a1 + 256);
      if (!v13 || v12 == v13)
      {
        if (!v13)
        {
          sub_100049A20(v12, a1);
        }
      }

      else
      {
        sub_10004A0E8(v12, a1);
      }
    }
  }

  else
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100069C88(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    return 0;
  }

  return v10;
}

void sub_10004A0E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256))
  {
    *(a2 + 256) = 0;
    v4 = *(a2 + 312);
    v5 = *(a2 + 320);
    if (v4)
    {
      *(v4 + 320) = v5;
    }

    *v5 = v4;
  }

  sub_100049A20(a1, a2);
  v6 = *(a2 + 240);
  if (v6)
  {
    sub_10002B6C4(v6);
    if ((*(a1 + 17) & 0x20) != 0)
    {
      *(a2 + 240) = sub_10002B73C(a1, *(a2 + 108));
      if (dword_100090058)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phase 1-2 binding changed... recalculated ivm.\n", v8, 2u);
        }
      }
    }

    else
    {
      *(a2 + 240) = 0;
    }
  }
}

uint64_t sub_10004A1B4(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100069D00(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    return 0;
  }

  v1 = *(a1 + 1696);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if ((*(v1 + 432) & 2) == 0)
    {
      v3 = *(v1 + 16);
      if ((v3 & 0x3000) != 0 && (!result || v3 > *(result + 16)))
      {
        result = v1;
      }
    }

    v1 = *(v1 + 456);
  }

  while (v1);
  return result;
}

uint64_t sub_10004A248(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 1696);
    if (v2)
    {
      while (v2 == a2 || (*(v2 + 432) & 2) != 0 || (*(v2 + 17) & 0x20) == 0 || !*(v2 + 116))
      {
        v2 = *(v2 + 456);
        if (!v2)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10004A28C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100069D78(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    return 0;
  }

  v2 = *(a1 + 1696);
  if (!v2)
  {
    return 0;
  }

  while (v2 == a2 || (*(v2 + 432) & 2) != 0 || (*(v2 + 17) & 0x10) == 0)
  {
    v2 = *(v2 + 456);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10004A310(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100069DF0(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    return 0;
  }

  v2 = *(a1 + 1704);
  if (!v2)
  {
    return 0;
  }

  while (v2 == a2 || *(v2 + 48) || (*(v2 + 264) & 2) != 0 || *(a2 + 52) != *(v2 + 52) || (*(v2 + 57) & 0x20) == 0)
  {
    v2 = *(v2 + 296);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10004A3AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100069E68(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  v2 = *(a1 + 1704);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a2 + 52);
        v6 = *(v2 + 52);
        *buf = 136315650;
        v17 = "ike_session_has_other_negoing_ph2";
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: ph2 sub spid %d, db spid %d\n", buf, 0x18u);
      }
    }

    if (v2 != a2 && !*(v2 + 48) && (*(v2 + 264) & 2) == 0 && *(a2 + 52) == *(v2 + 52) && (*(v2 + 57) & 0x10) != 0)
    {
      break;
    }

    v2 = *(v2 + 296);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10004A528(uint64_t *a1)
{
  v1 = a1[55];
  if (v1)
  {
    v3 = sub_10003B344(a1[7]);
    sub_10003B444(v1 + 8, v3);
    v4 = sub_10003B344(a1[6]);
    sub_10003B444(v1 + 136, v4);
    *(a1[55] + 264) |= 2u;
    for (i = *(a1[55] + 1704); i; i = i[37])
    {
      v6 = *i;
      v7 = i[1];
      v8 = sub_10003B344(a1[7]);
      sub_10003B444(v6, v8);
      v9 = sub_10003B344(a1[6]);
      sub_10003B444(v7, v9);
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "ike_session_ikev1_float_ports";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "invalid parent session in %s.\n", &v11, 0xCu);
    }
  }
}

void sub_10004A668(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (!v2 || *(a1 + 48))
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100069EE0(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    return;
  }

  if (*(v2 + 1692))
  {
    sub_100038740(*(v2 + 1692));
    v2 = *(a1 + 272);
    *(v2 + 1692) = 0;
  }

  if (*(v2 + 264))
  {
    if ((*(v2 + 280) & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    gettimeofday((v2 + 320), 0);
    *(*(a1 + 272) + 264) |= 1u;
    v2 = *(a1 + 272);
  }

  sub_10004A814(v2);
LABEL_13:
  *(*(a1 + 272) + 280) &= ~4u;
  *(*(a1 + 272) + 296) = 0;
  sub_100049618(a1);
  if (*(a1 + 61) == 16 && *(a1 + 256))
  {
    *(a1 + 256) = 0;
    v11 = *(a1 + 312);
    v12 = *(a1 + 320);
    if (v11)
    {
      *(v11 + 320) = v12;
    }

    *v12 = v11;
  }

  sub_1000474F4(1, a1);
  if (dword_100090058)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 52);
      v15 = 136315394;
      v16 = "ike_session_ph2_established";
      v17 = 1024;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: ph2 established, spid %d\n", &v15, 0x12u);
    }
  }
}

uint64_t sub_10004A814(int *a1)
{
  v2 = a1[92];
  if (v2)
  {
    a1[95] = sub_100038550(v2, sub_10004CEB0, a1);
  }

  result = a1[93];
  if (result)
  {
    result = sub_100038550(result, sub_10004D068, a1);
    a1[96] = result;
  }

  return result;
}

void *sub_10004A87C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x4000) != 0)
  {
    result = sub_100038550(1, sub_100022638, a1);
    *(a1 + 112) = result;
  }

  else
  {
    if ((v2 & 0x2000) != 0)
    {
      sub_100017EF4(a1);
    }

    return sub_100020614(a1);
  }

  return result;
}

void sub_10004A8F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 440);
      if (v4)
      {
        if (a1 != a2 && v4 == *(a2 + 440))
        {
          if ((*(v4 + 264) & 0x400) != 0 && *(a1 + 20) == 1)
          {
            return;
          }

          v5 = *(a2 + 112);
          if (v5)
          {
            sub_100038740(v5);
            *(a2 + 112) = 0;
          }

          v6 = *(a2 + 116);
          if (v6)
          {
            sub_100038740(v6);
            *(a2 + 116) = 0;
          }

          *(a2 + 432) |= 2u;
          v7 = sub_10003A5E8(*(a2 + 56));
          v8 = strdup(v7);
          v9 = sub_10003A5E8(*(a2 + 48));
          v10 = strdup(v9);
          v11 = sub_100021944(a2, 0);
          v12 = strdup(v11);
          if (v8)
          {
            if (v10)
            {
              v13 = v12;
              if (v12)
              {
                if (dword_100090058)
                {
                  v14 = ne_log_obj();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = 136315906;
                    v28 = v8;
                    v29 = 2080;
                    v30 = v10;
                    v31 = 2080;
                    v32 = v13;
                    v33 = 2080;
                    v34 = sub_100021944(a1, 0);
                    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA %s-%s (spi:%s) needs to be deleted, replaced by (spi:%s)\n", &v27, 0x2Au);
                  }
                }

                free(v8);
                free(v10);
                free(v13);
                sub_100049EAC(a2, a1);
                if (*(a2 + 20))
                {
                  v15 = 7;
                }

                else
                {
                  v15 = 5;
                }

                *(a2 + 112) = sub_100038550(v15, sub_10004A8F0, a2);
                return;
              }

              if (dword_100090058)
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_34;
                }
              }

LABEL_35:
              exit(1);
            }

            if (!dword_100090058)
            {
              goto LABEL_35;
            }

            v25 = ne_log_obj();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!dword_100090058)
            {
              goto LABEL_35;
            }

            v24 = ne_log_obj();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          sub_100069F58();
          goto LABEL_35;
        }
      }
    }
  }

  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100069F94(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

void sub_10004AB90(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a2 + 440) == a1)
  {
    if ((*(a1 + 264) & 0x400) == 0 || *(a2 + 20) != 1)
    {
      v11 = *(a1 + 1696);
      while (v11)
      {
        v12 = v11;
        v11 = *(v11 + 456);
        if (v12 != a2 && (*(v12 + 432) & 2) == 0)
        {
          v13 = *(v12 + 112);
          if (v13)
          {
            sub_100038740(v13);
            *(v12 + 112) = 0;
          }

          v14 = *(v12 + 116);
          if (v14)
          {
            sub_100038740(v14);
            *(v12 + 116) = 0;
          }

          *(v12 + 432) |= 2u;
          v15 = sub_10003A5E8(*(v12 + 56));
          v16 = strdup(v15);
          v17 = sub_10003A5E8(*(v12 + 48));
          v18 = strdup(v17);
          if (!v16)
          {
            if (dword_100090058)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
LABEL_33:
                sub_100069F58();
              }
            }

LABEL_34:
            exit(1);
          }

          v19 = v18;
          if (!v18)
          {
            if (dword_100090058)
            {
              v23 = ne_log_obj();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_33;
              }
            }

            goto LABEL_34;
          }

          if (dword_100090058)
          {
            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = sub_100021944(v12, 0);
              *buf = 136315650;
              v26 = v16;
              v27 = 2080;
              v28 = v19;
              v29 = 2080;
              v30 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA needs to be deleted %s-%s spi:%s\n", buf, 0x20u);
            }
          }

          free(v16);
          free(v19);
          sub_100049EAC(v12, a2);
          if (*(v12 + 20))
          {
            v22 = 7;
          }

          else
          {
            v22 = 5;
          }

          *(v12 + 112) = sub_100038550(v22, sub_10004A8F0, v12);
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006A00C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t sub_10004ADF4(uint64_t result)
{
  if (!*(result + 48))
  {
    v1 = result;
    if ((*(result + 57) & 0x40) == 0)
    {
      v2 = *(result + 64);
      if (v2)
      {
        sub_100038740(v2);
        *(v1 + 64) = 0;
      }

      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10006A084((v1 + 56), v1, v3);
        }
      }

      if ((*(v1 + 57) & 0x20) != 0)
      {
        sub_100018460(v1);
        v4 = *(v1 + 128);
        if (v4)
        {
          for (i = *(v4 + 32); i; i = *(i + 72))
          {
            if (*(i + 56))
            {
              v6 = *(qword_1000900B8 + 32);
              v7 = sub_10002CCC0(*i);
              sub_10003ED70(v6, v7, 0, *v1, *(v1 + 8), *(i + 28));
            }
          }
        }
      }

      sub_1000247FC(v1);
      return sub_100048E58(v1);
    }
  }

  return result;
}

void sub_10004AEF0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a2 + 272) == a1 && !*(a2 + 48))
  {
    if ((*(a1 + 264) & 0x400) == 0 || *(a2 + 60) != 1)
    {
      v11 = *(a1 + 1704);
      while (v11)
      {
        v12 = v11;
        v11 = *(v11 + 296);
        if (v12 != a2 && *(v12 + 52) == *(a2 + 52))
        {
          v13 = *(v12 + 264);
          if ((v13 & 2) == 0)
          {
            v14 = *(v12 + 64);
            if (v14)
            {
              sub_100038740(v14);
              *(v12 + 64) = 0;
              v13 = *(v12 + 264);
            }

            *(v12 + 264) = v13 | 2;
            if (dword_100090058)
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = sub_10002D834(*v12, *(v12 + 8), *(v12 + 104), *(v12 + 52), 0);
                *buf = 136315138;
                v19 = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IPsec-SA needs to be deleted: %s\n", buf, 0xCu);
              }
            }

            if (*(v12 + 60))
            {
              v17 = 5;
            }

            else
            {
              v17 = 3;
            }

            *(v12 + 64) = sub_100038550(v17, sub_10004AEEC, v12);
          }
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006A128(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10004B0C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 336) || *(a1 + 344))
    {
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "ike_session_stopped_by_controller";
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "already stopped %s.\n", &v13, 0xCu);
        }
      }
    }

    else
    {
      *(a1 + 264) |= 0x20u;
      gettimeofday((a1 + 336), 0);
      if (!*(a1 + 296))
      {
        *(a1 + 296) = a2;
      }
    }
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006A1A0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_10004B1EC(unint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = qword_100090070;
    while (v3)
    {
      while (1)
      {
        v7 = v3;
        v3 = *(v3 + 1712);
        v8 = v7 + 136;
        if (a2)
        {
          break;
        }

        if (sub_100039414(v8, a1))
        {
          goto LABEL_5;
        }

LABEL_8:
        sub_10004B0C4(v7, a3);
        if (!v3)
        {
          return;
        }
      }

      if (!sub_100039634(v8, a1))
      {
        goto LABEL_8;
      }

LABEL_5:
      ;
    }
  }

  else if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10006A218(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

uint64_t sub_10004B2A4(uint64_t result)
{
  for (i = *(result + 1696); i; result = sub_100048F2C(v2))
  {
    v2 = i;
    i = *(i + 456);
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deleteallph1 of given session: got a ph1 handler...\n", v5, 2u);
      }
    }

    v4 = sub_100008158(v2);
    sub_100046C2C(0xEu, 1u, v4, 0, 0);
  }

  return result;
}

void sub_10004B368(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 440)) != 0)
  {
    v2 = *(v1 + 1704);
    if (v2)
    {
      do
      {
        v3 = *(v2 + 296);
        v4 = *(v2 + 264);
        if ((v4 & 2) == 0)
        {
          v5 = *(v2 + 64);
          if (v5)
          {
            sub_100038740(v5);
            *(v2 + 64) = 0;
            v4 = *(v2 + 264);
          }

          *(v2 + 264) = v4 | 2;
          if (dword_100090058)
          {
            v6 = ne_log_obj();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = sub_10002D834(*v2, *(v2 + 8), *(v2 + 104), *(v2 + 52), 0);
              *buf = 136315138;
              v17 = v7;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IPsec-SA needs to be purged: %s\n", buf, 0xCu);
            }
          }

          sub_10004ADF4(v2);
        }

        v2 = v3;
      }

      while (v3);
    }
  }

  else if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10006A290(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

void sub_10004B4C4(uint64_t *a1)
{
  v1 = a1[34];
  if (v1)
  {
    v3 = *a1;
    v4 = sub_10003B344(v1 + 8);
    sub_10003B444(v3, v4);
    v5 = a1[1];
    v6 = sub_10003B344(v1 + 136);

    sub_10003B444(v5, v6);
  }

  else if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ike_session_update_ph2_ports";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "invalid parent session in %s.\n", &v8, 0xCu);
    }
  }
}

uint64_t sub_10004B5F0(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 - 3) < 0xFFFFFFFE || a1 == 0 || a3 == 0 || a4 == 0 || a5 == 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006A308(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  *a3 = 0;
  v18 = *(a1 + 1704);
  if (!v18)
  {
    return 0;
  }

  result = 0;
  v19 = 28;
  if (a2 == 1)
  {
    v19 = 24;
  }

  while (1)
  {
    v20 = *(v18 + 128);
    if (v20)
    {
      v21 = *(v20 + 32);
      if (v21)
      {
        break;
      }
    }

LABEL_29:
    v18 = *(v18 + 296);
    if (!v18)
    {
      return result;
    }
  }

  while (1)
  {
    if (*(v21 + 56) && *v21 == 3)
    {
      if (!*a3)
      {
        *a3 = *(v18 + 100);
      }

      *(a4 + 40 * result) = *(v21 + v19);
      result = (result + 1);
      if (result == a5)
      {
        return a5;
      }
    }

    v21 = *(v21 + 72);
    if (!v21)
    {
      goto LABEL_29;
    }
  }
}

void sub_10004B6E8(uint64_t a1, int a2, void *__src, unsigned int a4)
{
  if ((a2 - 3) >= 0xFFFFFFFE && a1 != 0 && __src != 0)
  {
    if ((*(a1 + 264) & 0x21) != 1 || *(a1 + 336) || *(a1 + 344))
    {
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "ike_session_update_traffic_idle_status";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "dropping update on invalid session in %s.\n", buf, 0xCu);
        }
      }

      return;
    }

    if (a4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
      do
      {
        if (a2 == 1)
        {
          v22 = *(a1 + 392);
          if (v22)
          {
            v23 = &__src[5 * v19];
            v24 = (a1 + 736);
            do
            {
              if (*v23 == *(v24 - 4))
              {
                if (*(v23 + 2) != *v24)
                {
                  v21 = 0;
                }

                v20 = 1;
              }

              v24 += 5;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v25 = *(a1 + 1044);
          if (v25)
          {
            v26 = &__src[5 * v19];
            v27 = (a1 + 1384);
            do
            {
              if (*v26 == *(v27 - 4))
              {
                if (*(v26 + 2) != *v27)
                {
                  v21 = 0;
                }

                v20 = 1;
              }

              v27 += 5;
              --v25;
            }

            while (v25);
          }
        }

        if (!v20)
        {
          if (__src[5 * v19 + 2])
          {
            v21 = dword_100090058;
            if (dword_100090058)
            {
              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v42) = a2;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "new SA: dir %d....\n", buf, 8u);
              }

              v21 = 0;
            }
          }
        }

        ++v19;
      }

      while (v19 != a4);
      v29 = v21 == 0;
    }

    else
    {
      v29 = 0;
    }

    v30 = 40 * a4;
    if (a2 == 1)
    {
      *(a1 + 1008) = 0u;
      *(a1 + 1024) = 0u;
      *(a1 + 976) = 0u;
      *(a1 + 992) = 0u;
      *(a1 + 944) = 0u;
      *(a1 + 960) = 0u;
      *(a1 + 912) = 0u;
      *(a1 + 928) = 0u;
      *(a1 + 880) = 0u;
      *(a1 + 896) = 0u;
      *(a1 + 848) = 0u;
      *(a1 + 864) = 0u;
      *(a1 + 816) = 0u;
      *(a1 + 832) = 0u;
      *(a1 + 784) = 0u;
      *(a1 + 800) = 0u;
      *(a1 + 752) = 0u;
      *(a1 + 768) = 0u;
      *(a1 + 720) = 0u;
      *(a1 + 736) = 0u;
      memmove((a1 + 720), __src, v30);
      *(a1 + 392) = a4;
      if (v29)
      {
        v31 = 192;
LABEL_51:
        *(a1 + 264) |= v31;
        *(a1 + 272) = time(0);
      }
    }

    else
    {
      *(a1 + 1656) = 0u;
      *(a1 + 1672) = 0u;
      *(a1 + 1624) = 0u;
      *(a1 + 1640) = 0u;
      *(a1 + 1592) = 0u;
      *(a1 + 1608) = 0u;
      *(a1 + 1560) = 0u;
      *(a1 + 1576) = 0u;
      *(a1 + 1528) = 0u;
      *(a1 + 1544) = 0u;
      *(a1 + 1496) = 0u;
      *(a1 + 1512) = 0u;
      *(a1 + 1464) = 0u;
      *(a1 + 1480) = 0u;
      *(a1 + 1432) = 0u;
      *(a1 + 1448) = 0u;
      *(a1 + 1400) = 0u;
      *(a1 + 1416) = 0u;
      *(a1 + 1368) = 0u;
      *(a1 + 1384) = 0u;
      memmove((a1 + 1368), __src, v30);
      *(a1 + 1044) = a4;
      if (v29)
      {
        v31 = 768;
        goto LABEL_51;
      }
    }

    v32 = *(a1 + 376);
    if (v32 <= 1 && (*(a1 + 264) & 0x80) != 0)
    {
      if (!dword_100090058)
      {
        goto LABEL_63;
      }

      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v37 = *(a1 + 376);
      v38 = *(a1 + 372);
      *buf = 136315650;
      v42 = "ike_session_monitor_idle";
      v43 = 1024;
      v44 = v37;
      v45 = 1024;
      v46 = v38;
      v36 = "%s: restart idle-timeout because peer sent data. monitoring dir %d. idle timer %d s\n";
    }

    else
    {
      if ((v32 | 2) != 2 || (*(a1 + 264) & 0x200) == 0)
      {
        return;
      }

      if (!dword_100090058)
      {
        goto LABEL_63;
      }

      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v34 = *(a1 + 376);
      v35 = *(a1 + 372);
      *buf = 136315650;
      v42 = "ike_session_monitor_idle";
      v43 = 1024;
      v44 = v34;
      v45 = 1024;
      v46 = v35;
      v36 = "%s: restart idle-timeout because i sent data. monitoring dir %d. idle times %d s\n";
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v36, buf, 0x18u);
LABEL_63:
    v39 = *(a1 + 384);
    if (v39)
    {
      sub_100038740(v39);
      *(a1 + 384) = 0;
    }

    v40 = *(a1 + 372);
    if (v40)
    {
      *(a1 + 384) = sub_100038550(v40, sub_10004D068, a1);
    }

    *(a1 + 264) &= 0xFD7Fu;
    return;
  }

  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006A380(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t sub_10004BB88(uint64_t result, char *a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(v10) = 0;
    *(result + 280) |= 2u;
    sub_10004B0C4(result, a2);
    result = *(v3 + 384);
    if (result)
    {
      result = sub_100038740(result);
      *(v3 + 384) = 0;
    }

    v4 = *(v3 + 1704);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 296);
        if ((*(v4 + 57) & 0x20) != 0)
        {
          sub_100018460(v4);
        }

        result = sub_100022C1C(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v3 + 1696);
    if (v6)
    {
      do
      {
        if (*(v6 + 28))
        {
          v10 = *(v6 + 28);
        }

        v7 = *(v6 + 456);
        if ((*(v6 + 17) & 0x20) != 0)
        {
          sub_100017EF4(v6);
        }

        result = sub_100020614(v6);
        v6 = v7;
      }

      while (v7);
    }

    if (a2 && (*(v3 + 264) & 4) != 0 && off_10008C4F0[0] != a2 && off_10008C4F8[0] != a2)
    {
      if (*(v3 + 137) == 2)
      {
        v8 = *(v3 + 140);
      }

      else
      {
        if (v10)
        {
          nw_nat64_extract_v4();
        }

        v8 = 0;
      }

      if (off_10008C508[0] == a2)
      {
        v9 = 50003;
      }

      else
      {
        v9 = 0xFFFF;
      }

      return sub_100046C2C(v9, 0, v8, 0, 0);
    }
  }

  return result;
}

BOOL sub_10004BD10(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006A3F8(v2, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v1 = *(a1 + 1696);
  if (!v1)
  {
    return 0;
  }

  while ((*(v1 + 432) & 2) != 0 || (*(v1 + 17) & 0x10) == 0)
  {
    v1 = *(v1 + 456);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10004BD8C(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006A470(v2, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v1 = *(a1 + 1696);
  if (!v1)
  {
    return 0;
  }

  while ((*(v1 + 432) & 2) != 0 || (*(v1 + 17) & 0x20) == 0)
  {
    v1 = *(v1 + 456);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10004BE08(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006A4E8(v2, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v1 = *(a1 + 1704);
  if (!v1)
  {
    return 0;
  }

  while ((*(v1 + 264) & 2) != 0 || (*(v1 + 57) & 0x10) == 0)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10004BE84(uint64_t a1)
{
  if (!a1)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006A560(v2, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v1 = *(a1 + 1704);
  if (!v1)
  {
    return 0;
  }

  while ((*(v1 + 264) & 2) != 0 || (*(v1 + 57) & 0x20) == 0)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10004BF00(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 272)) != 0)
  {
    v2 = *(v1 + 1696);
    if (v2)
    {
      do
      {
        v3 = *(v2 + 456);
        if ((*(v2 + 17) & 0x20) != 0)
        {
          sub_100017EF4(v2);
        }

        sub_100020614(v2);
        v2 = v3;
      }

      while (v3);
    }
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006A5D8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

BOOL sub_10004BF88(uint64_t a1)
{
  v1 = *(a1 + 272);
  result = 0;
  if (v1)
  {
    v2 = *(v1 + 264);
    if (v2 & 0x400) != 0 && (v2 & 4) != 0 && (*(a1 + 264))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_10004BFB4(uint64_t a1)
{
  v1 = *(a1 + 440);
  result = 0;
  if (v1)
  {
    v2 = *(v1 + 264);
    if (v2 & 0x400) != 0 && (v2 & 4) != 0 && (*(a1 + 432))
    {
      return 1;
    }
  }

  return result;
}

void *sub_10004C020(void *result)
{
  v1 = result[55];
  if (v1 && (~*(v1 + 264) & 0x404) == 0 && !*(v1 + 1692))
  {
    v2 = result;
    result = sub_100038550(300, sub_10004C088, v1);
    *(v2[55] + 1692) = result;
  }

  return result;
}

void *sub_10004C088(uint64_t a1)
{
  v2 = *(a1 + 1692);
  if (v2)
  {
    sub_100038740(v2);
    *(a1 + 1692) = 0;
  }

  if (sub_10004BE84(a1))
  {
    result = sub_100038550(300, sub_10004C088, a1);
    *(a1 + 1692) = result;
  }

  else
  {
    v4 = off_10008C510[0];

    return sub_10004BB88(a1, v4);
  }

  return result;
}

uint64_t sub_10004C10C(uint64_t result)
{
  v1 = *(result + 440);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 1692);
    if (result)
    {
      result = sub_100038740(result);
      *(*(v2 + 440) + 1692) = 0;
    }
  }

  return result;
}

uint64_t sub_10004C14C(void *a1, void *a2)
{
  v4 = a1[24];
  if (v4)
  {
    v5 = a2[24];
    if (v5)
    {
      if (*v4 == *v5 && !memcmp(*(v4 + 8), *(v5 + 8), *v4))
      {
        v29 = a1[25];
        if (v29)
        {
          v30 = a2[25];
          if (v30)
          {
            if (*v29 == *v30 && !memcmp(*(v29 + 8), *(v30 + 8), *v29))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  v6 = a1[35];
  if (v6)
  {
    v7 = a2[35];
    if (v7)
    {
      if (*v6 == *v7 && !memcmp(*(v6 + 8), *(v7 + 8), *v6))
      {
        v31 = a1[36];
        if (v31)
        {
          v32 = a2[36];
          if (v32)
          {
            if (*v31 == *v32 && !memcmp(*(v31 + 8), *(v32 + 8), *v31))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  v8 = a2[35];
  if (v4)
  {
    if (v8)
    {
      if (*v4 == *v8 && !memcmp(*(v4 + 8), *(v8 + 8), *v4))
      {
        v33 = a1[25];
        if (v33)
        {
          v34 = a2[36];
          if (v34)
          {
            if (*v33 == *v34 && !memcmp(*(v33 + 8), *(v34 + 8), *v33))
            {
              return 0;
            }
          }
        }
      }

      if (*v4 == *v8 && !memcmp(*(v4 + 8), *(v8 + 8), *v4))
      {
        v35 = a1[25];
        if (v35)
        {
          v36 = a2[25];
          if (v36)
          {
            if (*v35 == *v36 && !memcmp(*(v35 + 8), *(v36 + 8), *v35))
            {
              return 0;
            }
          }
        }
      }
    }

    v9 = a2[24];
    if (v9)
    {
      if (*v4 == *v9 && !memcmp(*(v4 + 8), *(v9 + 8), *v4))
      {
        v37 = a1[25];
        if (v37)
        {
          v38 = a2[36];
          if (v38)
          {
            if (*v37 == *v38 && !memcmp(*(v37 + 8), *(v38 + 8), *v37))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  if (!v8 || !sub_10004C550(v8))
  {
    v10 = a2[36];
    if (!v10 || !sub_10004C550(v10))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v11 = a1[24];
  if (v11)
  {
    v12 = sub_10003D538(v11);
    v13 = v12;
    if (v12)
    {
      v14 = v12[1];
      if (*v14 == 1)
      {
        *(v14 + 2) = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = a1[25];
  if (v16)
  {
    v17 = sub_10003D538(v16);
    v18 = v17;
    if (v17)
    {
      v19 = v17[1];
      if (*v19 == 1)
      {
        *(v19 + 2) = 0;
      }
    }

    if (!v13)
    {
      goto LABEL_45;
    }

LABEL_35:
    v20 = a2[35];
    if (v20)
    {
      v21 = *v13;
      v22 = *v20;
      if (*v13 == *v20)
      {
        v23 = memcmp(v13[1], v20[1], *v13);
        if (v18)
        {
          if (!v23)
          {
            v24 = a2[36];
            if (v24)
            {
              if (*v18 == *v24 && !memcmp(v18[1], *(v24 + 8), *v18))
              {
                goto LABEL_85;
              }
            }
          }
        }
      }

      v25 = a1[24];
      if (v25)
      {
        if (*v25 == v22 && !memcmp(v13[1], v20[1], v21))
        {
          v41 = a1[25];
          if (v41)
          {
            v42 = a2[25];
            if (v42)
            {
              if (*v41 == *v42 && !memcmp(*(v41 + 8), *(v42 + 8), *v41))
              {
                sub_10003D4F0(v13);
                v15 = 0;
                if (!v18)
                {
                  return v15;
                }

                goto LABEL_53;
              }
            }
          }
        }
      }
    }

    goto LABEL_45;
  }

  v18 = 0;
  if (v13)
  {
    goto LABEL_35;
  }

LABEL_45:
  if (v18)
  {
    v26 = a1[24];
    if (v26)
    {
      v27 = a2[24];
      if (v27)
      {
        if (*v26 == *v27 && !memcmp(*(v26 + 8), *(v27 + 8), *v26))
        {
          v39 = a1[25];
          if (v39)
          {
            v40 = a2[36];
            if (v40)
            {
              if (*v39 == *v40 && !memcmp(v18[1], *(v40 + 8), *v18))
              {
                if (!v13)
                {
LABEL_86:
                  v15 = 0;
LABEL_53:
                  sub_10003D4F0(v18);
                  return v15;
                }

LABEL_85:
                sub_10003D4F0(v13);
                goto LABEL_86;
              }
            }
          }
        }
      }
    }
  }

  if (v13)
  {
    sub_10003D4F0(v13);
  }

  v15 = 0xFFFFFFFFLL;
  if (v18)
  {
    goto LABEL_53;
  }

  return v15;
}

BOOL sub_10004C550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*v1 == 1 && !*(v1 + 2))
  {
    return 1;
  }

  if (dword_100090058)
  {
    v2 = ne_log_obj();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10006A650(v1);
  }

  return 0;
}

uint64_t sub_10004C5C0(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v1 + 264) & 0x400) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 192);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 200);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_10004C7D4(v3, v4);
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A6E8();
    }
  }

  v7 = *(*(a1 + 272) + 1704);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (v7 == a1 || (*(v7 + 264) & 2) != 0 || (*(v7 + 57) & 0x60) == 0 || !*(v7 + 112))
    {
      goto LABEL_17;
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        break;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (!sub_10004C14C(a1, v7))
    {
      goto LABEL_20;
    }

LABEL_17:
    v7 = *(v7 + 296);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_10006A764(v15, &v16, v8);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A7B4();
    }
  }

  v10 = *(v7 + 112);
  *(a1 + 112) = v10;
  if (v10)
  {
    sub_1000382E8(v10);
  }

  if (*(a1 + 52))
  {
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10006A834((a1 + 52));
      }
    }
  }

  else
  {
    *(a1 + 52) = *(v7 + 52);
  }

  v13 = *(v7 + 280);
  if (v13)
  {
    if (*(a1 + 280))
    {
      sub_10003D4F0(*(a1 + 280));
      v13 = *(v7 + 280);
    }

    *(a1 + 280) = sub_10003D538(v13);
  }

  result = *(v7 + 288);
  if (result)
  {
    if (*(a1 + 288))
    {
      sub_10003D4F0(*(a1 + 288));
      result = *(v7 + 288);
    }

    v14 = sub_10003D538(result);
    result = 0;
    *(a1 + 288) = v14;
  }

  return result;
}

uint64_t sub_10004C814(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v1 + 264) & 0x400) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 192);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 200);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_10004C7D4(v3, v4);
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A8B4();
    }
  }

  v7 = *(*(a1 + 272) + 1704);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (v7 == a1 || (*(v7 + 264) & 2) != 0 || (*(v7 + 57) & 0x60) == 0 || !*(v7 + 128))
    {
      goto LABEL_17;
    }

    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        break;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (!sub_10004C14C(a1, v7))
    {
      goto LABEL_20;
    }

LABEL_17:
    v7 = *(v7 + 296);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_10006A930(v15, &v16, v8);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (dword_100090058)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A980();
    }
  }

  v10 = sub_100035DC0(*(v7 + 128), 1);
  v12 = *(a1 + 52);
  v11 = a1 + 52;
  *(v11 + 68) = v10;
  if (v12)
  {
    if (!dword_100090058)
    {
      return 0;
    }

    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_10006AA00(v11);
      return 0;
    }
  }

  else
  {
    result = 0;
    *v11 = *(v7 + 52);
  }

  return result;
}

uint64_t sub_10004C9DC(uint64_t result)
{
  v1 = *(result + 440);
  if (v1)
  {
    v2 = *(result + 88);
    if (v2)
    {
      LODWORD(v2) = *v2;
    }

    *(v1 + 288) = v2;
  }

  return result;
}

uint64_t sub_10004C9F8(uint64_t a1)
{
  v1 = *(a1 + 440);
  if (v1)
  {
    return *(v1 + 288);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004CA10(uint64_t a1, int a2)
{
  if (a1)
  {
    if ((*(a1 + 264) & 0x10) != 0)
    {
      if (*(a1 + 272) && *(a1 + 368) && *(a1 + 372))
      {
        v7 = time(0) - *(a1 + 272);
        v8 = 2 * *(a1 + 368);
        if (v7 > v8)
        {
          if (dword_100090058)
          {
            v9 = ne_log_obj();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11[0] = 67109120;
              v11[1] = a2;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "btmm session is idle: drop ph%drekey.\n", v11, 8u);
            }
          }
        }

        if (v7 > v8)
        {
          return 1;
        }
      }
    }

    else if (a2 == 1)
    {
      v4 = *(a1 + 1704);
      if (v4)
      {
        v5 = *(a1 + 1704);
        while ((*(v5 + 264) & 2) != 0 || (*(v5 + 57) & 0x10) == 0)
        {
          v5 = *(v5 + 296);
          if (!v5)
          {
            while ((*(v4 + 264) & 2) != 0 || (*(v4 + 57) & 0x20) == 0)
            {
              v4 = *(v4 + 296);
              if (!v4)
              {
                goto LABEL_12;
              }
            }

            return 0;
          }
        }

        return 0;
      }

LABEL_12:
      if (dword_100090058)
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "vpn session is idle: drop ph1 rekey.\n", v11, 2u);
        }
      }

      return 1;
    }
  }

  return 0;
}

void sub_10004CBBC()
{
  v0 = qword_100090070;
  while (v0)
  {
    v1 = v0;
    v0 = *(v0 + 1712);
    v2 = *(v1 + 280);
    if ((v2 & 2) != 0)
    {
      if (!dword_100090058)
      {
        continue;
      }

      v7 = ne_log_obj();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        continue;
      }

      *v22 = 0;
      v8 = v7;
      v9 = "skipping sweep of dying session.\n";
      goto LABEL_24;
    }

    v3 = *(v1 + 1692);
    if (v3)
    {
      sub_100038740(v3);
      *(v1 + 1692) = 0;
      v2 = *(v1 + 280);
    }

    if ((v2 & 4) != 0)
    {
      v10 = *(v1 + 380);
      if (v10)
      {
        sub_100038740(v10);
        *(v1 + 380) = 0;
      }

      v11 = *(v1 + 384);
      if (v11)
      {
        sub_100038740(v11);
        *(v1 + 384) = 0;
      }

      if (!dword_100090058)
      {
        continue;
      }

      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        continue;
      }

      *v22 = 0;
      v8 = v12;
      v9 = "skipping sweep of asserted session.\n";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v22, 2u);
      continue;
    }

    if ((*(v1 + 264) & 0x20) != 0 || *(v1 + 336) || *(v1 + 344))
    {
      if (!dword_100090058)
      {
        goto LABEL_13;
      }

      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v22 = 0;
      v5 = v4;
      v6 = "sweeping stopped session.\n";
    }

    else
    {
      v13 = *(v1 + 1696);
      if (v13)
      {
        while ((*(v13 + 432) & 2) != 0 || (*(v13 + 17) & 0x20) == 0)
        {
          v13 = *(v13 + 456);
          if (!v13)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_38;
      }

LABEL_31:
      v14 = *(v1 + 1704);
      if (v14)
      {
        while ((*(v14 + 264) & 2) != 0 || (*(v14 + 57) & 0x20) == 0)
        {
          v14 = *(v14 + 296);
          if (!v14)
          {
            goto LABEL_35;
          }
        }

LABEL_38:
        v16 = *(v1 + 380);
        if (v16)
        {
          *v22 = 0;
          if (sub_1000386F0(v16, v22))
          {
            if (*v22 <= qword_100090090)
            {
              v17 = *(v1 + 380);
              if (v17)
              {
                sub_100038740(v17);
                *(v1 + 380) = 0;
              }

              if ((*(v1 + 280) & 2) == 0)
              {
                v18 = *(v1 + 368);
                if (v18)
                {
                  *(v1 + 380) = sub_100038550(v18, sub_10004CEB0, v1);
                }
              }
            }
          }
        }

        v19 = *(v1 + 384);
        if (v19)
        {
          *v22 = 0;
          if (sub_1000386F0(v19, v22))
          {
            if (*v22 <= qword_100090090)
            {
              v20 = *(v1 + 384);
              if (v20)
              {
                sub_100038740(v20);
                *(v1 + 384) = 0;
              }

              if ((*(v1 + 280) & 2) == 0)
              {
                v21 = *(v1 + 372);
                if (v21)
                {
                  *(v1 + 384) = sub_100038550(v21, sub_10004D068, v1);
                }
              }
            }
          }
        }

        continue;
      }

LABEL_35:
      if (!dword_100090058)
      {
        goto LABEL_13;
      }

      v15 = ne_log_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v22 = 0;
      v5 = v15;
      v6 = "session died while sleeping.\n";
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v22, 2u);
LABEL_13:
    sub_10004BB88(v1, off_10008C518[0]);
  }
}

void sub_10004CEB0(uint64_t a1)
{
  if (a1 && (*(a1 + 264) & 0x21) == 1 && !*(a1 + 336) && !*(a1 + 344))
  {
    v10 = *(a1 + 380);
    if (v10)
    {
      sub_100038740(v10);
      *(a1 + 380) = 0;
    }

    if ((sub_10002E710(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "ike_session_traffic_cop";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "pk_sendget_inbound_sastats failed in %s.\n", &v13, 0xCu);
        }
      }
    }

    if ((sub_10002E828(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "ike_session_traffic_cop";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pk_sendget_outbound_sastats failed in %s.\n", &v13, 0xCu);
        }
      }
    }

    *(a1 + 380) = sub_100038550(*(a1 + 368), sub_10004CEB0, a1);
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006AA80(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t sub_10004D074(uint64_t a1)
{
  if (!a1 || (*(a1 + 280) & 2) != 0)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10006AAF8(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = *(a1 + 1704);
    v2 = &dword_100090058;
    while (v1)
    {
      v3 = v1;
      v1 = *(v1 + 296);
      v4 = *(v3 + 264);
      if ((v4 & 2) == 0)
      {
        v5 = *(v3 + 56);
        if ((v5 & 0x4000) == 0)
        {
          v6 = *(v3 + 64);
          if (v6)
          {
            sub_100038740(v6);
            *(v3 + 64) = 0;
            v4 = *(v3 + 264);
            v5 = *(v3 + 56);
          }

          *(v3 + 264) = v4 | 2;
          if ((v5 & 0x2000) != 0)
          {
            v7 = *(v3 + 128);
            if (v7)
            {
              for (i = *(v7 + 32); i; i = *(i + 72))
              {
                if (*(i + 56))
                {
                  if (*v2)
                  {
                    v9 = ne_log_obj();
                    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                    {
                      v10 = v2;
                      v11 = *v3;
                      v12 = *(v3 + 8);
                      v13 = *(v3 + 104);
                      v14 = *(v3 + 52);
                      v15 = sub_10002CDB8(*(i + 16));
                      v16 = v12;
                      v2 = v10;
                      v17 = sub_10002D834(v11, v16, v13, v14, v15);
                      *buf = 136315138;
                      v41 = v17;
                      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Assert: Phase 2 %s deleted\n", buf, 0xCu);
                    }
                  }

                  v18 = *(qword_1000900B8 + 32);
                  v19 = sub_10002CCC0(*i);
                  v20 = sub_10002CDB8(*(i + 16));
                  sub_10003ED70(v18, v19, v20, *v3, *(v3 + 8), *(i + 28));
                }
              }
            }
          }

          sub_100000A50((v3 + 56), 18432);
          *(v3 + 64) = sub_100038550(3, sub_10004AEEC, v3);
        }
      }
    }

    v21 = *(a1 + 1696);
    while (v21)
    {
      v22 = v21;
      v21 = *(v21 + 456);
      if ((*(v22 + 432) & 2) == 0 && (*(v22 + 17) & 0x40) == 0)
      {
        v23 = *(v22 + 112);
        if (v23)
        {
          sub_100038740(v23);
          *(v22 + 112) = 0;
        }

        v24 = *(v22 + 116);
        if (v24)
        {
          sub_100038740(v24);
          *(v22 + 116) = 0;
        }

        *(v22 + 432) |= 2u;
        if (*v2)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_100021944(v22, 0);
            *buf = 136315138;
            v41 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Assert: Phase 1 %s deleted\n", buf, 0xCu);
          }
        }

        v27 = *(v22 + 448);
        if (v27)
        {
          do
          {
            v28 = v27[39];
            if (v27[32])
            {
              v27[32] = 0;
              v29 = v27[40];
              if (v28)
              {
                v28[40] = v29;
              }

              *v29 = v28;
            }

            v27 = v28;
          }

          while (v28);
        }

        sub_100000A50((v22 + 16), 17408);
        *(v22 + 112) = sub_100038550(5, sub_10004A8F0, v22);
      }
    }

    result = 0;
    *(a1 + 280) |= 4u;
  }

  return result;
}

uint64_t sub_10004D3C8(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10006AB70(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v2 = sub_100049000(a1, a2, 0, 0);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_10004D074(v2);
}

void sub_10004D44C(uint64_t a1)
{
  if ((*(a1 + 264) & 3) == 1)
  {
    v9 = v1;
    v10 = v2;
    v4 = *(a1 + 256);
    if (v4)
    {
      v5 = *(v4 + 116);
      if (v5)
      {
        if (!sub_1000386AC(v5) && !*(a1 + 60))
        {
          v6 = *(a1 + 272);
          if (v6)
          {
            if ((*(v6 + 264) & 0x404) == 0x400 && *(*(*(a1 + 256) + 64) + 200) - *(a1 + 72) == 3)
            {
              if (dword_100090058)
              {
                v7 = ne_log_obj();
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  *v8 = 0;
                  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Many Phase 2 retransmits: try Phase 1 rekey and this Phase 2 to quit earlier.\n", v8, 2u);
                }
              }

              sub_10002263C(*(a1 + 256), 1);
              *(a1 + 72) = 0;
            }
          }
        }
      }
    }
  }
}

void sub_10004D53C(uint64_t a1)
{
  if ((*(a1 + 432) & 3) == 1)
  {
    v7 = v1;
    v8 = v2;
    if (!*(a1 + 116) && (*(a1 + 17) & 0x10) != 0 && !*(a1 + 20))
    {
      v4 = *(a1 + 440);
      if (v4)
      {
        if ((*(v4 + 264) & 0x400) != 0 && !sub_10004A28C(v4, a1) && *(*(a1 + 64) + 200) - *(a1 + 124) == 3)
        {
          if (dword_100090058)
          {
            v5 = ne_log_obj();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *v6 = 0;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Many Phase 1 retransmits: try quit earlier.\n", v6, 2u);
            }
          }

          *(a1 + 124) = 0;
        }
      }
    }
  }
}

BOOL sub_10004D618(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (v2 == 4)
  {
    if (*(v1 + 2))
    {
      goto LABEL_6;
    }
  }

  else if (v2 != 1)
  {
    goto LABEL_6;
  }

  if (!*(v1 + 1))
  {
    return 1;
  }

LABEL_6:
  if (dword_100090058)
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10006ABE8(v1);
  }

  return 0;
}

void sub_10004D69C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10004D6CC()
{
  dword_1000914A4 = IORegisterForSystemPower(0, &qword_1000914B0, sub_10004D76C, dword_1000914A8);
  if (dword_1000914A4)
  {
    IONotificationPortSetDispatchQueue(qword_1000914B0, &_dispatch_main_q);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10006AC88();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_10004D76C(int a1, int a2, int a3, intptr_t notificationID)
{
  HIDWORD(v6) = a3 + 536870288;
  LODWORD(v6) = a3 + 536870288;
  v5 = v6 >> 4;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
LABEL_24:
        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_10006AE00(a3, v12);
          }
        }

        goto LABEL_33;
      }

      byte_10008F284 = 1;
      *&xmmword_100090080 = sub_10003867C();
      if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10006ADCC();
        }
      }
    }

    IOAllowPowerChange(dword_1000914A4, notificationID);
    goto LABEL_33;
  }

  switch(v5)
  {
    case 2:
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10006AD98();
        }
      }

      byte_10008F284 = 0;
      *&xmmword_100090080 = 0;
      break;
    case 9:
      *(&xmmword_100090080 + 1) = sub_10003867C();
      if (xmmword_100090080)
      {
        if (dword_100090058)
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_10006ACC8();
          }
        }
      }

      else if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_10006ACFC();
        }
      }

      break;
    case 11:
      if (byte_10008F284 == 1)
      {
        if (dword_100090058)
        {
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            sub_10006AD64();
          }
        }

        byte_10008F284 = 0;
      }

      else if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10006AD30();
        }
      }

      break;
    default:
      goto LABEL_24;
  }

LABEL_33:
  dispatch_async_f(&_dispatch_main_q, &unk_1000914A0, sub_10004D9D4);
}

void sub_10004D99C()
{
  IODeregisterForSystemPower(dword_1000914A8);
  v0 = qword_1000914B0;

  IONotificationPortDestroy(v0);
}

void sub_10004D9D4()
{
  if (xmmword_100090080)
  {
    v0 = *(&xmmword_100090080 + 1) == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (!*(&xmmword_100090080 + 1))
    {
      return;
    }

    if (dword_100090058)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AE78();
      }
    }
  }

  else
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AEAC();
      }
    }

    qword_100090090 = sub_10003867C();
    sub_100007C94();
    *&xmmword_100090080 = 0;
  }

  *(&xmmword_100090080 + 1) = 0;
}

void sub_10004DA90()
{
  if (!qword_100090098)
  {
    v0 = SCPreferencesCreate(0, @"racoon", @"com.apple.ipsec.plist");
    qword_100090098 = v0;
    if (v0)
    {
      if (SCPreferencesSetCallback(v0, sub_10004DB10, &stru_10008F288))
      {
        if (!SCPreferencesSetDispatchQueue(qword_100090098, &_dispatch_main_q))
        {
          sub_10006AEE0();
        }
      }
    }
  }
}

void sub_10004DB10(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    sub_100031FBC();
  }
}

const __CFDictionary *sub_10004DB1C(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    valuePtr = 0;
    result = CFDictionaryGetValue(result, @"IKEVersion");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
      if (valuePtr != 1)
      {
        return 0;
      }

      result = CFDictionaryContainsKey(v1, @"ReparseConfFile");
      if (result)
      {
        result = CFDictionaryGetValue(v1, @"ReparseConfFile");
        if (result)
        {
          result = CFBooleanGetValue(result);
          if (result)
          {
            sub_100051274(0x1Eu);
            *(qword_1000900B8 + 80) = 17;
            if (!qword_10008F2B0)
            {
              qword_10008F2B0 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            v2 = dword_10008C530;
            v3 = (dword_10008C530 + 1) > 1 ? dword_10008C530 + 1 : 1;
            dword_10008C530 = v3;
            v8 = v2;
            result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v8);
            if (result)
            {
              v4 = result;
              Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
              if (Mutable)
              {
                v6 = Mutable;
                CFDictionaryAddValue(qword_10008F2B0, v4, Mutable);
                CFRelease(v6);
                CFRelease(v4);
                return v8;
              }

              CFRelease(v4);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

CFNumberRef sub_10004DC94(int a1)
{
  result = 0;
  valuePtr = a1;
  if (a1)
  {
    if (qword_10008F2B0)
    {
      result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (result)
      {
        v3 = result;
        if (CFDictionaryContainsKey(qword_10008F2B0, result))
        {
          CFDictionaryRemoveValue(qword_10008F2B0, v3);
        }

        CFRelease(v3);
        if (!qword_10008F2B0 || !CFDictionaryGetCount(qword_10008F2B0))
        {
          sub_100038F0C();
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10004DD30()
{
  result = qword_10008F2B0;
  if (qword_10008F2B0)
  {
    return CFDictionaryGetCount(qword_10008F2B0) != 0;
  }

  return result;
}

void sub_10004DD60()
{
  qword_1000914B8 = 0;
  qword_1000914C0 = &qword_1000914B8;
  if (qword_10008F2B8 != -1)
  {
    sub_10006AEFC();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.SecureNetworking.IPSec", qword_10008F2C0, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10004DE1C;
  handler[3] = &unk_10008AC50;
  handler[4] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
}

void sub_10004DE1C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    if (qword_10008F2B8 != -1)
    {
      sub_10006AEFC();
    }

    xpc_connection_set_target_queue(object, qword_10008F2C0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10004E0D0;
    handler[3] = &unk_10008ACB0;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_resume(object);
  }

  else if (type == &_xpc_type_error)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10006AF84();
      }
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (object == &_xpc_error_connection_invalid)
    {
      if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10006B0B0();
        }
      }

      v10 = &qword_1000914B8;
      do
      {
        v10 = *v10;
      }

      while (v10 && v10[2] != *(a1 + 32));
      sub_10004E044(v10);
      xpc_release(*(a1 + 32));
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      if (dword_100090058)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10006B040();
        }
      }
    }

    else if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10006AFB8(object, string, v8);
      }
    }
  }

  else if (dword_100090058)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10006AF10();
    }
  }
}

void sub_10004E044(xpc_object_t *a1)
{
  if (a1)
  {
    xpc_release(a1[2]);
    v2 = &qword_1000914B8;
    v3 = *a1;
    v4 = a1[1];
    if (*a1)
    {
      v2 = *a1;
    }

    v2[1] = v4;
    *v4 = v3;

    free(a1);
  }
}

void sub_10004E0D0(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_error)
    {
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_10006B160();
        }
      }

      v15 = &qword_1000914B8;
      do
      {
        v15 = *v15;
      }

      while (v15 && v15[2] != *(a1 + 32));
      sub_10004E044(v15);
    }

    else if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10006B120();
      }
    }

    return;
  }

  int64 = xpc_dictionary_get_int64(object, "ipsecopcode");
  v7 = xpc_dictionary_get_int64(object, "ipsecobjectref");
  if (int64 == 5)
  {
    *token.val = 0;
    *&token.val[2] = &token;
    *&token.val[4] = 0x2000000000;
    LOBYTE(token.val[6]) = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    LOBYTE(v55) = 0;
    v16 = xpc_dictionary_get_int64(object, "ipsecikeid");
    v17 = v16;
    if (v16)
    {
      *&v47 = _NSConcreteStackBlock;
      *(&v47 + 1) = 0x40000000;
      *&v48 = sub_10004E810;
      *(&v48 + 1) = &unk_10008AD00;
      LODWORD(v51) = v16;
      p_token = &token;
      v50 = &v52;
      dispatch_sync(&_dispatch_main_q, &v47);
      v18 = &qword_1000914B8;
      do
      {
        v18 = *v18;
      }

      while (v18 && *(v18 + 8) != v17);
      sub_10004E044(v18);
    }

    else if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10006B1D4();
      }
    }

    v22 = *(*&token.val[2] + 24);
    remote_connection = xpc_dictionary_get_remote_connection(object);
    if (remote_connection)
    {
      v24 = remote_connection;
      reply = xpc_dictionary_create_reply(object);
      if (reply)
      {
        v26 = reply;
        xpc_dictionary_set_int64(reply, "ipsecobjectref", v7);
        xpc_dictionary_set_int64(v26, "ipsecopcode", 4101);
        xpc_dictionary_set_BOOL(v26, "reply", v22 != 0);
        xpc_connection_send_message(v24, v26);
        xpc_release(v26);
      }

      else if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10006B208();
        }
      }
    }

    else if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10006B23C();
      }
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&token, 8);
  }

  else
  {
    if (int64 == 1)
    {
      v52 = 0;
      v53 = &v52;
      v54 = 0x2000000000;
      v55 = 0;
      v47 = 0u;
      v48 = 0u;
      xpc_dictionary_get_audit_token();
      memset(&token, 0, sizeof(token));
      v8 = SecTaskCreateWithAuditToken(0, &token);
      if (!v8)
      {
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10006B374();
          }
        }

        goto LABEL_53;
      }

      v9 = v8;
      v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.private.SecureNetworking.ipsec_ike", 0);
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFBooleanGetTypeID())
        {
          v13 = CFBooleanGetValue(v11) == 0;
        }

        else
        {
          if (dword_100090058)
          {
            v29 = ne_log_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10006B270();
            }
          }

          v13 = 1;
        }

        CFRelease(v11);
      }

      else
      {
        v13 = 1;
      }

      CFRelease(v9);
      if (v13)
      {
        if (dword_100090058)
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10006B2A4();
            goto LABEL_53;
          }
        }
      }

      if (v13)
      {
LABEL_53:
        if (dword_100090058)
        {
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10006B3A8();
          }
        }

        goto LABEL_78;
      }

      if (!xpc_dictionary_get_value(object, "ipsecikedict"))
      {
        if (!dword_100090058)
        {
LABEL_78:
          v42 = *(v53 + 6);
          _Block_object_dispose(&v52, 8);
          v43 = xpc_dictionary_get_remote_connection(object);
          if (v43)
          {
            v44 = v43;
            v45 = xpc_dictionary_create_reply(object);
            if (v45)
            {
              v46 = v45;
              xpc_dictionary_set_int64(v45, "ipsecikeid", v42);
              xpc_dictionary_set_int64(v46, "ipsecobjectref", v7);
              xpc_dictionary_set_int64(v46, "ipsecopcode", 4097);
              xpc_dictionary_set_BOOL(v46, "reply", v42 != 0);
              xpc_connection_send_message(v44, v46);
              xpc_release(v46);
            }
          }

          return;
        }

        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10006B340();
        }

        goto LABEL_53;
      }

      v32 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v32)
      {
        if (dword_100090058)
        {
          v33 = ne_log_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10006B2D8();
          }
        }
      }

      if (xpc_dictionary_get_value(object, "ipsecchilddict"))
      {
        v34 = _CFXPCCreateCFObjectFromXPCObject();
        if (v34 || !dword_100090058)
        {
          goto LABEL_68;
        }

        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10006B30C();
        }
      }

      v34 = 0;
LABEL_68:
      *&v47 = _NSConcreteStackBlock;
      *(&v47 + 1) = 0x40000000;
      *&v48 = sub_10004E7D8;
      *(&v48 + 1) = &unk_10008ACD8;
      p_token = &v52;
      v50 = v32;
      v51 = v34;
      dispatch_sync(&_dispatch_main_q, &v47);
      if (*(v53 + 6))
      {
        v36 = xpc_dictionary_get_remote_connection(object);
        if (v36)
        {
          v37 = v36;
          v38 = *(v53 + 6);
          v39 = malloc_type_malloc(0x28uLL, 0x10A0040954427F6uLL);
          v39[8] = v38;
          *(v39 + 2) = v37;
          *(v39 + 3) = v7;
          xpc_retain(v37);
          *v39 = 0;
          v40 = qword_1000914C0;
          *(v39 + 1) = qword_1000914C0;
          *v40 = v39;
          qword_1000914C0 = v39;
        }
      }

      if (v32)
      {
        CFRelease(v32);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      goto LABEL_78;
    }

    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10006B3DC();
      }
    }
  }
}

const __CFDictionary *sub_10004E7D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = sub_10004DB1C(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFNumberRef sub_10004E810(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  result = sub_10004DC94(*(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10004E850()
{
  v0 = 0;
  dword_1000914D8 = 0;
  v1 = v199;
  v2 = 200;
  dword_1000914C8 = -2;
  v3 = &unk_10006D000;
  __src = v199;
  v4 = v200;
  v5 = v200;
  while (1)
  {
    *v4 = v0;
    if (&v5[2 * v2 - 2] <= v4)
    {
      if (v2 >> 4 > 0x270 || ((2 * v2) >= 0x2710 ? (v2 = 10000) : (v2 *= 2), (v6 = malloc_type_malloc(10 * v2 + 7, 0x1000040BDFB0063uLL)) == 0))
      {
        v159 = 2;
        goto LABEL_413;
      }

      v7 = v6;
      v8 = ((v4 - v5) >> 1) + 1;
      memcpy(v6, v5, 2 * v8);
      memcpy(&v7[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8], __src, 8 * v8);
      if (v5 != v200)
      {
        free(v5);
      }

      if (v2 <= v8)
      {
        v159 = 1;
LABEL_415:
        if (v7 != v200)
        {
          free(v7);
        }

        return v159;
      }

      v4 = &v7[2 * v8 - 2];
      v1 = &v7[8 * v8 - 8 + ((2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8)];
      __src = &v7[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8];
      v5 = v7;
    }

    v9 = v3[v0];
    if (v9 == -454)
    {
      goto LABEL_27;
    }

    v10 = dword_1000914C8;
    if (dword_1000914C8 == -2)
    {
      v10 = sub_100051364();
      dword_1000914C8 = v10;
    }

    if (v10 <= 0)
    {
      v11 = 0;
      dword_1000914C8 = 0;
    }

    else
    {
      v11 = v10 > 0x1A6 ? 2 : byte_10006D4A0[v10];
    }

    v12 = v11 + v9;
    if ((v11 + v9) > 0x1DD || v11 != word_10006D648[v12])
    {
LABEL_27:
      v13 = word_10006DDC0[v0];
      if (!word_10006DDC0[v0])
      {
        goto LABEL_412;
      }

      goto LABEL_28;
    }

    v0 = word_10006DA04[v12];
    if (v0 <= 0)
    {
      break;
    }

    if (v12 == 46)
    {
      v159 = 0;
      goto LABEL_414;
    }

    if (v10 >= 1)
    {
      dword_1000914C8 = -2;
    }

    *(v1 + 1) = qword_1000914D0;
    v1 += 2;
LABEL_398:
    v4 += 2;
  }

  if (!word_10006DA04[v12])
  {
LABEL_412:
    ++dword_1000914D8;
    v159 = 1;
LABEL_413:
    sub_100053E7C();
LABEL_414:
    v7 = v5;
    goto LABEL_415;
  }

  v13 = -v0;
LABEL_28:
  v14 = byte_10006E260[v13];
  v15 = *&v1[2 * (1 - v14)];
  switch(v13)
  {
    case 0xFu:
      v99 = *(v1 - 1);
      if (v99 < 5)
      {
        v100 = qword_1000900B8;
        v101 = *(qword_1000900B8 + 8 * v99 + 136);
        if (v101)
        {
          free(v101);
          v100 = qword_1000900B8;
          v99 = *(v1 - 1);
        }

        *(v100 + 8 * v99 + 136) = strdup(*(*v1 + 8));
        if (*(qword_1000900B8 + 8 * *(v1 - 1) + 136))
        {
LABEL_291:
          sub_10003D4F0(*v1);
          v3 = &unk_10006D000;
          goto LABEL_394;
        }

        if (dword_100090058)
        {
          v171 = ne_log_obj();
          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
LABEL_504:
            sub_10005C860();
          }
        }

LABEL_505:
        exit(1);
      }

      v174 = *(v1 - 1);
      sub_10005347C("invalid path type %d");
      return 0xFFFFFFFFLL;
    case 0x11u:
      *(qword_1000900B8 + 312) = *v1;
      goto LABEL_394;
    case 0x13u:
      sub_100026138(__str, 1024, 0, *(*(v1 - 1) + 8));
      sub_10003D4F0(*(v1 - 1));
      if (sub_100053F3C(__str))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_394;
    case 0x17u:
      --**v1;
      *(qword_1000900B8 + 8 * *(v1 - 1) + 176) = *v1;
      if (*(qword_1000900B8 + 8 * *(v1 - 1) + 176))
      {
        goto LABEL_394;
      }

      v161 = __error();
      strerror(*v161);
      sub_10005347C("failed to set my ident: %s");
      return 0xFFFFFFFFLL;
    case 0x1Au:
      sub_100031EF0(*(*v1 + 8));
      goto LABEL_283;
    case 0x1Bu:
      sub_100031BF8(*v1);
      goto LABEL_394;
    case 0x1Fu:
      *(qword_1000900B8 + 248) = *v1;
      goto LABEL_394;
    case 0x21u:
      *(qword_1000900B8 + 252) = *v1;
      goto LABEL_394;
    case 0x23u:
      *(qword_1000900B8 + 256) = *v1;
      goto LABEL_394;
    case 0x25u:
      *(qword_1000900B8 + 260) = *v1;
      goto LABEL_394;
    case 0x27u:
      *(qword_1000900B8 + 264) = *v1;
      goto LABEL_394;
    case 0x2Cu:
      v30 = *v1;
      v31 = 0;
      goto LABEL_280;
    case 0x2Eu:
      v30 = *v1;
      v31 = 1;
LABEL_280:
      sub_100050FFC(v30, v31);
      goto LABEL_394;
    case 0x30u:
      sub_10005347C("admin directive is obsoleted.");
      goto LABEL_394;
    case 0x32u:
    case 0x34u:
    case 0x36u:
      sub_100053404("admin port support not compiled in");
      goto LABEL_394;
    case 0x38u:
      *(qword_1000900B8 + 308) = 1;
      goto LABEL_394;
    case 0x3Au:
      snprintf(__str, 0xAuLL, "%ld", *v1);
      v15 = sub_10003AD10(*(*(v1 - 1) + 8), __str);
      sub_10003D4F0(*(v1 - 1));
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_394;
    case 0x3Bu:
      v112 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (!v112)
      {
        sub_10005347C("failed to allocate remote index struct");
        v164 = *(v1 - 2);
        goto LABEL_461;
      }

      v15 = v112;
      snprintf(__str, 0xAuLL, "%ld", *v1);
      *(v15 + 8) = sub_10003AD10(*(*(v1 - 2) + 8), __str);
      sub_10003D4F0(*(v1 - 2));
      if (*(v15 + 8))
      {
        *v15 = *(v1 - 1);
        goto LABEL_394;
      }

      sub_10005347C("failed to allocate sockaddr storage", v173);
      return 0xFFFFFFFFLL;
    case 0x3Cu:
      v15 = 500;
      goto LABEL_394;
    case 0x3Du:
    case 0xB5u:
    case 0xB7u:
    case 0xB9u:
    case 0xBAu:
    case 0xBDu:
    case 0x12Bu:
    case 0x12Cu:
      v15 = *v1;
      goto LABEL_394;
    case 0x41u:
      if (inet_pton(2, *(*v1 + 8), &xmmword_100090C10) != 1)
      {
        sub_10005347C("bad IPv4 network address.");
      }

      goto LABEL_283;
    case 0x43u:
      if (inet_pton(2, *(*v1 + 8), &xmmword_100090C10 + 4) != 1)
      {
        sub_10005347C("bad IPv4 netmask address.");
      }

      goto LABEL_283;
    case 0x47u:
      v47 = 28678;
      goto LABEL_120;
    case 0x49u:
      v47 = 28676;
LABEL_120:
      dword_100091484 = v47;
      goto LABEL_394;
    case 0x4Du:
      v114 = *(*v1 + 8);
      goto LABEL_282;
    case 0x4Fu:
      dword_100090C48 = 0;
      goto LABEL_394;
    case 0x51u:
    case 0x61u:
    case 0x6Fu:
      sub_10005347C("racoon not configured with --with-libradius");
      goto LABEL_394;
    case 0x53u:
    case 0x63u:
      sub_10005347C("racoon not configured with --with-libpam");
      goto LABEL_394;
    case 0x55u:
    case 0x5Bu:
    case 0x71u:
      sub_10005347C("racoon not configured with --with-libldap");
      goto LABEL_394;
    case 0x59u:
      dword_100090C4C = 0;
      goto LABEL_394;
    case 0x5Du:
      dword_100090C60 = 0;
      goto LABEL_394;
    case 0x5Fu:
      v48 = &xmmword_100090C10;
      v49 = 4;
      goto LABEL_210;
    case 0x65u:
      if (sub_100042E80(*v1))
      {
        sub_10005347C("cannot allocate memory for pool");
      }

      goto LABEL_394;
    case 0x67u:
      v75 = *v1;
      dword_100091494 = *v1;
      goto LABEL_200;
    case 0x69u:
      dword_100091498 = *v1;
      goto LABEL_394;
    case 0x6Bu:
      dword_100090C70 = *v1;
      goto LABEL_394;
    case 0x6Du:
      dword_100090C5C = 0;
      goto LABEL_394;
    case 0x73u:
      v21 = *(*v1 + 8);
LABEL_282:
      __strlcpy_chk();
      goto LABEL_283;
    case 0x77u:
      v16 = dword_100090C24;
      if (dword_100090C24 > 2)
      {
        sub_10005347C("No more than %d DNS");
        return 0xFFFFFFFFLL;
      }

      v17 = *(*v1 + 8);
      ++dword_100090C24;
      if (inet_pton(2, v17, &xmmword_100090C10 + 4 * v16 + 8) != 1)
      {
        sub_10005347C("bad IPv4 DNS address.");
      }

LABEL_283:
      v46 = *v1;
LABEL_284:
      sub_10003D4F0(v46);
      goto LABEL_394;
    case 0x7Au:
      v83 = dword_100090C38;
      if (dword_100090C38 > 3)
      {
        sub_10005347C("No more than %d WINS");
        return 0xFFFFFFFFLL;
      }

      v84 = *(*v1 + 8);
      ++dword_100090C38;
      if (inet_pton(2, v84, &xmmword_100090C10 + 4 * v83 + 24) != 1)
      {
        sub_10005347C("bad IPv4 WINS address.");
      }

      goto LABEL_283;
    case 0x7Du:
      memset(__str, 0, sizeof(__str));
      if (inet_pton(2, *(*(v1 - 1) + 8), __str) != 1)
      {
        sub_10005347C("bad IPv4 SPLIT address.");
      }

      v44 = bswap32(-1 << -*v1);
      if (*v1)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      *&__str[4] = v45;
      if (sub_100043BD4(&qword_100091478, __str, &dword_100091480))
      {
        sub_10005347C("Unable to allocate split network");
      }

      v46 = *(v1 - 1);
      goto LABEL_284;
    case 0x80u:
      v22 = malloc_type_realloc(qword_100090C50, 8 * dword_100090C58 + 8, 0x80040B8603338uLL);
      if (!v22)
      {
        sub_10005347C("unable to allocate auth group list");
      }

      v23 = malloc_type_malloc(**v1 + 1, 0xF4DFDE66uLL);
      if (!v23)
      {
        sub_10005347C("unable to allocate auth group name");
      }

      memcpy(v23, *(*v1 + 8), **v1);
      *(v23 + **v1) = 0;
      v24 = dword_100090C58 + 1;
      v22[dword_100090C58] = v23;
      qword_100090C50 = v22;
      dword_100090C58 = v24;
      goto LABEL_291;
    case 0x83u:
      v96 = **v1;
      if (dword_100091490)
      {
        v97 = dword_100091490 + v96 + 1;
        v98 = malloc_type_realloc(qword_100091488, v97, 0x48B5DD25uLL);
        qword_100091488 = v98;
        if (!v98)
        {
          sub_10005347C("error allocating splitdns list buffer");
          v98 = qword_100091488;
        }

        v98[dword_100091490] = 44;
        memcpy((qword_100091488 + dword_100091490 + 1), *(*v1 + 8), **v1);
      }

      else
      {
        v115 = malloc_type_malloc(v96, 0xA595C8EDuLL);
        qword_100091488 = v115;
        if (!v115)
        {
          sub_10005347C("error allocating splitdns list buffer");
          v115 = qword_100091488;
        }

        memcpy(v115, *(*v1 + 8), **v1);
        v97 = **v1;
      }

      dword_100091490 = v97;
      goto LABEL_291;
    case 0x87u:
      *(qword_1000900B8 + 268) = *v1;
      goto LABEL_394;
    case 0x89u:
      *(qword_1000900B8 + 272) = *v1 * *(v1 - 2);
      goto LABEL_394;
    case 0x8Bu:
      *(qword_1000900B8 + 276) = *v1;
      goto LABEL_394;
    case 0x8Du:
      *(qword_1000900B8 + 280) = *v1 * *(v1 - 2);
      goto LABEL_394;
    case 0x8Fu:
      *(qword_1000900B8 + 284) = *v1 * *(v1 - 2);
      goto LABEL_394;
    case 0x91u:
      v19 = *v1 * *(v1 - 2);
      v20 = qword_1000900B8;
      *(qword_1000900B8 + 80) |= 1u;
      *(v20 + 84) = v19;
      goto LABEL_394;
    case 0x93u:
      *(qword_1000900B8 + 288) = *v1 * *(v1 - 2);
      goto LABEL_394;
    case 0x95u:
      sub_1000380A4();
      qword_10008F2C8 = v68;
      if (v68)
      {
        goto LABEL_394;
      }

      sub_10005347C("failed to allocate sainfo", v173);
      return 0xFFFFFFFFLL;
    case 0x96u:
      if (*(qword_10008F2C8 + 48))
      {
        if (*(qword_10008F2C8 + 56))
        {
          if (*(qword_10008F2C8 + 64))
          {
            v104 = sub_100037CC0(*qword_10008F2C8, *(qword_10008F2C8 + 8), *(qword_10008F2C8 + 40), 0);
            if (v104)
            {
              v105 = *v104;
              v106 = qword_10008F2C8;
              if (!v105 && !*qword_10008F2C8)
              {
                sub_100038374(qword_10008F2C8);
                sub_10005347C("duplicated sainfo: %s");
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              v106 = qword_10008F2C8;
            }

            sub_1000381B4(v106);
            goto LABEL_394;
          }

          sub_100038374(qword_10008F2C8);
          sub_10005347C("no compression algorithm at %s");
        }

        else
        {
          sub_100038374(qword_10008F2C8);
          sub_10005347C("no authentication algorithm at %s");
        }
      }

      else
      {
        sub_100038374(qword_10008F2C8);
        sub_10005347C("no encryption algorithm at %s");
      }

      return 0xFFFFFFFFLL;
    case 0x98u:
      v102 = qword_10008F2C8;
      *qword_10008F2C8 = 0;
      *(v102 + 8) = 0;
      goto LABEL_394;
    case 0x99u:
      v95 = qword_10008F2C8;
      *qword_10008F2C8 = 0;
      *(v95 + 8) = *v1;
      goto LABEL_394;
    case 0x9Au:
      v18 = qword_10008F2C8;
      *qword_10008F2C8 = *(v1 - 1);
      *(v18 + 8) = 0;
      goto LABEL_394;
    case 0x9Bu:
      v113 = qword_10008F2C8;
      *qword_10008F2C8 = *(v1 - 1);
      *(v113 + 8) = *v1;
      goto LABEL_394;
    case 0x9Cu:
      if (*v1 == 1 || *v1 == 58)
      {
        v111 = *(v1 - 1);
        if (v111)
        {
LABEL_433:
          sub_10005347C("port number must be any.", v173);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v111 = *(v1 - 1);
      }

      snprintf(__str, 0xAuLL, "%lu", v111);
      v60 = sub_10003AD10(*(*(v1 - 3) + 8), __str);
      sub_10003D4F0(*(v1 - 3));
      if (!v60)
      {
        return 0xFFFFFFFFLL;
      }

      v122 = v60[1];
      if (v122 == 30)
      {
        v123 = *v1;
        if (*v1 == 1)
        {
LABEL_470:
          sub_10005347C("upper layer protocol mismatched.\n");
          goto LABEL_475;
        }

        v124 = 128;
      }

      else
      {
        if (v122 != 2)
        {
          v175 = v60[1];
          sub_10005347C("invalid family: %d");
LABEL_475:
          v163 = v60;
LABEL_483:
          free(v163);
          return 0xFFFFFFFFLL;
        }

        v123 = *v1;
        if (*v1 == 58)
        {
          goto LABEL_470;
        }

        v124 = 32;
      }

      if (*(v1 - 2) == -1)
      {
        v125 = v124;
      }

      else
      {
        v125 = *(v1 - 2);
      }

      v15 = sub_10000E38C(v60, v125, v123);
      free(v60);
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_394;
    case 0x9Du:
      if (*v1 == 1 || *v1 == 58)
      {
        v66 = *(v1 - 1);
        if (v66)
        {
          goto LABEL_433;
        }
      }

      else
      {
        v66 = *(v1 - 1);
      }

      snprintf(__str, 0xAuLL, "%lu", v66);
      v117 = sub_10003AD10(*(*(v1 - 4) + 8), __str);
      if (!v117)
      {
        return 0xFFFFFFFFLL;
      }

      v118 = v117;
      sub_10003D4F0(*(v1 - 4));
      v119 = sub_10003AD10(*(*(v1 - 3) + 8), __str);
      if (!v119)
      {
        v163 = v118;
        goto LABEL_483;
      }

      v60 = v119;
      sub_10003D4F0(*(v1 - 3));
      v120 = v118[1];
      if (v120 == 30)
      {
        v121 = *v1;
        if (*v1 == 1)
        {
LABEL_472:
          sub_10005347C("upper layer protocol mismatched.\n");
          free(v118);
          goto LABEL_475;
        }
      }

      else
      {
        if (v120 != 2)
        {
          sub_10005347C("invalid family: %d", v118[1]);
          v15 = 0;
LABEL_330:
          free(v118);
          free(v60);
          v3 = &unk_10006D000;
          if (v15)
          {
            goto LABEL_394;
          }

          return 0xFFFFFFFFLL;
        }

        v121 = *v1;
        if (*v1 == 58)
        {
          goto LABEL_472;
        }
      }

      v15 = sub_10000E5D8(v118, v60, v121);
      goto LABEL_330;
    case 0x9Eu:
      if (*(v1 - 1) == 5)
      {
        sub_10005347C("id type forbidden: %d");
      }

      else
      {
        v28 = sub_10003D3A8(--**v1 + 4);
        if (v28)
        {
          v15 = v28;
          v29 = v28[1];
          *v29 = sub_10000F5E8(*(v1 - 2));
          *(v29 + 1) = 0;
          *(v29 + 2) = 0;
          memcpy((*(v15 + 8) + 4), *(*v1 + 8), **v1);
          goto LABEL_394;
        }

LABEL_427:
        sub_10005347C("failed to allocate identifier", v173);
      }

      return 0xFFFFFFFFLL;
    case 0x9Fu:
      *(qword_10008F2C8 + 40) = 0;
      goto LABEL_394;
    case 0xA0u:
      *__str = 0;
      if (sub_10000DD30(__str, *(v1 - 2), *v1))
      {
        goto LABEL_424;
      }

      v50 = sub_10003D3A8(**__str + 4);
      *(qword_10008F2C8 + 40) = v50;
      if (!v50)
      {
        goto LABEL_427;
      }

      v51 = v3;
      v52 = v50[1];
      *v52 = sub_10000F5E8(*(v1 - 2));
      *(v52 + 1) = 0;
      *(v52 + 2) = 0;
      v3 = v51;
      memcpy((*(*(qword_10008F2C8 + 40) + 8) + 4), *(*__str + 8), **__str);
      v46 = *__str;
      goto LABEL_284;
    case 0xA1u:
      v82 = sub_10003D538(*v1);
      *(qword_10008F2C8 + 16) = v82;
      if (v82)
      {
        goto LABEL_394;
      }

      sub_10005347C("failed to set sainfo xauth group.\n", v173);
      return 0xFFFFFFFFLL;
    case 0xA4u:
      v75 = *v1;
      *(qword_10008F2C8 + 36) = *v1;
LABEL_200:
      if (v75 <= 0x12 && ((1 << v75) & 0x7C026) != 0)
      {
        goto LABEL_394;
      }

      sub_10005347C("Invalid PFS group specified", v173);
      return 0xFFFFFFFFLL;
    case 0xA6u:
      *(qword_10008F2C8 + 24) = *v1 * *(v1 - 1);
      goto LABEL_394;
    case 0xA8u:
    case 0x133u:
      sub_10005347C("byte lifetime support is deprecated", v173);
      return 0xFFFFFFFFLL;
    case 0xAAu:
      dword_10008F2D0 = *v1;
      goto LABEL_394;
    case 0xACu:
    case 0xAEu:
      sub_10005347C("it's deprecated to specify a identifier in phase 2");
      goto LABEL_394;
    case 0xB0u:
    case 0xB1u:
      sub_100038354((qword_10008F2C8 + 8 * dword_10008F2D0 + 48), *v1);
      goto LABEL_394;
    case 0xB3u:
      v107 = sub_100038338();
      if (!v107)
      {
        sub_10005347C("failed to get algorithm allocation", v173);
        return 0xFFFFFFFFLL;
      }

      v15 = v107;
      v108 = sub_100001C38(dword_10008F2D0, *(v1 - 2));
      *v15 = v108;
      if (v108 == -1)
      {
        sub_10005347C("algorithm mismatched", v173);
        goto LABEL_482;
      }

      v109 = sub_100001A50(dword_10008F2D0, *(v1 - 2));
      v110 = *v1;
      if (v109)
      {
        if (v110)
        {
          if ((sub_100001A80(dword_10008F2D0, *(v1 - 2), v110) & 0x80000000) != 0)
          {
            v176 = *v1;
            sub_10005347C("invalid keylen %d");
            goto LABEL_482;
          }

          if (*v1)
          {
            v109 = *v1;
          }
        }
      }

      else if (v110)
      {
        sub_10005347C("keylen not allowed");
        goto LABEL_482;
      }

      *(v15 + 4) = v109;
      v116 = *(v1 - 1);
      if (dword_10008F2D0 == 1 && v116 == 18 || !sub_10002E944(dword_10008F2D0, v116, v109))
      {
        goto LABEL_394;
      }

      v166 = sub_100001DA8(dword_10008F2D0);
      v167 = sub_100001C38(dword_10008F2D0, *(v1 - 2));
      if (v166 == 5)
      {
        v168 = 2;
      }

      else
      {
        v168 = v166;
      }

      sub_10003C080(v168, v167);
      sub_10005347C("algorithm %s not supported by the kernel (missing module?)");
LABEL_482:
      v163 = v15;
      goto LABEL_483;
    case 0xB4u:
      v15 = -1;
      goto LABEL_394;
    case 0xB6u:
    case 0xB8u:
    case 0xBCu:
    case 0x12Au:
    case 0x142u:
    case 0x145u:
      v15 = 0;
      goto LABEL_394;
    case 0xBBu:
      v15 = 255;
      goto LABEL_394;
    case 0xBEu:
      v34 = sub_1000365F0(*(*v1 + 8));
      if (!v34)
      {
        v162 = sub_10003A5E8(*v1);
        sub_10005347C("failed to get remoteconf for %s.", v162);
        free(*(*(v1 - 2) + 8));
        free(*(v1 - 2));
        goto LABEL_452;
      }

      v35 = v34;
      *v34 = *(*(v1 - 2) + 8);
      v36 = **(v1 - 2);
      if (v36 == -1)
      {
        v36 = 0;
      }

      *(v34 + 2) = v36;
      v37 = sub_100036000(*(*v1 + 8), 1);
      v35[31] = 0;
      v35[32] = v37;
      v35[33] = 0;
      qword_10008F2D8 = v35;
      free(*(v1 - 2));
      free(*(*v1 + 8));
      free(*v1);
      v38 = sub_1000510C4();
      if (!v38)
      {
        return 0xFFFFFFFFLL;
      }

      v39 = qword_10008F2D8;
      v40 = *(qword_10008F2D8 + 256);
      if (!v40)
      {
        return 0xFFFFFFFFLL;
      }

      v41 = *(v40 + 248);
      if (!v41)
      {
        return 0xFFFFFFFFLL;
      }

      *v38 = *(v41 + 16);
      v38[2] = *(v41 + 32);
      v42 = *(v39 + 264);
      if (v42)
      {
        *(v42 + 32) = v38;
        v42 = *(v39 + 264);
      }

      *(v38 + 3) = v42;
      *(v39 + 264) = v38;
      goto LABEL_394;
    case 0xC0u:
      v53 = sub_1000364F8();
      if (!v53)
      {
        sub_10005347C("failed to get new remoteconf.");
LABEL_452:
        free(*(*v1 + 8));
        v163 = *v1;
        goto LABEL_483;
      }

      *v53 = *(*v1 + 8);
      v54 = **v1;
      if (v54 == -1)
      {
        v54 = 0;
      }

      v53[2] = v54;
      qword_10008F2D8 = v53;
      free(*v1);
      v55 = sub_1000510C4();
      if (!v55)
      {
        return 0xFFFFFFFFLL;
      }

      v56 = v55;
      *v55 = sub_10000CEC4();
      v57 = qword_10008F2D8;
      v58 = *(qword_10008F2D8 + 264);
      if (v58)
      {
        *(v58 + 32) = v56;
        v58 = *(v57 + 264);
      }

      v56[3] = v58;
      *(v57 + 264) = v56;
LABEL_394:
      v153 = &v1[-2 * v14];
      v4 -= 2 * v14;
      *(v153 + 1) = v15;
      v1 = v153 + 2;
      v154 = word_10006E3F4[v13] - 168;
      v155 = *v4 + word_10006E684[v154];
      if (v155 <= 0x1DD && word_10006D648[v155] == *v4)
      {
        v0 = word_10006DA04[v155];
      }

      else
      {
        v0 = word_10006E7E0[v154];
      }

      goto LABEL_398;
    case 0xC2u:
      v32 = qword_10008F2D8;
      if (!*(qword_10008F2D8 + 16))
      {
        sub_10005347C("no exchange mode specified.\n", v173);
        return 0xFFFFFFFFLL;
      }

      v33 = *(qword_10008F2D8 + 32);
      if (v33 == 5)
      {
        v126 = *(qword_10008F2D8 + 40);
        if (*(qword_10008F2D8 + 64))
        {
          if (v126)
          {
            sub_100053404("Both CERT and ASN1 ID are set. Hope this is OK.\n");
            v32 = qword_10008F2D8;
          }
        }

        else if (!v126)
        {
          sub_10005347C("ASN1 ID not specified and no CERT defined!\n", v173);
          return 0xFFFFFFFFLL;
        }
      }

      else if (!v33)
      {
        *(qword_10008F2D8 + 32) = 4;
      }

      if (*(v32 + 132) == 1)
      {
        *__str = 0;
        if (!sub_100004470(*(v32 + 56), __str))
        {
          sub_10005347C("peers_identifier required for specified certificate verification option.\n", v173);
          return 0xFFFFFFFFLL;
        }

        v32 = qword_10008F2D8;
      }

      v128 = *(v32 + 264);
      v129 = v128[2];
      if (!v129)
      {
        v129 = *(v32 + 256);
        if (v129)
        {
          v129 = v129[33];
          if (v129)
          {
            v129 = v129[2];
            v128[2] = v129;
          }
        }
      }

      if (v128[3])
      {
        if (dword_100090058)
        {
          v165 = ne_log_obj();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            sub_10006B44C();
          }
        }

        return 0xFFFFFFFFLL;
      }

      v130 = v129;
      if (!v129)
      {
        sub_10003A5E8(*v32);
        sub_10005347C("no remote specification found: %s.\n");
        return 0xFFFFFFFFLL;
      }

      do
      {
        if (!*(v130 + 19))
        {
          sub_10005347C("encryption algorithm required.", v173);
          return 0xFFFFFFFFLL;
        }

        if (!*(v130 + 20))
        {
          sub_10005347C("hash algorithm required.", v173);
          return 0xFFFFFFFFLL;
        }

        if (!*(v130 + 21))
        {
          sub_10005347C("DH group required.", v173);
          return 0xFFFFFFFFLL;
        }

        if (!*(v130 + 22))
        {
          sub_10005347C("authentication method required.", v173);
          return 0xFFFFFFFFLL;
        }

        v130 = v130[12];
      }

      while (v130);
      v178 = v32;
      do
      {
        v131 = v129;
        v129 = v129[12];
      }

      while (v129);
      v188 = v131;
      v185 = 1;
      v179 = v128;
      break;
    case 0xC3u:
      v26 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (!v26)
      {
        sub_10005347C("failed to allocate remote index struct", v173);
        return 0xFFFFFFFFLL;
      }

      v15 = v26;
      v27 = sub_10003A710(128);
      *(v15 + 8) = v27;
      if (v27)
      {
        v27[1] = 0;
        *(v27 + 1) = bswap32(*v1) >> 16;
        *v15 = -1;
        goto LABEL_394;
      }

      sub_10005347C("failed to allocate sockaddr storage", v173);
      goto LABEL_482;
    case 0xC4u:
      v15 = *v1;
      if (*v1)
      {
        goto LABEL_394;
      }

      sub_10005347C("failed to allocate sockaddr_storage", v173);
      return 0xFFFFFFFFLL;
    case 0xC7u:
      *(qword_10008F2D8 + 16) = 0;
      goto LABEL_394;
    case 0xC9u:
      *(qword_10008F2D8 + 24) = *v1;
      goto LABEL_394;
    case 0xCBu:
      *(qword_10008F2D8 + 28) = *v1;
      goto LABEL_394;
    case 0xCDu:
      if (*v1 == 1)
      {
        *(qword_10008F2D8 + 292) = 16;
        goto LABEL_394;
      }

      sub_10005347C("invalid IKE version specified.\n", v173);
      return 0xFFFFFFFFLL;
    case 0xD0u:
      *(qword_10008F2D8 + 124) = *v1;
      goto LABEL_394;
    case 0xD2u:
      *(qword_10008F2D8 + 116) = *v1;
      goto LABEL_394;
    case 0xD4u:
      *(qword_10008F2D8 + 120) = *v1;
      goto LABEL_394;
    case 0xD6u:
      *(qword_10008F2D8 + 128) = *v1;
      goto LABEL_394;
    case 0xD8u:
      v43 = qword_10008F2D8;
      *(qword_10008F2D8 + 128) = *(v1 - 1);
      *(v43 + 132) = *v1;
      goto LABEL_394;
    case 0xDAu:
      sub_10005347C("Apple specific features not compiled in.", v173);
      return 0xFFFFFFFFLL;
    case 0xDCu:
      if (sub_10000DD30((qword_10008F2D8 + 40), *(v1 - 2), *v1))
      {
        sub_10005347C("failed to set identifer.\n");
LABEL_460:
        v164 = *v1;
LABEL_461:
        sub_10003D4F0(v164);
        return 0xFFFFFFFFLL;
      }

      sub_10003D4F0(*v1);
      v25 = *(v1 - 1);
LABEL_85:
      *(qword_10008F2D8 + 32) = v25;
      goto LABEL_394;
    case 0xDEu:
      if (sub_10000DD38((qword_10008F2D8 + 40), *(v1 - 4), *v1, *(v1 - 2)))
      {
        goto LABEL_424;
      }

      v25 = *(v1 - 2);
      goto LABEL_85;
    case 0xE0u:
      if (sub_1000455FC(qword_10008F2D8 + 272) == -1)
      {
        sub_10005347C("failed to allocate xauth state\n", v173);
        return 0xFFFFFFFFLL;
      }

      v76 = sub_10003D538(*v1);
      **(qword_10008F2D8 + 272) = v76;
      if (!v76)
      {
LABEL_424:
        sub_10005347C("failed to set identifer.\n", v173);
        return 0xFFFFFFFFLL;
      }

      goto LABEL_283;
    case 0xE2u:
      v59 = sub_1000367B4();
      if (!v59)
      {
        goto LABEL_426;
      }

      v60 = v59;
      if (!sub_10000DD30(v59 + 1, *(v1 - 2), *v1))
      {
        sub_10003D4F0(*v1);
        v61 = *(v1 - 1);
LABEL_233:
        *v60 = v61;
        sub_1000043CC(*(qword_10008F2D8 + 56), v60);
        goto LABEL_394;
      }

      sub_10005347C("failed to set identifer.\n");
      free(v60);
      goto LABEL_460;
    case 0xE4u:
      v103 = sub_1000367B4();
      if (!v103)
      {
LABEL_426:
        sub_10005347C("failed to allocate idspec", v173);
        return 0xFFFFFFFFLL;
      }

      v60 = v103;
      if (sub_10000DD38(v103 + 1, *(v1 - 4), *v1, *(v1 - 2)))
      {
        sub_10005347C("failed to set identifer.\n", v173);
        goto LABEL_475;
      }

      v61 = *(v1 - 2);
      goto LABEL_233;
    case 0xE6u:
      *(qword_10008F2D8 + 136) = *v1;
      goto LABEL_394;
    case 0xE8u:
      v67 = sub_10003AD10(*(*v1 + 8), 0);
      sub_10003D4F0(*v1);
      if (!v67)
      {
        return 0xFFFFFFFFLL;
      }

      *(qword_10008F2D8 + 296) = v67;
      goto LABEL_394;
    case 0xEAu:
      v65 = qword_10008F2D8;
      *(qword_10008F2D8 + 80) = *(v1 - 1);
      *(v65 + 88) = *v1;
      goto LABEL_394;
    case 0xECu:
      if (*v1 != 3)
      {
        sub_10005347C("shared secret value missing.\n", v173);
        return 0xFFFFFFFFLL;
      }

      v48 = qword_10008F2D8;
      v49 = 3;
LABEL_210:
      *(v48 + 20) = v49;
      goto LABEL_394;
    case 0xEEu:
      *(qword_10008F2D8 + 140) = *v1;
      goto LABEL_394;
    case 0xF0u:
      sub_10005347C("dh_group cannot be defined here.", v173);
      return 0xFFFFFFFFLL;
    case 0xF2u:
      *(qword_10008F2D8 + 144) = *v1;
      goto LABEL_394;
    case 0xF4u:
      *(qword_10008F2D8 + 148) = *v1;
      goto LABEL_394;
    case 0xF6u:
      *(qword_10008F2D8 + 148) = 2;
      goto LABEL_394;
    case 0xF8u:
      sub_100053404("Your kernel does not support esp_frag");
      goto LABEL_394;
    case 0xFAu:
      *(qword_10008F2D8 + 156) = *v1;
      goto LABEL_394;
    case 0xFCu:
      *(qword_10008F2D8 + 240) = *v1;
      goto LABEL_394;
    case 0xFEu:
    case 0x100u:
      *(qword_10008F2D8 + 164) = *v1;
      goto LABEL_394;
    case 0x102u:
      *(qword_10008F2D8 + 160) = *v1;
      goto LABEL_394;
    case 0x104u:
      *(qword_10008F2D8 + 168) = *v1;
      goto LABEL_394;
    case 0x106u:
    case 0x108u:
      *(qword_10008F2D8 + 176) = *v1;
      goto LABEL_394;
    case 0x10Au:
      *(qword_10008F2D8 + 180) = *v1;
      goto LABEL_394;
    case 0x10Cu:
      *(qword_10008F2D8 + 184) = *v1;
      goto LABEL_394;
    case 0x10Eu:
      *(qword_10008F2D8 + 208) = *v1;
      goto LABEL_394;
    case 0x110u:
      *(qword_10008F2D8 + 216) = *v1;
      goto LABEL_394;
    case 0x112u:
      *(qword_10008F2D8 + 212) = *v1;
      goto LABEL_394;
    case 0x114u:
      *(qword_10008F2D8 + 220) = *v1;
      goto LABEL_394;
    case 0x116u:
      *(qword_10008F2D8 + 224) = *v1;
      goto LABEL_394;
    case 0x118u:
      v64 = qword_10008F2D8;
      *(qword_10008F2D8 + 228) = *(v1 - 2);
      *(v64 + 232) = *v1;
      goto LABEL_394;
    case 0x11Au:
      **(qword_10008F2D8 + 264) = *v1 * *(v1 - 1);
      goto LABEL_394;
    case 0x11Cu:
      *(qword_10008F2D8 + 172) = *v1;
      goto LABEL_394;
    case 0x11Eu:
      sub_10005347C("byte lifetime support is deprecated in Phase 1", v173);
      return 0xFFFFFFFFLL;
    case 0x120u:
      v89 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040E6A3F341uLL);
      if (!v89)
      {
        sub_10005347C("failed to allocate spproto", v173);
        return 0xFFFFFFFFLL;
      }

      v89[3] = 0;
      v89[10] = -1;
      v90 = qword_10008F2D8;
      v91 = *(qword_10008F2D8 + 264);
      *(v89 + 14) = v91;
      v92 = *(v91 + 16);
      if (v92)
      {
        *(v92 + 104) = v89;
        v92 = *(*(v90 + 264) + 16);
      }

      *(v89 + 12) = v92;
      *(*(v90 + 264) + 16) = v89;
      goto LABEL_394;
    case 0x123u:
      v86 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
      if (!v86)
      {
        sub_10005347C("failed to allocate etypes", v173);
        return 0xFFFFFFFFLL;
      }

      *v86 = *v1;
      v86[1] = 0;
      v87 = *(qword_10008F2D8 + 16);
      if (v87)
      {
        do
        {
          v88 = v87;
          v87 = *(v87 + 8);
        }

        while (v87);
        *(v88 + 8) = v86;
      }

      else
      {
        *(qword_10008F2D8 + 16) = v86;
      }

      goto LABEL_394;
    case 0x124u:
      v94 = qword_10008F2D8;
      *(qword_10008F2D8 + 104) = *(v1 - 1);
      *(v94 + 64) = 1;
      *(v94 + 72) = 0;
      goto LABEL_394;
    case 0x126u:
      v93 = qword_10008F2D8;
      *(qword_10008F2D8 + 104) = *(v1 - 2);
      *(v93 + 64) = 1;
      *(v93 + 72) = *v1;
      goto LABEL_394;
    case 0x128u:
      v85 = sub_100001C38(5, *v1);
      if (v85 == -1)
      {
        goto LABEL_423;
      }

      if (v85 > 0x12 || ((1 << v85) & 0x7C026) == 0)
      {
        goto LABEL_486;
      }

      v15 = v85;
      goto LABEL_394;
    case 0x129u:
      v62 = *v1;
      if (*v1 > 0x12uLL || ((0x3FC1uLL >> v62) & 1) != 0)
      {
LABEL_423:
        sub_10005347C("must be DH group", v173);
      }

      else
      {
        v63 = dword_10006E3A8[v62];
        if (v63 <= 0x12 && ((1 << v63) & 0x7C026) != 0)
        {
          v15 = v63;
          goto LABEL_394;
        }

LABEL_486:
        sub_10005347C("Invalid DH group specified", v173);
      }

      return 0xFFFFFFFFLL;
    case 0x12Fu:
      sub_10005347C("strength directive is obsoleted.");
      goto LABEL_394;
    case 0x131u:
      *(*(*(qword_10008F2D8 + 264) + 16) + 16) = *v1 * *(v1 - 1);
      goto LABEL_394;
    case 0x135u:
      *(*(*(qword_10008F2D8 + 264) + 16) + 84) = *v1;
      goto LABEL_394;
    case 0x137u:
      v77 = v3;
      v78 = qword_10008F2D8;
      v79 = *(*(qword_10008F2D8 + 264) + 16);
      if (*(v79 + 40) != 2)
      {
        sub_10005347C("wrong Vendor ID for gssapi_id", v173);
        return 0xFFFFFFFFLL;
      }

      v80 = *(v79 + 48);
      if (v80)
      {
        free(v80);
        v79 = *(*(v78 + 264) + 16);
      }

      v81 = strdup(*(*v1 + 8));
      *(v79 + 48) = v81;
      v3 = v77;
      if (v81)
      {
        goto LABEL_394;
      }

      if (dword_100090058)
      {
        v172 = ne_log_obj();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_504;
        }
      }

      goto LABEL_505;
    case 0x139u:
      v69 = sub_100001C38(*(v1 - 4), *(v1 - 2));
      if (v69 == -1)
      {
        sub_10005347C("algorithm mismatched 1", v173);
        return 0xFFFFFFFFLL;
      }

      v70 = *(v1 - 2);
      if (v70 != 6)
      {
        if (v70 == 4)
        {
          *(*(*(qword_10008F2D8 + 264) + 16) + 80) = v69;
          goto LABEL_394;
        }

        if (v70 != 3)
        {
          sub_10005347C("algorithm mismatched 2", v173);
          return 0xFFFFFFFFLL;
        }

        *(*(*(qword_10008F2D8 + 264) + 16) + 76) = v69;
        v71 = sub_100001A50(*(v1 - 4), *(v1 - 2));
        v72 = *v1;
        if (v71)
        {
          if (v72)
          {
            v73 = sub_100001A80(*(v1 - 4), *(v1 - 2), v72);
            v74 = *v1;
            if (v73 < 0)
            {
              v177 = *v1;
              sub_10005347C("invalid keylen %d");
              return 0xFFFFFFFFLL;
            }

            if (v74)
            {
              *(*(*(qword_10008F2D8 + 264) + 16) + 12) = v74;
              goto LABEL_394;
            }
          }
        }

        else if (v72)
        {
          sub_10005347C("keylen not allowed", v173);
          return 0xFFFFFFFFLL;
        }

        *(*(*(qword_10008F2D8 + 264) + 16) + 12) = v71;
        goto LABEL_394;
      }

      v127 = *(*(qword_10008F2D8 + 264) + 16);
      *(v127 + 88) = v69;
      if (*(v1 - 1) != 48)
      {
        goto LABEL_394;
      }

      if (*(v127 + 40) == -1)
      {
        *(v127 + 40) = 2;
        goto LABEL_394;
      }

      sub_10005347C("Vendor ID mismatch for auth method", v173);
      return 0xFFFFFFFFLL;
    case 0x13Bu:
    case 0x13Eu:
    case 0x143u:
    case 0x146u:
      v15 = 1;
      goto LABEL_394;
    case 0x13Cu:
      v15 = 60;
      goto LABEL_394;
    case 0x13Du:
      v15 = 3600;
      goto LABEL_394;
    case 0x13Fu:
      v15 = 1024;
      goto LABEL_394;
    case 0x140u:
      v15 = 0x100000;
      goto LABEL_394;
    case 0x141u:
      v15 = 0x40000000;
      goto LABEL_394;
    case 0x144u:
    case 0x147u:
      v15 = 2;
      goto LABEL_394;
    default:
      goto LABEL_394;
  }

  do
  {
    if (dword_100090058)
    {
      v132 = ne_log_obj();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        v150 = v188[2];
        if (!v150)
        {
          v150 = *v128;
        }

        *__str = 134217984;
        *&__str[4] = v150;
        _os_log_debug_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEBUG, "lifetime = %ld\n", __str, 0xCu);
      }

      if (dword_100090058)
      {
        v133 = ne_log_obj();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v151 = *(v188 + 6);
          if (!v151)
          {
            v151 = *(v128 + 2);
          }

          *__str = 67109120;
          *&__str[4] = v151;
          _os_log_debug_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEBUG, "lifebyte = %d\n", __str, 8u);
        }

        if (dword_100090058)
        {
          v134 = ne_log_obj();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            v152 = *(v188 + 3);
            *__str = 67109120;
            *&__str[4] = v152;
            _os_log_debug_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEBUG, "encklen=%d\n", __str, 8u);
          }
        }
      }
    }

    *(v201 + 3) = 0;
    v135 = *(v188 + 19);
    v136 = *(v188 + 20);
    v201[0] = 0;
    v189 = v135;
    v201[3] = v135;
    v201[4] = v136;
    v184 = v136;
    v186 = *(v188 + 21);
    v187 = *(v188 + 22);
    v201[5] = v186;
    v201[6] = v187;
    v137 = v188[2];
    if (!v137)
    {
      v137 = *v128;
    }

    v183 = v137;
    v138 = *(v188 + 6);
    if (!v138)
    {
      v138 = *(v128 + 2);
    }

    v182 = v138;
    v139 = *(v188 + 3);
    v180 = *(v188 + 3);
    v181 = *(v188 + 10);
    if (dword_100090058)
    {
      v140 = ne_log_obj();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
      {
        *__str = 67109376;
        *&__str[4] = 1;
        *&__str[8] = 1024;
        *&__str[10] = v185;
        _os_log_debug_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEBUG, "p:%d t:%d\n", __str, 0xEu);
      }
    }

    for (i = 3; i != 7; ++i)
    {
      v142 = v201[i];
      snprintf(v202, 0xAuLL, "%d", v201[i]);
      if (dword_100090058)
      {
        v143 = ne_log_obj();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
        {
          v144 = sub_10003C8C0(i, v142);
          v145 = "(";
          v146 = v202;
          if (v202[0] == 48)
          {
            v146 = &unk_100080609;
          }

          if (!v142)
          {
            v145 = &unk_100080609;
          }

          *__str = 136315906;
          *&__str[4] = v144;
          *&__str[12] = 2080;
          v194 = v145;
          v195 = 2080;
          if (v142)
          {
            v147 = ")";
          }

          else
          {
            v147 = &unk_100080609;
          }

          v196 = v146;
          v197 = 2080;
          v198 = v147;
          _os_log_debug_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEBUG, "%s%s%s%s\n", __str, 0x2Au);
        }
      }
    }

    if (dword_100090058)
    {
      v148 = ne_log_obj();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        sub_10006B480(&buf, v192, v148);
      }
    }

    v3 = &unk_10006D000;
    if (!v189 || !v187 || !v186)
    {
      sub_10003C8C0(3, v189);
      sub_10003C8C0(6, v187);
      sub_10003C8C0(4, v184);
      sub_10003C8C0(5, v186);
      sub_10005347C("few definition of algorithm enc=%s ameth=%s hash=%s dhgroup=%s.\n");
LABEL_430:
      if (dword_100090058)
      {
        v160 = ne_log_obj();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          sub_10006B4F4();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v149 = sub_100036BB8();
    v128 = v179;
    if (!v149)
    {
      sub_10005347C("failed to allocate isakmp sa");
      goto LABEL_430;
    }

    v149[1] = 1;
    v149[2] = v185;
    *(v149 + 2) = v183;
    *(v149 + 4) = v182;
    v149[10] = v189;
    v149[11] = v180;
    v149[12] = v187;
    v149[13] = v184;
    v149[18] = v184;
    v149[14] = v181;
    v149[15] = v186;
    sub_100036BF8(v149, v178);
    ++v185;
    v188 = v188[13];
  }

  while (v188);
  if (!*(v178 + 248))
  {
    if (dword_100090058)
    {
      v169 = ne_log_obj();
      if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
      {
        sub_10006B4C0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!sub_100036B98(qword_10008F2D8, 4))
  {
    goto LABEL_410;
  }

  v156 = qword_10008F2D8;
  v157 = *(qword_10008F2D8 + 248);
  if (!v157)
  {
    *(qword_10008F2D8 + 188) = 0;
LABEL_495:
    sub_10005347C("DH group must be set in the proposal.\n", v173);
    return 0xFFFFFFFFLL;
  }

  v158 = 0;
  do
  {
    if (v158)
    {
      if (v158 != *(v157 + 60))
      {
        sub_10005347C("DH group must be equal in all proposals when aggressive mode is used.\n", v173);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v158 = *(v157 + 60);
    }

    v157 = *(v157 + 80);
  }

  while (v157);
  *(qword_10008F2D8 + 188) = v158;
  if (!v158)
  {
    goto LABEL_495;
  }

  if ((sub_100027728(v158, v156 + 192) & 0x80000000) == 0)
  {
LABEL_410:
    sub_100036A50(qword_10008F2D8);
    goto LABEL_394;
  }

  sub_10005347C("failed to set DH value.\n", v173);
  return 0xFFFFFFFFLL;
}

void sub_100050FFC(uint64_t a1, int a2)
{
  v4 = sub_100004DAC();
  if (v4)
  {
    v5 = v4;
    v4[1] = a1;
    if (a1)
    {
      *(v4 + 4) = -1;
      *(v4 + 8) = a2;
      *(v4 + 9) = 1;
      sub_100005034(v4, (qword_1000900B8 + 120));
      *(qword_1000900B8 + 112) = 0;
    }

    else
    {
      sub_10005347C("failed to copy sockaddr_storage ");

      sub_100004584(v5);
    }
  }

  else
  {

    sub_10005347C("failed to allocate myaddrs");
  }
}

void *sub_1000510C4()
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004081634310uLL);
  if (!v0)
  {
    sub_10005347C("failed to allocate proposal");
  }

  return v0;
}

uint64_t sub_100051114()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      sub_10006B528();
    }
  }

  sub_10005410C();
  if (sub_100053F3C(*qword_1000900B8))
  {
    if (dword_100090058)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10006B564(v1);
      }
    }
  }

  else
  {
    if (!sub_10004E850())
    {
      if (dword_1000900B4)
      {
        if (dword_100090058)
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_10006B6AC(v6);
          }
        }

        sub_100054148();
        exit(1);
      }

      sub_100054148();
      if (dword_100090058)
      {
        v3 = ne_log_obj();
        result = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        sub_10006B734();
      }

      return 0;
    }

    if (dword_1000900B4)
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_10006B5F0(v2);
        }
      }
    }

    else if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10006B678();
      }
    }

    sub_100054148();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100051274(unsigned int a1)
{
  if (a1 > 0x1F)
  {
    if (!dword_100090058)
    {
      goto LABEL_11;
    }

    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006B770();
    }
  }

  else
  {
    if (!dword_100090058)
    {
      goto LABEL_11;
    }

    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10006B7A4(a1);
    }
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10006B824();
    }
  }

LABEL_11:
  v5 = a1 == 30;
  sub_1000069A4(v5);
  sub_100006050(v5);
  sub_100036B10();
  sub_100038208();
  sub_100038F0C();
  sub_100025C34();
  v6 = sub_100051114();
  sub_100025C4C();
  return v6;
}

uint64_t sub_100051364()
{
  v0 = &byte_10008E931[1743];
  v1 = &byte_10008E931[1743];
  v2 = &byte_100090C74[908];
  v3 = &byte_10008E931[1743];
  if ((byte_10008F2E0 & 1) == 0)
  {
    byte_10008F2E0 = 1;
    if (!dword_10008F2E4)
    {
      dword_10008F2E4 = 1;
    }

    if (!qword_1000900A0)
    {
      qword_1000900A0 = __stdinp;
    }

    if (!qword_1000900A8)
    {
      qword_1000900A8 = __stdoutp;
    }

    v4 = qword_10008F2E8;
    if (!qword_10008F2E8 || (v5 = qword_10008F2F0, (v6 = *(qword_10008F2E8 + 8 * qword_10008F2F0)) == 0))
    {
      sub_1000532BC();
      v6 = sub_10005337C(qword_1000900A0, 0x4000);
      v1 = &byte_10008E931[1743];
      v0 = &byte_10008E931[1743];
      v4 = qword_10008F2E8;
      v5 = qword_10008F2F0;
      *(qword_10008F2E8 + 8 * qword_10008F2F0) = v6;
    }

    qword_10008F320 = *(v6 + 32);
    qword_10008F308 = *(v6 + 16);
    qword_1000914E8 = qword_10008F308;
    qword_1000900A0 = **(v4 + 8 * v5);
    byte_10008F310 = *qword_10008F308;
  }

  if ((byte_10008F2F8 & 1) == 0)
  {
    dword_10008F2E4 = 3;
    byte_10008F2F8 = 1;
  }

  v7 = &byte_10008E931[1743];
  v8 = byte_10006E93C;
  v9 = word_10006EA3C;
  v10 = &byte_10008E931[1743];
  v11 = word_1000729D6;
  v12 = &byte_10008E931[1743];
  v13 = &byte_10008E931[1743];
  v14 = &byte_100090C74[908];
LABEL_15:
  *(v7 + 191) = 0;
  v15 = *(v1 + 97);
  if (v10[768] == 1)
  {
    *(v7 + 191) = v15 - *(v2 + 314);
    v10[768] = 0;
  }

  *v15 = v3[784];
  LODWORD(v16) = *(v0 + 185);
  v17 = v15;
  do
  {
LABEL_18:
    v18 = v8[*v15];
    if (v9[v16])
    {
      *(v13 + 197) = v16;
      *(v12 + 99) = v15;
    }

    v19 = v16;
    v20 = word_100070B4E[v16] + v18;
    if (v16 != word_10006F94A[v20])
    {
      do
      {
        v19 = word_100071A74[v19];
        if (v19 >= 1927)
        {
          v18 = *(&unk_10007299A + v18);
        }

        v20 = word_100070B4E[v19] + v18;
      }

      while (word_10006F94A[v20] != v19);
    }

    v16 = v11[v20];
    ++v15;
  }

  while (word_100070B4E[v16] != 2246);
  while (2)
  {
    LOWORD(v21) = v9[v16];
    if (!v21)
    {
      v15 = *(v12 + 99);
      LOWORD(v21) = v9[*(v13 + 197)];
    }

    v21 = v21;
    v22 = v17 - *(v7 + 191);
    *(v2 + 157) = v22;
    *(v14 + 156) = v15 - v22;
    v3[784] = *v15;
    *v15 = 0;
    *(v1 + 97) = v15;
LABEL_28:
    switch(v21)
    {
      case 0:
        *v15 = v3[784];
        v15 = *(v12 + 99);
        LODWORD(v16) = *(v13 + 197);
        continue;
      case 1:
        *(v0 + 185) = 7;
        return 258;
      case 2:
        qword_1000914D0 = 0;
        return 259;
      case 3:
        v110 = 1;
        goto LABEL_299;
      case 4:
        v110 = 2;
        goto LABEL_299;
      case 5:
        v110 = 3;
        goto LABEL_299;
      case 6:
        v110 = 4;
LABEL_299:
        qword_1000914D0 = v110;
        return 259;
      case 7:
      case 10:
      case 21:
      case 84:
        *(v0 + 185) = 3;
        return 412;
      case 8:
        return 260;
      case 9:
        *(v0 + 185) = 9;
        sub_100053404("it is obsoleted.  use my_identifier in each remote directives.", v10, v12, v13, __nitems);
        return 261;
      case 11:
        return 373;
      case 12:
        *(v0 + 185) = 11;
        return 263;
      case 13:
        v101 = 3;
        goto LABEL_246;
      case 14:
        v101 = 4;
        goto LABEL_246;
      case 15:
        v101 = 5;
        goto LABEL_246;
      case 16:
        v101 = 6;
        goto LABEL_246;
      case 17:
      case 18:
        goto LABEL_131;
      case 19:
      case 20:
        sub_100053404("it is obsoleted.  use debug2", v10, v12, v13);
LABEL_131:
        v101 = 7;
LABEL_246:
        qword_1000914D0 = v101;
        return 264;
      case 22:
        *(v0 + 185) = 13;
        return 265;
      case 23:
      case 31:
      case 40:
      case 68:
      case 165:
        return 413;
      case 24:
        return 266;
      case 25:
        return 267;
      case 26:
        return 268;
      case 27:
        return 269;
      case 28:
        return 270;
      case 29:
      case 38:
      case 66:
      case 76:
      case 85:
      case 101:
        v98 = 3;
        goto LABEL_120;
      case 30:
        *(v0 + 185) = 15;
        return 271;
      case 32:
        return 272;
      case 33:
        return 273;
      case 34:
        return 274;
      case 35:
        return 276;
      case 36:
        return 277;
      case 37:
        return 275;
      case 39:
        *(v0 + 185) = 19;
        return 278;
      case 41:
        return 279;
      case 42:
        return 280;
      case 43:
        return 281;
      case 44:
        return 282;
      case 45:
        return 283;
      case 46:
        return 284;
      case 47:
        return 285;
      case 48:
        return 292;
      case 49:
        return 294;
      case 50:
        return 293;
      case 51:
        return 286;
      case 52:
        return 290;
      case 53:
        return 291;
      case 54:
        return 287;
      case 55:
        return 288;
      case 56:
        return 296;
      case 57:
        return 295;
      case 58:
        return 297;
      case 59:
        return 298;
      case 60:
        return 299;
      case 61:
        return 300;
      case 62:
        return 301;
      case 63:
        return 302;
      case 64:
        return 303;
      case 65:
      case 96:
        return 415;
      case 67:
        *(v0 + 185) = 17;
        return 304;
      case 69:
        return 305;
      case 70:
        return 306;
      case 71:
        return 307;
      case 72:
        return 308;
      case 73:
        return 309;
      case 74:
        return 310;
      case 75:
        return 311;
      case 77:
        *(v0 + 185) = 25;
        return 315;
      case 78:
      case 98:
        return 319;
      case 79:
        return 386;
      case 80:
        return 388;
      case 81:
        return 316;
      case 82:
        return 317;
      case 83:
        v114 = 27;
        goto LABEL_341;
      case 86:
        return 392;
      case 87:
        return 397;
      case 88:
      case 113:
        sub_100053404("it is obsoleted.  use my_identifier.", v10, v12, v13, __nitems);
        return 261;
      case 89:
      case 114:
        return 336;
      case 90:
      case 149:
      case 167:
        return 393;
      case 91:
      case 150:
      case 168:
        return 394;
      case 92:
      case 151:
      case 169:
        return 395;
      case 93:
        qword_1000914D0 = 0;
        return 312;
      case 94:
        v102 = 1;
        goto LABEL_250;
      case 95:
        v102 = 2;
        goto LABEL_250;
      case 97:
        *(v0 + 185) = 29;
        return 318;
      case 99:
        return 320;
      case 100:
        v114 = 31;
LABEL_341:
        *(v0 + 185) = v114;
        return 413;
      case 102:
        return 321;
      case 103:
      case 296:
      case 298:
        goto LABEL_15;
      case 104:
        v113 = 2;
        goto LABEL_219;
      case 105:
        v113 = 4;
LABEL_219:
        qword_1000914D0 = v113;
        return 322;
      case 106:
        return 323;
      case 107:
        qword_1000914D0 = 1;
        return 324;
      case 108:
        return 325;
      case 109:
        return 422;
      case 110:
        v104 = 1;
        goto LABEL_398;
      case 111:
        v104 = 2;
        goto LABEL_398;
      case 112:
        v104 = 4;
LABEL_398:
        qword_1000914D0 = v104;
        return 326;
      case 115:
        return 382;
      case 116:
        return 337;
      case 117:
        return 338;
      case 118:
        return 339;
      case 119:
        return 327;
      case 120:
        return 330;
      case 121:
        qword_1000914D0 = 4;
        return 348;
      case 122:
        v94 = "plainrsa not supported.";
        goto LABEL_113;
      case 123:
        v90 = v0;
        v91 = v1;
        v92 = v8;
        v93 = v12;
        sub_10005347C("Apple specific features not compiled in.", v10);
        goto LABEL_116;
      case 124:
        return 340;
      case 125:
        return 343;
      case 126:
        return 344;
      case 127:
        return 329;
      case 128:
        return 347;
      case 129:
        return 331;
      case 130:
        return 332;
      case 131:
        return 333;
      case 132:
      case 173:
        return 351;
      case 133:
        return 350;
      case 134:
        return 362;
      case 135:
        sub_100053404("it is obsoleted.  use support_proxy.", v10, v12, v13);
        return 364;
      case 136:
        return 364;
      case 137:
        return 354;
      case 138:
        return 355;
      case 139:
        qword_1000914D0 = 2;
        return 357;
      case 140:
        return 358;
      case 141:
        return 359;
      case 142:
        return 360;
      case 143:
        v108 = 1;
        goto LABEL_366;
      case 144:
        v108 = 2;
        goto LABEL_366;
      case 145:
        v108 = 4;
        goto LABEL_366;
      case 146:
        v108 = 3;
LABEL_366:
        qword_1000914D0 = v108;
        return 361;
      case 147:
        return 352;
      case 148:
        return 353;
      case 152:
        return 374;
      case 153:
        return 375;
      case 154:
        return 376;
      case 155:
        return 377;
      case 156:
        return 378;
      case 157:
        return 379;
      case 158:
        return 380;
      case 159:
        return 381;
      case 160:
        return 389;
      case 161:
        return 390;
      case 162:
        return 391;
      case 163:
        return 383;
      case 164:
        *(v0 + 185) = 33;
        return 365;
      case 166:
        v98 = 31;
LABEL_120:
        *(v0 + 185) = v98;
        return 414;
      case 170:
        v102 = 3;
        goto LABEL_250;
      case 171:
        v102 = 6;
        goto LABEL_250;
      case 172:
        v102 = 4;
LABEL_250:
        qword_1000914D0 = v102;
        return 312;
      case 174:
      case 175:
        return 370;
      case 176:
        *(v0 + 185) = 37;
        return 371;
      case 177:
        qword_1000914D0 = 1;
        return 372;
      case 178:
        qword_1000914D0 = 0;
        return 372;
      case 179:
        *(v0 + 185) = 3;
        return 412;
      case 180:
        qword_1000914D0 = 1;
        return 399;
      case 181:
        qword_1000914D0 = 0;
        return 399;
      case 182:
        v121 = (*(v2 + 157) + 1);
        *(v2 + 157) = v121;
        qword_1000914D0 = atoi(v121);
        return 384;
      case 183:
        v105 = (*(v2 + 157) + 1);
        do
        {
          v106 = *v105++;
        }

        while (v106 != 93);
        *(v105 - 1) = 0;
        v107 = (*(v2 + 157) + 1);
        *(v2 + 157) = v107;
        qword_1000914D0 = atoi(v107);
        return 385;
      case 184:
        ++*(v2 + 157);
        v112 = sub_10003D3A8(*(v14 + 156) + 1);
        qword_1000914D0 = v112;
        if (!v112)
        {
          goto LABEL_404;
        }

        memcpy(v112[1], *(v2 + 157), *v112);
        return 404;
      case 185:
        v103 = 50;
        goto LABEL_376;
      case 186:
        v103 = 51;
        goto LABEL_376;
      case 187:
        v103 = 108;
        goto LABEL_376;
      case 188:
        v103 = 1;
        goto LABEL_376;
      case 189:
        v103 = 58;
        goto LABEL_376;
      case 190:
        v103 = 6;
        goto LABEL_376;
      case 191:
        v103 = 17;
LABEL_376:
        qword_1000914D0 = v103;
        return 387;
      case 192:
        v100 = 1;
        goto LABEL_407;
      case 193:
        v100 = 2;
        goto LABEL_407;
      case 194:
        v100 = 3;
        goto LABEL_407;
      case 195:
        v100 = 4;
        goto LABEL_407;
      case 196:
        v100 = 5;
        goto LABEL_407;
      case 197:
        v100 = 6;
        goto LABEL_407;
      case 198:
        v100 = 7;
        goto LABEL_407;
      case 199:
        v100 = 8;
        goto LABEL_407;
      case 200:
        v100 = 9;
        goto LABEL_407;
      case 201:
        v100 = 10;
        goto LABEL_407;
      case 202:
      case 203:
        v100 = 11;
        goto LABEL_407;
      case 204:
      case 205:
        v100 = 12;
        goto LABEL_407;
      case 206:
        v100 = 13;
        goto LABEL_407;
      case 207:
        v100 = 18;
        goto LABEL_407;
      case 208:
        v100 = 14;
        goto LABEL_407;
      case 209:
        v100 = 15;
        goto LABEL_407;
      case 210:
      case 211:
        v100 = 19;
        goto LABEL_407;
      case 212:
      case 213:
        v100 = 20;
        goto LABEL_407;
      case 214:
      case 215:
        v100 = 21;
        goto LABEL_407;
      case 216:
        v100 = 22;
        goto LABEL_407;
      case 217:
        v100 = 23;
        goto LABEL_407;
      case 218:
        v100 = 16;
        goto LABEL_407;
      case 219:
        v100 = 17;
        goto LABEL_407;
      case 220:
        v100 = 27;
        goto LABEL_407;
      case 221:
        v100 = 28;
        goto LABEL_407;
      case 222:
        v100 = 29;
        goto LABEL_407;
      case 223:
      case 224:
        v100 = 30;
        goto LABEL_407;
      case 225:
      case 226:
        v100 = 31;
        goto LABEL_407;
      case 227:
      case 228:
        v100 = 32;
        goto LABEL_407;
      case 229:
        v100 = 24;
        goto LABEL_407;
      case 230:
        v100 = 25;
        goto LABEL_407;
      case 231:
        v100 = 26;
        goto LABEL_407;
      case 232:
        v100 = 33;
        goto LABEL_407;
      case 233:
        v100 = 34;
        goto LABEL_407;
      case 234:
        v100 = 37;
        goto LABEL_407;
      case 235:
        v100 = 35;
        goto LABEL_407;
      case 236:
        v100 = 36;
        goto LABEL_407;
      case 237:
        v100 = 38;
        goto LABEL_407;
      case 238:
        v100 = 39;
        goto LABEL_407;
      case 239:
        v100 = 40;
        goto LABEL_407;
      case 240:
        v100 = 41;
        goto LABEL_407;
      case 241:
        v100 = 42;
        goto LABEL_407;
      case 242:
        v100 = 43;
        goto LABEL_407;
      case 243:
        v100 = 45;
        goto LABEL_407;
      case 244:
        v100 = 44;
        goto LABEL_407;
      case 245:
        v100 = 46;
        goto LABEL_407;
      case 246:
        v100 = 47;
        goto LABEL_407;
      case 247:
        v100 = 48;
        goto LABEL_407;
      case 248:
        v100 = 49;
        goto LABEL_407;
      case 249:
        v100 = 50;
        goto LABEL_407;
      case 250:
        v100 = 51;
        goto LABEL_407;
      case 251:
        v100 = 52;
        goto LABEL_407;
      case 252:
        v100 = 53;
        goto LABEL_407;
      case 253:
        v100 = 54;
        goto LABEL_407;
      case 254:
        v100 = 55;
        goto LABEL_407;
      case 255:
        v100 = 56;
        goto LABEL_407;
      case 256:
        v100 = 57;
        goto LABEL_407;
      case 257:
        v100 = 58;
LABEL_407:
        qword_1000914D0 = v100;
        return 313;
      case 258:
        sub_100053404("it is obsoleted.", v10, v12, v13);
        return 262;
      case 259:
        v115 = 2;
        goto LABEL_332;
      case 260:
        v115 = 1;
        goto LABEL_332;
      case 261:
        v115 = 3;
        goto LABEL_332;
      case 262:
        v115 = 8;
        goto LABEL_332;
      case 263:
        v115 = 4;
        goto LABEL_332;
      case 264:
        v115 = 7;
        goto LABEL_332;
      case 265:
        goto LABEL_240;
      case 266:
        sub_100053404("certname will be obsoleted in near future.", v10, v12, v13);
LABEL_240:
        v115 = 5;
LABEL_332:
        qword_1000914D0 = v115;
        return 334;
      case 267:
        qword_1000914D0 = 0;
        return 341;
      case 268:
        v116 = 1;
        goto LABEL_269;
      case 269:
        v94 = "Apple specific features not compiled in.";
LABEL_113:
        v90 = v0;
        v91 = v1;
        v95 = v10;
        v96 = v13;
        sub_10005347C(v94, __nitems);
        v13 = v96;
        v12 = byte_10008E931 + 1743;
        v9 = word_10006EA3C;
        v10 = v95;
        v8 = byte_10006E93C;
        goto LABEL_117;
      case 270:
        v116 = 3;
LABEL_269:
        qword_1000914D0 = v116;
        return 341;
      case 271:
        qword_1000914D0 = 0;
        return 345;
      case 272:
        qword_1000914D0 = 1;
        return 345;
      case 273:
        v122 = 2;
        goto LABEL_395;
      case 274:
        v122 = 1;
LABEL_395:
        qword_1000914D0 = v122;
        return 346;
      case 275:
        v109 = 2;
        goto LABEL_363;
      case 276:
        v109 = 1;
LABEL_363:
        qword_1000914D0 = v109;
        return 335;
      case 277:
        return 405;
      case 278:
        return 406;
      case 279:
        return 407;
      case 280:
        return 408;
      case 281:
        return 409;
      case 282:
        return 410;
      case 283:
        return 411;
      case 284:
        return 416;
      case 285:
        return 417;
      case 286:
        return 418;
      case 287:
        return 421;
      case 288:
        return 419;
      case 289:
        return 420;
      case 290:
        qword_1000914D0 = 1;
        return 400;
      case 291:
        qword_1000914D0 = 0;
        return 400;
      case 292:
        __endptr = 0;
        qword_1000914D0 = strtol(*(v2 + 157), &__endptr, 10);
        return 398;
      case 293:
        v117 = sub_10003D3A8(*(v14 + 156) + (*(v14 + 156) & 1) + 1);
        qword_1000914D0 = v117;
        if (!v117)
        {
          goto LABEL_404;
        }

        v118 = v117[1];
        *v118 = 30768;
        v119 = v118 + 1;
        v120 = *(v14 + 156);
        if (v120)
        {
          v119 = v118 + 3;
          *(v118 + 2) = 48;
          v120 = *(v14 + 156);
        }

        memcpy(v119, (*(v2 + 157) + 2), v120 - 1);
        return 401;
      case 294:
        v123 = (*(v2 + 157) + 1);
        do
        {
          v124 = *v123++;
        }

        while (v124 != 34);
        *(v123 - 1) = 0;
        v125 = sub_10003D3A8(*(v14 + 156) - 1);
        qword_1000914D0 = v125;
        if (!v125)
        {
          goto LABEL_404;
        }

        memcpy(v125[1], (*(v2 + 157) + 1), *v125);
        return 402;
      case 295:
        v111 = sub_10003D3A8(*(v14 + 156) + 1);
        qword_1000914D0 = v111;
        if (v111)
        {
          memcpy(v111[1], *(v2 + 157), *v111);
          return 403;
        }

        else
        {
LABEL_404:
          sub_10005347C("vmalloc failed", __nitems);
          return 0xFFFFFFFFLL;
        }

      case 297:
        ++dword_10008F330[32 * dword_10008F330[0] + 8];
        goto LABEL_15;
      case 299:
        return 412;
      case 300:
        v10[768] = 1;
        goto LABEL_15;
      case 301:
        v97 = *(v14 + 156);
        v93 = v12;
        v90 = v0;
        v91 = v1;
        v92 = v8;
        fwrite(*(v2 + 157), v97, 1uLL, qword_1000900A8);
LABEL_116:
        v13 = byte_10008E931 + 1743;
        v12 = v93;
        v9 = word_10006EA3C;
        v10 = byte_10008E931 + 1743;
        v8 = v92;
LABEL_117:
        v11 = word_1000729D6;
        v7 = byte_10008E931 + 1743;
        v1 = v91;
        v0 = v90;
        v14 = byte_100090C74 + 908;
        goto LABEL_15;
      case 302:
        v23 = *(v2 + 157);
        *v15 = v3[784];
        v24 = qword_10008F2E8;
        v25 = qword_10008F2F0;
        v26 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
        if (*(v26 + 64))
        {
          v27 = qword_10008F320;
        }

        else
        {
          v27 = *(v26 + 32);
          qword_10008F320 = v27;
          *v26 = qword_1000900A0;
          v26 = *(v24 + 8 * v25);
          *(v26 + 64) = 1;
        }

        v28 = *(v1 + 97);
        v29 = *(v26 + 8);
        if (v28 > &v29[v27])
        {
          v127 = v23;
          if (v28 > &v29[v27 + 1])
          {
            sub_100053880("fatal flex scanner internal error--end of buffer missed");
          }

          v30 = qword_1000914E8;
          if (*(v26 + 60))
          {
            v31 = ~qword_1000914E8 + v28;
            if (v31 >= 1)
            {
              v32 = ~qword_1000914E8 + v28;
              do
              {
                v33 = *v30++;
                *v29++ = v33;
                --v32;
              }

              while (v32);
              v26 = *(v24 + 8 * v25);
            }

            v131 = v17;
            v132 = v31;
            if (*(v26 + 64) == 2)
            {
              qword_10008F320 = 0;
              goto LABEL_41;
            }

            v35 = ~v31;
            v36 = *(v26 + 24);
            v37 = v36 + v35;
            v128 = v31;
            if (!(v36 + v35))
            {
              do
              {
                if (!*(v26 + 40))
                {
                  *(v26 + 8) = 0;
LABEL_411:
                  sub_100053880("fatal error - scanner input buffer overflow");
                }

                v38 = v35;
                v39 = v28;
                v40 = v1;
                v41 = *(v26 + 8);
                v42 = 2 * v36;
                *(v26 + 24) = v42;
                v43 = v26;
                v44 = malloc_type_realloc(v41, v42 + 2, 0x9F007A03uLL);
                *(v43 + 8) = v44;
                if (!v44)
                {
                  goto LABEL_411;
                }

                v28 = v44 + v39 - v41;
                v1 = v40;
                *(v40 + 97) = v28;
                v26 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
                v36 = *(v26 + 24);
                v35 = v38;
                v37 = v36 + v38;
              }

              while (!(v36 + v38));
              v11 = word_1000729D6;
              v9 = word_10006EA3C;
              v31 = v128;
            }

            if (v37 >= 0x2000)
            {
              v45 = 0x2000;
            }

            else
            {
              v45 = v37;
            }

            if (*(v26 + 44))
            {
              v46 = v45;
              v47 = 0;
              while (1)
              {
                v48 = getc(qword_1000900A0);
                if (v48 == -1 || v48 == 10)
                {
                  break;
                }

                *(*(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8) + v132 + v47++) = v48;
                if (v46 == v47)
                {
                  v47 = v46;
                  break;
                }
              }

              if (v48 == -1)
              {
                v53 = ferror(qword_1000900A0);
                v7 = &byte_10008E931[1743];
                v8 = byte_10006E93C;
                v10 = byte_10008E931 + 1743;
                v12 = byte_10008E931 + 1743;
                v13 = byte_10008E931 + 1743;
                v17 = v131;
                if (v53)
                {
LABEL_414:
                  sub_100053880("input in flex scanner failed");
                }
              }

              else
              {
                if (v48 == 10)
                {
                  *(*(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8) + v132 + v47++) = 10;
                }

                v7 = byte_10008E931 + 1743;
                v8 = byte_10006E93C;
                v10 = byte_10008E931 + 1743;
                v12 = byte_10008E931 + 1743;
                v13 = byte_10008E931 + 1743;
                v17 = v131;
              }

              qword_10008F320 = v47;
LABEL_72:
              v24 = qword_10008F2E8;
              v25 = qword_10008F2F0;
              v26 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
              *(v26 + 32) = v47;
              if (v47)
              {
                v54 = 0;
                v31 = v128;
                v3 = byte_10008E931 + 1743;
                goto LABEL_78;
              }

              v31 = v128;
              v3 = byte_10008E931 + 1743;
            }

            else
            {
              *__error() = 0;
              v50 = fread((*(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8) + v31), 1uLL, v45, qword_1000900A0);
              v51 = v45;
              v47 = v50;
              qword_10008F320 = v50;
              v7 = byte_10008E931 + 1743;
              v8 = byte_10006E93C;
              v10 = byte_10008E931 + 1743;
              v12 = byte_10008E931 + 1743;
              v13 = byte_10008E931 + 1743;
              v17 = v131;
              if (v50 << 32)
              {
                goto LABEL_72;
              }

              __nitems = v51;
              while (ferror(qword_1000900A0))
              {
                if (*__error() != 4)
                {
                  goto LABEL_414;
                }

                *__error() = 0;
                clearerr(qword_1000900A0);
                v52 = fread((*(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8) + v132), 1uLL, __nitems, qword_1000900A0);
                v47 = v52;
                qword_10008F320 = v52;
                if (v52 << 32)
                {
                  v7 = byte_10008E931 + 1743;
                  v8 = byte_10006E93C;
                  v10 = byte_10008E931 + 1743;
                  v12 = byte_10008E931 + 1743;
                  v13 = byte_10008E931 + 1743;
                  v17 = v131;
                  goto LABEL_72;
                }
              }

              v24 = qword_10008F2E8;
              v25 = qword_10008F2F0;
              v26 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
              v8 = byte_10006E93C;
              v10 = byte_10008E931 + 1743;
              v12 = byte_10008E931 + 1743;
              v13 = byte_10008E931 + 1743;
              v31 = v128;
              v17 = v131;
              v3 = byte_10008E931 + 1743;
LABEL_41:
              *(v26 + 32) = 0;
              v7 = byte_10008E931 + 1743;
            }

            if (*(v7 + 191) == v31)
            {
              v55 = v8;
              v56 = v12;
              v129 = v31;
              v57 = v13;
              sub_1000538B8(qword_1000900A0);
              v13 = v57;
              v31 = v129;
              v17 = v131;
              v12 = v56;
              v9 = word_10006EA3C;
              v10 = byte_10008E931 + 1743;
              v8 = v55;
              v7 = byte_10008E931 + 1743;
              v47 = qword_10008F320;
              v24 = qword_10008F2E8;
              v25 = qword_10008F2F0;
              v26 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
              v54 = 1;
            }

            else
            {
              v47 = 0;
              v54 = 2;
              *(v26 + 64) = 2;
            }

LABEL_78:
            v58 = v47 + v31;
            if (v58 <= *(v26 + 24))
            {
              v65 = *(v26 + 8);
              v1 = &byte_10008E931[1743];
            }

            else
            {
              v130 = v54;
              v59 = v12;
              v60 = v11;
              v61 = v8;
              v62 = v58 + (v47 >> 1);
              v63 = malloc_type_realloc(*(v26 + 8), v62, 0x9F007A03uLL);
              v24 = qword_10008F2E8;
              v25 = qword_10008F2F0;
              *(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8) = v63;
              v64 = *(v24 + 8 * v25);
              v65 = *(v64 + 8);
              if (!v65)
              {
                sub_100053880("out of dynamic memory in yy_get_next_buffer()");
              }

              *(v64 + 24) = v62 - 2;
              v17 = v131;
              v58 = qword_10008F320 + v132;
              v1 = byte_10008E931 + 1743;
              v7 = byte_10008E931 + 1743;
              v8 = v61;
              v11 = v60;
              v10 = byte_10008E931 + 1743;
              v12 = v59;
              v9 = word_10006EA3C;
              v13 = byte_10008E931 + 1743;
              v54 = v130;
            }

            qword_10008F320 = v58;
            *(v65 + v58) = 0;
            *(*(*(v24 + 8 * v25) + 8) + v58 + 1) = 0;
            v30 = *(*(v24 + 8 * v25) + 8);
            qword_1000914E8 = v30;
            if (v54 == 1)
            {
              v34 = *(v7 + 191);
LABEL_84:
              *(v1 + 97) = &v30[v34];
              v0 = &byte_10008E931[1743];
              v21 = (dword_10008F2E4 - 1) / 2 + 303;
              v2 = byte_100090C74 + 908;
              v14 = byte_100090C74 + 908;
              goto LABEL_28;
            }

            if (!v54)
            {
              v15 = &v30[~v127 + v15];
              *(v1 + 97) = v15;
              v76 = v1;
              v77 = v10;
              v78 = v12;
              v79 = v13;
              LODWORD(v16) = sub_1000537A0();
              v13 = v79;
              v12 = v78;
              v9 = word_10006EA3C;
              v10 = v77;
              v8 = byte_10006E93C;
              v11 = word_1000729D6;
              v7 = &byte_10008E931[1743];
              v1 = v76;
              v2 = &byte_100090C74[908];
              v17 = qword_1000914E8 + dword_10008F2FC;
              v0 = byte_10008E931 + 1743;
              v14 = byte_100090C74 + 908;
              goto LABEL_18;
            }

            v29 = *(*(qword_10008F2E8 + 8 * qword_10008F2F0) + 8);
            v27 = qword_10008F320;
            v34 = *(v7 + 191);
          }

          else
          {
            v7 = &byte_10008E931[1743];
            v34 = dword_10008F2FC;
            if (v28 - (qword_1000914E8 + dword_10008F2FC) == 1)
            {
              goto LABEL_84;
            }
          }

          v15 = &v29[v27];
          *(v1 + 97) = &v29[v27];
          v66 = v1;
          v67 = v10;
          v68 = v13;
          LODWORD(v16) = sub_1000537A0();
          v13 = v68;
          v12 = byte_10008E931 + 1743;
          v9 = word_10006EA3C;
          v10 = v67;
          v8 = byte_10006E93C;
          v11 = word_1000729D6;
          v7 = byte_10008E931 + 1743;
          v1 = v66;
          v2 = &byte_100090C74[908];
          v17 = qword_1000914E8 + v34;
          v0 = byte_10008E931 + 1743;
          v14 = byte_100090C74 + 908;
          continue;
        }

        v2 = &byte_100090C74[908];
        v15 = qword_1000914E8 + ~v23 + v15;
        *(v1 + 97) = v15;
        v69 = v9;
        v70 = v12;
        v71 = v13;
        LODWORD(v16) = sub_1000537A0();
        v13 = v71;
        v12 = v70;
        v9 = v69;
        if (v69[v16])
        {
          *(v71 + 197) = v16;
          *(v12 + 99) = v15;
        }

        v72 = v16;
        v73 = word_100070B4E[v16] + 1;
        v0 = byte_10008E931 + 1743;
        v1 = &byte_10008E931[1743];
        v14 = byte_100090C74 + 908;
        v7 = &byte_10008E931[1743];
        v8 = byte_10006E93C;
        v11 = word_1000729D6;
        v10 = byte_10008E931 + 1743;
        if (v16 != word_10006F94A[v73])
        {
          do
          {
            v74 = word_100071A74[v72];
            v72 = v74;
            v73 = word_100070B4E[v74] + 1;
          }

          while (v74 != word_10006F94A[v73]);
        }

        v75 = word_1000729D6[v73];
        v17 = qword_1000914E8 + dword_10008F2FC;
        if (word_1000729D6[v73] && v75 != 1926)
        {
          LODWORD(v16) = v75;
          qword_10008F308 = ++v15;
          goto LABEL_18;
        }

        continue;
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
        v80 = v0;
        if (qword_10008F2E8)
        {
          v81 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
        }

        else
        {
          v81 = 0;
        }

        sub_1000534F4(v81);
        while (1)
        {
          v82 = dword_10008F330[0];
          v83 = --dword_10008F330[0];
          v84 = &dword_10008F330[32 * v83];
          v85 = *(v84 + 5);
          if (!v85)
          {
            break;
          }

          v86 = *(v84 + 9);
          if (!v86)
          {
            break;
          }

          v87 = v84[32];
          if (v85 <= v87)
          {
            break;
          }

          v88 = *(v86 + 8 * v87);
          v84[32] = v87 + 1;
          dword_10008F330[0] = v82;
          if (!sub_100053570(v88))
          {
            v89 = sub_10005337C(qword_1000900A0, 0x4000);
            sub_1000536DC(v89);
            v0 = v80;
            *(v80 + 185) = 3;
            goto LABEL_109;
          }
        }

        globfree((v84 + 10));
        if (dword_10008F330[0])
        {
          sub_1000536DC(*&dword_10008F330[32 * dword_10008F330[0] + 6]);
          v0 = v80;
LABEL_109:
          v1 = byte_10008E931 + 1743;
          v14 = byte_100090C74 + 908;
          v7 = byte_10008E931 + 1743;
          v8 = byte_10006E93C;
          v10 = byte_10008E931 + 1743;
          v12 = byte_10008E931 + 1743;
          v13 = byte_10008E931 + 1743;
          goto LABEL_15;
        }

        return 0;
      default:
        sub_100053880("fatal flex scanner internal error--no action found");
    }
  }
}